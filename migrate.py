import psycopg2
from utiles import *
import mysql.connector
import subprocess
from mysql.connector import errorcode
from tools import *
import re
from psycopg2 import sql


class MigrateDb:
    def __init__(self, connectionDetails):
        self.fromConnectionDetails = connectionDetails['fromMigrateDb']
        self.toConnectionDetails = connectionDetails['ToMigrateDb']
        self.fromConnection = self.connectFromMigrateDb()
        self.toConnection = self.connectToMigrateDb()
        self.rootDir = os.path.abspath(os.getcwd())
        self.backUpDir = "/backups"
        self.outputFile = self.rootDir+self.backUpDir+"/"+fromDbBackup
        self.backUpDataDir = "/backups"+"/data"
        self.sqlContent = ''

    def mysql_to_postgresql(self, sql_content):
        """
        Convert MySQL SQL syntax to PostgreSQL SQL syntax.
        This function provides basic conversion. For a full conversion,
        more sophisticated parsing and replacement is needed.
        """
        # Basic replacements (this is highly simplified and may need more cases)
        sql_content = re.sub(r'ENGINE=InnoDB;', '', sql_content)
        sql_content = re.sub(r'CHARSET=utf8mb4', 'ENCODING=UTF8', sql_content)
        # MySQL backticks to PostgreSQL double quotes
        sql_content = re.sub(r'`([^`]+)`', r'"\1"', sql_content)

        # MySQL specific types to PostgreSQL types
        sql_content = re.sub(r'TINYINT\(1\)', 'BOOLEAN', sql_content)
        sql_content = re.sub(r'INT\(11\)', 'INTEGER', sql_content)

        # MySQL specific functions to PostgreSQL functions
        sql_content = re.sub(r'NOW\(\)', 'CURRENT_TIMESTAMP', sql_content)
        sql_content = re.sub(r"`(\w+)` bigint NOT NULL AUTO_INCREMENT",
                             r'"\1" BIGSERIAL NOT NULL', sql_content)
        sql_content = re.sub(r"`(\w+)` int NOT NULL AUTO_INCREMENT",
                             r'"\1" SERIAL NOT NULL', sql_content)

        # Convert MySQL data types to PostgreSQL
        sql_content = re.sub(r"`(\w+)` bigint", r'"\\1" BIGINT', sql_content)
        sql_content = re.sub(r"`(\w+)` int", r'"\\1" INTEGER', sql_content)
        sql_content = re.sub(r"`(\w+)` varchar\((\d+)\)",
                             r'"\\1" VARCHAR(\\2)', sql_content)
        sql_content = re.sub(r"`(\w+)` longtext", r'"\\1" TEXT', sql_content)
        sql_content = re.sub(r"`(\w+)` datetime",
                             r'"\\1" TIMESTAMP', sql_content)
        # Replace AUTO_INCREMENT with SERIAL/BIGSERIAL
        sql_content = re.sub(r"(\w+)\s+bigint\s+NOT\s+NULL\s+AUTO_INCREMENT",
                             r"\1 BIGSERIAL PRIMARY KEY", sql_content)
        sql_content = re.sub(r"(\w+)\s+int\s+NOT\s+NULL\s+AUTO_INCREMENT",
                             r"\1 SERIAL PRIMARY KEY", sql_content)
        sql_content = re.sub(r"`", r'"', sql_content)

        # Handle DEFAULT NULL and DEFAULT values
        sql_content = re.sub(r"DEFAULT NULL", "", sql_content)
        sql_content = re.sub(r"DEFAULT '(\d+)'",
                             r"DEFAULT '\\1'", sql_content)
        # Add SERIAL where AUTO_INCREMENT was used
        sql_content = re.sub(r"(\w+)\s+bigint\s+NOT\s+NULL",
                             r"\1 BIGINT PRIMARY KEY", sql_content)
        sql_content = re.sub(r"(\w+)\s+int\s+NOT\s+NULL",
                             r"\1 SERIAL PRIMARY KEY", sql_content)
        # Add other MySQL to PostgreSQL syntax changes as needed
        return sql_content

    def buildenv(self):
        create_new_folder(migrateDb.rootDir+migrateDb.backUpDir)
        open(self.outputFile, 'w').close()
        create_new_folder(migrateDb.rootDir+migrateDb.backUpDataDir)

    def connectFromMigrateDb(self):
        connection = mysql.connector.connect(**self.fromConnectionDetails)
        return connection

    def connectToMigrateDb(self):
        connection = psycopg2.connect(**self.toConnectionDetails)
        return connection

    def execute_sql_on_postgresql(self, sql_content):
        """
        Connect to PostgreSQL and execute the converted SQL content.
        """
        try:
            # Connect to PostgreSQL
            conn = self.toConnection
            cur = conn.cursor()

            # Execute SQL commands
            cur.execute(sql.SQL(sql_content))

            # Commit changes
            conn.commit()
            cur.close()
            conn.close()
            print("SQL commands executed successfully.")

        except Exception as e:
            print(f"An error occurred: {e}")

    def backUpFromMigratDb(self):
        try:
            cursor = self.fromConnection.cursor()
            os.environ['MYSQL_PWD'] = self.fromConnectionDetails['password']
            # Get the list of tables
            cursor.execute("SHOW TABLES")
            tables = cursor.fetchall()

            with open(self.outputFile, 'w') as f:
                for (table_name,) in tables:
                    cmd = f"mysqldump -u {self.fromConnectionDetails['user']} -h {self.fromConnectionDetails['host']} --no-data {self.fromConnectionDetails['database']} {table_name}"
                    print(cmd)
                    result = subprocess.run(
                        cmd, shell=True, cwd=mysqlLocation, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
                    if result.returncode == 0:
                        f.write(result.stdout.decode('utf-8'))
                    else:
                        print(
                            f"Error dumping table {table_name}: {result.stderr.decode('utf-8')}")

            print(
                f"Backup of tables without data completed and saved to {self.outputFile}")
        except mysql.connector.Error as err:
            if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
                print("Something is wrong with your user name or password")
            elif err.errno == errorcode.ER_BAD_DB_ERROR:
                print("Database does not exist")
            else:
                print(err)

    def mySQLtoPosgresql(self):
        # Read MySQL SQL file
        with open(self.outputFile, 'r') as file:
            self.sqlContent = file.read()

        postgresql_sql_content = self.mysql_to_postgresql(self.sqlContent)
        
        self.execute_sql_on_postgresql(postgresql_sql_content)


dbInfo = dbDetails()
migrateDb = MigrateDb(dbInfo)
# migrateDb.buildenv()
# migrateDb.backUpFromMigratDb()
migrateDb.mySQLtoPosgresql()
