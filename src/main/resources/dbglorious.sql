-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 203.86.236.19    Database: dbglorious
-- ------------------------------------------------------
-- Server version	5.6.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activities_catgory`
--

DROP TABLE IF EXISTS `activities_catgory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activities_catgory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(245) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities_catgory`
--

LOCK TABLES `activities_catgory` WRITE;
/*!40000 ALTER TABLE `activities_catgory` DISABLE KEYS */;
INSERT INTO `activities_catgory` VALUES (7,'OUR BENEFITS','OUR BENEFITS'),(8,'OUR CHARITIES','OUR CHARITIES'),(9,'EVENTS','EVENTS');
/*!40000 ALTER TABLE `activities_catgory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activities_post`
--

DROP TABLE IF EXISTS `activities_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activities_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(245) DEFAULT NULL,
  `feature_image` varchar(245) DEFAULT NULL,
  `description` varchar(245) DEFAULT NULL,
  `content` text,
  `activities_catgory` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT '1 active\n0 disabled',
  `creator` varchar(75) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities_post`
--

LOCK TABLES `activities_post` WRITE;
/*!40000 ALTER TABLE `activities_post` DISABLE KEYS */;
INSERT INTO `activities_post` VALUES (44,'Birthday Gifts for Employees','2017-09-21_gif1.jpg','Birthday Gifts for Employees','<p>According to our Company&rsquo;s policy, each Employee, on his/her birthday, shall receive a box of gifts including and a flower basket from Company and given by the General Director.</p>\r\n<p><img src=\"upload/activities/2017-09-21_birthday1.jpg\" alt=\"\" width=\"800\" /></p>',7,1,'u1@gmail.com','2017-09-20 16:15:36'),(46,'Annual Company Trips','2017-09-21_companytrip1.jpg','Annual Company Trips','<p>To encourage, inspire the spirit of work as well as recognize contribution of all Employees, Glorious always endeavors to seek for the best retreat opportunities such as annual Company trips.</p>\r\n<p><img src=\"upload/activities/2017-09-21_trip1.jpg\" alt=\"\" width=\"800\" /></p>\r\n<center><strong>Visiting beautiful landscapes, participating team building activities in Da Lat City</strong></center>\r\n<p><img src=\"upload/activities/2017-09-21_trip2.jpg\" alt=\"\" width=\"800\" /></p>\r\n<center><strong>Rowing boats and enjoying special food in An Giang Province</strong></center>\r\n<p><img src=\"upload/activities/2017-09-21_trip3.jpg\" alt=\"\" width=\"800\" /></p>\r\n<center><strong>Prospectively, Thailand will be the destination for our Company Trip 2017</strong></center>',7,1,'u1@gmail.com','2017-09-20 16:40:31'),(47,'End-Year Gifts','2017-09-21_endyear1.jpg','End-Year Gifts','<p>At the end of year &ndash; time for days off and family reunion, we desire to make a small contribution to all Employees&rsquo; end-year enjoyment &ndash; a lucky draw party. Gifts from the party are not so precious but obviously indispensable to every Employee&rsquo;s life: television, tablet, smartphone, large misting fan, shopping vouchers, etc.</p>\r\n<p><img src=\"upload/activities/2017-09-21_endyear2.jpg\" alt=\"\" width=\"800\" /></p>',7,1,'u1@gmail.com','2017-09-21 14:54:24'),(48,'Training Program','2017-09-21_training.jpg','Training Program','<p>At Glorious, we always attach special importance to the knowledge improvement and enhancement of every Employee&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n<p><img src=\"upload/activities/2017-09-21_training1.jpg\" alt=\"\" width=\"800\" /></p>\r\n<center><strong>English training program for Employees with a foreign teacher invited by our Company</strong></center>',7,1,'u1@gmail.com','2017-09-21 14:58:25'),(49,'OUR CHARITIES','2017-09-21_charities1.jpg','OUR CHARITIES','<p>Our annual charity activities, with the budget from non-profit funding sources, are organized for not only children but also elderly people. Since the initial of organizing charity activities, we have had an ambition to spread our charities through every part of country: from the plain to the mountain. And until now, we are unstoppably trying to make this dream come true.</p>\r\n<p><img src=\"upload/activities/2017-09-21_charities2.jpg\" alt=\"\" width=\"800\" /></p>\r\n<center><strong>A charity activity organized for children at Dong Den Shelter in Tan Binh District, Ho Chi Minh City</strong></center>\r\n<p><img src=\"upload/activities/2017-09-21_charities3.jpg\" alt=\"\" width=\"800\" /></p>\r\n<center><strong>Gifts given to elderly people in Lam Dong Charity Trip--Children receiving lucky money </strong></center>\r\n<p><img src=\"upload/activities/2017-09-21_charities4.jpg\" alt=\"\" width=\"800\" /></p>\r\n<center><strong>Ben Tre Charity Trip for elderly people</strong></center>\r\n<p><img src=\"upload/activities/2017-09-21_charities5.jpg\" alt=\"\" width=\"800\" /></p>\r\n<center><strong>A Charity Trip for elderly people organized in Tan Chau, An Giang Province</strong></center>',8,1,'u1@gmail.com','2017-09-21 15:01:12'),(50,'EVENTS','2017-09-21_event1.png','EVENTS','<p>Other than promoting our brand, in every event we organize, the biggest aim which we want to achieve is to successfully connect the community. We are now endeavoring to maintain the organization of not only Vietnamese festivals but also festivals of many other countries. In general, annually, we have 3 main events: Mid-autumn Festival, Halloween, and Christmas.</p>\r\n<p><img src=\"upload/activities/2017-09-21_event1.jpg\" alt=\"\" width=\"800\" /></p>\r\n<p><img src=\"upload/activities/2017-09-21_event2.jpg\" alt=\"\" width=\"800\" /></p>\r\n<center><strong>Community Connection Events - Mid-Autumn Festival organized in Hoa Binh Branch with children from District 8 Shelter</strong></center><center><strong>Community Connection Events - Halloween Party for Glorious&rsquo; Employees organized in Hoa Binh Branch</strong></center>\r\n<p><img src=\"upload/activities/2017-09-21_event3.jpg\" alt=\"\" width=\"800\" /></p>\r\n<p><img src=\"upload/activities/2017-09-21_event4.jpg\" alt=\"\" width=\"800\" /></p>\r\n<center><strong>Community Connection Events - Halloween Party for Glorious&rsquo; Employees organized in Hoa Binh Branch</strong></center>\r\n<p><img src=\"upload/activities/2017-09-21_event5.jpg\" alt=\"\" width=\"800\" /></p>\r\n<center><strong>Community Connection Events - Christmas Party for children in Hoa Binh Branch</strong></center>\r\n<p>&nbsp;</p>\r\n<p><img src=\"upload/activities/2017-09-21_event6.jpg\" alt=\"\" width=\"800\" /></p>\r\n<center><strong>One of special Communication Connection Events &ndash; Oriental Festival for students organized in Ho Chi Minh University of Social Sciences and Humanities.</strong></center>\r\n<p><img src=\"upload/activities/2017-09-21_event7.jpg\" alt=\"\" width=\"800\" /></p>\r\n<center><strong>This festival focused on students &ndash; the leading generation of society: awarding scholarships, facilitating the access to advanced technology products, encouraging using products with special incentives, giving gifts to new students.</strong></center>',9,1,'u1@gmail.com','2017-09-21 15:03:23'),(53,'Option shares','2017-09-22_ipo.jpg','Option shares','<p>Glorious Creation Company Limited completed the IPO process on August 31, 2017 with a very successful and proud result. To congratulate on this occasion as well as recognize the contributions of all Employees, we have granted share options to the Employees who have been working at our Company for 12 months or more</p>',7,1,'u1@gmail.com','2017-09-22 12:32:33');
/*!40000 ALTER TABLE `activities_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(245) DEFAULT NULL,
  `feature_image` varchar(245) DEFAULT NULL,
  `pdf_report` varchar(245) DEFAULT NULL,
  `news_catgory` int(11) DEFAULT NULL,
  `isdelete` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT '1 active\n0 disabled',
  `creator` varchar(75) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `lastmodifier` varchar(75) DEFAULT NULL,
  `lastmodify` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (39,'Contract Signing Ceremony (June 12, 2017)','/upload/news/2017/05/09/2017-05-09_Alan.jpg','/upload/news/2017/06/14/2017-06-14_Contract Signing Ceremony .pdf',3,1,0,'u1@gmail.com','2017-06-12 16:43:48','u1@gmail.com','2017-06-14 18:10:53'),(40,'Contract Signing Ceremony (June 12, 2017)','no_image.jpg','/upload/news/2017/06/14/2017-06-14_Contract Signing Ceremony .pdf',3,0,1,'u1@gmail.com','2017-06-14 18:09:59','u1@gmail.com','2017-06-14 18:11:09'),(41,'News Release Vietnamese Version','no_image.jpg','/upload/news/2017/09/05/2017-09-05_NEWS RELEASED_V.pdf',2,0,1,'u1@gmail.com','2017-09-05 10:25:10','u1@gmail.com','2017-09-05 10:25:10'),(42,'News Release English Version ','no_image.jpg','/upload/news/2017/09/05/2017-09-05_GLORIOUS - News-Release_English.pdf',2,0,1,'u1@gmail.com','2017-09-05 16:01:14','u1@gmail.com','2017-09-05 16:01:14'),(43,'News Release Chinese Version ','no_image.jpg','/upload/news/2017/09/05/2017-09-05_GLORIOUS-News-Release-China-version.pdf',2,0,1,'u1@gmail.com','2017-09-05 16:47:42','u1@gmail.com','2017-09-05 16:48:31'),(44,'Glorious Showroom Grand Opening Ceremony','no_image.jpg','/upload/news/2017/11/28/2017-11-28_GLORIOUS-SHOWROOM-GRAND-OPENING-CEREMONY.pdf',2,0,1,'u1@gmail.com','2017-11-28 17:16:50','u1@gmail.com','2017-11-28 17:18:19'),(45,'Opening Showroom For Technology Products In Vietnam','no_image.jpg','/upload/news/2017/12/07/2017-12-07_Website_VNExpress.pdf',2,0,1,'u1@gmail.com','2017-12-07 15:50:04','u1@gmail.com','2017-12-07 15:50:04');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_catgory`
--

DROP TABLE IF EXISTS `news_catgory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_catgory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(245) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_catgory`
--

LOCK TABLES `news_catgory` WRITE;
/*!40000 ALTER TABLE `news_catgory` DISABLE KEYS */;
INSERT INTO `news_catgory` VALUES (2,'Prospectus','Prospectus'),(3,'Announcements & Circulars','Announcements & Circulars'),(4,'Monthly Returns','Monthly Returns'),(5,'Research Reports','Research Reports');
/*!40000 ALTER TABLE `news_catgory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_about`
--

DROP TABLE IF EXISTS `tb_about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(70) DEFAULT NULL,
  `description` varchar(245) DEFAULT NULL,
  `key_word` varchar(100) DEFAULT NULL,
  `content` text,
  `about_name` varchar(100) DEFAULT NULL,
  `feature_image` varchar(245) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_about`
--

LOCK TABLES `tb_about` WRITE;
/*!40000 ALTER TABLE `tb_about` DISABLE KEYS */;
INSERT INTO `tb_about` VALUES (1,'Corporate Profile','Glorious IT Creation Company Limited. All rights reserved.Powered by Glorious Vietnam','Glorious,IT,Creation,Company,Limited','&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;color: #333333; font-family: Montserrat, sans-serif; text-align: justify; background-color: #ffffff;&quot;&gt;The Corporation was incorporated in Canada on December 24, 2015, under the name Glorious Creation Limited, and was registered as an extraprovincial company in British Columbia on January 28, 2016. The Corporation&blink;s head office is located at Suite 407 &amp;mdash; 1328 West Pender Street, Vancouver, British Columbia V6E 4T1 and its registered office is located at Suite 1100 &amp;mdash; 736 Granville Street, Vancouver, British Columbia V6Z 1 G3. The Corporation has a wholly-owned subsidiary, Glorious IT Creation Limited, a Hong Kong company. Glorious IT, in turn, owns &lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;color: #333333; font-family: Montserrat, sans-serif; text-align: justify; background-color: #ffffff;&quot;&gt;(i) a 72% interest in VnTrans Company Limited, a Vietnam company; &lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;color: #333333; font-family: Montserrat, sans-serif; text-align: justify; background-color: #ffffff;&quot;&gt;(ii) an aggregate 86% direct and indirect interest of Glorious ( Vietnam) Company Limited, a Vietnam company; and &lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;color: #333333; font-family: Montserrat, sans-serif; text-align: justify; background-color: #ffffff;&quot;&gt;(iii) an aggregate 100% direct and indirect interest in Shenzhen Qianhai Glorious Creation Co., Limited, a People&blink;s Republic of China company.&lt;/span&gt;&lt;iframe src=&quot;../../upload/slide/GCIT.mp4&quot; width=&quot;800&quot; height=&quot;600&quot; frameborder=&quot;0&quot; allowfullscreen=&quot;&quot;&gt;&lt;/iframe&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: right;&quot;&gt;Video from &lt;a href=&quot;http://www.investmentpitch.com/video/0_o8f3es8r/Glorious-Creation-CSE-GCIT-New-Listing&quot; target=&quot;_blank&quot;&gt;investmentpitch&lt;/a&gt;&lt;/p&gt;',' About Us','2017-07-21_damsen.jpg'),(2,'Business Commerce','BUSINESS OF THE CORPORATION','Glorious,IT,Creation,Company,Limited','&lt;p&gt;The Corporation provides commercial services for foreign small and medium sized enterprises seeking ready access to the growing market for consumer and industrial goods in Vietnam. Through its subsidiaries and network of business partners, the Corporation has assembled an array of key governmental licenses necessary to import products and deliver them to customers in Vietnam. The Corporation has built an e-commerce platform that provides all the IT services and logistics management for the execution of commerce across national borders and multiple currencies. The Corporation offers clients a range of services including access to the Maritime Silk Road online marketplace, shipping logistics, payment processing, warehousing and distribution of goods, marketing, promotion and sales support.&lt;/p&gt;',' Business Commerce','no_image.jpg'),(3,'Subsidiaries','INTERCORPORATE RELATIONSHIPS 1111','Glorious,IT,Creation,Company,Limited','&lt;p class=&quot;&quot; style=&quot;box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: Montserrat, sans-serif; font-size: 21px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;Glorious Creation Limited operates its business through Glorious IT. The following chart illustrates the intercorporate relationships among the Corporation and its subsidiaries:&lt;/p&gt;\r\n&lt;div style=&quot;box-sizing: border-box; color: #333333; font-family: Montserrat, sans-serif; font-size: 21px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;&lt;img class=&quot;&quot; style=&quot;box-sizing: border-box; border: 0px; vertical-align: middle; width: 800px; height: initial;&quot; src=&quot;http://www.gloriouscreationgroup.com/dist/assets/map.png&quot; /&gt;&lt;/div&gt;\r\n&lt;div style=&quot;box-sizing: border-box; color: #333333; font-family: Montserrat, sans-serif; font-size: 21px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;box-sizing: border-box; color: #333333; font-family: Montserrat, sans-serif; font-size: 21px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;box-sizing: border-box; color: #333333; font-family: Montserrat, sans-serif; font-size: 21px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;div style=&quot;box-sizing: border-box; color: #333333; font-family: Montserrat, sans-serif; font-size: 21px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;&quot;&gt;&amp;nbsp;&lt;/div&gt;','Subsidiaries','no_image.jpg');
/*!40000 ALTER TABLE `tb_about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_contact`
--

DROP TABLE IF EXISTS `tb_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_img` varchar(145) DEFAULT NULL,
  `location_name` varchar(45) DEFAULT NULL,
  `office_address` varchar(245) DEFAULT NULL,
  `show_room_address` varchar(245) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `fax` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_contact`
