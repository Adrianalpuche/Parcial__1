create database ventas2;
use ventas2;

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido1` varchar(100) NOT NULL,
  `apellido2` varchar(100) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `categoría` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
);

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` VALUES (1,'Aarón','Rivero','Gómez','Almería',100),(2,'Adela','Salas','Díaz','Granada',200),(3,'Adolfo','Rubio','Flores','Sevilla',NULL),(4,'Adrián','Suárez',NULL,'Jaén',300),(5,'Marcos','Loyola','Méndez','Almería',200),(6,'María','Santana','Moreno','Cádiz',100),(7,'Pilar','Ruiz',NULL,'Sevilla',300),(8,'Pepe','Ruiz','Santana','Huelva',200),(9,'Guillermo','López','Gómez','Granada',225),(10,'Daniel','Santana','Loyola','Sevilla',125);


DROP TABLE IF EXISTS `comercial`;
CREATE TABLE `comercial` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido1` varchar(100) NOT NULL,
  `apellido2` varchar(100) DEFAULT NULL,
  `comisión` float DEFAULT NULL,
  PRIMARY KEY (`id`)
);
--
-- Dumping data for table `comercial`
--

INSERT INTO `comercial` VALUES (1,'Daniel','Sáez','Vega',0.15),(2,'Juan','Gómez','López',0.13),(3,'Diego','Flores','Salas',0.11),(4,'Marta','Herrera','Gil',0.14),(5,'Antonio','Carretero','Ortega',0.12),(6,'Manuel','Domínguez','Hernández',0.13),(7,'Antonio','Vega','Hernández',0.11),(8,'Alfredo','Ruiz','Flores',0.05);

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
CREATE TABLE `pedido` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `total` double NOT NULL,
  `fecha` date DEFAULT NULL,
  `id_cliente` int unsigned NOT NULL,
  `id_comercial` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_comercial` (`id_comercial`),
  CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`),
  CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`id_comercial`) REFERENCES `comercial` (`id`)
);

--
-- Dumping data for table `pedido`
--

INSERT INTO `pedido` VALUES (1,150.5,'2017-10-05',5,2),(2,270.65,'2016-09-10',1,5),(3,65.26,'2017-10-05',2,1),(4,110.5,'2016-08-17',8,3),(5,948.5,'2017-09-10',5,2),(6,2400.6,'2016-07-27',7,1),(7,5760,'2015-09-10',2,1),(8,1983.43,'2017-10-10',4,6),(9,2480.4,'2016-10-10',8,3),(10,250.45,'2015-06-27',8,2),(11,75.29,'2016-08-17',3,7),(12,3045.6,'2017-04-25',2,1),(13,545.75,'2019-01-25',6,1),(14,145.82,'2017-02-02',6,1),(15,370.85,'2019-03-11',1,5),(16,2389.23,'2019-03-11',1,5);

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
CREATE TABLE `producto` (
  `codigo` varchar(10) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `stock` int DEFAULT NULL,
  PRIMARY KEY (`codigo`)
);

--
-- Dumping data for table `producto`
--


INSERT INTO `producto` VALUES ('1111','Barras',5,40),('1234','Coca Cola 50 ml',14,24),('1235','Papas Rufles',13,10);

--
-- Table structure for table `venta_prod`
--

DROP TABLE IF EXISTS `venta_prod`;
CREATE TABLE `venta_prod` (
  `folio_pedido` int NOT NULL,
  `cod_prod` varchar(10) NOT NULL,
  `cantidad` int DEFAULT NULL,
  PRIMARY KEY (`cod_prod`,`folio_pedido`)
);