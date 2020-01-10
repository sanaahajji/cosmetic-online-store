/*
SQLyog Community v12.09 (64 bit)
MySQL - 5.5.28 : Database - cosmeticonline
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cosmeticonline` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `cosmeticonline`;

/*Table structure for table `buyproduct` */

DROP TABLE IF EXISTS `buyproduct`;

CREATE TABLE `buyproduct` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `productname` varchar(250) DEFAULT NULL,
  `imgname` varchar(250) DEFAULT NULL,
  `total` varchar(250) DEFAULT NULL,
  `price` varchar(250) DEFAULT NULL,
  `noofbuyprod` varchar(250) DEFAULT NULL,
  `cart` varchar(250) DEFAULT NULL,
  `chkout` varchar(250) DEFAULT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `owner` varchar(250) DEFAULT NULL,
  `noprodchkout` varchar(250) DEFAULT NULL,
  `cardnumber` varchar(250) DEFAULT NULL,
  `expmonth` varchar(250) DEFAULT NULL,
  `expyear` varchar(250) DEFAULT NULL,
  `useremail` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `buyproduct` */

insert  into `buyproduct`(`bid`,`uid`,`pid`,`productname`,`imgname`,`total`,`price`,`noofbuyprod`,`cart`,`chkout`,`datetime`,`owner`,`noprodchkout`,`cardnumber`,`expmonth`,`expyear`,`useremail`) values (1,2,5,'makeup brush','makeupbrush.jpg','100','1000','5','No','YES','2019-11-24 00:51:00','test user','5','3333333333333333','January','2019','a'),(2,2,5,'makeup brush','makeupbrush.jpg','100','1400','7','No','YES','2019-11-24 15:02:53','test user','7','3333333333333333','January','2019','test2@gmail.com'),(3,2,2,'makeup brush sigma','makeupbrushsigma.jpg','100','312','1','No','YES','2019-11-24 15:02:54','testuser','1','3214444444444444','January','2019','test2@gmail.com'),(4,2,2,'makeup brush sigma','makeupbrushsigma.jpg','100','312','1','YES','NO','2019-11-24 15:02:54','testuser','0','','','','test2@gmail.com'),(5,2,4,'lakme kajal','lakmekajal.jpg','104','208','1','No','YES','2019-11-24 15:02:55','test user','1','3211111111111114','January','2019','test2@gmail.com'),(6,2,5,'makeup brush','makeupbrush.jpg','100','200','1','No','YES','2019-11-24 15:02:56','test user','1','3412222222222222','January','2019','test2@gmail.com'),(7,2,1,'mac lipstick','maclipstick.jpg','101','401','1','No','YES','2019-11-24 15:02:56','test user','1','3124331422222222','January','2019','test2@gmail.com'),(8,2,5,'makeup brush','makeupbrush.jpg','100','200','1','No','YES','2019-11-24 15:02:57','test user','1','3333333333333333','January','2019','test2@gmail.com'),(9,2,1,'mac lipstick','maclipstick.jpg','101','401','1','YES','NO','2019-11-24 15:02:59','testuser','0','','','','test2@gmail.com'),(10,2,4,'lakme kajal','lakmekajal.jpg','104','208','1','No','YES','2019-11-24 15:03:03','test user','1','3241111111111142','January','2019','test2@gmail.com'),(11,3,8,'peppermint','peppermint.jpg','100','1275','3','No','YES','2019-11-24 15:12:44','test user','3','7376537561267654','January','2019','test.user@gmail.com'),(12,3,2,'makeup brush sigma','makeupbrushsigma.jpg','100','312','1','No','YES','2019-11-24 15:24:42','test user','1','3241111111111142','January','2020','test.user@gmail.com');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `productname` varchar(250) DEFAULT NULL,
  `imgname` varchar(250) DEFAULT NULL,
  `total` varchar(250) DEFAULT NULL,
  `price` varchar(250) DEFAULT NULL,
  `proddesc` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `product` */

insert  into `product`(`pid`,`productname`,`imgname`,`total`,`price`,`proddesc`) values (1,'murad serum','murad.jpg','101','401','Sphere-infused serum for the face and eyes combats signs of stress-induced aging.'),(2,'foundation','nars.jpg','100','312','A UNIQUELY LIGHTWEIGHT FOUNDATION'),(3,'Nars blusher','narsblush.jpeg','111','205','THE ULTIMATE AUTHORITY IN BLUSH'),(4,'huda lipstick','huda.jpg','104','208','Power Bullet Matte Lipstick'),(5,'huda palette','hudapalette.jpg','100','200','Power Bullet Matte Lipstick'),(8,'Urban decay palette','s1.jpeg','100','425','Born To Run Eyeshadow Palette');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `ufname` varchar(250) DEFAULT NULL,
  `ulastname` varchar(250) DEFAULT NULL,
  `uemail` varchar(250) DEFAULT NULL,
  `upassword` varchar(250) DEFAULT NULL,
  `ucontactnumber` varchar(250) DEFAULT NULL,
  `ustatus` varchar(250) DEFAULT NULL,
  `utype` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`uid`,`ufname`,`ulastname`,`uemail`,`upassword`,`ucontactnumber`,`ustatus`,`utype`) 
values (1,'super','admin','superadmin@co.com','123','998877665544','Active','admin'),(2,'test','user','test2@gmail.com','123','1234567890','Active','user'),(3,'test','user','test.user@gmail.com','123','9988776655','Active','user');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
