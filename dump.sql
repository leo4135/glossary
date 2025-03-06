-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: localhost    Database: glossary
-- ------------------------------------------------------
-- Server version	8.0.41-0ubuntu0.22.04.1

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
-- Table structure for table `edges`
--
USE glossary;
DROP TABLE IF EXISTS `edges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `edges` (
  `source` text,
  `target` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edges`
--

LOCK TABLES `edges` WRITE;
/*!40000 ALTER TABLE `edges` DISABLE KEYS */;
INSERT INTO `edges` VALUES ('4fac8097-3ab0-42cd-b0e5-d60f5f1efca2','63d5bc9e-46ff-424c-b200-d05789125f5a'),('4fac8097-3ab0-42cd-b0e5-d60f5f1efca2','fb1b127b-79ea-4ca3-9b23-894ad86020e8'),('4fac8097-3ab0-42cd-b0e5-d60f5f1efca2','9d4836db-aaf7-4333-9b90-4c9114dff657'),('4fac8097-3ab0-42cd-b0e5-d60f5f1efca2','754c80ad-061e-4fa8-b978-f5806ea27376'),('fb1b127b-79ea-4ca3-9b23-894ad86020e8','78b634f9-2034-46b1-9bdf-cb9c76433874'),('38b083ae-8dfb-4fc5-b701-4de4c152bf24','9d4836db-aaf7-4333-9b90-4c9114dff657'),('86dd780d-4364-4d0b-81d8-7f60b6a01c2d','4fac8097-3ab0-42cd-b0e5-d60f5f1efca2'),('a9083e4a-e258-4fde-903b-e95cce8ab786','4fac8097-3ab0-42cd-b0e5-d60f5f1efca2'),('5c911e8f-4f64-42fb-b47e-63540a7d9517','78b634f9-2034-46b1-9bdf-cb9c76433874'),('5c911e8f-4f64-42fb-b47e-63540a7d9517','86dd780d-4364-4d0b-81d8-7f60b6a01c2d'),('a5ddb33a-12d3-4d3a-90da-4f2089748c45','217270a3-0720-4953-96ee-0ea33393d639'),('b8967f62-2e9e-4f9d-81f9-ca3bc5d5cfd1','86dd780d-4364-4d0b-81d8-7f60b6a01c2d'),('36279024-4279-435e-b8bb-df0c0649ac1b','a5ddb33a-12d3-4d3a-90da-4f2089748c45'),('c7ab0cb1-fce6-403f-a649-1da5ab680bde','ab8d8654-a491-4750-a918-99bbd118e75e'),('ab8d8654-a491-4750-a918-99bbd118e75e','ec59a1d2-d908-4a41-8eba-6bed167acaba'),('72327bab-8e3a-45b5-a009-ed52a95e7f56','ab8d8654-a491-4750-a918-99bbd118e75e'),('fd95dd2b-2efb-4e9f-8d18-73fac9056049','4fac8097-3ab0-42cd-b0e5-d60f5f1efca2'),('fd95dd2b-2efb-4e9f-8d18-73fac9056049','a0bf8957-0d45-45f9-bd21-586f62315f06'),('a0bf8957-0d45-45f9-bd21-586f62315f06','4fac8097-3ab0-42cd-b0e5-d60f5f1efca2'),('80e82e3a-f61d-4ab6-892f-04a0c9881f21','a0bf8957-0d45-45f9-bd21-586f62315f06');
/*!40000 ALTER TABLE `edges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nodes`
--

DROP TABLE IF EXISTS `nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nodes` (
  `id` text,
  `label` text,
  `description` text,
  `x` int DEFAULT NULL,
  `y` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nodes`
--

LOCK TABLES `nodes` WRITE;
/*!40000 ALTER TABLE `nodes` DISABLE KEYS */;
INSERT INTO `nodes` VALUES ('4fac8097-3ab0-42cd-b0e5-d60f5f1efca2','XSS','подтип атаки на веб-системы, заключающийся во внедрении в выдаваемую веб-системой страницу вредоносного кода (который будет выполнен на компьютере пользователя при открытии им этой страницы) и взаимодействии этого кода с веб-сервером злоумышленника. Является разновидностью атаки «Внедрение кода».',100,150),('a9083e4a-e258-4fde-903b-e95cce8ab786','JavaScript','Высокоуровневый язык программирования, используемый для создания интерактивности на веб-страницах.',200,100),('63d5bc9e-46ff-424c-b200-d05789125f5a','Stored XSS','Постоянная XSS-атака, когда вредоносный код сохраняется на сервере.',950,350),('fb1b127b-79ea-4ca3-9b23-894ad86020e8','DOM-based XSS','XSS-уязвимость, возникающая из-за модификации DOM-среды в браузере.',1100,400),('86dd780d-4364-4d0b-81d8-7f60b6a01c2d','HTML','Язык гипертекстовой разметки, основа для создания структуры веб-страниц.',500,200),('9d4836db-aaf7-4333-9b90-4c9114dff657','Reflected XSS','Тип XSS-атаки, при которой вредоносный скрипт отражается от веб-сервера в ответе на запрос.',800,300),('754c80ad-061e-4fa8-b978-f5806ea27376','Cross-Site Scripting','Полная форма наименования уязвимости от сокращенного XSS.',150,200),('38b083ae-8dfb-4fc5-b701-4de4c152bf24','URL','Унифицированный указатель ресурса - адрес для доступа к веб-ресурсам в сети Интернет.',350,150),('5c911e8f-4f64-42fb-b47e-63540a7d9517','CSS','Язык каскадных таблиц стилей, используется для оформления веб-страниц.',650,250),('78b634f9-2034-46b1-9bdf-cb9c76433874','DOM-структура','Объектная модель документа, представление HTML-документа в виде дерева объектов.',200,450),('a5ddb33a-12d3-4d3a-90da-4f2089748c45','CSRF','Межсайтовая подделка запроса - атака, заставляющая пользователя выполнить нежелательные действия.',350,500),('b8967f62-2e9e-4f9d-81f9-ca3bc5d5cfd1','Clickjacking','Обманная техника, скрывающая реальные элементы интерфейса.',200,800),('217270a3-0720-4953-96ee-0ea33393d639','cookie-файлы','Небольшие фрагменты данных, хранимые браузером для сохранения состояния сессии.',500,550),('36279024-4279-435e-b8bb-df0c0649ac1b','POST-запрос','HTTP-метод для отправки данных на сервер для обработки.',1100,750),('c7ab0cb1-fce6-403f-a649-1da5ab680bde','Directory Traversal','Доступ к файлам за пределами целевой веб-директории.',350,850),('ab8d8654-a491-4750-a918-99bbd118e75e','SQL инъекции','Внедрение恶意 SQL-кода для манипуляций с базой данных.',800,650),('ec59a1d2-d908-4a41-8eba-6bed167acaba','Command Injection','Выполнение произвольных системных команд через уязвимое приложение.',950,700),('72327bab-8e3a-45b5-a009-ed52a95e7f56','Insecure Deserialization','Уязвимость, возникающая при некорректной десериализации ненадежных данных.',650,600),('fd95dd2b-2efb-4e9f-8d18-73fac9056049','Content Security Policy','Механизм защиты от XSS и других атак через контроль источников контента.',650,950),('80e82e3a-f61d-4ab6-892f-04a0c9881f21','Валидация','Проверка входных данных на соответствие ожидаемым критериям.',500,900),('a0bf8957-0d45-45f9-bd21-586f62315f06','Санитизация','Очистка входных данных от потенциально опасных элементов.',800,1000);
/*!40000 ALTER TABLE `nodes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-06 19:30:54
