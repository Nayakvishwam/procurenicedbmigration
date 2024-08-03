from tools import *


def dbDetails():
    config = readConfig()
    toMigrateDb = config['ToMigrateDb']
    fromMigrateDb = config['FromMigrateDb']
    dbsDetails = {
        'fromMigrateDb': {
            'user': fromMigrateDb['UserName'],
            'password': fromMigrateDb['Password'],
            'host': fromMigrateDb['Host'],
            'database': fromMigrateDb['dbName']
        },
        'ToMigrateDb': {
            'user': toMigrateDb['UserName'],
            'password': toMigrateDb['Password'],
            'host': toMigrateDb['Host'],
            'database': toMigrateDb['dbName'],
            'port': toMigrateDb['port']
        }
    }
    return dbsDetails


fromDbBackup = "fromDb.sql"
toDbBackup = "toDb.sql"

mysqlLocation = "C:/Program Files/MySQL/MySQL Server 8.0/bin/"