--

LOCK TABLES `tb_contact` WRITE;
/*!40000 ALTER TABLE `tb_contact` DISABLE KEYS */;
INSERT INTO `tb_contact` VALUES (2,'vietnam.png','VIET NAM','Floor 31, Saigon Trade Center \r\n37 Ton Duc Thang Street, Ben Nghe Ward, \r\nDistrict 1, Ho Chi Minh City, Vietnam','56A Hoa Binh, Ward 5, \r\nDistrict 11, Ho Chi Minh City, Vietnam','(84-28)39117523',''),(4,'hongkong.png','HONG KONG','Flat L, 19/F, Block 2, Goldfield Industrial Building, 144-150 Tai Lin Pai Road, Kwai Chung, Hong Kong &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;             ','Flat L, 19/F, Block 2, Goldfield Industrial Building, 144-150 Tai Lin Pai Road, Kwai Chung, Hong Kong','(852) 3188 0677',''),(5,'canada.png','CANADA','736 Granville Street, Suite 1100 Vancouver, British Columbia V6Z 1G3, Canada                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;','Suite 1100, 736 Granville Street, Vancouver, British Columbia V6Z 1G3, Canada','(778) 889 4966',''),(21,'2017-05-10_china.png','CHINA','Room 2109, No.68, Guowei Road, Liantang, Luohu District, Shenzhen, China                                                                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;','Room 2109, No.68, Guowei Road, Liantang, Luohu District, Shenzhen, China','137 2876 7136','');
/*!40000 ALTER TABLE `tb_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_department`
--

DROP TABLE IF EXISTS `tb_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(75) DEFAULT NULL,
  `description` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_department`
--

LOCK TABLES `tb_department` WRITE;
/*!40000 ALTER TABLE `tb_department` DISABLE KEYS */;
INSERT INTO `tb_department` VALUES (1,'IT','Phong IT...'),(2,'HR','HR'),(3,'DIRECTORS','DIRECTORS....'),(4,'BUSINESS','BUSINESS');
/*!40000 ALTER TABLE `tb_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_partners`
--

DROP TABLE IF EXISTS `tb_partners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_partners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(75) DEFAULT NULL,
  `description` varchar(245) DEFAULT NULL,
  `link` varchar(245) DEFAULT NULL,
  `logo` varchar(245) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_partners`
--

LOCK TABLES `tb_partners` WRITE;
/*!40000 ALTER TABLE `tb_partners` DISABLE KEYS */;
INSERT INTO `tb_partners` VALUES (3,'CITYHUB','CityHub is a premier serviced office established since 1999 with the aim of providing a one-stop business solution for entrepreneurs, start-ups and multi-national companies looking to establish themselves in Singapore.','https://www.cityhub.com.sg','2017-05-11_cityhub.png'),(5,'SUPERNET','SUPERNET is a trademark Corporation Vietnam Creative Communications - Internet Service Provider independent licenses IXP, ISP','http://www.supernet.com.vn','2017-05-11_supernet.png'),(7,'KANSAI','To further build company credibility with the public and to contribute to society, by providing products and services that achieve customer satisfaction.\r\n','http://www.kansai.com/','2017-05-11_kansai.png'),(8,'Saigon Trade Center','Saigon Trade Center, the tallest and biggest office building in CBD - Ho Chi Minh City located at 37 Ton Duc Thang, Ben Nghe Ward, District 1, Ho Chi Minh City\r\nis a symbol ofprestige, comfort, quality, \r\n\r\n\r\n','http://www.saigontradecenter.com','2017-09-05_Saigon Trade Center.JPG'),(9,'Made-in-China','Made-in-China.com was developed by, and is operated by Focus Technology Co., Ltd. Focus Technology is a pioneer and leader in the field of electronic business in China.','http://www.made-in-china.com','2017-09-05_2017-06-09_made-in-china.jpg'),(10,'Korex','Shenzhen Korex Technology Co., Ltd','http://www.chinakorex.com','2017-09-05_korex.JPG');
/*!40000 ALTER TABLE `tb_partners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_people`
--

DROP TABLE IF EXISTS `tb_people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(75) DEFAULT NULL,
  `position` varchar(75) DEFAULT NULL,
  `description` text,
  `img_profile` varchar(145) DEFAULT NULL,
  `order` int(11) DEFAULT '0',
  `department_id` int(11) DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `img_content` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_people`
--

LOCK TABLES `tb_people` WRITE;
/*!40000 ALTER TABLE `tb_people` DISABLE KEYS */;
INSERT INTO `tb_people` VALUES (1,'Ke Feng (Andrea) Yuan','Chief Financial Officer','<p>Ms. Andrea Yuan is a Chartered Professional Accountant (CPA)/Certified General Accountant (CGA) in British Columbia and a Certified Public Accountant (CPA) in New Hampshire. Ms. Yuan obtained her Bachelor of Economics from Shanghai University of Finance and Economics in 1994. Ms. Yuan is fluent in both English and Mandarin (oral and written).</p>\r\n<p>Ms. Yuan started her career as an internal auditor and then as team head of the internal audit department at the Bank of China&rsquo;s Shanghai Pudong branch in China from 1994 through to 1999. After arriving in Canada in the Spring of 1999, Ms. Yuan worked as an accountant at a small accounting firm while she worked towards her &nbsp;CGA designation. &nbsp;Ms. Yuan moved to Davidson and Company LLP, Chartered Accountants, in 2004 where she worked in the firm&rsquo;s audit group. From November 2006 until 2009, Ms. Yuan was employed as an audit manager at Davidson. From 2009 until October 2011, Ms. Yuan was employed as an audit principal at Davidson. In addition to overseeing a variety of Canadian public company audits, she was also responsible for conducting the audits of various foreign public companies including Chinese and Korean companies.</p>\r\n<p>Ms. Yuan started her own financial and management consulting company Black Dragon Financial Consulting Services Inc. in November 2011. Currently, Ms. Yuan acts as Chief Financial Officer or financial consultant for several public companies listed on the TSX-V and the Canadian Securities Exchange.</p>\r\n<p>In her capacity as CFO of the Corporation, Ms. Yuan will devote approximately 35% of her time and such additional time to the business and affairs of the Corporation as may be necessary to discharge her duties.</p>','kefeng.jpg',2,3,1,'2017-09-27_kefeng.jpg'),(2,'Kong Yuk Kan','Chief Executive Officer & Director','<p>Mr. Kong Yuk Kan is the CEO and one of the founding shareholders of the Corporation&rsquo;s wholly-owned subsidiary, Glorious IT, and was responsible for setting up Glorious IT in 2011. Mr. Kong has been responsible for developing the strategic vision of GCL and building the necessary infrastructure in Vietnam, Hong Kong and Mainland China to implement the Corporation&rsquo;s business plan. Mr. Kong has travelled extensively between China, Hong Kong, Macau and Vietnam in order to establish strategic partnerships and business relationships and opportunities in each region.</p>\r\n<p>Mr. Kong has over 14 years&rsquo; experience as an IT director or IT manager in various public and private companies, most notably with YesMobile H.K. (2001 - 2003) and Luks Group (Vietnam Holdings) Company Limited (2005 - 2011). He worked at the Saigon Trade Center in Vietnam from 2009 to 2011 for Luks Group (Vietnam Holdings) Company Limited, during which time he assisted in the development of the Optical Fiber System in the Saigon Trade Center. Mr. Kong has obtained various IT qualifications, including: Certification of Information Systems Security Professional, Linux Professional Certification, Computer Information Forensic Investigator, and Certificate of Cisco Network Associate. Mr. Kong received a Masters Degree from the New Asia Institute of Advanced Chinese Studies in 1996 and a Ph.D (Chinese Economic History) from Xiamen University of China in 2009.</p>\r\n<p>Mr. Kong is fluent in English, Mandarin and Cantonese (oral and written). Also, although not &ldquo;fluent&rdquo;, he is conversant in Vietnamese.</p>\r\n<p>In his capacity as CEO and a director of the Corporation and CEO of Glorious IT, Mr. Kong will devote 100% of his time to the business and affairs of the Corporation.</p>','kong.jpg',1,3,1,'2017-09-27_kong.jpg'),(3,'Alan Foster','Director','<p>Mr. Foster is a senior executive with over 30 years&rsquo; experience in building and managing technology ventures. He has expertise in organizational leadership, business planning, sales and marketing, and product management and specializes in enterprises that deliver value added technology and software solutions to customers worldwide.</p>\r\n<p>Mr. Foster is currently the Executive in Residence for Wavefront Accelerator&rsquo;s Venture Acceleration Program (since October 2015), an organization that provides start-ups with consulting services and resources to meet their needs for efficient business development. Mr. Foster is also a principal of Kenagel Consulting (since 2012), providing product marketing and business management consulting services to technology based companies. Previously, Mr. Foster served as the Senior Vice-President of Business Development for Simpli Innovations Inc. (2015 &ndash; 2016); the Interim Chief Financial Officer for Epic Data International Inc. (2009 &ndash; 2012), President of eXI Wireless Inc. (2001 - 2005); Chief Operating Officer for Meridex Networks (2000 - 2001); and a Director of Motorola&rsquo;s Mobile Data Division (1988 - 1993).</p>\r\n<p>In his capacity as a director, Mr. Foster will devote approximately 5% of his time and such additional time to the business and affairs of the Corporation as may be necessary to discharge his duties.</p>','alan.jpg',3,3,1,'2017-09-27_alanaaa.jpg'),(20,'David Austin','Director','<div class=\"story \">\r\n<p>Mr. Austin has over 30 years&rsquo; Canadian reporting issuer experience. Mr. Austin currently serves as the CEO and Chairman (since October 2010) and a director (since July 2010) of Colonial Coal International Corp. (TSX-V: CAD), and was the President of its pre-amalgamation predecessor (2005 &ndash; 2008). Prior to that, Mr. Austin served as a director and/or senior officer of several other public companies listed on the TSX-V and the Toronto Stock Exchange including serving as the President (2001 &ndash; 2004) and a director (1995 &ndash; 2009) of NEMI Northern Energy &amp; Mining Inc. (then TSX: NNE.A). Mr. Austin was also a terminal manager with the BC Ferry Corporation in West Vancouver, BC.</p>\r\n<p>In his capacity as a director, Mr. Austin will devote approximately 5% of his time and such additional time to the business and affairs of the Corporation as may be necessary to discharge his duties.</p>\r\n</div>','no_image.jpg',4,3,1,'no_image.jpg'),(23,'Ian Mallmann','Director','<p>Mr. Mallmann has been the principal of Chagford Square Capital Inc., a corporate finance and real estate advisory firm since October 2003. Mr. Mallmann has more than 5 years of experience in serving as director, Chief Financial Officer and Chair of the Audit Committee for several PRC-based reporting issuers on the TSX-V and the Canadian Securities Exchange. He was most recently a director and audit committee chair of Symax Lift (Holding) Co., Ltd. (TSX-V: SYL) from December 2009 to March 2016. Currently, Mr. Mallmann acts as a director for Crownia Holdings Ltd. (TSX-V:CNH).</p>\r\n<p>Mr. Mallmann received a Bachelor of Arts Degree (1981), a Juris Doctor (1985) and a Masters Degree in Business Administration (1988), all from the University of British Columbia.</p>\r\n<p>In his capacity as a director, Mr. Mallmann will devote approximately 5% of his time and such additional time to the business and affairs of the Corporation as may be necessary to discharge his duties.</p>','no_image.jpg',5,3,1,'no_image.jpg'),(24,'Clarence Ho Yin Yip','Director','<p>Mr. Yip received a Bachelor of Arts degree from the University of Regina (Saskatchewan) in 1979 and an Education Certificate from the University of Hong Kong in 1985. He was a senior high school geography teacher from 1980 &ndash; 1987 and then emigrated from Hong Kong to Canada in 1987. Mr. Yip has worked as a realtor in Canada since 1990, which position sees him involved in buying and selling real estate properties, managing rental properties for clients and strata management. Mr. Yip has substantial experience with corporate secretarial duties due to his various positions managing stratas over the past 30 years.</p>\r\n<p>Mr. Yip is fluent in English, Mandarin and Cantonese (oral and written).</p>\r\n<p>In his capacity as a director, Mr. Yip will devote approximately 5% of his time and such additional time to the business and affairs of the Corporation as may be necessary to discharge his duties.</p>','no_image.jpg',6,3,1,'no_image.jpg'),(28,'Glorious (Vietnam) Company Limited','Vietnam','<p>Glorious (Vietnam) Company Limited was founded in 2011 with the head office located at 31 Ton Duc Thang Street, Ben Nghe Ward, District 1 and a showroom located at 56A Hoa Binh Street, Ward 5, District 11. As a subsidiary company of Glorious I.T. Creation Limited in Hong Kong, Glorious (Vietnam) focuses in being a multi-skilled I.T. solution provider with a highly competent workforce and strong ASEAN presence. Other than providing optical fiber building consultancy, large scale WiFi setup plan and energy saving solution, we also provide the online shopping platform and intelligent online advertisement system.</p>\r\n<p>Glorious (Vietnam)&rsquo;s workforce at this period &ndash; September 2017 consists of approximately 20 people with departments which are IT Department, Human Resource &amp; Administration Department, Accountant Department, and Business Department &ndash; Investment Corporation. Not just stopping there, we have made up a plan with 50-person workforce within the next year &ndash; 2018 and have an ambition to come up to 100 people in the workforce within the next 3 years.</p>','2017-09-27_HR1_Vietnam.png',1,2,1,'2017-09-27_HR1.jpg'),(30,'Glorious (Shenzhen) Company Limited','China','<p>Glorious (Shenzhen) Company Limited was founded in 2017 with the head office and showroom located at Room 2109, Shenzhen Internet Industry Park, No.68 Guowei Road, Liantang, Luohu District, Shenzhen, China. Owing to the location at Shenzhen Internet Industry Park, it is obviously advantageous to not only business activities at present but also the development in the future for Glorious (Shenzhen) Company Limited. Promoting, bringing Vietnamese high quality and traditional products to the foreign markets is what Glorious (Shenzhen) focuses on.</p>','2017-09-27_HR2_Shenzhen.jpg',1,2,1,'2017-09-27_HR3.jpg'),(32,'IT workforce','Glorious (Vietnam) Company Limited','<p>Glorious operates in many fields; among them, IT field is one of the most important fields. The IT workforce, with a high level of education and experiments, passion and enthusiasm, created technical products related to the fields which are considered potential for development in the future such as Big data, Artificial Intelligent, Blockchain and so on. The structure of Glorious IT divides into 4 teams: Design, software, hardware and networking and website.</p>\r\n<p>Design team: Designing graphic works: Logo, Brochure, Backdrop, banner and so on.</p>\r\n<p>Software team: Building websites and software and researching about Big data, Artificial Intelligent, and Blockchain.</p>\r\n<p>Hardware and networking team: Ensuring hardware and network system in the stable operation, implementing security solutions to protect information system and prevent hackers.</p>\r\n<p>Website team: Supporting business team to run ecommerce websites.</p>\r\n<p>According to general development, Glorious IT tends to expand not only quantity but also quality of IT human resources. Simultaneously, Glorious IT will also focuses on researching new technologies in order to meet the target of becoming one of the creation companies.</p>','2017-09-27_IT_workforce.jpg',1,1,1,'2017-09-28_IT.JPG'),(37,'Glorious Vietnam','Vietnam','<p>Business Team, one of the important units at Glorious, mainly focuses on managing business activities of Company. Our team is run by members with enthusiasm, passion, dedication, and professionalism. The mission of bringing high quality technology products to customers is made through online &amp; offline selling method on ecommerce website Vivmall of Glorious. &nbsp;</p>\r\n<p>Besides, our guideline in business activities is to always attach special importance to the stage of customer service after selling; we commit to be side with customers on every stage. We always make research, exploration on markets and customers&rsquo; demands to find out the best and most effective marketing strategy</p>\r\n<p>Simultaneously, Business Team is endeavoring to train and support our business members to successfully become business representatives of Glorious</p>','2017-09-28_Business_team.jpg',1,4,1,'2017-09-28_Business_team.jpg'),(39,'Glorious ShenZhen','China','<p>Shenzhen Glorious has two major businesses.</p>\r\n<p>One is sales of high-quality agricultural and sideline products exported from Vietnam and other southeast countries to China. Such as Vietnam coffee, Tea, Incense, Honey, Candy, Dried fruit and so on. The world&rsquo;s best Weasel Coffee is also on sale. These agricultural and sideline products are handmade by Vietnamese farmers, which do not contain industrial additives, which are consistent with the green, environmental protection and health advocated by China. This is also the philosophy that Shenzhen Glorious company has been adhering to.</p>\r\n<p>The other one is more important. Shenzhen Glorious trading platform is a gateway for Chinese small and medium sized suppliers to enter the growing market of consumer and industrial goods in Vietnam and other southeast countries. The platform adopts the membership system, the enterprise pays a certain membership fee, then namely the honorable member. Shenzhen Glorious company provides members publicity, logistics, translation and collection services. All products of members&rsquo; company can be given priority to be exhibited in Vietnam on line and offline, and regularly hold product promotion service, assist members to do product demonstraion, consumer guidance and provide after-sales service.</p>','2017-09-28_ShenZhen2.jpg',2,4,1,'2017-09-28_ShenZhen2.jpg');
/*!40000 ALTER TABLE `tb_people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_slide`
--

DROP TABLE IF EXISTS `tb_slide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_fullname` varchar(245) CHARACTER SET ucs2 DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_slide`
--

LOCK TABLES `tb_slide` WRITE;
/*!40000 ALTER TABLE `tb_slide` DISABLE KEYS */;
INSERT INTO `tb_slide` VALUES (13,'2017-11-29_bd1f08b2-595c-4d47-9c66-02caf3c890b5.jpg','2017-11-29 12:44:49'),(14,'2017-09-27_2.jpg','2017-09-27 14:34:33'),(17,'2017-09-26_2017-09-26_HRGloriousVN.jpg','2017-09-26 17:50:51'),(18,'2017-09-28_slideSZ1.jpg','2017-09-28 16:44:41'),(19,'2017-11-27_glorious2.jpg','2017-11-27 16:40:25'),(20,'2017-10-11_Mid-Autumn-Employee.jpg','2017-10-11 11:44:39'),(21,'2017-10-11_Mid-Autum-charity house.jpg','2017-10-11 11:47:15'),(22,'2017-10-11_Mid-Autumn-Children.jpg','2017-10-11 11:47:58'),(23,'2017-11-15_5dc1c1d2-ed46-4e14-825d-cc2a89417bcd.jpg','2017-11-15 16:45:27'),(25,'2017-11-14_2.jpg','2017-11-14 17:51:17'),(26,'2017-11-15_5dc1c1d2-ed46-4e14-825d-cc2a89417bcd.jpg','2017-11-15 16:44:12'),(28,'2017-11-27_glorious1.jpg','2017-11-27 16:40:47');
/*!40000 ALTER TABLE `tb_slide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user` (
  `username` varchar(200) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `user_role` varchar(45) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` VALUES ('u1@gmail.com','123456','u1','0909','ROLE_ADMIN',1);
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'dbglorious'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_news_search_index` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`vinhsang`@`%` PROCEDURE `sp_news_search_index`(
	in p_category int,
    in p_year int
)
BEGIN
		
select * from news where news_catgory =p_category and status=1 and isdelete=0 and YEAR(createdate) =(
SELECT YEAR(t2.createdate)  as s_year
from news t2 where t2.news_catgory =p_category and  YEAR(t2.createdate) =p_year limit 1
);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_news_search_index2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`vinhsang`@`%` PROCEDURE `sp_news_search_index2`(
	in p_category int
)
BEGIN
select * from news
 where news_catgory =p_category and status=1 and isdelete=0 and YEAR(createdate) =(
SELECT YEAR(createdate)  as s_year
from news where news_catgory =p_category
group by s_year order by s_year desc limit 1
);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-03  8:25:07
