CREATE DATABASE  IF NOT EXISTS `infobeacons`;
USE `infobeacons`;
--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
INSERT INTO `role` VALUES (1,'ROLE_USER');
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `fk_user_role_roleid_idx` (`role_id`),
  CONSTRAINT `fk_user_role_roleid` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user_role_userid` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `beacon`
--

CREATE TABLE `beacon` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(45) NOT NULL,
	`uuid` VARCHAR(45) NOT NULL,
	`major` VARCHAR(45) NOT NULL,
	`minor` VARCHAR(45) NOT NULL,
	`mac` VARCHAR(45) NOT NULL,
	`text` VARCHAR(512) NOT NULL,
	`img` VARCHAR(255),
	PRIMARY KEY (id),
	UNIQUE (mac)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- insert test beacon to database `beacon`
--

INSERT INTO `beacon` VALUES(1,"piano", "B9407F30-F5F8-466E-AFF9-25556B57FE6D", "22866", "30552", "E9:F7:CF:EB:35:0D", "O piano de cauda tem a armação e as cordas colocadas horizontalmente. Necessita por isso de um grande espaço pois é bastante volumoso. É adequado para salas de concerto com tetos altos e boa acústica. Existem diversos modelos e tamanhos, entre 1,8 e 3 m de comprimento e 620 kg. 
 O piano vertical tem a armação e as cordas colocadas verticalmente. A armação pode ser feita em metal ou madeira. Os martelos não beneficiam da força da gravidade.", "piano");