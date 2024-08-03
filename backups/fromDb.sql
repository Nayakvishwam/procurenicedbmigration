-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `databasechangelog`

--



DROP TABLE IF EXISTS `databasechangelog`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `databasechangelog` (

  `ID` varchar(255) NOT NULL,

  `AUTHOR` varchar(255) NOT NULL,

  `FILENAME` varchar(255) NOT NULL,

  `DATEEXECUTED` datetime NOT NULL,

  `ORDEREXECUTED` int NOT NULL,

  `EXECTYPE` varchar(10) NOT NULL,

  `MD5SUM` varchar(35) DEFAULT NULL,

  `DESCRIPTION` varchar(255) DEFAULT NULL,

  `COMMENTS` varchar(255) DEFAULT NULL,

  `TAG` varchar(255) DEFAULT NULL,

  `LIQUIBASE` varchar(20) DEFAULT NULL,

  `CONTEXTS` varchar(255) DEFAULT NULL,

  `LABELS` varchar(255) DEFAULT NULL,

  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL

)

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:19

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `databasechangeloglock`

--



DROP TABLE IF EXISTS `databasechangeloglock`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `databasechangeloglock` (

  `ID` int NOT NULL,

  `LOCKED` bit(1) NOT NULL,

  `LOCKGRANTED` datetime DEFAULT NULL,

  `LOCKEDBY` varchar(255) DEFAULT NULL,

  PRIMARY KEY (`ID`)

)

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:19

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `jhi_persistent_audit_event`

--



DROP TABLE IF EXISTS `jhi_persistent_audit_event`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `jhi_persistent_audit_event` (

  `event_id` bigint NOT NULL AUTO_INCREMENT,

  `principal` varchar(50) NOT NULL,

  `event_date` timestamp NULL DEFAULT NULL,

  `event_type` varchar(255) DEFAULT NULL,

  PRIMARY KEY (`event_id`),

  KEY `idx_persistent_audit_event` (`principal`,`event_date`)

)

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:19

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `jhi_persistent_audit_evt_data`

--



