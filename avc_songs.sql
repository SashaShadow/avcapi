-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: avc
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `songs` (
  `nombre` char(30) DEFAULT NULL,
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
INSERT INTO `songs` VALUES ('Lugar de Almas',2020,NULL,'Emanuel Porres, Sasha Rodriguez Carlomagno, Brian Casafú','Sin falta, dame ya\nun buen recuerdo\nque lo sientas de verdad\nque brille en tu cuerpo.\n\nSi me tengo que perder y cegar\nasi será, no tengo miedo.\n\nCuando me lleves a tu lugar\nde almas, por favor demorate\nen apagar mi vela. \n\nQuisiera hoy vivir en \neste desierto. \n\nSi me tengo que perder y cegar\nasi será, todo es tan lento.\n\nCuando me lleves a tu lugar\nde almas, por favor demorate\nen apagar mi vela. \n\nCuando me lleves a tu lugar\nde almas, por favor demorate\nen apagar mi vela. \nNo debía arriesgar, pero era\nuna necesidad encontrar la belleza\nde tu presencia una vez mas.'),('Enrika',2015,NULL,'Sasha Rodriguez Carlomagno','Muchas palabras se han dicho, pero en tiempos de guerra y no se si son reales\nQuiero creerlas sin embargo tu rostro me asusta cuando siento que se va \n\nSiendo tu pan en el camino te dije que dándote la vuelta mirarias al sol\n\nY yo te busco en ese sueño y en todos los tiempos\n\nLirio del valle, mediadora, no abandones tu reino, no detengas tu brillar\n\nSiendo tu pan en el camino te dije que dándote la vuelta mirarias al sol\n\nY yo te busco en ese sueño y en todos los tiempos, sin volver y sin textos\nSin razon, sin poder, pues no existes'),('Rinkrank',2020,NULL,'Emanuel Porres, Sasha Rodriguez Carlomagno, Brian Casafú','Tal vez era hora de crecer\nsiendo la nieve que imaginaba\nayer\n\nY acá viendo la gente pasar,\nno me decido si el tren tomar\nno sé\n\nA donde va y que será verdad\n\nQuizás en este viaje habrá\nalguien que me diga como luchar\nes que\n\nNo respiro, pienso, no concluyo, siento\ny ya no hay mas que dejarme caer\n\nAllá en la oscuridad,\nque no es el lugar que creía,\nel dolor que me causaste fue en el día. \n\nNo respiro, pienso, no concluyo, siento\ny ya no hay mas que dejarme caer\n\nAllá en la oscuridad,\nque no es el lugar que creía,\nel dolor que me causaste fue tan\nbrillante, un largo instante\ny por todas partes grité amarlo\n\nNo respiro, pienso, no concluyo, siento\ny ya no hay mas tiempo, ya no hay mas tiempo'),('Scarlett',2021,NULL,'Emanuel Porres, Sasha Rodriguez Carlomagno, Brian Casafú, Miranda Martinez','Oh oh oh, oh oh oh, oh oh. x2 \n\nIntento encontrarte cuando no estás,\nhurgando en tu propia verdad.\n\nOh oh oh, oh oh oh, oh oh. x2\n\nEsta mañana me di cuenta\nes obvio que es lo que nos cuesta.\n¿Hoy quien sos cuando no tenés voz?\n\nOh oh oh, oh oh oh, oh oh.\n\nQuien vendrá a buscarme cuando no haya\nmas nada que decir, que contar\n\nEsta mañana me di cuenta\nla cruz que cargo no es respuesta\n¿Hoy quien sos cuando no tenés voz?, ¿quien sos?\n\nQue no, que siga x6\nQue no, que siga x6\nNo, no pare, no, que siga, comienza el viaje.\n\nNo habrá mas que contarte las cosas que me cuenta(que presenta) el mañana.\n\nQue no, que siga x6\nNo, no pare, no pa, que siga, comienza el viaje.'),('Con la frente en alto',2021,NULL,'Emanuel Porres, Sasha Rodriguez Carlomagno, Brian Casafú, Miranda Martinez','Ruedan mil cabezas, ninguna a la par, se quiebra el arcoíris solo por estar.\nMiseria en la comedia, cruel en el cartel, se mueren por beberla, se matan por estar\nY ahora estoy aquí, aquí, aquí, aquí sin mi, y ahora estoy sin mi queriéndome escapar del fin\nNo comprendo que te pasa, cuando quieres cortar mis alas, que me importa que me quieras, con la frente en alto, con la frente en alto estoy, sin vos, estoy sin vos. \nLos versos que comiste no están en mi menú, la historia que vendiste no se escuchará.\nSe revela la colmena, sin reina estarán, ahora libre y fuerte\n\nY ahora estoy aquí, aquí, aquí, aquí sin mi, y ahora estoy sin mi queriéndome escapar del fin\nNo comprendo que te pasa, cuando quieres cortar mis alas, que me importa que me quieras, con la frente en alto, con la frente en alto estoy, sin vos, estoy sin vos. \n'),('Mapa',2021,NULL,'Emanuel Porres, Sasha Rodriguez Carlomagno, Brian Casafú, Miranda Martinez','Mil maneras de caminar, pero todas te traen acá.\nTu aroma, tu sombra, tu esencia, tu boca, una voz irreal. \nClausurada está la cuestión, lo que siento viaja con vos, \nMis manos, tus manos, se funden, no en vano, pienso al respirar. \n\nY me doy cuenta que me falla el GPS en la ciudad. \nQue lo que busco esté por donde quieras vos andar.\n \nHey, dónde voy, cuando se me acaba el mapa,\nHey, donde voy, cuando hoy pierda el ancla,\nHey dónde estoy, cuando no encuentre mi casa,\nHey dónde voy, cuando no te vea en mi cama.\n\nCuando no entra la señal mi cabeza empieza a carburar, que hice, que hago, en tal calle, en tal barrio ya no nos verán.\n\nY me doy cuenta que me falla el GPS en mi ciudad. \nQue lo que busco esté por donde quieras vos andar.\n\nHey, dónde voy, cuando se me acaba el mapa,\nHey, donde voy, cuando hoy pierda el ancla,\nHey dónde estoy, cuando no encuentre mi casa,\nHey dónde voy, cuando no te vea en mi cama.\n'),('Real',2020,NULL,'Emanuel Porres, Sasha Rodriguez Carlomagno, Brian Casafú','Se va durmiendo el sol\nmi alma lento se quiebra\nno hay consideracion, el ciclo no frena,\nuno cambia junto al mundo\n\nEl viento nos cuenta, el dia que nos aguarda\npero no puedo ver, no se interpretar\nlos aullidos en mi ventana\n\nY todo es igual a lo que creo recordar\naunque el cielo varió su color, ya no es claro,\ny mis pies dudan en la tierra buscando\nun rostro que pueda ser\n\nReal, que haya sentido la máscara,\nese elemento que hace distancias,\nreal, que sostenga la mirada.\n\n\nINSTRUMENTAL/SOLO\n\nY todo es igual a lo que creo recordar\naunque el cielo varió su color, ya no es claro,\ny mis pies dudan en la tierra buscando\nun rostro que pueda ser\n\nReal, que haya sentido la máscara,\nese elemento que hace distancias,\nreal, que sostenga la mirada.'),('Tu Piel',2020,NULL,'Emanuel Porres, Sasha Rodriguez Carlomagno, Brian Casafú','Cuando espero volver a comenzar, volvés a bailarme,\nY aunque sepa que la danza no está, no puedo dejar de mirar \n\nY hoy tu amor, un resto verbal, ¿a quien despertará?\nUn largo sueño roto como un cristal, despedazándose\n\nY el tiempo pasó, la noche no mintió, me gritó que te pida salir\n\nLo tengo que olvidar, ya sé, pero igual ¿como fue que el se llevó tu piel?\nSe vuelve tan real el que renuncies a mi fé escrita en tu piel\n\nLo tengo que olvidar, ya sé, pero igual ¿como fue que el se llevó tu piel?\nSe vuelve tan real el que renuncies a mi fé escrita en tu piel\n\nY el tiempo pasó, la noche no mintió, me gritó que te pida salir'),('2 AM',2020,NULL,'Emanuel Porres, Sasha Rodriguez Carlomagno, Brian Casafú','Hoy el cielo, borró el adiós. \nQue mandaste por el buzón. \nLa distancia nos mejoró.\nCaminemos ya sin pudor.\n\nCaminando por la calle,\nVoy sin reloj.\nNo sé ni cuando y como, se harán las 2 AM.\n\nVoy llegando, a la disco, y te veo sin tu chico,\nQue mal.\nSolo conmigo estarás.\n\nHoy el cielo, borró el adiós. \nQue mandaste por el buzón. \nLa distancia nos mejoró.\nCaminemos ya sin pudor.\n\nVoy llegando, a la disco, y te veo sin tu chico,\nQue mal.\nSolo conmigo estarás.'),('Afrodita',2020,NULL,'Emanuel Porres, Sasha Rodriguez Carlomagno, Brian Casafú','Supe que me pasaba, \nAl correr mi ventana al sur. \nPuedo sentir tus mañanas,\nCuando me despertas.\n\nTu mirada atrapaba, \nEl secreto en mi almohada, \nDrácula me succiona, \nPero vos me enamoras.\n\nSi, hoy me enamora Afrodita,\nSi, hoy ven mi venus de Milo.\nSi, hoy siento la vibra en mi alma, \nY quiero más, mucho más.\n\nTu mirada atrapaba, \nEl secreto en mi almohada, \nDrácula me succiona, \nPero vos me enamoras.\n\nSi, hoy me enamora Afrodita,\nSi, hoy ven mi venus de Milo.\nSi, hoy siento la vibra en mi alma, \nY quiero más, mucho más.');
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

-- Dump completed on 2022-04-15 11:42:23
