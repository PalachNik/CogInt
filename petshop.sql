-- MySQL dump 10.14  Distrib 5.5.34-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: petshop
-- ------------------------------------------------------
-- Server version	5.5.34-MariaDB

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
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gender` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `gender_ru` enum('М','Ж','') DEFAULT NULL,
  `gender_en` enum('M','F','') DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `net_country`
--

DROP TABLE IF EXISTS `net_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `net_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_ru` varchar(100) DEFAULT NULL,
  `name_en` varchar(100) DEFAULT NULL,
  `code` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code` (`code`),
  KEY `name_en` (`name_en`),
  KEY `name_ru` (`name_ru`)
) ENGINE=MyISAM AUTO_INCREMENT=248 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `net_country`
--

LOCK TABLES `net_country` WRITE;
/*!40000 ALTER TABLE `net_country` DISABLE KEYS */;
INSERT INTO `net_country` VALUES (1,'Австралия','Australia','AU'),(2,'Малайзия','Malaysia','MY'),(3,'Республика Корея','Korea','KR'),(4,'Китай','China','CN'),(5,'Япония','Japan','JP'),(6,'Индия','India','IN'),(7,'Тайвань','Taiwan','TW'),(8,'Гонконг','Hong Kong','HK'),(9,'Таиланд','Thailand','TH'),(11,'Вьетнам','Vietnam','VN'),(12,'Франция','France','FR'),(13,'Италия','Italy','IT'),(14,'Объединенные Арабские Эмираты','United Arab Emirates','AE'),(15,'Швеция','Sweden','SE'),(16,'Казахстан','Kazakhstan','KZ'),(17,'Португалия','Portugal','PT'),(18,'Греция','Greece','GR'),(19,'Саудовская Аравия','Saudi Arabia','SA'),(20,'Российская Федерация','Russian Federation','RU'),(21,'Великобритания','United Kingdom','GB'),(22,'Дания','Denmark','DK'),(23,'США','United States','US'),(24,'Канада','Canada','CA'),(25,'Мексика','Mexico','MX'),(26,'Бермуды','Bermuda','BM'),(27,'Пуэрто Рико','Puerto Rico','PR'),(28,'Виргинские Острова США','Virgin Islands, U.S.','VI'),(29,'Германия','Germany','DE'),(30,'Иран','Iran','IR'),(31,'Боливия','Bolivia','BO'),(32,'Монтсеррат','Montserrat','MS'),(33,'Нидерланды','Netherlands','NL'),(34,'Израиль','Israel','IL'),(35,'Испания','Spain','ES'),(36,'Багамские острова','Bahamas','BS'),(37,'Сент-Винсент и Гренадины','Saint Vincent and the Grenadines','VC'),(38,'Чили','Chile','CL'),(39,'Новая Каледония','New Caledonia','NC'),(40,'Аргентина','Argentina','AR'),(41,'Доминика','Dominica','DM'),(42,'Сингапур','Singapore','SG'),(43,'Непал','Nepal','NP'),(44,'Филиппины','Philippines','PH'),(45,'Индонезия','Indonesia','ID'),(46,'Пакистан','Pakistan','PK'),(47,'Токелау','Tokelau','TK'),(48,'Новая Зеландия','New Zealand','NZ'),(49,'Камбоджа','Cambodia','KH'),(50,'Макау','Macau','MO'),(51,'Папуа Новая Гвинея','Papua New Guinea','PG'),(52,'Мальдивские острова','Maldives','MV'),(53,'Афганистан','Afghanistan','AF'),(54,'Бангладеш','Bangladesh','BD'),(55,'Ирландия','Ireland','IE'),(56,'Бельгия','Belgium','BE'),(57,'Белиз','Belize','BZ'),(58,'Бразилия','Brazil','BR'),(59,'Швейцария','Switzerland','CH'),(60,'Южно-Африканская Республика','South Africa','ZA'),(61,'Египет','Egypt','EG'),(62,'Нигерия','Nigeria','NG'),(63,'Танзания','Tanzania','TZ'),(64,'Замбия','Zambia','ZM'),(65,'Сенегал','Senegal','SN'),(66,'Гана','Ghana','GH'),(67,'Судан','Sudan','SD'),(68,'Камерун','Cameroon','CM'),(69,'Малави','Malawi','MW'),(70,'Ангола','Angola','AO'),(71,'Кения','Kenya','KE'),(72,'Габон','Gabon','GA'),(73,'Мали','Mali','ML'),(74,'Бенин','Benin','BJ'),(75,'Мадагаскар','Madagascar','MG'),(76,'Чад','Chad','TD'),(77,'Ботсвана','Botswana','BW'),(78,'Ливия','Libya','LY'),(79,'Кабо-Верде','Cape Verde','CV'),(80,'Руанда','Rwanda','RW'),(81,'Мозамбик','Mozambique','MZ'),(82,'Гамбия','Gambia','GM'),(83,'Лесото','Lesotho','LS'),(84,'Маврикий','Mauritius','MU'),(85,'Конго','Congo','CG'),(86,'Уганда','Uganda','UG'),(87,'Буркина Фасо','Burkina Faso','BF'),(88,'Сьерра-Леоне','Sierra Leone','SL'),(89,'Сомали','Somalia','SO'),(90,'Зимбабве','Zimbabwe','ZW'),(91,'Демократическая Республика Конго','Democratic Republic Of The Congo','CD'),(92,'Нигер','Niger','NE'),(93,'Центрально-Африканская Республика','Central African Republic','CF'),(94,'Свазиленд','Swaziland','SZ'),(95,'Того','Togo','TG'),(96,'Гвинея','Guinea','GN'),(97,'Либерия','Liberia','LR'),(98,'Сейшеллы','Seychelles','SC'),(99,'Марокко','Morocco','MA'),(100,'Алжир','Algeria','DZ'),(101,'Мавритания','Mauritania','MR'),(102,'Намибия','Namibia','NA'),(103,'Джибути','Djibouti','DJ'),(105,'Коморские острова','Comoros','KM'),(106,'Реюньон','Reunion','RE'),(107,'Экваториальная Гвинея','Equatorial Guinea','GQ'),(108,'Тунис','Tunisia','TN'),(109,'Турция','Turkey','TR'),(110,'Польша','Poland','PL'),(111,'Латвия','Latvia','LV'),(112,'Украина','Ukraine','UA'),(113,'Беларусь','Belarus','BY'),(114,'Чехия','Czech Republic','CZ'),(115,'Палестина','Palestinian Territory','PS'),(116,'Исландия','Iceland','IS'),(117,'Кипр','Cyprus','CY'),(118,'Венгрия','Hungary','HU'),(119,'Словакия','Slovakia','SK'),(120,'Сербия','Serbia','RS'),(121,'Болгария','Bulgaria','BG'),(122,'Оман','Oman','OM'),(123,'Румыния','Romania','RO'),(124,'Грузия','Georgia','GE'),(125,'Норвегия','Norway','NO'),(126,'Армения','Armenia','AM'),(127,'Австрия','Austria','AT'),(128,'Албания','Albania','AL'),(129,'Словения','Slovenia','SI'),(130,'Панама','Panama','PA'),(131,'Бруней','Brunei Darussalam','BN'),(132,'Шри-Ланка','Sri Lanka','LK'),(133,'Черногория','Montenegro','ME'),(134,'Европейский Союз','Europe','EU'),(135,'Таджикистан','Tajikistan','TJ'),(136,'Ирак','Iraq','IQ'),(137,'Ливан','Lebanon','LB'),(138,'Молдова','Moldova','MD'),(139,'Финляндия','Finland','FI'),(140,'Эстония','Estonia','EE'),(141,'Босния и Герцеговина','Bosnia and Herzegovina','BA'),(142,'Кувейт','Kuwait','KW'),(143,'Аландские острова','Aland Islands','AX'),(144,'Литва','Lithuania','LT'),(145,'Люксембург','Luxembourg','LU'),(146,'Антигуа и Барбуда','Antigua and Barbuda','AG'),(147,'Македония','Macedonia','MK'),(148,'Сан-Марино','San Marino','SM'),(149,'Мальта','Malta','MT'),(150,'Фолклендские острова','Falkland Islands','FK'),(151,'Бахрейн','Bahrain','BH'),(152,'Узбекистан','Uzbekistan','UZ'),(153,'Азербайджан','Azerbaijan','AZ'),(154,'Монако','Monaco','MC'),(155,'Гаити','Haiti','HT'),(156,'Гуам','Guam','GU'),(157,'Ямайка','Jamaica','JM'),(158,'Внешние малые острова США','United States Minor Outlying Islands','UM'),(159,'Микронезия','Micronesia','FM'),(160,'Эквадор','Ecuador','EC'),(161,'Перу','Peru','PE'),(162,'Каймановы острова','Cayman Islands','KY'),(163,'Колумбия','Colombia','CO'),(164,'Гондурас','Honduras','HN'),(165,'Антильские острова','Netherlands Antilles','AN'),(166,'Йемен','Yemen','YE'),(167,'Британские Виргинские острова','Virgin Islands, British','VG'),(168,'Сирия','Syria','SY'),(169,'Никарагуа','Nicaragua','NI'),(170,'Доминиканская республика','Dominican Republic','DO'),(171,'Гренада','Grenada','GD'),(172,'Гватемала','Guatemala','GT'),(173,'Коста-Рика','Costa Rica','CR'),(174,'Сальвадор','El Salvador','SV'),(175,'Венесуэла','Venezuela','VE'),(176,'Барбадос','Barbados','BB'),(177,'Тринидад и Тобаго','Trinidad and Tobago','TT'),(178,'Буве','Bouvet Island','BV'),(179,'Маршалловы острова','Marshall Islands','MH'),(180,'Острова Кука','Cook Islands','CK'),(181,'Гибралтар','Gibraltar','GI'),(182,'Парагвай','Paraguay','PY'),(247,'Южный Судан','South Sudan','SS'),(184,'Самоа','Samoa','WS'),(185,'Сент Китс и Невис','Saint Kitts and Nevis','KN'),(186,'Фиджи','Fiji','FJ'),(187,'Уругвай','Uruguay','UY'),(188,'Северные Марианские острова','Northern Mariana Islands','MP'),(189,'Палау','Palau','PW'),(190,'Катар','Qatar','QA'),(191,'Иордания','Jordan','JO'),(192,'Американское Самоа','American Samoa','AS'),(193,'Туркс и Кейкос','Turks and Caicos Islands','TC'),(194,'Святая Люсия','Saint Lucia','LC'),(195,'Монголия','Mongolia','MN'),(196,'Ватикан','Holy See','VA'),(197,'Арулько','Aruba','AW'),(198,'Гайана','Guyana','GY'),(199,'Суринам','Suriname','SR'),(200,'Остров Мэн','Isle of Man','IM'),(201,'Вануату','Vanuatu','VU'),(202,'Хорватия','Croatia','HR'),(203,'Ангуилья','Anguilla','AI'),(204,'Сен-Пьер и Микелон','Saint Pierre and Miquelon','PM'),(205,'Гваделупа','Guadeloupe','GP'),(206,'Сен-Мартен','Saint Martin','MF'),(207,'Гернси','Guernsey','GG'),(208,'Бурунди','Burundi','BI'),(209,'Туркменистан','Turkmenistan','TM'),(210,'Кыргызстан','Kyrgyzstan','KG'),(211,'Мьянма','Myanmar','MM'),(212,'Бутан','Bhutan','BT'),(213,'Лихтенштейн','Liechtenstein','LI'),(214,'Фарерские острова','Faroe Islands','FO'),(215,'Эфиопия','Ethiopia','ET'),(216,'Мартиника','Martinique','MQ'),(217,'Джерси','Jersey','JE'),(218,'Андорра','Andorra','AD'),(219,'Антарктида','Antarctica','AQ'),(220,'Британская территория в Индийском океане','British Indian Ocean Territory','IO'),(221,'Гренландия','Greenland','GL'),(222,'Гвинея-Бисау','Guinea-Bissau','GW'),(223,'Эритрея','Eritrea','ER'),(224,'Уоллис и Футуна','Wallis and Futuna','WF'),(225,'Французская Полинезия','French Polynesia','PF'),(226,'Куба','Cuba','CU'),(227,'Тонга','Tonga','TO'),(228,'Восточный Тимор','Timor-Leste','TL'),(229,'Сан-Томе и Принсипи','Sao Tome and Principe','ST'),(230,'Французская Гвинея','French Guiana','GF'),(231,'Соломоновы острова','Solomon Islands','SB'),(232,'Тувалу','Tuvalu','TV'),(233,'Кирибати','Kiribati','KI'),(234,'Ниуэ','Niue','NU'),(235,'Норфолк','Norfolk Island','NF'),(236,'Науру','Nauru','NR'),(237,'Майотта','Mayotte','YT'),(238,'Питкэрн','Pitcairn Islands','PN'),(239,'Кот-д\'Ивуар','Cote D\'Ivoire','CI'),(240,'Лаос','Lao','LA'),(241,'Корейская Народно-Демократическая Республика','Democratic People\'s Republic of Korea','KP'),(242,'Свальбард и Ян-Майен','Svalbard and Jan Mayen','SJ'),(243,'Остров Святой Елены','Saint Helena','SH'),(244,'Кокосовые острова','Cocos (Keeling) Islands','CC'),(245,'Западная Сахара','Western Sahara','EH');
/*!40000 ALTER TABLE `net_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `phone` int(15) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `text` text,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(60) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fb_id` int(20) DEFAULT NULL,
  `vk_id` int(20) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_address`
--

DROP TABLE IF EXISTS `users_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_address` (
  `user_id` int(11) NOT NULL,
  `country_id` int(3) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_address`
--

LOCK TABLES `users_address` WRITE;
/*!40000 ALTER TABLE `users_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_info`
--

DROP TABLE IF EXISTS `users_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_info` (
  `user_id` int(11) NOT NULL,
  `public_email` varchar(60) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `gender_id` int(1) DEFAULT NULL,
  `phone` int(15) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `about` text,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `user_id` (`user_id`),
  KEY `gender_id` (`gender_id`),
  CONSTRAINT `users_info_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `users_info_ibfk_2` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_info`
--

LOCK TABLES `users_info` WRITE;
/*!40000 ALTER TABLE `users_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-02-12 12:58:49
