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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `dataproviders` */

insert  into `dataproviders`(`dpid`,`dpname`,`dpmail`,`groupname`,`dppassword`) values (1,'idid','id@gmail.com','testing','123456'),(2,'aaa','aaa@gmail.com','dsds','aaa');

/*Table structure for table `groupaccessfiles` */

DROP TABLE IF EXISTS `groupaccessfiles`;

CREATE TABLE `groupaccessfiles` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `dpid` varchar(20) DEFAULT NULL,
  `fileid` varchar(20) DEFAULT NULL,
  `foid` varchar(20) DEFAULT NULL,
  `groupname` varchar(50) DEFAULT NULL,
  `verfication` varchar(10) DEFAULT 'NA',
  `ownerstatus` varchar(10) DEFAULT 'NA',
  `dpsharefile` varchar(10) DEFAULT 'NA',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `groupaccessfiles` */

insert  into `groupaccessfiles`(`id`,`dpid`,`fileid`,`foid`,`groupname`,`verfication`,`ownerstatus`,`dpsharefile`) values (1,'2','3','13','dsds','Verified','Accepted','Shared'),(2,'2','4','13','dsds','Verified','Rejected','NA'),(4,'1','3','13','testing','Verified','Rejected','NA'),(5,'2','6','13','dsds','Verified','Accepted','Shared');

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

insert  into `oreg`(`firstname`,`lastname`,`password`,`gender`,`email`,`phone`,`op`,`ans`,`id`,`otp`,`active`) values ('Divyaprathapraju','derangula','amazon','Female','amazon@gmail.com','9052276429','What is your Birthdate?','55',13,'1768','0');

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

insert  into `reg`(`firstname`,`lastname`,`password`,`gender`,`email`,`phone`,`op`,`ans`,`id`,`otp`,`active`) values ('Divyaprathapraju','derangula','amazon','Female','amazon@gmail.com','9052276429','What is Your old Phone Number','55',11,'8333','0'),('Divyaprathapraju','derangula','amazon','Female','amazond@gmail.com','9052276429','What is your Birthdate?','55',12,NULL,'0');

/*Table structure for table `upload` */

DROP TABLE IF EXISTS `upload`;

CREATE TABLE `upload` (
  `fid` int(50) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(250) DEFAULT NULL,
  `actualfname` varchar(250) DEFAULT NULL,
  `encryptedfilename` varchar(250) DEFAULT NULL,
  `skeygenerated` varchar(250) DEFAULT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `hashvalue` varchar(50) DEFAULT NULL,
  `fdelete` varchar(5) DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `upload` */

insert  into `upload`(`fid`,`fname`,`actualfname`,`encryptedfilename`,`skeygenerated`,`uid`,`hashvalue`,`fdelete`) values (1,'asd','Objective and Abstract21.docx','1649330121491Objective and Abstract21docx.jpg','vCeuIJ5APtIhvafzV3n2Ag==','13',NULL,'1'),(2,'asd','Objective and Abstract21.docx','1649330558474Objective and Abstract21docx.jpg','0up4RK1/6oCFT0v5GqCKJQ==','13','37a6259cc0c1dae299a7866489dff0bd','1'),(3,'asd','Objective and Abstract21.docx','1649332024115Objective and Abstract21docx.jpg','Z2DECkfyv5y8LJA+H1fOBg==','13','37a6259cc0c1dae299a7866489dff0bd','0'),(4,'asd','Objective and Abstract21.docx','1649332499619Objective and Abstract21docx.jpg','HrKOvMK6k9sZeGqdnRmZ9Q==','13','37a6259cc0c1dae299a7866489dff0bd','0'),(5,'Architecture','images.png','1649745109126imagespng.jpg','ds+1/NsJpI/7qMMrYCN2hw==','13','37a6259cc0c1dae299a7866489dff0bd','1'),(6,'Sharing','images.png','1649745125030imagespng.jpg','KhfQZ/ql43V1XyGZ54+8Aw==','13','37a6259cc0c1dae299a7866489dff0bd','0');

/*Table structure for table `uploadfiles` */

DROP TABLE IF EXISTS `uploadfiles`;

CREATE TABLE `uploadfiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ownerid` varchar(10) DEFAULT NULL,
  `filename` varchar(50) DEFAULT NULL,
  `ofilename` varchar(50) DEFAULT NULL,
  `mfilename` varchar(70) DEFAULT NULL,
  `hashvalue` varchar(60) DEFAULT NULL,
  `enckey` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `uploadfiles` */

insert  into `uploadfiles`(`id`,`ownerid`,`filename`,`ofilename`,`mfilename`,`hashvalue`,`enckey`) values (1,'',NULL,NULL,NULL,NULL,NULL),(2,'s',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `userreques` */

DROP TABLE IF EXISTS `userreques`;

CREATE TABLE `userreques` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `gfid` varchar(20) DEFAULT NULL,
  `dpid` varchar(20) DEFAULT NULL,
  `fid` varchar(20) DEFAULT NULL,
  `userid` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `userreques` */

insert  into `userreques`(`id`,`gfid`,`dpid`,`fid`,`userid`,`status`) values (1,'1','2','3','11','Accepted'),(2,'5','2','6','11','Accepted'),(3,'5','2','6','null','Pending');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
