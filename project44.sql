/*
SQLyog Professional v13.1.1 (64 bit)
MySQL - 5.0.24-community-nt : Database - project4
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`project4` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `project4`;

/*Table structure for table `st_college` */

DROP TABLE IF EXISTS `st_college`;

CREATE TABLE `st_college` (
  `ID` bigint(20) NOT NULL,
  `NAME` varchar(100) default NULL,
  `ADDRESS` varchar(255) default NULL,
  `STATE` varchar(20) default NULL,
  `CITY` varchar(50) default NULL,
  `PHONE_NO` varchar(15) default NULL,
  `CREATED_BY` varchar(50) default NULL,
  `MODIFIED_BY` varchar(50) default NULL,
  `CREATED_DATETIME` datetime default NULL,
  `MODIFIED_DATETIME` datetime default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `st_college` */

insert  into `st_college`(`ID`,`NAME`,`ADDRESS`,`STATE`,`CITY`,`PHONE_NO`,`CREATED_BY`,`MODIFIED_BY`,`CREATED_DATETIME`,`MODIFIED_DATETIME`) values 
(2,'Holkar Science College','Bhawarkuwa','Madhya Pradesh','Indore','0731234654','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 12:41:18','2019-06-23 12:41:18'),
(3,'Govt Arts And Commerce','Bhawarkuwa','Madhya Pradesh','Indore','0731766899','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 12:41:52','2019-06-23 12:41:52'),
(4,'SAGE institute of Engineers','MP Market','Madhya Pradesh','Bhopal','0755453234','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 12:42:21','2019-06-23 12:42:21'),
(5,'Abhishek institute of  Professional Studies','Gwalior','Madhya Pradesh','Gwalior','0765234432','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 12:51:20','2019-06-23 12:51:20'),
(6,'Medicaps Institute of Engineers','Rao byPass','Madhya Pradesh','Indore','0731897876','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 12:52:13','2019-06-23 12:52:13'),
(7,'Aditya College of Technology','Nayi Galli','Mahastra','Pune','0986343434','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 12:52:55','2019-06-23 12:52:55'),
(8,'Bhopal College of Enginner','New Market','Madhya Pradesh','Bhopal','0755465765','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 12:57:36','2019-06-23 12:57:48'),
(9,'BM college of Technology','Bhopal Road','Madhya Pradesh','Gwalior','0788987789','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 12:58:32','2019-06-23 12:58:32'),
(10,'Bombay Hospital Of Nursing','Kolar Road','Mahastra','Mumbai','0788675454','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 12:59:08','2019-06-23 12:59:08'),
(11,'Boston College of Professional Studies','Super Coridor','Madhya Pradesh','Indore','0755234343','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 12:59:43','2019-06-23 12:59:43'),
(12,'Bright School of Nursing','Bhopal Road','Madhya Pradesh','Gwalior','0766456454','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 13:01:33','2019-06-23 13:01:33'),
(13,'Proton Business School','Near sarwate MArket','Madhya Pradesh','Indore','0731234343','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 13:02:13','2019-06-23 13:02:13'),
(14,'Rays Institute Of Language','Madhumilan','Madhya Pradesh','Indore','0731243434','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 13:02:41','2019-06-23 13:02:44');

/*Table structure for table `st_course` */

DROP TABLE IF EXISTS `st_course`;

CREATE TABLE `st_course` (
  `ID` bigint(20) NOT NULL,
  `Name` varchar(250) default NULL,
  `Description` varchar(250) default NULL,
  `Duration` varchar(50) default NULL,
  `CreatedBy` varchar(50) default NULL,
  `ModifiedBy` varchar(50) default NULL,
  `CreatedDateTime` datetime default NULL,
  `ModifiedDateTime` datetime default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `st_course` */

insert  into `st_course`(`ID`,`Name`,`Description`,`Duration`,`CreatedBy`,`ModifiedBy`,`CreatedDateTime`,`ModifiedDateTime`) values 
(14,'M.com','Master of Commerce','3 Year','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 15:44:36','2019-06-23 15:44:36'),
(15,'b.Ed','ddd','5 Year','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-07-11 17:48:57','2019-07-11 17:48:57'),
(16,'M.E','MASTER OF ENGINEERS','3 Year','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-07-11 18:47:05','2019-07-11 18:47:05'),
(17,'B.E','BACHOLRE OF ENGINEER','4 Year','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-07-11 18:47:26','2019-07-11 18:47:26'),
(18,'M.ED','MASTER OF EDUCATION','3 Year','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-07-11 18:47:57','2019-07-11 18:47:57');

/*Table structure for table `st_faculty` */

DROP TABLE IF EXISTS `st_faculty`;

CREATE TABLE `st_faculty` (
  `ID` bigint(30) NOT NULL,
  `FirstName` varchar(50) default NULL,
  `LastName` varchar(50) default NULL,
  `Gender` varchar(30) default NULL,
  `DateOfBirth` date default NULL,
  `Qualification` varchar(100) default NULL,
  `EmailId` varchar(250) default NULL,
  `MobileNo` varchar(50) default NULL,
  `CollegeId` bigint(30) default NULL,
  `CollegeName` varchar(250) default NULL,
  `CourseId` bigint(30) default NULL,
  `CourseName` varchar(250) default NULL,
  `SubjectId` bigint(50) default NULL,
  `SubjectName` varchar(250) default NULL,
  `CreatedBy` varchar(50) default NULL,
  `ModifiedBy` varchar(50) default NULL,
  `CreatedDateTime` datetime default NULL,
  `ModifiedDateTime` datetime default NULL,
  PRIMARY KEY  (`ID`),
  KEY `fk_College_col` (`CollegeId`),
  KEY `fk_Course_cou` (`CourseId`),
  KEY `fk_Subject_sub` (`SubjectId`),
  CONSTRAINT `fk_College_col` FOREIGN KEY (`CollegeId`) REFERENCES `st_college` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Course_cou` FOREIGN KEY (`CourseId`) REFERENCES `st_course` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Subject_sub` FOREIGN KEY (`SubjectId`) REFERENCES `st_subject` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `st_faculty` */

insert  into `st_faculty`(`ID`,`FirstName`,`LastName`,`Gender`,`DateOfBirth`,`Qualification`,`EmailId`,`MobileNo`,`CollegeId`,`CollegeName`,`CourseId`,`CourseName`,`SubjectId`,`SubjectName`,`CreatedBy`,`ModifiedBy`,`CreatedDateTime`,`ModifiedDateTime`) values 
(1,'Rahul','Sirawani','M','2018-07-02','Master in Enginer','rahul@gmail.com','9893228690',5,'Abhishek institute of  Professional Studies',17,'B.E',26,'ADVANCE JAVA','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-07-11 18:49:54','2019-07-11 18:49:54'),
(2,'Rahul','Wadhwani','M','2013-07-09','Master of Education','wadhawani@gmail.com','9993339412',9,'BM college of Technology',16,'M.E',25,'CORE JAVA','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-07-11 18:50:38','2019-07-11 18:50:38');

/*Table structure for table `st_marksheet` */

DROP TABLE IF EXISTS `st_marksheet`;

CREATE TABLE `st_marksheet` (
  `ID` bigint(20) NOT NULL,
  `ROLL_NO` varchar(15) default NULL,
  `STUDENT_ID` bigint(20) default NULL,
  `NAME` varchar(50) default NULL,
  `PHYSICS` int(11) default NULL,
  `CHEMISTRY` int(11) default NULL,
  `MATHS` int(11) default NULL,
  `CREATED_BY` varchar(50) default NULL,
  `MODIFIED_BY` varchar(50) default NULL,
  `CREATED_DATETIME` datetime default NULL,
  `MODIFIED_DATETIME` datetime default NULL,
  PRIMARY KEY  (`ID`),
  KEY `fk_Student_stud` (`STUDENT_ID`),
  CONSTRAINT `fk_Student_stud` FOREIGN KEY (`STUDENT_ID`) REFERENCES `st_student` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `st_marksheet` */

insert  into `st_marksheet`(`ID`,`ROLL_NO`,`STUDENT_ID`,`NAME`,`PHYSICS`,`CHEMISTRY`,`MATHS`,`CREATED_BY`,`MODIFIED_BY`,`CREATED_DATETIME`,`MODIFIED_DATETIME`) values 
(5,'00EC0001',14,'Ankur Gangwal',78,67,56,'apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 16:33:58','2019-07-23 17:11:40'),
(6,'00EC0002',4,'Chandu Nagpure',23,34,12,'apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 16:34:17','2019-07-23 17:12:35'),
(7,'00EC0003',7,'Lucky Gupta',45,23,98,'apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 16:34:34','2019-07-23 17:12:46'),
(8,'00EC0004',12,'Neha Pawar',67,98,67,'apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 16:34:52','2019-07-23 17:12:56'),
(10,'00EC0005',11,'Pratik Parmar',45,65,56,'apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 16:35:24','2019-07-23 17:15:06'),
(13,'00EC0013',9,'VijayPrajapat',65,45,33,'apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 16:36:19','2019-06-23 16:36:19'),
(14,'00EC0014',3,'VijaySharma',65,45,48,'apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 16:36:36','2019-06-23 16:36:36'),
(15,'00EC0010',7,'Lucky Gupta',39,55,76,'apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-07-11 19:17:25','2019-07-23 17:15:28'),
(16,'00EC0011',12,'Neha Pawar',98,67,77,'apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-07-11 19:23:19','2019-07-23 17:15:44'),
(17,'00EC0012',11,'Pratik Parmar',88,67,89,'apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-07-11 19:24:24','2019-07-23 17:18:37');

/*Table structure for table `st_role` */

DROP TABLE IF EXISTS `st_role`;

CREATE TABLE `st_role` (
  `ID` bigint(20) NOT NULL,
  `NAME` varchar(50) default NULL,
  `DESCRIPTION` varchar(50) default NULL,
  `CREATED_BY` varchar(50) default NULL,
  `MODIFIED_BY` varchar(50) default NULL,
  `CREATED_DATETIME` datetime default NULL,
  `MODIFIED_DATETIME` datetime default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `st_role` */

insert  into `st_role`(`ID`,`NAME`,`DESCRIPTION`,`CREATED_BY`,`MODIFIED_BY`,`CREATED_DATETIME`,`MODIFIED_DATETIME`) values 
(1,'Admin','Admin','rahul@gmail.com','rahul@gmail.com','2019-04-17 07:51:32','2019-06-03 18:56:57'),
(2,'Student','Student','rahul@gmail.com','rahul@gmail.com','2019-04-16 13:52:45','2019-06-03 19:00:04'),
(3,'College','College','rahul@gmail.com','rahul@gmail.com','2019-04-16 13:42:25','2019-06-04 16:36:20'),
(4,'Faculty','Faculty','rahul@gmail.com','rahul@gmail.com','2019-04-17 07:51:32','2019-04-17 07:51:32'),
(5,'Kiosk','Kiosk','rahul@gmail.com','rahul@gmail.com','2019-06-01 18:24:47','2019-06-01 18:24:47');

/*Table structure for table `st_student` */

DROP TABLE IF EXISTS `st_student`;

CREATE TABLE `st_student` (
  `ID` bigint(30) NOT NULL,
  `COLLEGE_ID` bigint(20) default NULL,
  `COLLEGE_NAME` varchar(100) default NULL,
  `FIRST_NAME` varchar(50) default NULL,
  `LAST_NAME` varchar(50) default NULL,
  `DATE_OF_BIRTH` datetime default NULL,
  `MOBILE_NO` varchar(15) default NULL,
  `EMAIL` varchar(200) default NULL,
  `CREATED_BY` varchar(50) default NULL,
  `MODIFIED_BY` varchar(50) default NULL,
  `CREATED_DATETIME` datetime default NULL,
  `MODIFIED_DATETIME` datetime default NULL,
  PRIMARY KEY  (`ID`),
  KEY `fk_College_coll` (`COLLEGE_ID`),
  CONSTRAINT `fk_College_coll` FOREIGN KEY (`COLLEGE_ID`) REFERENCES `st_college` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `st_student` */

insert  into `st_student`(`ID`,`COLLEGE_ID`,`COLLEGE_NAME`,`FIRST_NAME`,`LAST_NAME`,`DATE_OF_BIRTH`,`MOBILE_NO`,`EMAIL`,`CREATED_BY`,`MODIFIED_BY`,`CREATED_DATETIME`,`MODIFIED_DATETIME`) values 
(3,9,'BM college of Technology','Vijay','Sharma','1990-03-13 00:00:00','9893228690','Vijay@gmail.com','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 13:04:37','2019-06-23 13:04:37'),
(4,8,'Bhopal College of Enginner','Chandu','Nagpure','1991-09-30 00:00:00','8989343543','chandu@gmail.com','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 13:05:17','2019-06-23 13:05:17'),
(5,10,'Bombay Hospital Of Nursing','Akshay','Gawande','1992-06-12 00:00:00','8603423223','akshay@gmail.com','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 13:06:04','2019-06-23 13:06:04'),
(7,12,'Bright School of Nursing','Lucky','Gupta','1980-11-18 00:00:00','9893228690','Lucky@gmail.com','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 13:07:00','2019-06-23 13:07:00'),
(9,3,'Govt Arts And Commerce','Vijay','Prajapat','1993-03-03 00:00:00','9179890987','vijay1@gmail.com','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 13:10:05','2019-06-23 13:10:05'),
(10,2,'Holkar Science College','Nikita','Sisodiya','1993-06-06 00:00:00','9981822464','nikita@gmail.com','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 13:10:43','2019-06-23 13:10:43'),
(11,6,'Medicaps Institute of Engineers','Pratik','Parmar','1992-06-02 00:00:00','9893228690','pratik@gmail.com','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 13:11:17','2019-06-23 13:11:17'),
(12,13,'Proton Business School','Neha','Pawar','1995-06-20 00:00:00','9893228690','Neha@gmail.com','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 13:11:56','2019-06-23 13:11:56'),
(14,4,'SAGE institute of Engineers','Ankur','Gangwal','1995-12-27 00:00:00','8603423223','ankur@gmail.com','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 13:13:02','2019-06-23 13:13:02');

/*Table structure for table `st_subject` */

DROP TABLE IF EXISTS `st_subject`;

CREATE TABLE `st_subject` (
  `ID` bigint(30) NOT NULL,
  `Name` varchar(50) default NULL,
  `Description` varchar(250) default NULL,
  `CourseID` bigint(30) default NULL,
  `CourseName` varchar(250) default NULL,
  `CreatedBy` varchar(50) default NULL,
  `ModifiedBy` varchar(50) default NULL,
  `CreatedDateTime` datetime default NULL,
  `ModifiedDateTime` datetime default NULL,
  PRIMARY KEY  (`ID`),
  KEY `fk_Course_cour` (`CourseID`),
  CONSTRAINT `fk_Course_cour` FOREIGN KEY (`CourseID`) REFERENCES `st_course` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `st_subject` */

insert  into `st_subject`(`ID`,`Name`,`Description`,`CourseID`,`CourseName`,`CreatedBy`,`ModifiedBy`,`CreatedDateTime`,`ModifiedDateTime`) values 
(21,'Industrial Training','Industrial Training',14,'M.com','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 16:01:13','2019-06-23 16:01:13'),
(22,'MATHS','MATHS',17,'B.E','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-07-11 18:48:08','2019-07-11 18:48:08'),
(23,'STATICS','STATICS',17,'B.E','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-07-11 18:48:17','2019-07-11 18:48:17'),
(24,'JAVA','JAVA',17,'B.E','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-07-11 18:48:26','2019-07-11 18:48:26'),
(25,'CORE JAVA','CORE JAVA',17,'B.E','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-07-11 18:48:43','2019-07-11 18:48:43'),
(26,'ADVANCE JAVA','ADVANCE JAVA',17,'B.E','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-07-11 18:48:55','2019-07-11 18:48:55');

/*Table structure for table `st_timetable` */

DROP TABLE IF EXISTS `st_timetable`;

CREATE TABLE `st_timetable` (
  `ID` bigint(30) NOT NULL,
  `SubjectID` bigint(30) default NULL,
  `SubjectName` varchar(50) default NULL,
  `CourseID` bigint(30) default NULL,
  `CourseName` varchar(250) default NULL,
  `Semester` varchar(50) default NULL,
  `ExamDate` datetime default NULL,
  `ExamTime` varchar(100) default NULL,
  `CreatedBy` varchar(50) default NULL,
  `ModifiedBy` varchar(50) default NULL,
  `CreatedDateTime` datetime default NULL,
  `ModifieDateTime` datetime default NULL,
  PRIMARY KEY  (`ID`),
  KEY `fk_Subject_subj` (`SubjectID`),
  KEY `fk_Course_cours` (`CourseID`),
  CONSTRAINT `fk_Course_cours` FOREIGN KEY (`CourseID`) REFERENCES `st_course` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Subject_subj` FOREIGN KEY (`SubjectID`) REFERENCES `st_subject` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `st_timetable` */

insert  into `st_timetable`(`ID`,`SubjectID`,`SubjectName`,`CourseID`,`CourseName`,`Semester`,`ExamDate`,`ExamTime`,`CreatedBy`,`ModifiedBy`,`CreatedDateTime`,`ModifieDateTime`) values 
(1,26,'ADVANCE JAVA',17,'B.E','1st','2019-07-25 00:00:00','08:00 AM to 11:00 AM','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-07-11 18:54:41','2019-07-11 18:54:41'),
(2,25,'CORE JAVA',17,'B.E','2st','2019-07-17 00:00:00','08:00 AM to 11:00 AM','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-07-11 18:54:53','2019-07-11 18:54:53');

/*Table structure for table `st_user` */

DROP TABLE IF EXISTS `st_user`;

CREATE TABLE `st_user` (
  `ID` bigint(20) NOT NULL,
  `FIRST_NAME` varchar(50) default NULL,
  `LAST_NAME` varchar(50) default NULL,
  `LOGIN` varchar(255) default NULL,
  `PASSWORD` varchar(20) default NULL,
  `DOB` datetime default NULL,
  `MOBILE_NO` varchar(15) default NULL,
  `ROLE_ID` bigint(20) default NULL,
  `UNSUCCESFUL_LOGIN` int(11) default NULL,
  `GENDER` varchar(10) default NULL,
  `CREATED_BY` varchar(50) default NULL,
  `MODIFIED_BY` varchar(50) default NULL,
  `CREATED_DATETIME` datetime default NULL,
  `MODIFIED_DATETIME` datetime default NULL,
  PRIMARY KEY  (`ID`),
  KEY `fk_role_user` (`ROLE_ID`),
  CONSTRAINT `fk_role_user` FOREIGN KEY (`ROLE_ID`) REFERENCES `st_role` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `st_user` */

insert  into `st_user`(`ID`,`FIRST_NAME`,`LAST_NAME`,`LOGIN`,`PASSWORD`,`DOB`,`MOBILE_NO`,`ROLE_ID`,`UNSUCCESFUL_LOGIN`,`GENDER`,`CREATED_BY`,`MODIFIED_BY`,`CREATED_DATETIME`,`MODIFIED_DATETIME`) values 
(1,'Amit','Pal','apamitrocks03545@gmail.com','Amit43@pal','1991-09-03 00:00:00','9770609770',1,0,'Male','root','root','2019-06-22 23:57:45','2019-06-22 23:57:45'),
(2,'Khushi','Sharma','khushi@gmail.com','Khushi@12','1995-09-12 00:00:00','8602432402',2,0,'Female','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 00:02:30','2019-07-04 18:34:10'),
(3,'Nikita','Pal','Nikita@gmail.com','Nikita@12','1993-06-04 00:00:00','9981822464',4,0,'Female','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 00:04:01','2019-07-04 19:03:26'),
(4,'Kanak','Sharma','Kanak@gmail.com','Kanak@12','1995-06-06 00:00:00','9926739969',2,0,'Female','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 00:05:12','2019-07-04 18:48:02'),
(6,'Ankur','Agrawal','Ankur@gmail.com','Ankur@12','1999-06-09 00:00:00','9993339412',4,0,'Male','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 00:12:28','2019-06-23 12:32:59'),
(7,'Divik','Tiwari','Divik@gmail.com','Divik@12','1996-03-12 00:00:00','9893228690',2,0,'Male','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 00:13:59','2019-06-23 12:33:08'),
(8,'Sourabh','Vaidhaya','Sourabh@gmail.com','Sourabh@12','1991-10-03 00:00:00','8871433343',2,0,'Male','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 12:03:06','2019-06-25 18:29:58'),
(9,'Deepak','Ughade','Deepak@gmail.com','Deepak@12','1993-06-23 00:00:00','9981822464',2,0,'Male','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 12:03:47','2019-06-23 12:33:24'),
(10,'Abhishek','kale','Abhishek@gmail.com','Abhishek@12','1990-10-10 00:00:00','7772937291',2,0,'Male','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 12:04:33','2019-06-23 12:33:35'),
(11,'Rajkumari','Pal','Rajkumari@gmail.com','Rajkumari@12','1980-01-11 00:00:00','9993339412',4,0,'Female','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 12:05:52','2019-06-23 12:34:19'),
(12,'Jaya','Chouhan','Jaya@gmail.com','Chouhan@12','1999-06-01 00:00:00','9981822464',4,0,'Female','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 12:06:38','2019-06-23 12:34:28'),
(13,'Simran','gangwal','Simaran@gmail.com','Simran@12','2000-06-13 00:00:00','8871143441',2,0,'Female','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 12:27:00','2019-06-23 12:32:14'),
(14,'Pradeep','Rathore','Pradeep@gmail.com','Pradeep@12','1998-06-11 00:00:00','9981822464',4,0,'Male','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-23 12:28:27','2019-06-23 12:31:45'),
(15,'Manish','Chouhan','manish@gmail.com','Manish@12','1997-06-09 00:00:00','9977999407',3,0,'Male','apamitrocks03545@gmail.com','apamitrocks03545@gmail.com','2019-06-24 18:51:28','2019-06-24 18:51:28'),
(16,'Deepak','Ughade','deepakuphade200@gmail.com','Deepak@12','1998-06-09 00:00:00','9893228690',2,0,'Male','root','root','2019-06-25 11:36:40','2019-06-25 11:36:40'),
(17,'Rahul','sirohiya','amitofficial770@gmail.com','Amit43@pal','1988-07-05 00:00:00','9993339412',2,0,'Male','root','root','2019-07-13 12:24:08','2019-07-13 12:24:08'),
(18,'hbjhj','hj','rahulsirwani181989@gmail.com','Amit43@pal','1973-07-17 00:00:00','9993339412',2,0,'Male','root','root','2019-07-13 14:09:01','2019-07-13 14:09:22'),
(19,'amit','patel','amit@gmail.com','Amit43@pal','1974-07-02 00:00:00','8602432402',2,0,'Male','root','root','2019-07-23 17:26:47','2019-07-23 17:26:47');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
