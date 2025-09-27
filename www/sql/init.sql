-- MySQL dump 10.13  Distrib 8.0.43, for Linux (x86_64)
--
-- Host: localhost    Database: cassecroute
-- ------------------------------------------------------
-- Server version	8.0.43-0ubuntu0.24.04.1

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
-- Table structure for table `addons`
--

DROP TABLE IF EXISTS `addons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uuid` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `stockref` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cost_price` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `selling_price` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `photo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `display_order` int NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons`
--

LOCK TABLES `addons` WRITE;
/*!40000 ALTER TABLE `addons` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons_categories`
--

DROP TABLE IF EXISTS `addons_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addons_categories` (
  `addon_id` int NOT NULL,
  `product_category_id` int NOT NULL,
  PRIMARY KEY (`addon_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons_categories`
--

LOCK TABLES `addons_categories` WRITE;
/*!40000 ALTER TABLE `addons_categories` DISABLE KEYS */;
INSERT INTO `addons_categories` VALUES (120,8),(120,12),(120,16),(121,8),(121,12),(121,16),(121,18),(121,19),(122,8),(124,10),(126,8),(126,10),(126,11),(126,12),(126,13),(126,14),(126,15),(126,16),(126,17),(126,18),(126,19),(126,22),(126,24),(126,25),(126,26),(126,28),(127,8),(127,12),(127,13),(127,14),(127,15),(127,16),(127,18),(127,19),(127,28),(129,8),(129,12),(129,13),(129,15),(129,16),(129,18),(129,19),(162,8),(162,12),(162,13),(162,14),(162,15),(162,16),(162,18),(162,19),(162,26),(162,28),(170,8),(172,14),(172,28),(173,14),(173,28),(176,8),(176,12),(176,16),(177,11),(178,16),(190,10),(192,8),(195,11);
/*!40000 ALTER TABLE `addons_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commits`
--

DROP TABLE IF EXISTS `commits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commits` (
  `commit` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `author` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `date` datetime NOT NULL,
  `details` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`commit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commits`
--

LOCK TABLES `commits` WRITE;
/*!40000 ALTER TABLE `commits` DISABLE KEYS */;
/*!40000 ALTER TABLE `commits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `legal_name` varchar(50) NOT NULL,
  `brn` varchar(30) DEFAULT NULL,
  `vat` varchar(30) DEFAULT NULL,
  `address1` varchar(100) NOT NULL,
  `address2` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `fax` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `linkedin` varchar(100) NOT NULL,
  `twitter` varchar(100) NOT NULL,
  `skype` varchar(30) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `whatsapp` varchar(255) NOT NULL,
  `working_hours` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'Coin Casse Croute - Bistro','Coin Casse Croute - Bistro','I07020044','VAT15391494','La Passe Street','','Mahébourg','Rep. of Mauritius','631 6029','58383407','','','Chez Coin Casse Croute','','','','','','','Mon - Sat: 09:00 to 17:00\r\nTues: Closed\r\nSun: 09:00 to 14:30\r\nPH: 09:00 to 14:30');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `uuid` varchar(40) NOT NULL,
  `customer_code` varchar(30) NOT NULL,
  `title` enum('Mr','Mrs','Miss','Dr') NOT NULL DEFAULT 'Mr',
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `phone_number1` varchar(50) NOT NULL,
  `phone_number2` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `nic` varchar(14) DEFAULT NULL,
  `dob` varchar(10) NOT NULL,
  `remarks` text,
  `discount` float NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `nic` (`nic`),
  KEY `fk_customers_users1_idx` (`created_by`),
  CONSTRAINT `fk_customers_users1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'1a5d9b0e-4f45-4fd1-8b2e-181ca6486209','','Mr','Danee','Kerisnajee','','','','',NULL,NULL,'','',0,1,11,'0000-00-00 00:00:00'),(2,'80113ae2-3ce2-4ee9-ac85-4d4cca3ca9b6','','Mr','Mauritius ','Pharmacy ltd','','','','',NULL,NULL,'','',0,1,11,'0000-00-00 00:00:00'),(3,'340a8d65-f154-4153-a127-73f80d65773d','1','Mr','Auric','Services LTD','9 Michael leal street St martin','Baie du cap','54299998','',NULL,NULL,'','',0,1,11,'0000-00-00 00:00:00'),(4,'d0160a81-d6c0-4e47-bc86-d35a7a347bb2','','Mrs','Ltd','Ltd','','','','',NULL,NULL,'','',0,1,11,'0000-00-00 00:00:00'),(5,'fdbf2ad2-af96-4f51-8a10-3d1e6ebf28d4','','Mr','Savanna country side','Ltd','','','','',NULL,NULL,'','',0,1,11,'0000-00-00 00:00:00'),(6,'a232fb58-7272-4bc4-a29e-beacbe80978c','1','Mr','RSVP','Ltd','','','','',NULL,NULL,'','',0,1,11,'0000-00-00 00:00:00'),(7,'bdfe11dd-39aa-46ca-9888-f8432e74a725','1','Mr','Visitation ','Ecole','','','','',NULL,NULL,'','',0,1,11,'0000-00-00 00:00:00'),(8,'90e4e33a-ea82-4bcb-a471-242eaa537ace','1','Mr','Taste buddies ltd','Taste buddies ltd','Mapou','','','',NULL,NULL,'','',0,1,11,'0000-00-00 00:00:00'),(9,'b5984432-c7dc-4586-8935-dc91b44ece89','1','Mr','JA','Mascareignes','','','','',NULL,NULL,'','',0,1,11,'0000-00-00 00:00:00'),(10,'39417ba8-34f0-481c-bd44-f9c7250f0bf9','1','Mr','Jo-','Lighting crew LTD','','','','',NULL,NULL,'','',0,1,11,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uuid` varchar(40) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_departments_users_idx` (`created_by`),
  CONSTRAINT `fk_departments_users` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'b1df526c-e91e-4d48-8ae6-cfb09841a51c','Store',NULL,'','',1,1,'2022-11-15 22:02:51');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_queue`
--

DROP TABLE IF EXISTS `email_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_queue` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uuid` varchar(40) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `recipients` text NOT NULL,
  `subject` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `date_sent` datetime DEFAULT NULL,
  `stage` varchar(10) NOT NULL DEFAULT 'new',
  `tracking_code` text,
  `opened` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_queue`
--

LOCK TABLES `email_queue` WRITE;
/*!40000 ALTER TABLE `email_queue` DISABLE KEYS */;
INSERT INTO `email_queue` VALUES (1,'1895c7b4-0e8c-45c0-aa66-9d4d87d519b9','2024-07-13 01:53:58','sooruj@mannickassociates.com','Account has been created','<!DOCTYPE html>\n<html>\n<head>\n<title>Account Created</title>\n<meta charset=\"utf-8\">\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />\n<style type=\"text/css\">\n    /* CLIENT-SPECIFIC STYLES */\n    body, table, td, a{-webkit-text-size-adjust: 100%; -ms-text-size-adjust: 100%;} /* Prevent WebKit and Windows mobile changing default text sizes */\n    table, td{mso-table-lspace: 0pt; mso-table-rspace: 0pt;} /* Remove spacing between tables in Outlook 2007 and up */\n    img{-ms-interpolation-mode: bicubic;} /* Allow smoother rendering of resized image in Internet Explorer */\n\n    /* RESET STYLES */\n    img{border: 0; height: auto; line-height: 100%; outline: none; text-decoration: none;}\n    table{border-collapse: collapse !important;}\n    body{height: 100% !important; margin: 0 !important; padding: 0 !important; width: 100% !important;}\n\n    /* iOS BLUE LINKS */\n    a[x-apple-data-detectors] {\n        color: inherit !important;\n        text-decoration: none !important;\n        font-size: inherit !important;\n        font-family: inherit !important;\n        font-weight: inherit !important;\n        line-height: inherit !important;\n    }\n\n    /* MOBILE STYLES */\n    @media screen and (max-width: 525px) {\n\n        /* ALLOWS FOR FLUID TABLES */\n        .wrapper {\n          width: 100% !important;\n            max-width: 100% !important;\n        }\n\n        /* ADJUSTS LAYOUT OF LOGO IMAGE */\n        .logo img {\n          margin: 0 auto !important;\n        }\n\n        /* USE THESE CLASSES TO HIDE CONTENT ON MOBILE */\n        .mobile-hide {\n          display: none !important;\n        }\n\n        .img-max {\n          max-width: 100% !important;\n          width: 100% !important;\n          height: auto !important;\n        }\n\n        /* FULL-WIDTH TABLES */\n        .responsive-table {\n          width: 100% !important;\n        }\n\n        /* UTILITY CLASSES FOR ADJUSTING PADDING ON MOBILE */\n        .padding {\n          padding: 10px 5% 15px 5% !important;\n        }\n\n        .padding-meta {\n          padding: 30px 5% 0px 5% !important;\n          text-align: center;\n        }\n\n        .padding-copy {\n             padding: 10px 5% 10px 5% !important;\n          text-align: center;\n        }\n\n        .no-padding {\n          padding: 0 !important;\n        }\n\n        .section-padding {\n          padding: 50px 15px 50px 15px !important;\n        }\n\n        /* ADJUST BUTTONS ON MOBILE */\n        .mobile-button-container {\n            margin: 0 auto;\n            width: 100% !important;\n        }\n\n        .mobile-button {\n            padding: 15px !important;\n            border: 0 !important;\n            font-size: 16px !important;\n            display: block !important;\n        }\n\n    }\n\n    /* ANDROID CENTER FIX */\n    div[style*=\"margin: 16px 0;\"] { margin: 0 !important; }\n</style>\n</head>\n<body style=\"margin: 0 !important; padding: 0 !important;\">\n\n<!-- ONE COLUMN SECTION -->\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n    <tr>\n        <td bgcolor=\"#ffffff\" align=\"center\" style=\"padding: 15px;\" class=\"section-padding\">\n            <!--[if (gte mso 9)|(IE)]>\n            <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"500\">\n            <tr>\n            <td align=\"center\" valign=\"top\" width=\"500\">\n            <![endif]-->\n            <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 500px;\" class=\"responsive-table\">\n                <tr>\n                    <td>\n                        <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n                            <tr>\n                                <td>\n                                    <!-- COPY -->\n                                    <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n                                        <tr>\n                                            <img style=\"width:50%;margin-right:25%; margin-left:25%;\" src=\"https://cassecroute.app/www/assets/images/yourcompany.png\" alt=\"\">\n                                        </tr>\n                                        <tr>\n                                            <td align=\"left\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" class=\"padding-copy\">Hi sooruj,</td>\n                                        </tr>\n                                        <tr>\n                                            <td align=\"left\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" class=\"padding-copy\">Your account has been successfully created with the following details:</td>\n                                        </tr>\n                                        \n                                        <tr>\n                                            <td align=\"left\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" class=\"padding-copy\">\n                                            <strong>Name</strong>: sooruj<br>                                            <strong>Job Title</strong>: Accountant<br>                                            <strong>Username</strong>: sooruj<br>                                                                                        <strong>Email</strong>: sooruj@mannickassociates.com<br>                                            <strong>Level</strong>: Admin<br>                                                                                        </td>\n                                        </tr>\n \n                                        <tr>\n                                            <td align=\"left\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" class=\"padding-copy\">You can connect to your account here: \n                                                <p><a href=\"https://cassecroute.app/www/users/signin/4aac069b-d5e5-4851-97eb-ac155ac1ba1a\" target=\"_blank\">https://cassecroute.app/www/users/signin/4aac069b-d5e5-4851-97eb-ac155ac1ba1a</a></p>\n                                            </td>\n                                        </tr>\n                                        \n                                        <tr>\n                                            <td align=\"left\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" class=\"padding-copy\">Cheers,<br>Admin</td>\n                                        </tr>\n                                    </table>\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                </tr>\n            </table>\n            <!--[if (gte mso 9)|(IE)]>\n            </td>\n            </tr>\n            </table>\n            <![endif]-->\n        </td>\n    </tr>\n    <tr>\n        <td bgcolor=\"#ffffff\" align=\"center\" style=\"padding: 20px 0px;\">\n            <!--[if (gte mso 9)|(IE)]>\n            <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"500\">\n            <tr>\n            <td align=\"center\" valign=\"top\" width=\"500\">\n            <![endif]-->\n            <!-- UNSUBSCRIBE COPY -->\n            <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" style=\"max-width: 500px;border-top:1px solid #ccc;\" class=\"responsive-table\">\n                <tr>\n                    <td align=\"left\" style=\"font-size: 12px; line-height: 18px; font-family: Helvetica, Arial, sans-serif; color:#666666;\">\n                        <strong>Coin Casse Croute Ltée</strong>. La Passe Street, , P: 631 6029, F:, E:                        <!-- <br> -->\n                        <!-- <a href=\"http://litmus.com\" target=\"_blank\" style=\"color: #666666; text-decoration: none;\">Unsubscribe</a> -->\n                    </td>\n                </tr>\n            </table>\n            <!--[if (gte mso 9)|(IE)]>\n            </td>\n            </tr>\n            </table>\n            <![endif]-->\n        </td>\n    </tr>\n</table>\n\n</body>\n</html>\n<img src=\'https://cassecroute.app/www/track/code2/226992d97f4d24dc3f6900059fe2137a81b9cd48ea0e7ff3\'>',NULL,'new','226992d97f4d24dc3f6900059fe2137a81b9cd48ea0e7ff3',0);
/*!40000 ALTER TABLE `email_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glyphicons`
--

DROP TABLE IF EXISTS `glyphicons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `glyphicons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=594 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glyphicons`
--

LOCK TABLES `glyphicons` WRITE;
/*!40000 ALTER TABLE `glyphicons` DISABLE KEYS */;
INSERT INTO `glyphicons` VALUES (1,'fa-align-center','formatting'),(2,'fa-adjust',''),(3,'fa-adn',''),(4,'fa-align-left','formatting'),(5,'fa-align-justify','formatting'),(6,'fa-align-right','formatting'),(7,'fa-angellist',''),(8,'fa-ambulance','transport'),(9,'fa-anchor',''),(10,'fa-angle-double-down','arrows'),(11,'fa-angle-double-left','arrows'),(12,'fa-android',''),(13,'fa-angle-double-up','arrows'),(14,'fa-angle-left','arrows'),(15,'fa-angle-double-right','arrows'),(16,'fa-angle-down','arrows'),(17,'fa-angle-up','arrows'),(18,'fa-angle-right','arrows'),(19,'fa-apple',''),(20,'fa-area-chart',''),(21,'fa-arrow-circle-down','arrows'),(22,'fa-arrow-circle-o-down','arrows'),(23,'fa-archive',''),(24,'fa-arrow-circle-left','arrows'),(25,'fa-arrow-circle-o-left','arrows'),(26,'fa-arrow-down','arrows'),(27,'fa-arrow-circle-right','arrows'),(28,'fa-arrow-circle-o-up','arrows'),(29,'fa-arrow-circle-o-right','arrows'),(30,'fa-arrow-circle-up','arrows'),(31,'fa-arrow-left','arrows'),(32,'fa-arrows-h',''),(33,'fa-arrow-right','arrows'),(34,'fa-arrows-alt','arrows'),(35,'fa-arrow-up','arrows'),(36,'fa-arrows','arrows'),(37,'fa-arrows-v','arrows'),(38,'fa-asterisk',''),(39,'fa-at',''),(40,'fa-backward',''),(41,'fa-ban',''),(42,'fa-automobile',''),(43,'fa-bank',''),(44,'fa-bar-chart','graphs'),(45,'fa-bars','graphs'),(46,'fa-bar-chart-o','graphs'),(47,'fa-bed',''),(48,'fa-barcode',''),(49,'fa-beer',''),(50,'fa-behance-square',''),(51,'fa-bell-slash',''),(52,'fa-bell-o',''),(53,'fa-behance',''),(54,'fa-bell',''),(55,'fa-bell-slash-o',''),(56,'fa-birthday-cake',''),(57,'fa-bitbucket',''),(58,'fa-bitbucket-square',''),(59,'fa-bicycle','transport'),(60,'fa-binoculars',''),(61,'fa-bitcoin',''),(62,'fa-bookmark',''),(63,'fa-book',''),(64,'fa-bomb',''),(65,'fa-bolt',''),(66,'fa-bold',''),(67,'fa-bookmark-o',''),(68,'fa-bug',''),(69,'fa-building',''),(70,'fa-building-o',''),(71,'fa-btc',''),(72,'fa-briefcase',''),(73,'fa-bullhorn',''),(74,'fa-bullseye',''),(75,'fa-buysellads',''),(76,'fa-calculator',''),(77,'fa-bus',''),(78,'fa-cab',''),(79,'fa-calendar',''),(80,'fa-camera-retro',''),(81,'fa-car','transport'),(82,'fa-caret-down',''),(83,'fa-calendar-o',''),(84,'fa-camera',''),(85,'fa-caret-left',''),(86,'fa-caret-square-o-up',''),(87,'fa-caret-square-o-right',''),(88,'fa-caret-right',''),(89,'fa-caret-square-o-left',''),(90,'fa-caret-square-o-down',''),(91,'fa-caret-up',''),(92,'fa-cc','e-commerce'),(93,'fa-cart-plus','e-commerce'),(94,'fa-cart-arrow-down','e-commerce'),(95,'fa-cc-discover','e-commerce'),(96,'fa-cc-amex','e-commerce'),(97,'fa-cc-mastercard','e-commerce'),(98,'fa-cc-visa','e-commerce'),(99,'fa-cc-stripe',''),(100,'fa-certificate',''),(101,'fa-chain-broken',''),(102,'fa-chain',''),(103,'fa-cc-paypal','e-commerce'),(104,'fa-check',''),(105,'fa-check-square',''),(106,'fa-check-circle',''),(107,'fa-chevron-circle-down',''),(108,'fa-check-square-o',''),(109,'fa-check-circle-o',''),(110,'fa-chevron-circle-left',''),(111,'fa-chevron-circle-right',''),(112,'fa-chevron-right',''),(113,'fa-chevron-down',''),(114,'fa-chevron-left',''),(115,'fa-chevron-circle-up',''),(116,'fa-chevron-up',''),(117,'fa-circle-o',''),(118,'fa-clipboard',''),(119,'fa-circle-o-notch',''),(120,'fa-circle-thin',''),(121,'fa-child',''),(122,'fa-circle',''),(123,'fa-cloud',''),(124,'fa-clock-o',''),(125,'fa-cny',''),(126,'fa-cloud-upload',''),(127,'fa-cloud-download',''),(128,'fa-close',''),(129,'fa-code',''),(130,'fa-cog',''),(131,'fa-code-fork',''),(132,'fa-cogs',''),(133,'fa-coffee',''),(134,'fa-codepen',''),(135,'fa-columns',''),(136,'fa-comment',''),(137,'fa-comments-o',''),(138,'fa-compass',''),(139,'fa-comments',''),(140,'fa-comment-o',''),(141,'fa-compress',''),(142,'fa-connectdevelop',''),(143,'fa-copyright',''),(144,'fa-copy',''),(145,'fa-credit-card',''),(146,'fa-crop',''),(147,'fa-crosshairs',''),(148,'fa-css3',''),(149,'fa-cube',''),(150,'fa-cutlery',''),(151,'fa-cubes',''),(152,'fa-cut',''),(153,'fa-dashcube',''),(154,'fa-dashboard',''),(155,'fa-dedent',''),(156,'fa-database',''),(157,'fa-delicious',''),(158,'fa-desktop',''),(159,'fa-diamond',''),(160,'fa-deviantart',''),(161,'fa-digg',''),(162,'fa-dollar',''),(163,'fa-dot-circle-o',''),(164,'fa-download',''),(165,'fa-dribbble',''),(166,'fa-drupal',''),(167,'fa-dropbox',''),(168,'fa-eject',''),(169,'fa-edit',''),(170,'fa-ellipsis-h',''),(171,'fa-ellipsis-v',''),(172,'fa-empire',''),(173,'fa-eraser',''),(174,'fa-envelope-o',''),(175,'fa-envelope-square',''),(176,'fa-envelope',''),(177,'fa-eur',''),(178,'fa-exchange',''),(179,'fa-euro',''),(180,'fa-exclamation',''),(181,'fa-exclamation-triangle',''),(182,'fa-exclamation-circle',''),(183,'fa-expand',''),(184,'fa-eye-slash',''),(185,'fa-external-link',''),(186,'fa-eye',''),(187,'fa-eyedropper',''),(188,'fa-external-link-square',''),(189,'fa-facebook',''),(190,'fa-facebook-official',''),(191,'fa-facebook-square',''),(192,'fa-fast-forward',''),(193,'fa-fast-backward',''),(194,'fa-facebook-f',''),(195,'fa-fax',''),(196,'fa-file-audio-o',''),(197,'fa-file',''),(198,'fa-female','person'),(199,'fa-file-archive-o',''),(200,'fa-fighter-jet',''),(201,'fa-file-code-o',''),(202,'fa-file-excel-o',''),(203,'fa-file-movie-o',''),(204,'fa-file-image-o',''),(205,'fa-file-o',''),(206,'fa-file-photo-o',''),(207,'fa-file-pdf-o',''),(208,'fa-file-picture-o',''),(209,'fa-file-sound-o',''),(210,'fa-file-powerpoint-o',''),(211,'fa-file-text',''),(212,'fa-file-text-o',''),(213,'fa-file-word-o',''),(214,'fa-file-video-o',''),(215,'fa-file-zip-o',''),(216,'fa-fire',''),(217,'fa-files-o',''),(218,'fa-fire-extinguisher',''),(219,'fa-filter',''),(220,'fa-film',''),(221,'fa-flag',''),(222,'fa-flag-o',''),(223,'fa-flask',''),(224,'fa-flickr',''),(225,'fa-flash',''),(226,'fa-flag-checkered',''),(227,'fa-floppy-o',''),(228,'fa-folder-o',''),(229,'fa-folder',''),(230,'fa-forumbee',''),(231,'fa-font',''),(232,'fa-folder-open-o',''),(233,'fa-folder-open',''),(234,'fa-forward',''),(235,'fa-foursquare',''),(236,'fa-futbol-o',''),(237,'fa-gavel',''),(238,'fa-gamepad',''),(239,'fa-frown-o',''),(240,'fa-gbp',''),(241,'fa-ge',''),(242,'fa-gear',''),(243,'fa-gift',''),(244,'fa-gears',''),(245,'fa-genderless',''),(246,'fa-git',''),(247,'fa-github',''),(248,'fa-glass',''),(249,'fa-github-square',''),(250,'fa-gittip',''),(251,'fa-github-alt',''),(252,'fa-git-square',''),(253,'fa-google',''),(254,'fa-globe',''),(255,'fa-google-wallet',''),(256,'fa-google-plus-square',''),(257,'fa-graduation-cap',''),(258,'fa-google-plus',''),(259,'fa-gratipay',''),(260,'fa-group',''),(261,'fa-hacker-news',''),(262,'fa-hand-o-down',''),(263,'fa-h-square',''),(264,'fa-hand-o-left',''),(265,'fa-hand-o-right',''),(266,'fa-header',''),(267,'fa-hand-o-up',''),(268,'fa-headphones',''),(269,'fa-heart',''),(270,'fa-hdd-o',''),(271,'fa-heartbeat',''),(272,'fa-heart-o',''),(273,'fa-home',''),(274,'fa-history',''),(275,'fa-hospital-o',''),(276,'fa-hotel',''),(277,'fa-html5',''),(278,'fa-inbox',''),(279,'fa-ils',''),(280,'fa-image',''),(281,'fa-info',''),(282,'fa-indent',''),(283,'fa-info-circle',''),(284,'fa-inr',''),(285,'fa-italic',''),(286,'fa-ioxhost',''),(287,'fa-institution',''),(288,'fa-instagram',''),(289,'fa-joomla',''),(290,'fa-jpy',''),(291,'fa-jsfiddle',''),(292,'fa-krw',''),(293,'fa-key',''),(294,'fa-keyboard-o',''),(295,'fa-language',''),(296,'fa-laptop',''),(297,'fa-leaf',''),(298,'fa-legal',''),(299,'fa-leanpub',''),(300,'fa-lastfm-square',''),(301,'fa-lastfm',''),(302,'fa-lemon-o',''),(303,'fa-level-up',''),(304,'fa-level-down',''),(305,'fa-life-ring',''),(306,'fa-life-buoy',''),(307,'fa-life-bouy',''),(308,'fa-lightbulb-o',''),(309,'fa-link',''),(310,'fa-line-chart',''),(311,'fa-life-saver',''),(312,'fa-linkedin-square',''),(313,'fa-linkedin',''),(314,'fa-linux',''),(315,'fa-list-ol',''),(316,'fa-location-arrow',''),(317,'fa-list-ul',''),(318,'fa-list-alt',''),(319,'fa-list',''),(320,'fa-lock',''),(321,'fa-long-arrow-down',''),(322,'fa-long-arrow-up',''),(323,'fa-long-arrow-right',''),(324,'fa-magic',''),(325,'fa-long-arrow-left',''),(326,'fa-magnet',''),(327,'fa-mail-reply',''),(328,'fa-mail-forward',''),(329,'fa-male','person'),(330,'fa-mail-reply-all',''),(331,'fa-map-marker',''),(332,'fa-mars',''),(333,'fa-mars-double',''),(334,'fa-mars-stroke-h',''),(335,'fa-mars-stroke',''),(336,'fa-maxcdn',''),(337,'fa-meanpath',''),(338,'fa-mars-stroke-v',''),(339,'fa-medium',''),(340,'fa-medkit',''),(341,'fa-meh-o',''),(342,'fa-microphone',''),(343,'fa-microphone-slash',''),(344,'fa-mercury',''),(345,'fa-minus-circle',''),(346,'fa-minus',''),(347,'fa-minus-square',''),(348,'fa-mobile',''),(349,'fa-mobile-phone',''),(350,'fa-minus-square-o',''),(351,'fa-money',''),(352,'fa-moon-o',''),(353,'fa-mortar-board',''),(354,'fa-music',''),(355,'fa-navicon',''),(356,'fa-motorcycle',''),(357,'fa-newspaper-o',''),(358,'fa-neuter',''),(359,'fa-outdent',''),(360,'fa-paint-brush',''),(361,'fa-pagelines',''),(362,'fa-openid',''),(363,'fa-paper-plane',''),(364,'fa-paper-plane-o',''),(365,'fa-paperclip',''),(366,'fa-pause',''),(367,'fa-paste',''),(368,'fa-paragraph',''),(369,'fa-paw',''),(370,'fa-pencil',''),(371,'fa-paypal',''),(372,'fa-pencil-square-o',''),(373,'fa-pencil-square',''),(374,'fa-phone',''),(375,'fa-phone-square',''),(376,'fa-photo',''),(377,'fa-picture-o',''),(378,'fa-pied-piper-alt',''),(379,'fa-pie-chart',''),(380,'fa-pied-piper',''),(381,'fa-pinterest',''),(382,'fa-pinterest-p',''),(383,'fa-pinterest-square',''),(384,'fa-plane',''),(385,'fa-play',''),(386,'fa-plug',''),(387,'fa-plus-circle',''),(388,'fa-play-circle-o',''),(389,'fa-plus',''),(390,'fa-play-circle',''),(391,'fa-plus-square',''),(392,'fa-plus-square-o',''),(393,'fa-print',''),(394,'fa-puzzle-piece',''),(395,'fa-power-off',''),(396,'fa-qq',''),(397,'fa-qrcode',''),(398,'fa-question',''),(399,'fa-ra',''),(400,'fa-quote-left',''),(401,'fa-question-circle',''),(402,'fa-quote-right',''),(403,'fa-random',''),(404,'fa-recycle',''),(405,'fa-reddit',''),(406,'fa-rebel',''),(407,'fa-reddit-square',''),(408,'fa-refresh',''),(409,'fa-renren',''),(410,'fa-remove',''),(411,'fa-repeat',''),(412,'fa-reply',''),(413,'fa-reply-all',''),(414,'fa-reorder',''),(415,'fa-retweet',''),(416,'fa-rotate-right',''),(417,'fa-rocket',''),(418,'fa-road',''),(419,'fa-rmb',''),(420,'fa-rotate-left',''),(421,'fa-rouble',''),(422,'fa-rupee',''),(423,'fa-ruble',''),(424,'fa-rss-square',''),(425,'fa-rss',''),(426,'fa-rub',''),(427,'fa-save',''),(428,'fa-scissors',''),(429,'fa-search',''),(430,'fa-search-plus',''),(431,'fa-search-minus',''),(432,'fa-sellsy',''),(433,'fa-send',''),(434,'fa-share',''),(435,'fa-share-alt',''),(436,'fa-share-alt-square',''),(437,'fa-server',''),(438,'fa-send-o',''),(439,'fa-share-square',''),(440,'fa-sheqel',''),(441,'fa-shield',''),(442,'fa-shekel',''),(443,'fa-ship',''),(444,'fa-share-square-o',''),(445,'fa-shirtsinbulk',''),(446,'fa-shopping-cart',''),(447,'fa-sign-in',''),(448,'fa-sign-out',''),(449,'fa-simplybuilt',''),(450,'fa-signal',''),(451,'fa-sitemap',''),(452,'fa-slack',''),(453,'fa-skyatlas',''),(454,'fa-sliders',''),(455,'fa-slideshare',''),(456,'fa-skype',''),(457,'fa-smile-o',''),(458,'fa-soccer-ball-o',''),(459,'fa-sort-alpha-asc',''),(460,'fa-sort-amount-asc',''),(461,'fa-sort-alpha-desc',''),(462,'fa-sort',''),(463,'fa-sort-amount-desc',''),(464,'fa-sort-down',''),(465,'fa-sort-numeric-asc',''),(466,'fa-sort-asc',''),(467,'fa-sort-desc',''),(468,'fa-sort-numeric-desc',''),(469,'fa-space-shuttle',''),(470,'fa-soundcloud',''),(471,'fa-sort-up',''),(472,'fa-spinner',''),(473,'fa-spoon',''),(474,'fa-spotify',''),(475,'fa-square',''),(476,'fa-stack-overflow',''),(477,'fa-stack-exchange',''),(478,'fa-square-o',''),(479,'fa-star',''),(480,'fa-star-half',''),(481,'fa-star-half-o',''),(482,'fa-star-half-full',''),(483,'fa-steam',''),(484,'fa-star-o',''),(485,'fa-star-half-empty',''),(486,'fa-steam-square',''),(487,'fa-step-forward',''),(488,'fa-step-backward',''),(489,'fa-stop',''),(490,'fa-street-view',''),(491,'fa-stethoscope',''),(492,'fa-strikethrough',''),(493,'fa-stumbleupon',''),(494,'fa-stumbleupon-circle',''),(495,'fa-subscript',''),(496,'fa-subway',''),(497,'fa-suitcase',''),(498,'fa-sun-o',''),(499,'fa-superscript',''),(500,'fa-tablet',''),(501,'fa-tachometer',''),(502,'fa-table',''),(503,'fa-support',''),(504,'fa-tag',''),(505,'fa-tags',''),(506,'fa-taxi',''),(507,'fa-tasks',''),(508,'fa-terminal',''),(509,'fa-text-height',''),(510,'fa-tencent-weibo',''),(511,'fa-text-width',''),(512,'fa-thumb-tack',''),(513,'fa-th-large',''),(514,'fa-th',''),(515,'fa-th-list',''),(516,'fa-thumbs-down',''),(517,'fa-thumbs-o-down',''),(518,'fa-thumbs-o-up',''),(519,'fa-ticket',''),(520,'fa-thumbs-up',''),(521,'fa-times',''),(522,'fa-times-circle-o',''),(523,'fa-times-circle',''),(524,'fa-tint',''),(525,'fa-toggle-left',''),(526,'fa-toggle-down',''),(527,'fa-toggle-on',''),(528,'fa-toggle-right',''),(529,'fa-toggle-off',''),(530,'fa-toggle-up',''),(531,'fa-train',''),(532,'fa-trash-o',''),(533,'fa-transgender-alt',''),(534,'fa-trash',''),(535,'fa-transgender',''),(536,'fa-tree',''),(537,'fa-trello',''),(538,'fa-truck',''),(539,'fa-trophy',''),(540,'fa-tty',''),(541,'fa-try',''),(542,'fa-tumblr',''),(543,'fa-tumblr-square',''),(544,'fa-twitch',''),(545,'fa-turkish-lira',''),(546,'fa-twitter',''),(547,'fa-twitter-square',''),(548,'fa-umbrella',''),(549,'fa-underline',''),(550,'fa-unlink',''),(551,'fa-university',''),(552,'fa-undo',''),(553,'fa-unlock',''),(554,'fa-unlock-alt',''),(555,'fa-unsorted',''),(556,'fa-upload',''),(557,'fa-user',''),(558,'fa-usd',''),(559,'fa-user-md',''),(560,'fa-user-plus',''),(561,'fa-user-times',''),(562,'fa-user-secret',''),(563,'fa-users',''),(564,'fa-venus',''),(565,'fa-venus-double',''),(566,'fa-venus-mars',''),(567,'fa-viacoin',''),(568,'fa-video-camera',''),(569,'fa-vimeo-square',''),(570,'fa-vine',''),(571,'fa-vk',''),(572,'fa-volume-down',''),(573,'fa-volume-up',''),(574,'fa-volume-off',''),(575,'fa-warning',''),(576,'fa-wechat',''),(577,'fa-weixin',''),(578,'fa-weibo',''),(579,'fa-wheelchair',''),(580,'fa-whatsapp',''),(581,'fa-windows',''),(582,'fa-wifi',''),(583,'fa-wordpress',''),(584,'fa-won',''),(585,'fa-wrench',''),(586,'fa-yahoo',''),(587,'fa-xing-square',''),(588,'fa-xing',''),(589,'fa-yen',''),(590,'fa-yelp',''),(591,'fa-youtube-play',''),(592,'fa-youtube',''),(593,'fa-youtube-square','');
/*!40000 ALTER TABLE `glyphicons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `abbr` varchar(2) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `flag` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en',1,'united-kingdom-flag-icon-32.png');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uuid` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL,
  `user_id` int NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `controller` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `meta` text COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '1',
  `uri` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_log_users1_idx` (`user_id`),
  CONSTRAINT `fk_log_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97492 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (97419,'abb9e2fc-1605-4bb4-8945-d409c48fb1b9','2025-09-15 16:06:49',11,'41.136.142.240','orders','save','','{\"GET\":[],\"POST\":{\"rows\":[{\"id\":\"37\",\"quantity\":\"1\",\"category\":\"\",\"name\":\"[Riz frire] Poulet sp\\u00e9cial\",\"price\":\"195\",\"vat\":\"15\"},{\"id\":\"46\",\"quantity\":\"1\",\"category\":\"\",\"name\":\"[Bol Renvers\\u00e9] Poulet sp\\u00e9cial\",\"price\":\"195\",\"vat\":\"15\"},{\"id\":\"106\",\"quantity\":\"2\",\"category\":\"\",\"name\":\"[Boissons] Chopine sprite\",\"price\":\"65\",\"vat\":\"15\"}],\"customer_id\":\"\",\"payment_mode_id\":\"1\",\"table_number\":\"8\"},\"FILES\":[]}',1,'orders/save'),(97420,'c3b33c3f-c7f9-49ec-9983-99a2af8f0970','2025-09-15 16:06:49',11,'41.136.142.240','orders','receipt','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/receipt/b92cd3b3-3311-41b5-a20b-0c08a5bdf3cc'),(97421,'108121d9-f7e4-46ae-aa0a-a50eebcd1ec6','2025-09-15 16:06:51',11,'41.136.142.240','orders','add','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/add'),(97422,'6a6f9610-e28e-46b2-99e7-92983b2c7df1','2025-09-15 16:06:55',11,'41.136.142.240','dashboard','index','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'dashboard/index'),(97423,'1ae38b6e-5c53-43ae-8b26-1808237ff9d5','2025-09-15 16:06:58',11,'41.136.142.240','reports','orders','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'reports/orders'),(97424,'ed376953-e670-46d8-8b31-0c5a965478ab','2025-09-15 16:07:00',11,'41.136.142.240','reports','orders','','{\"GET\":[],\"POST\":{\"type\":\"day\",\"singleDate\":\"2025-09-15\",\"mMonth\":\"9\",\"mYear\":\"2025\",\"year\":\"2025\",\"dateRange\":\"2025-09-15 - 2025-09-15\",\"options\":{\"sort_by\":\"order_date\",\"sort_dir\":\"desc\",\"payment_mode_only\":\"\",\"agent_only\":\"\"}},\"FILES\":[]}',1,'reports/orders'),(97425,'2326a79e-1d57-415b-96b1-7522e9d23e02','2025-09-15 16:07:07',11,'41.136.142.240','reports','orders','','{\"GET\":[],\"POST\":{\"type\":\"day\",\"singleDate\":\"2025-09-15\",\"mMonth\":\"9\",\"mYear\":\"2025\",\"year\":\"2025\",\"dateRange\":\"2025-09-15 - 2025-09-15\",\"options\":{\"sort_by\":\"order_date\",\"sort_dir\":\"desc\",\"payment_mode_only\":\"2\",\"agent_only\":\"\"}},\"FILES\":[]}',1,'reports/orders'),(97426,'6452c5e4-e079-4425-b0ed-845cd1365127','2025-09-15 16:07:11',11,'41.136.142.240','reports','orders','','{\"GET\":[],\"POST\":{\"type\":\"day\",\"singleDate\":\"2025-09-15\",\"mMonth\":\"9\",\"mYear\":\"2025\",\"year\":\"2025\",\"dateRange\":\"2025-09-15 - 2025-09-15\",\"options\":{\"sort_by\":\"order_date\",\"sort_dir\":\"desc\",\"payment_mode_only\":\"1\",\"agent_only\":\"\"}},\"FILES\":[]}',1,'reports/orders'),(97427,'2662043b-a010-42ff-bc55-79cb2c5e1b6f','2025-09-15 16:07:16',11,'41.136.142.240','reports','orders','','{\"GET\":[],\"POST\":{\"type\":\"day\",\"singleDate\":\"2025-09-15\",\"mMonth\":\"9\",\"mYear\":\"2025\",\"year\":\"2025\",\"dateRange\":\"2025-09-15 - 2025-09-15\",\"options\":{\"sort_by\":\"order_date\",\"sort_dir\":\"desc\",\"payment_mode_only\":\"1\",\"agent_only\":\"\"}},\"FILES\":[]}',1,'reports/orders'),(97428,'9105ccf1-5b07-4ef4-8bcb-a2ca2701d851','2025-09-15 16:07:18',11,'41.136.142.240','dashboard','index','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'dashboard/index'),(97429,'79f73da4-a8ed-48e6-98ba-c9564b5cda07','2025-09-15 16:07:25',11,'41.136.142.240','orders','add','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/add'),(97430,'42d32f2e-c88c-48cb-ac7b-1b20a1d55991','2025-09-15 16:25:16',11,'41.136.142.240','orders','add','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/add'),(97431,'5e1927ca-d8cc-41f7-8b7c-8304418bba57','2025-09-16 22:22:17',1,'::1','orders','add','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/add'),(97432,'2be767d8-a57b-4074-9ece-b3d1011685b6','2025-09-16 22:22:40',1,'::1','orders','add','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/add'),(97433,'0991eee9-9633-478c-b160-a5d47ec0876b','2025-09-16 22:22:57',1,'::1','orders','add','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/add'),(97434,'e344ecef-f79e-4e96-8f8f-ca88ef037e77','2025-09-16 22:23:36',1,'::1','orders','save','','{\"GET\":[],\"POST\":{\"rows\":[{\"id\":\"126\",\"quantity\":\"1\",\"category\":\"\",\"name\":\"+take away\",\"price\":\"20\",\"vat\":\"15\"},{\"id\":\"120\",\"quantity\":\"1\",\"category\":\"\",\"name\":\"+Portion poulet\",\"price\":\"60\",\"vat\":\"15\"},{\"id\":\"121\",\"quantity\":\"1\",\"category\":\"\",\"name\":\"+Portion boeuf\",\"price\":\"60\",\"vat\":\"15\"},{\"id\":\"146\",\"quantity\":\"1\",\"category\":\"\",\"name\":\"[Mine bouillie] moitier veg\",\"price\":\"75\",\"vat\":\"15\"},{\"id\":\"140\",\"quantity\":\"1\",\"category\":\"\",\"name\":\"[Mine bouillie] moitier agneau\",\"price\":\"125\",\"vat\":\"15\"},{\"id\":\"127\",\"quantity\":\"1\",\"category\":\"\",\"name\":\"+crevette\",\"price\":\"20\",\"vat\":\"15\"},{\"id\":\"71\",\"quantity\":\"1\",\"category\":\"\",\"name\":\"[Bouillion meefoon] Veg + crispy\",\"price\":\"155\",\"vat\":\"15\"}],\"customer_id\":\"\",\"payment_mode_id\":\"1\",\"table_number\":\"0\"},\"FILES\":[]}',1,'orders/save'),(97435,'bb92d06f-584c-4635-8b2d-4d76cecba04d','2025-09-16 22:23:36',1,'::1','orders','receipt','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/receipt/786bafa0-a8ca-44d2-a3a2-2cacbb0f21ab'),(97436,'850f97af-7c3a-4018-838d-f4fe1919ea93','2025-09-16 22:23:47',1,'::1','orders','add','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/add'),(97437,'777f603e-4dca-4087-aee0-574eada853e8','2025-09-16 22:24:03',1,'::1','dashboard','index','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'dashboard/index'),(97438,'6a17308a-587f-4a0b-9550-c475cd8ace31','2025-09-16 22:24:12',1,'::1','orders','add','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/add'),(97439,'0a4e6a67-7705-4560-9ff5-95b967e6bf76','2025-09-16 22:26:43',1,'::1','orders','add','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/add'),(97440,'c419acef-c38d-456d-a4f9-b7c1615ef727','2025-09-16 22:26:52',1,'::1','orders','add','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/add'),(97441,'5bd8042b-9630-4457-830a-70579c940575','2025-09-16 22:27:01',1,'::1','orders','add','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/add'),(97442,'cc11c9fa-3722-4371-a522-d34e7f8a2257','2025-09-16 22:27:33',1,'::1','orders','save','','{\"GET\":[],\"POST\":{\"rows\":[{\"id\":\"169\",\"quantity\":\"1\",\"category\":\"\",\"name\":\"[Snacks] chips\",\"price\":\"115\",\"vat\":\"15\"},{\"id\":\"126\",\"quantity\":\"1\",\"category\":\"\",\"name\":\"+take away\",\"price\":\"20\",\"vat\":\"15\"},{\"id\":\"177\",\"quantity\":\"1\",\"category\":\"\",\"name\":\"+ti rhum\",\"price\":\"50\",\"vat\":\"15\"},{\"id\":\"195\",\"quantity\":\"1\",\"category\":\"\",\"name\":\"+take away\",\"price\":\"10\",\"vat\":\"15\"},{\"id\":\"105\",\"quantity\":\"1\",\"category\":\"\",\"name\":\"[Boissons] Chopine coca\",\"price\":\"65\",\"vat\":\"15\"}],\"customer_id\":\"\",\"payment_mode_id\":\"1\",\"table_number\":\"0\"},\"FILES\":[]}',1,'orders/save'),(97443,'f4153916-b249-4db3-b853-881ccee67d86','2025-09-16 22:27:33',1,'::1','orders','receipt','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/receipt/5cf42aab-2e32-43ad-b657-df4211c3e8c3'),(97444,'6cb3e39e-4195-4396-af52-4a8165f6c847','2025-09-16 22:27:39',1,'::1','orders','add','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/add'),(97445,'f2eed9c6-aaa9-4094-b5ac-cbb2c31137b8','2025-09-16 23:23:52',1,'::1','orders','listing','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/listing'),(97446,'c671b24d-1dfe-47b8-b380-a182020e1dc7','2025-09-16 23:23:55',1,'::1','orders','listing','','{\"GET\":{\"start_date\":\"2025-09-01\",\"end_date\":\"2025-09-30\",\"search_text\":\"\",\"display\":\"10\"},\"POST\":[],\"FILES\":[]}',1,'orders/listing'),(97447,'dde2ae38-d2e9-4086-a256-6cb376e19152','2025-09-16 23:23:57',1,'::1','orders','receipt','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/receipt/5cf42aab-2e32-43ad-b657-df4211c3e8c3'),(97448,'e2ce18e7-797c-4ab7-a0f2-08dbf58458e7','2025-09-16 23:24:03',1,'::1','orders','listing','','{\"GET\":{\"start_date\":\"2025-09-01\",\"end_date\":\"2025-09-30\",\"search_text\":\"\",\"display\":\"10\"},\"POST\":[],\"FILES\":[]}',1,'orders/listing/2'),(97449,'a6f8a500-af29-408c-b218-f3ec75acb7ba','2025-09-16 23:24:34',1,'::1','orders','add','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/add'),(97450,'e5685d44-66e8-4da0-a53e-57bdc0412e60','2025-09-16 23:25:51',1,'::1','orders','save','','{\"GET\":[],\"POST\":{\"rows\":[{\"id\":\"2\",\"quantity\":\"1\",\"category\":\"\",\"name\":\"[Entr\\u00e9e] Salade verte\",\"price\":\"170\",\"vat\":\"15\"},{\"id\":\"4\",\"quantity\":\"2\",\"category\":\"\",\"name\":\"[Entr\\u00e9e] Saut\\u00e9 calamar\",\"price\":\"430\",\"vat\":\"15\"},{\"id\":\"108\",\"quantity\":\"1\",\"category\":\"\",\"name\":\"[Boissons] Coca 0.5\",\"price\":\"90\",\"vat\":\"15\"},{\"id\":\"103\",\"quantity\":\"2\",\"category\":\"\",\"name\":\"[Boissons] Eau 0.5\",\"price\":\"40\",\"vat\":\"15\"}],\"customer_id\":\"\",\"payment_mode_id\":\"1\",\"table_number\":\"0\"},\"FILES\":[]}',1,'orders/save'),(97451,'cef0772a-5b39-42eb-951f-fdf5b129b483','2025-09-16 23:25:51',1,'::1','orders','receipt','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/receipt/596ac57c-25a8-4562-a79a-da865ebabf8c'),(97452,'cbdd4522-eddb-4198-ba74-a935b0d5089f','2025-09-16 23:25:54',1,'::1','orders','add','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/add'),(97453,'c7c9c3ec-02bc-46c3-8fe3-0ba3a1769401','2025-09-16 23:48:58',1,'::1','orders','add','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/add'),(97454,'3a3d0a4f-ce21-45c5-aaef-22b070d16a6e','2025-09-16 23:52:28',1,'::1','orders','add','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/add'),(97455,'00318e0d-b5c0-4be3-9e5c-92d45e832f06','2025-09-17 00:12:50',1,'::1','orders','add','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/add'),(97456,'4558da9a-9022-400d-bf08-e09aca02d81b','2025-09-17 00:12:53',1,'::1','orders','add','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/add'),(97457,'7a81f23d-221f-489b-8bf0-ca627a14c59d','2025-09-17 00:13:18',1,'::1','orders','save','','{\"GET\":[],\"POST\":{\"rows\":[{\"id\":\"169\",\"quantity\":\"1\",\"category\":\"\",\"name\":\"[Snacks] chips\",\"price\":\"115\",\"vat\":\"15\"},{\"id\":\"9\",\"quantity\":\"1\",\"category\":\"\",\"name\":\"[Snacks] Croquette crevette\",\"price\":\"260\",\"vat\":\"15\"},{\"id\":\"126\",\"quantity\":\"1\",\"category\":\"\",\"name\":\"+take away\",\"price\":\"20\",\"vat\":\"15\"},{\"id\":\"104\",\"quantity\":\"2\",\"category\":\"\",\"name\":\"[Boissons] Eau 1L\",\"price\":\"70\",\"vat\":\"15\"},{\"id\":\"105\",\"quantity\":\"2\",\"category\":\"\",\"name\":\"[Boissons] Chopine coca\",\"price\":\"65\",\"vat\":\"15\"}],\"customer_id\":\"\",\"payment_mode_id\":\"1\",\"table_number\":\"0\"},\"FILES\":[]}',1,'orders/save'),(97458,'6cbc1e8e-e5df-4621-9084-306b8c99f134','2025-09-17 00:13:19',1,'::1','orders','receipt','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/receipt/f01fbc67-8f58-4f94-9447-0e164175711a'),(97459,'8bf85626-fd91-48f7-acd1-e3c350b6a791','2025-09-17 00:47:29',1,'::1','orders','add','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/add'),(97460,'6e87d664-d7df-4470-b209-28e0a12933b4','2025-09-17 00:47:33',1,'::1','orders','add','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/add'),(97461,'67b8c913-91f6-4145-b1fc-3ccb773f0c3d','2025-09-17 13:38:43',1,'::1','orders','add','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/add'),(97462,'d68298f0-8a58-4121-89ba-19e48db4ddaf','2025-09-17 13:38:48',1,'::1','orders','add','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/add'),(97463,'2e0a2562-f3db-401f-b6f0-6b78506e77bb','2025-09-18 11:24:36',1,'::1','orders','add','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/add'),(97464,'0325f2ac-d75b-4089-acbb-9ab87e305667','2025-09-18 11:24:45',1,'::1','orders','save','','{\"GET\":[],\"POST\":{\"rows\":[{\"id\":\"8\",\"quantity\":\"1\",\"category\":\"\",\"name\":\"[Snacks] Croquette poulet\",\"price\":\"200\",\"vat\":\"15\"},{\"id\":\"169\",\"quantity\":\"1\",\"category\":\"\",\"name\":\"[Snacks] chips\",\"price\":\"115\",\"vat\":\"15\"},{\"id\":\"11\",\"quantity\":\"1\",\"category\":\"\",\"name\":\"[Snacks] Croustillant crevette\",\"price\":\"260\",\"vat\":\"15\"},{\"id\":\"14\",\"quantity\":\"1\",\"category\":\"\",\"name\":\"[Snacks] Hakien poulet\",\"price\":\"175\",\"vat\":\"15\"}],\"customer_id\":\"\",\"payment_mode_id\":\"1\",\"table_number\":\"0\"},\"FILES\":[]}',1,'orders/save'),(97465,'094e7f9d-1e56-4381-bb95-0bb3a1b55a03','2025-09-18 11:24:45',1,'::1','orders','receipt','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/receipt/2abbee12-402f-4cb6-bab3-11e974a51f9e'),(97466,'0ae7e7ac-6e63-481b-9f98-8abe193b8a29','2025-09-18 11:24:48',1,'::1','orders','add','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/add'),(97467,'f5a0e6f3-8d45-4f1b-8c8f-aeafd078f812','2025-09-18 11:25:02',1,'::1','orders','save','','{\"GET\":[],\"POST\":{\"rows\":[{\"id\":\"55\",\"quantity\":\"1\",\"category\":\"\",\"name\":\"[Mine Renvers\\u00e9] Poulet sp\\u00e9cial\",\"price\":\"195\",\"vat\":\"15\"},{\"id\":\"127\",\"quantity\":\"12\",\"category\":\"\",\"name\":\"+crevette\",\"price\":\"20\",\"vat\":\"15\"}],\"customer_id\":\"\",\"payment_mode_id\":\"1\",\"table_number\":\"0\"},\"FILES\":[]}',1,'orders/save'),(97468,'8e01eec6-f88a-4422-b471-450450c6e76a','2025-09-18 11:25:02',1,'::1','orders','receipt','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/receipt/a68d5c42-83af-412c-ae11-0aa484a70318'),(97469,'de78f59d-c3bd-490b-b331-ad2ad666c078','2025-09-18 11:25:10',1,'::1','orders','add','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/add'),(97470,'31351dad-c5dc-4aaf-be14-af05414beafc','2025-09-27 15:56:09',1,'127.0.0.1','dashboard','index','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,''),(97471,'144d01e7-130f-41a8-8108-74530fa09cf6','2025-09-27 15:56:26',1,'127.0.0.1','dashboard','index','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,''),(97472,'7541085d-87f4-4b40-9f63-9d42b1c1dd1d','2025-09-27 15:56:33',1,'127.0.0.1','orders','add','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/add'),(97473,'a197906a-6cd6-4d34-8d81-08291c6a0d1a','2025-09-27 15:56:52',1,'127.0.0.1','orders','add','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/add'),(97474,'38cfcf06-ffc4-45dc-b2f1-9c31c593b0d5','2025-09-27 16:31:31',2,'::1','dashboard','index','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,''),(97475,'12823cb9-ac2b-43ce-91ea-9928b2ee5496','2025-09-27 16:31:38',2,'::1','orders','add','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/add'),(97476,'e09e155a-45f8-4e35-93da-e9242d29521f','2025-09-27 16:41:22',1,'127.0.0.1','orders','add','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/add'),(97477,'41ec670b-d293-48cc-80d9-8531d7237022','2025-09-27 16:41:38',2,'::1','orders','add','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/add'),(97478,'360927bd-cc67-486f-96de-3a22ce127ad6','2025-09-27 16:41:53',2,'::1','orders','add','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/add'),(97479,'69ce19e9-6b1b-4a80-9c5a-50a170b5598e','2025-09-27 16:42:37',2,'::1','orders','add','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/add'),(97480,'8235aa6b-8ba2-46b1-b5fe-8e4af9740c73','2025-09-27 17:00:14',1,'127.0.0.1','orders','add','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/add'),(97481,'9c45746f-bf09-4371-8e3e-fe7dbc1af4fc','2025-09-27 17:00:34',1,'127.0.0.1','orders','add','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/add'),(97482,'faf5ff97-c66f-4fec-a462-fae465878f15','2025-09-27 17:02:59',1,'127.0.0.1','orders','add','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/add'),(97483,'2ee7603c-c3f9-46e9-aa73-0f5e74dca8c8','2025-09-27 17:03:40',1,'127.0.0.1','orders','save','','{\"GET\":[],\"POST\":{\"rows\":[{\"id\":\"8\",\"quantity\":\"2\",\"category\":\"\",\"name\":\"[Snacks] Croquette poulet\",\"price\":\"200\",\"vat\":\"15\"},{\"id\":\"12\",\"quantity\":\"2\",\"category\":\"\",\"name\":\"[Snacks] Croustillant calmar\",\"price\":\"375\",\"vat\":\"15\"},{\"id\":\"108\",\"quantity\":\"2\",\"category\":\"\",\"name\":\"[Boissons] Coca 0.5\",\"price\":\"90\",\"vat\":\"15\"},{\"id\":\"104\",\"quantity\":\"1\",\"category\":\"\",\"name\":\"[Boissons] Eau 1L\",\"price\":\"70\",\"vat\":\"15\"}],\"customer_id\":\"\",\"payment_mode_id\":\"1\",\"table_number\":\"5\"},\"FILES\":[]}',1,'orders/save'),(97484,'80468a33-fbe7-4668-863c-f4af9444ef33','2025-09-27 17:03:40',1,'127.0.0.1','orders','receipt','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/receipt/8ad98a6a-a2b6-4b88-8a2a-b7b4f3b536c4'),(97485,'ba918856-5700-42ad-8ecd-163ef7cc21f8','2025-09-27 17:03:41',1,'127.0.0.1','orders','receipt','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/receipt/installHook.js.map'),(97486,'f8cfa885-a70f-4244-878c-57ab90c0fc8d','2025-09-27 17:34:32',1,'127.0.0.1','orders','add','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/add'),(97487,'7ec5eb4c-9dd9-4f40-9f3b-9896c78c6ecc','2025-09-27 17:34:38',1,'127.0.0.1','dashboard','index','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'dashboard/index'),(97488,'d4dff49a-3505-4b2a-a401-c045fe888f3a','2025-09-27 17:34:40',1,'127.0.0.1','orders','receipt','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/receipt/596ac57c-25a8-4562-a79a-da865ebabf8c'),(97489,'4bcb5d85-3030-409b-a25b-f50244d1c5b3','2025-09-27 17:34:42',1,'127.0.0.1','orders','add','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/add'),(97490,'265781ca-e0ab-4dd1-b554-04fe1f85fec5','2025-09-27 17:34:50',1,'127.0.0.1','orders','listing','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'orders/listing'),(97491,'6d79d8ae-1e66-402b-b788-b852cb1d46c3','2025-09-27 17:34:51',1,'127.0.0.1','users','signout','','{\"GET\":[],\"POST\":[],\"FILES\":[]}',1,'users/signout');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_history`
--

DROP TABLE IF EXISTS `login_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` text,
  `user_id` int DEFAULT NULL,
  `datetime` datetime NOT NULL,
  `result` enum('SUCCESS','FAILED','OTHER') NOT NULL,
  `ip` text NOT NULL,
  `result_other` text NOT NULL,
  `os` varchar(100) NOT NULL,
  `browser` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `fk_login_history_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1934 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_history`
--

LOCK TABLES `login_history` WRITE;
/*!40000 ALTER TABLE `login_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` enum('menu','section','divider') DEFAULT 'menu',
  `nom` varchar(30) DEFAULT NULL,
  `controller` varchar(30) DEFAULT NULL,
  `action` varchar(30) DEFAULT NULL,
  `params` varchar(30) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  `class` varchar(50) DEFAULT NULL,
  `display_order` int DEFAULT '50',
  `parent_menu` int DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '1',
  `Normal` int DEFAULT '0',
  `Admin` int DEFAULT '0',
  `Root` int DEFAULT '1',
  `module` int NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `backoffice` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=516 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'menu','Dashboard','dashboard','index',NULL,NULL,'fa-tachometer-alt',1,0,1,1,1,1,0,1,0),(10,'menu','Users','users','',NULL,NULL,'fa-users',2,0,1,0,1,1,0,1,1),(11,'menu','Listing','users','listing',NULL,NULL,'fa-list',10,10,1,1,1,1,0,1,1),(12,'menu','Add','users','add',NULL,NULL,'fa-plus-square',20,10,1,0,1,1,0,1,1),(13,'menu','Edit','users','edit',NULL,NULL,'',999,0,0,0,1,1,0,1,1),(14,'menu','Delete','users','delete',NULL,NULL,'',999,0,0,0,1,1,0,1,1),(15,'menu','Permission','users','permission',NULL,NULL,'',999,0,0,0,1,1,0,1,1),(16,'menu','Activate','users','activate',NULL,NULL,'',999,0,0,0,1,1,0,1,1),(17,'menu','De-Activate','users','deactivate',NULL,NULL,'',999,0,0,0,1,1,0,1,1),(18,'menu','My Profile','users','myprofile',NULL,NULL,'',999,0,0,1,1,1,0,1,1),(20,'menu','Menu','menu','',NULL,NULL,'fa-bars',4,0,1,NULL,0,1,0,1,1),(21,'menu','Listing','menu','listing',NULL,NULL,'fa-list',10,20,1,NULL,0,1,0,1,1),(22,'menu','Add','menu','add',NULL,NULL,'fa-plus-square',20,20,1,1,0,1,0,1,1),(23,'menu','Edit','menu','edit',NULL,NULL,'',999,0,0,NULL,0,1,0,1,1),(24,'menu','Delete','menu','delete',NULL,NULL,'',999,0,0,0,0,1,0,1,1),(25,'menu','CRUD','menu','crud',NULL,NULL,'fa-angle-right',30,20,1,NULL,0,1,0,1,1),(110,'menu','Settings','settings','',NULL,NULL,'fa-cogs',6,0,1,NULL,1,1,0,1,1),(111,'menu','Company','settings','company',NULL,NULL,'fa-angle-right',10,110,1,0,1,1,0,1,1),(112,'menu','Params','settings','params',NULL,NULL,'fa-angle-right',20,110,1,0,1,1,0,1,1),(113,'menu','Menu Order','settings','menu_order',NULL,NULL,'fa-angle-right',30,110,1,NULL,NULL,1,0,1,1),(135,'menu','Users','users','',NULL,NULL,'fa-square',100,0,1,NULL,1,1,0,0,1),(158,'menu','Notifications','settings','notifications',NULL,NULL,'fa-angle-right',50,110,1,NULL,NULL,1,0,1,1),(159,'menu','Audit Trail','audittrail','',NULL,NULL,'fa-history',7,0,1,NULL,NULL,1,0,1,1),(160,'menu','Listing','audittrail','listing',NULL,NULL,'fa-list',10,159,1,NULL,NULL,1,0,1,1),(161,'menu','View','audittrail','view',NULL,NULL,'',50,0,0,NULL,NULL,1,0,1,1),(260,'menu','Departments','departments','',NULL,NULL,'fa-building',3,0,1,NULL,0,1,0,1,1),(261,'menu','Listing','departments','listing',NULL,NULL,'fa-list',10,260,1,0,0,1,0,1,1),(262,'menu','Add','departments','add',NULL,NULL,'fa-plus-square',20,260,1,0,0,1,0,1,1),(263,'menu','Edit','departments','edit',NULL,NULL,'',999,0,0,0,0,1,0,1,1),(264,'menu','Delete','departments','delete',NULL,NULL,'',999,0,0,0,0,1,0,1,1),(380,'menu','Payment Modes','paymentmodes','',NULL,NULL,'fa-euro-sign',5,0,1,0,1,1,0,1,1),(381,'menu','Listing','paymentmodes','listing',NULL,NULL,'fa-list',10,380,1,0,1,1,0,1,1),(382,'menu','Add','paymentmodes','add',NULL,NULL,'fa-plus-square',20,380,1,0,1,1,0,1,1),(383,'menu','Edit','paymentmodes','edit',NULL,NULL,'',999,0,0,0,1,1,0,1,1),(384,'menu','Delete','paymentmodes','delete',NULL,NULL,'',999,0,0,0,1,1,0,1,1),(410,'menu','Orders','orders','',NULL,NULL,'fa-euro-sign',60,0,1,1,1,1,0,1,0),(411,'menu','Listing','orders','listing',NULL,NULL,'fa-list',10,410,1,1,1,1,0,1,0),(412,'menu','Add','orders','add',NULL,NULL,'fa-plus-square',20,410,1,1,1,1,0,1,0),(413,'menu','Edit','orders','edit',NULL,NULL,'',999,0,0,1,1,1,0,1,0),(414,'menu','View','orders','View',NULL,NULL,'',999,0,0,1,1,1,0,1,0),(415,'menu','Delete','orders','delete',NULL,NULL,'',999,0,0,1,1,1,0,1,0),(430,'menu','Products','products','',NULL,NULL,'fa-truck',70,0,1,0,1,1,0,1,1),(431,'menu','Listing','products','listing',NULL,NULL,'fa-list',10,430,1,0,1,1,0,1,1),(432,'menu','Add','products','add',NULL,NULL,'fa-plus-square',20,430,1,0,1,1,0,1,1),(433,'menu','Edit','products','edit',NULL,NULL,'',999,0,0,0,1,1,0,1,1),(434,'menu','View','products','View',NULL,NULL,'',999,0,0,0,1,1,0,1,1),(435,'menu','Delete','products','delete',NULL,NULL,'',999,0,0,0,1,1,0,1,1),(440,'menu','Product Categories','product_categories','',NULL,NULL,'fa-truck',80,0,1,0,1,1,0,1,1),(441,'menu','Listing','product_categories','listing',NULL,NULL,'fa-list',10,440,1,0,1,1,0,1,1),(442,'menu','Add','product_categories','add',NULL,NULL,'fa-plus-square',20,440,1,0,1,1,0,1,1),(443,'menu','Edit','product_categories','edit',NULL,NULL,'',999,0,0,0,1,1,0,1,1),(444,'menu','View','product_categories','View',NULL,NULL,'',999,0,0,0,1,1,0,1,1),(445,'menu','Delete','product_categories','delete',NULL,NULL,'',999,0,0,0,1,1,0,1,1),(450,'menu','Customers','customers','',NULL,NULL,'fa-users',70,0,1,1,1,1,0,1,0),(451,'menu','Listing','customers','listing',NULL,NULL,'fa-list',10,450,1,1,1,1,0,1,0),(452,'menu','Add','customers','add',NULL,NULL,'fa-plus-square',20,450,1,1,1,1,0,1,0),(453,'menu','Edit','customers','edit',NULL,NULL,'',999,0,0,1,1,1,0,1,0),(454,'menu','View','customers','View',NULL,NULL,'',999,0,0,1,1,1,0,1,0),(455,'menu','Delete','customers','delete',NULL,NULL,'',999,0,0,1,1,1,0,1,0),(506,'menu','Reports','reports','',NULL,NULL,'fa-list',100,0,1,0,1,1,0,1,1),(507,'menu','Selector','reports','index',NULL,NULL,'fa-list',10,0,0,0,1,1,0,1,1),(508,'menu','Orders','reports','orders',NULL,NULL,'fa-list',10,506,1,0,1,1,0,1,1),(509,'menu','Products','reports','products',NULL,NULL,'fa-list',20,506,1,0,1,1,0,1,1),(510,'menu','Addons','addons','',NULL,NULL,'fa-puzzle-piece',100,0,1,0,1,1,0,1,1),(511,'menu','Listing','addons','listing',NULL,NULL,'fa-list',10,510,1,0,1,1,0,1,1),(512,'menu','Add','addons','add',NULL,NULL,'fa-plus-square',10,510,1,0,1,1,0,1,1),(513,'menu','Edit','addons','edit',NULL,NULL,'fa-list',10,0,0,0,1,1,0,1,1),(514,'menu','View','addons','view',NULL,NULL,'fa-list',10,0,0,0,1,1,0,1,1),(515,'menu','Delete','addons','delete',NULL,NULL,'fa-list',20,0,0,0,1,1,0,1,1);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `version` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (19);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` float NOT NULL,
  `price` float NOT NULL,
  `vat` enum('0','15') COLLATE utf8mb4_general_ci NOT NULL DEFAULT '15',
  PRIMARY KEY (`id`),
  KEY `fk_order_id` (`order_id`),
  KEY `fk_order_product` (`product_id`),
  CONSTRAINT `fk_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_order_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=118404 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uuid` varchar(40) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `order_date` datetime NOT NULL,
  `amount` float NOT NULL,
  `payment_mode_id` int NOT NULL DEFAULT '1',
  `discount` float NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `document_number` varchar(20) NOT NULL,
  `department_id` int NOT NULL DEFAULT '1',
  `customer_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `table_number` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_orders_users_idx` (`created_by`),
  KEY `fk_order_dept` (`department_id`),
  CONSTRAINT `fk_order_dept` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  CONSTRAINT `fk_orders_users` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `orders_chk_1` CHECK (json_valid(`customer_details`))
) ENGINE=InnoDB AUTO_INCREMENT=25883 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `params`
--

DROP TABLE IF EXISTS `params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `params` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `value` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `params`
--

LOCK TABLES `params` WRITE;
/*!40000 ALTER TABLE `params` DISABLE KEYS */;
INSERT INTO `params` VALUES (1,'rows_per_page','25',1),(3,'theme','AdminLTE',1),(4,'sidebar_collapse','0',1),(5,'theme_color','red',1),(6,'rows_per_page_vehicles','10',1),(7,'rows_per_page_clients','10',1),(8,'rows_per_page_suppliers','10',1),(9,'logo','logo-casse-croute.jpg',1),(11,'send_enquiries_to','[]',1),(13,'current_version','1.00',1),(14,'smtp_settings','{\"hostname\":\"mail.staging-server.xyz\",\"username\":\"casse-croute@staging-server.xyz\",\"from\":\"casse-croute@staging-server.xyz\",\"displayname\":\"Coin Casse Croute\",\"password\":\"J*Ue4HF.a3RG\",\"port\":\"587\"}',1),(16,'currency','Rs',1),(35,'dashboard','[{\"label\":\"Sales\",\"url\":\"sales\\/add\",\"class\":\"btn-info\",\"icon\":\"fa-dollar\",\"width\":\"4\"},{\"label\":\"Purchases\",\"url\":\"purchases\\/add\",\"class\":\"btn-warning\",\"icon\":\"fa-dollar\",\"width\":\"4\"},{\"label\":\"Products\",\"url\":\"products\\/listing\",\"class\":\"btn-danger\",\"icon\":\"fa-list\",\"width\":\"4\"},{\"label\":\"Categories\",\"url\":\"productcategory\\/listing\",\"class\":\"btn-info\",\"icon\":\"fa-list\",\"width\":\"4\"},{\"label\":\"Inventory\",\"url\":\"#inventory\\/listing\",\"class\":\"btn-warning\",\"icon\":\"fa-list\",\"width\":\"4\"},{\"label\":\"Customers\",\"url\":\"customers\\/listing\",\"class\":\"btn-primary\",\"icon\":\"fa-users\",\"width\":\"4\"},{\"label\":\"Suppliers\",\"url\":\"suppliers\\/listing\",\"class\":\"btn-danger\",\"icon\":\"fa-users\",\"width\":\"4\"},{\"label\":\"Users\",\"url\":\"users\\/listing\",\"class\":\"btn-info\",\"icon\":\"fa-users\",\"width\":\"4\"}]',1),(36,'stockref_lastnumber','142',1),(37,'stockref_length','8',1),(38,'sales_last_number','25883',1),(39,'sales_maxlength','10',1),(40,'sales_prefix','INV',1),(50,'testing_mode','no',1),(61,'notifications','[{\"stage\":\"1\",\"user\":\"2\"},{\"stage\":\"1\",\"user\":\"1\"},{\"stage\":\"23\",\"user\":\"2\"},{\"stage\":\"23\",\"user\":\"1\"},{\"stage\":\"9\",\"user\":\"5\"},{\"stage\":\"9\",\"user\":\"2\"},{\"stage\":\"9\",\"user\":\"1\"},{\"stage\":\"10\",\"user\":\"4\"},{\"stage\":\"10\",\"user\":\"2\"}]',1),(68,'login_background','[\r\n{\"image\":\"breakfast-2649620_1920.jpg\"},\r\n{\"image\":\"businesses-2897328_1920.jpg\"},\r\n{\"image\":\"cafe-789635_1920.jpg\"},\r\n{\"image\":\"city-4298285_1920.jpg\"},\r\n{\"image\":\"people-8563622_1920.jpg\"},\r\n{\"image\":\"restaurant-237060_1920.jpg\"}\r\n]',1),(69,'barcode','no',1),(70,'footer_message','Thank you for your visit',1),(71,'total_items','items',1),(72,'product_last_number','165',1),(73,'product_maxlength','5',1),(74,'product_prefix','',1),(75,'addon_last_number','25',1),(76,'addon_maxlength','8',1),(77,'addon_prefix','ADD',1);
/*!40000 ALTER TABLE `params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_modes`
--

DROP TABLE IF EXISTS `payment_modes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_modes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uuid` varchar(40) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `attachment` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_modes`
--

LOCK TABLES `payment_modes` WRITE;
/*!40000 ALTER TABLE `payment_modes` DISABLE KEYS */;
INSERT INTO `payment_modes` VALUES (1,'8c1189ba-6b24-4d64-88ec-debeca965e6b','Cash',1,1,'2022-11-15 22:02:51',0),(2,'eb4c6f5b-fa17-4c01-8693-56ae749ecb60','MCB Juice',1,1,'2022-11-15 22:02:51',1),(4,'ba75a19d-4284-4106-b425-a9d523aa670d','MyT Money',0,1,'2023-01-16 16:08:23',1);
/*!40000 ALTER TABLE `payment_modes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `profile_id` int DEFAULT NULL,
  `menu_id` int DEFAULT NULL,
  `create` int DEFAULT NULL,
  `read` int DEFAULT NULL,
  `update` int DEFAULT NULL,
  `delete` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_permissions_menu1_idx` (`menu_id`),
  KEY `fk_permissions_users1_idx` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1116 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,1,NULL,1,0,1,0,0),(2,1,NULL,10,0,1,0,0),(3,1,NULL,11,0,1,0,0),(4,1,NULL,12,0,1,0,0),(5,1,NULL,13,0,1,0,0),(6,1,NULL,14,0,1,0,0),(7,1,NULL,15,0,1,0,0),(8,1,NULL,16,0,1,0,0),(9,1,NULL,17,0,1,0,0),(10,1,NULL,18,0,1,0,0),(17,1,NULL,95,0,1,0,0),(18,1,NULL,110,0,1,0,0),(19,1,NULL,111,0,1,0,0),(20,1,NULL,112,0,1,0,0),(21,1,NULL,113,0,1,0,0),(22,1,NULL,158,0,1,0,0),(23,1,NULL,159,0,1,0,0),(24,1,NULL,160,0,1,0,0),(25,1,NULL,161,0,1,0,0),(26,1,NULL,170,0,1,0,0),(27,1,NULL,171,0,1,0,0),(28,1,NULL,172,0,1,0,0),(29,1,NULL,173,0,1,0,0),(30,1,NULL,174,0,1,0,0),(31,1,NULL,180,0,1,0,0),(32,1,NULL,181,0,1,0,0),(33,1,NULL,182,0,1,0,0),(34,1,NULL,183,0,1,0,0),(35,1,NULL,184,0,1,0,0),(36,1,NULL,190,0,1,0,0),(37,1,NULL,191,0,1,0,0),(38,1,NULL,192,0,1,0,0),(39,1,NULL,193,0,1,0,0),(40,1,NULL,194,0,1,0,0),(41,1,NULL,200,0,1,0,0),(42,1,NULL,201,0,1,0,0),(43,1,NULL,202,0,1,0,0),(44,1,NULL,203,0,1,0,0),(45,1,NULL,204,0,1,0,0),(46,1,NULL,210,0,1,0,0),(47,1,NULL,211,0,1,0,0),(48,1,NULL,212,0,1,0,0),(49,1,NULL,213,0,1,0,0),(50,1,NULL,214,0,1,0,0),(51,1,NULL,220,0,1,0,0),(52,1,NULL,221,0,1,0,0),(53,1,NULL,222,0,1,0,0),(54,1,NULL,223,0,1,0,0),(55,1,NULL,224,0,1,0,0),(56,1,NULL,230,0,1,0,0),(57,1,NULL,231,0,1,0,0),(58,1,NULL,232,0,1,0,0),(59,1,NULL,233,0,1,0,0),(60,1,NULL,234,0,1,0,0),(61,1,NULL,240,0,1,0,0),(62,1,NULL,241,0,1,0,0),(63,1,NULL,242,0,1,0,0),(64,1,NULL,243,0,1,0,0),(65,1,NULL,244,0,1,0,0),(66,1,NULL,250,0,1,0,0),(67,1,NULL,251,0,1,0,0),(68,1,NULL,252,0,1,0,0),(69,1,NULL,253,0,1,0,0),(70,1,NULL,254,0,1,0,0),(71,1,NULL,260,0,1,0,0),(72,1,NULL,261,0,1,0,0),(73,1,NULL,262,0,1,0,0),(74,1,NULL,263,0,1,0,0),(75,1,NULL,264,0,1,0,0),(77,1,NULL,340,0,1,0,0),(78,1,NULL,341,0,1,0,0),(79,1,NULL,342,0,1,0,0),(80,1,NULL,343,0,1,0,0),(81,1,NULL,344,0,1,0,0),(82,1,NULL,350,0,1,0,0),(83,1,NULL,351,0,1,0,0),(84,1,NULL,352,0,1,0,0),(85,1,NULL,353,0,1,0,0),(86,1,NULL,354,0,1,0,0),(87,1,NULL,360,0,1,0,0),(88,1,NULL,361,0,1,0,0),(89,1,NULL,362,0,1,0,0),(90,1,NULL,363,0,1,0,0),(91,1,NULL,364,0,1,0,0),(94,1,NULL,377,0,1,0,0),(95,1,NULL,380,0,1,0,0),(96,1,NULL,381,0,1,0,0),(97,1,NULL,382,0,1,0,0),(98,1,NULL,383,0,1,0,0),(99,1,NULL,384,0,1,0,0),(100,1,NULL,390,0,1,0,0),(101,1,NULL,391,0,1,0,0),(102,1,NULL,392,0,1,0,0),(103,1,NULL,393,0,1,0,0),(104,1,NULL,394,0,1,0,0),(442,1,NULL,395,0,1,0,0),(508,1,NULL,20,0,1,0,0),(509,1,NULL,21,0,1,0,0),(510,1,NULL,23,0,1,0,0),(511,1,NULL,24,0,1,0,0),(512,1,NULL,22,0,1,0,0),(513,1,NULL,25,0,1,0,0),(585,1,NULL,410,0,1,0,0),(586,1,NULL,411,0,1,0,0),(587,1,NULL,413,0,1,0,0),(588,1,NULL,414,0,1,0,0),(589,1,NULL,415,0,1,0,0),(590,1,NULL,412,0,1,0,0),(603,1,NULL,430,0,1,0,0),(604,1,NULL,431,0,1,0,0),(605,1,NULL,433,0,1,0,0),(606,1,NULL,434,0,1,0,0),(607,1,NULL,435,0,1,0,0),(608,1,NULL,432,0,1,0,0),(609,1,NULL,440,0,1,0,0),(610,1,NULL,441,0,1,0,0),(611,1,NULL,443,0,1,0,0),(612,1,NULL,444,0,1,0,0),(613,1,NULL,445,0,1,0,0),(614,1,NULL,442,0,1,0,0),(627,1,NULL,450,0,1,0,0),(628,1,NULL,451,0,1,0,0),(629,1,NULL,453,0,1,0,0),(630,1,NULL,454,0,1,0,0),(631,1,NULL,455,0,1,0,0),(632,1,NULL,452,0,1,0,0),(633,2,NULL,1,0,1,0,0),(634,2,NULL,10,0,1,0,0),(635,2,NULL,11,0,1,0,0),(636,2,NULL,13,0,1,0,0),(637,2,NULL,14,0,1,0,0),(638,2,NULL,15,0,1,0,0),(639,2,NULL,16,0,1,0,0),(640,2,NULL,17,0,1,0,0),(641,2,NULL,18,0,1,0,0),(642,2,NULL,12,0,1,0,0),(643,2,NULL,380,0,1,0,0),(644,2,NULL,381,0,1,0,0),(645,2,NULL,383,0,1,0,0),(646,2,NULL,384,0,1,0,0),(647,2,NULL,382,0,1,0,0),(648,2,NULL,110,0,1,0,0),(649,2,NULL,111,0,1,0,0),(650,2,NULL,112,0,1,0,0),(651,2,NULL,113,0,1,0,0),(652,2,NULL,158,0,1,0,0),(659,2,NULL,430,0,1,0,0),(660,2,NULL,431,0,1,0,0),(661,2,NULL,433,0,1,0,0),(662,2,NULL,434,0,1,0,0),(663,2,NULL,435,0,1,0,0),(664,2,NULL,432,0,1,0,0),(665,2,NULL,450,0,1,0,0),(666,2,NULL,451,0,1,0,0),(667,2,NULL,453,0,1,0,0),(668,2,NULL,454,0,1,0,0),(669,2,NULL,455,0,1,0,0),(670,2,NULL,452,0,1,0,0),(671,2,NULL,440,0,1,0,0),(672,2,NULL,441,0,1,0,0),(673,2,NULL,443,0,1,0,0),(674,2,NULL,444,0,1,0,0),(675,2,NULL,445,0,1,0,0),(676,2,NULL,442,0,1,0,0),(677,2,NULL,260,0,1,0,0),(678,2,NULL,261,0,1,0,0),(679,2,NULL,263,0,1,0,0),(680,2,NULL,264,0,1,0,0),(681,2,NULL,262,0,1,0,0),(682,2,NULL,410,0,1,0,0),(683,2,NULL,411,0,1,0,0),(684,2,NULL,413,0,1,0,0),(685,2,NULL,414,0,1,0,0),(686,2,NULL,415,0,1,0,0),(687,2,NULL,412,0,1,0,0),(797,6,NULL,1,0,1,0,0),(798,6,NULL,410,0,1,0,0),(799,6,NULL,411,0,1,0,0),(800,6,NULL,413,0,1,0,0),(801,6,NULL,414,0,1,0,0),(802,6,NULL,415,0,1,0,0),(803,6,NULL,412,0,1,0,0),(804,6,NULL,450,0,1,0,0),(805,6,NULL,451,0,1,0,0),(806,6,NULL,453,0,1,0,0),(807,6,NULL,454,0,1,0,0),(808,6,NULL,455,0,1,0,0),(809,6,NULL,452,0,1,0,0),(810,7,NULL,1,0,1,0,0),(811,7,NULL,410,0,1,0,0),(812,7,NULL,411,0,1,0,0),(813,7,NULL,413,0,1,0,0),(814,7,NULL,414,0,1,0,0),(815,7,NULL,415,0,1,0,0),(816,7,NULL,412,0,1,0,0),(817,7,NULL,450,0,1,0,0),(818,7,NULL,451,0,1,0,0),(819,7,NULL,453,0,1,0,0),(820,7,NULL,454,0,1,0,0),(821,7,NULL,455,0,1,0,0),(822,7,NULL,452,0,1,0,0),(823,8,NULL,1,0,1,0,0),(824,8,NULL,10,0,1,0,0),(825,8,NULL,11,0,1,0,0),(826,8,NULL,13,0,1,0,0),(827,8,NULL,14,0,1,0,0),(828,8,NULL,15,0,1,0,0),(829,8,NULL,16,0,1,0,0),(830,8,NULL,17,0,1,0,0),(831,8,NULL,18,0,1,0,0),(832,8,NULL,12,0,1,0,0),(833,8,NULL,380,0,1,0,0),(834,8,NULL,381,0,1,0,0),(835,8,NULL,383,0,1,0,0),(836,8,NULL,384,0,1,0,0),(837,8,NULL,382,0,1,0,0),(838,8,NULL,110,0,1,0,0),(839,8,NULL,111,0,1,0,0),(840,8,NULL,112,0,1,0,0),(841,8,NULL,410,0,1,0,0),(842,8,NULL,411,0,1,0,0),(843,8,NULL,413,0,1,0,0),(844,8,NULL,414,0,1,0,0),(845,8,NULL,415,0,1,0,0),(846,8,NULL,412,0,1,0,0),(853,8,NULL,430,0,1,0,0),(854,8,NULL,431,0,1,0,0),(855,8,NULL,433,0,1,0,0),(856,8,NULL,434,0,1,0,0),(857,8,NULL,435,0,1,0,0),(858,8,NULL,432,0,1,0,0),(859,8,NULL,450,0,1,0,0),(860,8,NULL,451,0,1,0,0),(861,8,NULL,453,0,1,0,0),(862,8,NULL,454,0,1,0,0),(863,8,NULL,455,0,1,0,0),(864,8,NULL,452,0,1,0,0),(865,8,NULL,440,0,1,0,0),(866,8,NULL,441,0,1,0,0),(867,8,NULL,443,0,1,0,0),(868,8,NULL,444,0,1,0,0),(869,8,NULL,445,0,1,0,0),(870,8,NULL,442,0,1,0,0),(871,2,NULL,506,0,1,0,0),(872,2,NULL,508,0,1,0,0),(873,2,NULL,507,0,1,0,0),(874,2,NULL,509,0,1,0,0),(875,8,NULL,506,0,1,0,0),(876,8,NULL,508,0,1,0,0),(877,8,NULL,507,0,1,0,0),(878,8,NULL,509,0,1,0,0),(879,9,NULL,1,0,1,0,0),(880,9,NULL,10,0,1,0,0),(881,9,NULL,11,0,1,0,0),(882,9,NULL,13,0,1,0,0),(883,9,NULL,14,0,1,0,0),(884,9,NULL,15,0,1,0,0),(885,9,NULL,16,0,1,0,0),(886,9,NULL,17,0,1,0,0),(887,9,NULL,18,0,1,0,0),(888,9,NULL,12,0,1,0,0),(889,9,NULL,380,0,1,0,0),(890,9,NULL,381,0,1,0,0),(891,9,NULL,383,0,1,0,0),(892,9,NULL,384,0,1,0,0),(893,9,NULL,382,0,1,0,0),(894,9,NULL,110,0,1,0,0),(895,9,NULL,111,0,1,0,0),(896,9,NULL,112,0,1,0,0),(897,9,NULL,410,0,1,0,0),(898,9,NULL,411,0,1,0,0),(899,9,NULL,413,0,1,0,0),(900,9,NULL,414,0,1,0,0),(901,9,NULL,415,0,1,0,0),(902,9,NULL,412,0,1,0,0),(903,9,NULL,430,0,1,0,0),(904,9,NULL,431,0,1,0,0),(905,9,NULL,433,0,1,0,0),(906,9,NULL,434,0,1,0,0),(907,9,NULL,435,0,1,0,0),(908,9,NULL,432,0,1,0,0),(909,9,NULL,450,0,1,0,0),(910,9,NULL,451,0,1,0,0),(911,9,NULL,453,0,1,0,0),(912,9,NULL,454,0,1,0,0),(913,9,NULL,455,0,1,0,0),(914,9,NULL,452,0,1,0,0),(915,9,NULL,440,0,1,0,0),(916,9,NULL,441,0,1,0,0),(917,9,NULL,443,0,1,0,0),(918,9,NULL,444,0,1,0,0),(919,9,NULL,445,0,1,0,0),(920,9,NULL,442,0,1,0,0),(921,9,NULL,506,0,1,0,0),(922,9,NULL,508,0,1,0,0),(923,9,NULL,507,0,1,0,0),(924,9,NULL,509,0,1,0,0),(925,10,NULL,1,0,1,0,0),(926,10,NULL,410,0,1,0,0),(927,10,NULL,411,0,1,0,0),(928,10,NULL,413,0,1,0,0),(929,10,NULL,414,0,1,0,0),(930,10,NULL,415,0,1,0,0),(931,10,NULL,412,0,1,0,0),(932,10,NULL,450,0,1,0,0),(933,10,NULL,451,0,1,0,0),(934,10,NULL,453,0,1,0,0),(935,10,NULL,454,0,1,0,0),(936,10,NULL,455,0,1,0,0),(937,10,NULL,452,0,1,0,0),(938,2,NULL,510,0,1,0,0),(939,2,NULL,511,0,1,0,0),(940,2,NULL,513,0,1,0,0),(941,2,NULL,514,0,1,0,0),(942,2,NULL,515,0,1,0,0),(943,2,NULL,512,0,1,0,0),(944,8,NULL,510,0,1,0,0),(945,8,NULL,511,0,1,0,0),(946,8,NULL,513,0,1,0,0),(947,8,NULL,514,0,1,0,0),(948,8,NULL,515,0,1,0,0),(949,8,NULL,512,0,1,0,0),(950,11,NULL,1,0,1,0,0),(951,11,NULL,10,0,1,0,0),(952,11,NULL,11,0,1,0,0),(953,11,NULL,13,0,1,0,0),(954,11,NULL,14,0,1,0,0),(955,11,NULL,15,0,1,0,0),(956,11,NULL,16,0,1,0,0),(957,11,NULL,17,0,1,0,0),(958,11,NULL,18,0,1,0,0),(959,11,NULL,12,0,1,0,0),(960,11,NULL,380,0,1,0,0),(961,11,NULL,381,0,1,0,0),(962,11,NULL,383,0,1,0,0),(963,11,NULL,384,0,1,0,0),(964,11,NULL,382,0,1,0,0),(965,11,NULL,110,0,1,0,0),(966,11,NULL,111,0,1,0,0),(967,11,NULL,112,0,1,0,0),(968,11,NULL,410,0,1,0,0),(969,11,NULL,411,0,1,0,0),(970,11,NULL,413,0,1,0,0),(971,11,NULL,414,0,1,0,0),(972,11,NULL,415,0,1,0,0),(973,11,NULL,412,0,1,0,0),(974,11,NULL,450,0,1,0,0),(975,11,NULL,451,0,1,0,0),(976,11,NULL,453,0,1,0,0),(977,11,NULL,454,0,1,0,0),(978,11,NULL,455,0,1,0,0),(979,11,NULL,452,0,1,0,0),(980,11,NULL,430,0,1,0,0),(981,11,NULL,431,0,1,0,0),(982,11,NULL,433,0,1,0,0),(983,11,NULL,434,0,1,0,0),(984,11,NULL,435,0,1,0,0),(985,11,NULL,432,0,1,0,0),(986,11,NULL,440,0,1,0,0),(987,11,NULL,441,0,1,0,0),(988,11,NULL,443,0,1,0,0),(989,11,NULL,444,0,1,0,0),(990,11,NULL,445,0,1,0,0),(991,11,NULL,442,0,1,0,0),(992,11,NULL,506,0,1,0,0),(993,11,NULL,508,0,1,0,0),(994,11,NULL,507,0,1,0,0),(995,11,NULL,509,0,1,0,0),(996,11,NULL,510,0,1,0,0),(997,11,NULL,511,0,1,0,0),(998,11,NULL,513,0,1,0,0),(999,11,NULL,514,0,1,0,0),(1000,11,NULL,515,0,1,0,0),(1001,11,NULL,512,0,1,0,0),(1002,12,NULL,1,0,1,0,0),(1003,12,NULL,10,0,1,0,0),(1004,12,NULL,11,0,1,0,0),(1005,12,NULL,13,0,1,0,0),(1006,12,NULL,14,0,1,0,0),(1007,12,NULL,15,0,1,0,0),(1008,12,NULL,16,0,1,0,0),(1009,12,NULL,17,0,1,0,0),(1010,12,NULL,18,0,1,0,0),(1011,12,NULL,12,0,1,0,0),(1012,12,NULL,380,0,1,0,0),(1013,12,NULL,381,0,1,0,0),(1014,12,NULL,383,0,1,0,0),(1015,12,NULL,384,0,1,0,0),(1016,12,NULL,382,0,1,0,0),(1017,12,NULL,110,0,1,0,0),(1018,12,NULL,111,0,1,0,0),(1019,12,NULL,112,0,1,0,0),(1020,12,NULL,410,0,1,0,0),(1021,12,NULL,411,0,1,0,0),(1022,12,NULL,413,0,1,0,0),(1023,12,NULL,414,0,1,0,0),(1024,12,NULL,415,0,1,0,0),(1025,12,NULL,412,0,1,0,0),(1026,12,NULL,450,0,1,0,0),(1027,12,NULL,451,0,1,0,0),(1028,12,NULL,453,0,1,0,0),(1029,12,NULL,454,0,1,0,0),(1030,12,NULL,455,0,1,0,0),(1031,12,NULL,452,0,1,0,0),(1032,12,NULL,430,0,1,0,0),(1033,12,NULL,431,0,1,0,0),(1034,12,NULL,433,0,1,0,0),(1035,12,NULL,434,0,1,0,0),(1036,12,NULL,435,0,1,0,0),(1037,12,NULL,432,0,1,0,0),(1038,12,NULL,440,0,1,0,0),(1039,12,NULL,441,0,1,0,0),(1040,12,NULL,443,0,1,0,0),(1041,12,NULL,444,0,1,0,0),(1042,12,NULL,445,0,1,0,0),(1043,12,NULL,442,0,1,0,0),(1044,12,NULL,506,0,1,0,0),(1045,12,NULL,508,0,1,0,0),(1046,12,NULL,507,0,1,0,0),(1047,12,NULL,509,0,1,0,0),(1048,12,NULL,510,0,1,0,0),(1049,12,NULL,511,0,1,0,0),(1050,12,NULL,513,0,1,0,0),(1051,12,NULL,514,0,1,0,0),(1052,12,NULL,515,0,1,0,0),(1053,12,NULL,512,0,1,0,0),(1054,1,NULL,506,0,1,0,0),(1055,1,NULL,508,0,1,0,0),(1056,1,NULL,507,0,1,0,0),(1057,1,NULL,509,0,1,0,0),(1058,1,NULL,510,0,1,0,0),(1059,1,NULL,511,0,1,0,0),(1060,1,NULL,513,0,1,0,0),(1061,1,NULL,514,0,1,0,0),(1062,1,NULL,515,0,1,0,0),(1063,1,NULL,512,0,1,0,0),(1064,13,NULL,1,0,1,0,0),(1065,13,NULL,10,0,0,0,0),(1066,13,NULL,11,0,0,0,0),(1067,13,NULL,13,0,0,0,0),(1068,13,NULL,14,0,0,0,0),(1069,13,NULL,15,0,0,0,0),(1070,13,NULL,16,0,0,0,0),(1071,13,NULL,17,0,0,0,0),(1072,13,NULL,18,0,1,0,0),(1073,13,NULL,12,0,0,0,0),(1074,13,NULL,380,0,0,0,0),(1075,13,NULL,381,0,0,0,0),(1076,13,NULL,383,0,0,0,0),(1077,13,NULL,384,0,0,0,0),(1078,13,NULL,382,0,0,0,0),(1079,13,NULL,110,0,0,0,0),(1080,13,NULL,111,0,0,0,0),(1081,13,NULL,112,0,0,0,0),(1082,13,NULL,410,0,1,0,0),(1083,13,NULL,411,0,1,0,0),(1084,13,NULL,413,0,0,0,0),(1085,13,NULL,414,0,1,0,0),(1086,13,NULL,415,0,0,0,0),(1087,13,NULL,412,0,1,0,0),(1088,13,NULL,450,0,1,0,0),(1089,13,NULL,451,0,1,0,0),(1090,13,NULL,453,0,0,0,0),(1091,13,NULL,454,0,1,0,0),(1092,13,NULL,455,0,0,0,0),(1093,13,NULL,452,0,1,0,0),(1094,13,NULL,430,0,1,0,0),(1095,13,NULL,431,0,1,0,0),(1096,13,NULL,433,0,0,0,0),(1097,13,NULL,434,0,1,0,0),(1098,13,NULL,435,0,0,0,0),(1099,13,NULL,432,0,1,0,0),(1100,13,NULL,440,0,0,0,0),(1101,13,NULL,441,0,0,0,0),(1102,13,NULL,443,0,0,0,0),(1103,13,NULL,444,0,0,0,0),(1104,13,NULL,445,0,0,0,0),(1105,13,NULL,442,0,0,0,0),(1106,13,NULL,506,0,1,0,0),(1107,13,NULL,508,0,1,0,0),(1108,13,NULL,507,0,1,0,0),(1109,13,NULL,509,0,1,0,0),(1110,13,NULL,510,0,1,0,0),(1111,13,NULL,511,0,1,0,0),(1112,13,NULL,513,0,0,0,0),(1113,13,NULL,514,0,1,0,0),(1114,13,NULL,515,0,0,0,0),(1115,13,NULL,512,0,1,0,0);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uuid` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `created_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `photo` text COLLATE utf8mb4_general_ci,
  `display_order` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_categories`
--

LOCK TABLES `product_categories` WRITE;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
INSERT INTO `product_categories` VALUES (8,'22228c9a-590b-4950-ad5c-6a4343a3698f','Mine bouillie',1,'2023-06-20 13:14:58',1,'f4833b88d802896c293b7144f003e6cf.jpg',4),(10,'56d931b8-acfa-494f-8124-d1b79bc60d1e','Snacks',1,'2023-06-26 08:58:07',1,'619702162d3b86861afedb234dca8970.jpg',1),(11,'3f75027d-717f-48d7-a282-d0682a6046d9','Cocktails',2,'2024-02-28 16:26:16',1,'67d8a403231fb42050b8a58a42ec95e8.jpg',17),(12,'34ad9e4b-67e7-4fb9-adc0-fc507e98c204','mine frire',2,'2024-02-28 16:32:54',1,'aedb223c8381312068febee1707fe3b0.jpg',5),(13,'e1c1714c-f9d0-4da3-ab06-e6c21fb0c1cb','Mine Renversé',2,'2024-02-28 16:34:26',1,'a1710144554323b9a630e55066b24c0f.jpg',8),(14,'c08cf312-4019-46d0-bb53-20951a0c672b','Curry',2,'2024-02-28 16:35:34',1,'c1f49bb0c005adaafca9c3afac450572.jpg',11),(15,'3eaef2a6-a6ba-499f-a048-17e8e0b36a57','Bol Renversé',2,'2024-02-28 16:43:40',1,'34c9f6d4b6d75fefedbc3b6f3f2f5b2b.jpg',7),(16,'24398c74-02b3-46e4-b964-8057f30fc25d','Riz frire',2,'2024-02-28 16:44:41',1,'a4ad387153d8dcb4aba06a3cd8368591.jpg',6),(17,'cbf4b1c5-405e-4b9f-8e5b-44d1b857368b','Sauté uniquement',2,'2024-02-28 16:45:15',1,'3bba069c9735e9dd2a623b215bd214f5.jpg',3),(18,'d46a647f-2d53-4e0b-a99c-1e16155a1eaf','Bouillion meefoon',2,'2024-02-28 16:49:12',1,'3373469239c728ca51e2b5ae534ed72f.jpg',10),(19,'d426a0e7-6e7d-4712-b33d-2f3365377b2f','Meefoon frire',2,'2024-02-28 16:53:48',1,'73f05d50ea2193db4e6b66c8dad2c2c5.jpg',9),(22,'8d7ce13e-6337-4f4d-84e7-bf439dd5ac48','Entrée',2,'2024-02-28 17:03:21',1,'3574a51c1571b6ee47e66a02c730aa61.jpg',2),(24,'c4236536-4f02-4986-ad06-19cc28834660','Sautee complet',1,'2024-03-08 00:44:57',1,'3bba069c9735e9dd2a623b215bd214f5.jpg',13),(25,'88fd2a8d-a4b7-4133-9d8d-889c5232f255','Basilique',1,'2024-03-08 00:44:57',1,'84897826cf7e7cee3d964f5655894729.jpg',14),(26,'bb0b605a-34d0-475c-b276-ba3987d40d08','Assiette Typique',1,'2024-03-08 00:44:57',1,'fd84dff37367853d3fbbfb58b1629b33.jpg',15),(27,'dd7aba67-a09e-42cf-b265-0adbfc08138b','Boissons',1,'2024-03-08 00:44:57',1,'2a3328c6957923facfc310b28460c8d7.jpg',16),(28,'121181b1-7ff4-4556-8d7c-c658c7a77b28','Daube',11,'2024-03-20 12:01:57',1,'213fc733b2098471448cd9fb89ee1bc6.jpg',12);
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uuid` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `stockref` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `cost_price` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `selling_price` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `photo` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `category_id` int DEFAULT NULL,
  `display_order` int NOT NULL DEFAULT '1',
  `type` enum('product','addon') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'product',
  `vat` enum('0','15') COLLATE utf8mb4_general_ci NOT NULL DEFAULT '15',
  PRIMARY KEY (`id`),
  UNIQUE KEY `stockref_idx` (`stockref`),
  KEY `fk_product_users_idx` (`created_by`),
  KEY `fk_product_category` (`category_id`),
  CONSTRAINT `fk_product_category` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'c3d92481-3999-4320-9069-6145b1337493','00001','Soupe De Maïs Au Poulet','SOUPE DE MAïS AU POULET','0','115','c949aa300edf79aba425ecbbbc253651.jpg',1,'2024-03-08 00:44:57',1,22,1,'product','15'),(2,'16ec3057-8cee-417b-8544-9458a53e1007','00002','Salade verte','SALADE VERTE','0','170','eb7ed38cbbeb0c0efc7ef9433d0eea3c.jpg',1,'2024-03-08 00:44:57',1,22,2,'product','15'),(3,'fd3a9f61-edd5-4af7-9ef4-c503d01aa0f9','00003','Salade ourite','Salade ourite','0','400','',1,'2024-03-08 00:44:57',1,22,3,'product','15'),(4,'3fcae2b5-23bb-4a1f-af71-9247c92f007c','00004','Sauté calamar','SAUTé CALAMAR','0','430','cebc31a51da6b30546a7c33ed1e874a9.jpg',1,'2024-03-08 00:44:57',1,22,4,'product','15'),(5,'98010d47-fc1c-4555-be02-35922c081f9c','00005','Salade konokono','SALADE KONOKONO','0','490','',1,'2024-03-08 00:44:57',1,22,5,'product','15'),(6,'0dc6d975-ea36-40af-87dc-24c91374e0e3','00006','Sauté fruit de mers','SAUTé FRUIT DE MERS','0','550','8373b30288a59ddffb39ff5da74eb2d3.jpg',1,'2024-03-08 00:44:57',1,22,6,'product','15'),(7,'38e3aa13-92ff-4db8-aef6-d28dd1998452','00007','Salade zero','Salade zero','0','460','',1,'2024-03-08 00:44:57',1,22,7,'product','15'),(8,'6a0a0703-2d65-4a55-bf4a-1789a0e6c99f','00008','Croquette poulet','CROQUETTE POULET','0','200','f1e574e22cf539181705b94e38f937a2.jpg',1,'2024-03-08 00:44:57',1,10,1,'product','15'),(9,'32a58edb-ac1c-4631-8780-90669255f211','00009','Croquette crevette','Croquette crevette','0','260','',1,'2024-03-08 00:44:57',1,10,2,'product','15'),(10,'33e008ca-26f4-4f50-a606-1428938f7374','00010','Croustillant poulet','Croustillant poulet','0','200','',1,'2024-03-08 00:44:57',1,10,3,'product','15'),(11,'efaa3dcc-e2ed-4c22-9600-ee4105ccda17','00011','Croustillant crevette','Croustillant crevette','0','260','',1,'2024-03-08 00:44:57',1,10,4,'product','15'),(12,'f69839c3-5707-4aaa-aec5-bd6260ee2390','00012','Croustillant calmar','Croustillant calmar','0','375','',1,'2024-03-08 00:44:57',1,10,5,'product','15'),(13,'4e78b720-e2a6-420a-959d-453c6d36a4bc','00013','Beignet Oignon','BEIGNET OIGNON','0','150','',1,'2024-03-08 00:44:57',1,10,6,'product','15'),(14,'73cd7ea6-e4e1-4b57-b0bb-bca30d53d124','00014','Hakien poulet','Hakien poulet','0','175','',1,'2024-03-08 00:44:57',1,10,7,'product','15'),(15,'327e586e-9b80-4a67-93fd-3e974926793d','00015','Hakien legumes','Hakien legumes','0','175','',1,'2024-03-08 00:44:57',1,10,8,'product','15'),(16,'aa8f264f-bc44-4b58-90a5-eda637dfed00','00016','Veg','Veg','0','110','',1,'2024-03-08 00:44:57',1,8,16,'product','15'),(17,'08b69032-a979-469c-bdf9-6287f2972f99','00017','Veg + crispy','Veg + crispy','0','140','',1,'2024-03-08 00:44:57',1,8,17,'product','15'),(18,'417410ff-4ff4-40aa-b6a9-a4a9f20a1974','00018','Poulet','Poulet','0','140','',1,'2024-03-08 00:44:57',1,8,18,'product','15'),(19,'ef562942-895f-43bf-beb0-6d88e411876c','00019','Bœuf','Bœuf','0','140','',1,'2024-03-08 00:44:57',1,8,19,'product','15'),(20,'f565bceb-674c-4b74-856a-ee8d114f3215','00020','Salmi agneau','Salmi agneau','0','200','',1,'2024-03-08 00:44:57',1,8,20,'product','15'),(21,'ae6e3b5f-3872-4f61-8dfe-df1abef4b323','00021','Daube ourite','Daube ourite','0','210','',1,'2024-03-08 00:44:57',1,8,21,'product','15'),(22,'ae64f7ed-d465-405e-91a2-e9cdc103671d','00022','Salmi palourde','Salmi palourde','0','210','',1,'2024-03-08 00:44:57',1,8,22,'product','15'),(23,'ce43c662-a0a5-446d-b46d-c4c263189606','00023','Salmi mangouak','Salmi mangouak','0','210','',1,'2024-03-08 00:44:57',1,8,23,'product','15'),(24,'64be651b-bdbf-4e75-9976-c6830a3a51bd','00024','Fruit de mers','Fruit de mers','0','280','',1,'2024-03-08 00:44:57',1,8,24,'product','15'),(25,'a1660247-3c36-4005-8433-5b4464435a88','00025','Veg','VEG','0','125','',1,'2024-03-08 00:44:57',1,12,25,'product','15'),(26,'f74fd2b3-0c65-4ede-9a1a-b59fb45ffde8','00026','Veg + crispy','Veg + crispy','0','155','',1,'2024-03-08 00:44:57',1,12,26,'product','15'),(27,'2721da25-2d21-45fe-88c9-f1f72d485825','00027','Poulet','Poulet','0','165','',1,'2024-03-08 00:44:57',1,12,27,'product','15'),(28,'8ab53aa0-b1cb-4b47-9fc2-646bd419c248','00028','Poulet spécial','Poulet spécial','0','195','',1,'2024-03-08 00:44:57',1,12,28,'product','15'),(29,'f4d5fd09-6f20-4c0e-9200-2924f790640d','00029','Bœuf','Bœuf','0','185','',1,'2024-03-08 00:44:57',1,12,29,'product','15'),(30,'63f112e3-2da1-492d-92d3-17877e26f39e','00030','Bœuf special','Bœuf special','0','210','',1,'2024-03-08 00:44:57',1,12,30,'product','15'),(31,'9d8069b7-3761-4dd6-8eed-33c17f64e307','00031','Agneau','Agneau','0','230','',1,'2024-03-08 00:44:57',1,12,31,'product','15'),(32,'864da9ab-bc77-4c3f-908a-ae14866fcfd7','00032','Agneau spécial','Agneau spécial','0','260','',1,'2024-03-08 00:44:57',1,12,32,'product','15'),(33,'0fff5084-bef4-4a96-b058-4ed281f469ee','00033','Fruit de mers','Fruit de mers','0','280','',1,'2024-03-08 00:44:57',1,12,33,'product','15'),(34,'89c2578d-650f-4cea-bdae-b6861765148d','00034','Veg','Veg','0','125','',1,'2024-03-08 00:44:57',1,16,34,'product','15'),(35,'54cfb880-dc51-40d7-8e66-b3d11f8f9dbc','00035','Veg + crispy','Veg + crispy','0','155','',1,'2024-03-08 00:44:57',1,16,35,'product','15'),(36,'e50d982d-836f-4a6f-ad29-a5e797c40d1c','00036','Poulet','POULET','0','165','db6a5ef069bb28b094d96bd7ead7091a.jpg',1,'2024-03-08 00:44:57',1,16,36,'product','15'),(37,'189dfa7b-6ce1-4226-96e3-0596806eb070','00037','Poulet spécial','Poulet spécial','0','195','',1,'2024-03-08 00:44:57',1,16,37,'product','15'),(38,'1953a8f3-c989-49c9-8852-324cc7eb4563','00038','Bœuf','Bœuf','0','185','',1,'2024-03-08 00:44:57',1,16,38,'product','15'),(39,'b98a49c6-6ccf-45b8-9ce7-eb628120157c','00039','Bœuf spécial','Bœuf spécial','0','210','',1,'2024-03-08 00:44:57',1,16,39,'product','15'),(40,'0adeb3b4-64d9-4600-a8ae-af7c321eebb2','00040','Agneau','Agneau','0','230','',1,'2024-03-08 00:44:57',1,16,40,'product','15'),(41,'b7bdac8b-f5d9-42b8-ad20-3c33b5af8179','00041','Agneau spécial','Agneau spécial','0','260','',1,'2024-03-08 00:44:57',1,16,41,'product','15'),(42,'0e64163d-8a49-4a5e-9886-de950e31e350','00042','Fruit de mers','Fruit de mers','0','280','',1,'2024-03-08 00:44:57',1,16,42,'product','15'),(43,'345a3bb6-bc6a-483f-9b18-fdc69d8304bd','00043','Veg','Veg','0','125','',1,'2024-03-08 00:44:57',1,15,43,'product','15'),(44,'dc26e4e5-1cc7-408c-8f5f-a1851f6f6100','00044','Veg + crispy','Veg + crispy','0','155','',1,'2024-03-08 00:44:57',1,15,44,'product','15'),(45,'711960ae-c978-4fa7-ae75-2a8f8ca0661a','00045','Poulet','Poulet','0','165','',1,'2024-03-08 00:44:57',1,15,45,'product','15'),(46,'71741475-9f43-42f9-a981-ea23d58ce128','00046','Poulet spécial','Poulet spécial','0','195','',1,'2024-03-08 00:44:57',1,15,46,'product','15'),(47,'c58e8044-12be-43fa-a2ec-480516b85ad0','00047','Bœuf','Bœuf','0','185','',1,'2024-03-08 00:44:57',1,15,47,'product','15'),(48,'033016ce-4b4f-4b0f-8452-339db7ce0a9b','00048','Bœuf spécial','Bœuf spécial','0','210','',1,'2024-03-08 00:44:57',1,15,48,'product','15'),(49,'48a2ba25-7856-47e5-8e18-e527d7473f91','00049','Agneau','Agneau','0','230','',1,'2024-03-08 00:44:57',1,15,49,'product','15'),(50,'0355c3cf-23c0-492c-af17-aeb31b216214','00050','Agneau spécial','Agneau spécial','0','260','',1,'2024-03-08 00:44:57',1,15,50,'product','15'),(51,'abec818f-74c9-4a0c-86b4-68dfcdb49660','00051','Fruit de mers','Fruit de mers','0','280','',1,'2024-03-08 00:44:57',1,15,51,'product','15'),(52,'c651ec58-3a2a-4f98-8671-90cce47ce530','00052','Veg','Veg','0','125','',1,'2024-03-08 00:44:57',1,13,52,'product','15'),(53,'03bafafc-f70c-400c-8f24-b0885633b377','00053','Veg + crispy','Veg + crispy','0','155','',1,'2024-03-08 00:44:57',1,13,53,'product','15'),(54,'36d6ee5f-7926-444c-88d1-7a79981089f1','00054','Poulet','Poulet','0','165','',1,'2024-03-08 00:44:57',1,13,54,'product','15'),(55,'fe7fc181-4fd2-423c-856c-dec66f7982e4','00055','Poulet spécial','Poulet spécial','0','195','',1,'2024-03-08 00:44:57',1,13,55,'product','15'),(56,'1c0db1ed-cf5a-4ec3-88e8-1b14361ee7d3','00056','Bœuf','Bœuf','0','185','',1,'2024-03-08 00:44:57',1,13,56,'product','15'),(57,'e0e00598-6fa2-4def-b234-4e1441fc7afa','00057','Bœuf spécial','Bœuf spécial','0','210','',1,'2024-03-08 00:44:57',1,13,57,'product','15'),(58,'3e7a86cf-43e0-46fb-8658-f791d9244b14','00058','Agneau','Agneau','0','230','',1,'2024-03-08 00:44:57',1,13,58,'product','15'),(59,'8cf4df52-6f21-4213-99d7-12824cc0e083','00059','Agneau spécial','Agneau spécial','0','260','',1,'2024-03-08 00:44:57',1,13,59,'product','15'),(60,'108eb490-7822-4934-948c-7f4645fd5a18','00060','Fruit de mers','Fruit de mers','0','280','',1,'2024-03-08 00:44:57',1,13,60,'product','15'),(61,'a47ff4de-ec39-444d-99f3-8af99c4bf8a6','00061','Veg','Veg','0','125','',1,'2024-03-08 00:44:57',1,19,61,'product','15'),(62,'93f75af4-f1a3-4dfb-8f7f-4b6c09f12259','00062','Veg + crispy','Veg + crispy','0','155','',1,'2024-03-08 00:44:57',1,19,62,'product','15'),(63,'469cc715-67de-4d37-b336-dadf6b30b922','00063','Poulet','Poulet','0','165','',1,'2024-03-08 00:44:57',1,19,63,'product','15'),(64,'c37ccf67-ffff-4175-a3fb-74685d7e1024','00064','Poulet spécial','Poulet spécial','0','195','',1,'2024-03-08 00:44:57',1,19,64,'product','15'),(65,'4c4a01d0-23a1-440e-bfc5-9fb2b29d7731','00065','Bœuf','Bœuf','0','185','',1,'2024-03-08 00:44:57',1,19,65,'product','15'),(66,'e7ec2896-48e0-4100-bfca-c909d5239a84','00066','Bœuf spécial','Bœuf spécial','0','210','',1,'2024-03-08 00:44:57',1,19,66,'product','15'),(67,'2ccdb56f-cd22-4d50-a269-bb56d9214538','00067','Agneau','Agneau','0','230','',1,'2024-03-08 00:44:57',1,19,67,'product','15'),(68,'58a0e413-6724-41fe-bf96-b03d3674e003','00068','Agneau spécial','Agneau spécial','0','260','',1,'2024-03-08 00:44:57',1,19,68,'product','15'),(69,'0607dd05-e01f-43e7-8a0c-5e90b6cbca4f','00069','Fruit de mers','Fruit de mers','0','280','',1,'2024-03-08 00:44:57',1,19,69,'product','15'),(70,'a3ec9c54-e9f6-4003-9e9d-efb8a908c430','00070','Veg','Veg','0','125','',1,'2024-03-08 00:44:57',1,18,70,'product','15'),(71,'548bf748-e6bc-401e-ab09-54b60c798f34','00071','Veg + crispy','Veg + crispy','0','155','',1,'2024-03-08 00:44:57',1,18,71,'product','15'),(72,'5e9b073b-74cf-405c-9c08-c4bbe720ad05','00072','Poulet','Poulet','0','165','',1,'2024-03-08 00:44:57',1,18,72,'product','15'),(73,'21ca90a4-0b69-484a-ae70-525e7e962547','00073','Poulet spécial','Poulet spécial','0','195','',1,'2024-03-08 00:44:57',1,18,73,'product','15'),(74,'fd510401-ce1e-464d-aa74-d6f1944f201f','00074','Bœuf','Bœuf','0','185','',1,'2024-03-08 00:44:57',1,18,74,'product','15'),(75,'0d38587f-c6af-4cad-a852-1891a46b4ba4','00075','Bœuf spécial','Bœuf spécial','0','210','',1,'2024-03-08 00:44:57',1,18,75,'product','15'),(76,'d8307c0d-cf20-426e-bde5-bbade7cc6e45','00076','Agneau','Agneau','0','230','',1,'2024-03-08 00:44:57',1,18,76,'product','15'),(77,'339e30da-631d-4ef7-aaf7-8a23595cc7b4','00077','Agneau spécial','Agneau spécial','0','260','',1,'2024-03-08 00:44:57',1,18,77,'product','15'),(78,'b881531e-058c-4880-9418-0b6dd82513b5','00078','Fruit de mers','Fruit de mers','0','280','',1,'2024-03-08 00:44:57',1,18,78,'product','15'),(79,'ec4493f0-ad67-47de-ac69-d73fea1eab07','00079','Poulet','POULET','0','315','e4cc7f894ae0d9909e22a00658052c24.jpg',1,'2024-03-08 00:44:57',1,14,79,'product','15'),(80,'57ef39c8-1b00-4622-b5cc-434d03a7affd','00080','Bœuf','Bœuf','0','345','',1,'2024-03-08 00:44:57',1,14,80,'product','15'),(81,'2b4e7469-5003-4835-a93d-9186f98790d5','00081','Poisson','Poisson','0','460','',1,'2024-03-08 00:44:57',1,14,81,'product','15'),(82,'273bd5cb-18bb-47df-8381-59df1e21d825','00082','Agneau','Agneau','0','460','',1,'2024-03-08 00:44:57',1,14,82,'product','15'),(83,'b8b84db5-0c29-4086-b5ba-7ed8c2b40f13','00083','Ourite','Ourite','0','460','',1,'2024-03-08 00:44:57',1,14,83,'product','15'),(84,'55b5228c-47f3-4bb7-957b-f640317856dc','00084','Poulet','Poulet','0','315','',1,'2024-03-08 00:44:57',1,28,84,'product','15'),(85,'d268634a-8252-4448-bc2e-1d142f8fcf0c','00085','Bœuf','Bœuf','0','345','',1,'2024-03-08 00:44:57',1,28,85,'product','15'),(86,'57ae487e-5280-47ba-b2f6-fbe04bfc37a8','00086','Poisson','Poisson','0','460','',1,'2024-03-08 00:44:57',1,28,86,'product','15'),(87,'f19f487c-256a-471b-86e1-9ce481039a0d','00087','Agneau','Agneau','0','460','',1,'2024-03-08 00:44:57',1,28,87,'product','15'),(88,'76485431-db22-4cc8-861e-589afd1f5f5a','00088','Ourite','Ourite','0','460','',1,'2024-03-08 00:44:57',1,28,88,'product','15'),(89,'cd06f4f8-9c00-4db5-b5a7-7a7b93941877','00089','Poulet','Poulet','0','290','',1,'2024-03-08 00:44:57',1,17,89,'product','15'),(90,'83f17df0-4bca-48bf-a8f4-72712ca09c30','00090','Bœuf','Bœuf','0','315','',1,'2024-03-08 00:44:57',1,17,90,'product','15'),(91,'8ded2d7c-08fd-44ae-9d54-c4a61bd8565f','00091','Agneau','Agneau','0','460','',1,'2024-03-08 00:44:57',1,17,91,'product','15'),(92,'e287c452-666e-4939-996d-1613582900d0','00092','Fruit de mers','FRUIT DE MERS','0','550','',1,'2024-03-08 00:44:57',1,17,92,'product','15'),(93,'6e6bf8e3-1885-4d65-9350-5cfce79c938e','00093','Poulet','Poulet','0','375','',1,'2024-03-08 00:44:57',1,24,93,'product','15'),(94,'b715d372-b4df-49c7-901a-3039cc61885e','00094','Bœuf','Bœuf','0','400','',1,'2024-03-08 00:44:57',1,24,94,'product','15'),(95,'a5f11e4f-2afc-4eea-b766-78f885289bac','00095','Agneau','Agneau','0','515','',1,'2024-03-08 00:44:57',1,24,95,'product','15'),(96,'c59dcc28-ddd1-4917-a05a-fc0ecfc45021','00096','Fruit de mers','Fruit de mers','0','630','',1,'2024-03-08 00:44:57',1,24,96,'product','15'),(97,'1c2999c5-59b6-4846-82e1-26e07015ecc5','00097','Crevette','Crevette','0','400','',1,'2024-03-08 00:44:57',1,25,97,'product','15'),(98,'04650f8a-38c2-458e-980d-13d141dbbd0e','00098','Calamar','Calamar','0','460','',1,'2024-03-08 00:44:57',1,25,98,'product','15'),(99,'3443a986-3e32-4724-8db1-bd5a601700c1','00099','Salmi mangouak','Salmi mangouak','0','500','',1,'2024-03-08 00:44:57',1,26,99,'product','15'),(100,'910c36a6-ecde-4891-87b6-1347233148b2','00100','Salmi palourde','Salmi palourde','0','500','',1,'2024-03-08 00:44:57',1,26,100,'product','15'),(101,'c14d9baa-8449-4784-a4e2-4e4ef5ede5a8','00101','Salmi bigorno','Salmi bigorno','0','500','',1,'2024-03-08 00:44:57',1,26,101,'product','15'),(102,'47e023ef-3097-47b0-81e5-faf11419146f','00102','Salmi tektek','Salmi tektek','0','500','',1,'2024-03-08 00:44:57',1,26,102,'product','15'),(103,'3ddbb309-a082-4f59-8105-83d0f337b6da','00103','Eau 0.5','EAU 0.5','0','40','54805a3e338de8ac773a906550540dec.jpg',1,'2024-03-08 00:44:57',1,27,103,'product','15'),(104,'a439a6a3-a9af-48fa-8141-fa969ecf7dd9','00104','Eau 1L','EAU 1L','0','70','3beaf1a7026dcaf588db62281c6b99bd.jpg',1,'2024-03-08 00:44:57',1,27,104,'product','15'),(105,'e6e34dd5-5580-40d7-8067-8434cd313854','00105','Chopine coca','CHOPINE COCA','0','65','4b0e0807d6bcd329ec014fd010e5f3b6.jpg',1,'2024-03-08 00:44:57',1,27,105,'product','15'),(106,'cf01df43-8d4e-4214-a5ce-975767a6c281','00106','Chopine sprite','CHOPINE SPRITE','0','65','',1,'2024-03-08 00:44:57',1,27,106,'product','15'),(107,'08966885-3cd4-4cc5-83d1-f1753fc82717','00107','Chopine perona','CHOPINE PERONA','0','70','',1,'2024-03-08 00:44:57',1,27,107,'product','15'),(108,'57a34150-73a9-4e2b-9629-02c58ae2539e','00108','Coca 0.5','COCA 0.5','0','90','4a6bc742a8661627341b542e6bf59753.jpg',1,'2024-03-08 00:44:57',1,27,108,'product','15'),(109,'99602911-196d-4efc-ae1c-e20a2c4a6629','00109','Sprite 0.5','SPRITE 0.5','0','90','',1,'2024-03-08 00:44:57',1,27,109,'product','15'),(110,'21100e28-1fe7-4e34-9805-5c459019f65a','00110','Chopine de bière','CHOPINE DE BIèRE','0','130','',1,'2024-03-08 00:44:57',1,27,110,'product','15'),(111,'9baeb919-c7ba-42c9-98f2-b7216d5a6cf2','00111','Bière pression','BIèRE PRESSION','0','160','',1,'2024-03-08 00:44:57',1,27,111,'product','15'),(112,'420f83de-19dd-499a-8572-4fa2b484ff60','00112','Bière Heineken','BIèRE HEINEKEN','0','160','',1,'2024-03-08 00:44:57',1,27,112,'product','15'),(113,'3a6e2e7c-8a6b-4f6c-9b0c-13c1ba1a5322','00113','Bière Golden Ale Awanam','Bière Golden Ale Awanam','0','145','',1,'2024-03-08 00:44:57',0,27,113,'product','15'),(114,'c3f48fc2-7f89-4471-87ff-24645f5b5e3f','00114','Canette Sanpellegrino','CANETTE SANPELLEGRINO','0','80','',1,'2024-03-08 00:44:57',1,27,114,'product','15'),(115,'70a281d1-f21d-4ff3-8152-8aaf5bae8178','00115','Jus de fruits','Jus de fruits','0','150','',1,'2024-03-08 00:44:57',1,11,115,'product','15'),(116,'6be47156-ba8f-4fc8-a258-834999a3644f','00116','Mojito virgin','Mojito virgin','0','145','',1,'2024-03-08 00:44:57',1,11,116,'product','15'),(117,'75f58299-6c39-4954-a56d-d0bc87afe47b','00117','Mojito alcohol','Mojito alcohol','0','200','',1,'2024-03-08 00:44:57',1,11,117,'product','15'),(118,'d8f5d3c1-ab0d-4c03-9f35-043c637ea20a','00118','Ti punch','Ti punch','0','170','',1,'2024-03-08 00:44:57',1,11,118,'product','15'),(119,'964f4ed8-733a-46a0-8ee4-d24c7cc7f9aa','00119','Sex on the beach','Sex on the beach','0','200','',1,'2024-03-08 00:44:57',1,11,119,'product','15'),(120,'d7feebe8-9be7-4010-84da-3d9ced167c58','ADD00001','Portion poulet','','1','60','b94e435de88164e9ccf02f04fb38f757.jpg',1,'2024-03-08 00:45:10',1,NULL,1,'addon','15'),(121,'77ae2a29-54c7-447a-93ef-267de577941a','ADD00002','Portion boeuf','','1','60','',1,'2024-03-08 00:45:11',1,NULL,2,'addon','15'),(122,'432c07b8-f459-44ae-b7c1-5a96b8e3222f','ADD00003','Brède','','1','30','',1,'2024-03-08 00:45:11',1,NULL,3,'addon','15'),(123,'b95d972b-9dcd-46dd-943e-e2a90d311943','ADD00004','Légumes','','1','30','4febfbca2c32ba251e74f0e427408302.jpg',1,'2024-03-08 00:45:11',1,NULL,4,'addon','15'),(124,'7f62174c-0956-4fa4-8d11-24f5c003f9b0','ADD00005','frite-salade','','1','100','',1,'2024-03-08 00:45:11',1,NULL,5,'addon','15'),(125,'b090cec2-b2ca-47e2-b991-ddcd5ab02446','ADD00006','Portion palourde','Portion palourde','0','125','',1,'2024-03-08 00:45:11',1,NULL,6,'addon','15'),(126,'4eff3fc5-7cab-4048-92b7-9344257b9a46','ADD00007','take away','','1','20','08c7452f48c2b8a672da7a095eee6131.jpg',1,'2024-03-08 00:45:11',1,NULL,7,'addon','15'),(127,'d5700763-7d23-4c18-9ea9-cc4651699898','ADD00008','crevette','','1','20','',1,'2024-03-08 00:45:11',1,NULL,8,'addon','15'),(128,'bb1579c0-6c72-4dc6-a8e0-be711b10cada','ADD00009','Portion bigorno','Portion bigorno','0','125','',1,'2024-03-08 00:45:11',1,NULL,9,'addon','15'),(129,'9449e272-580d-4087-84c6-49f263e14e54','ADD00010','EGG','','1','20','846fe152a9367dd67c9463b83a15a533.jpg',2,'2024-03-08 08:17:23',1,NULL,128,'addon','15'),(130,'a945e102-80e9-4fcb-89d1-89b799ffcbd3','00120','Sautee ourite','','400','400',NULL,11,'2024-03-21 11:45:31',1,17,1,'product','15'),(134,'90bc4fa3-0be1-4378-9903-217844efb512','00121','moitier poulet','','0','125',NULL,11,'2024-03-21 11:45:31',1,12,1,'product','15'),(135,'8184cf51-8718-4f81-9631-890415c3bfbc','00122','moitier agneau','','0','145',NULL,11,'2024-03-21 11:45:31',1,12,1,'product','15'),(136,'eb8bcdfb-4fc5-4099-93ed-1a2a2a426ecc','00123','moitier boeuf','','0','135',NULL,11,'2024-03-21 11:45:31',1,12,1,'product','15'),(137,'a13a0664-dcb1-4662-90ad-b52e337745ce','00124','moitier veg','','0','125',NULL,11,'2024-03-21 11:45:31',1,12,1,'product','15'),(138,'467e1a55-b417-4dac-95aa-a8825fffaa21','00125','moitier poulet','','0','90',NULL,11,'2024-03-21 11:45:31',1,8,1,'product','15'),(139,'5b12193f-5564-47db-8261-a5979309c708','00126','moitier boeuf','','0','90',NULL,11,'2024-03-21 11:45:31',1,8,1,'product','15'),(140,'11d7361a-9f6f-46c0-a7c7-db9ae3fda39a','00127','moitier agneau','','0','125',NULL,11,'2024-03-21 11:45:31',1,8,1,'product','15'),(141,'52a995a9-56b7-4769-bcd4-1d9d69debc44','00128','moitier mang','','0','125',NULL,11,'2024-03-21 11:45:31',1,8,1,'product','15'),(142,'30b93c5d-111c-48a9-9104-c6a614ce2e13','00129','moitier poulet','','0','125',NULL,11,'2024-03-21 11:52:20',1,16,1,'product','15'),(144,'08e0c023-930c-4161-9de6-c70ced833956','00130','moitier agneau','','0','145',NULL,11,'2024-03-21 11:58:23',1,16,1,'product','15'),(145,'2009d462-58ac-425b-bad9-b1353e8f30be','00131','moitier boeuf','','0','135',NULL,11,'2024-03-21 11:59:04',1,16,1,'product','15'),(146,'5a611790-9e62-4b07-8c49-227b4aba0913','00132','moitier veg','','0','75',NULL,11,'2024-03-21 12:00:06',1,8,1,'product','15'),(147,'2bd3e121-ac26-403b-b489-cffb03118ce3','00133','moitier veg crispy','','0','90',NULL,11,'2024-03-21 12:00:41',1,8,1,'product','15'),(148,'955efbf3-3133-411e-ad00-6d9fa0c9d620','00134','moitier veg','','0','125',NULL,11,'2024-03-21 12:10:57',1,16,1,'product','15'),(158,'0518716f-ed28-4b80-8391-157be45a9792','00135','moitier fruit de mers','','0','150',NULL,11,'2024-03-21 13:08:15',1,8,1,'product','15'),(159,'d95a8f94-0030-4b58-a9b1-906a045821fd','00136','crevette','','0','195',NULL,11,'2024-03-21 14:15:06',1,12,1,'product','15'),(160,'4f0ea329-dbdb-4e67-bd74-c3335fa534ae','00137','touni','','0','75',NULL,11,'2024-03-21 14:48:30',1,8,1,'product','15'),(161,'6cd27858-637e-49cc-bf6a-bc2819441c3a','00138','moitier touni','','0','45',NULL,11,'2024-03-21 14:49:01',1,8,1,'product','15'),(162,'07b46375-fbc6-4ea5-853c-2d3613199f3c','ADD00015','satini','','1','35',NULL,11,'2024-03-21 15:01:50',1,NULL,161,'addon','15'),(163,'19e44460-30b5-4e57-b583-cba8c5aa670e','00139','crevette','','0','195',NULL,11,'2024-03-21 15:20:55',1,16,1,'product','15'),(164,'23d92469-2a01-4d88-9444-1b9837b801a9','00140','eau sanpellegrino','','0','125',NULL,11,'2024-03-21 15:48:57',1,27,1,'product','15'),(165,'6e528722-c414-489c-9bf4-f6a3bd021129','00141','0.5 sanpellegrino','','0','80',NULL,11,'2024-03-21 16:01:34',0,27,1,'product','15'),(166,'7f2db2a2-b8de-429a-87a2-2eab5550731c','00142','lt coca','','0','100',NULL,11,'2024-03-22 11:39:46',1,27,1,'product','15'),(167,'a8f57f8a-b9b3-4a1c-bde3-6d818e7e543d','00143','lt sprite','','0','100',NULL,11,'2024-03-22 11:40:17',1,27,1,'product','15'),(168,'24aad512-fd0f-429c-8918-591484b477a9','00144','double pression','','0','320',NULL,11,'2024-03-22 12:35:16',1,27,1,'product','15'),(169,'124cf8fa-7437-4489-ae44-7322e150cf8c','00145','chips','','0','115',NULL,11,'2024-03-22 12:40:41',1,10,1,'product','15'),(170,'7324225d-cfec-413e-9246-e5462f8308ab','ADD00016','portion ourite','','1','125',NULL,11,'2024-03-24 12:19:01',1,NULL,169,'addon','15'),(171,'c5a0c7f4-3bdd-44a8-9dd9-7c3c8fdc97c1','00146','poisson grille','','0','475',NULL,11,'2024-03-25 12:23:27',1,24,1,'product','15'),(172,'907f62b8-2633-44ad-bdb7-b34a7d318e74','ADD00017','riz blanc','','1','50',NULL,11,'2024-03-25 13:14:02',1,NULL,171,'addon','15'),(173,'a648289f-bf22-48a0-8e00-755fd5466b2d','ADD00018','lentille','','1','50',NULL,11,'2024-03-25 13:15:18',1,NULL,172,'addon','15'),(174,'6774b327-3833-4b1b-a8b6-38fca23c8222','00147','moitier fdm','','0','150',NULL,11,'2024-03-25 13:45:41',0,12,1,'product','15'),(175,'fd438bc0-1c9e-412f-afe3-5a2089f925dc','00148','crevette','','0','195',NULL,11,'2024-03-25 17:16:42',1,15,1,'product','15'),(176,'3cdd8955-ca17-4e9f-8272-6f336c99e8ed','ADD00019','portion agneau','','1','120',NULL,11,'2024-03-27 14:24:36',1,NULL,175,'addon','15'),(177,'74469114-9d94-48de-be0a-b37dfb571503','ADD00020','ti rhum','','1','50',NULL,11,'2024-03-28 15:05:17',1,NULL,176,'addon','15'),(178,'0fd7ffaa-7178-4ce9-989d-11c8c9284545','ADD00021','cantonnais','','1','25',NULL,11,'2024-03-29 12:36:59',1,NULL,177,'addon','15'),(179,'00bae54a-c1e0-4ea6-8103-028535a421da','00149','sautee crispy','','0','325',NULL,11,'2024-03-29 12:50:17',1,17,1,'product','15'),(180,'411371ac-4b4a-4d73-b2cc-7e9d6153eb05','00150','poisson grillee','','0','475',NULL,11,'2024-03-29 13:23:27',1,25,1,'product','15'),(181,'ae744d7f-3607-4acf-a2f3-81ecbceb7a2d','00151','crevette','','0','195',NULL,11,'2024-03-29 13:48:00',1,19,1,'product','15'),(182,'7577220d-e22a-40ff-93dd-1bc19ccfcf8e','00152','sautee benitier','','0','425',NULL,11,'2024-03-29 13:58:36',1,17,1,'product','15'),(183,'a5d8f816-530d-4ddc-9d86-cc89c868a50d','00153','sive bigorno','','0','400',NULL,11,'2024-03-29 14:14:06',1,26,1,'product','15'),(184,'f5f313a4-f8db-48c0-93c9-0a5e6e458620','00154','crevette','','0','195',NULL,11,'2024-03-30 12:31:49',1,13,1,'product','15'),(185,'805d7701-8d42-453a-9579-a4c79034688b','00155','poulet grillee','','0','400',NULL,11,'2024-03-31 12:42:42',1,24,1,'product','15'),(186,'815d2303-5b74-44b8-b59c-41fe16e16aef','00156','calamar','','0','425',NULL,11,'2024-04-06 11:58:10',1,17,1,'product','15'),(187,'50775f74-8e20-4556-87b0-d1fad80677a9','00157','chop soy poulet','','0','300',NULL,11,'2024-04-07 14:31:51',1,22,1,'product','15'),(188,'dd0b0669-cfc6-4659-864a-4118abc538d7','00158','veg crispy','','0','325',NULL,11,'2024-04-08 16:18:52',1,14,1,'product','15'),(189,'4b8ff046-4ce9-444d-8a6b-a276bd749d39','00159','veg crispy','','0','325',NULL,11,'2024-04-08 16:19:24',1,28,1,'product','15'),(190,'90578b34-aae5-4797-bfc6-2711e46b43ac','ADD00022','Salade','','1','30',NULL,11,'2024-05-03 16:08:25',1,NULL,189,'addon','15'),(191,'95b982fe-0876-4755-a9d3-9661827add04','00160','moitier fdm','','0','180',NULL,11,'2024-05-16 12:56:31',1,12,1,'product','15'),(192,'6076b36a-22c5-414b-baff-d4820923f11a','ADD00023','demi portion fdm','','1','75',NULL,11,'2024-05-16 13:05:43',1,NULL,191,'addon','15'),(193,'0275725e-d9bc-401b-9221-c10b53482f07','00161','salmi hache dame','','0','210',NULL,11,'2024-05-18 12:44:11',1,8,1,'product','15'),(194,'7541502d-2972-4678-9ee9-3902d4169c68','00162','salmi agneau','','0','460',NULL,11,'2024-05-26 14:47:59',1,26,1,'product','15'),(195,'4426da57-9ed5-4aa7-a95a-c982e8f09fb5','ADD00024','take away','','1','10',NULL,11,'2024-05-27 16:14:39',1,NULL,194,'addon','15'),(196,'0eee3d0e-3be4-4d92-b566-385189b55c8b','00163','crevette','','0','195',NULL,11,'2024-06-13 12:57:39',1,18,1,'product','15'),(197,'353b5a24-d18d-4c23-b36d-89e5156c16aa','00164','dasani','','100','100',NULL,11,'2024-12-14 11:22:27',1,27,1,'product','15');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uuid` varchar(70) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `user_level` enum('Normal','Admin','Root') DEFAULT 'Normal',
  `status` int NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,0-deleted',
  `last_login` datetime DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `created_by` int NOT NULL,
  `created` datetime DEFAULT NULL,
  `job_title` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `force_update` int NOT NULL DEFAULT '0',
  `department_id` int DEFAULT NULL,
  `is_sales` int NOT NULL DEFAULT '0',
  `is_delivery` int NOT NULL DEFAULT '0',
  `is_storekeeper` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_user_dept` (`department_id`),
  KEY `fk_user_user` (`created_by`),
  CONSTRAINT `fk_user_dept` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  CONSTRAINT `fk_user_user` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES 
    (1,'5d9754bf-7572-4402-ab0b-d2c7680fc280','root','81dc9bdb52d04dc20036dbd8313ed055','Root',1,'2025-09-27 17:00:11','127.0.0.1','Root User','IMG-20230401-WA0005.jpg',1,'2022-11-15 22:02:51','SysAdmin','reeaz@ramoly.info',0,1,0,0,0),
    (2,'5a105035-70f2-4460-8a67-8e18d69835ec','reeaz','41b9e3197a770fb65e9a19c5ef263fe5','Admin',1,'2024-10-28 23:59:40','102.160.129.57','Reeaz','20231230_073701-600x600px.jpg',1,'2023-06-16 00:22:15','Developer','reeaz@netsiteweaver.com',0,1,0,0,0),
    (11,'9101604a-ff87-4cde-a055-fdaf656fe0c5','fabien','ecd029662748c2562a18203b1e734a88','Admin',1,'2025-09-15 15:15:36','41.136.142.240','Fabien Morinière','fabien.jpg',1,'2024-03-06 00:56:42','User','fabienmoriniere007@gmail.com',0,1,0,0,0),
    (12,'15b15ed9-92a2-4242-81d8-ade3da77a49b','mathieu','06f65a1b7811a3479ea94eeeceb2b25c','Admin',1,NULL,NULL,'Mathieu Morinière','mathieu.jpg',1,'2024-03-06 00:58:54','User','mathieumoriniere@yahoo.fr',0,1,0,0,0),
    (13,'4aac069b-d5e5-4851-97eb-ac155ac1ba1a','sooruj','dbf1ee0599e598899a09e46973991800','Admin',1,'2025-07-29 11:00:12','102.117.227.190','sooruj',NULL,1,'2024-07-13 01:53:58','Accountant','sooruj@mannickassociates.com',0,1,0,0,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-27 17:38:45
