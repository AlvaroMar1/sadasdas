-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: instituto
-- ------------------------------------------------------
-- Server version	5.5.5-10.5.28-MariaDB-0+deb11u1

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
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `edad` int(11) NOT NULL,
  `curso` varchar(30) NOT NULL,
  `nota_media` decimal(4,2) DEFAULT 0.00,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
INSERT INTO `alumnos` VALUES (1,'Ana',19,'1DAW',5.00),(2,'Luis',20,'1DAW',7.10);
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros`
--

DROP TABLE IF EXISTS `libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libros` (
  `autor` varchar(100) DEFAULT NULL,
  `isbn` int(11) DEFAULT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `precio` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES ('Gabriel García Márquez',1001,'Cien años de soledad',19.95),('Isabel Allende',1002,'La casa de los espíritus',17.5),('Mario Vargas Llosa',1003,'La ciudad y los perros',18.2),('Julio Cortázar',1004,'Rayuela',21),('Jorge Luis Borges',1005,'Ficciones',15.75),('Miguel de Cervantes',1006,'Don Quijote de la Mancha',25),('Federico García Lorca',1007,'Poeta en Nueva York',14.6),('Antonio Muñoz Molina',1008,'El jinete polaco',20.1),('Arturo Pérez-Reverte',1009,'El capitán Alatriste',16.9),('Carlos Ruiz Zafón',1010,'La sombra del viento',22.3),('J.K. Rowling',1011,'Harry Potter y la piedra filosofal',12.99),('George R.R. Martin',1012,'Juego de tronos',23.5),('J.R.R. Tolkien',1013,'El señor de los anillos',29.99),('Dan Brown',1014,'El código Da Vinci',18.75),('Stephen King',1015,'El resplandor',19.4),('Agatha Christie',1016,'Asesinato en el Orient Express',13.8),('Ken Follett',1017,'Los pilares de la Tierra',24.6),('Paulo Coelho',1018,'El alquimista',14.2),('Haruki Murakami',1019,'Kafka en la orilla',20),('Orhan Pamuk',1020,'Me llamo Rojo',18.9),('Albert Camus',1021,'El extranjero',11.5),('Franz Kafka',1022,'La metamorfosis',10.99),('Fiódor Dostoyevski',1023,'Crimen y castigo',21.4),('León Tolstói',1024,'Guerra y paz',27.8),('Victor Hugo',1025,'Los miserables',26.5),('Jane Austen',1026,'Orgullo y prejuicio',13.25),('Emily Brontë',1027,'Cumbres borrascosas',12.8),('Charles Dickens',1028,'Grandes esperanzas',15.6),('Mark Twain',1029,'Las aventuras de Tom Sawyer',11.9),('Herman Melville',1030,'Moby Dick',18),('Ernest Hemingway',1031,'El viejo y el mar',10.5),('F. Scott Fitzgerald',1032,'El gran Gatsby',14.75),('George Orwell',1033,'1984',13.9),('Aldous Huxley',1034,'Un mundo feliz',16.2),('Ray Bradbury',1035,'Fahrenheit 451',15.3),('Isaac Asimov',1036,'Fundación',19.1),('Philip K. Dick',1037,'¿Sueñan los androides...',17.8),('Arthur C. Clarke',1038,'2001: Una odisea espacial',18.6),('Frank Herbert',1039,'Dune',22.4),('Ursula K. Le Guin',1040,'La mano izquierda de la oscuridad',16.7),('Margaret Atwood',1041,'El cuento de la criada',15.9),('Kazuo Ishiguro',1042,'Nunca me abandones',17.1),('Salman Rushdie',1043,'Los versos satánicos',20.5),('Umberto Eco',1044,'El nombre de la rosa',19.8),('Italo Calvino',1045,'Las ciudades invisibles',14.4),('Roberto Bolaño',1046,'2666',23.7),('Juan Rulfo',1047,'Pedro Páramo',12.6),('Laura Esquivel',1048,'Como agua para chocolate',13.7),('Elena Poniatowska',1049,'La noche de Tlatelolco',16),('Manuel Rivas',1050,'El lápiz del carpintero',14.9);
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modulos`
--

DROP TABLE IF EXISTS `modulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modulos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `horas` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulos`
--

LOCK TABLES `modulos` WRITE;
/*!40000 ALTER TABLE `modulos` DISABLE KEYS */;
INSERT INTO `modulos` VALUES (1,'DiseñoWeb',9);
/*!40000 ALTER TABLE `modulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (2,'Mouse Logitech',19.99),(3,'Teclado Mecánico',59.99),(4,'Monitor Samsung 24\"',149.99),(5,'Auriculares Sony',89.99),(6,'Disco SSD 1TB',109.99),(7,'Memoria RAM 16GB',74.99),(8,'Webcam HD',39.99),(9,'Altavoces Bluetooth',29.99),(10,'Silla Gaming',199.99);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesores`
--

DROP TABLE IF EXISTS `profesores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesores` (
  `nombre` varchar(100) NOT NULL,
  `departamento` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesores`
--

LOCK TABLES `profesores` WRITE;
/*!40000 ALTER TABLE `profesores` DISABLE KEYS */;
INSERT INTO `profesores` VALUES ('Juan','D3'),('Ana Martínez','D1'),('Carlos López','D2'),('Lucía Fernández','D3'),('Miguel Torres','D4'),('Sofía Ruiz','D5'),('Javier Gómez','D1'),('Elena Díaz','D2'),('Pablo Navarro','D3'),('Carmen Romero','D4'),('Raúl Ortega','D5'),('Marta Castro','D1'),('Diego Morales','D2'),('Laura Delgado','D3'),('Andrés Vega','D4'),('Patricia León','D5'),('Alberto Cano','D1'),('Sara Herrera','D2'),('David Ríos','D3'),('Irene Cortés','D4'),('Fernando Gil','D5'),('Nuria Molina','D1'),('Álvaro Santos','D2'),('Cristina Pastor','D3'),('Rubén Serrano','D4'),('Beatriz Fuentes','D5'),('Óscar Vidal','D1'),('Silvia Campos','D2'),('Hugo Peña','D3'),('Eva Lozano','D4'),('Daniel Prieto','D5'),('Ana Martínez','D1'),('Carlos López','D2'),('Lucía Fernández','D3'),('Miguel Torres','D4'),('Sofía Ruiz','D5'),('Javier Gómez','D1'),('Elena Díaz','D2'),('Pablo Navarro','D3'),('Carmen Romero','D4'),('Raúl Ortega','D5'),('Marta Castro','D1'),('Diego Morales','D2'),('Laura Delgado','D3'),('Andrés Vega','D4'),('Patricia León','D5'),('Alberto Cano','D1'),('Sara Herrera','D2'),('David Ríos','D3'),('Irene Cortés','D4'),('Fernando Gil','D5'),('Nuria Molina','D1'),('Álvaro Santos','D2'),('Cristina Pastor','D3'),('Rubén Serrano','D4'),('Beatriz Fuentes','D5'),('Óscar Vidal','D1'),('Silvia Campos','D2'),('Hugo Peña','D3'),('Eva Lozano','D4'),('Daniel Prieto','D5');
/*!40000 ALTER TABLE `profesores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-06 10:32:06