DROP TABLE IF EXISTS `jhi_persistent_audit_evt_data`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `jhi_persistent_audit_evt_data` (

  `event_id` bigint NOT NULL,

  `name` varchar(150) NOT NULL,

  `value` varchar(255) DEFAULT NULL,

  PRIMARY KEY (`event_id`,`name`),

  KEY `idx_persistent_audit_evt_data` (`event_id`),

  CONSTRAINT `fk_evt_pers_audit_evt_data` FOREIGN KEY (`event_id`) REFERENCES `jhi_persistent_audit_event` (`event_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:19

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_answer`

--



DROP TABLE IF EXISTS `tbl_answer`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_answer` (

  `answer_id` bigint NOT NULL AUTO_INCREMENT,

  `question_Id` bigint NOT NULL,

  `answer_text` varchar(100) NOT NULL,

  `user_id` bigint NOT NULL,

  `created_on` datetime NOT NULL,

  `created_by` bigint DEFAULT NULL,

  `updated_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `active_status` int DEFAULT NULL,

  PRIMARY KEY (`answer_id`),

  KEY `tbl_answer_fk` (`question_Id`),

  KEY `tbl_answer_fk_1` (`user_id`),

  CONSTRAINT `tbl_answer_fk` FOREIGN KEY (`question_Id`) REFERENCES `tbl_question` (`question_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_answer_fk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_userlogin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT

);

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:19

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_apo`

--



DROP TABLE IF EXISTS `tbl_apo`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_apo` (

  `id` bigint NOT NULL AUTO_INCREMENT,

  `event_id` bigint DEFAULT NULL,

  `event_brief` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,

  `item_code` bigint DEFAULT NULL,

  `item_name` varchar(250) DEFAULT NULL,

  `bidder_name` varchar(250) DEFAULT NULL,

  `bidder_id` bigint DEFAULT NULL,

  `amount` decimal(20,5) DEFAULT NULL,

  `status` int DEFAULT NULL COMMENT '0-pending, 1-approved, 2-rejected',

  `remarks` varchar(250) DEFAULT NULL,

  `catalog_item_id` bigint DEFAULT NULL,

  `apo_date` datetime DEFAULT NULL,

  `submitted_by` bigint DEFAULT NULL,

  `submitted_on` datetime DEFAULT NULL,

  `action_by` bigint DEFAULT NULL,

  `action_on` datetime DEFAULT NULL,

  `action` int DEFAULT NULL COMMENT '0-pending, 1-approved, 2-rejected',

  `department_id` bigint DEFAULT NULL,

  `event_terms` varchar(10000) DEFAULT NULL,

  PRIMARY KEY (`id`),

  KEY `catalog_item_id` (`catalog_item_id`)

);
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:19

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_auction`

--



DROP TABLE IF EXISTS `tbl_auction`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_auction` (

  `auction_id` bigint NOT NULL AUTO_INCREMENT,

  `department_id` bigint NOT NULL,

  `officer_id` bigint NOT NULL,

  `auction_no` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `scope_of_work` varchar(5000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `auction_type` int DEFAULT NULL,

  `bidding_access` int DEFAULT NULL COMMENT 'Open or Limited Auction',

  `bid_submission_for` int DEFAULT NULL,

  `bidding_mode` int DEFAULT NULL,

  `start_price` double DEFAULT NULL,

  `increment_decrement` double DEFAULT NULL,

  `reserve_price` double DEFAULT NULL,

  `increment_decrement_on` int DEFAULT NULL,

  `start_date_time` datetime DEFAULT NULL,

  `end_date_time` datetime DEFAULT NULL,

  `workflow_required` int DEFAULT NULL,

  `auction_status` int DEFAULT NULL COMMENT 'pending approve cancel status',

  `created_by` bigint NOT NULL,

  `created_on` datetime NOT NULL,

  `updated_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `auction_variant` int DEFAULT NULL COMMENT 'Forward or Reverse auction',

  `active_status` int NOT NULL DEFAULT '1',

  `client_id` bigint NOT NULL,

  `line_itemwise_bid_allowed` int DEFAULT NULL,

  `bidding_type` int DEFAULT NULL,

  `auction_base_currency` int DEFAULT '2',

  `inc_dec_in_multiple` int DEFAULT NULL,

  `bidder_wise_start_price` int DEFAULT NULL COMMENT '1=applicable, 2=not applicable',

  `first_bid_condition` int DEFAULT NULL,

  `sub_module_id` int DEFAULT NULL,

  `map_bidder_type` int DEFAULT NULL,

  `ref_event_id` bigint DEFAULT NULL,

  `extension_required` int DEFAULT NULL COMMENT '1 for yes 0 for no',

  `extension_type` int DEFAULT NULL COMMENT '1 for limited 2 for unlimited',

  `extend_when` int DEFAULT NULL,

  `extend_by` int DEFAULT NULL,

  `no_of_extension` int DEFAULT NULL,

  `end_date_virtual` datetime DEFAULT NULL,

  `current_extension` int unsigned DEFAULT '0',

  `product_category` varchar(5000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `masked_bidder_name` tinyint DEFAULT '1',

  `masked_officer_name` tinyint DEFAULT '1',

  `extention_increment_decrement` double DEFAULT NULL,

  `gt_wise_evaluation` int DEFAULT '0' COMMENT '0=No, 1=Yes(In item wise only)',

  `vendor_show_color` int NOT NULL DEFAULT '0',

  `officer_show_color` int NOT NULL DEFAULT '0',

  `item_selection_required` int NOT NULL DEFAULT '0',

  PRIMARY KEY (`auction_id`),

  KEY `tbl_auction_fk` (`department_id`),

  KEY `tbl_auction_fk_1` (`officer_id`),

  KEY `tbl_auction_fk_2` (`client_id`),

  CONSTRAINT `tbl_auction_fk` FOREIGN KEY (`department_id`) REFERENCES `tbl_department` (`department_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_auction_fk_1` FOREIGN KEY (`officer_id`) REFERENCES `tbl_officer` (`officer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_auction_fk_2` FOREIGN KEY (`client_id`) REFERENCES `tbl_client` (`client_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

);

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:19

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_auction_audit`

--



DROP TABLE IF EXISTS `tbl_auction_audit`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_auction_audit` (

  `auc_audit_id` bigint NOT NULL AUTO_INCREMENT,

  `audit_name` varchar(1000) DEFAULT NULL,

  `request_parm` longtext,

  `created_on` datetime DEFAULT NULL,

  `created_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `updated_by` bigint DEFAULT NULL,

  `active_status` varchar(100) DEFAULT '1',

  `ip_address` varchar(1000) DEFAULT NULL,

  `auction_id` bigint DEFAULT NULL,

  `child_id` bigint DEFAULT NULL,

  `tracklogin_id` bigint DEFAULT NULL,

  PRIMARY KEY (`auc_audit_id`)

);

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:19

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_auction_bidding_status`

--



DROP TABLE IF EXISTS `tbl_auction_bidding_status`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_auction_bidding_status` (

  `status_id` int NOT NULL AUTO_INCREMENT,

  `message` varchar(1000) DEFAULT NULL,

  `status` varchar(100) DEFAULT NULL COMMENT '1 for pending 2 for complete',

  PRIMARY KEY (`status_id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:20

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_auction_cell`

--



DROP TABLE IF EXISTS `tbl_auction_cell`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_auction_cell` (

  `cell_id` bigint NOT NULL AUTO_INCREMENT,

  `column_id` bigint DEFAULT NULL,

  `form_id` bigint DEFAULT NULL,

  `row_id` int DEFAULT NULL,

  `cell_value` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `table_id` bigint DEFAULT NULL,

  `cell_no` int DEFAULT NULL,

  `data_type` int DEFAULT NULL,

  `is_gt_cell` tinyint DEFAULT NULL,

  PRIMARY KEY (`cell_id`),

  KEY `tbl_auction_cell_fk` (`column_id`),

  KEY `tbl_auction_cell_fk_1` (`form_id`),

  KEY `tbl_auction_cell_fk_10` (`table_id`),

  CONSTRAINT `tbl_auction_cell_fk` FOREIGN KEY (`table_id`) REFERENCES `tbl_auction_table` (`table_id`) ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `tbl_auction_cell_fk_10` FOREIGN KEY (`table_id`) REFERENCES `tbl_auction_table` (`table_id`) ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `tbl_auction_cell_fk_7` FOREIGN KEY (`column_id`) REFERENCES `tbl_auction_column` (`column_id`) ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `tbl_auction_cell_fk_9` FOREIGN KEY (`form_id`) REFERENCES `tbl_auction_form` (`form_id`) ON DELETE CASCADE ON UPDATE CASCADE

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=56986 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:20

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_auction_column`

--



DROP TABLE IF EXISTS `tbl_auction_column`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_auction_column` (

  `column_id` bigint NOT NULL AUTO_INCREMENT,

  `table_id` bigint DEFAULT NULL,

  `form_id` bigint DEFAULT NULL,

  `column_header` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `data_type` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `filled_by` int NOT NULL COMMENT '1 officer 2 bidder or 3 auto',

  `column_no` int NOT NULL,

  `sort_order` int DEFAULT NULL COMMENT 'order of column',

  `column_type_id` int DEFAULT NULL,

  `is_shown` tinyint DEFAULT NULL,

  `is_gov_column` int DEFAULT NULL,

  `is_l1h1_column` int DEFAULT NULL,

  PRIMARY KEY (`column_id`),

  KEY `tbl_auction_column_fk_1` (`form_id`),

  KEY `tbl_auction_column_fk_2` (`table_id`),

  KEY `tbl_auction_column_fk_3` (`column_type_id`),

  CONSTRAINT `tbl_auction_column_fk_1` FOREIGN KEY (`form_id`) REFERENCES `tbl_auction_form` (`form_id`) ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `tbl_auction_column_fk_3` FOREIGN KEY (`column_type_id`) REFERENCES `tbl_columntype` (`column_type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_auction_column_fk_5` FOREIGN KEY (`table_id`) REFERENCES `tbl_auction_table` (`table_id`) ON DELETE CASCADE ON UPDATE CASCADE

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=12270 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:20

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_auction_criteria`

--



DROP TABLE IF EXISTS `tbl_auction_criteria`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_auction_criteria` (

  `auction_criteria_id` bigint NOT NULL AUTO_INCREMENT,

  `auction_id` bigint NOT NULL,

  `row_id` bigint DEFAULT NULL,

  `start_date_time` datetime DEFAULT NULL,

  `end_date_time` datetime DEFAULT NULL,

  `start_price` double DEFAULT '0',

  `increment_decrement` double NOT NULL,

  `reserve_price` double DEFAULT NULL,

  `created_by` bigint NOT NULL,

  `created_on` datetime NOT NULL,

  `updated_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `form_id` bigint DEFAULT NULL,

  `table_id` bigint DEFAULT NULL,

  `extension_required` int DEFAULT NULL COMMENT '1 for yes 0 for no',

  `extension_type` int DEFAULT NULL COMMENT '1 for limited 2 for unlimited',

  `extend_when` int DEFAULT NULL,

  `extend_by` int DEFAULT NULL,

  `no_of_extension` int DEFAULT NULL,

  `end_date_virtual` datetime DEFAULT NULL,

  `current_extension` int DEFAULT '0',

  `extention_increment_decrement` double DEFAULT '0',

  `lower_price` bigint DEFAULT '0',

  `target_price` bigint DEFAULT '0',

  `higher_price` bigint DEFAULT '0',

  `update_price_count` int DEFAULT '0',

  `spot_time_limit` int DEFAULT '0',

  `sub_sequent_time` int DEFAULT '0',

  PRIMARY KEY (`auction_criteria_id`),

  KEY `tbl_auction_criteria_fk` (`auction_id`),

  KEY `tbl_auction_criteria_fk_1` (`form_id`),

  KEY `tbl_auction_criteria_fk_2` (`table_id`),

  CONSTRAINT `tbl_auction_criteria_fk` FOREIGN KEY (`auction_id`) REFERENCES `tbl_auction` (`auction_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_auction_criteria_fk_1` FOREIGN KEY (`form_id`) REFERENCES `tbl_auction_form` (`form_id`) ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `tbl_auction_criteria_fk_2` FOREIGN KEY (`table_id`) REFERENCES `tbl_auction_table` (`table_id`) ON DELETE CASCADE ON UPDATE CASCADE

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=4534 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:20

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_auction_currency`

--



DROP TABLE IF EXISTS `tbl_auction_currency`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_auction_currency` (

  `auction_currency_id` bigint NOT NULL AUTO_INCREMENT,

  `auction_id` bigint DEFAULT NULL,

  `currency_id` int DEFAULT NULL,

  `exchange_rate` double(10,2) DEFAULT NULL,

  `active_status` int DEFAULT NULL,

  PRIMARY KEY (`auction_currency_id`),

  KEY `tbl_auction_currency_fk` (`auction_id`),

  KEY `tbl_auction_currency_fk_1` (`currency_id`),

  CONSTRAINT `tbl_auction_currency_fk` FOREIGN KEY (`auction_id`) REFERENCES `tbl_auction` (`auction_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_auction_currency_fk_1` FOREIGN KEY (`currency_id`) REFERENCES `tbl_currency` (`currency_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=345 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:20

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_auction_form`

--



DROP TABLE IF EXISTS `tbl_auction_form`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_auction_form` (

  `form_id` bigint NOT NULL AUTO_INCREMENT,

  `auction_id` bigint DEFAULT NULL,

  `form_name` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `form_header` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `form_footer` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `active_status` int NOT NULL,

  `created_by` bigint NOT NULL,

  `created_on` datetime NOT NULL,

  `updated_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `is_standardform` tinyint DEFAULT NULL,

  `is_adminform` tinyint DEFAULT NULL,

  `parent_form_id` int DEFAULT NULL,

  `published_by` bigint DEFAULT NULL,

  `published_on` datetime DEFAULT NULL,

  `cancelled_by` bigint DEFAULT NULL,

  `cancelled_on` datetime DEFAULT NULL,

  `remarks` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `sort_order` tinyint DEFAULT NULL,

  `form_status` tinyint DEFAULT NULL,

  PRIMARY KEY (`form_id`),

  KEY `tbl_auction_form_fk` (`auction_id`),

  CONSTRAINT `tbl_auction_form_fk` FOREIGN KEY (`auction_id`) REFERENCES `tbl_auction` (`auction_id`) ON DELETE CASCADE ON UPDATE CASCADE

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=1579 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:20

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_auction_formula`

--



DROP TABLE IF EXISTS `tbl_auction_formula`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_auction_formula` (

  `auction_formula_id` bigint NOT NULL AUTO_INCREMENT,

  `auction_id` bigint DEFAULT NULL,

  `table_id` bigint DEFAULT NULL,

  `form_id` bigint DEFAULT NULL,

  `column_no` bigint DEFAULT NULL COMMENT 'on which formula is applied',

  `formula` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'by using column no',

  `created_by` bigint NOT NULL,

  `created_on` datetime NOT NULL,

  `updated_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `active_status` int DEFAULT NULL,

  `column_id` bigint DEFAULT NULL,

  `cell_id` bigint DEFAULT NULL,

  `cell_no` int DEFAULT NULL,

  `formula_type` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `show_formula` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `col_formula` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  PRIMARY KEY (`auction_formula_id`),

  KEY `tbl_auction_formula_fk` (`auction_id`),

  KEY `tbl_auction_formula_fk_1` (`table_id`),

  KEY `tbl_auction_formula_fk_2` (`form_id`),

  KEY `tbl_auction_formula_fk_3` (`cell_id`),

  KEY `tbl_auction_formula_fk_4` (`column_id`),

  CONSTRAINT `tbl_auction_formula_fk` FOREIGN KEY (`auction_id`) REFERENCES `tbl_auction` (`auction_id`) ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `tbl_auction_formula_fk_1` FOREIGN KEY (`table_id`) REFERENCES `tbl_auction_table` (`table_id`) ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `tbl_auction_formula_fk_2` FOREIGN KEY (`form_id`) REFERENCES `tbl_auction_form` (`form_id`) ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `tbl_auction_formula_fk_3` FOREIGN KEY (`cell_id`) REFERENCES `tbl_auction_cell` (`cell_id`) ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `tbl_auction_formula_fk_4` FOREIGN KEY (`column_id`) REFERENCES `tbl_auction_column` (`column_id`) ON DELETE CASCADE ON UPDATE CASCADE

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=2733 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:20

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_auction_governing_column`

--



DROP TABLE IF EXISTS `tbl_auction_governing_column`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_auction_governing_column` (

  `auction_gov_column_id` bigint NOT NULL AUTO_INCREMENT,

  `auction_id` bigint NOT NULL,

  `table_id` bigint NOT NULL,

  `form_id` bigint NOT NULL,

  `column_no` int NOT NULL,

  `created_by` bigint NOT NULL,

  `created_on` datetime NOT NULL,

  `updated_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `active_status` int DEFAULT NULL,

  PRIMARY KEY (`auction_gov_column_id`),

  KEY `tbl_auction_governing_column_fk` (`auction_id`),

  KEY `tbl_auction_governing_column_fk_1` (`form_id`),

  KEY `tbl_auction_governing_column_fk_2` (`table_id`),

  CONSTRAINT `tbl_auction_governing_column_fk` FOREIGN KEY (`auction_id`) REFERENCES `tbl_auction` (`auction_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_auction_governing_column_fk_1` FOREIGN KEY (`form_id`) REFERENCES `tbl_auction_form` (`form_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_auction_governing_column_fk_2` FOREIGN KEY (`table_id`) REFERENCES `tbl_auction_table` (`table_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:20

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_auction_item_gt_wise`

--



DROP TABLE IF EXISTS `tbl_auction_item_gt_wise`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_auction_item_gt_wise` (

  `item_gt_id` bigint NOT NULL AUTO_INCREMENT,

  `auction_id` bigint NOT NULL,

  `user_id` bigint NOT NULL,

  `total_price` double DEFAULT NULL,

  `bidder_rank` int DEFAULT NULL,

  `l1h1` varchar(20) DEFAULT NULL,

  PRIMARY KEY (`item_gt_id`),

  KEY `tbl_auction_item_gt_wise_fk_1` (`auction_id`),

  KEY `tbl_auction_item_gt_wise_fk_2` (`user_id`),

  CONSTRAINT `tbl_auction_item_gt_wise_fk_1` FOREIGN KEY (`auction_id`) REFERENCES `tbl_auction` (`auction_id`),

  CONSTRAINT `tbl_auction_item_gt_wise_fk_2` FOREIGN KEY (`user_id`) REFERENCES `tbl_userlogin` (`id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:20

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_auction_table`

--



DROP TABLE IF EXISTS `tbl_auction_table`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_auction_table` (

  `table_id` bigint NOT NULL AUTO_INCREMENT,

  `auction_id` bigint DEFAULT NULL,

  `table_name` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `active_status` int NOT NULL,

  `created_by` bigint DEFAULT NULL,

  `created_on` datetime DEFAULT NULL,

  `updated_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `form_id` bigint DEFAULT NULL,

  `table_header` varchar(10000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `table_footer` varchar(10000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `no_of_rows` int DEFAULT NULL,

  `no_of_cols` int DEFAULT NULL,

  `is_mandatory` int DEFAULT NULL,

  `sort_order` int DEFAULT NULL,

  `has_gt_row` tinyint DEFAULT NULL,

  PRIMARY KEY (`table_id`),

  KEY `tbl_auction_table_fk` (`auction_id`),

  KEY `tbl_auction_table_fk_1` (`form_id`),

  CONSTRAINT `tbl_auction_table_fk` FOREIGN KEY (`auction_id`) REFERENCES `tbl_auction` (`auction_id`) ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `tbl_auction_table_fk_1` FOREIGN KEY (`form_id`) REFERENCES `tbl_auction_form` (`form_id`) ON DELETE CASCADE ON UPDATE CASCADE

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=1847 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:20

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_auctionbid`

--



DROP TABLE IF EXISTS `tbl_auctionbid`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_auctionbid` (

  `bid_id` bigint NOT NULL AUTO_INCREMENT,

  `auction_id` bigint DEFAULT NULL,

  `user_login_id` bigint DEFAULT NULL,

  `user_detail_id` bigint DEFAULT NULL,

  `table_id` bigint DEFAULT NULL,

  `row_id` int DEFAULT NULL,

  `affected_bid_price` decimal(20,5) DEFAULT NULL,

  `bid_price` decimal(20,5) DEFAULT NULL,

  `bidder_bid_price` decimal(20,5) DEFAULT NULL,

  `ip_address` varchar(50) DEFAULT NULL,

  `is_auto_bid` tinyint DEFAULT NULL,

  `submitted_on` datetime DEFAULT NULL,

  `submitted_by` int DEFAULT NULL,

  `is_approved` tinyint DEFAULT NULL,

  `reject_status` tinyint DEFAULT NULL COMMENT 'tbl_auction_bidding_status id',

  `reject_remark` varchar(1000) DEFAULT NULL,

  `form_id` bigint NOT NULL,

  `bidder_id` int DEFAULT NULL,

  `rejected_by` bigint DEFAULT NULL,

  `rejected_on` datetime DEFAULT NULL,

  `l1h1_amount` decimal(20,5) DEFAULT NULL,

  `bidder_l1h1_amount` decimal(20,5) DEFAULT NULL,

  PRIMARY KEY (`bid_id`),

  KEY `auction_fk_idx` (`auction_id`),

  KEY `bidder_fk_idx` (`user_login_id`),

  KEY `table_fk_idx` (`table_id`),

  KEY `tbl_auctionbid_fk` (`form_id`),

  KEY `tbl_auctionbid_fk_1` (`bidder_id`),

  CONSTRAINT `auction_fk` FOREIGN KEY (`auction_id`) REFERENCES `tbl_auction` (`auction_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `bidder_fk` FOREIGN KEY (`user_login_id`) REFERENCES `tbl_userlogin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `table_fk` FOREIGN KEY (`table_id`) REFERENCES `tbl_auction_table` (`table_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_auctionbid_fk` FOREIGN KEY (`form_id`) REFERENCES `tbl_auction_form` (`form_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_auctionbid_fk_1` FOREIGN KEY (`bidder_id`) REFERENCES `tbl_bidder` (`bidder_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=16018 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:20

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_auctionbidconfirmation`

--



DROP TABLE IF EXISTS `tbl_auctionbidconfirmation`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_auctionbidconfirmation` (

  `bid_confirmation_id` bigint NOT NULL AUTO_INCREMENT,

  `auction_id` bigint DEFAULT NULL,

  `bidder_id` bigint DEFAULT NULL,

  `user_detail_id` bigint DEFAULT NULL,

  `encoded_name` varchar(45) DEFAULT NULL,

  `ip_address` varchar(50) DEFAULT NULL,

  `client_bid_term_id` int DEFAULT NULL,

  `created_on` datetime DEFAULT NULL,

  `created_by` int DEFAULT NULL,

  PRIMARY KEY (`bid_confirmation_id`),

  KEY `auction_id_idx` (`auction_id`),

  KEY `bidder_id_idx` (`bidder_id`),

  CONSTRAINT `auction_id` FOREIGN KEY (`auction_id`) REFERENCES `tbl_auction` (`auction_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `fk_bidder` FOREIGN KEY (`bidder_id`) REFERENCES `tbl_userlogin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:20

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_auctionbidderagree`

--



DROP TABLE IF EXISTS `tbl_auctionbidderagree`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_auctionbidderagree` (

  `auctionbidderagree_id` bigint NOT NULL AUTO_INCREMENT,

  `auction_id` bigint NOT NULL,

  `bidder_id` int NOT NULL,

  `is_regreated` tinyint NOT NULL,

  `auction_terms_id` bigint NOT NULL,

  `created_on` datetime NOT NULL,

  `created_by` bigint NOT NULL,

  `updated_on` datetime DEFAULT NULL,

  `updated_by` bigint DEFAULT NULL,

  `active_status` int NOT NULL,

  `currency_id` int DEFAULT NULL,

  `ip_address` varchar(100) DEFAULT NULL,

  `encrypted_name` varchar(100) DEFAULT NULL,

  `remarks` varchar(5000) DEFAULT NULL,

  PRIMARY KEY (`auctionbidderagree_id`),

  KEY `tbl_auctionbidderagree_fk` (`bidder_id`),

  CONSTRAINT `tbl_auctionbidderagree_fk` FOREIGN KEY (`bidder_id`) REFERENCES `tbl_bidder` (`bidder_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=1385 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:20

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_auctionbiddermapping`

--



DROP TABLE IF EXISTS `tbl_auctionbiddermapping`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_auctionbiddermapping` (

  `biddermapped_id` int NOT NULL AUTO_INCREMENT,

  `table_id` bigint DEFAULT NULL,

  `user_login_id` bigint DEFAULT NULL,

  `userdetail_id` bigint DEFAULT NULL,

  `row_id` int DEFAULT '0',

  `startprice` int DEFAULT '0',

  `created_on` datetime DEFAULT NULL,

  `created_by` bigint DEFAULT NULL,

  `auction_id` bigint DEFAULT NULL,

  `form_id` bigint DEFAULT NULL,

  `updated_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `active_status` int DEFAULT NULL,

  `company_id` int DEFAULT NULL,

  `bidder_id` int DEFAULT NULL,

  `load_factor` int DEFAULT '0',

  PRIMARY KEY (`biddermapped_id`),

  KEY `tbl_auctionbiddermapping_fk` (`auction_id`),

  KEY `tbl_auctionbiddermapping_fk_1` (`form_id`),

  KEY `tbl_auctionbiddermapping_fk_2` (`table_id`),

  KEY `tbl_auctionbiddermapping_fk_3` (`user_login_id`),

  KEY `tbl_auctionbiddermapping_fk_4` (`company_id`),

  KEY `tbl_auctionbiddermapping_fk_5` (`bidder_id`),

  CONSTRAINT `tbl_auctionbiddermapping_fk` FOREIGN KEY (`auction_id`) REFERENCES `tbl_auction` (`auction_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_auctionbiddermapping_fk_1` FOREIGN KEY (`form_id`) REFERENCES `tbl_auction_form` (`form_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_auctionbiddermapping_fk_2` FOREIGN KEY (`table_id`) REFERENCES `tbl_auction_table` (`table_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_auctionbiddermapping_fk_3` FOREIGN KEY (`user_login_id`) REFERENCES `tbl_userlogin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_auctionbiddermapping_fk_4` FOREIGN KEY (`company_id`) REFERENCES `tbl_company` (`company_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_auctionbiddermapping_fk_5` FOREIGN KEY (`bidder_id`) REFERENCES `tbl_bidder` (`bidder_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=2008 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:20

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_auctionbidderwisestartprice`

--



DROP TABLE IF EXISTS `tbl_auctionbidderwisestartprice`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_auctionbidderwisestartprice` (

  `bidderwisestartprice_id` int NOT NULL AUTO_INCREMENT,

  `table_id` bigint DEFAULT NULL,

  `bidder_id` int DEFAULT NULL,

  `userdetail_id` bigint DEFAULT NULL,

  `row_id` int NOT NULL DEFAULT '0',

  `start_price` bigint DEFAULT '0',

  `created_on` datetime DEFAULT NULL,

  `created_by` bigint DEFAULT NULL,

  `auction_id` bigint DEFAULT NULL,

  `form_id` bigint DEFAULT NULL,

  `updated_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `active_status` int DEFAULT NULL,

  `company_id` int DEFAULT NULL,

  `user_login_id` bigint DEFAULT NULL,

  PRIMARY KEY (`bidderwisestartprice_id`),

  KEY `tbl_auctionbidderwisestartprice_fk` (`auction_id`),

  KEY `tbl_auctionbidderwisestartprice_fk_1` (`form_id`),

  KEY `tbl_auctionbidderwisestartprice_fk_2` (`table_id`),

  KEY `tbl_auctionbidderwisestartprice_fk_3` (`bidder_id`),

  KEY `tbl_auctionbidderwisestartprice_fk_4` (`company_id`),

  KEY `tbl_auctionbidderwisestartprice_fk10` (`user_login_id`),

  CONSTRAINT `tbl_auctionbidderwisestartprice_fk` FOREIGN KEY (`form_id`) REFERENCES `tbl_auction_form` (`form_id`) ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `tbl_auctionbidderwisestartprice_fk10` FOREIGN KEY (`user_login_id`) REFERENCES `tbl_userlogin` (`id`),

  CONSTRAINT `tbl_auctionbidderwisestartprice_fk_1` FOREIGN KEY (`table_id`) REFERENCES `tbl_auction_table` (`table_id`) ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `tbl_auctionbidderwisestartprice_fk_2` FOREIGN KEY (`bidder_id`) REFERENCES `tbl_bidder` (`bidder_id`),

  CONSTRAINT `tbl_auctionbidderwisestartprice_fk_3` FOREIGN KEY (`auction_id`) REFERENCES `tbl_auction` (`auction_id`),

  CONSTRAINT `tbl_auctionbidderwisestartprice_fk_4` FOREIGN KEY (`company_id`) REFERENCES `tbl_company` (`company_id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=8667 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:20

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_auctionbiddetail`

--



DROP TABLE IF EXISTS `tbl_auctionbiddetail`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_auctionbiddetail` (

  `bid_detail_id` bigint NOT NULL AUTO_INCREMENT,

  `auction_id` bigint DEFAULT NULL,

  `bidder_id` bigint DEFAULT NULL,

  `table_id` bigint DEFAULT NULL,

  `row_id` bigint DEFAULT NULL,

  `bid_id` bigint DEFAULT NULL,

  `cell_id` bigint DEFAULT NULL,

  `cell_value` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,

  PRIMARY KEY (`bid_detail_id`),

  KEY `bid_id_key_idx` (`bid_id`),

  CONSTRAINT `bid_id_key` FOREIGN KEY (`bid_id`) REFERENCES `tbl_auctionbid` (`bid_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=48421 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:21

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_auctionbiddetailhistory`

--



DROP TABLE IF EXISTS `tbl_auctionbiddetailhistory`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_auctionbiddetailhistory` (

  `bid_detail_id` bigint NOT NULL AUTO_INCREMENT,

  `auction_id` bigint DEFAULT NULL,

  `bidder_id` bigint DEFAULT NULL,

  `table_id` bigint DEFAULT NULL,

  `row_id` bigint DEFAULT NULL,

  `bid_id` bigint DEFAULT NULL,

  `cell_id` bigint DEFAULT NULL,

  `cell_value` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,

  PRIMARY KEY (`bid_detail_id`)

)

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:21

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_auctionbidhistory`

--



DROP TABLE IF EXISTS `tbl_auctionbidhistory`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_auctionbidhistory` (

  `bid_id` bigint NOT NULL AUTO_INCREMENT,

  `auction_id` int DEFAULT NULL,

  `bidder_id` bigint DEFAULT NULL,

  `user_detail_id` bigint DEFAULT NULL,

  `table_id` int DEFAULT NULL,

  `row_id` int DEFAULT NULL,

  `bid_price` decimal(20,5) DEFAULT NULL,

  `bidder_bid_price` decimal(20,5) DEFAULT NULL,

  `ip_address` varchar(50) DEFAULT NULL,

  `is_auto_bid` tinyint DEFAULT NULL,

  `submitted_on` datetime DEFAULT NULL,

  `submitted_by` int DEFAULT NULL,

  `is_approved` tinyint DEFAULT NULL,

  `reject_status` tinyint DEFAULT NULL,

  PRIMARY KEY (`bid_id`)

)

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:21

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_auctionbidrank`

--



DROP TABLE IF EXISTS `tbl_auctionbidrank`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_auctionbidrank` (

  `bid_rank_id` bigint NOT NULL AUTO_INCREMENT,

  `auction_id` bigint DEFAULT NULL,

  `bidder_id` int DEFAULT NULL,

  `table_id` bigint DEFAULT NULL,

  `row_id` int DEFAULT NULL,

  `bid_id` bigint DEFAULT NULL,

  `bid_price` decimal(20,5) DEFAULT NULL,

  `bidder_rank` int DEFAULT NULL,

  `submitted_on` datetime DEFAULT NULL,

  `submitted_by` int DEFAULT NULL,

  `is_active` tinyint DEFAULT NULL,

  `l1h1_amount` decimal(20,5) DEFAULT NULL,

  `affected_bid_price` decimal(20,5) DEFAULT NULL,

  `lower_price` bigint DEFAULT '0',

  `higher_price` bigint DEFAULT '0',

  `update_price_count` int DEFAULT '0',

  `color_code_number` int NOT NULL DEFAULT '0',

  PRIMARY KEY (`bid_rank_id`),

  KEY `bid_fk_idx` (`bid_id`),

  KEY `fk_auction_id_idx` (`auction_id`),

  KEY `fk_bidder_id_idx` (`bidder_id`),

  KEY `fk_table_id_idx` (`table_id`),

  CONSTRAINT `bid_fk` FOREIGN KEY (`bid_id`) REFERENCES `tbl_auctionbid` (`bid_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `fk_auction_id` FOREIGN KEY (`auction_id`) REFERENCES `tbl_auction` (`auction_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `fk_table_id` FOREIGN KEY (`table_id`) REFERENCES `tbl_auction_table` (`table_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_auctionbidrank_fk` FOREIGN KEY (`bidder_id`) REFERENCES `tbl_bidder` (`bidder_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=3710 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:21

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_auctionbidrankhistory`

--



DROP TABLE IF EXISTS `tbl_auctionbidrankhistory`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_auctionbidrankhistory` (

  `bid_rank_id` bigint NOT NULL AUTO_INCREMENT,

  `auction_id` bigint DEFAULT NULL,

  `bidder_id` bigint DEFAULT NULL,

  `table_id` int DEFAULT NULL,

  `row_id` int DEFAULT NULL,

  `bid_id` bigint DEFAULT NULL,

  `bid_price` decimal(20,5) DEFAULT NULL,

  `bidder_rank` int DEFAULT NULL,

  `submitted_on` datetime DEFAULT NULL,

  `submitted_by` int DEFAULT NULL,

  `is_active` tinyint DEFAULT NULL,

  PRIMARY KEY (`bid_rank_id`)

)

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:21

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_auctionitembiddermap`

--



DROP TABLE IF EXISTS `tbl_auctionitembiddermap`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_auctionitembiddermap` (

  `itembiddermap_id` int NOT NULL AUTO_INCREMENT,

  `user_login_id` bigint DEFAULT NULL,

  `company_id` int DEFAULT NULL,

  `userdetail_id` bigint DEFAULT NULL,

  `auction_id` bigint DEFAULT NULL,

  `form_id` bigint DEFAULT NULL,

  `table_id` bigint DEFAULT NULL,

  `row_id` int DEFAULT NULL,

  `active_status` int DEFAULT NULL,

  `created_by` bigint DEFAULT NULL,

  `created_on` datetime DEFAULT NULL,

  `updated_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `bidder_id` int DEFAULT NULL,

  `load_factor` int DEFAULT '0',

  PRIMARY KEY (`itembiddermap_id`),

  KEY `tbl_auctionitembiddermap_fk_1` (`company_id`),

  KEY `tbl_auctionitembiddermap_fk_2` (`auction_id`),

  KEY `tbl_auctionitembiddermap_fk_3` (`form_id`),

  KEY `tbl_auctionitembiddermap_fk_4` (`table_id`),

  KEY `tbl_auctionitembiddermap_fk` (`user_login_id`),

  KEY `tbl_auctionitembiddermap_fk_10` (`bidder_id`),

  CONSTRAINT `tbl_auctionitembiddermap_fk` FOREIGN KEY (`user_login_id`) REFERENCES `tbl_userlogin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_auctionitembiddermap_fk_1` FOREIGN KEY (`company_id`) REFERENCES `tbl_company` (`company_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_auctionitembiddermap_fk_10` FOREIGN KEY (`bidder_id`) REFERENCES `tbl_bidder` (`bidder_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_auctionitembiddermap_fk_2` FOREIGN KEY (`auction_id`) REFERENCES `tbl_auction` (`auction_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_auctionitembiddermap_fk_5` FOREIGN KEY (`form_id`) REFERENCES `tbl_auction_form` (`form_id`) ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `tbl_auctionitembiddermap_fk_6` FOREIGN KEY (`table_id`) REFERENCES `tbl_auction_table` (`table_id`) ON DELETE CASCADE ON UPDATE CASCADE

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=5121 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:21

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_auctionlotwisebiddermap`

--



DROP TABLE IF EXISTS `tbl_auctionlotwisebiddermap`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_auctionlotwisebiddermap` (

  `lotbiddermap_id` bigint NOT NULL AUTO_INCREMENT,

  `user_login_id` bigint DEFAULT NULL,

  `company_id` int DEFAULT NULL,

  `userdetail_id` bigint DEFAULT NULL,

  `auction_id` bigint DEFAULT NULL,

  `form_id` bigint DEFAULT NULL,

  `table_id` bigint DEFAULT NULL,

  `active_status` int DEFAULT NULL,

  `created_by` bigint DEFAULT NULL,

  `created_on` datetime DEFAULT NULL,

  `updated_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `bidder_id` int DEFAULT NULL,

  `load_factor` int DEFAULT '0',

  PRIMARY KEY (`lotbiddermap_id`),

  KEY `auctionlotwisebiddermap_fk` (`company_id`),

  KEY `auctionlotwisebiddermap_fk_1` (`user_login_id`),

  KEY `auctionlotwisebiddermap_fk_2` (`auction_id`),

  KEY `auctionlotwisebiddermap_fk_3` (`form_id`),

  KEY `auctionlotwisebiddermap_fk_4` (`table_id`),

  KEY `tbl_auctionlotwisebiddermap_fk_10` (`bidder_id`),

  CONSTRAINT `auctionlotwisebiddermap_fk` FOREIGN KEY (`company_id`) REFERENCES `tbl_company` (`company_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `auctionlotwisebiddermap_fk_2` FOREIGN KEY (`auction_id`) REFERENCES `tbl_auction` (`auction_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_auctionlotwisebiddermap_fk` FOREIGN KEY (`user_login_id`) REFERENCES `tbl_userlogin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_auctionlotwisebiddermap_fk_10` FOREIGN KEY (`bidder_id`) REFERENCES `tbl_bidder` (`bidder_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_auctionlotwisebiddermap_fk_5` FOREIGN KEY (`form_id`) REFERENCES `tbl_auction_form` (`form_id`) ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `tbl_auctionlotwisebiddermap_fk_6` FOREIGN KEY (`table_id`) REFERENCES `tbl_auction_table` (`table_id`) ON DELETE CASCADE ON UPDATE CASCADE

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:21

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_auctiontermsandcondition`

--



DROP TABLE IF EXISTS `tbl_auctiontermsandcondition`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_auctiontermsandcondition` (

  `auction_terms_id` int NOT NULL AUTO_INCREMENT,

  `condition_text` varchar(10000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `active_status` int NOT NULL DEFAULT '0',

  `auction_id` bigint NOT NULL,

  `language_id` int DEFAULT NULL,

  `created_by` bigint NOT NULL,

  `created_on` datetime NOT NULL,

  `updated_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  PRIMARY KEY (`auction_terms_id`),

  KEY `Tbl_auctionTermsAndCondition_FK_1` (`language_id`),

  CONSTRAINT `Tbl_auctionTermsAndCondition_FK_1` FOREIGN KEY (`language_id`) REFERENCES `tbl_languages` (`language_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=1373 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:21

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_bidder`

--



DROP TABLE IF EXISTS `tbl_bidder`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_bidder` (

  `bidder_id` int NOT NULL AUTO_INCREMENT,

  `user_id` bigint NOT NULL,

  `client_id` int NOT NULL,

  `company_id` int NOT NULL,

  `category` varchar(250) NOT NULL,

  `start_date` datetime DEFAULT NULL,

  `end_date` datetime DEFAULT NULL,

  `remarks` varchar(250) DEFAULT NULL,

  `created_on` datetime NOT NULL,

  `created_by` bigint DEFAULT NULL,

  `approved_on` datetime DEFAULT NULL,

  `approved_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `updated_by` bigint DEFAULT NULL,

  `active_status` int NOT NULL,

  `time_zone_id` bigint DEFAULT NULL,

  `sg_status` int DEFAULT '4',

  `sg_vendor_id` int NOT NULL,

  `sg_vendor_code` varchar(250) DEFAULT NULL,

  `sg_vendor_flag` int NOT NULL DEFAULT '0',

  PRIMARY KEY (`bidder_id`),

  KEY `user_id_idx` (`user_id`),

  KEY `company_id_idx` (`company_id`),

  CONSTRAINT `tbl_bidder_fk` FOREIGN KEY (`user_id`) REFERENCES `tbl_userlogin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=288 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:21

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_bidder_unspsc_mapping`

--



DROP TABLE IF EXISTS `tbl_bidder_unspsc_mapping`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_bidder_unspsc_mapping` (

  `id` bigint NOT NULL AUTO_INCREMENT,

  `bidder_id` bigint DEFAULT NULL,

  `unspsc_commodity_id` bigint DEFAULT NULL,

  PRIMARY KEY (`id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:21

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_bidderapprovaldetail`

--



DROP TABLE IF EXISTS `tbl_bidderapprovaldetail`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_bidderapprovaldetail` (

  `bid_approval_id` int NOT NULL AUTO_INCREMENT,

  `tender_id` int DEFAULT NULL,

  `envelope_id` int DEFAULT NULL,

  `company_id` int DEFAULT NULL,

  `bidder_id` bigint DEFAULT NULL,

  `remarks` varchar(10001) DEFAULT NULL,

  `officer_id` bigint DEFAULT NULL,

  `created_by` bigint DEFAULT NULL,

  `created_on` datetime DEFAULT NULL,

  `is_approved` tinyint DEFAULT NULL,

  `user_details_id` int DEFAULT NULL,

  `final_submission_id` int NOT NULL,

  `c_status` int DEFAULT '0',

  `updated_on` datetime DEFAULT NULL,

  `updated_by` bigint DEFAULT NULL,

  `active_status` int DEFAULT '1',

  PRIMARY KEY (`bid_approval_id`),

  KEY `tender_table_id_idx` (`tender_id`),

  KEY `envelope_table_id_idx` (`envelope_id`),

  KEY `company_table_id_idx` (`company_id`),

  KEY `user_table_id_idx` (`bidder_id`),

  KEY `officer_id_idx` (`officer_id`),

  KEY `tbl_bidderapprovaldetail_fk` (`final_submission_id`),

  CONSTRAINT `company_table_id` FOREIGN KEY (`company_id`) REFERENCES `tbl_company` (`company_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `envelope_table_id` FOREIGN KEY (`envelope_id`) REFERENCES `tbl_tenderenvelope` (`envelope_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `officer_fk` FOREIGN KEY (`officer_id`) REFERENCES `tbl_officer` (`officer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_bidderapprovaldetail_fk` FOREIGN KEY (`final_submission_id`) REFERENCES `tbl_finalsubmission` (`final_submission_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_bidderapprovaldetail_fk_1` FOREIGN KEY (`bidder_id`) REFERENCES `tbl_userlogin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tender_table_id` FOREIGN KEY (`tender_id`) REFERENCES `tbl_tender` (`tender_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=1036 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:21

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_bidderdoc`

--



DROP TABLE IF EXISTS `tbl_bidderdoc`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_bidderdoc` (

  `bidderdoc_id` int NOT NULL AUTO_INCREMENT,

  `client_id` bigint DEFAULT NULL,

  `doc_name` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `doc_extension` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `doc_size` bigint DEFAULT NULL,

  `ip_address` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `uploaded_by` bigint DEFAULT NULL,

  `uploaded_on` datetime DEFAULT NULL,

  `active_status` int DEFAULT NULL,

  `bidder_id` int DEFAULT NULL,

  `doc_folder_path` varchar(10000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  PRIMARY KEY (`bidderdoc_id`),

  KEY `tbl_bidderdoc_fk` (`bidder_id`),

  KEY `tbl_bidderdoc_fk_1` (`client_id`),

  CONSTRAINT `tbl_bidderdoc_fk` FOREIGN KEY (`bidder_id`) REFERENCES `tbl_bidder` (`bidder_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_bidderdoc_fk_1` FOREIGN KEY (`client_id`) REFERENCES `tbl_client` (`client_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=767 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:21

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_bidderdocmapping`

--



DROP TABLE IF EXISTS `tbl_bidderdocmapping`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_bidderdocmapping` (

  `bidderdocmapping_id` int NOT NULL AUTO_INCREMENT,

  `bidderdoc_id` int NOT NULL,

  `event_id` int DEFAULT NULL,

  `child_id` int DEFAULT NULL,

  `link_id` int DEFAULT NULL,

  `module_id` int DEFAULT NULL,

  `bidder_id` int DEFAULT NULL,

  `status` tinyint NOT NULL DEFAULT '0',

  `mapped_on` datetime DEFAULT NULL,

  `mapped_by` int DEFAULT NULL,

  `created_on` datetime DEFAULT NULL,

  `created_by` int DEFAULT NULL,

  PRIMARY KEY (`bidderdocmapping_id`),

  KEY `bidderdoc_id_idx` (`bidderdoc_id`),

  KEY `tbl_bidderdocmapping_fk` (`bidder_id`),

  CONSTRAINT `bidderdoc_id` FOREIGN KEY (`bidderdoc_id`) REFERENCES `tbl_bidderdoc` (`bidderdoc_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_bidderdocmapping_fk` FOREIGN KEY (`bidder_id`) REFERENCES `tbl_bidder` (`bidder_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=765 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:21

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_biddetail`

--



DROP TABLE IF EXISTS `tbl_biddetail`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_biddetail` (

  `bid_detail_id` int NOT NULL AUTO_INCREMENT,

  `form_id` int DEFAULT NULL,

  `company_id` int DEFAULT NULL,

  `cell_id` bigint DEFAULT NULL,

  `cell_value` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,

  PRIMARY KEY (`bid_detail_id`),

  KEY `form_table_fk_idx` (`form_id`),

  KEY `company_table_fk_idx` (`company_id`),

  KEY `company_table_fk_key_idx` (`company_id`),

  CONSTRAINT `company_table_fk_key` FOREIGN KEY (`company_id`) REFERENCES `tbl_company` (`company_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `form_table_fk` FOREIGN KEY (`form_id`) REFERENCES `tbl_tenderform` (`form_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:21

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_bidsubmitwithdraw_history`

--



DROP TABLE IF EXISTS `tbl_bidsubmitwithdraw_history`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_bidsubmitwithdraw_history` (

  `history_id` int NOT NULL AUTO_INCREMENT,

  `tender_id` int NOT NULL,

  `company_id` int NOT NULL,

  `user_id` bigint NOT NULL,

  `user_detail_id` int NOT NULL,

  `ip_address` varchar(50) NOT NULL,

  `is_submission` tinyint NOT NULL,

  `created_by` int NOT NULL,

  `created_on` datetime NOT NULL,

  PRIMARY KEY (`history_id`),

  KEY `bidsubmitwithdraw_company_fk` (`company_id`),

  KEY `bidsubmitwithdraw_tender_fk` (`tender_id`),

  KEY `bidsubmitwithdraw_userDetail_fk` (`user_detail_id`),

  KEY `bidsubmitwithdraw_userLogin_fk` (`user_id`),

  CONSTRAINT `bidsubmitwithdraw_company_fk` FOREIGN KEY (`company_id`) REFERENCES `tbl_company` (`company_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `bidsubmitwithdraw_tender_fk` FOREIGN KEY (`tender_id`) REFERENCES `tbl_tender` (`tender_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `bidsubmitwithdraw_userDetail_fk` FOREIGN KEY (`user_detail_id`) REFERENCES `tbl_userdetail` (`userdetail_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `bidsubmitwithdraw_userLogin_fk` FOREIGN KEY (`user_id`) REFERENCES `tbl_userlogin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=488 DEFAULT CHARSET=utf8mb3;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:22

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_bidwithdrawal`

--



DROP TABLE IF EXISTS `tbl_bidwithdrawal`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_bidwithdrawal` (

  `bid_withdrawal_id` int NOT NULL AUTO_INCREMENT,

  `tender_id` int NOT NULL,

  `company_id` int NOT NULL,

  `user_id` bigint NOT NULL,

  `userdetail_id` int NOT NULL,

  `remark` varchar(400) NOT NULL,

  `ip_address` varchar(45) NOT NULL,

  `active_status` int DEFAULT NULL,

  `created_on` datetime DEFAULT NULL,

  `created_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `updated_by` bigint DEFAULT NULL,

  PRIMARY KEY (`bid_withdrawal_id`),

  KEY `bidwithdrawal_tender_fk` (`tender_id`),

  KEY `bidwithdrawal_company_fk` (`company_id`),

  KEY `bidwithdrawal_userlogin_fk` (`user_id`),

  KEY `bidwithdrawal_userdetail_fk` (`userdetail_id`),

  CONSTRAINT `bidwithdrawal_company_fk` FOREIGN KEY (`company_id`) REFERENCES `tbl_company` (`company_id`) ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `bidwithdrawal_tender_fk` FOREIGN KEY (`tender_id`) REFERENCES `tbl_tender` (`tender_id`) ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `bidwithdrawal_userdetail_fk` FOREIGN KEY (`userdetail_id`) REFERENCES `tbl_userdetail` (`userdetail_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `bidwithdrawal_userlogin_fk` FOREIGN KEY (`user_id`) REFERENCES `tbl_userlogin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:22

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_catalog`

--



DROP TABLE IF EXISTS `tbl_catalog`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_catalog` (

  `id` bigint NOT NULL AUTO_INCREMENT,

  `catalog_name` varchar(200) DEFAULT NULL,

  `client_id` bigint DEFAULT NULL,

  KEY `id` (`id`),

  KEY `client_id` (`client_id`),

  CONSTRAINT `tbl_catalog_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `tbl_client` (`client_id`),

  CONSTRAINT `tbl_catalog_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `tbl_client` (`client_id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:22

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_catalog_items`

--



DROP TABLE IF EXISTS `tbl_catalog_items`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_catalog_items` (

  `id` bigint NOT NULL AUTO_INCREMENT,

  `catalog_id` bigint DEFAULT NULL,

  `item_id` bigint DEFAULT NULL,

  `bidder_id` bigint DEFAULT NULL,

  `bidder_name` varchar(250) DEFAULT NULL,

  `unit_price` double DEFAULT NULL,

  `unit` varchar(50) DEFAULT NULL,

  `item_name` varchar(200) DEFAULT NULL,

  `start_date` datetime DEFAULT NULL,

  `end_date` datetime DEFAULT NULL,

  `event_id` bigint DEFAULT NULL,

  `event_brief` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,

  `item_code` bigint DEFAULT NULL,

  `department_id` bigint DEFAULT NULL,

  `event_terms` varchar(10000) DEFAULT NULL,

  KEY `id` (`id`),

  KEY `catalog_id` (`catalog_id`),

  KEY `item_id` (`item_id`),

  CONSTRAINT `tbl_catalog_items_ibfk_1` FOREIGN KEY (`catalog_id`) REFERENCES `tbl_catalog` (`id`),

  CONSTRAINT `tbl_catalog_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `tbl_item` (`id`),

  CONSTRAINT `tbl_catalog_items_ibfk_3` FOREIGN KEY (`catalog_id`) REFERENCES `tbl_catalog` (`id`),

  CONSTRAINT `tbl_catalog_items_ibfk_4` FOREIGN KEY (`item_id`) REFERENCES `tbl_item` (`id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:22

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_category`

--



DROP TABLE IF EXISTS `tbl_category`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_category` (

  `category_id` int NOT NULL AUTO_INCREMENT,

  `category_description` varchar(2000) NOT NULL,

  `parent_category_id` int NOT NULL,

  `category_code` varchar(100) NOT NULL,

  `client_id` bigint NOT NULL,

  `created_on` datetime NOT NULL,

  `created_by` int NOT NULL,

  `updated_on` datetime DEFAULT NULL,

  `updated_by` int DEFAULT NULL,

  `is_active` int NOT NULL DEFAULT '1',

  PRIMARY KEY (`category_id`)

)

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:22

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_cellmaster`

--



DROP TABLE IF EXISTS `tbl_cellmaster`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_cellmaster` (

  `cell_id` bigint NOT NULL AUTO_INCREMENT,

  `form_id` int NOT NULL,

  `table_id` int NOT NULL,

  `column_id` bigint NOT NULL,

  `row_id` int DEFAULT NULL,

  `cell_value` varchar(20000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `cell_no` int DEFAULT NULL,

  `data_type` tinyint DEFAULT NULL,

  `object_Id` int DEFAULT NULL,

  `is_gt_cell` tinyint DEFAULT NULL,

  PRIMARY KEY (`cell_id`),

  KEY `form_id_idx` (`form_id`),

  KEY `table_id_idx` (`table_id`),

  KEY `column_id_idx` (`column_id`),

  CONSTRAINT `column_id` FOREIGN KEY (`column_id`) REFERENCES `tbl_columnmaster` (`column_id`) ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `form_id_key` FOREIGN KEY (`form_id`) REFERENCES `tbl_formmaster` (`form_id`) ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `table_id_key` FOREIGN KEY (`table_id`) REFERENCES `tbl_tablemaster` (`table_id`) ON DELETE CASCADE ON UPDATE CASCADE

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=12554 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:22

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_city`

--



DROP TABLE IF EXISTS `tbl_city`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_city` (

  `city_id` int NOT NULL AUTO_INCREMENT,

  `city_name` varchar(30) NOT NULL,

  `state_id` int NOT NULL,

  `country_id` int DEFAULT NULL,

  `lang1` varchar(100) DEFAULT NULL,

  `lang2` varchar(100) DEFAULT NULL,

  `lang3` varchar(100) DEFAULT NULL,

  `lang4` varchar(100) DEFAULT NULL,

  `lang5` varchar(100) DEFAULT NULL,

  `lang6` varchar(100) DEFAULT NULL,

  `lang7` varchar(100) DEFAULT NULL,

  PRIMARY KEY (`city_id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=150106 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:22

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_client`

--



DROP TABLE IF EXISTS `tbl_client`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_client` (

  `client_id` bigint NOT NULL AUTO_INCREMENT,

  `domain_name` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `address_line_1` varchar(5000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `address_line_2` varchar(5000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `pincode_no` int DEFAULT NULL,

  `country_id` int NOT NULL,

  `state_id` int NOT NULL,

  `city_name` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `timezone_id` bigint NOT NULL,

  `decimal_value_upto` int NOT NULL,

  `active_status` int NOT NULL,

  `created_by` bigint NOT NULL,

  `created_on` datetime NOT NULL,

  `updated_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `logo` mediumblob,

  `domain_host` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `client_category` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `client_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `file_name` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `is_workflow_req` int DEFAULT NULL,

  `amt_dsp_in` int NOT NULL DEFAULT '1' COMMENT '1.	Thousands, Lakhs, Crore 2.	Million, Billion, Trillion',

  `company_id_no` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `gst_id_no` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `pancard_no` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `mail_host` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `mail_port` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `mail_user_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `mail_password` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `otp` tinyint DEFAULT '0',

  `footer_logo` mediumblob,

  `footer_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  PRIMARY KEY (`client_id`),

  KEY `Tbl_Client_FK_1` (`country_id`),

  KEY `Tbl_Client_FK_2` (`state_id`),

  KEY `Tbl_Client_FK_3` (`city_name`),

  CONSTRAINT `Tbl_Client_FK_1` FOREIGN KEY (`country_id`) REFERENCES `tbl_country` (`country_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `Tbl_Client_FK_2` FOREIGN KEY (`state_id`) REFERENCES `tbl_state` (`state_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='client configuration table';

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:22

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_client_rule`

--



DROP TABLE IF EXISTS `tbl_client_rule`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_client_rule` (

  `client_rule_id` bigint NOT NULL AUTO_INCREMENT,

  `client_id` bigint NOT NULL,

  `rule_link_id` bigint DEFAULT NULL,

  `sort_order` int DEFAULT NULL,

  `active_status` int DEFAULT NULL,

  PRIMARY KEY (`client_rule_id`),

  KEY `tbl_client_rule_fk` (`rule_link_id`),

  KEY `tbl_client_rule_fk_1` (`client_id`),

  CONSTRAINT `tbl_client_rule_fk_1` FOREIGN KEY (`client_id`) REFERENCES `tbl_client` (`client_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:22

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_clientcurrency`

--



DROP TABLE IF EXISTS `tbl_clientcurrency`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_clientcurrency` (

  `client_currency_id` bigint NOT NULL AUTO_INCREMENT,

  `client_id` bigint NOT NULL,

  `currency_id` int NOT NULL,

  `active_status` int NOT NULL,

  `default_set` int NOT NULL,

  PRIMARY KEY (`client_currency_id`),

  KEY `tbl_clientcurrency_fk` (`client_id`),

  KEY `tbl_clientcurrency_fk_1` (`currency_id`),

  CONSTRAINT `tbl_clientcurrency_fk` FOREIGN KEY (`client_id`) REFERENCES `tbl_client` (`client_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_clientcurrency_fk_1` FOREIGN KEY (`currency_id`) REFERENCES `tbl_currency` (`currency_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=459 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:22

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_clientlanguages`

--



DROP TABLE IF EXISTS `tbl_clientlanguages`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_clientlanguages` (

  `client_language_id` bigint NOT NULL AUTO_INCREMENT,

  `client_id` bigint NOT NULL,

  `language_id` int NOT NULL,

  `active_status` int NOT NULL,

  `default_set` int NOT NULL,

  PRIMARY KEY (`client_language_id`),

  KEY `Tbl_ClientLanguages_FK` (`client_id`),

  KEY `Tbl_ClientLanguages_FK_1` (`language_id`),

  CONSTRAINT `Tbl_ClientLanguages_FK` FOREIGN KEY (`client_id`) REFERENCES `tbl_client` (`client_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `Tbl_ClientLanguages_FK_1` FOREIGN KEY (`language_id`) REFERENCES `tbl_languages` (`language_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=441 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:22

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_clientmarqueecontentmapping`

--



DROP TABLE IF EXISTS `tbl_clientmarqueecontentmapping`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_clientmarqueecontentmapping` (

  `client_marquee_content_id` bigint NOT NULL,

  `client_id` bigint NOT NULL COMMENT 'link to tbl_client',

  `marquee_content_id` bigint NOT NULL COMMENT 'link to tbl_marqueecontent',

  `is_activite` tinyint NOT NULL DEFAULT '0' COMMENT '0 -inActive 1-Active',

  PRIMARY KEY (`client_marquee_content_id`),

  KEY `clienId_idx` (`client_id`),

  KEY `marqueeContentId_idx` (`marquee_content_id`),

  CONSTRAINT `marquee_content_id` FOREIGN KEY (`marquee_content_id`) REFERENCES `tbl_marqueecontent` (`marquee_content_id`) ON DELETE CASCADE ON UPDATE RESTRICT,

  CONSTRAINT `TBL_ClientMarqueeContentMapping_FK` FOREIGN KEY (`client_id`) REFERENCES `tbl_client` (`client_id`) ON DELETE CASCADE ON UPDATE CASCADE

)
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='mapping of marqueecontent with clientIds';

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:22

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_clientmodule`

--



DROP TABLE IF EXISTS `tbl_clientmodule`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_clientmodule` (

  `client_module_id` bigint NOT NULL AUTO_INCREMENT,

  `client_id` bigint NOT NULL,

  `module_id` int NOT NULL,

  `active_status` int NOT NULL,

  `sub_module_id` int NOT NULL,

  PRIMARY KEY (`client_module_id`),

  KEY `Tbl_ClientModule_FK` (`client_id`),

  KEY `Tbl_ClientModule_FK_1` (`module_id`),

  KEY `tbl_clientmodule_fk3` (`sub_module_id`),

  CONSTRAINT `Tbl_ClientModule_FK` FOREIGN KEY (`client_id`) REFERENCES `tbl_client` (`client_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_clientmodule_fk3` FOREIGN KEY (`sub_module_id`) REFERENCES `tbl_sub_module` (`sub_module_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `Tbl_ClientModule_FK_1` FOREIGN KEY (`module_id`) REFERENCES `tbl_module` (`module_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `Tbl_ClientModule_FK_2` FOREIGN KEY (`sub_module_id`) REFERENCES `tbl_sub_module` (`sub_module_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=939 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:22

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_clientnotificationconf`

--



DROP TABLE IF EXISTS `tbl_clientnotificationconf`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_clientnotificationconf` (

  `client_Noti_Conf_Id` int NOT NULL AUTO_INCREMENT,

  `configuration_id` int NOT NULL,

  `client_id` mediumtext NOT NULL,

  `is_mail` tinyint NOT NULL,

  `is_sms` tinyint NOT NULL,

  `is_system` tinyint NOT NULL,

  `created_On` datetime NOT NULL,

  `created_By` int NOT NULL,

  PRIMARY KEY (`client_Noti_Conf_Id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:22

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_clienttermsandcondition`

--



DROP TABLE IF EXISTS `tbl_clienttermsandcondition`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_clienttermsandcondition` (

  `client_terms_id` int NOT NULL AUTO_INCREMENT,

  `module_id` int NOT NULL,

  `condition_text` varchar(10000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `cstatus` int NOT NULL,

  `client_id` bigint NOT NULL,

  `created_by` bigint NOT NULL,

  `created_on` datetime NOT NULL,

  `updated_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `language_id` int DEFAULT NULL,

  `sub_module_id` int NOT NULL,

  `active_status` int DEFAULT NULL,

  PRIMARY KEY (`client_terms_id`),

  KEY `Tbl_ClientTermsAndCondition_FK` (`client_id`),

  KEY `Tbl_ClientTermsAndCondition_FK_1` (`module_id`),

  KEY `Tbl_ClientTermsAndCondition_FK_2` (`language_id`),

  KEY `tbl_clienttermsandcondition_fk4` (`sub_module_id`),

  CONSTRAINT `Tbl_ClientTermsAndCondition_FK` FOREIGN KEY (`client_id`) REFERENCES `tbl_client` (`client_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_clienttermsandcondition_fk4` FOREIGN KEY (`sub_module_id`) REFERENCES `tbl_sub_module` (`sub_module_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `Tbl_ClientTermsAndCondition_FK_1` FOREIGN KEY (`module_id`) REFERENCES `tbl_module` (`module_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `Tbl_ClientTermsAndCondition_FK_2` FOREIGN KEY (`language_id`) REFERENCES `tbl_languages` (`language_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=507 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:22

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_columnmaster`

--



DROP TABLE IF EXISTS `tbl_columnmaster`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_columnmaster` (

  `column_id` bigint NOT NULL AUTO_INCREMENT,

  `form_id` int NOT NULL,

  `table_id` int DEFAULT NULL,

  `column_no` int DEFAULT NULL,

  `column_type_id` int DEFAULT NULL,

  `column_header` varchar(200) DEFAULT NULL,

  `filled_by` int DEFAULT NULL,

  `data_type` int DEFAULT NULL,

  `sort_order` int DEFAULT NULL,

  `is_shown` tinyint DEFAULT NULL,

  `is_taxable` tinyint DEFAULT NULL,

  `is_currency_conv_req` tinyint DEFAULT NULL,

  PRIMARY KEY (`column_id`),

  KEY `form_id_idx` (`form_id`),

  KEY `table_id_idx` (`table_id`),

  KEY `column_type_id_idx` (`column_type_id`),

  CONSTRAINT `cell_form_id` FOREIGN KEY (`form_id`) REFERENCES `tbl_formmaster` (`form_id`) ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `column_type_id` FOREIGN KEY (`column_type_id`) REFERENCES `tbl_columntype` (`column_type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `table_id` FOREIGN KEY (`table_id`) REFERENCES `tbl_tablemaster` (`table_id`) ON DELETE CASCADE ON UPDATE CASCADE

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=374 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:22

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_columntype`

--



DROP TABLE IF EXISTS `tbl_columntype`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_columntype` (

  `column_type_id` int NOT NULL AUTO_INCREMENT,

  `coulmn_type` varchar(50) NOT NULL,

  `is_module` int DEFAULT NULL,

  `is_active` tinyint DEFAULT '1',

  PRIMARY KEY (`column_type_id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 COMMENT='column master';

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:23

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_combo`

--



DROP TABLE IF EXISTS `tbl_combo`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_combo` (

  `combo_Id` int NOT NULL AUTO_INCREMENT,

  `comboName` varchar(100) NOT NULL,

  `client_Id` bigint DEFAULT NULL,

  `forCalculation` tinyint NOT NULL,

  `comboType` tinyint NOT NULL,

  `created_On` datetime NOT NULL,

  `created_By` bigint NOT NULL,

  `active_status` tinyint NOT NULL,

  `pleaseSelectRequired` tinyint NOT NULL,

  PRIMARY KEY (`combo_Id`),

  KEY `tbl_clientcombo` (`client_Id`),

  CONSTRAINT `tbl_clientcombo` FOREIGN KEY (`client_Id`) REFERENCES `tbl_client` (`client_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:23

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_combodetail`

--



DROP TABLE IF EXISTS `tbl_combodetail`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_combodetail` (

  `combo_Detail_Id` int NOT NULL AUTO_INCREMENT,

  `combo_Id` int NOT NULL,

  `optionName` varchar(100) NOT NULL,

  `optionValue` varchar(100) NOT NULL,

  `isDefault` tinyint NOT NULL,

  `isCommentRequired` tinyint NOT NULL,

  PRIMARY KEY (`combo_Detail_Id`),

  KEY `tbl_comboid_fk` (`combo_Id`),

  CONSTRAINT `tbl_comboid_fk` FOREIGN KEY (`combo_Id`) REFERENCES `tbl_combo` (`combo_Id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:23

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_committee_remarks`

--



DROP TABLE IF EXISTS `tbl_committee_remarks`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_committee_remarks` (

  `committee_remark_id` bigint NOT NULL AUTO_INCREMENT,

  `tender_id` int DEFAULT NULL,

  `envelope_id` int DEFAULT NULL,

  `commiittee_type` tinyint DEFAULT NULL,

  `officer_id` bigint DEFAULT NULL,

  `remarks` varchar(100) DEFAULT NULL,

  `created_on` datetime DEFAULT NULL,

  `created_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `updated_by` bigint DEFAULT NULL,

  `active_status` int DEFAULT NULL,

  PRIMARY KEY (`committee_remark_id`),

  KEY `tbl_committee_remarks_fk` (`tender_id`),

  KEY `tbl_committee_remarks_fk_1` (`envelope_id`),

  KEY `tbl_committee_remarks_fk_2` (`officer_id`),

  CONSTRAINT `tbl_committee_remarks_fk` FOREIGN KEY (`tender_id`) REFERENCES `tbl_tender` (`tender_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_committee_remarks_fk_1` FOREIGN KEY (`envelope_id`) REFERENCES `tbl_tenderenvelope` (`envelope_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_committee_remarks_fk_2` FOREIGN KEY (`officer_id`) REFERENCES `tbl_officer` (`officer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=620 DEFAULT CHARSET=utf8mb3;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:23

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_common_audit`

--



DROP TABLE IF EXISTS `tbl_common_audit`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_common_audit` (

  `cmn_audit_id` bigint NOT NULL AUTO_INCREMENT,

  `audit_name` varchar(1000) DEFAULT NULL,

  `request_parm` longtext,

  `created_on` datetime DEFAULT NULL,

  `created_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `updated_by` bigint DEFAULT NULL,

  `active_status` varchar(100) DEFAULT '1',

  `ip_address` varchar(1000) DEFAULT NULL,

  `common_id` bigint DEFAULT NULL,

  `child_id` bigint DEFAULT NULL,

  `tracklogin_id` bigint DEFAULT NULL,

  PRIMARY KEY (`cmn_audit_id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=10563 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:23

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_commonclientcurrency`

--



DROP TABLE IF EXISTS `tbl_commonclientcurrency`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_commonclientcurrency` (

  `common_client_currency_id` int NOT NULL AUTO_INCREMENT,

  `currency_id` int NOT NULL COMMENT 'link to tbl_currency',

  `created_on` datetime DEFAULT NULL,

  `Approved_on` datetime DEFAULT NULL,

  `user_id` bigint NOT NULL COMMENT 'link to tbl_user',

  `is_default` tinyint DEFAULT '1',

  `is_active` tinyint NOT NULL DEFAULT '1' COMMENT '0 -inActive 1-Active',

  PRIMARY KEY (`common_client_currency_id`),

  KEY `currencyId_idx` (`currency_id`),

  KEY `userId_idx` (`user_id`),

  CONSTRAINT `currency_id` FOREIGN KEY (`currency_id`) REFERENCES `tbl_currency` (`currency_id`) ON DELETE CASCADE ON UPDATE RESTRICT,

  CONSTRAINT `TBL_CommonClientCurrency_FK` FOREIGN KEY (`user_id`) REFERENCES `tbl_userlogin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:23

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_company`

--



DROP TABLE IF EXISTS `tbl_company`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_company` (

  `company_id` int NOT NULL AUTO_INCREMENT,

  `company_name` varchar(250) NOT NULL,

  `client_id` int NOT NULL,

  `company_type_id` int NOT NULL,

  `country_id` int NOT NULL,

  `state_id` int NOT NULL,

  `city_name` varchar(500) NOT NULL,

  `phone_no` varchar(45) NOT NULL,

  `cin_no` varchar(100) DEFAULT NULL,

  `user_id` bigint NOT NULL,

  `source_name` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT 'Procuregenie',

  `source_id` bigint DEFAULT '0',

  `address_line_1` varchar(500) DEFAULT NULL,

  `address_line_2` varchar(500) DEFAULT NULL,

  `pincode_no` int DEFAULT NULL,

  PRIMARY KEY (`company_id`),

  KEY `companyTypeId_idx` (`company_type_id`),

  CONSTRAINT `companyTypeId` FOREIGN KEY (`company_type_id`) REFERENCES `tbl_companytype` (`company_type_id`) ON DELETE CASCADE ON UPDATE CASCADE

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=309 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:23

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_companytype`

--



DROP TABLE IF EXISTS `tbl_companytype`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_companytype` (

  `company_type_id` int NOT NULL AUTO_INCREMENT,

  `company_type` varchar(500) NOT NULL,

  `client_id` int NOT NULL,

  `created_on` datetime NOT NULL,

  `created_by` int NOT NULL,

  `updated_on` datetime DEFAULT NULL,

  `updated_by` int DEFAULT NULL,

  `is_active` tinyint NOT NULL DEFAULT '1',

  PRIMARY KEY (`company_type_id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:23

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_corrigendum`

--



DROP TABLE IF EXISTS `tbl_corrigendum`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_corrigendum` (

  `corrigendum_id` bigint NOT NULL AUTO_INCREMENT,

  `object_id` bigint NOT NULL,

  `remarks` varchar(1000) DEFAULT NULL,

  `corrigendum_text` varchar(1000) DEFAULT NULL,

  `c_status` int DEFAULT '0',

  `published_on` datetime DEFAULT NULL,

  `published_by` bigint DEFAULT NULL,

  `created_by` bigint DEFAULT NULL,

  `created_on` datetime DEFAULT NULL,

  `updated_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `active_status` int DEFAULT '1',

  PRIMARY KEY (`corrigendum_id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=278 DEFAULT CHARSET=utf8mb3;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:23

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_corrigendum_type`

--



DROP TABLE IF EXISTS `tbl_corrigendum_type`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_corrigendum_type` (

  `corrigendum_type_id` bigint NOT NULL AUTO_INCREMENT,

  `corrigendum_id` bigint DEFAULT NULL,

  `type_id` int DEFAULT NULL COMMENT '1 Date 2 others 3 form',

  `old_values` longtext,

  `new_values` longtext,

  `action_type` int DEFAULT '0' COMMENT '1 For add new Form\r\n2 For Cancel Form',

  `active_status` int DEFAULT '1',

  PRIMARY KEY (`corrigendum_type_id`),

  KEY `tbl_corrigendum_type_fk` (`corrigendum_id`),

  CONSTRAINT `tbl_corrigendum_type_fk` FOREIGN KEY (`corrigendum_id`) REFERENCES `tbl_corrigendum` (`corrigendum_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=268 DEFAULT CHARSET=utf8mb3;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:23

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_country`

--



DROP TABLE IF EXISTS `tbl_country`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_country` (

  `country_id` int NOT NULL AUTO_INCREMENT,

  `sortname` varchar(3) NOT NULL,

  `country_name` varchar(150) NOT NULL,

  `phone_code` int NOT NULL,

  `lang1` varchar(100) DEFAULT NULL,

  `lang2` varchar(100) DEFAULT NULL,

  `lang3` varchar(100) DEFAULT NULL,

  `lang4` varchar(100) DEFAULT NULL,

  `lang5` varchar(100) DEFAULT NULL,

  `lang6` varchar(100) DEFAULT NULL,

  `lang7` varchar(100) DEFAULT NULL,

  PRIMARY KEY (`country_id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb3;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:23

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_currency`

--



DROP TABLE IF EXISTS `tbl_currency`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_currency` (

  `currency_id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary key for master table of tbl_currency',

  `symbol` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,

  `lang1` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,

  `lang2` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,

  `lang3` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,

  `lang4` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,

  `lang5` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,

  `lang6` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,

  `lang7` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,

  `lang8` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,

  `lang9` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,

  `lang10` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,

  `lang11` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,

  `lang12` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,

  `lang13` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,

  `lang14` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,

  `lang15` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,

  PRIMARY KEY (`currency_id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COMMENT='master table for currency';

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:23

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_customeparameter`

--



DROP TABLE IF EXISTS `tbl_customeparameter`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_customeparameter` (

  `customeparameter_id` bigint NOT NULL AUTO_INCREMENT,

  `field_id` bigint NOT NULL,

  `label_name` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `default_value` varchar(10000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `is_show` int NOT NULL,

  `field_info` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `sort_order` int NOT NULL,

  `created_by` bigint NOT NULL,

  `created_on` datetime NOT NULL,

  `updated_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `active_status` int NOT NULL DEFAULT '1',

  `client_id` bigint NOT NULL,

  `module_id` int NOT NULL,

  `sub_module_id` int NOT NULL,

  `drop_down` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `is_corrigendum` tinyint DEFAULT '0',

  PRIMARY KEY (`customeparameter_id`),

  KEY `Tbl_CustomeParameter_FK` (`field_id`),

  KEY `Tbl_CustomeParameter_FK_1` (`client_id`),

  KEY `tbl_customeparameter_fk2` (`sub_module_id`),

  KEY `tbl_customeparameter_fk_3` (`module_id`),

  CONSTRAINT `Tbl_CustomeParameter_FK` FOREIGN KEY (`field_id`) REFERENCES `tbl_field` (`field_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_customeparameter_fk2` FOREIGN KEY (`sub_module_id`) REFERENCES `tbl_sub_module` (`sub_module_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `Tbl_CustomeParameter_FK_1` FOREIGN KEY (`client_id`) REFERENCES `tbl_client` (`client_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_customeparameter_fk_3` FOREIGN KEY (`module_id`) REFERENCES `tbl_module` (`module_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=24442 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:23

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_department`

--



DROP TABLE IF EXISTS `tbl_department`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_department` (

  `department_id` bigint NOT NULL AUTO_INCREMENT,

  `department_name` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `parent_dept_id` bigint NOT NULL DEFAULT '0',

  `address_line1` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `address_line2` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `state_id` bigint NOT NULL,

  `country_id` bigint NOT NULL,

  `pincode_no` int DEFAULT NULL,

  `active_status` int NOT NULL DEFAULT '1',

  `created_by` bigint NOT NULL,

  `created_on` datetime NOT NULL,

  `updated_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `client_id` bigint DEFAULT NULL,

  PRIMARY KEY (`department_id`),

  KEY `tbl_department_fk` (`client_id`),

  CONSTRAINT `tbl_department_fk` FOREIGN KEY (`client_id`) REFERENCES `tbl_client` (`client_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:23

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_designation`

--



DROP TABLE IF EXISTS `tbl_designation`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_designation` (

  `designation_id` bigint NOT NULL AUTO_INCREMENT,

  `designation_name` varchar(200) NOT NULL,

  `designation_parent_id` int NOT NULL,

  `client_id` int NOT NULL,

  `created_on` datetime NOT NULL,

  `created_by` int NOT NULL,

  `updated_on` datetime DEFAULT NULL,

  `updated_by` int DEFAULT NULL,

  `active_status` tinyint NOT NULL DEFAULT '1',

  PRIMARY KEY (`designation_id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:23

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_discussion`

--



DROP TABLE IF EXISTS `tbl_discussion`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_discussion` (

  `discussion_Id` bigint NOT NULL AUTO_INCREMENT,

  `discussion_Type_Id` int NOT NULL DEFAULT '1' COMMENT '0 : General; 1: Seek Calrification',

  `subject` varchar(100) NOT NULL,

  `client_Id` bigint NOT NULL,

  `module_Id` int NOT NULL,

  `sub_Module_Id` int NOT NULL,

  `objectID` bigint NOT NULL,

  `initiated_By` bigint NOT NULL COMMENT 'userID ',

  `usertype` smallint NOT NULL COMMENT '0-officer, 1 Bidder',

  `created_on` datetime DEFAULT NULL,

  `created_by` bigint DEFAULT NULL,

  `updated_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `active_status` int DEFAULT NULL,

  PRIMARY KEY (`discussion_Id`),

  KEY `tbl_discussion_fk` (`client_Id`),

  KEY `tbl_discussion_fk_1` (`module_Id`),

  KEY `tbl_discussion_fk_2` (`sub_Module_Id`),

  KEY `tbl_discussion_fk_3` (`discussion_Type_Id`),

  CONSTRAINT `tbl_discussion_fk` FOREIGN KEY (`client_Id`) REFERENCES `tbl_client` (`client_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_discussion_fk_1` FOREIGN KEY (`module_Id`) REFERENCES `tbl_module` (`module_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_discussion_fk_2` FOREIGN KEY (`sub_Module_Id`) REFERENCES `tbl_sub_module` (`sub_module_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_discussion_fk_3` FOREIGN KEY (`discussion_Type_Id`) REFERENCES `tbl_discussiontype` (`discussion_TypeId`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb3;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:24

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_discussiontype`

--



DROP TABLE IF EXISTS `tbl_discussiontype`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_discussiontype` (

  `discussion_TypeId` int NOT NULL AUTO_INCREMENT,

  `discussionType` varchar(100) NOT NULL,

  PRIMARY KEY (`discussion_TypeId`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:24

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_doc`

--



DROP TABLE IF EXISTS `tbl_doc`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_doc` (

  `doc_id` int NOT NULL AUTO_INCREMENT,

  `document_name` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `object_id` int NOT NULL,

  `parent_id` int NOT NULL,

  `link_id` int NOT NULL,

  `is_mandatory` tinyint NOT NULL DEFAULT '0',

  `created_on` datetime DEFAULT NULL,

  `created_by` int DEFAULT NULL,

  PRIMARY KEY (`doc_id`)

)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:24

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_document`

--



DROP TABLE IF EXISTS `tbl_document`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_document` (

  `document_id` bigint NOT NULL AUTO_INCREMENT,

  `event_id` bigint NOT NULL,

  `client_id` bigint NOT NULL,

  `doc_name` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `doc_extension` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `doc_size` bigint NOT NULL,

  `ip_address` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `uploaded_by` bigint NOT NULL,

  `uploaded_on` datetime NOT NULL,

  `activestatus` int NOT NULL,

  `link_id` bigint NOT NULL,

  `module_id` int NOT NULL,

  `submodule_id` int NOT NULL,

  `doc_description` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  PRIMARY KEY (`document_id`),

  KEY `Tbl_Document_FK_1` (`client_id`),

  CONSTRAINT `Tbl_Document_FK_1` FOREIGN KEY (`client_id`) REFERENCES `tbl_client` (`client_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=1451 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:24

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_document_briefcase`

--



DROP TABLE IF EXISTS `tbl_document_briefcase`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_document_briefcase` (

  `document_briefcase_id` bigint NOT NULL AUTO_INCREMENT,

  `client_id` bigint NOT NULL,

  `doc_name` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `doc_extension` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `doc_size` bigint NOT NULL,

  `ip_address` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `uploaded_by` bigint NOT NULL,

  `uploaded_on` datetime NOT NULL,

  `active_status` int NOT NULL,

  `bidder_id` int NOT NULL,

  `doc_type` int NOT NULL COMMENT '1 for Company registration 2 for legal documents 3 for other',

  `doc_description` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `file_name` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  PRIMARY KEY (`document_briefcase_id`),

  KEY `Tbl_Document_Briefcase_FK_1` (`client_id`),

  KEY `tbl_document_briefcase_fk` (`bidder_id`),

  CONSTRAINT `tbl_document_briefcase_fk` FOREIGN KEY (`bidder_id`) REFERENCES `tbl_bidder` (`bidder_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `Tbl_Document_Briefcase_FK_1` FOREIGN KEY (`client_id`) REFERENCES `tbl_client` (`client_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:24

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_document_briefcase_data`

--



DROP TABLE IF EXISTS `tbl_document_briefcase_data`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_document_briefcase_data` (

  `document_briefcase_data_id` bigint NOT NULL AUTO_INCREMENT,

  `document_briefcase_id` bigint DEFAULT NULL,

  `doc_folder_path` varchar(50000) NOT NULL,

  `doc_name` varchar(1000) DEFAULT NULL,

  PRIMARY KEY (`document_briefcase_data_id`),

  KEY `document_briefcase_id_FK_1` (`document_briefcase_id`),

  CONSTRAINT `tbl_document_briefcase_data_fk` FOREIGN KEY (`document_briefcase_id`) REFERENCES `tbl_document_briefcase` (`document_briefcase_id`) ON DELETE CASCADE ON UPDATE CASCADE

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COMMENT='store document path uploaded by bidder';

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:24

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_documentchecklist`

--



DROP TABLE IF EXISTS `tbl_documentchecklist`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_documentchecklist` (

  `document_checklist_id` int NOT NULL AUTO_INCREMENT,

  `object_id` bigint DEFAULT NULL COMMENT 'Form Id',

  `parent_id` bigint DEFAULT NULL COMMENT 'Tender Id or Auction Id',

  `document_name` varchar(1000) DEFAULT NULL,

  `is_mandatory` tinyint DEFAULT NULL,

  `document_status` tinyint DEFAULT NULL,

  `created_by` bigint DEFAULT NULL,

  `created_on` datetime DEFAULT NULL,

  `updated_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `client_id` bigint DEFAULT NULL,

  PRIMARY KEY (`document_checklist_id`),

  KEY `tbl_documentchecklist_fk` (`client_id`),

  CONSTRAINT `tbl_documentchecklist_fk` FOREIGN KEY (`client_id`) REFERENCES `tbl_client` (`client_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=821 DEFAULT CHARSET=latin1 COMMENT='			';

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:24

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_documentdata`

--



DROP TABLE IF EXISTS `tbl_documentdata`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_documentdata` (

  `documentdata_id` bigint NOT NULL AUTO_INCREMENT,

  `document_id` bigint NOT NULL,

  `doc_folder_path` varchar(50000) NOT NULL,

  PRIMARY KEY (`documentdata_id`),

  KEY `document_id_idx` (`document_id`),

  CONSTRAINT `document_id` FOREIGN KEY (`document_id`) REFERENCES `tbl_document` (`document_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=1194 DEFAULT CHARSET=latin1 COMMENT='store byte array of document uploaded by officer';

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:24

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_documentmaster`

--



DROP TABLE IF EXISTS `tbl_documentmaster`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_documentmaster` (

  `document_master_id` bigint NOT NULL AUTO_INCREMENT,

  `client_id` bigint NOT NULL,

  `event_id` bigint NOT NULL,

  `link_id` bigint NOT NULL,

  `doc_folder_path` varchar(1000) NOT NULL,

  `allowed_extension` varchar(1000) NOT NULL,

  `max_size_allowed` bigint NOT NULL,

  `min_size_allowed` bigint NOT NULL,

  `cstatus` int NOT NULL,

  PRIMARY KEY (`document_master_id`),

  KEY `client_id_FK` (`client_id`),

  KEY `link_id_idx` (`link_id`),

  CONSTRAINT `client_id_FK` FOREIGN KEY (`client_id`) REFERENCES `tbl_client` (`client_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `link_id` FOREIGN KEY (`link_id`) REFERENCES `tbl_link` (`link_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:24

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_dynreport`

--



DROP TABLE IF EXISTS `tbl_dynreport`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_dynreport` (

  `report_id` int NOT NULL AUTO_INCREMENT,

  `report_name` varchar(200) NOT NULL,

  `tender_id` int NOT NULL,

  `report_for` tinyint NOT NULL,

  `report_on` tinyint NOT NULL,

  `report_type` tinyint NOT NULL,

  `no_of_columns` tinyint NOT NULL,

  `created_on` datetime NOT NULL,

  `created_by` int NOT NULL,

  `updated_on` datetime DEFAULT NULL,

  `updated_by` int DEFAULT NULL,

  `is_active` tinyint NOT NULL DEFAULT '1',

  PRIMARY KEY (`report_id`)

)

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:24

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_dynreportcell`

--



DROP TABLE IF EXISTS `tbl_dynreportcell`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_dynreportcell` (

  `cell_id` int NOT NULL AUTO_INCREMENT,

  `report_id` int NOT NULL,

  `column_id` int NOT NULL,

  `column_no` tinyint NOT NULL,

  `row_no` int NOT NULL,

  `table_id` int NOT NULL,

  `row_id` int NOT NULL,

  `cell_value` varchar(3000) NOT NULL,

  `company_id` int DEFAULT NULL,

  PRIMARY KEY (`cell_id`)

)

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:24

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_dynreportcolumn`

--



DROP TABLE IF EXISTS `tbl_dynreportcolumn`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_dynreportcolumn` (

  `report_column_id` int NOT NULL AUTO_INCREMENT,

  `report_id` int NOT NULL,

  `column_no` int NOT NULL,

  `column_name` varchar(200) NOT NULL,

  `filled_by` tinyint NOT NULL,

  `gov_column` tinyint NOT NULL,

  PRIMARY KEY (`report_column_id`),

  KEY `dyn_report_id_idx` (`report_id`),

  CONSTRAINT `dyn_report_id` FOREIGN KEY (`report_id`) REFERENCES `tbl_dynreport` (`report_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:24

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_dynreportformmapping`

--



DROP TABLE IF EXISTS `tbl_dynreportformmapping`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_dynreportformmapping` (

  `form_mapping_id` int NOT NULL AUTO_INCREMENT,

  `report_id` int NOT NULL,

  `form_id` int NOT NULL,

  `table_id` int DEFAULT NULL,

  PRIMARY KEY (`form_mapping_id`),

  KEY `report_id_idx` (`report_id`),

  CONSTRAINT `report_id` FOREIGN KEY (`report_id`) REFERENCES `tbl_dynreport` (`report_id`) ON DELETE CASCADE ON UPDATE CASCADE

)

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:24

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_dynreportformula`

--



DROP TABLE IF EXISTS `tbl_dynreportformula`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_dynreportformula` (

  `formula_id` int NOT NULL AUTO_INCREMENT,

  `report_id` int NOT NULL,

  `table_id` int NOT NULL,

  `column_id` int NOT NULL,

  `formula` varchar(2000) NOT NULL,

  `display_formula` varchar(2000) NOT NULL,

  `column_formula` varchar(2000) NOT NULL,

  PRIMARY KEY (`formula_id`)

)

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:24

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_envelopemaster`

--



DROP TABLE IF EXISTS `tbl_envelopemaster`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_envelopemaster` (

  `env_id` int NOT NULL AUTO_INCREMENT,

  `envelope_name` varchar(500) NOT NULL,

  `lang1` varchar(500) DEFAULT NULL,

  `lang2` varchar(500) DEFAULT NULL,

  `lang3` varchar(500) DEFAULT NULL,

  `lang4` varchar(500) DEFAULT NULL,

  `lang5` varchar(500) DEFAULT NULL,

  `lang6` varchar(500) DEFAULT NULL,

  `lang7` varchar(500) DEFAULT NULL,

  `created_on` datetime NOT NULL,

  `created_by` int NOT NULL,

  `is_active` tinyint NOT NULL DEFAULT '0',

  PRIMARY KEY (`env_id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:25

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_eventworkflowmapping`

--



DROP TABLE IF EXISTS `tbl_eventworkflowmapping`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_eventworkflowmapping` (

  `eventworkflowmapping_id` bigint NOT NULL AUTO_INCREMENT,

  `objectid` bigint NOT NULL,

  `parentid` bigint NOT NULL,

  `module_id` int NOT NULL,

  `submodule_id` int NOT NULL,

  `workfloweventmaster_id` int NOT NULL,

  `workflowtype` int NOT NULL COMMENT '1 for predefine, 2 for any to any',

  `activestatus` int NOT NULL,

  `created_on` datetime NOT NULL,

  `created_by` bigint NOT NULL,

  PRIMARY KEY (`eventworkflowmapping_id`),

  KEY `workfloweventmaster_id_idx` (`workfloweventmaster_id`),

  CONSTRAINT `workfloweven_id` FOREIGN KEY (`workfloweventmaster_id`) REFERENCES `tbl_workfloweventmaster` (`workfloweventmaster_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1 COMMENT='maintain workflowtype of event';

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:25

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_field`

--



DROP TABLE IF EXISTS `tbl_field`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_field` (

  `field_id` bigint NOT NULL AUTO_INCREMENT,

  `field_name` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `module_id` int NOT NULL,

  `is_active` int NOT NULL,

  `lang1` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `lang2` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `lang3` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `lang4` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `lang5` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `sub_module_id` int NOT NULL,

  `default_value` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `field_label` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `field_values` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `field_type` int NOT NULL,

  `sort_order` int DEFAULT NULL,

  `is_corrigendum` tinyint DEFAULT '0',

  `section_id` bigint DEFAULT NULL,

  `is_mandatory` int DEFAULT '1',

  PRIMARY KEY (`field_id`),

  KEY `Tbl_Field_FK` (`module_id`),

  KEY `tbl_field_fk1` (`sub_module_id`),

  CONSTRAINT `Tbl_Field_FK` FOREIGN KEY (`module_id`) REFERENCES `tbl_module` (`module_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_field_fk1` FOREIGN KEY (`sub_module_id`) REFERENCES `tbl_sub_module` (`sub_module_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=863 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:25

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_finalsubmission`

--



DROP TABLE IF EXISTS `tbl_finalsubmission`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_finalsubmission` (

  `final_submission_id` int NOT NULL AUTO_INCREMENT,

  `tender_id` int DEFAULT NULL,

  `company_id` int DEFAULT NULL,

  `bidder_id` bigint DEFAULT NULL,

  `user_detail_id` int DEFAULT NULL,

  `ip_address` varchar(50) DEFAULT NULL,

  `created_by` int DEFAULT NULL,

  `created_on` datetime DEFAULT NULL,

  `is_active` tinyint DEFAULT NULL,

  PRIMARY KEY (`final_submission_id`),

  KEY `tender_table_idx` (`tender_id`),

  KEY `company_table_fk_idx` (`company_id`),

  KEY `user_table_fk_idx` (`bidder_id`),

  CONSTRAINT `company_table_fk` FOREIGN KEY (`company_id`) REFERENCES `tbl_company` (`company_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tender_fk_table` FOREIGN KEY (`tender_id`) REFERENCES `tbl_tender` (`tender_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `user_table_fk` FOREIGN KEY (`bidder_id`) REFERENCES `tbl_userlogin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=441 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:25

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_formmaster`

--



DROP TABLE IF EXISTS `tbl_formmaster`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_formmaster` (

  `form_id` int NOT NULL AUTO_INCREMENT,

  `client_id` bigint NOT NULL,

  `form_name` varchar(200) NOT NULL,

  `form_header` varchar(1000) DEFAULT NULL,

  `form_footer` varchar(1000) DEFAULT NULL,

  `form_type` int DEFAULT NULL,

  `created_by` int DEFAULT NULL,

  `created_on` datetime NOT NULL,

  `updated_by` int DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `published_by` int DEFAULT NULL,

  `published_on` datetime DEFAULT NULL,

  `cancelled_by` int DEFAULT NULL,

  `cancelled_on` datetime DEFAULT NULL,

  `active_status` int NOT NULL DEFAULT '0',

  `is_mandatory` int DEFAULT NULL,

  `sort_order` int DEFAULT NULL,

  PRIMARY KEY (`form_id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1 COMMENT='Form Master';

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:25

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_formulamaster`

--



DROP TABLE IF EXISTS `tbl_formulamaster`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_formulamaster` (

  `formula_id` int NOT NULL AUTO_INCREMENT,

  `table_id` int DEFAULT NULL,

  `form_id` int DEFAULT NULL,

  `column_id` bigint DEFAULT NULL,

  `column_no` int NOT NULL,

  `cell_id` bigint DEFAULT NULL,

  `cell_no` int NOT NULL,

  `formula_type` tinyint NOT NULL,

  `formula` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `show_formula` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `col_formula` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  PRIMARY KEY (`formula_id`),

  KEY `tbl_formulamaster_fk` (`form_id`),

  KEY `tbl_formulamaster_fk_1` (`table_id`),

  KEY `tbl_formulamaster_fk_2` (`column_id`),

  KEY `tbl_formulamaster_fk_3` (`cell_id`),

  CONSTRAINT `tbl_formulamaster_fk` FOREIGN KEY (`cell_id`) REFERENCES `tbl_cellmaster` (`cell_id`) ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `tbl_formulamaster_fk_1` FOREIGN KEY (`column_id`) REFERENCES `tbl_columnmaster` (`column_id`) ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `tbl_formulamaster_fk_2` FOREIGN KEY (`table_id`) REFERENCES `tbl_tablemaster` (`table_id`) ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `tbl_formulamaster_fk_3` FOREIGN KEY (`form_id`) REFERENCES `tbl_formmaster` (`form_id`) ON DELETE CASCADE ON UPDATE CASCADE

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:25

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_globalbiddetail`

--



DROP TABLE IF EXISTS `tbl_globalbiddetail`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_globalbiddetail` (

  `global_bid_id` bigint NOT NULL AUTO_INCREMENT,

  `object_id` bigint DEFAULT '0',

  `parent_id` bigint DEFAULT '0',

  `form_id` bigint NOT NULL,

  `table_id` bigint NOT NULL,

  `column_id` bigint DEFAULT NULL,

  `bidder_id` bigint NOT NULL,

  `cell_id` bigint NOT NULL,

  `cell_value` varchar(1000) DEFAULT NULL,

  `row_id` bigint DEFAULT '0',

  `is_event_for` int DEFAULT '0' COMMENT '1 For Tender, 2 For Negotiation',

  PRIMARY KEY (`global_bid_id`),

  KEY `fk_globalbiddetail_bid_id` (`global_bid_id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=1340 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:25

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_item`

--



DROP TABLE IF EXISTS `tbl_item`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_item` (

  `id` bigint NOT NULL AUTO_INCREMENT,

  `item_name` varchar(200) DEFAULT NULL,

  `unit` varchar(4) DEFAULT NULL,

  KEY `id` (`id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:25

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_l1h1reportcell`

--



DROP TABLE IF EXISTS `tbl_l1h1reportcell`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_l1h1reportcell` (

  `cellId` bigint NOT NULL,

  `reportId` bigint NOT NULL,

  `columnId` bigint NOT NULL,

  `columnNo` bigint NOT NULL,

  `rowno` smallint NOT NULL,

  `tableid` smallint NOT NULL,

  `rowid` smallint NOT NULL,

  `cellvalue` varchar(255) NOT NULL,

  `companyId` bigint NOT NULL,

  PRIMARY KEY (`cellId`)

);

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:25

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_l1h1reportcolumn`

--



DROP TABLE IF EXISTS `tbl_l1h1reportcolumn`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_l1h1reportcolumn` (

  `columnId` bigint NOT NULL AUTO_INCREMENT,

  `reportId` bigint NOT NULL,

  `columnNo` int NOT NULL,

  `columnName` varchar(200) NOT NULL,

  `filledBy` int NOT NULL,

  `isGovColumn` int NOT NULL,

  PRIMARY KEY (`columnId`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=763 DEFAULT CHARSET=utf8mb3;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:25

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_l1h1reportformmap`

--



DROP TABLE IF EXISTS `tbl_l1h1reportformmap`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_l1h1reportformmap` (

  `reportFormMapId` bigint NOT NULL AUTO_INCREMENT,

  `reportId` bigint NOT NULL,

  `formId` int NOT NULL,

  `tableId` int NOT NULL,

  PRIMARY KEY (`reportFormMapId`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=939 DEFAULT CHARSET=utf8mb3;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:25

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_l1h1reportformula`

--



DROP TABLE IF EXISTS `tbl_l1h1reportformula`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_l1h1reportformula` (

  `formulaId` bigint NOT NULL AUTO_INCREMENT,

  `reportId` bigint NOT NULL,

  `columnId` bigint NOT NULL,

  `tableId` bigint NOT NULL,

  `colFormula` varchar(255) NOT NULL COMMENT 'Actual formula which run at the time of execution',

  `displayFormula` varchar(255) NOT NULL COMMENT 'Display on UI',

  `formula` varchar(255) NOT NULL COMMENT 'Formula',

  PRIMARY KEY (`formulaId`)

);

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:25

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_l1h1reportmstr`

--



DROP TABLE IF EXISTS `tbl_l1h1reportmstr`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_l1h1reportmstr` (

  `reportId` bigint NOT NULL AUTO_INCREMENT,

  `tenderId` bigint NOT NULL,

  `reportName` varchar(255) NOT NULL,

  `reportHeader` varchar(255) NOT NULL,

  `reportFooter` varchar(255) NOT NULL,

  `noofcols` int NOT NULL,

  `reportFor` smallint NOT NULL COMMENT '(1=Item, 2=Lot 3=GT)',

  `reportVerient` smallint NOT NULL COMMENT '(1=Buy-Lowest , 2=Sell-Highest)',

  `reportOn` smallint NOT NULL COMMENT '(1=Unit, 2=Total Rate)',

  `reportType` smallint NOT NULL COMMENT '(1=System Gen, 2=Manual)',

  `createdBy` bigint NOT NULL,

  `createdOn` datetime NOT NULL,

  `updated_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `active_status` tinyint NOT NULL,

  PRIMARY KEY (`reportId`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb3;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:25

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_languages`

--



DROP TABLE IF EXISTS `tbl_languages`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_languages` (

  `language_id` int NOT NULL AUTO_INCREMENT,

  `language_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `is_active` int NOT NULL,

  `language_key` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  PRIMARY KEY (`language_id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:25

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_link`

--



DROP TABLE IF EXISTS `tbl_link`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_link` (

  `link_id` bigint NOT NULL AUTO_INCREMENT,

  `link_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `link_url` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `module_id` int NOT NULL,

  `tab_mapping_id` bigint NOT NULL,

  `notification_on` tinyint NOT NULL DEFAULT '0',

  `assign_rights` tinyint NOT NULL DEFAULT '0',

  `sort_order` tinyint NOT NULL DEFAULT '0',

  `active_status` int NOT NULL DEFAULT '1',

  `lang1` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `lang2` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `lang3` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `lang4` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `lang5` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `lang6` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `lang7` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `created_on` datetime NOT NULL,

  `created_by` bigint NOT NULL DEFAULT '0',

  `link_icon_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `is_popup` int NOT NULL DEFAULT '0',

  `link_code` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `validation_msg` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,

  PRIMARY KEY (`link_id`),

  KEY `tbl_link_fk` (`module_id`),

  KEY `tbl_link_fk_1` (`tab_mapping_id`),

  CONSTRAINT `tbl_link_fk` FOREIGN KEY (`module_id`) REFERENCES `tbl_module` (`module_id`) ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `tbl_link_fk_1` FOREIGN KEY (`tab_mapping_id`) REFERENCES `tbl_link_submodule_mapping` (`mapping_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:25

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_link_submodule_mapping`

--



DROP TABLE IF EXISTS `tbl_link_submodule_mapping`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_link_submodule_mapping` (

  `mapping_id` bigint NOT NULL AUTO_INCREMENT,

  `tab_id` int NOT NULL,

  `sub_module_id` int NOT NULL,

  `tab_name` varchar(500) DEFAULT NULL,

  `module_id` int DEFAULT NULL,

  `sort_order` int NOT NULL,

  PRIMARY KEY (`mapping_id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:26

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_linklist`

--



DROP TABLE IF EXISTS `tbl_linklist`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_linklist` (

  `link_list_id` bigint NOT NULL AUTO_INCREMENT,

  `link_id` bigint DEFAULT NULL,

  `sort_order` bigint DEFAULT NULL,

  `tab_mapping_id` bigint DEFAULT NULL,

  `objectId` bigint DEFAULT NULL,

  `parentId` bigint DEFAULT NULL,

  `validation_msg` varchar(2000) DEFAULT NULL,

  `link_url` varchar(2000) DEFAULT NULL,

  `isDisplayLink` int DEFAULT NULL,

  KEY `id` (`link_list_id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:26

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_login_info`

--



DROP TABLE IF EXISTS `tbl_login_info`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_login_info` (

  `login_info_id` bigint NOT NULL AUTO_INCREMENT,

  `user_id` bigint DEFAULT NULL,

  `ip_address` varchar(100) DEFAULT NULL,

  `last_login` datetime DEFAULT NULL,

  `os_name` varchar(100) DEFAULT NULL,

  `created_by` bigint NOT NULL,

  `created_on` datetime NOT NULL,

  `updated_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `active_status` tinyint NOT NULL DEFAULT '1',

  PRIMARY KEY (`login_info_id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=16467 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:26

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_marqueecontent`

--



DROP TABLE IF EXISTS `tbl_marqueecontent`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_marqueecontent` (

  `marquee_content_id` bigint NOT NULL AUTO_INCREMENT,

  `obect_id` bigint NOT NULL,

  `marquee_text` varchar(5000) NOT NULL,

  `start_date` datetime NOT NULL,

  `end_date` datetime NOT NULL,

  `created_on` datetime NOT NULL,

  `created_by` bigint NOT NULL,

  `module_id` int NOT NULL,

  `active_status` tinyint NOT NULL DEFAULT '0' COMMENT '0 -inActive 1-Active',

  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0 -pending 1-Approved 2-delete',

  PRIMARY KEY (`marquee_content_id`),

  KEY `userId_idx` (`created_by`),

  KEY `moduleId_idx` (`module_id`),

  CONSTRAINT `tbl_marqueecontent_FK` FOREIGN KEY (`module_id`) REFERENCES `tbl_module` (`module_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:26

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_module`

--



DROP TABLE IF EXISTS `tbl_module`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_module` (

  `module_id` int NOT NULL AUTO_INCREMENT,

  `module_name` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `parent_module_id` int DEFAULT NULL,

  `is_active` int NOT NULL,

  `lang2` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `lang3` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `lang4` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `lang5` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `lang6` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `lang7` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `lang1` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  PRIMARY KEY (`module_id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:26

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_negotation_status`

--



DROP TABLE IF EXISTS `tbl_negotation_status`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_negotation_status` (

  `nego_status_id` bigint NOT NULL AUTO_INCREMENT,

  `nego_end_date` datetime DEFAULT NULL,

  `remarks` varchar(1000) DEFAULT NULL,

  `module_id` int DEFAULT NULL,

  `object_id` bigint DEFAULT NULL,

  `active_status` int DEFAULT NULL,

  `status` int DEFAULT NULL,

  PRIMARY KEY (`nego_status_id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=897 DEFAULT CHARSET=utf8mb3;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:26

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_negotiation`

--



DROP TABLE IF EXISTS `tbl_negotiation`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_negotiation` (

  `negotiation_id` bigint NOT NULL AUTO_INCREMENT,

  `object_id` bigint DEFAULT NULL,

  `bidder_id` int DEFAULT NULL,

  `company_id` int DEFAULT NULL,

  `officer_id` bigint DEFAULT NULL,

  `negotiation_on` int DEFAULT NULL COMMENT '0 both 1 tech 2 price bid',

  `officer_remarks` varchar(1000) DEFAULT NULL,

  `bidder_remarks` varchar(1000) DEFAULT NULL,

  `bidder_bid_remarks` varchar(1000) DEFAULT NULL,

  `link_id` bigint DEFAULT NULL,

  `module_id` int DEFAULT NULL,

  `c_status` int DEFAULT NULL,

  `b_status` int DEFAULT NULL COMMENT '1 Accept 0 Reject',

  `end_date` datetime DEFAULT NULL,

  `round_no` int DEFAULT NULL,

  `created_by` bigint DEFAULT NULL,

  `created_on` datetime DEFAULT NULL,

  `updated_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `active_status` int DEFAULT NULL,

  `parent_negotiation_id` bigint DEFAULT '0',

  `officer_status_remarks` varchar(1000) DEFAULT NULL COMMENT 'officer accept reject remarks',

  PRIMARY KEY (`negotiation_id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb3;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:26

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_negotiationbiddetail`

--



DROP TABLE IF EXISTS `tbl_negotiationbiddetail`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_negotiationbiddetail` (

  `bid_detail_id` bigint NOT NULL AUTO_INCREMENT,

  `nego_detail_id` bigint NOT NULL,

  `cell_id` bigint NOT NULL,

  `cell_value` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,

  `row_id` int NOT NULL,

  PRIMARY KEY (`bid_detail_id`),

  KEY `nego_detail_id_fk` (`nego_detail_id`),

  CONSTRAINT `nego_detail_id_fk` FOREIGN KEY (`nego_detail_id`) REFERENCES `tbl_negotiationdetails` (`nego_detail_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=540 DEFAULT CHARSET=utf8mb3;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:26

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_negotiationdetails`

--



DROP TABLE IF EXISTS `tbl_negotiationdetails`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_negotiationdetails` (

  `nego_detail_id` bigint NOT NULL AUTO_INCREMENT,

  `negotiation_id` bigint NOT NULL,

  `form_id` bigint DEFAULT NULL,

  `table_id` bigint DEFAULT NULL,

  `envelope_id` bigint DEFAULT NULL,

  `row_id` bigint DEFAULT NULL,

  PRIMARY KEY (`nego_detail_id`),

  KEY `tbl_negotiationdetails_fk` (`negotiation_id`),

  CONSTRAINT `tbl_negotiationdetails_fk` FOREIGN KEY (`negotiation_id`) REFERENCES `tbl_negotiation` (`negotiation_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=316 DEFAULT CHARSET=utf8mb3;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:26

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_nfa`

--



DROP TABLE IF EXISTS `tbl_nfa`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_nfa` (

  `nfa_id` bigint NOT NULL AUTO_INCREMENT,

  `buyer_user_id` bigint DEFAULT NULL,

  `event_id` bigint DEFAULT NULL,

  `module_id` int DEFAULT NULL,

  `ref_no` varchar(500) DEFAULT NULL,

  `client_company_name` varchar(500) DEFAULT NULL,

  `location` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,

  `package` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,

  `subject` varchar(500) DEFAULT NULL,

  `invited_vendors` int DEFAULT NULL,

  `participate_vendors` int DEFAULT NULL,

  `negotiation` int DEFAULT '0',

  `order_details` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,

  `order_on_supplier` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,

  `total_contract_value` bigint DEFAULT NULL,

  `applicable_taxes_and_duties` varchar(500) DEFAULT NULL,

  `basis_in_words` varchar(500) DEFAULT NULL,

  `special_note` varchar(800) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,

  `delivery_period` varchar(500) DEFAULT NULL,

  `warranty_period` varchar(500) DEFAULT NULL,

  `payment_terms` varchar(500) DEFAULT NULL,

  `liquidated_damages` varchar(500) DEFAULT NULL,

  `securities` varchar(500) DEFAULT NULL,

  `deviation_standard_terms` varchar(500) DEFAULT NULL,

  `process_followed` varchar(500) DEFAULT NULL,

  `pr_no` bigint DEFAULT NULL,

  `created_by` bigint DEFAULT NULL,

  `created_on` datetime DEFAULT NULL,

  PRIMARY KEY (`nfa_id`),

  KEY `tbl_nfa_fk_1` (`buyer_user_id`),

  KEY `tbl_nfa_fk_2` (`module_id`),

  CONSTRAINT `tbl_nfa_fk_1` FOREIGN KEY (`buyer_user_id`) REFERENCES `tbl_userlogin` (`id`),

  CONSTRAINT `tbl_nfa_fk_2` FOREIGN KEY (`module_id`) REFERENCES `tbl_module` (`module_id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:26

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_nfa_approval`

--



DROP TABLE IF EXISTS `tbl_nfa_approval`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_nfa_approval` (

  `nfa_approval_id` bigint NOT NULL AUTO_INCREMENT,

  `nfa_id` bigint DEFAULT NULL,

  `user_id` bigint DEFAULT NULL,

  `remark` varchar(500) DEFAULT NULL,

  `action` int DEFAULT '0' COMMENT '0=pending, 1=approve, 2=reject',

  `action_on` datetime DEFAULT NULL,

  PRIMARY KEY (`nfa_approval_id`),

  KEY `tbl_nfa_approval_fk_1` (`nfa_id`),

  KEY `tbl_nfa_approval_fk_2` (`user_id`),

  CONSTRAINT `tbl_nfa_approval_fk_1` FOREIGN KEY (`nfa_id`) REFERENCES `tbl_nfa` (`nfa_id`),

  CONSTRAINT `tbl_nfa_approval_fk_2` FOREIGN KEY (`user_id`) REFERENCES `tbl_userlogin` (`id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:26

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_nfa_recommendation`

--



DROP TABLE IF EXISTS `tbl_nfa_recommendation`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_nfa_recommendation` (

  `nfa_rec_id` bigint NOT NULL AUTO_INCREMENT,

  `nfa_id` bigint DEFAULT NULL,

  `lowest_offer` varchar(250) DEFAULT NULL,

  `lowest_offer_doc_name` varchar(100) DEFAULT NULL,

  `lowest_offer_doc_extension` varchar(100) DEFAULT NULL,

  `lowest_offer_doc_path` varchar(700) DEFAULT NULL,

  `lowest_offer_doc_size` bigint DEFAULT NULL,

  `repeat_rate_order` varchar(250) DEFAULT NULL,

  `repeat_order_doc_name` varchar(100) DEFAULT NULL,

  `repeat_order_doc_extension` varchar(100) DEFAULT NULL,

  `repeat_order_doc_path` varchar(700) DEFAULT NULL,

  `repeat_order_doc_size` bigint DEFAULT NULL,

  `rate_contract` varchar(250) DEFAULT NULL,

  `rate_contract_doc_name` varchar(100) DEFAULT NULL,

  `rate_contract_doc_extension` varchar(100) DEFAULT NULL,

  `rate_contract_doc_path` varchar(700) DEFAULT NULL,

  `rate_contract_doc_size` bigint DEFAULT NULL,

  `emergency_purchase` varchar(250) DEFAULT NULL,

  `emergency_purchase_doc_name` varchar(100) DEFAULT NULL,

  `emergency_purchase_doc_extension` varchar(100) DEFAULT NULL,

  `emergency_purchase_doc_path` varchar(700) DEFAULT NULL,

  `emergency_purchase_doc_size` bigint DEFAULT NULL,

  PRIMARY KEY (`nfa_rec_id`),

  KEY `tbl_nfa_recommendation_fk` (`nfa_id`),

  CONSTRAINT `tbl_nfa_recommendation_fk` FOREIGN KEY (`nfa_id`) REFERENCES `tbl_nfa` (`nfa_id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:26

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_notification`

--



DROP TABLE IF EXISTS `tbl_notification`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_notification` (

  `notification_Id` bigint NOT NULL AUTO_INCREMENT,

  `client_id` bigint NOT NULL,

  `notification_type_id` smallint NOT NULL COMMENT '1 :Mail, 2 :Messagebox, 3 :SMS',

  `notification_from` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,

  `notification_to` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,

  `notification_cc` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,

  `notification_bcc` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,

  `has_attachement` bit(1) DEFAULT NULL,

  `attachement_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,

  `notification_subject` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,

  `notification_content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,

  `notification_sent_date` timestamp NOT NULL,

  `notification_status` smallint NOT NULL DEFAULT '0',

  `notification_remarks` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,

  `notification_type` varchar(60) NOT NULL,

  `to_user_id` bigint NOT NULL DEFAULT '0',

  `to_bidder_id` bigint NOT NULL DEFAULT '0',

  `event_id` bigint NOT NULL DEFAULT '0',

  `event_type` varchar(60) NOT NULL,

  PRIMARY KEY (`notification_Id`),

  KEY `tbl_Notification_fk` (`client_id`) USING BTREE,

  CONSTRAINT `tbl_Notification_fk` FOREIGN KEY (`client_id`) REFERENCES `tbl_client` (`client_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=3106 DEFAULT CHARSET=utf8mb3;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:26

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_notificationconfiguration`

--



DROP TABLE IF EXISTS `tbl_notificationconfiguration`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_notificationconfiguration` (

  `configuration_id` int NOT NULL AUTO_INCREMENT,

  `description` varchar(100) NOT NULL,

  `active_status` tinyint DEFAULT '1',

  `module_id` int DEFAULT NULL,

  PRIMARY KEY (`configuration_id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:26

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_officer`

--



DROP TABLE IF EXISTS `tbl_officer`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_officer` (

  `officer_id` bigint NOT NULL AUTO_INCREMENT,

  `designation_id` bigint NOT NULL,

  `user_id` bigint NOT NULL,

  `officer_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `mobile_no` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `city_name` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `state_id` bigint NOT NULL,

  `country_id` bigint DEFAULT NULL,

  `address_line1` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `address_line2` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `active_status` int NOT NULL DEFAULT '0',

  `created_by` bigint NOT NULL,

  `created_on` datetime NOT NULL,

  `updated_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `officer_email_id` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `client_id` bigint NOT NULL,

  `dashboard` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'PO',

  PRIMARY KEY (`officer_id`),

  KEY `tbl_officer_fk_1` (`designation_id`),

  KEY `tbl_officer_fk_2` (`user_id`),

  KEY `tbl_officer_fk_3` (`client_id`),

  CONSTRAINT `tbl_officer_fk_1` FOREIGN KEY (`designation_id`) REFERENCES `tbl_designation` (`designation_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_officer_fk_2` FOREIGN KEY (`user_id`) REFERENCES `tbl_userlogin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_officer_fk_3` FOREIGN KEY (`client_id`) REFERENCES `tbl_client` (`client_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:27

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_officer_department`

--



DROP TABLE IF EXISTS `tbl_officer_department`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_officer_department` (

  `officer_dept_id` bigint NOT NULL AUTO_INCREMENT,

  `dept_id` bigint NOT NULL,

  `officer_id` bigint NOT NULL,

  `created_by` bigint NOT NULL,

  `created_on` datetime NOT NULL,

  `updated_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `active_status` int NOT NULL,

  `user_id` bigint NOT NULL,

  PRIMARY KEY (`officer_dept_id`),

  KEY `tbl_officer_department_fk` (`dept_id`),

  KEY `tbl_officer_department_fk_1` (`officer_id`),

  KEY `tbl_officer_department_fk_2` (`user_id`),

  CONSTRAINT `tbl_officer_department_fk` FOREIGN KEY (`dept_id`) REFERENCES `tbl_department` (`department_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_officer_department_fk_1` FOREIGN KEY (`officer_id`) REFERENCES `tbl_officer` (`officer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_officer_department_fk_2` FOREIGN KEY (`user_id`) REFERENCES `tbl_userlogin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=729 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:27

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_order`

--



DROP TABLE IF EXISTS `tbl_order`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_order` (

  `id` bigint NOT NULL AUTO_INCREMENT,

  `client_id` bigint DEFAULT NULL,

  `order_no` varchar(200) DEFAULT NULL,

  `order_status` int DEFAULT NULL COMMENT '0 current, 1 placed, 2 completed, 3 canceled',

  `order_date` datetime DEFAULT NULL,

  `close_date` datetime DEFAULT NULL,

  KEY `id` (`id`),

  KEY `client_id` (`client_id`),

  CONSTRAINT `tbl_order_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `tbl_client` (`client_id`),

  CONSTRAINT `tbl_order_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `tbl_client` (`client_id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:27

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_order_items`

--



DROP TABLE IF EXISTS `tbl_order_items`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_order_items` (

  `id` bigint NOT NULL AUTO_INCREMENT,

  `order_id` bigint DEFAULT NULL,

  `item_id` bigint DEFAULT NULL,

  `quantity` bigint DEFAULT NULL,

  `unit_price` double DEFAULT NULL,

  `item_name` varchar(200) DEFAULT NULL,

  `unit` varchar(50) DEFAULT NULL,

  KEY `id` (`id`),

  KEY `order_id` (`order_id`),

  KEY `item_id` (`item_id`),

  CONSTRAINT `tbl_order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`id`),

  CONSTRAINT `tbl_order_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `tbl_item` (`id`),

  CONSTRAINT `tbl_order_items_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`id`),

  CONSTRAINT `tbl_order_items_ibfk_4` FOREIGN KEY (`item_id`) REFERENCES `tbl_item` (`id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:27

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_process`

--



DROP TABLE IF EXISTS `tbl_process`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_process` (

  `process_id` int NOT NULL AUTO_INCREMENT,

  `process_name` varchar(200) DEFAULT NULL,

  `table_name` varchar(200) DEFAULT NULL,

  PRIMARY KEY (`process_id`)

)

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:27

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_purchase_requisition`

--



DROP TABLE IF EXISTS `tbl_purchase_requisition`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_purchase_requisition` (

  `pr_id` bigint NOT NULL AUTO_INCREMENT,

  `doc_number_pr_no` bigint NOT NULL,

  `doc_series` int NOT NULL,

  `doc_entry_number` int NOT NULL,

  `posting_date` datetime NOT NULL,

  `valid_until` datetime DEFAULT NULL,

  `doc_date` datetime NOT NULL,

  `request_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,

  `requester_code` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,

  `requester_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,

  `required_date` datetime NOT NULL,

  `department` varchar(250) DEFAULT NULL,

  `branch` int NOT NULL,

  `remarks` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,

  `item_service_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,

  `pr_line_number` int NOT NULL,

  `item_no` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,

  `item_name` varchar(800) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,

  `uom_name` varchar(250) DEFAULT NULL,

  `uom_code` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,

  `row_required_date` datetime NOT NULL,

  `required_quantity` bigint NOT NULL,

  `tax_code` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,

  `g_l_account` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,

  `project` varchar(250) DEFAULT NULL,

  `whse` varchar(250) DEFAULT NULL,

  `location` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,

  `preferred_vendor` varchar(250) DEFAULT NULL,

  `hsn` varchar(250) DEFAULT NULL,

  `sac` varchar(250) DEFAULT NULL,

  `created_at` datetime DEFAULT NULL,

  `created_by` bigint DEFAULT NULL,

  `active_status` int DEFAULT '0',

  PRIMARY KEY (`pr_id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:27

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_question`

--



DROP TABLE IF EXISTS `tbl_question`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_question` (

  `question_id` bigint NOT NULL AUTO_INCREMENT,

  `discussion_id` bigint NOT NULL,

  `questiontext` varchar(100) NOT NULL,

  `user_id` bigint NOT NULL,

  `created_on` datetime NOT NULL,

  `created_by` bigint DEFAULT NULL,

  `updated_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `active_status` int DEFAULT NULL,

  `isinitial` smallint NOT NULL DEFAULT '0',

  PRIMARY KEY (`question_id`),

  KEY `tbl_question_fk` (`user_id`),

  KEY `tbl_question_fk_1` (`discussion_id`),

  CONSTRAINT `tbl_question_fk` FOREIGN KEY (`user_id`) REFERENCES `tbl_userlogin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_question_fk_1` FOREIGN KEY (`discussion_id`) REFERENCES `tbl_discussion` (`discussion_Id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb3;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:27

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_resultsharing`

--



DROP TABLE IF EXISTS `tbl_resultsharing`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_resultsharing` (

  `result_sharing_id` bigint NOT NULL AUTO_INCREMENT,

  `tender_id` int NOT NULL,

  `show_result_status` smallint NOT NULL COMMENT '0 - No, 1 - All bidder, 2 for qualified bidder, 3 for participate bidder',

  `show_l1h1_report` tinyint DEFAULT '0',

  `created_by` bigint NOT NULL,

  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,

  `is_active` tinyint DEFAULT '0',

  PRIMARY KEY (`result_sharing_id`),

  KEY `tbl_resultsharing_tenderId_FK` (`tender_id`),

  CONSTRAINT `tbl_resultsharing_tenderId_FK` FOREIGN KEY (`tender_id`) REFERENCES `tbl_tender` (`tender_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:27

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_resultsharingdetails`

--



DROP TABLE IF EXISTS `tbl_resultsharingdetails`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_resultsharingdetails` (

  `result_detail_id` bigint NOT NULL AUTO_INCREMENT,

  `result_sharing_id` bigint DEFAULT NULL,

  `envelope_id` bigint DEFAULT NULL,

  `show_individual_report` tinyint DEFAULT '0',

  `show_comparative_report` tinyint DEFAULT '0',

  `is_visible` tinyint DEFAULT '0',

  `created_by` bigint DEFAULT NULL,

  `Created_on` datetime DEFAULT CURRENT_TIMESTAMP,

  PRIMARY KEY (`result_detail_id`),

  KEY `result_sharing_id_FK` (`result_sharing_id`),

  CONSTRAINT `result_sharing_id_FK` FOREIGN KEY (`result_sharing_id`) REFERENCES `tbl_resultsharing` (`result_sharing_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb3;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:27

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_role`

--



DROP TABLE IF EXISTS `tbl_role`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_role` (

  `name` varchar(50) NOT NULL,

  PRIMARY KEY (`name`)

)

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:27

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_rule`

--



DROP TABLE IF EXISTS `tbl_rule`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_rule` (

  `rule_id` bigint NOT NULL AUTO_INCREMENT,

  `rule_name` varchar(100) DEFAULT NULL,

  `active_status` int DEFAULT NULL,

  `parent_rule_id` bigint DEFAULT '0',

  PRIMARY KEY (`rule_id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:27

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_rule_link`

--



DROP TABLE IF EXISTS `tbl_rule_link`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_rule_link` (

  `rule_link_id` bigint NOT NULL AUTO_INCREMENT,

  `link_id` bigint NOT NULL,

  `rule_id` bigint NOT NULL,

  `active_status` int DEFAULT NULL,

  `sort_order` int DEFAULT NULL,

  `parent_rule_id` bigint NOT NULL DEFAULT '0',

  `sub_module_id` int DEFAULT NULL,

  `parent_link_id` bigint DEFAULT '0',

  `rule_status` int DEFAULT '1',

  `condition` varchar(500) DEFAULT NULL,

  `is_break_rule` tinyint DEFAULT '0',

  PRIMARY KEY (`rule_link_id`),

  KEY `tbl_rule_link_fk` (`link_id`),

  KEY `tbl_rule_link_fk_1` (`rule_id`),

  CONSTRAINT `tbl_rule_link_fk` FOREIGN KEY (`link_id`) REFERENCES `tbl_link` (`link_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_rule_link_fk_1` FOREIGN KEY (`rule_id`) REFERENCES `tbl_rule` (`rule_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:27

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_section`

--



DROP TABLE IF EXISTS `tbl_section`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_section` (

  `section_id` bigint NOT NULL AUTO_INCREMENT,

  `section_name` varchar(500) DEFAULT NULL,

  `active_status` int DEFAULT NULL,

  `sub_module_id` bigint DEFAULT NULL,

  PRIMARY KEY (`section_id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:27

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_session`

--



DROP TABLE IF EXISTS `tbl_session`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_session` (

  `sid` varchar(36) NOT NULL,

  `expires` datetime DEFAULT NULL,

  `data` text,

  `createdAt` datetime NOT NULL,

  `updatedAt` datetime NOT NULL,

  PRIMARY KEY (`sid`)

);

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:27

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_sharereport`

--



DROP TABLE IF EXISTS `tbl_sharereport`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_sharereport` (

  `sharereport_id` int NOT NULL AUTO_INCREMENT,

  `tender_id` int NOT NULL,

  `show_lihireport` tinyint NOT NULL,

  `bidder_sharereport_type` tinyint NOT NULL,

  `created_on` datetime NOT NULL,

  `created_by` int NOT NULL,

  `is_active` tinyint NOT NULL DEFAULT '1',

  PRIMARY KEY (`sharereport_id`)

)

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:28

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_sharereportdetail`

--



DROP TABLE IF EXISTS `tbl_sharereportdetail`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_sharereportdetail` (

  `sharereportdetail_id` int NOT NULL AUTO_INCREMENT,

  `sharereport_id` int NOT NULL,

  `form_id` int NOT NULL,

  `show_individual_report` tinyint NOT NULL,

  `show_comparative_report` tinyint NOT NULL,

  `created_on` datetime NOT NULL,

  `created_by` int NOT NULL,

  PRIMARY KEY (`sharereportdetail_id`),

  KEY `sharereport_id_idx` (`sharereport_id`),

  CONSTRAINT `sharereport_id` FOREIGN KEY (`sharereport_id`) REFERENCES `tbl_sharereport` (`sharereport_id`) ON DELETE CASCADE ON UPDATE CASCADE

)

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:28

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_state`

--



DROP TABLE IF EXISTS `tbl_state`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_state` (

  `state_id` int NOT NULL AUTO_INCREMENT,

  `state_name` varchar(30) NOT NULL,

  `country_id` int NOT NULL DEFAULT '1',

  `lang1` varchar(100) DEFAULT NULL,

  `lang2` varchar(100) DEFAULT NULL,

  `lang3` varchar(100) DEFAULT NULL,

  `lang4` varchar(100) DEFAULT NULL,

  `lang5` varchar(100) DEFAULT NULL,

  `lang6` varchar(100) DEFAULT NULL,

  `lang7` varchar(100) DEFAULT NULL,

  PRIMARY KEY (`state_id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=5089 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:28

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_status`

--



DROP TABLE IF EXISTS `tbl_status`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_status` (

  `status` bigint NOT NULL AUTO_INCREMENT,

  `status_name` varchar(100) NOT NULL,

  PRIMARY KEY (`status`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:28

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_status_value`

--



DROP TABLE IF EXISTS `tbl_status_value`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_status_value` (

  `status_values_id` bigint NOT NULL AUTO_INCREMENT,

  `status` bigint NOT NULL,

  `status_id` int NOT NULL,

  `status_name` varchar(100) NOT NULL,

  `status_icon` varchar(100) DEFAULT NULL,

  `is_default` int NOT NULL DEFAULT '0',

  PRIMARY KEY (`status_values_id`),

  KEY `tbl_status_value_fk` (`status`),

  CONSTRAINT `tbl_status_value_fk` FOREIGN KEY (`status`) REFERENCES `tbl_status` (`status`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:28

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_sub_module`

--



DROP TABLE IF EXISTS `tbl_sub_module`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_sub_module` (

  `sub_module_id` int NOT NULL AUTO_INCREMENT,

  `module_id` int NOT NULL,

  `sub_module_name` varchar(500) NOT NULL,

  `active_status` int NOT NULL,

  PRIMARY KEY (`sub_module_id`),

  KEY `tbl_sub_module_fk` (`module_id`),

  CONSTRAINT `tbl_sub_module_fk` FOREIGN KEY (`module_id`) REFERENCES `tbl_module` (`module_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:28

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_tablemaster`

--



DROP TABLE IF EXISTS `tbl_tablemaster`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_tablemaster` (

  `table_id` int NOT NULL AUTO_INCREMENT,

  `form_id` int NOT NULL,

  `table_name` varchar(200) DEFAULT NULL,

  `table_header` varchar(1000) DEFAULT NULL,

  `table_footer` varchar(1000) DEFAULT NULL,

  `sort_order` int DEFAULT NULL,

  `created_by` int DEFAULT NULL,

  `created_on` datetime DEFAULT NULL,

  `updated_by` int DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `active_status` int DEFAULT NULL,

  `has_gt_row` tinyint DEFAULT NULL,

  `is_mandatory` tinyint NOT NULL DEFAULT '0',

  PRIMARY KEY (`table_id`),

  KEY `form_id_idx` (`form_id`),

  CONSTRAINT `form_id` FOREIGN KEY (`form_id`) REFERENCES `tbl_formmaster` (`form_id`) ON DELETE CASCADE ON UPDATE CASCADE

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:28

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_tender`

--



DROP TABLE IF EXISTS `tbl_tender`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_tender` (

  `tender_id` int NOT NULL AUTO_INCREMENT,

  `tender_no` varchar(2000) NOT NULL,

  `tender_brief` varchar(2000) NOT NULL,

  `tender_description` varchar(2000) NOT NULL,

  `department_id` bigint NOT NULL,

  `subdepartment_id` int NOT NULL,

  `officer_id` bigint NOT NULL,

  `eventrequest_type` int NOT NULL DEFAULT '0' COMMENT '1-Request for proposal(RFP)\r\n2-Request for Quoation(RFQ)',

  `evaluation_type` tinyint NOT NULL DEFAULT '0' COMMENT '1-Grand total wise event\r\n2-Item wise event\r\n3-Lot wise',

  `bidding_type` tinyint NOT NULL DEFAULT '0' COMMENT '1-Domestic\n2-Global',

  `currency` int NOT NULL,

  `evaluation_process` tinyint NOT NULL DEFAULT '0' COMMENT '1-Single stage\n2-Multiple stage',

  `bidding_access` tinyint NOT NULL DEFAULT '0' COMMENT '2-Limited\r\n\r\n1-Open\r\n\r\n3-Single\r\n',

  `bidding_varient` tinyint NOT NULL DEFAULT '0' COMMENT '1-Purchase \n2-Sell',

  `contract_type` tinyint NOT NULL DEFAULT '0',

  `bid_withdrawal` tinyint NOT NULL DEFAULT '0' COMMENT '0-Not applicable\n1-Applicable',

  `submission_startdate` datetime DEFAULT NULL,

  `submission_enddate` datetime DEFAULT NULL,

  `opening_date` datetime DEFAULT NULL,

  `prebid_meeting` tinyint NOT NULL DEFAULT '0' COMMENT '0-Not applicable\n1-Applicable',

  `prebid_startdate` datetime DEFAULT NULL,

  `prebid_enddate` datetime DEFAULT NULL,

  `project_duration` bigint NOT NULL DEFAULT '0',

  `event_value` bigint NOT NULL,

  `workflow_required` tinyint NOT NULL DEFAULT '0' COMMENT '0-Not applicable\n1-Applicable',

  `event_status` int NOT NULL DEFAULT '0' COMMENT 'update status on the basis of action performed in event\n',

  `created_on` datetime NOT NULL,

  `created_by` bigint NOT NULL,

  `updated_on` datetime DEFAULT NULL,

  `updated_by` bigint DEFAULT NULL,

  `published_on` datetime DEFAULT NULL,

  `published_by` bigint DEFAULT NULL,

  `cancelled_on` datetime DEFAULT NULL,

  `cancelled_by` bigint DEFAULT NULL,

  `cancelled_remarks` varchar(50000) DEFAULT NULL,

  `active_status` tinyint NOT NULL DEFAULT '0',

  `client_id` bigint NOT NULL,

  `assignuser_id` bigint NOT NULL DEFAULT '0',

  `sub_module_id` int NOT NULL,

  `map_bidder_type` int DEFAULT NULL,

  `is_delegated` int DEFAULT '0',

  `item_selection_required` tinyint NOT NULL DEFAULT '0' COMMENT '1 For Required 0 Not Required',

  `unspsc_catgory` varchar(5000) DEFAULT NULL,

  `ref_event_id` bigint DEFAULT NULL,

  PRIMARY KEY (`tender_id`),

  KEY `user_id_idx` (`officer_id`),

  KEY `dept_id` (`department_id`),

  KEY `tbl_tender_fk` (`client_id`),

  CONSTRAINT `department_id` FOREIGN KEY (`department_id`) REFERENCES `tbl_department` (`department_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_tender_fk` FOREIGN KEY (`client_id`) REFERENCES `tbl_client` (`client_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_tender_fk_1` FOREIGN KEY (`officer_id`) REFERENCES `tbl_officer` (`officer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=1263 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:28

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_tender_audit`

--



DROP TABLE IF EXISTS `tbl_tender_audit`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_tender_audit` (

  `ten_audit_id` bigint NOT NULL AUTO_INCREMENT,

  `audit_name` varchar(1000) DEFAULT NULL,

  `request_parm` longtext,

  `created_on` datetime DEFAULT NULL,

  `created_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `updated_by` bigint DEFAULT NULL,

  `active_status` varchar(100) DEFAULT '1',

  `ip_address` varchar(100) DEFAULT NULL,

  `tender_id` bigint DEFAULT NULL,

  `child_id` bigint DEFAULT NULL,

  `tracklogin_id` bigint DEFAULT NULL,

  PRIMARY KEY (`ten_audit_id`)

);

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:28

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_tender_delegation_history`

--



DROP TABLE IF EXISTS `tbl_tender_delegation_history`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_tender_delegation_history` (

  `delegation_id` bigint NOT NULL AUTO_INCREMENT,

  `tender_id` int DEFAULT NULL,

  `delegation_from` bigint DEFAULT NULL,

  `delegation_to` bigint DEFAULT NULL,

  `created_on` datetime NOT NULL,

  `created_by` bigint NOT NULL,

  `updated_on` datetime DEFAULT NULL,

  `updated_by` bigint DEFAULT NULL,

  `active_status` int DEFAULT NULL,

  `remarks` varchar(1000) DEFAULT NULL,

  `department_from` bigint DEFAULT NULL,

  `department_to` bigint DEFAULT NULL,

  PRIMARY KEY (`delegation_id`),

  KEY `tbl_tender_delegation_history_fk` (`tender_id`),

  CONSTRAINT `tbl_tender_delegation_history_fk` FOREIGN KEY (`tender_id`) REFERENCES `tbl_tender` (`tender_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:28

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_tender_evl_hst`

--



DROP TABLE IF EXISTS `tbl_tender_evl_hst`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_tender_evl_hst` (

  `evl_hst_id` bigint NOT NULL AUTO_INCREMENT,

  `tender_id` int NOT NULL,

  `officer_id` bigint DEFAULT NULL,

  `reset_evl_date` datetime NOT NULL,

  `remarks` varchar(1000) DEFAULT NULL,

  `created_on` datetime DEFAULT NULL,

  `created_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `updated_by` bigint DEFAULT NULL,

  `active_status` int DEFAULT '1',

  PRIMARY KEY (`evl_hst_id`),

  KEY `tbl_tender_evl_hst_fk` (`officer_id`),

  KEY `tbl_tender_evl_hst_fk_1` (`tender_id`),

  CONSTRAINT `tbl_tender_evl_hst_fk` FOREIGN KEY (`officer_id`) REFERENCES `tbl_officer` (`officer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_tender_evl_hst_fk_1` FOREIGN KEY (`tender_id`) REFERENCES `tbl_tender` (`tender_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb3;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:28

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_tender_open_biddetail`

--



DROP TABLE IF EXISTS `tbl_tender_open_biddetail`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_tender_open_biddetail` (

  `open_bid_detail_id` bigint NOT NULL AUTO_INCREMENT,

  `form_id` bigint NOT NULL,

  `table_id` bigint NOT NULL,

  `bidder_id` bigint NOT NULL,

  `cell_id` bigint NOT NULL,

  `cell_value` varchar(1000) DEFAULT NULL,

  `affected_cell_value` varchar(1000) DEFAULT NULL,

  PRIMARY KEY (`open_bid_detail_id`),

  KEY `fk_tenderbiddetail_bid_id` (`form_id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=11692 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:28

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_tenderbid`

--



DROP TABLE IF EXISTS `tbl_tenderbid`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_tenderbid` (

  `bid_id` bigint NOT NULL AUTO_INCREMENT,

  `tender_id` int NOT NULL,

  `envelope_id` int NOT NULL,

  `form_id` int NOT NULL,

  `company_id` int NOT NULL,

  `bidder_id` bigint NOT NULL,

  `user_detail_id` bigint NOT NULL,

  `bid_price` decimal(30,0) DEFAULT NULL,

  `ip_address` varchar(100) NOT NULL,

  `created_by` int NOT NULL,

  `created_on` datetime DEFAULT CURRENT_TIMESTAMP,

  `cstatus` tinyint DEFAULT '0',

  PRIMARY KEY (`bid_id`),

  KEY `tender_fk_idx` (`tender_id`),

  KEY `envelope_fk_idx` (`envelope_id`),

  KEY `form_ids_idx` (`form_id`),

  KEY `company_id_idx` (`company_id`),

  KEY `company_ids_fk_idx` (`company_id`),

  KEY `bidder_ids_fk_idx` (`bidder_id`),

  CONSTRAINT `bidder_ids_fk` FOREIGN KEY (`bidder_id`) REFERENCES `tbl_userlogin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `company_ids_fk` FOREIGN KEY (`company_id`) REFERENCES `tbl_company` (`company_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `envelope_fk` FOREIGN KEY (`envelope_id`) REFERENCES `tbl_tenderenvelope` (`envelope_id`) ON DELETE RESTRICT ON UPDATE CASCADE,

  CONSTRAINT `form_ids` FOREIGN KEY (`form_id`) REFERENCES `tbl_tenderform` (`form_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tender_bid_fk` FOREIGN KEY (`tender_id`) REFERENCES `tbl_tender` (`tender_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=1633 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:28

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_tenderbidconfirmation`

--



DROP TABLE IF EXISTS `tbl_tenderbidconfirmation`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_tenderbidconfirmation` (

  `bid_confirmation_id` int NOT NULL AUTO_INCREMENT,

  `tender_id` int DEFAULT NULL,

  `company_id` int DEFAULT NULL,

  `bidder_id` bigint DEFAULT NULL,

  `client_bid_term_id` int DEFAULT NULL,

  `user_detail_id` int DEFAULT NULL,

  `ip_appress` varchar(50) DEFAULT NULL,

  `created_on` datetime DEFAULT NULL,

  `created_by` int DEFAULT NULL,

  PRIMARY KEY (`bid_confirmation_id`),

  KEY `tender_id_fk_idx` (`tender_id`),

  KEY `company_id_fk_idx` (`company_id`),

  KEY `user_id_fk_idx` (`bidder_id`),

  CONSTRAINT `company_id_fk` FOREIGN KEY (`company_id`) REFERENCES `tbl_company` (`company_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tender_id_fk` FOREIGN KEY (`tender_id`) REFERENCES `tbl_tender` (`tender_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `user_id_fk` FOREIGN KEY (`bidder_id`) REFERENCES `tbl_userlogins` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:28

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_tenderbidconfirmhistory`

--



DROP TABLE IF EXISTS `tbl_tenderbidconfirmhistory`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_tenderbidconfirmhistory` (

  `bid_confirm_history_id` int NOT NULL AUTO_INCREMENT,

  `tender_id` int DEFAULT NULL,

  `company_id` int DEFAULT NULL,

  `bidder_id` bigint DEFAULT NULL,

  `client_bid_term_id` int DEFAULT NULL,

  `user_detail_id` int DEFAULT NULL,

  `ip_appress` varchar(50) DEFAULT NULL,

  `created_on` datetime DEFAULT NULL,

  `created_by` int DEFAULT NULL,

  PRIMARY KEY (`bid_confirm_history_id`),

  KEY `tender_id_fk_idx` (`tender_id`),

  KEY `company_fk_idx` (`company_id`),

  KEY `user_fk_idx` (`bidder_id`),

  CONSTRAINT `company_fk` FOREIGN KEY (`company_id`) REFERENCES `tbl_company` (`company_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tender_fk` FOREIGN KEY (`tender_id`) REFERENCES `tbl_tender` (`tender_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `user_fk` FOREIGN KEY (`bidder_id`) REFERENCES `tbl_userlogins` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:28

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_tenderbidderagree`

--



DROP TABLE IF EXISTS `tbl_tenderbidderagree`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_tenderbidderagree` (

  `tenderbidderagree_id` bigint NOT NULL AUTO_INCREMENT,

  `tender_id` bigint NOT NULL,

  `bidder_id` int NOT NULL,

  `is_regreated` tinyint NOT NULL,

  `tender_terms_id` bigint NOT NULL,

  `created_on` datetime NOT NULL,

  `created_by` bigint NOT NULL,

  `updated_on` datetime DEFAULT NULL,

  `updated_by` bigint DEFAULT NULL,

  `active_status` int NOT NULL,

  `currency_id` int DEFAULT NULL,

  `ip_address` varchar(100) DEFAULT NULL,

  PRIMARY KEY (`tenderbidderagree_id`),

  KEY `tbl_tenderbidderagree_fk` (`bidder_id`),

  CONSTRAINT `tbl_tenderbidderagree_fk` FOREIGN KEY (`bidder_id`) REFERENCES `tbl_bidder` (`bidder_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=957 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:29

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_tenderbiddermapping`

--



DROP TABLE IF EXISTS `tbl_tenderbiddermapping`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_tenderbiddermapping` (

  `biddermap_id` int NOT NULL AUTO_INCREMENT,

  `tenderevent_id` int NOT NULL,

  `bidder_id` bigint NOT NULL,

  `biddercompany_id` int NOT NULL,

  `userdetail_id` int DEFAULT NULL,

  `created_on` datetime NOT NULL,

  `created_by` int NOT NULL,

  `load_factor` int DEFAULT '0',

  PRIMARY KEY (`biddermap_id`),

  KEY `bidder_id_idx` (`bidder_id`),

  KEY `company_id_idx` (`biddercompany_id`),

  KEY `tenderevent_id_idx` (`tenderevent_id`),

  CONSTRAINT `biddercompany_id` FOREIGN KEY (`biddercompany_id`) REFERENCES `tbl_company` (`company_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_tenderbiddermapping_fk` FOREIGN KEY (`bidder_id`) REFERENCES `tbl_userlogin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `tenderevent_id` FOREIGN KEY (`tenderevent_id`) REFERENCES `tbl_tender` (`tender_id`) ON DELETE CASCADE ON UPDATE CASCADE

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=558 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:29

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_tenderbiddetail`

--



DROP TABLE IF EXISTS `tbl_tenderbiddetail`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_tenderbiddetail` (

  `bid_detail_id` bigint NOT NULL AUTO_INCREMENT,

  `form_id` bigint NOT NULL,

  `table_id` bigint NOT NULL,

  `bidder_id` bigint NOT NULL,

  `cell_id` bigint NOT NULL,

  `cell_value` varchar(10000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,

  `row_id` int NOT NULL DEFAULT '0',

  `affected_cell_value` varchar(10000) DEFAULT NULL,

  PRIMARY KEY (`bid_detail_id`),

  KEY `fk_tenderbiddetail_bid_id` (`form_id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=11943 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:29

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_tenderbiditemselection`

--



DROP TABLE IF EXISTS `tbl_tenderbiditemselection`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_tenderbiditemselection` (

  `item_selection_id` bigint NOT NULL AUTO_INCREMENT,

  `tender_id` int NOT NULL,

  `bidder_id` bigint NOT NULL,

  `form_id` int NOT NULL,

  `table_id` int NOT NULL,

  `row_id` bigint NOT NULL,

  `created_by` bigint NOT NULL,

  `created_on` datetime DEFAULT CURRENT_TIMESTAMP,

  PRIMARY KEY (`item_selection_id`),

  KEY `item_selection_bidder_id_fk` (`bidder_id`),

  KEY `item_selection_tender_id_id_fk` (`tender_id`),

  KEY `item_selection_form_id` (`form_id`),

  KEY `item_selection_table_id_id_fk` (`table_id`),

  CONSTRAINT `item_selection_bidder_id_fk` FOREIGN KEY (`bidder_id`) REFERENCES `tbl_userlogin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `item_selection_form_id` FOREIGN KEY (`form_id`) REFERENCES `tbl_tenderform` (`form_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `item_selection_table_id_id_fk` FOREIGN KEY (`table_id`) REFERENCES `tbl_tendertable` (`table_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `item_selection_tender_id_id_fk` FOREIGN KEY (`tender_id`) REFERENCES `tbl_tender` (`tender_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=2821 DEFAULT CHARSET=utf8mb3;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:29

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_tenderbidregression`

--



DROP TABLE IF EXISTS `tbl_tenderbidregression`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_tenderbidregression` (

  `bid_regression_id` int NOT NULL AUTO_INCREMENT,

  `tender_id` int DEFAULT NULL,

  `company_id` int DEFAULT NULL,

  `bidder_id` bigint DEFAULT NULL,

  `user_detail_id` int DEFAULT NULL,

  `ip_address` varchar(50) DEFAULT NULL,

  `created_by` int DEFAULT NULL,

  `created_on` datetime DEFAULT NULL,

  `updated_by` int DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `remarks` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,

  `is_active` tinyint DEFAULT NULL,

  PRIMARY KEY (`bid_regression_id`),

  KEY `tender_table_fkk_idx` (`tender_id`),

  KEY `company_table_fkk_idx` (`company_id`),

  KEY `user_table_fk_idx` (`bidder_id`),

  CONSTRAINT `bidder_user_id` FOREIGN KEY (`bidder_id`) REFERENCES `tbl_userlogins` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `company_table_fkk` FOREIGN KEY (`company_id`) REFERENCES `tbl_company` (`company_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tender_table_fkk` FOREIGN KEY (`tender_id`) REFERENCES `tbl_tender` (`tender_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:29

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_tendercell`

--



DROP TABLE IF EXISTS `tbl_tendercell`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_tendercell` (

  `cell_id` bigint NOT NULL AUTO_INCREMENT,

  `form_id` int DEFAULT NULL,

  `table_id` int DEFAULT NULL,

  `column_id` int DEFAULT NULL,

  `row_id` int DEFAULT NULL,

  `cell_value` varchar(20000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `cell_no` int DEFAULT NULL,

  `data_type` tinyint DEFAULT NULL,

  `object_id` int DEFAULT NULL,

  `is_gt_cell` int DEFAULT '0',

  PRIMARY KEY (`cell_id`),

  KEY `cell_form_id_idx` (`form_id`),

  KEY `cell_table_id_idx` (`table_id`),

  KEY `cell_column_id_idx` (`column_id`),

  CONSTRAINT `tbl_tendercell_fk` FOREIGN KEY (`column_id`) REFERENCES `tbl_tendercolumn` (`column_id`) ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `tbl_tendercell_fk_1` FOREIGN KEY (`table_id`) REFERENCES `tbl_tendertable` (`table_id`) ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `tbl_tendercell_fk_2` FOREIGN KEY (`form_id`) REFERENCES `tbl_tenderform` (`form_id`) ON DELETE CASCADE ON UPDATE CASCADE

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=42207 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='Tender Cell';

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:29

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_tendercolumn`

--



DROP TABLE IF EXISTS `tbl_tendercolumn`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_tendercolumn` (

  `column_id` int NOT NULL AUTO_INCREMENT,

  `form_id` int DEFAULT NULL,

  `table_id` int DEFAULT NULL,

  `column_no` int DEFAULT NULL,

  `column_type_id` int DEFAULT NULL,

  `column_header` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `filled_by` int DEFAULT NULL,

  `data_type` int DEFAULT NULL,

  `sort_order` int DEFAULT NULL,

  `is_shown` int DEFAULT NULL,

  `is_taxable` tinyint DEFAULT NULL,

  `is_currency_conv_req` tinyint DEFAULT NULL,

  PRIMARY KEY (`column_id`),

  KEY `form_id_idx` (`form_id`),

  KEY `column_table_id_idx` (`table_id`),

  KEY `tbl_tendercolumn_fk` (`column_type_id`),

  CONSTRAINT `tbl_tendercolumn_fk` FOREIGN KEY (`table_id`) REFERENCES `tbl_tendertable` (`table_id`) ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `tbl_tendercolumn_fk_1` FOREIGN KEY (`form_id`) REFERENCES `tbl_tenderform` (`form_id`) ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `tbl_tendercolumn_fk_2` FOREIGN KEY (`column_type_id`) REFERENCES `tbl_columntype` (`column_type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=10194 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:29

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_tendercurrency`

--



DROP TABLE IF EXISTS `tbl_tendercurrency`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_tendercurrency` (

  `tender_currency_id` bigint NOT NULL AUTO_INCREMENT,

  `tender_id` int NOT NULL,

  `currency_id` int NOT NULL,

  `created_on` datetime NOT NULL,

  `created_by` int NOT NULL,

  `active_status` tinyint NOT NULL DEFAULT '1',

  `exchange_rate` decimal(20,2) DEFAULT NULL,

  `is_updated` int DEFAULT '0',

  `updated_on` datetime DEFAULT NULL,

  `updated_by` int DEFAULT '0',

  PRIMARY KEY (`tender_currency_id`),

  KEY `tender_id_idx` (`tender_id`),

  KEY `tbl_tendercurrency_fk` (`currency_id`),

  CONSTRAINT `event_id` FOREIGN KEY (`tender_id`) REFERENCES `tbl_tender` (`tender_id`) ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `tbl_tendercurrency_fk` FOREIGN KEY (`currency_id`) REFERENCES `tbl_currency` (`currency_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=1348 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:29

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_tenderenvelope`

--



DROP TABLE IF EXISTS `tbl_tenderenvelope`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_tenderenvelope` (

  `envelope_id` int NOT NULL AUTO_INCREMENT,

  `tender_id` int NOT NULL,

  `env_id` int NOT NULL,

  `envelope_name` varchar(500) NOT NULL,

  `opening_date` datetime DEFAULT NULL,

  `opened_status` tinyint NOT NULL DEFAULT '0',

  `evaluated_status` tinyint NOT NULL DEFAULT '0',

  `sort_order` tinyint NOT NULL DEFAULT '0',

  `min_opening_member` tinyint NOT NULL DEFAULT '0',

  `min_evaluation_member` tinyint NOT NULL DEFAULT '0',

  `min_tech_form_required` tinyint NOT NULL DEFAULT '0',

  `bid_open_date` datetime DEFAULT NULL,

  `bid_open_by` bigint DEFAULT NULL,

  `created_on` datetime NOT NULL,

  `created_by` bigint NOT NULL,

  `published_on` datetime DEFAULT NULL,

  `published_by` bigint DEFAULT NULL,

  `remark` varchar(250) DEFAULT NULL,

  `active_status` int NOT NULL DEFAULT '0',

  `updated_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  PRIMARY KEY (`envelope_id`),

  KEY `tender_id_idx` (`tender_id`),

  KEY `envelope_id_idx` (`env_id`),

  CONSTRAINT `tbl_tenderenvelope_fk` FOREIGN KEY (`env_id`) REFERENCES `tbl_envelopemaster` (`env_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tender_id` FOREIGN KEY (`tender_id`) REFERENCES `tbl_tender` (`tender_id`) ON DELETE CASCADE ON UPDATE CASCADE

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=5801 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:29

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_tenderevolutioncommitee`

--



DROP TABLE IF EXISTS `tbl_tenderevolutioncommitee`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_tenderevolutioncommitee` (

  `tec_id` bigint NOT NULL AUTO_INCREMENT,

  `tender_id` bigint NOT NULL,

  `company_id` bigint NOT NULL,

  `committee_id` bigint NOT NULL,

  `dept_id` bigint DEFAULT NULL,

  `officerid` bigint DEFAULT NULL,

  `bidder_id` bigint DEFAULT NULL,

  `c_status` int DEFAULT '1',

  `is_active` int DEFAULT NULL,

  `created_by` bigint DEFAULT NULL,

  `created_on` datetime NOT NULL,

  `updated_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  PRIMARY KEY (`tec_id`)

)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:29

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_tenderform`

--



DROP TABLE IF EXISTS `tbl_tenderform`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_tenderform` (

  `form_id` int NOT NULL AUTO_INCREMENT,

  `tender_id` int NOT NULL,

  `envelope_id` int NOT NULL,

  `form_name` varchar(200) NOT NULL,

  `form_header` varchar(1000) DEFAULT NULL,

  `form_footer` varchar(1000) DEFAULT NULL,

  `form_type` int NOT NULL,

  `is_mandatory` tinyint DEFAULT '0',

  `is_evaluationrequired` int DEFAULT '0',

  `is_standardform` tinyint DEFAULT '0',

  `is_documentrequired` tinyint DEFAULT '0',

  `is_adminform` tinyint DEFAULT '0',

  `parent_form_id` int DEFAULT NULL,

  `created_by` int DEFAULT NULL,

  `created_on` datetime DEFAULT NULL,

  `published_by` int DEFAULT NULL,

  `published_on` datetime DEFAULT NULL,

  `cancelled_by` int DEFAULT NULL,

  `cancelled_on` datetime DEFAULT NULL,

  `updated_by` int DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `remarks` varchar(255) DEFAULT NULL,

  `sort_order` int DEFAULT NULL,

  `active_status` tinyint DEFAULT NULL,

  `form_status` tinyint DEFAULT '0',

  PRIMARY KEY (`form_id`),

  KEY `tbl_tenderform_fk` (`tender_id`),

  CONSTRAINT `tbl_tenderform_fk` FOREIGN KEY (`tender_id`) REFERENCES `tbl_tender` (`tender_id`) ON DELETE CASCADE ON UPDATE CASCADE

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=1518 DEFAULT CHARSET=latin1 COMMENT='Tender Form';

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:29

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_tenderformula`

--



DROP TABLE IF EXISTS `tbl_tenderformula`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_tenderformula` (

  `formula_id` int NOT NULL AUTO_INCREMENT,

  `table_id` int DEFAULT NULL,

  `form_id` int DEFAULT NULL,

  `column_id` int DEFAULT NULL,

  `column_no` int NOT NULL,

  `cell_id` bigint DEFAULT NULL,

  `cell_no` int NOT NULL,

  `formula_type` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `formula` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `show_formula` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `col_formula` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  PRIMARY KEY (`formula_id`),

  KEY `tbl_tenderformula_fk` (`form_id`),

  KEY `tbl_tenderformula_fk_1` (`table_id`),

  KEY `tbl_tenderformula_fk_2` (`column_id`),

  KEY `tbl_tenderformula_fk_3` (`cell_id`),

  CONSTRAINT `tbl_tenderformula_fk` FOREIGN KEY (`form_id`) REFERENCES `tbl_tenderform` (`form_id`) ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `tbl_tenderformula_fk_1` FOREIGN KEY (`table_id`) REFERENCES `tbl_tendertable` (`table_id`) ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `tbl_tenderformula_fk_2` FOREIGN KEY (`column_id`) REFERENCES `tbl_tendercolumn` (`column_id`) ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `tbl_tenderformula_fk_3` FOREIGN KEY (`cell_id`) REFERENCES `tbl_tendercell` (`cell_id`) ON DELETE CASCADE ON UPDATE CASCADE

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=915 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:29

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_tendergovcolumn`

--



DROP TABLE IF EXISTS `tbl_tendergovcolumn`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_tendergovcolumn` (

  `TenderGovColumn_id` int NOT NULL AUTO_INCREMENT,

  `table_id` int NOT NULL,

  `form_id` int NOT NULL,

  `column_id` int NOT NULL,

  `columnType_id` int NOT NULL,

  `column_no` int NOT NULL,

  PRIMARY KEY (`TenderGovColumn_id`)

)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:29

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_tenderitembiddermap`

--



DROP TABLE IF EXISTS `tbl_tenderitembiddermap`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_tenderitembiddermap` (

  `itembiddermap_id` int NOT NULL AUTO_INCREMENT,

  `bidder_id` bigint DEFAULT NULL,

  `company_id` int DEFAULT NULL,

  `userdetail_id` bigint DEFAULT NULL,

  `tender_id` int DEFAULT NULL,

  `form_id` int DEFAULT NULL,

  `table_id` int DEFAULT NULL,

  `row_id` int DEFAULT NULL,

  `active_status` int DEFAULT NULL,

  `created_by` bigint DEFAULT NULL,

  `created_on` datetime DEFAULT NULL,

  `updated_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `load_factor` int DEFAULT '0',

  PRIMARY KEY (`itembiddermap_id`),

  KEY `tbl_tenderitembiddermap_fk_1` (`company_id`),

  KEY `tbl_tenderitembiddermap_fk_2` (`tender_id`),

  KEY `tbl_tenderitembiddermap_fk_3` (`form_id`),

  KEY `tbl_tenderitembiddermap_fk_4` (`table_id`),

  KEY `tbl_tenderitembiddermap_fk` (`bidder_id`),

  CONSTRAINT `tbl_tenderitembiddermap_fk` FOREIGN KEY (`bidder_id`) REFERENCES `tbl_userlogin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_tenderitembiddermap_fk_1` FOREIGN KEY (`company_id`) REFERENCES `tbl_company` (`company_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_tenderitembiddermap_fk_2` FOREIGN KEY (`tender_id`) REFERENCES `tbl_tender` (`tender_id`) ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `tbl_tenderitembiddermap_fk_3` FOREIGN KEY (`form_id`) REFERENCES `tbl_tenderform` (`form_id`) ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `tbl_tenderitembiddermap_fk_4` FOREIGN KEY (`table_id`) REFERENCES `tbl_tendertable` (`table_id`) ON DELETE CASCADE ON UPDATE CASCADE

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=4432 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:29

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_tenderlotwisebiddermap`

--



DROP TABLE IF EXISTS `tbl_tenderlotwisebiddermap`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_tenderlotwisebiddermap` (

  `lotbiddermap_id` bigint NOT NULL AUTO_INCREMENT,

  `bidder_id` bigint DEFAULT NULL,

  `company_id` int DEFAULT NULL,

  `userdetail_id` bigint DEFAULT NULL,

  `tender_id` int DEFAULT NULL,

  `form_id` int DEFAULT NULL,

  `table_id` int DEFAULT NULL,

  `active_status` int DEFAULT NULL,

  `created_by` bigint DEFAULT NULL,

  `created_on` datetime DEFAULT NULL,

  `updated_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `load_factor` int DEFAULT '0',

  PRIMARY KEY (`lotbiddermap_id`),

  KEY `tenderlotwisebiddermap_fk` (`company_id`),

  KEY `tenderlotwisebiddermap_fk_1` (`bidder_id`),

  KEY `tenderlotwisebiddermap_fk_2` (`tender_id`),

  KEY `tenderlotwisebiddermap_fk_3` (`form_id`),

  KEY `tenderlotwisebiddermap_fk_4` (`table_id`),

  CONSTRAINT `tenderlotwisebiddermap_fk` FOREIGN KEY (`company_id`) REFERENCES `tbl_company` (`company_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tenderlotwisebiddermap_fk_1` FOREIGN KEY (`bidder_id`) REFERENCES `tbl_userlogin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tenderlotwisebiddermap_fk_2` FOREIGN KEY (`tender_id`) REFERENCES `tbl_tender` (`tender_id`) ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `tenderlotwisebiddermap_fk_3` FOREIGN KEY (`form_id`) REFERENCES `tbl_tenderform` (`form_id`) ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `tenderlotwisebiddermap_fk_4` FOREIGN KEY (`table_id`) REFERENCES `tbl_tendertable` (`table_id`) ON DELETE CASCADE ON UPDATE CASCADE

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:30

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_tendermatrixjson`

--



DROP TABLE IF EXISTS `tbl_tendermatrixjson`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_tendermatrixjson` (

  `matrix_json_id` int NOT NULL,

  `tender_id` int NOT NULL,

  `form_id` int NOT NULL,

  `table_id` int NOT NULL,

  `json_data` varchar(50000) NOT NULL,

  PRIMARY KEY (`matrix_json_id`),

  KEY `tender_id_fk_idx` (`tender_id`),

  KEY `form_id_fk_idx` (`form_id`),

  KEY `table_id_fk_idx` (`table_id`),

  CONSTRAINT `formid_fk` FOREIGN KEY (`form_id`) REFERENCES `tbl_tenderform` (`form_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tableid_fk` FOREIGN KEY (`table_id`) REFERENCES `tbl_tendertable` (`table_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tenderid_fk` FOREIGN KEY (`tender_id`) REFERENCES `tbl_tender` (`tender_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:30

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_tenderopen`

--



DROP TABLE IF EXISTS `tbl_tenderopen`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_tenderopen` (

  `tender_open_id` int NOT NULL AUTO_INCREMENT,

  `tender_id` int DEFAULT NULL,

  `envelope_id` int DEFAULT NULL,

  `form_id` int DEFAULT NULL,

  `company_id` int DEFAULT NULL,

  `bidder_id` bigint DEFAULT NULL,

  `ip_address` varchar(50) DEFAULT NULL,

  `created_by` int DEFAULT NULL,

  `created_on` datetime DEFAULT NULL,

  `user_detail_id` int DEFAULT NULL,

  `bid_price` decimal(30,0) DEFAULT NULL,

  `cstatus` tinyint DEFAULT NULL,

  PRIMARY KEY (`tender_open_id`),

  KEY `tender_fk_idx` (`tender_id`),

  KEY `envelope_table_idx` (`envelope_id`),

  KEY `form_table_idx` (`form_id`),

  KEY `company_table_idx` (`company_id`),

  KEY `user_table_idx` (`bidder_id`),

  CONSTRAINT `company_table` FOREIGN KEY (`company_id`) REFERENCES `tbl_company` (`company_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `envelope_table` FOREIGN KEY (`envelope_id`) REFERENCES `tbl_tenderenvelope` (`envelope_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `form_table` FOREIGN KEY (`form_id`) REFERENCES `tbl_tenderform` (`form_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tender_table` FOREIGN KEY (`tender_id`) REFERENCES `tbl_tender` (`tender_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=1412 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:30

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_tenderseekclarification`

--



DROP TABLE IF EXISTS `tbl_tenderseekclarification`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_tenderseekclarification` (

  `seek_id` bigint NOT NULL AUTO_INCREMENT,

  `event_id` bigint NOT NULL,

  `bidder_id` bigint NOT NULL,

  `officer_query_que` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `query_date` datetime NOT NULL,

  `parent_seek_id` bigint DEFAULT NULL,

  `response_query_ans` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `response_date` datetime NOT NULL,

  `c_status` int NOT NULL,

  `created_by` bigint NOT NULL,

  `created_on` datetime NOT NULL,

  `updated_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `is_active` tinyint DEFAULT NULL,

  `doc_id` bigint DEFAULT NULL,

  `env_id` bigint NOT NULL,

  PRIMARY KEY (`seek_id`)

)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:30

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_tendertable`

--



DROP TABLE IF EXISTS `tbl_tendertable`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_tendertable` (

  `table_id` int NOT NULL AUTO_INCREMENT,

  `form_id` int DEFAULT NULL,

  `table_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `table_header` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `table_footer` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `no_of_rows` int DEFAULT '0',

  `no_of_cols` int DEFAULT '0',

  `is_mandatory` tinyint DEFAULT '0',

  `has_gt_row` tinyint DEFAULT '0',

  `sort_order` int DEFAULT '0',

  `created_by` int DEFAULT NULL,

  `created_on` datetime DEFAULT NULL,

  `updated_by` int DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `active_status` int DEFAULT NULL,

  PRIMARY KEY (`table_id`),

  KEY `form_id_idx` (`form_id`),

  CONSTRAINT `tenderform_id` FOREIGN KEY (`form_id`) REFERENCES `tbl_tenderform` (`form_id`) ON DELETE CASCADE ON UPDATE CASCADE

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=1829 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:30

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_tendertermsandcondition`

--



DROP TABLE IF EXISTS `tbl_tendertermsandcondition`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_tendertermsandcondition` (

  `tender_terms_id` bigint NOT NULL AUTO_INCREMENT,

  `condition_text` varchar(10000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `active_status` int NOT NULL DEFAULT '0',

  `tender_id` bigint NOT NULL,

  `language_id` int DEFAULT NULL,

  `created_by` bigint NOT NULL,

  `created_on` datetime NOT NULL,

  `updated_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  PRIMARY KEY (`tender_terms_id`),

  KEY `Tbl_TenderTermsAndCondition_FK_1` (`language_id`),

  CONSTRAINT `Tbl_TenderTermsAndCondition_FK_1` FOREIGN KEY (`language_id`) REFERENCES `tbl_languages` (`language_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=1030 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:30

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_tenderunmapbidderhistory`

--



DROP TABLE IF EXISTS `tbl_tenderunmapbidderhistory`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_tenderunmapbidderhistory` (

  `unmapbidder_id` bigint NOT NULL AUTO_INCREMENT,

  `tender_id` int NOT NULL,

  `bidder_id` bigint NOT NULL,

  `created_on` datetime NOT NULL,

  `created_by` int NOT NULL,

  PRIMARY KEY (`unmapbidder_id`),

  KEY `tbl_tenderunmapbidderhistory_fk` (`tender_id`),

  KEY `tbl_tenderunmapbidderhistory_fk_1` (`bidder_id`),

  CONSTRAINT `tbl_tenderunmapbidderhistory_fk` FOREIGN KEY (`tender_id`) REFERENCES `tbl_tender` (`tender_id`),

  CONSTRAINT `tbl_tenderunmapbidderhistory_fk_1` FOREIGN KEY (`bidder_id`) REFERENCES `tbl_userlogin` (`id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:30

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_termsandcondition`

--



DROP TABLE IF EXISTS `tbl_termsandcondition`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_termsandcondition` (

  `terms_and_condition_id` bigint NOT NULL AUTO_INCREMENT,

  `module_id` int NOT NULL,

  `sub_module_id` int NOT NULL,

  `condition` varchar(10000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `created_by` bigint NOT NULL,

  `created_on` datetime NOT NULL,

  `updated_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `language_id` int NOT NULL,

  PRIMARY KEY (`terms_and_condition_id`),

  KEY `Tbl_TermsAndCondition_FK` (`module_id`),

  KEY `tbl_termsandcondition_fk1` (`sub_module_id`),

  KEY `tbl_termsandcondition_fk2` (`language_id`),

  CONSTRAINT `Tbl_TermsAndCondition_FK` FOREIGN KEY (`module_id`) REFERENCES `tbl_module` (`module_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_termsandcondition_fk1` FOREIGN KEY (`sub_module_id`) REFERENCES `tbl_sub_module` (`sub_module_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_termsandcondition_fk2` FOREIGN KEY (`language_id`) REFERENCES `tbl_languages` (`language_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:30

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_timezone`

--



DROP TABLE IF EXISTS `tbl_timezone`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_timezone` (

  `time_zone_id` bigint NOT NULL AUTO_INCREMENT,

  `abbreviation` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `country_id` int NOT NULL DEFAULT '0',

  `gmt_offset` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `diff` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  PRIMARY KEY (`time_zone_id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=421 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:30

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_unspsc_class`

--



DROP TABLE IF EXISTS `tbl_unspsc_class`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_unspsc_class` (

  `class_id` bigint NOT NULL AUTO_INCREMENT,

  `name` varchar(1000) NOT NULL,

  `code` varchar(45) DEFAULT NULL,

  `description` varchar(1000) DEFAULT NULL,

  `segnment_id` bigint NOT NULL,

  `family_id` bigint NOT NULL,

  PRIMARY KEY (`class_id`),

  KEY `tbl_unspsc_family_fk1` (`segnment_id`),

  KEY `tbl_unspsc_class_fk` (`family_id`),

  CONSTRAINT `tbl_unspsc_class_fk` FOREIGN KEY (`family_id`) REFERENCES `tbl_unspsc_family` (`family_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_unspsc_family_fk1` FOREIGN KEY (`segnment_id`) REFERENCES `tbl_unspsc_segment` (`segmentid`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=8504 DEFAULT CHARSET=utf8mb3;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:30

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_unspsc_commodity`

--



DROP TABLE IF EXISTS `tbl_unspsc_commodity`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_unspsc_commodity` (

  `commodity_id` bigint NOT NULL AUTO_INCREMENT,

  `name` varchar(1000) NOT NULL,

  `code` varchar(45) DEFAULT NULL,

  `description` varchar(1000) DEFAULT NULL,

  `segnment_id` bigint NOT NULL,

  `family_id` bigint NOT NULL,

  `class_id` bigint NOT NULL,

  PRIMARY KEY (`commodity_id`),

  KEY `tbl_unspsc_family_fk1` (`segnment_id`),

  KEY `tbl_unspsc_class_fk` (`family_id`),

  KEY `tbl_unspsc_commodity_fk` (`class_id`),

  CONSTRAINT `tbl_unspsc_class_fk1` FOREIGN KEY (`family_id`) REFERENCES `tbl_unspsc_family` (`family_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_unspsc_commodity_fk` FOREIGN KEY (`class_id`) REFERENCES `tbl_unspsc_class` (`class_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `tbl_unspsc_family_fk2` FOREIGN KEY (`segnment_id`) REFERENCES `tbl_unspsc_segment` (`segmentid`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=156479 DEFAULT CHARSET=utf8mb3;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:30

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_unspsc_family`

--



DROP TABLE IF EXISTS `tbl_unspsc_family`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_unspsc_family` (

  `family_id` bigint NOT NULL AUTO_INCREMENT,

  `name` varchar(1000) NOT NULL,

  `code` varchar(45) DEFAULT NULL,

  `description` varchar(1000) DEFAULT NULL,

  `segnment_id` bigint NOT NULL,

  PRIMARY KEY (`family_id`),

  KEY `tbl_unspsc_family_fk` (`segnment_id`),

  CONSTRAINT `tbl_unspsc_family_fk` FOREIGN KEY (`segnment_id`) REFERENCES `tbl_unspsc_segment` (`segmentid`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=604 DEFAULT CHARSET=utf8mb3;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:30

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_unspsc_segment`

--



DROP TABLE IF EXISTS `tbl_unspsc_segment`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_unspsc_segment` (

  `segmentid` bigint NOT NULL AUTO_INCREMENT,

  `name` varchar(1000) NOT NULL,

  `code` varchar(45) DEFAULT NULL,

  `description` varchar(1000) DEFAULT NULL,

  PRIMARY KEY (`segmentid`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb3;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:30

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_update_report`

--



DROP TABLE IF EXISTS `tbl_update_report`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_update_report` (

  `id` bigint NOT NULL AUTO_INCREMENT,

  `bidder_name` varchar(200) DEFAULT NULL,

  `bidder_id` bigint DEFAULT NULL,

  `user_id` bigint DEFAULT NULL,

  `depart_id` bigint DEFAULT NULL,

  `unspsc_code` bigint DEFAULT NULL,

  `item_name` varchar(200) DEFAULT NULL,

  `start_price` decimal(20,5) DEFAULT NULL,

  `bid_price` decimal(20,5) DEFAULT NULL,

  `award_price` decimal(20,5) DEFAULT NULL,

  `event_id` bigint DEFAULT NULL,

  `form_id` bigint DEFAULT NULL,

  `table_id` bigint DEFAULT NULL,

  `row_id` bigint DEFAULT NULL,

  `bid_submission_for` int DEFAULT NULL,

  `created_by` bigint DEFAULT NULL,

  `created_on` datetime DEFAULT NULL,

  `client_id` bigint DEFAULT NULL,

  `order_date` datetime DEFAULT NULL,

  `completed_on` datetime DEFAULT NULL,

  `spend_center_id` bigint DEFAULT NULL,

  PRIMARY KEY (`id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:30

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_user_roles`

--



DROP TABLE IF EXISTS `tbl_user_roles`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_user_roles` (

  `user_id` bigint NOT NULL,

  `authority_name` varchar(50) NOT NULL,

  PRIMARY KEY (`user_id`,`authority_name`),

  KEY `fk_authority_name` (`authority_name`),

  CONSTRAINT `fk_authority_name` FOREIGN KEY (`authority_name`) REFERENCES `tbl_role` (`name`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_userlogin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:31

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_userdetail`

--



DROP TABLE IF EXISTS `tbl_userdetail`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_userdetail` (

  `userdetail_id` int NOT NULL AUTO_INCREMENT,

  `user_id` bigint NOT NULL,

  `user_name` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `department_name` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `designation_name` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `created_on` datetime NOT NULL,

  `created_by` int NOT NULL,

  `active_status` int DEFAULT NULL,

  `updated_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `company_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  PRIMARY KEY (`userdetail_id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=498 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:31

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_userlogin`

--



DROP TABLE IF EXISTS `tbl_userlogin`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_userlogin` (

  `id` bigint NOT NULL AUTO_INCREMENT,

  `login` varchar(50) NOT NULL,

  `password_hash` varchar(60) DEFAULT NULL,

  `first_name` varchar(50) DEFAULT NULL,

  `last_name` varchar(50) DEFAULT NULL,

  `email` varchar(100) DEFAULT NULL,

  `image_url` varchar(256) DEFAULT NULL,

  `activated` bit(1) NOT NULL,

  `lang_key` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT 'en',

  `activation_key` varchar(20) DEFAULT NULL,

  `reset_key` varchar(20) DEFAULT NULL,

  `created_by` bigint NOT NULL,

  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

  `reset_date` timestamp NULL DEFAULT NULL,

  `updated_by` bigint DEFAULT NULL,

  `updated_on` timestamp NULL DEFAULT NULL,

  `failed_pass_attempts` int NOT NULL DEFAULT '0',

  `mobile_no` varchar(20) NOT NULL,

  `is_email_verify` smallint NOT NULL DEFAULT '1',

  `is_mobileno_verify` smallint NOT NULL DEFAULT '1',

  `is_first_login` smallint NOT NULL DEFAULT '0',

  `active_status` smallint NOT NULL DEFAULT '0',

  `chat_id` bigint DEFAULT NULL,

  PRIMARY KEY (`id`),

  UNIQUE KEY `ux_user_login` (`login`),

  UNIQUE KEY `idx_user_login` (`login`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=500 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:31

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_userlogins`

--



DROP TABLE IF EXISTS `tbl_userlogins`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_userlogins` (

  `user_id` bigint NOT NULL AUTO_INCREMENT,

  `email_Id` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `first_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `last_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `password` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `failed_pass_attempts` int NOT NULL DEFAULT '0',

  `user_code` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `mobile_no` bigint NOT NULL,

  `active_status` int NOT NULL DEFAULT '0',

  `created_by` bigint NOT NULL,

  `created_on` datetime NOT NULL,

  `updated_by` bigint NOT NULL,

  `updated_on` datetime NOT NULL,

  `is_email_verify` int DEFAULT '0',

  `is_mobileno_verify` int DEFAULT '0',

  `is_first_login` tinyint NOT NULL DEFAULT '1',

  `user_name` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  PRIMARY KEY (`user_id`)

)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:31

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_userotp`

--



DROP TABLE IF EXISTS `tbl_userotp`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_userotp` (

  `opt_id` bigint NOT NULL AUTO_INCREMENT,

  `opt_code` int NOT NULL,

  `user_id` bigint NOT NULL,

  `active_status` int NOT NULL DEFAULT '1',

  `end_date` datetime NOT NULL,

  `created_on` datetime NOT NULL,

  `created_by` bigint NOT NULL,

  `updated_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  PRIMARY KEY (`opt_id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=latin1;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:31

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_userpasswordhistory`

--



DROP TABLE IF EXISTS `tbl_userpasswordhistory`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_userpasswordhistory` (

  `user_pass_history_id` bigint NOT NULL AUTO_INCREMENT,

  `user_id` bigint NOT NULL,

  `old_password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `created_by` bigint NOT NULL,

  `created_on` datetime NOT NULL,

  `updated_by` bigint DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `is_systemgen_pass` int NOT NULL DEFAULT '0',

  PRIMARY KEY (`user_pass_history_id`)

)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:31

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_userprofile`

--



DROP TABLE IF EXISTS `tbl_userprofile`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_userprofile` (

  `userprofile_id` bigint NOT NULL AUTO_INCREMENT,

  `user_id` bigint NOT NULL,

  `pan_no` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `gst_no` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `client_id` bigint NOT NULL,

  `is_email_notification` tinyint NOT NULL DEFAULT '0',

  `is_sms_notification` tinyint NOT NULL DEFAULT '0',

  `start_date_email` datetime NOT NULL,

  `end_date_email` datetime NOT NULL,

  `start_date_sms` datetime NOT NULL,

  `end_date_sms` datetime NOT NULL,

  `email_address` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `mobile_no` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  PRIMARY KEY (`userprofile_id`)

)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:31

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_workflow`

--



DROP TABLE IF EXISTS `tbl_workflow`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_workflow` (

  `workflow_id` int NOT NULL AUTO_INCREMENT,

  `object_id` int NOT NULL,

  `parent_id` int NOT NULL,

  `link_id` int NOT NULL,

  `eventtype_id` int NOT NULL,

  `currentuser_id` int NOT NULL DEFAULT '0',

  `lastuser_id` int NOT NULL DEFAULT '0',

  `nextuser_id` int NOT NULL DEFAULT '0',

  `workflowaction_id` int NOT NULL,

  `client_id` int NOT NULL,

  `status` tinyint NOT NULL DEFAULT '0',

  `approved_on` datetime DEFAULT NULL,

  `approved_by` bigint DEFAULT NULL,

  `created_on` datetime NOT NULL,

  `created_by` int NOT NULL,

  `updated_on` datetime DEFAULT NULL,

  `updated_by` int DEFAULT NULL,

  `reference_no` bigint DEFAULT NULL,

  `trigger_on` datetime DEFAULT NULL,

  `user_type` int NOT NULL,

  PRIMARY KEY (`workflow_id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:31

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_workflowaction`

--



DROP TABLE IF EXISTS `tbl_workflowaction`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_workflowaction` (

  `workflowaction_id` int NOT NULL AUTO_INCREMENT,

  `lnag1` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `lang2` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `lang3` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `lang4` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  PRIMARY KEY (`workflowaction_id`)

)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:31

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_workflowclientevent`

--



DROP TABLE IF EXISTS `tbl_workflowclientevent`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_workflowclientevent` (

  `workflowclientevent_id` int NOT NULL AUTO_INCREMENT,

  `workfloweventmaster_id` int DEFAULT NULL,

  `active_status` int NOT NULL,

  `client_id` bigint NOT NULL,

  `created_on` datetime NOT NULL,

  `created_by` int NOT NULL,

  PRIMARY KEY (`workflowclientevent_id`),

  KEY `workfloweventmaster_id_idx` (`workfloweventmaster_id`),

  KEY `client_id_idx` (`client_id`),

  CONSTRAINT `client_id` FOREIGN KEY (`client_id`) REFERENCES `tbl_client` (`client_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

  CONSTRAINT `workfloweventmaster_id` FOREIGN KEY (`workfloweventmaster_id`) REFERENCES `tbl_workfloweventmaster` (`workfloweventmaster_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=764 DEFAULT CHARSET=latin1 COMMENT='for maintain client level workflow event';

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:31

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_workflowconfiguration`

--



DROP TABLE IF EXISTS `tbl_workflowconfiguration`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_workflowconfiguration` (

  `workflowconfig_id` int NOT NULL AUTO_INCREMENT,

  `link_id` int NOT NULL,

  `object_id` int NOT NULL,

  `parent_id` int NOT NULL,

  `escalation_period` int DEFAULT NULL,

  `eventmaster_id` bigint NOT NULL,

  `created_on` datetime DEFAULT NULL,

  `created_by` int DEFAULT NULL,

  `updated_on` datetime DEFAULT NULL,

  `updated_by` int DEFAULT NULL,

  `active_status` int NOT NULL DEFAULT '0',

  PRIMARY KEY (`workflowconfig_id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:31

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_workflowconfigurationdetail`

--



DROP TABLE IF EXISTS `tbl_workflowconfigurationdetail`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_workflowconfigurationdetail` (

  `workflowcnfigdetail_id` int NOT NULL AUTO_INCREMENT,

  `workflowconfig_id` int NOT NULL,

  `usertype` int DEFAULT NULL,

  `user_id` int NOT NULL,

  `userdetail_id` int NOT NULL,

  `sortorder` int DEFAULT NULL,

  `created_on` datetime NOT NULL,

  `created_by` int NOT NULL,

  PRIMARY KEY (`workflowcnfigdetail_id`),

  KEY `workflowconfig_id_idx` (`workflowconfig_id`),

  CONSTRAINT `workflowconfig_id` FOREIGN KEY (`workflowconfig_id`) REFERENCES `tbl_workflowconfiguration` (`workflowconfig_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:31

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_workflowdetail`

--



DROP TABLE IF EXISTS `tbl_workflowdetail`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_workflowdetail` (

  `workflowdetail_id` int NOT NULL AUTO_INCREMENT,

  `workflow_id` int NOT NULL,

  `currentuserdetail_id` int NOT NULL,

  `nextuserdetail_id` int NOT NULL DEFAULT '0',

  `workflow_action` int NOT NULL,

  `remarks` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `created_on` datetime NOT NULL,

  `created_by` int NOT NULL,

  PRIMARY KEY (`workflowdetail_id`),

  KEY `workflow_id_idx` (`workflow_id`),

  CONSTRAINT `workflow_id` FOREIGN KEY (`workflow_id`) REFERENCES `tbl_workflow` (`workflow_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:31

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_workfloweventmaster`

--



DROP TABLE IF EXISTS `tbl_workfloweventmaster`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_workfloweventmaster` (

  `workfloweventmaster_id` int NOT NULL AUTO_INCREMENT,

  `workflowevent_name` varchar(100) NOT NULL,

  `active_status` int NOT NULL,

  `created_on` datetime NOT NULL,

  `created_by` bigint NOT NULL,

  PRIMARY KEY (`workfloweventmaster_id`)

)
-- ) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COMMENT='master table of workflow event ';

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:31

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)

--

-- Host: localhost    Database: app

-- ------------------------------------------------------

-- Server version	8.0.36



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--

-- Table structure for table `tbl_workflowtype`

--



DROP TABLE IF EXISTS `tbl_workflowtype`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `tbl_workflowtype` (

  `workflowtype_id` int NOT NULL AUTO_INCREMENT,

  `active` tinyint NOT NULL DEFAULT '0',

  `lang1` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,

  `lang2` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `lang3` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  `lang4` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,

  PRIMARY KEY (`workflowtype_id`)

)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



-- Dump completed on 2024-08-03 15:36:31

