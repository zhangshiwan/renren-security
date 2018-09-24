-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE TABLE "QRTZ_SCHEDULER_STATE" ---------------------
-- CREATE TABLE "QRTZ_SCHEDULER_STATE" -------------------------
CREATE TABLE `QRTZ_SCHEDULER_STATE` ( 
	`SCHED_NAME` VarChar( 120 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`INSTANCE_NAME` VarChar( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`LAST_CHECKIN_TIME` BigInt( 13 ) NOT NULL,
	`CHECKIN_INTERVAL` BigInt( 13 ) NOT NULL,
	PRIMARY KEY ( `SCHED_NAME`, `INSTANCE_NAME` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "QRTZ_SCHEDULER_STATE" ---------------------
INSERT INTO `QRTZ_SCHEDULER_STATE`(`SCHED_NAME`,`INSTANCE_NAME`,`LAST_CHECKIN_TIME`,`CHECKIN_INTERVAL`) VALUES ( 'RenrenScheduler', 'zhangshwandeMBP.lan1537811250938', '1537811781434', '15000' );
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


-- CREATE TABLE "QRTZ_JOB_DETAILS" -------------------------
-- CREATE TABLE "QRTZ_JOB_DETAILS" -----------------------------
CREATE TABLE `QRTZ_JOB_DETAILS` ( 
	`SCHED_NAME` VarChar( 120 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`JOB_NAME` VarChar( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`JOB_GROUP` VarChar( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`DESCRIPTION` VarChar( 250 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`JOB_CLASS_NAME` VarChar( 250 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`IS_DURABLE` VarChar( 1 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`IS_NONCONCURRENT` VarChar( 1 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`IS_UPDATE_DATA` VarChar( 1 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`REQUESTS_RECOVERY` VarChar( 1 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`JOB_DATA` Blob NULL,
	PRIMARY KEY ( `SCHED_NAME`, `JOB_NAME`, `JOB_GROUP` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "QRTZ_JOB_DETAILS" -------------------------
INSERT INTO `QRTZ_JOB_DETAILS`(`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`,`DESCRIPTION`,`JOB_CLASS_NAME`,`IS_DURABLE`,`IS_NONCONCURRENT`,`IS_UPDATE_DATA`,`REQUESTS_RECOVERY`,`JOB_DATA`) VALUES ( 'RenrenScheduler', 'TASK_1', 'DEFAULT', NULL, 'io.renren.utils.ScheduleJob', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B455973720022696F2E72656E72656E2E656E746974792E5363686564756C654A6F62456E7469747900000000000000010200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000E63726F6E45787072657373696F6E71007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000672656D61726B71007E00094C00067374617475737400134C6A6176612F6C616E672F496E74656765723B7870740008746573745461736B7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000158BAF593307874000E3020302F3330202A202A202A203F7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787000000000000000017400047465737474000672656E72656E74000FE69C89E58F82E695B0E6B58BE8AF95737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C75657871007E0013000000007800 );
INSERT INTO `QRTZ_JOB_DETAILS`(`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`,`DESCRIPTION`,`JOB_CLASS_NAME`,`IS_DURABLE`,`IS_NONCONCURRENT`,`IS_UPDATE_DATA`,`REQUESTS_RECOVERY`,`JOB_DATA`) VALUES ( 'RenrenScheduler', 'TASK_2', 'DEFAULT', NULL, 'io.renren.utils.ScheduleJob', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B455973720022696F2E72656E72656E2E656E746974792E5363686564756C654A6F62456E7469747900000000000000010200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000E63726F6E45787072657373696F6E71007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000672656D61726B71007E00094C00067374617475737400134C6A6176612F6C616E672F496E74656765723B7870740008746573745461736B7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000158C377C4607874000E3020302F3330202A202A202A203F7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000274000574657374327074000FE697A0E58F82E695B0E6B58BE8AF95737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C75657871007E0013000000017800 );
-- ---------------------------------------------------------


-- CREATE INDEX "IDX_QRTZ_J_GRP" ---------------------------
-- CREATE INDEX "IDX_QRTZ_J_GRP" -------------------------------
CREATE INDEX `IDX_QRTZ_J_GRP` USING BTREE ON `QRTZ_JOB_DETAILS`( `SCHED_NAME`, `JOB_GROUP` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "IDX_QRTZ_J_REQ_RECOVERY" ------------------
-- CREATE INDEX "IDX_QRTZ_J_REQ_RECOVERY" ----------------------
CREATE INDEX `IDX_QRTZ_J_REQ_RECOVERY` USING BTREE ON `QRTZ_JOB_DETAILS`( `SCHED_NAME`, `REQUESTS_RECOVERY` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


-- CREATE TABLE "QRTZ_PAUSED_TRIGGER_GRPS" -----------------
-- CREATE TABLE "QRTZ_PAUSED_TRIGGER_GRPS" ---------------------
CREATE TABLE `QRTZ_PAUSED_TRIGGER_GRPS` ( 
	`SCHED_NAME` VarChar( 120 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`TRIGGER_GROUP` VarChar( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	PRIMARY KEY ( `SCHED_NAME`, `TRIGGER_GROUP` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "QRTZ_PAUSED_TRIGGER_GRPS" -----------------
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


-- CREATE TABLE "schedule_job_log" -------------------------
-- CREATE TABLE "schedule_job_log" -----------------------------
CREATE TABLE `schedule_job_log` ( 
	`log_id` BigInt( 20 ) AUTO_INCREMENT NOT NULL COMMENT '任务日志id',
	`job_id` BigInt( 20 ) NOT NULL COMMENT '任务id',
	`bean_name` VarChar( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'spring bean名称',
	`method_name` VarChar( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '方法名',
	`params` VarChar( 2000 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '参数',
	`status` TinyInt( 4 ) NOT NULL COMMENT '任务状态    0：成功    1：失败',
	`error` VarChar( 2000 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '失败信息',
	`times` Int( 11 ) NOT NULL COMMENT '耗时(单位：毫秒)',
	`create_time` DateTime NULL COMMENT '创建时间',
	PRIMARY KEY ( `log_id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT '定时任务日志'
ENGINE = InnoDB
AUTO_INCREMENT = 52;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "schedule_job_log" -------------------------
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '1', '1', 'testTask', 'test', 'renren', '0', NULL, '1035', '2017-05-21 22:00:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '2', '1', 'testTask', 'test', 'renren', '0', NULL, '1025', '2017-05-22 00:00:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '3', '1', 'testTask', 'test', 'renren', '0', NULL, '1009', '2017-05-22 00:30:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '4', '1', 'testTask', 'test', 'renren', '0', NULL, '1029', '2017-05-22 01:00:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '5', '1', 'testTask', 'test', 'renren', '0', NULL, '1033', '2017-05-24 01:00:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '6', '1', 'testTask', 'test', 'renren', '0', NULL, '1036', '2017-05-24 23:00:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '7', '1', 'testTask', 'test', 'renren', '0', NULL, '1010', '2017-05-24 23:30:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '8', '1', 'testTask', 'test', 'renren', '0', NULL, '1024', '2017-05-25 00:00:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '9', '1', 'testTask', 'test', 'renren', '0', NULL, '1045', '2017-05-25 23:30:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '10', '1', 'testTask', 'test', 'renren', '0', NULL, '1034', '2017-05-26 00:00:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '11', '1', 'testTask', 'test', 'renren', '0', NULL, '1014', '2017-05-26 00:30:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '12', '1', 'testTask', 'test', 'renren', '0', NULL, '1032', '2017-05-26 01:00:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '13', '1', 'testTask', 'test', 'renren', '0', NULL, '1028', '2017-05-26 01:30:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '14', '1', 'testTask', 'test', 'renren', '0', NULL, '1037', '2017-05-26 02:00:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '15', '1', 'testTask', 'test', 'renren', '0', NULL, '1056', '2017-05-26 23:00:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '16', '1', 'testTask', 'test', 'renren', '0', NULL, '1026', '2017-05-27 00:00:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '17', '1', 'testTask', 'test', 'renren', '0', NULL, '1021', '2017-05-28 00:00:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '18', '1', 'testTask', 'test', 'renren', '0', NULL, '1020', '2017-05-28 00:30:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '19', '1', 'testTask', 'test', 'renren', '0', NULL, '1008', '2017-05-28 01:00:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '20', '1', 'testTask', 'test', 'renren', '0', NULL, '1009', '2017-05-28 01:30:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '21', '1', 'testTask', 'test', 'renren', '0', NULL, '1008', '2017-05-28 02:00:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '22', '1', 'testTask', 'test', 'renren', '0', NULL, '1020', '2017-05-28 17:00:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '23', '1', 'testTask', 'test', 'renren', '0', NULL, '1021', '2017-05-28 17:30:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '24', '1', 'testTask', 'test', 'renren', '0', NULL, '1009', '2017-05-28 18:00:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '25', '1', 'testTask', 'test', 'renren', '0', NULL, '1030', '2017-05-28 18:30:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '26', '1', 'testTask', 'test', 'renren', '0', NULL, '1028', '2017-05-28 19:30:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '27', '1', 'testTask', 'test', 'renren', '0', NULL, '1012', '2017-05-28 20:00:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '28', '1', 'testTask', 'test', 'renren', '0', NULL, '1022', '2017-05-28 23:30:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '29', '1', 'testTask', 'test', 'renren', '0', NULL, '1026', '2017-05-29 00:00:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '30', '1', 'testTask', 'test', 'renren', '0', NULL, '1008', '2017-05-29 00:30:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '31', '1', 'testTask', 'test', 'renren', '0', NULL, '1008', '2017-05-29 01:00:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '32', '1', 'testTask', 'test', 'renren', '0', NULL, '1022', '2017-05-29 02:00:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '33', '1', 'testTask', 'test', 'renren', '0', NULL, '1022', '2017-05-29 02:30:09' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '34', '1', 'testTask', 'test', 'renren', '0', NULL, '1026', '2017-05-29 22:00:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '35', '1', 'testTask', 'test', 'renren', '0', NULL, '1021', '2017-05-29 22:30:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '36', '1', 'testTask', 'test', 'renren', '0', NULL, '1148', '2017-05-29 23:00:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '37', '1', 'testTask', 'test', 'renren', '0', NULL, '1022', '2017-05-29 23:30:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '38', '1', 'testTask', 'test', 'renren', '0', NULL, '1017', '2017-05-30 00:00:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '39', '1', 'testTask', 'test', 'renren', '0', NULL, '1004', '2017-05-30 00:30:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '40', '1', 'testTask', 'test', 'renren', '0', NULL, '1033', '2017-05-30 01:00:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '41', '1', 'testTask', 'test', 'renren', '0', NULL, '1040', '2017-05-30 01:30:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '42', '1', 'testTask', 'test', 'renren', '0', NULL, '1021', '2017-05-30 02:00:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '43', '1', 'testTask', 'test', 'renren', '0', NULL, '1017', '2017-06-03 16:00:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '44', '1', 'testTask', 'test', 'renren', '0', NULL, '1007', '2017-06-03 16:30:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '45', '1', 'testTask', 'test', 'renren', '0', NULL, '1006', '2017-06-03 17:00:09' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '46', '1', 'testTask', 'test', 'renren', '0', NULL, '1008', '2017-06-03 17:30:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '47', '1', 'testTask', 'test', 'renren', '0', NULL, '1032', '2017-06-03 18:00:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '48', '1', 'testTask', 'test', 'renren', '0', NULL, '1052', '2018-09-19 00:00:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '49', '1', 'testTask', 'test', 'renren', '0', NULL, '1013', '2018-09-19 00:30:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '50', '1', 'testTask', 'test', 'renren', '0', NULL, '1304', '2018-09-24 02:00:00' );
INSERT INTO `schedule_job_log`(`log_id`,`job_id`,`bean_name`,`method_name`,`params`,`status`,`error`,`times`,`create_time`) VALUES ( '51', '1', 'testTask', 'test', 'renren', '0', NULL, '1004', '2018-09-24 02:30:00' );
-- ---------------------------------------------------------


-- CREATE INDEX "job_id" -----------------------------------
-- CREATE INDEX "job_id" ---------------------------------------
CREATE INDEX `job_id` USING BTREE ON `schedule_job_log`( `job_id` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


-- CREATE TABLE "sys_config" -------------------------------
-- CREATE TABLE "sys_config" -----------------------------------
CREATE TABLE `sys_config` ( 
	`id` BigInt( 20 ) AUTO_INCREMENT NOT NULL,
	`key` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'key',
	`value` VarChar( 2000 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'value',
	`status` TinyInt( 4 ) NULL DEFAULT '1' COMMENT '状态   0：隐藏   1：显示',
	`remark` VarChar( 500 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注',
	PRIMARY KEY ( `id` ),
	CONSTRAINT `key` UNIQUE( `key` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT '系统配置信息表'
ENGINE = InnoDB
AUTO_INCREMENT = 2;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "sys_config" -------------------------------
INSERT INTO `sys_config`(`id`,`key`,`value`,`status`,`remark`) VALUES ( '1', 'CLOUD_STORAGE_CONFIG_KEY', '{"aliyunAccessKeyId":"","aliyunAccessKeySecret":"","aliyunBucketName":"","aliyunDomain":"","aliyunEndPoint":"","aliyunPrefix":"","qcloudBucketName":"","qcloudDomain":"","qcloudPrefix":"","qcloudSecretId":"","qcloudSecretKey":"","qiniuAccessKey":"NrgMfABZxWLo5B-YYSjoE8-AZ1EISdi1Z3ubLOeZ","qiniuBucketName":"ios-app","qiniuDomain":"http://7xqbwh.dl1.z0.glb.clouddn.com","qiniuPrefix":"upload","qiniuSecretKey":"uIwJHevMRWU0VLxFvgy0tAcOdGqasdtVlJkdy6vV","type":1}', '0', '云存储配置信息' );
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


-- CREATE TABLE "QRTZ_LOCKS" -------------------------------
-- CREATE TABLE "QRTZ_LOCKS" -----------------------------------
CREATE TABLE `QRTZ_LOCKS` ( 
	`SCHED_NAME` VarChar( 120 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`LOCK_NAME` VarChar( 40 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	PRIMARY KEY ( `SCHED_NAME`, `LOCK_NAME` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "QRTZ_LOCKS" -------------------------------
INSERT INTO `QRTZ_LOCKS`(`SCHED_NAME`,`LOCK_NAME`) VALUES ( 'RenrenScheduler', 'STATE_ACCESS' );
INSERT INTO `QRTZ_LOCKS`(`SCHED_NAME`,`LOCK_NAME`) VALUES ( 'RenrenScheduler', 'TRIGGER_ACCESS' );
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


-- CREATE TABLE "tb_token" ---------------------------------
-- CREATE TABLE "tb_token" -------------------------------------
CREATE TABLE `tb_token` ( 
	`user_id` BigInt( 20 ) NOT NULL,
	`token` VarChar( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'token',
	`expire_time` DateTime NULL COMMENT '过期时间',
	`update_time` DateTime NULL COMMENT '更新时间',
	PRIMARY KEY ( `user_id` ),
	CONSTRAINT `token` UNIQUE( `token` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT '用户Token'
ENGINE = InnoDB;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "tb_token" ---------------------------------
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


-- CREATE TABLE "tb_user" ----------------------------------
-- CREATE TABLE "tb_user" --------------------------------------
CREATE TABLE `tb_user` ( 
	`user_id` BigInt( 20 ) AUTO_INCREMENT NOT NULL,
	`username` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
	`mobile` VarChar( 20 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号',
	`password` VarChar( 64 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '密码',
	`create_time` DateTime NULL COMMENT '创建时间',
	PRIMARY KEY ( `user_id` ),
	CONSTRAINT `username` UNIQUE( `username` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT '用户'
ENGINE = InnoDB
AUTO_INCREMENT = 2;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "tb_user" ----------------------------------
INSERT INTO `tb_user`(`user_id`,`username`,`mobile`,`password`,`create_time`) VALUES ( '1', 'mark', '13612345678', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', '2017-03-23 22:37:41' );
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


-- CREATE TABLE "sys_oss" ----------------------------------
-- CREATE TABLE "sys_oss" --------------------------------------
CREATE TABLE `sys_oss` ( 
	`id` BigInt( 20 ) AUTO_INCREMENT NOT NULL,
	`url` VarChar( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'URL地址',
	`create_date` DateTime NULL COMMENT '创建时间',
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT '文件上传'
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "sys_oss" ----------------------------------
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


-- CREATE TABLE "schedule_job" -----------------------------
-- CREATE TABLE "schedule_job" ---------------------------------
CREATE TABLE `schedule_job` ( 
	`job_id` BigInt( 20 ) AUTO_INCREMENT NOT NULL COMMENT '任务id',
	`bean_name` VarChar( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'spring bean名称',
	`method_name` VarChar( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '方法名',
	`params` VarChar( 2000 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '参数',
	`cron_expression` VarChar( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'cron表达式',
	`status` TinyInt( 4 ) NULL COMMENT '任务状态',
	`remark` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注',
	`create_time` DateTime NULL COMMENT '创建时间',
	PRIMARY KEY ( `job_id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT '定时任务'
ENGINE = InnoDB
AUTO_INCREMENT = 3;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "schedule_job" -----------------------------
INSERT INTO `schedule_job`(`job_id`,`bean_name`,`method_name`,`params`,`cron_expression`,`status`,`remark`,`create_time`) VALUES ( '1', 'testTask', 'test', 'renren', '0 0/30 * * * ?', '0', '有参数测试', '2016-12-01 23:16:46' );
INSERT INTO `schedule_job`(`job_id`,`bean_name`,`method_name`,`params`,`cron_expression`,`status`,`remark`,`create_time`) VALUES ( '2', 'testTask', 'test2', NULL, '0 0/30 * * * ?', '1', '无参数测试', '2016-12-03 14:55:56' );
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


-- CREATE TABLE "QRTZ_SIMPROP_TRIGGERS" --------------------
-- CREATE TABLE "QRTZ_SIMPROP_TRIGGERS" ------------------------
CREATE TABLE `QRTZ_SIMPROP_TRIGGERS` ( 
	`SCHED_NAME` VarChar( 120 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`TRIGGER_NAME` VarChar( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`TRIGGER_GROUP` VarChar( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`STR_PROP_1` VarChar( 512 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`STR_PROP_2` VarChar( 512 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`STR_PROP_3` VarChar( 512 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`INT_PROP_1` Int( 11 ) NULL,
	`INT_PROP_2` Int( 11 ) NULL,
	`LONG_PROP_1` BigInt( 20 ) NULL,
	`LONG_PROP_2` BigInt( 20 ) NULL,
	`DEC_PROP_1` Decimal( 13, 4 ) NULL,
	`DEC_PROP_2` Decimal( 13, 4 ) NULL,
	`BOOL_PROP_1` VarChar( 1 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`BOOL_PROP_2` VarChar( 1 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	PRIMARY KEY ( `SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "QRTZ_SIMPROP_TRIGGERS" --------------------
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


-- CREATE TABLE "sys_menu" ---------------------------------
-- CREATE TABLE "sys_menu" -------------------------------------
CREATE TABLE `sys_menu` ( 
	`menu_id` BigInt( 20 ) AUTO_INCREMENT NOT NULL,
	`parent_id` BigInt( 20 ) NULL COMMENT '父菜单ID，一级菜单为0',
	`name` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '菜单名称',
	`url` VarChar( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '菜单URL',
	`perms` VarChar( 500 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
	`type` Int( 11 ) NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
	`icon` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '菜单图标',
	`order_num` Int( 11 ) NULL COMMENT '排序',
	PRIMARY KEY ( `menu_id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT '菜单管理'
ENGINE = InnoDB
AUTO_INCREMENT = 43;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "sys_menu" ---------------------------------
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '1', '0', '系统管理', NULL, NULL, '0', 'fa fa-cog', '0' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '2', '1', '管理员列表', 'sys/user.html', NULL, '1', 'fa fa-user', '1' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '3', '1', '角色管理', 'sys/role.html', NULL, '1', 'fa fa-user-secret', '2' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '4', '1', '菜单管理', 'sys/menu.html', NULL, '1', 'fa fa-th-list', '3' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '5', '1', 'SQL监控', 'druid/sql.html', NULL, '1', 'fa fa-bug', '4' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '6', '1', '定时任务', 'sys/schedule.html', NULL, '1', 'fa fa-tasks', '5' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '7', '6', '查看', NULL, 'sys:schedule:list,sys:schedule:info', '2', NULL, '0' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '8', '6', '新增', NULL, 'sys:schedule:save', '2', NULL, '0' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '9', '6', '修改', NULL, 'sys:schedule:update', '2', NULL, '0' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '10', '6', '删除', NULL, 'sys:schedule:delete', '2', NULL, '0' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '11', '6', '暂停', NULL, 'sys:schedule:pause', '2', NULL, '0' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '12', '6', '恢复', NULL, 'sys:schedule:resume', '2', NULL, '0' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '13', '6', '立即执行', NULL, 'sys:schedule:run', '2', NULL, '0' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '14', '6', '日志列表', NULL, 'sys:schedule:log', '2', NULL, '0' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '15', '2', '查看', NULL, 'sys:user:list,sys:user:info', '2', NULL, '0' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '16', '2', '新增', NULL, 'sys:user:save,sys:role:select', '2', NULL, '0' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '17', '2', '修改', NULL, 'sys:user:update,sys:role:select', '2', NULL, '0' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '18', '2', '删除', NULL, 'sys:user:delete', '2', NULL, '0' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '19', '3', '查看', NULL, 'sys:role:list,sys:role:info', '2', NULL, '0' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '20', '3', '新增', NULL, 'sys:role:save,sys:menu:perms', '2', NULL, '0' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '21', '3', '修改', NULL, 'sys:role:update,sys:menu:perms', '2', NULL, '0' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '22', '3', '删除', NULL, 'sys:role:delete', '2', NULL, '0' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '23', '4', '查看', NULL, 'sys:menu:list,sys:menu:info', '2', NULL, '0' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '24', '4', '新增', NULL, 'sys:menu:save,sys:menu:select', '2', NULL, '0' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '25', '4', '修改', NULL, 'sys:menu:update,sys:menu:select', '2', NULL, '0' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '26', '4', '删除', NULL, 'sys:menu:delete', '2', NULL, '0' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '27', '1', '参数管理', 'sys/config.html', 'sys:config:list,sys:config:info,sys:config:save,sys:config:update,sys:config:delete', '1', 'fa fa-sun-o', '6' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '28', '1', '代码生成器', 'sys/generator.html', 'sys:generator:list,sys:generator:code', '1', 'fa fa-rocket', '8' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '29', '1', '系统日志', 'sys/log.html', 'sys:log:list', '1', 'fa fa-file-text-o', '7' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '30', '1', '文件上传', 'sys/oss.html', 'sys:oss:all', '1', 'fa fa-file-image-o', '6' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '31', '41', '我的发布', 'generator/entitypublish.html', NULL, '1', 'fa fa-coffee', '6' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '32', '31', '查看', NULL, 'entitypublish:list,entitypublish:info', '2', NULL, '6' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '33', '31', '新增', NULL, 'entitypublish:save', '2', NULL, '6' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '34', '31', '修改', NULL, 'entitypublish:update', '2', NULL, '6' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '35', '31', '删除', NULL, 'entitypublish:delete', '2', NULL, '6' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '36', '41', '教师学生关联表', 'generator/linkpublishstudent.html', NULL, '1', 'fa fa-sitemap', '6' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '37', '36', '查看', NULL, 'linkpublishstudent:list,linkpublishstudent:info', '2', NULL, '6' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '38', '36', '新增', NULL, 'linkpublishstudent:save', '2', NULL, '6' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '39', '36', '修改', NULL, 'linkpublishstudent:update', '2', NULL, '6' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '40', '36', '删除', NULL, 'linkpublishstudent:delete', '2', NULL, '6' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '41', '0', '学习发布', NULL, NULL, '0', 'fa fa-handshake-o', '0' );
INSERT INTO `sys_menu`(`menu_id`,`parent_id`,`name`,`url`,`perms`,`type`,`icon`,`order_num`) VALUES ( '42', '41', '最新发布', 'generator/profile.html', NULL, '1', 'fa fa-superpowers', '3' );
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


-- CREATE TABLE "QRTZ_SIMPLE_TRIGGERS" ---------------------
-- CREATE TABLE "QRTZ_SIMPLE_TRIGGERS" -------------------------
CREATE TABLE `QRTZ_SIMPLE_TRIGGERS` ( 
	`SCHED_NAME` VarChar( 120 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`TRIGGER_NAME` VarChar( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`TRIGGER_GROUP` VarChar( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`REPEAT_COUNT` BigInt( 7 ) NOT NULL,
	`REPEAT_INTERVAL` BigInt( 12 ) NOT NULL,
	`TIMES_TRIGGERED` BigInt( 10 ) NOT NULL,
	PRIMARY KEY ( `SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "QRTZ_SIMPLE_TRIGGERS" ---------------------
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


-- CREATE TABLE "entity_publish" ---------------------------
-- CREATE TABLE "entity_publish" -------------------------------
CREATE TABLE `entity_publish` ( 
	`id` BigInt( 20 ) AUTO_INCREMENT NOT NULL,
	`user_name` VarChar( 205 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '用户名',
	`user_id` VarChar( 145 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '用户主键',
	`res_des` VarChar( 2000 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '发布资源任务描述',
	`res_type` Int( 11 ) NULL COMMENT '1:频道 1对多上课   2:单聊 1对1上课',
	`create_time` DateTime NULL COMMENT '创建时间',
	`category` VarChar( 20 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '技能类别。 1:计算机。2：英语',
	`keywords` VarChar( 400 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '技能关键字',
	`fee_type` Int( 11 ) NULL COMMENT '1:学生自愿。2:一次一元  3:自定义',
	`own_fee_desc` VarChar( 400 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '收费自定义',
	`channel_name` VarChar( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '频道名称',
	`source_type` Int( 11 ) NULL DEFAULT '2' COMMENT '来源 1:我要学习。2:我要发布',
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_bin
COMMENT '教学发布表'
ENGINE = InnoDB
AUTO_INCREMENT = 6;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "entity_publish" ---------------------------
INSERT INTO `entity_publish`(`id`,`user_name`,`user_id`,`res_des`,`res_type`,`create_time`,`category`,`keywords`,`fee_type`,`own_fee_desc`,`channel_name`,`source_type`) VALUES ( '1', 'zhang20', '13', 'java基础 ：

Java是一门面向对象编程语言，不仅吸收了C++语言的各种优点，还摒弃了C++里难以理解的多继承、指针等概念，因此Java语言具有功能强大和简单易用两个特征。Java语言作为静态面向对象编程语言的代表，极好地实现了面向对象理论，允许程序员以优雅的思维方式进行复杂的编程[1]  。
Java具有简单性、面向对象、分布式、健壮性、安全性、平台独立与可移植性、多线程、动态性等特点[2]  。Java可以编写桌面应用程序、Web应用程序、分布式系统和嵌入式系统应用程序等[3]  。', '1', '2017-05-28 23:46:58', '1', 'java.计算机', '1', NULL, 'zhang20-java基础', '2' );
INSERT INTO `entity_publish`(`id`,`user_name`,`user_id`,`res_des`,`res_type`,`create_time`,`category`,`keywords`,`fee_type`,`own_fee_desc`,`channel_name`,`source_type`) VALUES ( '4', 'zhang20', '13', 'java 开发工具：
IDEA 全称IntelliJ IDEA，是java语言开发的集成环境，IntelliJ在业界被公认为最好的java开发工具之一，尤其在智能代码助手、代码自动提示、重构、J2EE支持、Ant、JUnit、CVS整合、代码审查、 创新的GUI设计等方面的功能可以说是超常的。IDEA是JetBrains公司的产品，这家公司总部位于捷克共和国的首都布拉格，开发人员以严谨著称的东欧程序员为主。', '1', '2017-05-28 23:49:57', '1', 'java idea', '1', '', 'zhang20-java开发工具', '2' );
INSERT INTO `entity_publish`(`id`,`user_name`,`user_id`,`res_des`,`res_type`,`create_time`,`category`,`keywords`,`fee_type`,`own_fee_desc`,`channel_name`,`source_type`) VALUES ( '5', 'zhang20', '13', 'spring mvc mybatis ： Spring MVC属于SpringFrameWork的后续产品，已经融合在Spring Web Flow里面。Spring 框架提供了构建 Web 应用程序的全功能 MVC 模块。使用 Spring 可插入的 MVC 架构，从而在使用Spring进行WEB开发时，可以选择使用Spring的SpringMVC框架或集成其他MVC开发框架，如Struts1，Struts2等。', '1', '2017-05-28 23:51:02', '1', 'spring mvc', NULL, NULL, 'zhang20-sprinmvc', '2' );
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


-- CREATE TABLE "QRTZ_BLOB_TRIGGERS" -----------------------
-- CREATE TABLE "QRTZ_BLOB_TRIGGERS" ---------------------------
CREATE TABLE `QRTZ_BLOB_TRIGGERS` ( 
	`SCHED_NAME` VarChar( 120 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`TRIGGER_NAME` VarChar( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`TRIGGER_GROUP` VarChar( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`BLOB_DATA` Blob NULL,
	PRIMARY KEY ( `SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "QRTZ_BLOB_TRIGGERS" -----------------------
-- ---------------------------------------------------------


-- CREATE INDEX "SCHED_NAME" -------------------------------
-- CREATE INDEX "SCHED_NAME" -----------------------------------
CREATE INDEX `SCHED_NAME` USING BTREE ON `QRTZ_BLOB_TRIGGERS`( `SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


-- CREATE TABLE "QRTZ_FIRED_TRIGGERS" ----------------------
-- CREATE TABLE "QRTZ_FIRED_TRIGGERS" --------------------------
CREATE TABLE `QRTZ_FIRED_TRIGGERS` ( 
	`SCHED_NAME` VarChar( 120 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`ENTRY_ID` VarChar( 95 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`TRIGGER_NAME` VarChar( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`TRIGGER_GROUP` VarChar( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`INSTANCE_NAME` VarChar( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`FIRED_TIME` BigInt( 13 ) NOT NULL,
	`SCHED_TIME` BigInt( 13 ) NOT NULL,
	`PRIORITY` Int( 11 ) NOT NULL,
	`STATE` VarChar( 16 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`JOB_NAME` VarChar( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`JOB_GROUP` VarChar( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`IS_NONCONCURRENT` VarChar( 1 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`REQUESTS_RECOVERY` VarChar( 1 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	PRIMARY KEY ( `SCHED_NAME`, `ENTRY_ID` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "QRTZ_FIRED_TRIGGERS" ----------------------
-- ---------------------------------------------------------


-- CREATE INDEX "IDX_QRTZ_FT_INST_JOB_REQ_RCVRY" -----------
-- CREATE INDEX "IDX_QRTZ_FT_INST_JOB_REQ_RCVRY" ---------------
CREATE INDEX `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY` USING BTREE ON `QRTZ_FIRED_TRIGGERS`( `SCHED_NAME`, `INSTANCE_NAME`, `REQUESTS_RECOVERY` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "IDX_QRTZ_FT_JG" ---------------------------
-- CREATE INDEX "IDX_QRTZ_FT_JG" -------------------------------
CREATE INDEX `IDX_QRTZ_FT_JG` USING BTREE ON `QRTZ_FIRED_TRIGGERS`( `SCHED_NAME`, `JOB_GROUP` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "IDX_QRTZ_FT_J_G" --------------------------
-- CREATE INDEX "IDX_QRTZ_FT_J_G" ------------------------------
CREATE INDEX `IDX_QRTZ_FT_J_G` USING BTREE ON `QRTZ_FIRED_TRIGGERS`( `SCHED_NAME`, `JOB_NAME`, `JOB_GROUP` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "IDX_QRTZ_FT_TG" ---------------------------
-- CREATE INDEX "IDX_QRTZ_FT_TG" -------------------------------
CREATE INDEX `IDX_QRTZ_FT_TG` USING BTREE ON `QRTZ_FIRED_TRIGGERS`( `SCHED_NAME`, `TRIGGER_GROUP` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "IDX_QRTZ_FT_TRIG_INST_NAME" ---------------
-- CREATE INDEX "IDX_QRTZ_FT_TRIG_INST_NAME" -------------------
CREATE INDEX `IDX_QRTZ_FT_TRIG_INST_NAME` USING BTREE ON `QRTZ_FIRED_TRIGGERS`( `SCHED_NAME`, `INSTANCE_NAME` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "IDX_QRTZ_FT_T_G" --------------------------
-- CREATE INDEX "IDX_QRTZ_FT_T_G" ------------------------------
CREATE INDEX `IDX_QRTZ_FT_T_G` USING BTREE ON `QRTZ_FIRED_TRIGGERS`( `SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


-- CREATE TABLE "QRTZ_CRON_TRIGGERS" -----------------------
-- CREATE TABLE "QRTZ_CRON_TRIGGERS" ---------------------------
CREATE TABLE `QRTZ_CRON_TRIGGERS` ( 
	`SCHED_NAME` VarChar( 120 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`TRIGGER_NAME` VarChar( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`TRIGGER_GROUP` VarChar( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`CRON_EXPRESSION` VarChar( 120 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`TIME_ZONE_ID` VarChar( 80 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	PRIMARY KEY ( `SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "QRTZ_CRON_TRIGGERS" -----------------------
INSERT INTO `QRTZ_CRON_TRIGGERS`(`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`CRON_EXPRESSION`,`TIME_ZONE_ID`) VALUES ( 'RenrenScheduler', 'TASK_1', 'DEFAULT', '0 0/30 * * * ?', 'Asia/Shanghai' );
INSERT INTO `QRTZ_CRON_TRIGGERS`(`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`CRON_EXPRESSION`,`TIME_ZONE_ID`) VALUES ( 'RenrenScheduler', 'TASK_2', 'DEFAULT', '0 0/30 * * * ?', 'Asia/Shanghai' );
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


-- CREATE TABLE "QRTZ_CALENDARS" ---------------------------
-- CREATE TABLE "QRTZ_CALENDARS" -------------------------------
CREATE TABLE `QRTZ_CALENDARS` ( 
	`SCHED_NAME` VarChar( 120 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`CALENDAR_NAME` VarChar( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`CALENDAR` Blob NOT NULL,
	PRIMARY KEY ( `SCHED_NAME`, `CALENDAR_NAME` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "QRTZ_CALENDARS" ---------------------------
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


-- CREATE TABLE "sys_user" ---------------------------------
-- CREATE TABLE "sys_user" -------------------------------------
CREATE TABLE `sys_user` ( 
	`user_id` BigInt( 20 ) AUTO_INCREMENT NOT NULL,
	`username` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
	`password` VarChar( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '密码',
	`email` VarChar( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '邮箱',
	`mobile` VarChar( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '手机号',
	`status` TinyInt( 4 ) NULL COMMENT '状态  0：禁用   1：正常',
	`create_user_id` BigInt( 20 ) NULL COMMENT '创建者ID',
	`create_time` DateTime NULL COMMENT '创建时间',
	PRIMARY KEY ( `user_id` ),
	CONSTRAINT `username` UNIQUE( `username` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT '系统用户'
ENGINE = InnoDB
AUTO_INCREMENT = 17;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "sys_user" ---------------------------------
INSERT INTO `sys_user`(`user_id`,`username`,`password`,`email`,`mobile`,`status`,`create_user_id`,`create_time`) VALUES ( '1', 'admin', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 'root@renren.io', '13612345678', '1', NULL, '2016-11-11 11:11:11' );
INSERT INTO `sys_user`(`user_id`,`username`,`password`,`email`,`mobile`,`status`,`create_user_id`,`create_time`) VALUES ( '14', 'zhang', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '11@qq.com', '15822121234', '1', '1', '2018-09-18 23:49:19' );
INSERT INTO `sys_user`(`user_id`,`username`,`password`,`email`,`mobile`,`status`,`create_user_id`,`create_time`) VALUES ( '15', 'root', '4813494d137e1631bba301d5acab6e7bb7aa74ce1185d456565ef51d737677b2', '123@qq.com', '13187766767', '1', NULL, '2018-09-24 01:53:23' );
INSERT INTO `sys_user`(`user_id`,`username`,`password`,`email`,`mobile`,`status`,`create_user_id`,`create_time`) VALUES ( '16', 'lisi', 'bcb15f821479b4d5772bd0ca866c00ad5f926e3580720659cc80d39c9d09802a', '122@12.com', NULL, '1', NULL, '2018-09-24 01:54:16' );
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


-- CREATE TABLE "sys_log" ----------------------------------
-- CREATE TABLE "sys_log" --------------------------------------
CREATE TABLE `sys_log` ( 
	`id` BigInt( 20 ) AUTO_INCREMENT NOT NULL,
	`username` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '用户名',
	`operation` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '用户操作',
	`method` VarChar( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '请求方法',
	`params` VarChar( 5000 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '请求参数',
	`ip` VarChar( 64 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'IP地址',
	`create_date` DateTime NULL COMMENT '创建时间',
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT '系统日志'
ENGINE = InnoDB
AUTO_INCREMENT = 26;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "sys_log" ----------------------------------
INSERT INTO `sys_log`(`id`,`username`,`operation`,`method`,`params`,`ip`,`create_date`) VALUES ( '1', 'admin', '保存用户', 'io.renren.controller.SysUserController.save()', '{"email":"123@11","roleIdList":[],"status":1,"username":"张三"}', '0:0:0:0:0:0:0:1', '2017-05-22 01:02:56' );
INSERT INTO `sys_log`(`id`,`username`,`operation`,`method`,`params`,`ip`,`create_date`) VALUES ( '2', 'admin', '保存用户', 'io.renren.controller.SysUserController.save()', '{"email":"123@12","roleIdList":[],"status":1,"username":"lisi"}', '0:0:0:0:0:0:0:1', '2017-05-22 01:22:20' );
INSERT INTO `sys_log`(`id`,`username`,`operation`,`method`,`params`,`ip`,`create_date`) VALUES ( '3', 'admin', '保存用户', 'io.renren.controller.SysUserController.save()', '{"email":"517359234@qq.com","username":"zhangshiwan"}', '0:0:0:0:0:0:0:1', '2017-05-24 22:56:16' );
INSERT INTO `sys_log`(`id`,`username`,`operation`,`method`,`params`,`ip`,`create_date`) VALUES ( '4', 'admin', '保存用户', 'io.renren.controller.SysUserController.save()', '{"email":"517359234@qq.com","username":"zhangshiwan11"}', '0:0:0:0:0:0:0:1', '2017-05-24 23:38:28' );
INSERT INTO `sys_log`(`id`,`username`,`operation`,`method`,`params`,`ip`,`create_date`) VALUES ( '5', 'admin', '保存用户', 'io.renren.controller.SysUserController.save()', '{"email":"517359234@qq.com","username":"zhangshiwan15"}', '0:0:0:0:0:0:0:1', '2017-05-24 23:40:27' );
INSERT INTO `sys_log`(`id`,`username`,`operation`,`method`,`params`,`ip`,`create_date`) VALUES ( '6', 'admin', '保存角色', 'io.renren.controller.SysRoleController.save()', '{"menuIdList":[],"roleName":"用户"}', '0:0:0:0:0:0:0:1', '2017-05-28 00:06:55' );
INSERT INTO `sys_log`(`id`,`username`,`operation`,`method`,`params`,`ip`,`create_date`) VALUES ( '7', 'admin', '修改用户', 'io.renren.controller.SysUserController.update()', '{"createTime":1495736200000,"email":"zsw@12.com","roleIdList":[1],"userId":13,"username":"zhang20"}', '0:0:0:0:0:0:0:1', '2017-05-28 00:18:28' );
INSERT INTO `sys_log`(`id`,`username`,`operation`,`method`,`params`,`ip`,`create_date`) VALUES ( '8', 'admin', '修改角色', 'io.renren.controller.SysRoleController.update()', '{"createTime":1495901215000,"createUserId":1,"menuIdList":[1,31,32,33,34,35,36,37,38,39,40],"roleId":1,"roleName":"普通用户"}', '0:0:0:0:0:0:0:1', '2017-05-28 00:18:50' );
INSERT INTO `sys_log`(`id`,`username`,`operation`,`method`,`params`,`ip`,`create_date`) VALUES ( '9', 'admin', '保存菜单', 'io.renren.controller.SysMenuController.save()', '{"icon":"fa fa-handshake-o","name":"学习发布","orderNum":0,"parentId":0,"parentName":"一级菜单","type":0}', '0:0:0:0:0:0:0:1', '2017-05-28 00:23:06' );
INSERT INTO `sys_log`(`id`,`username`,`operation`,`method`,`params`,`ip`,`create_date`) VALUES ( '10', 'admin', '修改菜单', 'io.renren.controller.SysMenuController.update()', '{"icon":"fa fa-coffee","menuId":31,"name":"教学发布表","orderNum":6,"parentId":41,"parentName":"学习发布","type":1,"url":"generator/entitypublish.html"}', '0:0:0:0:0:0:0:1', '2017-05-28 00:25:48' );
INSERT INTO `sys_log`(`id`,`username`,`operation`,`method`,`params`,`ip`,`create_date`) VALUES ( '11', 'admin', '修改菜单', 'io.renren.controller.SysMenuController.update()', '{"icon":"fa fa-sitemap","menuId":36,"name":"教师学生关联表","orderNum":6,"parentId":41,"parentName":"学习发布","type":1,"url":"generator/linkpublishstudent.html"}', '0:0:0:0:0:0:0:1', '2017-05-28 00:28:36' );
INSERT INTO `sys_log`(`id`,`username`,`operation`,`method`,`params`,`ip`,`create_date`) VALUES ( '12', 'admin', '修改角色', 'io.renren.controller.SysRoleController.update()', '{"createTime":1495901215000,"createUserId":1,"menuIdList":[1,41,31,32,33,34,35,36,37,38,39,40],"roleId":1,"roleName":"普通用户"}', '0:0:0:0:0:0:0:1', '2017-05-28 00:29:45' );
INSERT INTO `sys_log`(`id`,`username`,`operation`,`method`,`params`,`ip`,`create_date`) VALUES ( '13', 'admin', '修改角色', 'io.renren.controller.SysRoleController.update()', '{"createTime":1495901215000,"createUserId":1,"menuIdList":[41,31,32,33,34,35,36,37,38,39,40],"roleId":1,"roleName":"普通用户"}', '0:0:0:0:0:0:0:1', '2017-05-28 00:30:28' );
INSERT INTO `sys_log`(`id`,`username`,`operation`,`method`,`params`,`ip`,`create_date`) VALUES ( '14', 'admin', '保存菜单', 'io.renren.controller.SysMenuController.save()', '{"icon":"fa fa-superpowers","name":"学习资料","orderNum":3,"parentId":41,"parentName":"学习发布","type":1,"url":"generator/entitypublish.html"}', '0:0:0:0:0:0:0:1', '2017-05-28 15:53:47' );
INSERT INTO `sys_log`(`id`,`username`,`operation`,`method`,`params`,`ip`,`create_date`) VALUES ( '15', 'admin', '修改角色', 'io.renren.controller.SysRoleController.update()', '{"createTime":1495901215000,"createUserId":1,"menuIdList":[41,42,31,32,33,34,35,36,37,38,39,40],"roleId":1,"roleName":"普通用户"}', '0:0:0:0:0:0:0:1', '2017-05-28 15:54:07' );
INSERT INTO `sys_log`(`id`,`username`,`operation`,`method`,`params`,`ip`,`create_date`) VALUES ( '16', 'admin', '修改菜单', 'io.renren.controller.SysMenuController.update()', '{"icon":"fa fa-superpowers","menuId":42,"name":"学习资料","orderNum":3,"parentId":41,"parentName":"学习发布","type":1,"url":"generator/profile.html"}', '0:0:0:0:0:0:0:1', '2017-05-28 16:13:53' );
INSERT INTO `sys_log`(`id`,`username`,`operation`,`method`,`params`,`ip`,`create_date`) VALUES ( '17', 'admin', '修改菜单', 'io.renren.controller.SysMenuController.update()', '{"icon":"fa fa-coffee","menuId":31,"name":"我的发布","orderNum":6,"parentId":41,"parentName":"学习发布","type":1,"url":"generator/entitypublish.html"}', '0:0:0:0:0:0:0:1', '2017-05-30 01:42:10' );
INSERT INTO `sys_log`(`id`,`username`,`operation`,`method`,`params`,`ip`,`create_date`) VALUES ( '18', 'admin', '修改菜单', 'io.renren.controller.SysMenuController.update()', '{"icon":"fa fa-superpowers","menuId":42,"name":"最新发布","orderNum":3,"parentId":41,"parentName":"学习发布","type":1,"url":"generator/profile.html"}', '0:0:0:0:0:0:0:1', '2017-05-30 01:43:18' );
INSERT INTO `sys_log`(`id`,`username`,`operation`,`method`,`params`,`ip`,`create_date`) VALUES ( '19', 'admin', '修改用户', 'io.renren.controller.SysUserController.update()', '{"createTime":1495736200000,"email":"zsw@12.com","roleIdList":[1],"userId":13,"username":"zhang20"}', '0:0:0:0:0:0:0:1', '2018-09-18 23:45:20' );
INSERT INTO `sys_log`(`id`,`username`,`operation`,`method`,`params`,`ip`,`create_date`) VALUES ( '20', 'admin', '删除用户', 'io.renren.controller.SysUserController.delete()', '[13,12,9,8,7,6,5,4,3,2]', '0:0:0:0:0:0:0:1', '2018-09-18 23:48:31' );
INSERT INTO `sys_log`(`id`,`username`,`operation`,`method`,`params`,`ip`,`create_date`) VALUES ( '21', 'admin', '保存用户', 'io.renren.controller.SysUserController.save()', '{"email":"11","mobile":"15822121234","roleIdList":[1],"status":1,"username":"zhang"}', '0:0:0:0:0:0:0:1', '2018-09-18 23:49:10' );
INSERT INTO `sys_log`(`id`,`username`,`operation`,`method`,`params`,`ip`,`create_date`) VALUES ( '22', 'admin', '保存用户', 'io.renren.controller.SysUserController.save()', '{"email":"11@qq.com","mobile":"15822121234","roleIdList":[1],"status":1,"username":"zhang"}', '0:0:0:0:0:0:0:1', '2018-09-18 23:49:19' );
INSERT INTO `sys_log`(`id`,`username`,`operation`,`method`,`params`,`ip`,`create_date`) VALUES ( '23', 'admin', '删除菜单', 'io.renren.controller.SysMenuController.delete()', '[7,8,9,10,11,12,13,14]', '0:0:0:0:0:0:0:1', '2018-09-24 01:51:24' );
INSERT INTO `sys_log`(`id`,`username`,`operation`,`method`,`params`,`ip`,`create_date`) VALUES ( '24', 'admin', '删除菜单', 'io.renren.controller.SysMenuController.delete()', '[7,8,9,10,11,12,13,14]', '0:0:0:0:0:0:0:1', '2018-09-24 01:51:35' );
INSERT INTO `sys_log`(`id`,`username`,`operation`,`method`,`params`,`ip`,`create_date`) VALUES ( '25', 'admin', '保存角色', 'io.renren.controller.SysRoleController.save()', '{"menuIdList":[1,2,15,16,17,18,41,42,31,32,33,34,35,36,37,38,39,40],"roleName":"管理员"}', '0:0:0:0:0:0:0:1', '2018-09-24 01:52:45' );
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


-- CREATE TABLE "sys_role" ---------------------------------
-- CREATE TABLE "sys_role" -------------------------------------
CREATE TABLE `sys_role` ( 
	`role_id` BigInt( 20 ) AUTO_INCREMENT NOT NULL,
	`role_name` VarChar( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '角色名称',
	`remark` VarChar( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注',
	`create_user_id` BigInt( 20 ) NULL COMMENT '创建者ID',
	`create_time` DateTime NULL COMMENT '创建时间',
	PRIMARY KEY ( `role_id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT '角色'
ENGINE = InnoDB
AUTO_INCREMENT = 3;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "sys_role" ---------------------------------
INSERT INTO `sys_role`(`role_id`,`role_name`,`remark`,`create_user_id`,`create_time`) VALUES ( '1', '普通用户', NULL, '1', '2017-05-28 00:06:55' );
INSERT INTO `sys_role`(`role_id`,`role_name`,`remark`,`create_user_id`,`create_time`) VALUES ( '2', '管理员', NULL, '1', '2018-09-24 01:52:45' );
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


-- CREATE TABLE "sys_user_role" ----------------------------
-- CREATE TABLE "sys_user_role" --------------------------------
CREATE TABLE `sys_user_role` ( 
	`id` BigInt( 20 ) AUTO_INCREMENT NOT NULL,
	`user_id` BigInt( 20 ) NULL COMMENT '用户ID',
	`role_id` BigInt( 20 ) NULL COMMENT '角色ID',
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT '用户与角色对应关系'
ENGINE = InnoDB
AUTO_INCREMENT = 5;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "sys_user_role" ----------------------------
INSERT INTO `sys_user_role`(`id`,`user_id`,`role_id`) VALUES ( '3', '14', '1' );
INSERT INTO `sys_user_role`(`id`,`user_id`,`role_id`) VALUES ( '4', '15', '2' );
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


-- CREATE TABLE "QRTZ_TRIGGERS" ----------------------------
-- CREATE TABLE "QRTZ_TRIGGERS" --------------------------------
CREATE TABLE `QRTZ_TRIGGERS` ( 
	`SCHED_NAME` VarChar( 120 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`TRIGGER_NAME` VarChar( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`TRIGGER_GROUP` VarChar( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`JOB_NAME` VarChar( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`JOB_GROUP` VarChar( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`DESCRIPTION` VarChar( 250 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`NEXT_FIRE_TIME` BigInt( 13 ) NULL,
	`PREV_FIRE_TIME` BigInt( 13 ) NULL,
	`PRIORITY` Int( 11 ) NULL,
	`TRIGGER_STATE` VarChar( 16 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`TRIGGER_TYPE` VarChar( 8 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`START_TIME` BigInt( 13 ) NOT NULL,
	`END_TIME` BigInt( 13 ) NULL,
	`CALENDAR_NAME` VarChar( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`MISFIRE_INSTR` Smallint( 2 ) NULL,
	`JOB_DATA` Blob NULL,
	PRIMARY KEY ( `SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "QRTZ_TRIGGERS" ----------------------------
INSERT INTO `QRTZ_TRIGGERS`(`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`JOB_NAME`,`JOB_GROUP`,`DESCRIPTION`,`NEXT_FIRE_TIME`,`PREV_FIRE_TIME`,`PRIORITY`,`TRIGGER_STATE`,`TRIGGER_TYPE`,`START_TIME`,`END_TIME`,`CALENDAR_NAME`,`MISFIRE_INSTR`,`JOB_DATA`) VALUES ( 'RenrenScheduler', 'TASK_1', 'DEFAULT', 'TASK_1', 'DEFAULT', NULL, '1537812000000', '1537727400000', '5', 'WAITING', 'CRON', '1495359277000', '0', NULL, '2', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B455973720022696F2E72656E72656E2E656E746974792E5363686564756C654A6F62456E7469747900000000000000010200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000E63726F6E45787072657373696F6E71007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000672656D61726B71007E00094C00067374617475737400134C6A6176612F6C616E672F496E74656765723B7870740008746573745461736B7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000158BAF593307874000E3020302F3330202A202A202A203F7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787000000000000000017400047465737474000672656E72656E74000FE69C89E58F82E695B0E6B58BE8AF95737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C75657871007E0013000000007800 );
INSERT INTO `QRTZ_TRIGGERS`(`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`JOB_NAME`,`JOB_GROUP`,`DESCRIPTION`,`NEXT_FIRE_TIME`,`PREV_FIRE_TIME`,`PRIORITY`,`TRIGGER_STATE`,`TRIGGER_TYPE`,`START_TIME`,`END_TIME`,`CALENDAR_NAME`,`MISFIRE_INSTR`,`JOB_DATA`) VALUES ( 'RenrenScheduler', 'TASK_2', 'DEFAULT', 'TASK_2', 'DEFAULT', NULL, '1495360800000', '-1', '5', 'PAUSED', 'CRON', '1495359277000', '0', NULL, '2', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B455973720022696F2E72656E72656E2E656E746974792E5363686564756C654A6F62456E7469747900000000000000010200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000E63726F6E45787072657373696F6E71007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000672656D61726B71007E00094C00067374617475737400134C6A6176612F6C616E672F496E74656765723B7870740008746573745461736B7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000158C377C4607874000E3020302F3330202A202A202A203F7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000274000574657374327074000FE697A0E58F82E695B0E6B58BE8AF95737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C75657871007E0013000000017800 );
-- ---------------------------------------------------------


-- CREATE INDEX "IDX_QRTZ_T_C" -----------------------------
-- CREATE INDEX "IDX_QRTZ_T_C" ---------------------------------
CREATE INDEX `IDX_QRTZ_T_C` USING BTREE ON `QRTZ_TRIGGERS`( `SCHED_NAME`, `CALENDAR_NAME` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "IDX_QRTZ_T_G" -----------------------------
-- CREATE INDEX "IDX_QRTZ_T_G" ---------------------------------
CREATE INDEX `IDX_QRTZ_T_G` USING BTREE ON `QRTZ_TRIGGERS`( `SCHED_NAME`, `TRIGGER_GROUP` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "IDX_QRTZ_T_J" -----------------------------
-- CREATE INDEX "IDX_QRTZ_T_J" ---------------------------------
CREATE INDEX `IDX_QRTZ_T_J` USING BTREE ON `QRTZ_TRIGGERS`( `SCHED_NAME`, `JOB_NAME`, `JOB_GROUP` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "IDX_QRTZ_T_JG" ----------------------------
-- CREATE INDEX "IDX_QRTZ_T_JG" --------------------------------
CREATE INDEX `IDX_QRTZ_T_JG` USING BTREE ON `QRTZ_TRIGGERS`( `SCHED_NAME`, `JOB_GROUP` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "IDX_QRTZ_T_NEXT_FIRE_TIME" ----------------
-- CREATE INDEX "IDX_QRTZ_T_NEXT_FIRE_TIME" --------------------
CREATE INDEX `IDX_QRTZ_T_NEXT_FIRE_TIME` USING BTREE ON `QRTZ_TRIGGERS`( `SCHED_NAME`, `NEXT_FIRE_TIME` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "IDX_QRTZ_T_NFT_MISFIRE" -------------------
-- CREATE INDEX "IDX_QRTZ_T_NFT_MISFIRE" -----------------------
CREATE INDEX `IDX_QRTZ_T_NFT_MISFIRE` USING BTREE ON `QRTZ_TRIGGERS`( `SCHED_NAME`, `MISFIRE_INSTR`, `NEXT_FIRE_TIME` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "IDX_QRTZ_T_NFT_ST" ------------------------
-- CREATE INDEX "IDX_QRTZ_T_NFT_ST" ----------------------------
CREATE INDEX `IDX_QRTZ_T_NFT_ST` USING BTREE ON `QRTZ_TRIGGERS`( `SCHED_NAME`, `TRIGGER_STATE`, `NEXT_FIRE_TIME` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "IDX_QRTZ_T_NFT_ST_MISFIRE" ----------------
-- CREATE INDEX "IDX_QRTZ_T_NFT_ST_MISFIRE" --------------------
CREATE INDEX `IDX_QRTZ_T_NFT_ST_MISFIRE` USING BTREE ON `QRTZ_TRIGGERS`( `SCHED_NAME`, `MISFIRE_INSTR`, `NEXT_FIRE_TIME`, `TRIGGER_STATE` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "IDX_QRTZ_T_NFT_ST_MISFIRE_GRP" ------------
-- CREATE INDEX "IDX_QRTZ_T_NFT_ST_MISFIRE_GRP" ----------------
CREATE INDEX `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP` USING BTREE ON `QRTZ_TRIGGERS`( `SCHED_NAME`, `MISFIRE_INSTR`, `NEXT_FIRE_TIME`, `TRIGGER_GROUP`, `TRIGGER_STATE` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "IDX_QRTZ_T_N_G_STATE" ---------------------
-- CREATE INDEX "IDX_QRTZ_T_N_G_STATE" -------------------------
CREATE INDEX `IDX_QRTZ_T_N_G_STATE` USING BTREE ON `QRTZ_TRIGGERS`( `SCHED_NAME`, `TRIGGER_GROUP`, `TRIGGER_STATE` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "IDX_QRTZ_T_N_STATE" -----------------------
-- CREATE INDEX "IDX_QRTZ_T_N_STATE" ---------------------------
CREATE INDEX `IDX_QRTZ_T_N_STATE` USING BTREE ON `QRTZ_TRIGGERS`( `SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`, `TRIGGER_STATE` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "IDX_QRTZ_T_STATE" -------------------------
-- CREATE INDEX "IDX_QRTZ_T_STATE" -----------------------------
CREATE INDEX `IDX_QRTZ_T_STATE` USING BTREE ON `QRTZ_TRIGGERS`( `SCHED_NAME`, `TRIGGER_STATE` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


-- CREATE TABLE "link_publish_student" ---------------------
-- CREATE TABLE "link_publish_student" -------------------------
CREATE TABLE `link_publish_student` ( 
	`id` BigInt( 20 ) AUTO_INCREMENT NOT NULL,
	`teacher_user_name` VarChar( 205 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '老师名',
	`teacher_user_id` VarChar( 145 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '老师主键',
	`student_user_name` VarChar( 205 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '学生名',
	`student_user_id` VarChar( 145 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '学生主键',
	`res_des` VarChar( 2000 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '发布资源任务描述',
	`res_type` Int( 11 ) NULL COMMENT '1:频道 1对多上课   2:单聊 1对1上课',
	`create_time` DateTime NULL COMMENT '创建时间',
	`category` VarChar( 20 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '技能类别。 1:计算机。2：英语',
	`keywords` VarChar( 400 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '技能关键字',
	`fee_type` Int( 11 ) NULL COMMENT '1:学生自愿。2:一次一元  3:自定义',
	`own_fee_desc` VarChar( 400 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '收费自定义',
	`channel_name` VarChar( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '频道名称',
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_bin
COMMENT '教师学生关联表'
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "link_publish_student" ---------------------
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


-- CREATE TABLE "sys_role_menu" ----------------------------
-- CREATE TABLE "sys_role_menu" --------------------------------
CREATE TABLE `sys_role_menu` ( 
	`id` BigInt( 20 ) AUTO_INCREMENT NOT NULL,
	`role_id` BigInt( 20 ) NULL COMMENT '角色ID',
	`menu_id` BigInt( 20 ) NULL COMMENT '菜单ID',
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT '角色与菜单对应关系'
ENGINE = InnoDB
AUTO_INCREMENT = 65;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "sys_role_menu" ----------------------------
INSERT INTO `sys_role_menu`(`id`,`role_id`,`menu_id`) VALUES ( '35', '1', '41' );
INSERT INTO `sys_role_menu`(`id`,`role_id`,`menu_id`) VALUES ( '36', '1', '42' );
INSERT INTO `sys_role_menu`(`id`,`role_id`,`menu_id`) VALUES ( '37', '1', '31' );
INSERT INTO `sys_role_menu`(`id`,`role_id`,`menu_id`) VALUES ( '38', '1', '32' );
INSERT INTO `sys_role_menu`(`id`,`role_id`,`menu_id`) VALUES ( '39', '1', '33' );
INSERT INTO `sys_role_menu`(`id`,`role_id`,`menu_id`) VALUES ( '40', '1', '34' );
INSERT INTO `sys_role_menu`(`id`,`role_id`,`menu_id`) VALUES ( '41', '1', '35' );
INSERT INTO `sys_role_menu`(`id`,`role_id`,`menu_id`) VALUES ( '42', '1', '36' );
INSERT INTO `sys_role_menu`(`id`,`role_id`,`menu_id`) VALUES ( '43', '1', '37' );
INSERT INTO `sys_role_menu`(`id`,`role_id`,`menu_id`) VALUES ( '44', '1', '38' );
INSERT INTO `sys_role_menu`(`id`,`role_id`,`menu_id`) VALUES ( '45', '1', '39' );
INSERT INTO `sys_role_menu`(`id`,`role_id`,`menu_id`) VALUES ( '46', '1', '40' );
INSERT INTO `sys_role_menu`(`id`,`role_id`,`menu_id`) VALUES ( '47', '2', '1' );
INSERT INTO `sys_role_menu`(`id`,`role_id`,`menu_id`) VALUES ( '48', '2', '2' );
INSERT INTO `sys_role_menu`(`id`,`role_id`,`menu_id`) VALUES ( '49', '2', '15' );
INSERT INTO `sys_role_menu`(`id`,`role_id`,`menu_id`) VALUES ( '50', '2', '16' );
INSERT INTO `sys_role_menu`(`id`,`role_id`,`menu_id`) VALUES ( '51', '2', '17' );
INSERT INTO `sys_role_menu`(`id`,`role_id`,`menu_id`) VALUES ( '52', '2', '18' );
INSERT INTO `sys_role_menu`(`id`,`role_id`,`menu_id`) VALUES ( '53', '2', '41' );
INSERT INTO `sys_role_menu`(`id`,`role_id`,`menu_id`) VALUES ( '54', '2', '42' );
INSERT INTO `sys_role_menu`(`id`,`role_id`,`menu_id`) VALUES ( '55', '2', '31' );
INSERT INTO `sys_role_menu`(`id`,`role_id`,`menu_id`) VALUES ( '56', '2', '32' );
INSERT INTO `sys_role_menu`(`id`,`role_id`,`menu_id`) VALUES ( '57', '2', '33' );
INSERT INTO `sys_role_menu`(`id`,`role_id`,`menu_id`) VALUES ( '58', '2', '34' );
INSERT INTO `sys_role_menu`(`id`,`role_id`,`menu_id`) VALUES ( '59', '2', '35' );
INSERT INTO `sys_role_menu`(`id`,`role_id`,`menu_id`) VALUES ( '60', '2', '36' );
INSERT INTO `sys_role_menu`(`id`,`role_id`,`menu_id`) VALUES ( '61', '2', '37' );
INSERT INTO `sys_role_menu`(`id`,`role_id`,`menu_id`) VALUES ( '62', '2', '38' );
INSERT INTO `sys_role_menu`(`id`,`role_id`,`menu_id`) VALUES ( '63', '2', '39' );
INSERT INTO `sys_role_menu`(`id`,`role_id`,`menu_id`) VALUES ( '64', '2', '40' );
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


