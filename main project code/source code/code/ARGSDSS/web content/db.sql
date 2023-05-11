/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 6.0.11-alpha-community : Database - areliability
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`areliability` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `areliability`;

/*Table structure for table `dataproviders` */

DROP TABLE IF EXISTS `dataproviders`;

CREATE TABLE `dataproviders` (
  `dpid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dpname` varchar(150) DEFAULT NULL,
  `dpmail` varchar(150) DEFAULT NULL,
  `groupname` varchar(150) DEFAULT NULL,
  `dppassword` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`dpid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `dataproviders` */

insert  into `dataproviders`(`dpid`,`dpname`,`dpmail`,`groupname`,`dppassword`) values (1,'idid','id@gmail.com','testing','123456');

/*Table structure for table `oreg` */

DROP TABLE IF EXISTS `oreg`;

CREATE TABLE `oreg` (
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `op` varchar(100) DEFAULT NULL,
  `ans` varchar(100) DEFAULT NULL,
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `otp` varchar(100) DEFAULT NULL,
  `active` varchar(100) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `oreg` */

insert  into `oreg`(`firstname`,`lastname`,`password`,`gender`,`email`,`phone`,`op`,`ans`,`id`,`otp`,`active`) values ('Divyaprathapraju','derangula','amazon','Female','amazon@gmail.com','9052276429','What is your Birthdate?','55',13,'6696','0');

/*Table structure for table `reg` */

DROP TABLE IF EXISTS `reg`;

CREATE TABLE `reg` (
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `op` varchar(100) DEFAULT NULL,
  `ans` varchar(100) DEFAULT NULL,
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `otp` varchar(100) DEFAULT NULL,
  `active` varchar(100) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `reg` */

insert  into `reg`(`firstname`,`lastname`,`password`,`gender`,`email`,`phone`,`op`,`ans`,`id`,`otp`,`active`) values ('Divyaprathapraju','derangula','amazon','Female','amazon@gmail.com','9052276429','What is Your old Phone Number','55',11,'8743','0'),('Divyaprathapraju','derangula','amazon','Female','amazond@gmail.com','9052276429','What is your Birthdate?','55',12,NULL,'0');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
