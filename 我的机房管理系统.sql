DROP DATABASE IF EXISTS `labRoomManager`;
CREATE DATABASE `labRoomManager` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `labRoomManager`;

/*管理员表*/
CREATE TABLE `admin` (                  
          `id`   varchar(32)       NOT NULL,              /*管理员编号*/   
          `name` varchar(32)     default NULL,      
          `password` varchar(32) NOT NULL,  
		  `registerTime` datetime    default NULL,
          PRIMARY KEY  (`id`)                   
        );
	
insert into `admin`  values ('01', 'admin', 'admin', '2015-10-25 08:05:10');

/*学生表*/		
CREATE TABLE `student` (                  
           `id`           varchar(32) NOT NULL,      /*学生编号*/
           `name`         varchar(32) default NULL,        
           `password`     varchar(32) NOT NULL,    
           `departmentId` varchar(32) NOT NULL, 
		   `classes`      varchar(32) NOT NULL,       /*班级*/
           `money`        decimal(10,2)     NOT NULL,                  
           `registerTime` datetime    default NULL,             
           PRIMARY KEY  (`id`)                     
         );
		 
insert into `student` values ('1001', 'stu', '123', '11006', '1', '100', '2015-10-25 08:05:10');
insert into `student` values ('1002', 'stu2', '123', '11006', '1', '200', '2015-10-25 09:05:10');
insert into `student` values ('1003', 'stu3', '123', '11004', '2', '100', '2015-10-26 10:05:10');

/*教师表*/			 
CREATE TABLE `teacher` (                
           `id`       varchar(32) NOT NULL,          /*教师编号*/  
           `name`     varchar(32) default NULL,      /*姓名*/
           `password` varchar(32) NOT NULL,          /*密码*/
		   `departmentId` varchar(32) NOT NULL,      /*院系编号*/ 
		   `registerTime` datetime    default NULL,  /*注册时间*/
           PRIMARY KEY  (`id`)                   
         );

insert into `teacher` values('133', 'tea', '123','11006','2015-10-25 08:05:10');
insert into `teacher` values('134', 'tea2', '123','11006','2015-10-26 08:05:10');
		 
/*实验室表*/		 
CREATE TABLE `labRoom` (                
           `id`          varchar(32) NOT NULL,        /*机房编号*/ 
		   `capacity`    varchar(32) NOT NULL,        /*机房能容纳电脑数*/
		   `computerNum` varchar(32) NOT NULL default '0',    /*实际电脑数量,容纳人数*/
		   `peopleNum`   varchar(32) NOT NULL default '0',    /*当前人数*/
		   `cost`        decimal(10,2)     NOT NULL,           /*每分钟多少元*/
           PRIMARY KEY  (`id`),
			check (`status` in ('0','1'))		   
         );	
		 
insert into `labRoom` values('A', '30', '30','1','0.2');

/*电脑表*/				 
CREATE TABLE `computer` (                
           `roomId`  varchar(32) NOT NULL,       /*机房编号*/ 
		   `id`      varchar(32) NOT NULL,       /*电脑编号*/ 
		   `status`  varchar(2)  NOT NULL default '1',   /*电脑状态 0：不可用，1：可用*/
           PRIMARY KEY  (`roomId`,`id`),
		   FOREIGN KEY (`roomId`) REFERENCES `labRoom` (`id`),
		   check (`status` in ('0','1'))
         );
		 
insert into `computer` values('A', '2','1');
		
/*上机表*/
CREATE TABLE `computerUse` (
		  `stuId`      varchar(32) NOT NULL, 			 /*学生编号*/
          `roomId`     varchar(32) NOT NULL,             /*实验室编号*/     
          `computerId` varchar(32) NOT NULL,             /*电脑编号*/
          `startTime`  datetime    NOT NULL, 
		  `endTime`    datetime    NOT NULL, 
		  `duration`   varchar(32) NOT NULL,             /*时长*/
		  `cost`       decimal(10,2) NOT NULL,           /*花费*/
		  FOREIGN KEY (`stuId`) REFERENCES `student` (`id`),
		  FOREIGN KEY (`roomId`,`computerId`) REFERENCES `computer` (`roomId`,`id`)
        );
	
insert into `computerUse` values('1001','A', '2', '2015-10-25 08:05:10','2015-10-25 08:07:10','2','0.4');
insert into `computerUse` values('1001','A', '2', '2015-10-26 08:05:10','2015-10-26 08:07:10','2','0.4');

/*充值表*/	
CREATE TABLE `rechargeList` (                
          `stuId` varchar(32)        NOT NULL,               /*学生编号*/       
          `money` decimal(10,2)      NOT NULL,               /*充值金额*/
		  `rechargetime`  datetime   default NULL,			 /*充值时间*/
		  FOREIGN KEY (`stuId`) REFERENCES `student` (`id`)	  
        );

insert into `rechargeList` values('1001','100', '2015-10-25 08:05:10');
insert into `rechargeList` values('1001','100', '2015-10-25 08:05:11');
		
/*课程表*/				 
CREATE TABLE `course` (
          `id` varchar(32)           NOT NULL,               /*课程编号*/       
          `name` varchar(32)         default NULL,           /*课程名称*/
		  `departmentId` varchar(32) NOT NULL,               /*院系编号*/
		  `credit` int      NOT NULL,                        /*学分*/ 
		  `stuNumber`    varchar(32) NOT NULL,               /*上课人数（最多人数）*/
          PRIMARY KEY  (`id`)	  
        );

insert into `course` values('1000100','逻辑电路实验','11006', '4','100');
insert into `course` values('1000102','软件工程','11006', '4','100');
insert into `course` values('1000103','java基础','11006', '4','100');
insert into `course` values('1000104','c++基础','11006', '4','100');		
/*课表*/				 
CREATE TABLE `courseList` (
		  `teacherId`    varchar(32) NOT NULL,       /*教师编号*/        
          `courseId`     varchar(32) NOT NULL,       /*课程编号*/     
		  `roomId`       varchar(32) NOT NULL,       /*实验室编号*/     
		  `startTime`    varchar(32) NOT NULL,          /*上课开始时间*/
		  `endTime`      varchar(32) NOT NULL,           /*上课结束时间*/
		  PRIMARY KEY  (`teacherId`,`courseId`),
		  FOREIGN KEY (`teacherId`) REFERENCES `teacher` (`id`),
		  FOREIGN KEY (`courseId`) REFERENCES `course` (`id`),
		  FOREIGN KEY (`roomId`) REFERENCES `labRoom` (`id`) 
        );
insert into `courseList` values('133','1000100','A', '08:00:00','10:00:00');
insert into `courseList` values('134','1000100','A', '10:00:00','12:00:00');
insert into `courseList` values('133','1000102','A', '14:00:00','16:00:00');		
		
		
		