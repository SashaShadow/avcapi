-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: avc
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add songs',7,'add_songs'),(26,'Can change songs',7,'change_songs'),(27,'Can delete songs',7,'delete_songs'),(28,'Can view songs',7,'view_songs');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$320000$SQLP65Ti5k36QW2GUSjzn6$mVsaYTK7Gpclcu4dB95HK7qMuCUhN4h5906BMCGpUEc=','2022-04-17 16:01:49.833596',1,'Sasha','','','caballerosasha@hotmail.com',1,1,'2022-04-16 00:30:47.950406');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'avcapi','songs'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-04-15 15:55:22.119727'),(2,'auth','0001_initial','2022-04-15 15:56:14.051501'),(3,'admin','0001_initial','2022-04-15 15:56:33.699552'),(4,'admin','0002_logentry_remove_auto_add','2022-04-15 15:56:33.830742'),(5,'admin','0003_logentry_add_action_flag_choices','2022-04-15 15:56:34.078069'),(6,'contenttypes','0002_remove_content_type_name','2022-04-15 15:56:40.966585'),(7,'auth','0002_alter_permission_name_max_length','2022-04-15 15:56:46.292688'),(8,'auth','0003_alter_user_email_max_length','2022-04-15 15:56:48.134443'),(9,'auth','0004_alter_user_username_opts','2022-04-15 15:56:48.651219'),(10,'auth','0005_alter_user_last_login_null','2022-04-15 15:56:54.984819'),(11,'auth','0006_require_contenttypes_0002','2022-04-15 15:56:55.397729'),(12,'auth','0007_alter_validators_add_error_messages','2022-04-15 15:56:55.755861'),(13,'auth','0008_alter_user_username_max_length','2022-04-15 15:57:02.774981'),(14,'auth','0009_alter_user_last_name_max_length','2022-04-15 15:57:09.573219'),(15,'auth','0010_alter_group_name_max_length','2022-04-15 15:57:10.614671'),(16,'auth','0011_update_proxy_permissions','2022-04-15 15:57:11.248854'),(17,'auth','0012_alter_user_first_name_max_length','2022-04-15 15:57:16.018068'),(18,'sessions','0001_initial','2022-04-15 15:57:18.616836'),(19,'avcapi','0001_initial','2022-04-15 16:01:10.644059'),(20,'avcapi','0002_alter_songs_options','2022-04-17 21:55:14.620497');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('nyzssim5cqjimzeeom0zcuhkbvxhi3i3','.eJxVjDsOwyAQRO9CHSGzfAIp0-cMaGEhOIlAMnYV-e62JRdJOfPezJd5XObil54mPxK7McEuv13A-E71APTC-mw8tjpPY-CHwk_a-aNR-txP9--gYC_7WhpUEkCSkmrQbk9BS9LJGAvaCYsUkQSAwGivCrQlYTJghsGp7Gxm6wawuDbh:1nfWYf:6jQrvTJ9W84ESMspEgTlMMuuTqG1AvAAeJY2I11zcfk','2022-04-30 00:45:01.908648'),('rha605x4sqc3rurfhw97v87qvuoivcjo','.eJxVjDsOwyAQRO9CHSGzfAIp0-cMaGEhOIlAMnYV-e62JRdJOfPezJd5XObil54mPxK7McEuv13A-E71APTC-mw8tjpPY-CHwk_a-aNR-txP9--gYC_7WhpUEkCSkmrQbk9BS9LJGAvaCYsUkQSAwGivCrQlYTJghsGp7Gxm6wawuDbh:1ng7LS:AZfobT3SmyFCdxSX8819qU49-FJydmDPzm8XYunVkuA','2022-05-01 16:01:50.345027');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `songs` (
  `nombre` char(30) DEFAULT NULL,
  `id` int DEFAULT NULL,
  `año_de_composición` int DEFAULT NULL,
  `duración_segundos` int DEFAULT NULL,
  `compositores` varchar(255) DEFAULT NULL,
  `letra` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES ('Lugar de Almas',2,2020,NULL,'Emanuel Porres, Sasha Rodriguez Carlomagno, Brian Casafú','Sin falta, dame ya\nun buen recuerdo\nque lo sientas de verdad\nque brille en tu cuerpo.\n\nSi me tengo que perder y cegar\nasi será, no tengo miedo.\n\nCuando me lleves a tu lugar\nde almas, por favor demorate\nen apagar mi vela. \n\nQuisiera hoy vivir en \neste desierto. \n\nSi me tengo que perder y cegar\nasi será, todo es tan lento.\n\nCuando me lleves a tu lugar\nde almas, por favor demorate\nen apagar mi vela. \n\nCuando me lleves a tu lugar\nde almas, por favor demorate\nen apagar mi vela. \nNo debía arriesgar, pero era\nuna necesidad encontrar la belleza\nde tu presencia una vez mas.'),('Enrika',1,2015,NULL,'Sasha Rodriguez Carlomagno','Muchas palabras se han dicho, pero en tiempos de guerra y no se si son reales\nQuiero creerlas sin embargo tu rostro me asusta cuando siento que se va \n\nSiendo tu pan en el camino te dije que dándote la vuelta mirarias al sol\n\nY yo te busco en ese sueño y en todos los tiempos\n\nLirio del valle, mediadora, no abandones tu reino, no detengas tu brillar\n\nSiendo tu pan en el camino te dije que dándote la vuelta mirarias al sol\n\nY yo te busco en ese sueño y en todos los tiempos, sin volver y sin textos\nSin razon, sin poder, pues no existes'),('Rinkrank',3,2020,NULL,'Emanuel Porres, Sasha Rodriguez Carlomagno, Brian Casafú','Tal vez era hora de crecer\nsiendo la nieve que imaginaba\nayer\n\nY acá viendo la gente pasar,\nno me decido si el tren tomar\nno sé\n\nA donde va y que será verdad\n\nQuizás en este viaje habrá\nalguien que me diga como luchar\nes que\n\nNo respiro, pienso, no concluyo, siento\ny ya no hay mas que dejarme caer\n\nAllá en la oscuridad,\nque no es el lugar que creía,\nel dolor que me causaste fue en el día. \n\nNo respiro, pienso, no concluyo, siento\ny ya no hay mas que dejarme caer\n\nAllá en la oscuridad,\nque no es el lugar que creía,\nel dolor que me causaste fue tan\nbrillante, un largo instante\ny por todas partes grité amarlo\n\nNo respiro, pienso, no concluyo, siento\ny ya no hay mas tiempo, ya no hay mas tiempo'),('Scarlett',8,2021,NULL,'Emanuel Porres, Sasha Rodriguez Carlomagno, Brian Casafú, Miranda Martinez','Oh oh oh, oh oh oh, oh oh. x2 \n\nIntento encontrarte cuando no estás,\nhurgando en tu propia verdad.\n\nOh oh oh, oh oh oh, oh oh. x2\n\nEsta mañana me di cuenta\nes obvio que es lo que nos cuesta.\n¿Hoy quien sos cuando no tenés voz?\n\nOh oh oh, oh oh oh, oh oh.\n\nQuien vendrá a buscarme cuando no haya\nmas nada que decir, que contar\n\nEsta mañana me di cuenta\nla cruz que cargo no es respuesta\n¿Hoy quien sos cuando no tenés voz?, ¿quien sos?\n\nQue no, que siga x6\nQue no, que siga x6\nNo, no pare, no, que siga, comienza el viaje.\n\nNo habrá mas que contarte las cosas que me cuenta(que presenta) el mañana.\n\nQue no, que siga x6\nNo, no pare, no pa, que siga, comienza el viaje.'),('Con la frente en alto',9,2021,NULL,'Emanuel Porres, Sasha Rodriguez Carlomagno, Brian Casafú, Miranda Martinez','Ruedan mil cabezas, ninguna a la par, se quiebra el arcoíris solo por estar.\nMiseria en la comedia, cruel en el cartel, se mueren por beberla, se matan por estar\nY ahora estoy aquí, aquí, aquí, aquí sin mi, y ahora estoy sin mi queriéndome escapar del fin\nNo comprendo que te pasa, cuando quieres cortar mis alas, que me importa que me quieras, con la frente en alto, con la frente en alto estoy, sin vos, estoy sin vos. \nLos versos que comiste no están en mi menú, la historia que vendiste no se escuchará.\nSe revela la colmena, sin reina estarán, ahora libre y fuerte\n\nY ahora estoy aquí, aquí, aquí, aquí sin mi, y ahora estoy sin mi queriéndome escapar del fin\nNo comprendo que te pasa, cuando quieres cortar mis alas, que me importa que me quieras, con la frente en alto, con la frente en alto estoy, sin vos, estoy sin vos. \n'),('Mapa',10,2021,NULL,'Emanuel Porres, Sasha Rodriguez Carlomagno, Brian Casafú, Miranda Martinez','Mil maneras de caminar, pero todas te traen acá.\nTu aroma, tu sombra, tu esencia, tu boca, una voz irreal. \nClausurada está la cuestión, lo que siento viaja con vos, \nMis manos, tus manos, se funden, no en vano, pienso al respirar. \n\nY me doy cuenta que me falla el GPS en la ciudad. \nQue lo que busco esté por donde quieras vos andar.\n \nHey, dónde voy, cuando se me acaba el mapa,\nHey, donde voy, cuando hoy pierda el ancla,\nHey dónde estoy, cuando no encuentre mi casa,\nHey dónde voy, cuando no te vea en mi cama.\n\nCuando no entra la señal mi cabeza empieza a carburar, que hice, que hago, en tal calle, en tal barrio ya no nos verán.\n\nY me doy cuenta que me falla el GPS en mi ciudad. \nQue lo que busco esté por donde quieras vos andar.\n\nHey, dónde voy, cuando se me acaba el mapa,\nHey, donde voy, cuando hoy pierda el ancla,\nHey dónde estoy, cuando no encuentre mi casa,\nHey dónde voy, cuando no te vea en mi cama.\n'),('Real',4,2020,NULL,'Emanuel Porres, Sasha Rodriguez Carlomagno, Brian Casafú','Se va durmiendo el sol\nmi alma lento se quiebra\nno hay consideracion, el ciclo no frena,\nuno cambia junto al mundo\n\nEl viento nos cuenta, el dia que nos aguarda\npero no puedo ver, no se interpretar\nlos aullidos en mi ventana\n\nY todo es igual a lo que creo recordar\naunque el cielo varió su color, ya no es claro,\ny mis pies dudan en la tierra buscando\nun rostro que pueda ser\n\nReal, que haya sentido la máscara,\nese elemento que hace distancias,\nreal, que sostenga la mirada.\n\n\nINSTRUMENTAL/SOLO\n\nY todo es igual a lo que creo recordar\naunque el cielo varió su color, ya no es claro,\ny mis pies dudan en la tierra buscando\nun rostro que pueda ser\n\nReal, que haya sentido la máscara,\nese elemento que hace distancias,\nreal, que sostenga la mirada.'),('Tu Piel',5,2020,NULL,'Emanuel Porres, Sasha Rodriguez Carlomagno, Brian Casafú','Cuando espero volver a comenzar, volvés a bailarme,\nY aunque sepa que la danza no está, no puedo dejar de mirar \n\nY hoy tu amor, un resto verbal, ¿a quien despertará?\nUn largo sueño roto como un cristal, despedazándose\n\nY el tiempo pasó, la noche no mintió, me gritó que te pida salir\n\nLo tengo que olvidar, ya sé, pero igual ¿como fue que el se llevó tu piel?\nSe vuelve tan real el que renuncies a mi fé escrita en tu piel\n\nLo tengo que olvidar, ya sé, pero igual ¿como fue que el se llevó tu piel?\nSe vuelve tan real el que renuncies a mi fé escrita en tu piel\n\nY el tiempo pasó, la noche no mintió, me gritó que te pida salir'),('2 AM',6,2020,NULL,'Emanuel Porres, Sasha Rodriguez Carlomagno, Brian Casafú','Hoy el cielo, borró el adiós. \nQue mandaste por el buzón. \nLa distancia nos mejoró.\nCaminemos ya sin pudor.\n\nCaminando por la calle,\nVoy sin reloj.\nNo sé ni cuando y como, se harán las 2 AM.\n\nVoy llegando, a la disco, y te veo sin tu chico,\nQue mal.\nSolo conmigo estarás.\n\nHoy el cielo, borró el adiós. \nQue mandaste por el buzón. \nLa distancia nos mejoró.\nCaminemos ya sin pudor.\n\nVoy llegando, a la disco, y te veo sin tu chico,\nQue mal.\nSolo conmigo estarás.'),('Afrodita',7,2020,NULL,'Emanuel Porres, Sasha Rodriguez Carlomagno, Brian Casafú','Supe que me pasaba, \nAl correr mi ventana al sur. \nPuedo sentir tus mañanas,\nCuando me despertas.\n\nTu mirada atrapaba, \nEl secreto en mi almohada, \nDrácula me succiona, \nPero vos me enamoras.\n\nSi, hoy me enamora Afrodita,\nSi, hoy ven mi venus de Milo.\nSi, hoy siento la vibra en mi alma, \nY quiero más, mucho más.\n\nTu mirada atrapaba, \nEl secreto en mi almohada, \nDrácula me succiona, \nPero vos me enamoras.\n\nSi, hoy me enamora Afrodita,\nSi, hoy ven mi venus de Milo.\nSi, hoy siento la vibra en mi alma, \nY quiero más, mucho más.'),('Me voy',11,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-18 13:31:42
