# --------------------------------------------------------
# Host:                         phoenixooo.cafe24.com
# Server version:               5.5.17-log
# Server OS:                    Linux
# HeidiSQL version:             6.0.0.3603
# Date/time:                    2016-08-16 10:29:21
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

# Dumping database structure for phoenixooo
CREATE DATABASE IF NOT EXISTS `phoenixooo` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `phoenixooo`;


# Dumping structure for table phoenixooo.COM_ARTICLE_RECOMMEND_TB
CREATE TABLE IF NOT EXISTS `COM_ARTICLE_RECOMMEND_TB` (
  `ARTICLE_RECOMMEND_CD` varchar(45) NOT NULL,
  `USER_CD` varchar(45) NOT NULL,
  `ARTICLE_CD` varchar(45) NOT NULL,
  `ARTICLE_RECOMMEND_DT` datetime NOT NULL,
  `ARTICLE_RECOMMEND_IP` varchar(45) NOT NULL,
  PRIMARY KEY (`ARTICLE_RECOMMEND_CD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='게시글추천\n\n';

# Dumping data for table phoenixooo.COM_ARTICLE_RECOMMEND_TB: 3 rows
/*!40000 ALTER TABLE `COM_ARTICLE_RECOMMEND_TB` DISABLE KEYS */;
INSERT INTO `COM_ARTICLE_RECOMMEND_TB` (`ARTICLE_RECOMMEND_CD`, `USER_CD`, `ARTICLE_CD`, `ARTICLE_RECOMMEND_DT`, `ARTICLE_RECOMMEND_IP`) VALUES
	('COM_ARTICLE_RECOMMEND_1', 'COM_USER_77', 'COM_ARTICLE_3', '2016-07-22 14:51:50', '222.333.444.111'),
	('COM_ARTICLE_RECOMMEND_2', 'COM_USER_100', 'COM_ARTICLE_2', '2016-07-22 14:55:53', '555.444.333.222'),
	('COM_ARTICLE_RECOMMEND_3', 'COM_USER_45', 'COM_ARTICLE_2', '2016-07-22 14:56:04', '111.444.333.222');
/*!40000 ALTER TABLE `COM_ARTICLE_RECOMMEND_TB` ENABLE KEYS */;


# Dumping structure for table phoenixooo.COM_ARTICLE_TB
CREATE TABLE IF NOT EXISTS `COM_ARTICLE_TB` (
  `ARTICLE_CD` varchar(45) NOT NULL,
  `USER_CD` varchar(45) NOT NULL,
  `BOARDGROUP_CD` varchar(45) NOT NULL,
  `ARTICLE_NM` varchar(45) NOT NULL,
  `ARTICLE_CTT` text NOT NULL,
  `ARTICLE_DT` datetime NOT NULL,
  `ARTICLE_IP` varchar(45) NOT NULL,
  PRIMARY KEY (`ARTICLE_CD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='게시글\n\nARTICLE_DT\nARTICLE_IP\n';

# Dumping data for table phoenixooo.COM_ARTICLE_TB: 101 rows
/*!40000 ALTER TABLE `COM_ARTICLE_TB` DISABLE KEYS */;
INSERT INTO `COM_ARTICLE_TB` (`ARTICLE_CD`, `USER_CD`, `BOARDGROUP_CD`, `ARTICLE_NM`, `ARTICLE_CTT`, `ARTICLE_DT`, `ARTICLE_IP`) VALUES
	('COM_ARTICLE_40', 'COM_USER_4', 'COM_BOARDGROUP_3', '', '', '2016-08-10 12:29:52', '안되는건가?'),
	('COM_ARTICLE_41', 'COM_USER_4', 'COM_BOARDGROUP_3', 'sfd', 'dfsdfsdf', '2016-08-10 12:29:57', '안되는건가?'),
	('COM_ARTICLE_38', 'COM_USER_4', 'COM_BOARDGROUP_3', '한글sdfsdafasdfsdf', '내용 안바뀌는데', '2016-08-08 16:35:02', '안되는건가?'),
	('COM_ARTICLE_39', 'COM_USER_4', 'COM_BOARDGROUP_3', 'asdfasdfa', 'sdfasdfasdf', '2016-08-08 16:36:39', '안되는건가?'),
	('COM_ARTICLE_33', 'COM_USER_4', 'COM_BOARDGROUP_3', 'asdgadsgads', 'gadgadgag', '2016-08-02 15:55:25', '안되는건가?'),
	('COM_ARTICLE_34', 'COM_USER_4', 'COM_BOARDGROUP_3', 'adfgadf', 'gadfgadg', '2016-08-02 17:36:42', '안되는건가?'),
	('COM_ARTICLE_32', 'COM_USER_4', 'COM_BOARDGROUP_3', 'asdgadsgads', 'gadgadgag', '2016-08-02 15:54:57', '안되는건가?'),
	('COM_ARTICLE_31', 'COM_USER_4', 'COM_BOARDGROUP_3', 'asdgadsgads', 'gadgadgag', '2016-08-02 15:54:53', '안되는건가?'),
	('COM_ARTICLE_30', 'COM_USER_4', 'COM_BOARDGROUP_3', 'asdgadsgads', 'gadgadgag', '2016-08-02 15:51:08', '안되는건가?'),
	('COM_ARTICLE_27', 'COM_USER_4', 'COM_BOARDGROUP_3', 'asdgadsg', 'adsgadgagds', '2016-08-02 15:45:41', '안되는건가?'),
	('COM_ARTICLE_28', 'COM_USER_4', 'COM_BOARDGROUP_3', 'adfgadfgads', 'gasdgasdg', '2016-08-02 15:46:25', '안되는건가?'),
	('COM_ARTICLE_26', 'COM_USER_4', 'COM_BOARDGROUP_3', 'adfgadga', 'dsgadsgadsg', '2016-08-02 15:43:09', '안되는건가?'),
	('COM_ARTICLE_29', 'COM_USER_4', 'COM_BOARDGROUP_3', 'jasdbfljad', 'adgadsgadsg', '2016-08-02 15:49:59', '안되는건가?'),
	('COM_ARTICLE_25', 'COM_USER_4', 'COM_BOARDGROUP_3', 'asdkjfhakjsh', 'adskjalkjdgh', '2016-08-02 15:41:28', '안되는건가?'),
	('COM_ARTICLE_22', 'COM_USER_4', 'COM_BOARDGROUP_3', 'asdfasdfga', 'sdfasdfadsf', '2016-08-02 15:26:45', '안되는건가?'),
	('COM_ARTICLE_24', 'COM_USER_4', 'COM_BOARDGROUP_3', 'adfgadg', 'adgasdgasdg', '2016-08-02 15:41:07', '안되는건가?'),
	('COM_ARTICLE_21', 'COM_USER_4', 'COM_BOARDGROUP_3', 'adfgasdga', 'sdfasdfasdf', '2016-08-02 15:19:31', '안되는건가?'),
	('COM_ARTICLE_23', 'COM_USER_4', 'COM_BOARDGROUP_3', 'sdfgasdgasd', 'fasdfasdf', '2016-08-02 15:28:16', '안되는건가?'),
	('COM_ARTICLE_20', 'COM_USER_4', 'COM_BOARDGROUP_3', 'adfgadfg', 'adgasdgas', '2016-08-02 15:18:24', '안되는건가?'),
	('COM_ARTICLE_19', 'COM_USER_4', 'COM_BOARDGROUP_3', 'ㅁㅇㅀㅁㅇㄶㅁ', 'ㅇㄶㅁㄴㅇㅎㅁㄴㅇㅎ', '2016-08-02 15:16:10', '안되는건가?'),
	('COM_ARTICLE_18', 'COM_USER_4', 'COM_BOARDGROUP_3', 'ㅁㄴㅇㅎㅁㄴㅇ', 'ㅁㄴㅇㅁㄴㅇㅎ', '2016-08-02 15:15:45', '안되는건가?'),
	('COM_ARTICLE_17', 'COM_USER_4', 'COM_BOARDGROUP_3', 'ㅁㄴㅇㅎㅁㄴㅇㅎㅁㄴ', 'ㅇㅎㅁㄴㅇㅁㄴㅇㅎㅁㅇㄶ', '2016-08-02 15:15:36', '안되는건가?'),
	('COM_ARTICLE_16', 'COM_USER_4', 'COM_BOARDGROUP_3', 'ㅁㅇㅀㅁㅇㅀ', 'ㅁㅇㄶㅁㅇㅎㅁㅇㅎ', '2016-08-02 15:12:59', '안되는건가?'),
	('COM_ARTICLE_15', 'COM_USER_4', 'COM_BOARDGROUP_3', 'ㅁㄴㅇㅎㅁㄴㅇㅎㅁㄴ', 'ㅇㅎㅁㄴㅇㅎㅁㄴㅇㅎ', '2016-08-02 15:06:10', '안되는건가?'),
	('COM_ARTICLE_14', 'COM_USER_4', 'COM_BOARDGROUP_3', 'ㅁㄴㅇㅎㅁㅇㅀ', 'ㄹ옴ㅇㅀㅁㅇㄶㅁㅇㄶ', '2016-08-02 15:04:54', '안되는건가?'),
	('COM_ARTICLE_13', 'COM_USER_4', 'COM_BOARDGROUP_3', 'ㅁㅇㄹㄶㅁㅇㅀㅁㅇ', 'ㅎㅁㅇㄶㅁㄴㅇㅎ', '2016-08-02 14:58:59', '안되는건가?'),
	('COM_ARTICLE_12', 'COM_USER_4', 'COM_BOARDGROUP_3', 'ㅁㅇㅀㅁㅇㄹ', 'ㅎㅁㄴㅇㅎㅁㄴㅇ', '2016-08-02 14:57:30', '안되는건가?'),
	('COM_ARTICLE_11', 'COM_USER_4', 'COM_BOARDGROUP_3', '이ㅏㅓ민아런', 'ㅇ미ㅏㄴ러ㅣㅁ나얼', '2016-08-02 14:55:34', '안되는건가?'),
	('COM_ARTICLE_36', 'COM_USER_4', 'COM_BOARDGROUP_3', '글써지냐', 'ㅇㄴㅁㅇㄻㄴㅇ', '2016-08-08 10:41:11', '안되는건가?'),
	('COM_ARTICLE_10', 'COM_USER_4', 'COM_BOARDGROUP_3', '이제 오토된다', '야호', '2016-08-02 14:55:12', '안되는건가?'),
	('COM_ARTICLE_37', 'COM_USER_4', 'COM_BOARDGROUP_3', '머리를 어떻게 해야될지 모르겟어요', '내 머리좀 어떻게 해주세요', '2016-08-08 11:06:29', '안되는건가?'),
	('COM_ARTICLE_35', 'COM_USER_4', 'COM_BOARDGROUP_3', '1', '1', '2016-08-05 13:39:38', '안되는건가?'),
	('COM_ARTICLE_7', 'COM_USER_4', 'COM_BOARDGROUP_2', '한글sdfsdafasdfsdf', '내용 안바뀌는데', '2016-08-02 14:47:56', '안되는건가?'),
	('COM_ARTICLE_4', 'COM_USER_4', 'COM_BOARDGROUP_4', 'ㅁㄴㅇㄻㄴㅇㄻㄴㅇ', 'ㅁㄴㅇㄻㄴㅇㄻㄴㅇㄹ', '2016-08-02 14:44:45', '안되는건가?'),
	('COM_ARTICLE_5', 'COM_USER_4', 'COM_BOARDGROUP_1', 'ㅁㅇㄴㄻㄴㅇㄹ', 'ㅁㄴㅇㄻㄴㅇㄻㄴㅇㄹ', '2016-08-02 14:47:08', '안되는건가?'),
	('COM_ARTICLE_2', 'COM_USER_4', 'COM_BOARDGROUP_3', 'asdGASDF', 'ADFASDFASDF', '2016-08-02 14:23:02', '안되는건가?'),
	('COM_ARTICLE_3', 'COM_USER_4', 'COM_BOARDGROUP_3', 'asdfhbasmdnh', 'asdlkjfhaksdj', '2016-08-02 14:36:20', '안되는건가?'),
	('COM_ARTICLE_1', 'COM_USER_1', 'COM_BOARDGROUP_3', '아아아아아', '아아아아아', '2016-08-02 14:23:02', '111.111.111'),
	('COM_ARTICLE_42', 'COM_USER_4', 'COM_BOARDGROUP_3', 'sfd', 'dfsdfsdfdsff', '2016-08-10 12:30:13', '안되는건가?'),
	('COM_ARTICLE_43', 'COM_USER_3', 'COM_BOARDGROUP_3', 'test', 'test', '2016-08-10 15:20:31', 'test'),
	('COM_ARTICLE_44', 'COM_USER_4', 'COM_BOARDGROUP_3', '업로드 테?', 'ㅡㅇㄹㅇㄴㄹㄴㄹ', '2016-08-10 16:52:09', '안되는건가?'),
	('COM_ARTICLE_45', 'COM_USER_4', 'COM_BOARDGROUP_3', 'ㅇ나ㅣ런이ㅏ러ㅣㅏ', '란이런아ㅣ런ㅇ라ㅣㄴㅇ', '2016-08-10 16:52:23', '안되는건가?'),
	('COM_ARTICLE_46', 'COM_USER_4', 'COM_BOARDGROUP_3', '헤헷', '앙', '2016-08-10 16:55:38', '안되는건가?'),
	('COM_ARTICLE_47', 'COM_USER_4', 'COM_BOARDGROUP_3', 'sdfasdf', 'asdfasdf', '2016-08-10 16:58:13', '안되는건가?'),
	('COM_ARTICLE_48', 'COM_USER_4', 'COM_BOARDGROUP_3', 'ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ', 'ㅇㄴㄹㄹㅇㄴㄹ', '2016-08-10 16:59:48', '안되는건가?'),
	('COM_ARTICLE_49', 'COM_USER_4', 'COM_BOARDGROUP_3', '펭귄찡', '앙 금모띠', '2016-08-10 17:00:19', '안되는건가?'),
	('COM_ARTICLE_50', 'COM_USER_4', 'COM_BOARDGROUP_3', '튤립찡', 'ㅇㄴㄹㅇㄴㄹㄴㅇㄹㅇㄴㄹㄴㅇㄹ', '2016-08-10 17:04:18', '안되는건가?'),
	('COM_ARTICLE_51', 'COM_USER_4', 'COM_BOARDGROUP_3', '파일 2개 등록 테스트 수정ㅌㅅㅌ ㅇㅇㅇㅇ', '파일 2개 등록 테스트 입니다 ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ', '2016-08-11 10:21:42', '안되는건가?'),
	('COM_ARTICLE_52', 'COM_USER_4', 'COM_BOARDGROUP_3', '파일 2개 등록 테스트 수정ㅌㅅㅌ', '파일 2개 등록 테스트 입니다 ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ', '2016-08-11 10:25:08', '안되는건가?'),
	('COM_ARTICLE_53', 'COM_USER_4', 'COM_BOARDGROUP_3', '파일 2개 등록 테스트 수정ㅌㅅㅌ ㅇㅇㅇㅇ', '파일 2개 등록 테스트 입니다 ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ', '2016-08-11 10:26:56', '안되는건가?'),
	('COM_ARTICLE_54', 'COM_USER_4', 'COM_BOARDGROUP_3', '파일 2개 등록 테스트 수정ㅌㅅㅌ ㅇㅇㅇㅇ', '파일 2개 등록 테스트 입니다 ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ', '2016-08-11 10:35:28', '안되는건가?'),
	('COM_ARTICLE_55', 'COM_USER_4', 'COM_BOARDGROUP_1', '파일 2개 등록 테스트 수정ㅌㅅㅌ ㅇㅇㅇㅇ', '파일 2개 등록 테스트 입니다 ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ', '2016-08-11 10:36:51', '안되는건가?'),
	('COM_ARTICLE_56', 'CON_USER_4', 'COM_BOARDGROUP_2', '디자이너 파일 불러오기', '내용이다', '2016-08-11 10:36:51', '1234567'),
	('COM_ARTICLE_57', 'COM_USER_4', 'COM_BOARDGROUP_3', '디자이너 이미지 가져오기 진행중', 'ㄹㄴㅇㄹㄴㅇㄹ', '2016-08-11 11:58:44', '안되는건가?'),
	('COM_ARTICLE_58', 'COM_USER_4', 'COM_BOARDGROUP_3', '디자이너 글쓰기 테스트', 'ㄴㄴㄴ', '2016-08-11 12:02:08', '안되는건가?'),
	('COM_ARTICLE_59', 'COM_USER_4', 'COM_BOARDGROUP_3', '디자이너 등록 다시 확인 22', 'ㅇㄴㄹㄴㅇㄻㄴㄻㄹ', '2016-08-11 12:05:43', '안되는건가?'),
	('COM_ARTICLE_60', 'COM_USER_4', 'COM_BOARDGROUP_3', '세번째 테스트', 'ㄴㅇㄹㄴㅇㄻㄴ', '2016-08-11 12:08:51', '안되는건가?'),
	('COM_ARTICLE_61', 'COM_USER_4', 'COM_BOARDGROUP_3', '2222222222211번?', 'ㅇㄹㅇㄴㄹ', '2016-08-11 12:16:47', '안되는건가?'),
	('COM_ARTICLE_65', 'COM_USER_4', 'COM_BOARDGROUP_1', '테스트할려고 만든 내용', '테스트할려고 만든 내', '2016-08-11 14:16:24', '123456798'),
	('COM_ARTICLE_62', 'COM_USER_4', '테스트용문자열의나열', 'dㄴㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹ', 'ㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹ', '2016-08-11 13:47:58', '안되는건가?'),
	('COM_ARTICLE_63', 'COM_USER_4', 'COM_BOARDGROUP_1', '이거 진짜 되야된다 ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ', 'ㅇㄴㄹㄴㅇㄹ', '2016-08-11 13:49:20', '안되는건가?'),
	('COM_ARTICLE_64', 'COM_USER_4', 'COM_BOARDGROUP_1', '테스트할려고 만든 내용', '테스트할려고 만든 내', '2016-08-11 14:16:20', '123456798'),
	('COM_ARTICLE_66', 'COM_USER_4', 'COM_BOARDGROUP_1', '테스트할려고 만든 내용', '테스트할려고 만든 내', '2016-08-11 14:16:25', '123456798'),
	('COM_ARTICLE_67', 'COM_USER_4', 'COM_BOARDGROUP_1', '테스트할려고 만든 내용', '테스트할려고 만든 내', '2016-08-11 14:16:27', '123456798'),
	('COM_ARTICLE_68', 'COM_USER_4', 'COM_BOARDGROUP_1', '테스트할려고 만든 내용', '테스트할려고 만든 내', '2016-08-11 14:16:28', '123456798'),
	('COM_ARTICLE_69', 'COM_USER_4', 'COM_BOARDGROUP_1', '테스트할려고 만든 내용', '테스트할려고 만든 내', '2016-08-11 14:16:29', '123456798'),
	('COM_ARTICLE_70', 'COM_USER_4', 'COM_BOARDGROUP_1', '테스트할려고 만든 내용', '테스트할려고 만든 내', '2016-08-11 14:16:33', '123456798'),
	('COM_ARTICLE_71', 'COM_USER_4', 'COM_BOARDGROUP_1', '테스트할려고 만든 내용', '테스트할려고 만든 내', '2016-08-11 14:16:35', '123456798'),
	('COM_ARTICLE_72', 'COM_USER_4', 'COM_BOARDGROUP_1', '테스트할려고 만든 내용', '테스트할려고 만든 내', '2016-08-11 14:16:38', '123456798'),
	('COM_ARTICLE_73', 'COM_USER_4', 'COM_BOARDGROUP_1', '테스트할려고 만든 내용', '테스트할려고 만든 내', '2016-08-11 14:16:40', '123456798'),
	('COM_ARTICLE_74', 'COM_USER_4', 'COM_BOARDGROUP_1', '테스트할려고 만든 내용', '테스트할려고 만든 내', '2016-08-11 14:16:41', '123456798'),
	('COM_ARTICLE_75', 'COM_USER_4', 'COM_BOARDGROUP_1', '테스트할려고 만든 내용', '테스트할려고 만든 내', '2016-08-11 14:16:42', '123456798'),
	('COM_ARTICLE_76', 'COM_USER_4', 'COM_BOARDGROUP_1', '테스트할려고 만든 내용', '테스트할려고 만든 내', '2016-08-11 14:16:44', '123456798'),
	('COM_ARTICLE_77', 'COM_USER_4', 'COM_BOARDGROUP_1', '테스트할려고 만든 내용', '테스트할려고 만든 내', '2016-08-11 14:16:45', '123456798'),
	('COM_ARTICLE_78', 'COM_USER_4', 'COM_BOARDGROUP_1', '테스트할려고 만든 내용', '테스트할려고 만든 내', '2016-08-11 14:16:46', '123456798'),
	('COM_ARTICLE_79', 'COM_USER_4', 'COM_BOARDGROUP_1', '테스트 1', 'ㅇㄴㄹㅇㄴㄹ', '2016-08-11 15:17:07', '안되는건가?'),
	('COM_ARTICLE_80', 'COM_USER_4', 'COM_BOARDGROUP_1', '테스트2', 'ㅇㄹㄴㄹㅇㄴㄹㅇㄴㄹ', '2016-08-11 15:17:46', '안되는건가?'),
	('COM_ARTICLE_81', 'COM_USER_4', 'COM_BOARDGROUP_1', '테스트3', 'ㄴㅇㄹㅇㄴㅁㄹㄴㅁㅇㄹㄴㅇㅁㄹㄴㄹ', '2016-08-11 15:17:58', '안되는건가?'),
	('COM_ARTICLE_82', 'COM_USER_4', 'COM_BOARDGROUP_1', '테스트4', 'ㄴㅇㄹㄴㅇ', '2016-08-11 15:18:08', '안되는건가?'),
	('COM_ARTICLE_83', 'COM_USER_4', 'COM_BOARDGROUP_1', '테스트5', 'ㄹㄴㅇㄹㄴㅇㄹ', '2016-08-11 15:18:21', '안되는건가?'),
	('COM_ARTICLE_84', 'COM_USER_4', 'COM_BOARDGROUP_1', '테스트6', 'ㅇㄹㅇㄹㅇㄴㄹㅇㄴㄹ', '2016-08-11 15:18:32', '안되는건가?'),
	('COM_ARTICLE_85', 'COM_USER_4', 'COM_BOARDGROUP_1', '테스트7', 'ㄹㅇㄴㄹㄴㅇㄹㅇㄴㄹㅇㄴㄹ', '2016-08-11 15:18:43', '안되는건가?'),
	('COM_ARTICLE_86', 'COM_USER_4', 'COM_BOARDGROUP_1', '테스트8', 'ㄹㅇㄴㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹ', '2016-08-11 15:18:57', '안되는건가?'),
	('COM_ARTICLE_87', 'COM_USER_4', 'COM_BOARDGROUP_1', '테스트9', 'ㄹㅇㄴㄹㅇㄴㄹㄴㅇㄹ', '2016-08-11 15:19:13', '안되는건가?'),
	('COM_ARTICLE_88', 'COM_USER_4', 'COM_BOARDGROUP_1', '테스트10', 'ㅇㄴㄹㄴㅇㄹㅇㄴㄹ', '2016-08-11 15:19:25', '안되는건가?'),
	('COM_ARTICLE_89', 'COM_USER_4', 'COM_BOARDGROUP_1', '테스트11', 'ㄹㅇㅎㄹㅇㄶㄴㅇㅎㄴㅇㅎ', '2016-08-11 15:19:36', '안되는건가?'),
	('COM_ARTICLE_90', 'COM_USER_4', 'COM_BOARDGROUP_1', '11111111', 'ㅇㄴㄹㄴㅇㄹㄴ', '2016-08-11 15:27:31', '안되는건가?'),
	('COM_ARTICLE_91', 'COM_USER_4', 'COM_BOARDGROUP_1', '222222222222', '하하하', '2016-08-11 15:27:44', '안되는건가?'),
	('COM_ARTICLE_92', 'COM_USER_4', 'COM_BOARDGROUP_1', '333333333333333333333', '3333', '2016-08-11 15:28:38', '안되는건가?'),
	('COM_ARTICLE_93', 'COM_USER_4', 'COM_BOARDGROUP_1', '444444444', '4444444', '2016-08-11 15:28:54', '안되는건가?'),
	('COM_ARTICLE_94', 'COM_USER_4', 'COM_BOARDGROUP_1', '555555555555', '5555555555', '2016-08-11 15:29:07', '안되는건가?'),
	('COM_ARTICLE_95', 'COM_USER_4', 'COM_BOARDGROUP_1', '666666666666666', '666666666666666666666666666', '2016-08-11 15:29:17', '안되는건가?'),
	('COM_ARTICLE_96', 'COM_USER_4', 'COM_BOARDGROUP_1', '77777777777777', '777777777777777777777777777', '2016-08-11 15:29:29', '안되는건가?'),
	('COM_ARTICLE_97', 'COM_USER_4', 'COM_BOARDGROUP_1', '8888888888888', '888888888888888888', '2016-08-11 15:29:47', '안되는건가?'),
	('COM_ARTICLE_98', 'COM_USER_4', 'COM_BOARDGROUP_1', '9999999999999', '999999999999999999', '2016-08-11 15:29:59', '안되는건가?'),
	('COM_ARTICLE_99', 'COM_USER_4', 'COM_BOARDGROUP_1', '10101010101010', 'ㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹ', '2016-08-11 15:30:17', '안되는건가?'),
	('COM_ARTICLE_100', 'COM_USER_4', 'COM_BOARDGROUP_1', '현빈머리', '현빈머리를 해도\r\n얼굴이 현빈이 아니면 힘든머리', '2016-08-11 15:57:39', '안되는건가?'),
	('COM_ARTICLE_101', 'COM_USER_4', 'COM_BOARDGROUP_1', '서인영찡', '하?', '2016-08-11 16:22:44', '안되는건가?'),
	('COM_ARTICLE_102', 'COM_USER_4', 'COM_BOARDGROUP_1', '1234', '213', '2016-08-11 16:23:29', '안되는건가?'),
	('COM_ARTICLE_103', 'COM_USER_4', 'COM_BOARDGROUP_3', 'aaaaaaaaaaaaaaaaaaa', 'dsafaf', '2016-08-12 10:24:17', '안되는건가?'),
	('COM_ARTICLE_104', 'COM_USER_4', 'COM_BOARDGROUP_3', '신복기 바보', '신복기 바보신복기 바보신복기 바보신복기 바보신복기 바보신복기 바보신복기 바보신복기 바보신복기 바보', '2016-08-12 12:45:46', '안되는건가?');
/*!40000 ALTER TABLE `COM_ARTICLE_TB` ENABLE KEYS */;


# Dumping structure for table phoenixooo.COM_BOARDGROUP_TB
CREATE TABLE IF NOT EXISTS `COM_BOARDGROUP_TB` (
  `BOARDGROUP_CD` varchar(45) NOT NULL,
  `BOARDGROUP_NM` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`BOARDGROUP_CD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='게시글그룹';

# Dumping data for table phoenixooo.COM_BOARDGROUP_TB: 5 rows
/*!40000 ALTER TABLE `COM_BOARDGROUP_TB` DISABLE KEYS */;
INSERT INTO `COM_BOARDGROUP_TB` (`BOARDGROUP_CD`, `BOARDGROUP_NM`) VALUES
	('COM_BOARDGROUP_0', '관리페이지'),
	('COM_BOARDGROUP_1', '디자이너'),
	('COM_BOARDGROUP_2', '상담'),
	('COM_BOARDGROUP_3', '자유'),
	('COM_BOARDGROUP_4', '공지');
/*!40000 ALTER TABLE `COM_BOARDGROUP_TB` ENABLE KEYS */;


# Dumping structure for table phoenixooo.COM_COMMENT_RECOMMEND_TB
CREATE TABLE IF NOT EXISTS `COM_COMMENT_RECOMMEND_TB` (
  `COMMENT_RECOMMEND_CD` varchar(45) NOT NULL,
  `USER_CD` varchar(45) NOT NULL,
  `COMMENT_CD` varchar(45) NOT NULL,
  `COMMENT_RECOMMEND_DT` datetime NOT NULL,
  `COMMENT_RECOMMEND_IP` varchar(45) NOT NULL,
  PRIMARY KEY (`COMMENT_RECOMMEND_CD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='게시글댓글추천';

# Dumping data for table phoenixooo.COM_COMMENT_RECOMMEND_TB: 3 rows
/*!40000 ALTER TABLE `COM_COMMENT_RECOMMEND_TB` DISABLE KEYS */;
INSERT INTO `COM_COMMENT_RECOMMEND_TB` (`COMMENT_RECOMMEND_CD`, `USER_CD`, `COMMENT_CD`, `COMMENT_RECOMMEND_DT`, `COMMENT_RECOMMEND_IP`) VALUES
	('COMMENT_RECOMMEND_1', 'USER_1', 'COMMENT_1', '2016-07-22 14:49:42', '127.0.0.1'),
	('COMMENT_RECOMMEND_2', 'USER_2', 'COMMENT_2', '2016-07-22 14:49:53', '127.0.0.2'),
	('COMMENT_RECOMMEND_3', 'USER_3', 'COMMENT_3', '2016-07-22 14:50:02', '127.0.0.3');
/*!40000 ALTER TABLE `COM_COMMENT_RECOMMEND_TB` ENABLE KEYS */;


# Dumping structure for table phoenixooo.COM_COMMENT_TB
CREATE TABLE IF NOT EXISTS `COM_COMMENT_TB` (
  `COMMENT_CD` varchar(45) NOT NULL,
  `ARTICLE_CD` varchar(45) NOT NULL,
  `USER_CD` varchar(45) NOT NULL,
  `COMMENT_CTT` text NOT NULL,
  `COMMENT_DT` datetime NOT NULL,
  `COMMENT_IP` varchar(45) NOT NULL,
  PRIMARY KEY (`COMMENT_CD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='게시글댓글\n\n';

# Dumping data for table phoenixooo.COM_COMMENT_TB: 19 rows
/*!40000 ALTER TABLE `COM_COMMENT_TB` DISABLE KEYS */;
INSERT INTO `COM_COMMENT_TB` (`COMMENT_CD`, `ARTICLE_CD`, `USER_CD`, `COMMENT_CTT`, `COMMENT_DT`, `COMMENT_IP`) VALUES
	('COM_COMMENT_1', 'COM_ARTICLE_2', 'COM_USER_77', '김우빈 잘생겼다아!!', '2016-07-22 14:57:45', ''),
	('COM_COMMENT_2', 'COM_ARTICLE_3', 'COM_USER_50', '이 머리 얼굴 동그란 사람도 어울릴까요?', '2016-07-22 14:58:14', ''),
	('COM_COMMENT_3', 'COM_ARTICLE_2', 'COM_USER_45', '머리가 김우빈빨', '2016-07-22 14:58:49', ''),
	('COM_COMMENT_9', 'COM_ARTICLE_9', 'COM_USER_123', '고러치?', '2016-08-05 17:29:21', '123.456.789.456'),
	('COM_COMMENT_8', 'COM_ARTICLE_9', 'COM_USER_123', '잘되냐', '2016-08-05 17:29:16', '123.456.789.456'),
	('COM_COMMENT_5', 'COM_ARTICLE_6', 'COM_USER_123', '머리가 김우빈빨', '2016-07-22 14:58:49', '123.456.789.456'),
	('COM_COMMENT_7', 'COM_ARTICLE_6', 'COM_USER_123', 'ㅇㅇ', '2016-07-29 09:27:02', '123.456.789.456'),
	('COM_COMMENT_10', 'COM_ARTICLE_9', 'COM_USER_123', '하하하', '2016-08-05 17:29:24', '123.456.789.456'),
	('COM_COMMENT_11', 'COM_ARTICLE_9', 'COM_USER_123', '나이스?', '2016-08-05 17:29:28', '123.456.789.456'),
	('COM_COMMENT_12', 'COM_ARTICLE_7', 'COM_USER_123', '', '2016-08-08 11:52:38', '123.456.789.456'),
	('COM_COMMENT_13', 'COM_ARTICLE_7', 'COM_USER_123', '댓글 테스트', '2016-08-08 13:58:42', '123.456.789.456'),
	('COM_COMMENT_14', 'COM_ARTICLE_7', 'COM_USER_123', 'ㅇㄴㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹ', '2016-08-08 13:58:47', '123.456.789.456'),
	('COM_COMMENT_15', 'COM_ARTICLE_7', 'COM_USER_123', '왜 댓글이 위로 입력되냐 ㄴㅋㅋㅋㅋㅋㅋㅋ', '2016-08-08 13:59:00', '123.456.789.456'),
	('COM_COMMENT_16', 'COM_ARTICLE_39', 'COM_USER_123', 'dsfdsfsdf', '2016-08-09 15:39:15', '123.456.789.456'),
	('COM_COMMENT_17', 'COM_ARTICLE_39', 'COM_USER_123', 'ddddd', '2016-08-10 11:45:00', '123.456.789.456'),
	('COM_COMMENT_18', 'COM_ARTICLE_39', 'COM_USER_123', 'tewtewtewt', '2016-08-10 11:45:06', '123.456.789.456'),
	('COM_COMMENT_19', 'COM_ARTICLE_51', 'COM_USER_123', '댓글 등록 테스트', '2016-08-11 10:21:52', '123.456.789.456'),
	('COM_COMMENT_20', 'COM_ARTICLE_51', 'COM_USER_123', 'ㅇㄴㄹㄴㅇㄹㄴㅇㄹㅇㄴㄹㄹㄴㄹ', '2016-08-11 10:21:56', '123.456.789.456'),
	('COM_COMMENT_21', 'COM_ARTICLE_94', 'COM_USER_123', 'ㅎㅎ', '2016-08-11 16:29:30', '123.456.789.456');
/*!40000 ALTER TABLE `COM_COMMENT_TB` ENABLE KEYS */;


# Dumping structure for table phoenixooo.COM_COUNSEL_TB
CREATE TABLE IF NOT EXISTS `COM_COUNSEL_TB` (
  `COUNSEL_CD` varchar(45) NOT NULL,
  `USER_CD` varchar(45) NOT NULL,
  `ARTICLE_CD` varchar(45) NOT NULL,
  `SHOP_CD` varchar(45) NOT NULL,
  PRIMARY KEY (`COUNSEL_CD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='상담';

# Dumping data for table phoenixooo.COM_COUNSEL_TB: 3 rows
/*!40000 ALTER TABLE `COM_COUNSEL_TB` DISABLE KEYS */;
INSERT INTO `COM_COUNSEL_TB` (`COUNSEL_CD`, `USER_CD`, `ARTICLE_CD`, `SHOP_CD`) VALUES
	('COM_COUNSEL_1', 'COM_USER_1', 'COM_ARTICLE_1', 'CRM_SHOP_1'),
	('COM_COUNSEL_2', 'COM_USER_1', 'COM_ARTICLE_2', 'CRM_SHOP_1'),
	('COM_COUNSEL_3', 'COM_USER_2', 'COM_ARTICLE_3', 'CRM_SHOP_2');
/*!40000 ALTER TABLE `COM_COUNSEL_TB` ENABLE KEYS */;


# Dumping structure for table phoenixooo.COM_FILE_TB
CREATE TABLE IF NOT EXISTS `COM_FILE_TB` (
  `FILE_CD` varchar(45) NOT NULL,
  `ARTICLE_CD` varchar(45) NOT NULL,
  `FILE_PATH` varchar(150) NOT NULL,
  `FILE_NAME` varchar(45) NOT NULL,
  `RANDOM_NAME` varchar(45) NOT NULL,
  PRIMARY KEY (`FILE_CD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='게시글파일\nFILE_CD\nARTICLE_CD\nFILE_PATH\n';

# Dumping data for table phoenixooo.COM_FILE_TB: 62 rows
/*!40000 ALTER TABLE `COM_FILE_TB` DISABLE KEYS */;
INSERT INTO `COM_FILE_TB` (`FILE_CD`, `ARTICLE_CD`, `FILE_PATH`, `FILE_NAME`, `RANDOM_NAME`) VALUES
	('COM_FILE_11', 'COM_ARTICLE_30', '/resources/upload/HYOGHKZOXMYJLWREOMRU1956452855.jpg', 'Penguins.jpg', 'HYOGHKZOXMYJLWREOMRU1956452855'),
	('COM_FILE_10', 'COM_ARTICLE_30', '/resources/upload/TYKRREUDHGBEWVSXXPHR8444366784.jpg', 'Lighthouse.jpg', 'TYKRREUDHGBEWVSXXPHR8444366784'),
	('COM_FILE_9', 'COM_ARTICLE_30', '/resources/upload/TPLKETGTKWTWPBXWPUDR6778138176.jpg', 'Koala.jpg', 'TPLKETGTKWTWPBXWPUDR6778138176'),
	('COM_FILE_7', 'COM_ARTICLE_29', '/resources/upload/LZVQRPIGAGYRALIKITJG5441255622.jpg', 'Koala.jpg', 'LZVQRPIGAGYRALIKITJG5441255622'),
	('COM_FILE_5', 'COM_ARTICLE_26', '/resources/upload/EXGSCSAJXBZPOWURTQYR6562169658.jpg', 'Koala.jpg', 'EXGSCSAJXBZPOWURTQYR6562169658'),
	('COM_FILE_6', 'COM_ARTICLE_28', '/resources/upload/FYLLHJSTHCEYMNMIRPHA3992252856.jpg', 'Koala.jpg', 'FYLLHJSTHCEYMNMIRPHA3992252856'),
	('COM_FILE_4', 'COM_ARTICLE_25', '/resources/upload/RPVAICVJHMXWDPFDJAFL3155153552.', '', 'RPVAICVJHMXWDPFDJAFL3155153552'),
	('COM_FILE_3', 'COM_ARTICLE_24', '/resources/upload/WZVMRXTRNOWIVURRGMBL8497868298.jpg', 'Chrysanthemum.jpg', 'WZVMRXTRNOWIVURRGMBL8497868298'),
	('COM_FILE_1', 'COM_ARTICLE_2', '/resources/upload/JRQYYJOGCBKRJPIIAMER5993698836.jpg', 'Koala.jpg', 'JRQYYJOGCBKRJPIIAMER5993698836'),
	('COM_FILE_8', 'COM_ARTICLE_29', '/resources/upload/NIRYVZCNRGLWFPWXEJRB1575225991.jpg', 'Lighthouse.jpg', 'NIRYVZCNRGLWFPWXEJRB1575225991'),
	('COM_FILE_2', 'COM_ARTICLE_23', '/resources/upload/DVENEOCBMOCQVBOQRIDQ3611261179.', '', 'DVENEOCBMOCQVBOQRIDQ3611261179'),
	('COM_FILE_12', 'COM_ARTICLE_31', '/resources/upload/MRWOXIARZIMXHHUJFGWS1211584498.jpg', 'Koala.jpg', 'MRWOXIARZIMXHHUJFGWS1211584498'),
	('COM_FILE_13', 'COM_ARTICLE_31', '/resources/upload/HBTXDSOIJQCRLPWPPMXE3291799325.jpg', 'Lighthouse.jpg', 'HBTXDSOIJQCRLPWPPMXE3291799325'),
	('COM_FILE_14', 'COM_ARTICLE_31', '/resources/upload/VZUSSMWWHSEKQTFSVFZH4816255925.jpg', 'Penguins.jpg', 'VZUSSMWWHSEKQTFSVFZH4816255925'),
	('COM_FILE_15', 'COM_ARTICLE_32', '/resources/upload/SKBXFIBLFVPIDRDCVTPE2355539855.jpg', 'Koala.jpg', 'SKBXFIBLFVPIDRDCVTPE2355539855'),
	('COM_FILE_16', 'COM_ARTICLE_32', '/resources/upload/ZQRYUXJTLQAKPRXYKWSV8624283441.jpg', 'Lighthouse.jpg', 'ZQRYUXJTLQAKPRXYKWSV8624283441'),
	('COM_FILE_17', 'COM_ARTICLE_32', '/resources/upload/GVIHRTQAVGJVNGIBVCFD3728682583.jpg', 'Penguins.jpg', 'GVIHRTQAVGJVNGIBVCFD3728682583'),
	('COM_FILE_18', 'COM_ARTICLE_33', '/resources/upload/OCFVJYVRXRZBJWVGTLKW8214346698.jpg', 'Koala.jpg', 'OCFVJYVRXRZBJWVGTLKW8214346698'),
	('COM_FILE_19', 'COM_ARTICLE_33', '/resources/upload/QZYOOOTLFPXZDUIQVXWN2177712657.jpg', 'Lighthouse.jpg', 'QZYOOOTLFPXZDUIQVXWN2177712657'),
	('COM_FILE_20', 'COM_ARTICLE_33', '/resources/upload/DNNXAODIAAZVMFUPLJIK2147937638.jpg', 'Penguins.jpg', 'DNNXAODIAAZVMFUPLJIK2147937638'),
	('COM_FILE_21', 'COM_ARTICLE_34', '/resources/upload/UMKTDRKMFFFGVWJKICSE5119629497.jpg', 'Chrysanthemum.jpg', 'UMKTDRKMFFFGVWJKICSE5119629497'),
	('COM_FILE_22', 'COM_ARTICLE_39', '/resources/upload/KUBXLWYVUJUWWAGQFOCG5627455123.jpg', 'Chrysanthemum.jpg', 'KUBXLWYVUJUWWAGQFOCG5627455123'),
	('COM_FILE_23', 'COM_ARTICLE_40', '/resources/upload/KGNTUTVVNTGCVEKAQJGH3618713192.jpg', 'Lighthouse.jpg', 'KGNTUTVVNTGCVEKAQJGH3618713192'),
	('COM_FILE_24', 'COM_ARTICLE_50', '/resources/upload/SYJSVAABLTRVYUEGGYAT4165164263.jpg', 'Tulips.jpg', 'SYJSVAABLTRVYUEGGYAT4165164263'),
	('COM_FILE_25', 'COM_ARTICLE_51', '/resources/upload/BFBYDTQEGHMZIMGVWLBJ9755739543.jpg', 'Desert.jpg', 'BFBYDTQEGHMZIMGVWLBJ9755739543'),
	('COM_FILE_26', 'COM_ARTICLE_56', '/resources/upload/PWQNQEIZKKCCUDVGUPGM9683929147.jpg', 'Koala.jpg', 'PWQNQEIZKKCCUDVGUPGM9683929147'),
	('COM_FILE_27', 'COM_ARTICLE_57', '/resources/upload/QPDYWMSICXSKVLQLBDWU1228542371.jpg', 'Hydrangeas.jpg', 'QPDYWMSICXSKVLQLBDWU1228542371'),
	('COM_FILE_28', 'COM_ARTICLE_57', '/resources/upload/CPJRCHOVYGCZJYSMTPPH7226166821.jpg', 'Lighthouse.jpg', 'CPJRCHOVYGCZJYSMTPPH7226166821'),
	('COM_FILE_29', 'COM_ARTICLE_58', '/resources/upload/ZSBDGPOKTXTHMVVIDWIF5955658543.jpg', 'Tulips.jpg', 'ZSBDGPOKTXTHMVVIDWIF5955658543'),
	('COM_FILE_30', 'COM_ARTICLE_59', '/resources/upload/UXRTZYPRPTGBHGKSGCKF5491867323.jpg', 'Hydrangeas.jpg', 'UXRTZYPRPTGBHGKSGCKF5491867323'),
	('COM_FILE_31', 'COM_ARTICLE_60', '/resources/upload/SIVHUHOVHJOUUPEBYQEA4754742663.jpg', 'Tulips.jpg', 'SIVHUHOVHJOUUPEBYQEA4754742663'),
	('COM_FILE_32', 'COM_ARTICLE_61', '/resources/upload/RLNCMXQZPEQUNPLUXGBH8776617211.jpg', 'Hydrangeas.jpg', 'RLNCMXQZPEQUNPLUXGBH8776617211'),
	('COM_FILE_33', 'COM_ARTICLE_62', '/resources/upload/WNGHCUOFCKTSRQLMZUEV4574886831.jpg', 'Koala.jpg', 'WNGHCUOFCKTSRQLMZUEV4574886831'),
	('COM_FILE_34', 'COM_ARTICLE_62', '/resources/upload/DLFTBXJTMMHLIXXVNWKK4145756586.jpg', 'Hydrangeas.jpg', 'DLFTBXJTMMHLIXXVNWKK4145756586'),
	('COM_FILE_35', 'COM_ARTICLE_63', '/resources/upload/KLTBJCBPCOPLYLUHHKON6439385274.jpg', 'Hydrangeas.jpg', 'KLTBJCBPCOPLYLUHHKON6439385274'),
	('COM_FILE_36', 'COM_ARTICLE_66', '/resources/upload/EPFSSUTNBUGQTTTXUTRV8175152998.jpg', 'Penguins.jpg', 'EPFSSUTNBUGQTTTXUTRV8175152998'),
	('COM_FILE_37', 'COM_ARTICLE_62', '/resources/upload/SYHMMGJPLIPZUJKNJVRB5236331731.jpg', 'Desert.jpg', 'SYHMMGJPLIPZUJKNJVRB5236331731'),
	('COM_FILE_38', 'COM_ARTICLE_62', '/resources/upload/ALZUJMVGERFWQZBOLNBZ9564269548.jpg', 'Chrysanthemum.jpg', 'ALZUJMVGERFWQZBOLNBZ9564269548'),
	('COM_FILE_39', 'COM_ARTICLE_63', '/resources/upload/LFCTZEGRIRNOFAAKTLBB5817161549.jpg', 'Chrysanthemum.jpg', 'LFCTZEGRIRNOFAAKTLBB5817161549'),
	('COM_FILE_40', 'COM_ARTICLE_79', '/resources/upload/WYEHNEGNYTUPBLCZDDJV1752863743.jpg', 'Chrysanthemum.jpg', 'WYEHNEGNYTUPBLCZDDJV1752863743'),
	('COM_FILE_41', 'COM_ARTICLE_80', '/resources/upload/MFOWUKWVBUNJQBXPTNPD7329544762.jpg', 'Lighthouse.jpg', 'MFOWUKWVBUNJQBXPTNPD7329544762'),
	('COM_FILE_42', 'COM_ARTICLE_81', '/resources/upload/KSVHDZDMNDAWQBJOHUMN5164824896.jpg', 'Desert.jpg', 'KSVHDZDMNDAWQBJOHUMN5164824896'),
	('COM_FILE_43', 'COM_ARTICLE_82', '/resources/upload/WTVEGCVKUUARLGMYOJEI2914199216.jpg', 'Hydrangeas.jpg', 'WTVEGCVKUUARLGMYOJEI2914199216'),
	('COM_FILE_44', 'COM_ARTICLE_83', '/resources/upload/FQZANGMBNFSOPEXDKXVF4313941694.jpg', 'Koala.jpg', 'FQZANGMBNFSOPEXDKXVF4313941694'),
	('COM_FILE_45', 'COM_ARTICLE_84', '/resources/upload/EGHDYOWHEOLHQEUXPGEY5561912882.jpg', 'Tulips.jpg', 'EGHDYOWHEOLHQEUXPGEY5561912882'),
	('COM_FILE_46', 'COM_ARTICLE_85', '/resources/upload/GVRRFETSZSTIMMSCAQIJ9986646845.jpg', 'Penguins.jpg', 'GVRRFETSZSTIMMSCAQIJ9986646845'),
	('COM_FILE_47', 'COM_ARTICLE_86', '/resources/upload/MZBAENOLZGRZFAAMRCAQ5518977333.jpg', 'Jellyfish.jpg', 'MZBAENOLZGRZFAAMRCAQ5518977333'),
	('COM_FILE_48', 'COM_ARTICLE_87', '/resources/upload/GXLLXTNNAKOZDUSETNLJ8615115257.jpg', 'Chrysanthemum.jpg', 'GXLLXTNNAKOZDUSETNLJ8615115257'),
	('COM_FILE_49', 'COM_ARTICLE_88', '/resources/upload/ZRQQBDBMEUBYQNBJNXUV6547474136.jpg', 'Lighthouse.jpg', 'ZRQQBDBMEUBYQNBJNXUV6547474136'),
	('COM_FILE_50', 'COM_ARTICLE_89', '/resources/upload/TDAPHAZCFXKPOKOIRZOX4821341447.jpg', 'Desert.jpg', 'TDAPHAZCFXKPOKOIRZOX4821341447'),
	('COM_FILE_51', 'COM_ARTICLE_90', '/resources/upload/FHGJTSASVTDDCZEEUHQF2661528779.jpg', '62743_77160_3718.jpg', 'FHGJTSASVTDDCZEEUHQF2661528779'),
	('COM_FILE_52', 'COM_ARTICLE_91', '/resources/upload/GEMSFRWPJLSWQNZBHEOD1181912125.jpg', '343177_122539_3815.jpg', 'GEMSFRWPJLSWQNZBHEOD1181912125'),
	('COM_FILE_53', 'COM_ARTICLE_92', '/resources/upload/SGZGIBDKAJEXWLZIUAAQ7182778516.jpg', '352897_135881_5044.jpg', 'SGZGIBDKAJEXWLZIUAAQ7182778516'),
	('COM_FILE_54', 'COM_ARTICLE_93', '/resources/upload/XJZNMBNCHJBDDXXPSZFK9137152639.jpg', 'default.jpg', 'XJZNMBNCHJBDDXXPSZFK9137152639'),
	('COM_FILE_55', 'COM_ARTICLE_94', '/resources/upload/ROSBROWVVJVNLXBKEGFB2732849769.jpg', 'test09.jpg', 'ROSBROWVVJVNLXBKEGFB2732849769'),
	('COM_FILE_56', 'COM_ARTICLE_95', '/resources/upload/LRGYJPQXXBRQPAIMWNWD9737728535.jpg', 'test10.jpg', 'LRGYJPQXXBRQPAIMWNWD9737728535'),
	('COM_FILE_57', 'COM_ARTICLE_96', '/resources/upload/JAMVKFQIBBRZDVUTQCQN2785691113.jpg', '다운로드 (1).jpg', 'JAMVKFQIBBRZDVUTQCQN2785691113'),
	('COM_FILE_58', 'COM_ARTICLE_97', '/resources/upload/KBKARISDBIBTHBPBQCKK1391245294.jpg', '다운로드 (2).jpg', 'KBKARISDBIBTHBPBQCKK1391245294'),
	('COM_FILE_59', 'COM_ARTICLE_98', '/resources/upload/DTOTPNVBFUWMOEKDQTEU7969982798.jpg', '다운로드 (3).jpg', 'DTOTPNVBFUWMOEKDQTEU7969982798'),
	('COM_FILE_60', 'COM_ARTICLE_99', '/resources/upload/FVKSSRIQCRWCBHRWAUYY8849315742.jpg', '다운로드.jpg', 'FVKSSRIQCRWCBHRWAUYY8849315742'),
	('COM_FILE_61', 'COM_ARTICLE_100', '/resources/upload/ZEVYWIXJHNGCVZZVWAYT6478736694.jpg', '111.jpg', 'ZEVYWIXJHNGCVZZVWAYT6478736694'),
	('COM_FILE_62', 'COM_ARTICLE_101', '/resources/upload/CPGIWXAHAKWCPSSTNLCJ4912988547.jpg', '20160118003328_0.jpg', 'CPGIWXAHAKWCPSSTNLCJ4912988547');
/*!40000 ALTER TABLE `COM_FILE_TB` ENABLE KEYS */;


# Dumping structure for table phoenixooo.COM_HITS_TB
CREATE TABLE IF NOT EXISTS `COM_HITS_TB` (
  `HITS_CD` varchar(45) NOT NULL,
  `ARTICLE_CD` varchar(45) NOT NULL,
  `USER_CD` varchar(45) NOT NULL,
  `USER_GB` varchar(45) NOT NULL,
  `HITS_DT` datetime NOT NULL,
  `HITS_IP` varchar(45) NOT NULL,
  PRIMARY KEY (`HITS_CD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='게시글조회\r\n';

# Dumping data for table phoenixooo.COM_HITS_TB: 3 rows
/*!40000 ALTER TABLE `COM_HITS_TB` DISABLE KEYS */;
INSERT INTO `COM_HITS_TB` (`HITS_CD`, `ARTICLE_CD`, `USER_CD`, `USER_GB`, `HITS_DT`, `HITS_IP`) VALUES
	('COM_HITS_1', 'COM_ARTICLE_2', 'COM_USER_35', '회원', '2016-07-22 14:48:45', '123.123.123.123'),
	('COM_HITS_2', 'COM_ARTICLE_2', 'COM_USER_50', '회원', '2016-07-22 14:49:41', '123.123.222.111'),
	('COM_HITS_3', 'COM_ARTICLE_3', 'NOT_USER', '비회원', '2016-07-22 14:50:00', '555.123.222.111');
/*!40000 ALTER TABLE `COM_HITS_TB` ENABLE KEYS */;


# Dumping structure for table phoenixooo.COM_ORDER_TB
CREATE TABLE IF NOT EXISTS `COM_ORDER_TB` (
  `SW_ORDER_CD` varchar(45) NOT NULL,
  `RECEIVE_USER_CD` varchar(45) NOT NULL,
  `ORDER_USER_CD` varchar(45) NOT NULL,
  `SHOP_CD` varchar(45) NOT NULL,
  `SW_CD` varchar(45) NOT NULL,
  `ORDER_DT` datetime NOT NULL,
  PRIMARY KEY (`SW_ORDER_CD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='SW상품주문내역';

# Dumping data for table phoenixooo.COM_ORDER_TB: 6 rows
/*!40000 ALTER TABLE `COM_ORDER_TB` DISABLE KEYS */;
INSERT INTO `COM_ORDER_TB` (`SW_ORDER_CD`, `RECEIVE_USER_CD`, `ORDER_USER_CD`, `SHOP_CD`, `SW_CD`, `ORDER_DT`) VALUES
	('COM_ORDER_1', 'COM_USER_1', 'COM_USER_5', 'CRM_SHOP_1', 'COM_SW_1', '2016-07-22 11:31:54'),
	('COM_ORDER_2', 'COM_USER_1', 'COM_USER_6', 'CRM_SHOP_2', 'COM_SW_1', '2016-07-22 11:34:26'),
	('COM_ORDER_3', 'COM_USER_2', 'COM_USER_6', 'CRM_SHOP_3', 'COM_SW_3', '2016-07-22 11:34:41'),
	('COM_ORDER_4', 'COM_USER_9', 'COM_USER_4', 'CRM_SHOP_4', 'COM_SW_4', '2016-07-22 11:34:41'),
	('COM_ORDER_5', 'COM_USER_2', 'COM_USER_4', 'CRM_SHOP_2', 'COM_SW_1', '2016-07-22 11:31:54'),
	('COM_ORDER_6', 'COM_USER_1', 'COM_USER_4', 'CRM_SHOP_3', 'COM_SW_3', '2016-07-22 11:34:26');
/*!40000 ALTER TABLE `COM_ORDER_TB` ENABLE KEYS */;


# Dumping structure for table phoenixooo.COM_PAYMENT_TB
CREATE TABLE IF NOT EXISTS `COM_PAYMENT_TB` (
  `PAYMENT_CD` varchar(45) NOT NULL,
  `ORDER_CD` varchar(45) NOT NULL,
  `USER_CD` varchar(45) NOT NULL,
  `SHOP_CD` varchar(45) NOT NULL,
  `SW_CD` varchar(45) NOT NULL,
  `SW_WON` int(11) NOT NULL,
  `SW_PAYMENT_OPTION_NM` varchar(45) NOT NULL,
  `SW_PAYMENT_DT` datetime NOT NULL,
  `SW_STARTING_SERVICE_DT` date NOT NULL,
  `SW_ENDING_SERVICE_DT` date NOT NULL,
  `SW_SERVICE_ST` varchar(45) NOT NULL,
  PRIMARY KEY (`PAYMENT_CD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='SW결제내역';

# Dumping data for table phoenixooo.COM_PAYMENT_TB: 5 rows
/*!40000 ALTER TABLE `COM_PAYMENT_TB` DISABLE KEYS */;
INSERT INTO `COM_PAYMENT_TB` (`PAYMENT_CD`, `ORDER_CD`, `USER_CD`, `SHOP_CD`, `SW_CD`, `SW_WON`, `SW_PAYMENT_OPTION_NM`, `SW_PAYMENT_DT`, `SW_STARTING_SERVICE_DT`, `SW_ENDING_SERVICE_DT`, `SW_SERVICE_ST`) VALUES
	('COM_PAYMENT_1', 'COM_ORDER_1', 'COM_USER_5', 'CRM_SHOP_1', 'COM_SW_1', 9900, '카드', '2016-07-22 11:45:20', '2016-07-22', '2016-08-21', '정상'),
	('COM_PAYMENT_4', 'COM_ORDER_4', 'COM_USER_4', 'CRM_SHOP_4', 'COM_SW_4', 59400, '현금', '2016-07-22 11:45:20', '2016-07-22', '2016-08-21', ''),
	('COM_PAYMENT_2', 'COM_ORDER_2', 'COM_USER_6', 'CRM_SHOP_2', 'COM_SW_1', 9900, '현금', '2016-07-22 11:46:51', '2016-07-22', '2016-08-21', '정상'),
	('COM_PAYMENT_3', 'COM_ORDER_3', 'COM_USER_6', 'CRM_SHOP_3', 'COM_SW_3', 59400, '카드', '2016-07-22 11:50:58', '2016-07-22', '2017-01-21', '정상'),
	('COM_PAYMENT_5', 'COM_ORDER_5', 'COM_USER_4', 'CRM_SHOP_2', 'COM_SW_1', 9900, '카드', '2016-07-22 11:45:20', '2016-07-22', '2017-01-21', '');
/*!40000 ALTER TABLE `COM_PAYMENT_TB` ENABLE KEYS */;


# Dumping structure for table phoenixooo.COM_REPAYMENT_COMPLETE_TB
CREATE TABLE IF NOT EXISTS `COM_REPAYMENT_COMPLETE_TB` (
  `REPAYMENT_COMPLETE_CD` varchar(45) NOT NULL,
  `REPAYMENT_REQUEST_CD` varchar(45) NOT NULL,
  `PAYMENT_CD` varchar(45) NOT NULL,
  `USER_CD` varchar(45) NOT NULL,
  `SHOP_CD` varchar(45) NOT NULL,
  `REPAYMENT_WON` int(11) NOT NULL,
  `REPAYMENT_DT` datetime NOT NULL,
  PRIMARY KEY (`REPAYMENT_COMPLETE_CD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='SW환불처리완료';

# Dumping data for table phoenixooo.COM_REPAYMENT_COMPLETE_TB: 3 rows
/*!40000 ALTER TABLE `COM_REPAYMENT_COMPLETE_TB` DISABLE KEYS */;
INSERT INTO `COM_REPAYMENT_COMPLETE_TB` (`REPAYMENT_COMPLETE_CD`, `REPAYMENT_REQUEST_CD`, `PAYMENT_CD`, `USER_CD`, `SHOP_CD`, `REPAYMENT_WON`, `REPAYMENT_DT`) VALUES
	('COM_REPAYMENT_COMPLETE_1', 'COM_REPAYMENT_REQUEST_1', 'COM_PAYMENT_1', 'COM_USER_5', 'CRM_SHOP_1', 7000, '2016-07-22 13:53:55'),
	('COM_REPAYMENT_COMPLETE_2', 'COM_REPAYMENT_REQUEST_2', 'COM_PAYMENT_2', 'COM_USER_6', 'CRM_SHOP_2', 3000, '2016-07-22 13:56:05'),
	('COM_REPAYMENT_COMPLETE_3', 'COM_REPAYMENT_REQUEST_3', 'COM_PAYMENT_3', 'COM_USER_6', 'CRM_SHOP_3', 1500, '2016-07-23 09:23:11');
/*!40000 ALTER TABLE `COM_REPAYMENT_COMPLETE_TB` ENABLE KEYS */;


# Dumping structure for table phoenixooo.COM_REPAYMENT_REQUEST_TB
CREATE TABLE IF NOT EXISTS `COM_REPAYMENT_REQUEST_TB` (
  `REPAYMENT_REQUEST_CD` varchar(45) NOT NULL,
  `PAYMENT_CD` varchar(45) NOT NULL,
  `USER_SYSTEM_CD` varchar(45) DEFAULT NULL,
  `USER_CD` varchar(45) NOT NULL,
  `SHOP_CD` varchar(45) NOT NULL,
  `SW_CD` varchar(45) NOT NULL,
  `REPAYMENT_REQUEST_WON` int(11) NOT NULL,
  `REPAYMENT_REQUEST_DT` datetime NOT NULL,
  `REPAYMENT_PERMISSION_DT` datetime DEFAULT NULL,
  `REPAYMENT_BANK_NM` varchar(50) NOT NULL,
  `REPAYMENT_ACCOUNT_NO` varchar(50) NOT NULL,
  PRIMARY KEY (`REPAYMENT_REQUEST_CD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='환불신청금액계산';

# Dumping data for table phoenixooo.COM_REPAYMENT_REQUEST_TB: 3 rows
/*!40000 ALTER TABLE `COM_REPAYMENT_REQUEST_TB` DISABLE KEYS */;
INSERT INTO `COM_REPAYMENT_REQUEST_TB` (`REPAYMENT_REQUEST_CD`, `PAYMENT_CD`, `USER_SYSTEM_CD`, `USER_CD`, `SHOP_CD`, `SW_CD`, `REPAYMENT_REQUEST_WON`, `REPAYMENT_REQUEST_DT`, `REPAYMENT_PERMISSION_DT`, `REPAYMENT_BANK_NM`, `REPAYMENT_ACCOUNT_NO`) VALUES
	('COM_REPAYMENT_REQUEST_1', 'COM_PAYMENT_1', 'COM_USER_1', 'COM_USER_5', 'CRM_SHOP_1', 'COM_SW_1', 7000, '2016-07-22 12:35:57', '2016-07-22 13:35:22', '신한', '40073902271023'),
	('COM_REPAYMENT_REQUEST_2', 'COM_PAYMENT_2', 'COM_USER_2', 'COM_USER_6', 'CRM_SHOP_2', 'COM_SW_1', 3000, '2016-07-22 12:38:03', '2016-07-22 14:43:11', '우리', '1002936517321'),
	('COM_REPAYMENT_REQUEST_3', 'COM_PAYMENT_3', 'COM_USER_3', 'COM_USER_6', 'CRM_SHOP_3', 'COM_SW_3', 1500, '2016-07-22 12:39:07', '2016-07-22 15:13:05', '국민', '40073902271023');
/*!40000 ALTER TABLE `COM_REPAYMENT_REQUEST_TB` ENABLE KEYS */;


# Dumping structure for table phoenixooo.COM_SW_TB
CREATE TABLE IF NOT EXISTS `COM_SW_TB` (
  `SW_CD` varchar(45) NOT NULL,
  `SW_NM` varchar(45) NOT NULL,
  `SW_WON` int(11) NOT NULL,
  `SW_TERM` varchar(45) NOT NULL,
  PRIMARY KEY (`SW_CD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='SW상품';

# Dumping data for table phoenixooo.COM_SW_TB: 5 rows
/*!40000 ALTER TABLE `COM_SW_TB` DISABLE KEYS */;
INSERT INTO `COM_SW_TB` (`SW_CD`, `SW_NM`, `SW_WON`, `SW_TERM`) VALUES
	('COM_SW_1', '1개월패키지', 9900, '30'),
	('COM_SW_3', '3개월패키지', 29700, '90'),
	('COM_SW_4', '6개월패키지', 59400, '180'),
	('COM_SW_5', '12개월패키지', 110000, '365'),
	('COM_SW_2', '정기결제', 9000, '30');
/*!40000 ALTER TABLE `COM_SW_TB` ENABLE KEYS */;


# Dumping structure for table phoenixooo.COM_TAG_TB
CREATE TABLE IF NOT EXISTS `COM_TAG_TB` (
  `TAG_CD` varchar(45) NOT NULL,
  `ARTICLE_CD` varchar(45) NOT NULL,
  `TAG_NM` varchar(45) NOT NULL,
  PRIMARY KEY (`TAG_CD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='태그';

# Dumping data for table phoenixooo.COM_TAG_TB: 3 rows
/*!40000 ALTER TABLE `COM_TAG_TB` DISABLE KEYS */;
INSERT INTO `COM_TAG_TB` (`TAG_CD`, `ARTICLE_CD`, `TAG_NM`) VALUES
	('COM_TAG_1', 'COM_ARTICLE_1', '수지'),
	('COM_TAG_2', 'COM_ARTICLE_2', '볼륨매직'),
	('COM_TAG_3', 'COM_ARTICLE_3', '탈색');
/*!40000 ALTER TABLE `COM_TAG_TB` ENABLE KEYS */;


# Dumping structure for table phoenixooo.COM_USER_TB
CREATE TABLE IF NOT EXISTS `COM_USER_TB` (
  `USER_CD` varchar(45) NOT NULL,
  `USER_GROUP_NM` varchar(45) NOT NULL,
  `USER_NM` varchar(45) NOT NULL,
  `USER_NICK_NM` varchar(45) NOT NULL,
  `USER_ID` varchar(45) NOT NULL,
  `USER_PW` varchar(45) NOT NULL,
  `USER_SEX_FL` int(11) NOT NULL,
  `USER_ANNIVERSARY_DT` date DEFAULT NULL,
  `USER_BIRTH_DT` date DEFAULT NULL,
  `USER_ADDR` varchar(45) DEFAULT NULL,
  `USER_POST_NO` varchar(50) DEFAULT NULL,
  `USER_EMAIL_ADDR` varchar(45) NOT NULL,
  `USER_JOIN_DT` datetime NOT NULL,
  `USER_SHOP_CD` varchar(50) DEFAULT NULL,
  `USER_PHONE_NO` varchar(20) DEFAULT NULL,
  `USER_CELLPHONE_NO` varchar(20) DEFAULT NULL,
  `USER_INTRODUCE_CTT` text,
  PRIMARY KEY (`USER_CD`),
  UNIQUE KEY `USER_ID` (`USER_ID`),
  UNIQUE KEY `USER_NICK_NM` (`USER_NICK_NM`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='기본회원테이블 / EMAIL 유니크처리하기';

# Dumping data for table phoenixooo.COM_USER_TB: 37 rows
/*!40000 ALTER TABLE `COM_USER_TB` DISABLE KEYS */;
INSERT INTO `COM_USER_TB` (`USER_CD`, `USER_GROUP_NM`, `USER_NM`, `USER_NICK_NM`, `USER_ID`, `USER_PW`, `USER_SEX_FL`, `USER_ANNIVERSARY_DT`, `USER_BIRTH_DT`, `USER_ADDR`, `USER_POST_NO`, `USER_EMAIL_ADDR`, `USER_JOIN_DT`, `USER_SHOP_CD`, `USER_PHONE_NO`, `USER_CELLPHONE_NO`, `USER_INTRODUCE_CTT`) VALUES
	('COM_USER_1', '관리자', '이승주', '관리자1', 'asdf', 'asdf', 1, '0000-01-01', '0000-07-30', '호성동', '00000012345', 'sj@mail.com', '2016-07-22 14:19:50', 'CRM_SHOP_1', '0631231234', '01012341234', '관리자입니다.'),
	('COM_USER_2', '관리자', '강재욱', '관리자2', 'asdf1', 'asdf1', 0, '0000-01-01', '0000-01-01', '삼천동', '00000012345', 'jw@mail.com', '2016-07-22 14:21:21', 'CRM_SHOP_1', '0631231234', '01012341234', '관리자2입니다.'),
	('COM_USER_3', '미용실원장', '신복기', '원장님1', '1234', '1234', 0, '0000-01-08', '2016-07-08', '서신동', '00000023456', 'bk@mail.com', '2016-07-26 10:10:36', 'CRM_SHOP_2', '01095959695', '0105165145', '헤헷 노 너'),
	('COM_USER_4', '회원', '차이수', 'Flow', '111', '111', 1, '2016-07-28', '2016-07-28', '1동', '00000000555', 'aranlgfm@gmail.com', '2016-07-26 17:07:51', 'CRM_SHOP_1', '111222333', '111222333', '(NULL)'),
	('COM_USER_5', '디자이너', '김스트', '테스트님', '222', '222', 0, '2016-07-28', '2016-07-28', '2동', '00000002222', 'aranlgfm@gmail.com', '2016-07-26 17:09:34', 'CRM_SHOP_1', '111222333', '111222333', '텟2'),
	('COM_USER_6', '미용실원장', '김텟읕', '테스트짱', '333', '333', 1, '2016-07-28', '2016-07-28', '3동', '00000000000', 'aranlgfm@gmail.com', '2016-07-26 17:10:00', 'CRM_SHOP_1', '111222333', '111222333', '텟3'),
	('COM_USER_9', '회원', '5h6h', '45lbf4', '1144', '1144', 1, NULL, NULL, '', '00000006646', 'aranlgfm@gmail.com', '2016-07-26 17:11:21', 'CRM_SHOP_1', NULL, NULL, NULL),
	('COM_USER_10', '회원', 'hgjfrtu67', 'fgjh56', 'kuk87', '565656', 0, NULL, NULL, '', '00000444444', 'aranlgfm@gmail.com', '2016-07-26 17:12:42', 'CRM_SHOP_1', NULL, NULL, NULL),
	('COM_USER_11', '회원', '888888', '00000', '88888', '4444', 0, NULL, NULL, '', '00000088888', 'aranlgfm@gmail.com', '2016-07-26 17:14:42', 'CRM_SHOP_1', NULL, NULL, NULL),
	('COM_USER_12', '회원', '7jj7', '56565', '77777', '55555', 1, NULL, NULL, '', '00000006665', 'aranlgfm@gmail.com', '2016-07-26 17:14:54', 'CRM_SHOP_1', NULL, NULL, NULL),
	('COM_USER_13', '회원', 'hhyh', 'kkik', 'yhyh', '123123', 1, NULL, NULL, '', '00000000000', 'aranlgfm@gmail.com', '2016-07-26 17:15:20', 'CRM_SHOP_1', NULL, NULL, NULL),
	('COM_USER_14', '회원', 'yhnujm', 'olpou3', 'tgbtgb', '111', 0, NULL, NULL, '', '00000000123', 'aranlgfm@gmail.com', '2016-07-26 17:16:46', 'CRM_SHOP_1', NULL, NULL, NULL),
	('COM_USER_15', '미용실원장', 'chai', 'iikikoo', 'chacha', '123123', 0, NULL, NULL, '', '00000009595', 'aranlgfm@gmail.com', '2016-07-26 17:17:57', '111111', NULL, NULL, NULL),
	('COM_USER_16', '미용실원장', 'iiki', 'gthy', 'chacha222', '111', 0, NULL, NULL, '', '00000123123', 'aranlgfm@gmail.com', '2016-07-26 17:18:43', 'CRM_SHOP_1', NULL, NULL, NULL),
	('COM_USER_17', '미용실원장', '0kgty', 'hj56y6', 'chacha00', '123123', 1, NULL, NULL, '', '00000001133', 'aranlgfm@gmail.com', '2016-07-26 17:23:20', 'CRM_SHOP_1', NULL, NULL, NULL),
	('COM_USER_18', '미용실원장', '대봉이', '룰루라라', 'test0010', '123123', 0, NULL, NULL, '', '00000000555', 'aranlgfm@gmail.com', '2016-07-27 09:35:37', 'CRM_SHOP_1', NULL, NULL, NULL),
	('COM_USER_19', '미용실원장', '테스트', '입니다.', 'test99', 'test99', 0, NULL, NULL, '', '00000000123', 'aranlgfm@gmail.com', '2016-07-27 09:54:39', 'CRM_SHOP_1', NULL, NULL, NULL),
	('COM_USER_20', '미용실원장', 'ggbg', 'hhnh', 'test222', '123123', 1, NULL, NULL, '', '00000000123', 'aranlgfm@gmail.com', '2016-07-27 09:59:39', 'CRM_SHOP_1', NULL, NULL, NULL),
	('COM_USER_21', '미용실원장', 'test88', 'test880', 'test88', '123123', 0, NULL, NULL, '', '00000008898', 'aranlgfm@gmail.com', '2016-07-27 10:27:51', 'CRM_SHOP_1', NULL, NULL, NULL),
	('COM_USER_22', '회원', '김대봉', '테스트', 'test77', 'test77', 0, NULL, NULL, '', '00000000222', 'aranlgfm@gmail.com', '2016-07-27 11:32:04', 'CRM_SHOP_1', NULL, NULL, NULL),
	('COM_USER_23', '미용실원장', 'tete0', 'tete3', 'tete', '123123', 0, NULL, NULL, '', '00000000123', 'aranlgfm@gmail.com', '2016-07-27 11:32:25', 'CRM_SHOP_1', NULL, NULL, NULL),
	('COM_USER_24', '회원', '차현', '테스트에요1', 'test7722', '111', 0, NULL, NULL, '', '00000000222', 'aranlgfm@gmail.com', '2016-07-27 11:37:57', 'CRM_SHOP_1', NULL, NULL, NULL),
	('COM_USER_25', '미용실원장', '차녹', 'tete35', 'tete3', 'tete3', 0, NULL, NULL, '', '00000000222', 'aranlgfm@gmail.com', '2016-07-27 11:38:10', 'CRM_SHOP_1', NULL, NULL, NULL),
	('COM_USER_26', '미용실원장', '차주', 'toto14', 'toto1', 'toto1', 1, NULL, NULL, '', '00000000123', 'aranlgfm@gmail.com', '2016-07-27 11:45:48', 'CRM_SHOP_1', NULL, NULL, NULL),
	('COM_USER_27', '미용실원장', '차청', '라라라', 'toto09', '123123', 0, NULL, NULL, '', '00000002222', 'aranlgfm@gmail.com', '2016-07-27 11:58:01', 'CRM_SHOP_1', NULL, NULL, NULL),
	('COM_USER_28', '디자이너', '차적', 'gaga155', 'ggg123', '123123', 1, NULL, NULL, '', '00000000123', 'aranlgfm@gmail.com', '2016-07-27 13:25:06', 'CRM_SHOP_2', NULL, NULL, NULL),
	('COM_USER_29', '디자이너', '차황', 'geogeo13', 'geogeo1', '123123', 1, NULL, NULL, '', '00000044443', 'aranlgfm@gmail.com', '2016-07-27 13:38:57', 'cd3422342341', NULL, NULL, NULL),
	('COM_USER_30', '디자이너', '차홍', 'tata14', 'tata1', '123123', 1, NULL, NULL, '', '00000000222', 'aranlgfm@gmail.com', '2016-07-27 13:41:59', 'sha1', NULL, NULL, NULL),
	('COM_USER_32', '회원', '테슷흐', '테수투', 'test', '123123', 0, '2016-08-26', '2016-08-03', '13524경기 성남시 분당구 대왕판교로606번길 45007', '00000013524', 'email@gmail.com', '2016-08-09 12:04:16', NULL, '025985585', '01022584785', '아오'),
	('COM_USER_31', '회원', 'feokfeo', 'ofoefkeok', 'ceifekfd', '123123', 0, '2016-08-08', '2016-08-08', '', '00000027648', '', '2016-08-08 16:27:13', NULL, '', NULL, '33212312'),
	('COM_USER_33', '회원', '미용실원장이여', '미용실원장이여', 'test0808', '123123', 1, NULL, NULL, '27648충북 음성군 삼성면 금율로 306123-12', '00000027648', '123@naver.com', '2016-08-09 12:17:44', NULL, '123123123', '123123123', '123123'),
	('COM_USER_34', '미용실원장', '223123', '원장이다', 'testshop', '123123', 1, NULL, NULL, '05315서울 강동구 양재대로123길 7', '00000005315', '123@naver.com', '2016-08-09 12:18:48', NULL, '123123123', '123123123', ''),
	('COM_USER_35', '회원', '123123ff1', '123123', '123123sss', '123123', 1, NULL, NULL, '', NULL, '123@daum.net', '2016-08-09 12:43:55', NULL, '123-123-1231', '123-123-123', '123'),
	('COM_USER_36', '회원', 'g5u78i7', 'g5u78i7', 'g5u78i7', '123123', 1, NULL, NULL, '서울 강동구 양재대로123길 7^123', '05315', '1231@daum.net', '2016-08-09 12:54:23', NULL, '123-123-1231', '123-123-123', '123'),
	('COM_USER_37', '회원', '차이숭', '원장님', 'test0809', 'test0809', 0, '2016-08-26', '2016-08-10', '서울 용산구 다산로 8-11^1121', '04417', '2563@gmail.com', '2016-08-09 13:43:48', NULL, '02-1125-6685', '010-2252-6658', '1231111112312311'),
	('COM_USER_38', '디자이너', '복길이', '복길이다', 'love7peace', 'roqkfwk123', 0, NULL, '2016-08-10', '전북 전주시 완산구 당산로 55^우리집이당', '54948', 'bogki1030@naver.com', '2016-08-10 12:34:51', NULL, '070-8815-4575', '010-9241-7878', '앙'),
	('COM_USER_39', '회원', '', '', '', '', 0, NULL, NULL, '', NULL, '', '2016-08-11 16:55:29', NULL, '', '', '');
/*!40000 ALTER TABLE `COM_USER_TB` ENABLE KEYS */;


# Dumping structure for table phoenixooo.CRM_ACCOUNT_TB
CREATE TABLE IF NOT EXISTS `CRM_ACCOUNT_TB` (
  `ACCOUNT_CD` varchar(45) NOT NULL,
  `SHOP_CD` varchar(45) NOT NULL,
  `ACCOUNT_NM` varchar(45) NOT NULL,
  `CHARGER_NM` varchar(45) NOT NULL,
  `CHARGER_CELLPHONE_NO` varchar(30) NOT NULL,
  `CHARGER_PHONE_NO` varchar(30) DEFAULT NULL,
  `CHARGER_FAX_NO` varchar(30) DEFAULT NULL,
  `CHARGER_MEMO` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ACCOUNT_CD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='거래처';

# Dumping data for table phoenixooo.CRM_ACCOUNT_TB: 15 rows
/*!40000 ALTER TABLE `CRM_ACCOUNT_TB` DISABLE KEYS */;
INSERT INTO `CRM_ACCOUNT_TB` (`ACCOUNT_CD`, `SHOP_CD`, `ACCOUNT_NM`, `CHARGER_NM`, `CHARGER_CELLPHONE_NO`, `CHARGER_PHONE_NO`, `CHARGER_FAX_NO`, `CHARGER_MEMO`) VALUES
	('CRM_ACCOUNT_1', 'CRM_SHOP_1', '삼성', '이건희', '01054855548', '02147483647', '0648485656', ''),
	('CRM_ACCOUNT_2', 'CRM_SHOP_3', 'lg', '김또깡', '01054855348', '02147483647', '0648484656', ''),
	('CRM_ACCOUNT_3', 'CRM_SHOP_1', 'SK', '김냥냥', '01034855348', '02147483647', '0648434656', ''),
	('CRM_ACCOUNT_4', 'CRM_SHOP_1', 'ㅗㅓㄽ', 'ㄹ호로', 'ㅀㄹ', 'ㅎㄹ홀', '홀홀', 'ㄹ홀호'),
	('CRM_ACCOUNT_5', 'CRM_SHOP_1', '이스트?트', '떡볶이', '01098758745', '0635458758', '0635486696', 'ㅇㄹㄴㅇㄹ'),
	('CRM_ACCOUNT_6', 'CRM_SHOP_2', 'SK', '씨잼', '01087878989', '01045457584', '06354848458', '양금모띠'),
	('CRM_ACCOUNT_7', 'CRM_SHOP_1', '피닉스', '피오나', '01012341235', '0632221234', '00000000000', '거래처등록성공'),
	('CRM_ACCOUNT_8', 'CRM_SHOP_1', 'q', 'q', 'q', 'q', 'q', 'q'),
	('CRM_ACCOUNT_9', 'CRM_SHOP_1', '111', '111111', '111', '111', '111', '1111'),
	('CRM_ACCOUNT_10', 'CRM_SHOP_1', '', '', '', '', '', ''),
	('CRM_ACCOUNT_11', 'CRM_SHOP_1', '', '', '', '', '', ''),
	('CRM_ACCOUNT_12', 'CRM_SHOP_1', '', '', '', '', '', ''),
	('CRM_ACCOUNT_13', 'CRM_SHOP_1', 'fgdfg', 'fdgdf', '34343', '343434', 'dfsfdsf', '343edrewf'),
	('CRM_ACCOUNT_14', 'CRM_SHOP_2', '거래처테스트', '테스트', '01054548787', '06354549898', '06354542121', 'ㅇㅇㅇㅇ'),
	('CRM_ACCOUNT_15', 'CRM_SHOP_2', '거래처테스트2', '손나은', '01078788989', '06323235656', '06389894545', 'ㅇㅇ기모띠');
/*!40000 ALTER TABLE `CRM_ACCOUNT_TB` ENABLE KEYS */;


# Dumping structure for table phoenixooo.CRM_CUSTOMER_TB
CREATE TABLE IF NOT EXISTS `CRM_CUSTOMER_TB` (
  `CUSTOMER_CD` varchar(50) NOT NULL,
  `USER_CD` varchar(50) NOT NULL,
  `SHOP_CD` varchar(50) NOT NULL,
  `CUSTOMER_NM` varchar(50) NOT NULL,
  `CUSTOMER_CELLPHONE_NO` varchar(50) NOT NULL,
  `CUSTOMER_SEX_FL` int(10) NOT NULL,
  `CUSTOMER_FIRST_VISIT_DT` date DEFAULT NULL,
  `CUSTOMER_JOIN_DT` datetime NOT NULL,
  `EMPLOYEE_CD` varchar(50) DEFAULT NULL,
  `EMPLOYEE_NM` varchar(50) DEFAULT NULL,
  `CUSTOMER_BIRTH_DT` date DEFAULT NULL,
  `CUSTOMER_POST_NO` varchar(50) DEFAULT NULL,
  `CUSTOMER_ADDR` varchar(100) DEFAULT NULL,
  `CUSTOMER_EMAIL_ADDR` varchar(100) DEFAULT NULL,
  `CUSTOMER_ANNIVERSARY_DT` date DEFAULT NULL,
  `CUSTOMER_MEMO` text,
  PRIMARY KEY (`CUSTOMER_CD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='CRM 고객테이블';

# Dumping data for table phoenixooo.CRM_CUSTOMER_TB: 21 rows
/*!40000 ALTER TABLE `CRM_CUSTOMER_TB` DISABLE KEYS */;
INSERT INTO `CRM_CUSTOMER_TB` (`CUSTOMER_CD`, `USER_CD`, `SHOP_CD`, `CUSTOMER_NM`, `CUSTOMER_CELLPHONE_NO`, `CUSTOMER_SEX_FL`, `CUSTOMER_FIRST_VISIT_DT`, `CUSTOMER_JOIN_DT`, `EMPLOYEE_CD`, `EMPLOYEE_NM`, `CUSTOMER_BIRTH_DT`, `CUSTOMER_POST_NO`, `CUSTOMER_ADDR`, `CUSTOMER_EMAIL_ADDR`, `CUSTOMER_ANNIVERSARY_DT`, `CUSTOMER_MEMO`) VALUES
	('CRM_CUSTOMER_17', '미용실회원', 'CRM_SHOP_1', '박신혜', '010-9999-8888', 1, '2016-08-12', '2016-08-12 14:03:38', 'CRM_EMPLOYEE_11', 'LUCY', NULL, NULL, NULL, NULL, NULL, ''),
	('CRM_CUSTOMER_16', '미용실회원', 'CRM_SHOP_1', '윤시윤', '010-0000-2222', 0, '2016-08-12', '2016-08-12 14:03:25', 'CRM_EMPLOYEE_6', 'ISU', NULL, NULL, NULL, NULL, NULL, ''),
	('CRM_CUSTOMER_15', '미용실회원', 'CRM_SHOP_1', '김유정', '010-4444-5555', 1, '2016-08-12', '2016-08-12 14:02:54', 'CRM_EMPLOYEE_9', 'GENZY', NULL, NULL, NULL, NULL, NULL, ''),
	('CRM_CUSTOMER_14', '미용실회원', 'CRM_SHOP_1', '심은하', '010-2222-3333', 1, '2016-08-12', '2016-08-12 14:02:35', 'CRM_EMPLOYEE_10', 'LINE', NULL, NULL, NULL, NULL, NULL, ''),
	('CRM_CUSTOMER_13', '미용실회원', 'CRM_SHOP_1', '성유리', '010-1122-2233', 1, '2016-08-12', '2016-08-12 14:02:12', 'CRM_EMPLOYEE_2', 'B.Y', NULL, NULL, NULL, NULL, NULL, ''),
	('CRM_CUSTOMER_12', '미용실회원', 'CRM_SHOP_1', '신혜성', '010-1234-1234', 0, '2016-08-12', '2016-08-12 14:01:58', 'CRM_EMPLOYEE_2', 'B.Y', NULL, NULL, NULL, NULL, NULL, ''),
	('CRM_CUSTOMER_8', '미용실회원', 'CRM_SHOP_1', '이효리', '010-1234-1234', 1, '2016-08-12', '2016-08-12 13:59:48', 'CRM_EMPLOYEE_10', 'LINE', NULL, NULL, NULL, NULL, NULL, ''),
	('CRM_CUSTOMER_9', '미용실회원', 'CRM_SHOP_1', '차태현', '010-1234-0000', 0, '2016-08-12', '2016-08-12 14:00:19', 'CRM_EMPLOYEE_1', 'JOHN', NULL, NULL, NULL, NULL, NULL, ''),
	('CRM_CUSTOMER_5', '미용실회원', 'CRM_SHOP_1', '고아라', '010-2545-2215', 1, '2016-08-12', '2016-08-12 13:48:24', NULL, 'LUCY', NULL, NULL, NULL, NULL, NULL, ''),
	('CRM_CUSTOMER_10', '미용실회원', 'CRM_SHOP_1', '박명수', '010-0000-1111', 0, '2016-08-12', '2016-08-12 14:01:13', 'CRM_EMPLOYEE_11', 'LUCY', NULL, NULL, NULL, NULL, NULL, ''),
	('CRM_CUSTOMER_11', '미용실회원', 'CRM_SHOP_1', '유재석', '010-2344-2344', 0, '2016-08-12', '2016-08-12 14:01:27', 'CRM_EMPLOYEE_6', 'ISU', NULL, NULL, NULL, NULL, NULL, ''),
	('CRM_CUSTOMER_18', '미용실회원', 'CRM_SHOP_1', '장동건', '010-0000-0000', 0, '2016-08-12', '2016-08-12 17:27:55', 'CRM_EMPLOYEE_9', 'GENZY', NULL, NULL, NULL, NULL, NULL, ''),
	('CRM_CUSTOMER_4', '미용실회원', 'CRM_SHOP_1', '한효주', '010-1234-1234', 1, '2016-08-12', '2016-08-12 13:10:26', 'CRM_EMPLOYEE_11', 'LUCY', NULL, '05081', '서울 광진구 뚝섬로 460^293호', '123@123.com', '2016-08-01', ''),
	('CRM_CUSTOMER_2', '미용실회원', 'CRM_SHOP_1', '김우빈', '010-1234-1234', 0, '2016-08-12', '2016-08-12 12:51:08', 'CRM_EMPLOYEE_1', 'JOHN', NULL, NULL, NULL, NULL, NULL, ''),
	('CRM_CUSTOMER_3', '미용실회원', 'CRM_SHOP_1', '현빈', '010-1234-1234', 0, '2016-08-12', '2016-08-12 13:09:02', 'CRM_EMPLOYEE_2', 'B.Y', '2016-08-02', '07630', '서울 강서구 마곡중앙로 33^101호', 'test@daum.net', '2016-08-03', ''),
	('CRM_CUSTOMER_6', '미용실회원', 'CRM_SHOP_1', '강동원', '010-2365-5585', 0, '2016-08-12', '2016-08-12 13:50:24', NULL, 'DIVA', '2016-08-09', '06364', '서울 강남구 밤고개로 120^101호', '123@123.com', NULL, ''),
	('CRM_CUSTOMER_19', '미용실회원', 'CRM_SHOP_1', '고소영', '010-0000-0000', 1, '2016-08-12', '2016-08-12 17:28:12', 'CRM_EMPLOYEE_11', 'LUCY', NULL, NULL, NULL, NULL, NULL, ''),
	('CRM_CUSTOMER_20', '미용실회원', 'CRM_SHOP_1', '신아람', '010-0000-1111', 1, '2016-08-12', '2016-08-12 17:28:28', 'CRM_EMPLOYEE_1', 'JOHN', NULL, NULL, NULL, NULL, NULL, ''),
	('CRM_CUSTOMER_21', '미용실회원', 'CRM_SHOP_1', '정준하', '010-1234-1234', 0, '2016-08-12', '2016-08-12 17:28:44', 'CRM_EMPLOYEE_10', 'LINE', NULL, NULL, NULL, NULL, NULL, ''),
	('CRM_CUSTOMER_22', '미용실회원', 'CRM_SHOP_1', '김연아', '010-1234-1234', 1, '2016-08-12', '2016-08-12 17:29:13', 'CRM_EMPLOYEE_6', 'ISU', NULL, NULL, NULL, NULL, NULL, ''),
	('CRM_CUSTOMER_23', '미용실회원', 'CRM_SHOP_1', '신복기', '010-0000-1111', 0, '2016-08-12', '2016-08-12 17:29:55', 'CRM_EMPLOYEE_6', 'ISU', NULL, NULL, NULL, NULL, NULL, '');
/*!40000 ALTER TABLE `CRM_CUSTOMER_TB` ENABLE KEYS */;


# Dumping structure for table phoenixooo.CRM_EMPLOYEE_TB
CREATE TABLE IF NOT EXISTS `CRM_EMPLOYEE_TB` (
  `EMPLOYEE_CD` varchar(45) NOT NULL,
  `SHOP_CD` varchar(45) NOT NULL,
  `EMPLOYEE_PW` varchar(45) NOT NULL,
  `EMPLOYEE_NM` varchar(45) NOT NULL,
  `EMPLOYEE_BIRTH_DT` date DEFAULT NULL,
  `EMPLOYEE_POST_NO` varchar(50) DEFAULT NULL,
  `EMPLOYEE_ADDR` varchar(100) DEFAULT NULL,
  `EMPLOYEE_PHONE_NO` varchar(50) DEFAULT NULL,
  `EMPLOYEE_CELLPHONE_NO` varchar(50) DEFAULT NULL,
  `EMPLOYEE_JOIN_DT` date NOT NULL,
  `EMPLOYEE_MEMO` varchar(1000) DEFAULT NULL,
  `EMPLOYEE_LEVEL_NM` varchar(45) NOT NULL,
  PRIMARY KEY (`EMPLOYEE_CD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='직원';

# Dumping data for table phoenixooo.CRM_EMPLOYEE_TB: 15 rows
/*!40000 ALTER TABLE `CRM_EMPLOYEE_TB` DISABLE KEYS */;
INSERT INTO `CRM_EMPLOYEE_TB` (`EMPLOYEE_CD`, `SHOP_CD`, `EMPLOYEE_PW`, `EMPLOYEE_NM`, `EMPLOYEE_BIRTH_DT`, `EMPLOYEE_POST_NO`, `EMPLOYEE_ADDR`, `EMPLOYEE_PHONE_NO`, `EMPLOYEE_CELLPHONE_NO`, `EMPLOYEE_JOIN_DT`, `EMPLOYEE_MEMO`, `EMPLOYEE_LEVEL_NM`) VALUES
	('CRM_EMPLOYEE_1', 'CRM_SHOP_1', '1111', 'JOHN', '2016-08-02', '123', '1111', '1111', '1111', '2016-08-02', '1111', '호구'),
	('CRM_EMPLOYEE_2', 'CRM_SHOP_1', '2222', 'B.Y', '2016-07-22', '123', '대전', '02147483647', '01059687451', '2016-07-22', ' ', '사원'),
	('CRM_EMPLOYEE_3', 'CRM_SHOP_2', '2332', 'TOMAS', '2016-07-22', '123', '대천', '02147483647', '01059687454', '2016-07-22', '', '매니저'),
	('CRM_EMPLOYEE_4', 'CRM_SHOP_2', '1111', 'TOM', '2016-08-08', '123', '브라질', '123', '123', '2016-08-01', '', '원장'),
	('CRM_EMPLOYEE_7', 'CRM_SHOP_3', '1111', 'SAM', '2016-08-08', '123', '1111', '1111', '1111', '2016-08-08', '1111', '호구 '),
	('CRM_EMPLOYEE_6', 'CRM_SHOP_1', '1234', 'ISU', '2016-08-08', '123', '용머리', '1234', '1234', '2016-08-08', '메모', '호구'),
	('CRM_EMPLOYEE_5', 'CRM_SHOP_3', '1234', 'W.J KIM', '2016-08-05', '123', '용머리고개', '1234', '1234', '2016-08-05', '하기싫어', '회장'),
	('CRM_EMPLOYEE_8', 'CRM_SHOP_3', '1234', 'OOK', '2016-08-09', '123', '용머리', '1234', '1234', '2016-08-09', '메모', '원장'),
	('CRM_EMPLOYEE_9', 'CRM_SHOP_1', '1234', 'GENZY', '2016-08-11', '123', '도쿄', '0100000000', '0100000000', '2016-08-11', '1', '호구'),
	('CRM_EMPLOYEE_10', 'CRM_SHOP_1', '1234', 'LINE', '2016-08-11', '123', '베를린', '01000000000', '0100000000', '2016-08-11', '1', '호구'),
	('CRM_EMPLOYEE_11', 'CRM_SHOP_1', '1234', 'LUCY', '2016-08-11', '123', '리우', '123', '123', '2016-08-11', '1', '호구'),
	('CRM_EMPLOYEE_12', 'CRM_SHOP_2', '1234', '씨잼', '2016-08-11', '123', '부산', '123', '123', '2016-08-11', '1', '호구'),
	('CRM_EMPLOYEE_13', 'CRM_SHOP_4', '1234', 'DUNHILL', '2016-08-12', '123', '123', '123', '123', '2016-08-12', '메모', '사원'),
	('CRM_EMPLOYEE_14', 'CRM_SHOP_4', '12312312', '원중사마', '2016-08-12', '55096', '전북 전주시 완산구 유기전1길 5-80 (서완산동1가)', '111', '1111', '2016-08-12', '메모', '원장'),
	('CRM_EMPLOYEE_15', 'CRM_SHOP_4', '123123123', '케케케', '2016-08-12', '55096', '전북 전주시 완산구 유기전1길 5-80 (서완산동1가)', '111-1111-1111', '111-1111-1111,', '2016-08-12', '메모', '호구');
/*!40000 ALTER TABLE `CRM_EMPLOYEE_TB` ENABLE KEYS */;


# Dumping structure for table phoenixooo.CRM_ETC_COSTLIST_TB
CREATE TABLE IF NOT EXISTS `CRM_ETC_COSTLIST_TB` (
  `ETC_COSTLIST_CD` varchar(50) NOT NULL,
  `SHOP_CD` varchar(50) NOT NULL,
  `ETC_COST_CD` varchar(50) NOT NULL,
  `ETC_COST_TYPE_NM` varchar(50) NOT NULL,
  `ETC_COST_DT` datetime NOT NULL,
  `ETC_COST_WON` int(11) NOT NULL,
  `ETC_COST_MEMO` varchar(5000) NOT NULL,
  PRIMARY KEY (`ETC_COSTLIST_CD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='기타지출';

# Dumping data for table phoenixooo.CRM_ETC_COSTLIST_TB: 4 rows
/*!40000 ALTER TABLE `CRM_ETC_COSTLIST_TB` DISABLE KEYS */;
INSERT INTO `CRM_ETC_COSTLIST_TB` (`ETC_COSTLIST_CD`, `SHOP_CD`, `ETC_COST_CD`, `ETC_COST_TYPE_NM`, `ETC_COST_DT`, `ETC_COST_WON`, `ETC_COST_MEMO`) VALUES
	('CRM_ETC_COSTLIST_1', 'CRM_SHOP_1', 'CRM_ETC_COST_1', '전기요금', '2016-07-22 14:13:04', 120000, '적당히 나옴'),
	('CRM_ETC_COSTLIST_2', 'CRM_SHOP_2', 'CRM_ETC_COST_2', '수도요금', '2016-07-22 14:13:45', 100000, '많이 나옴, 절약해야됨'),
	('CRM_ETC_COSTLIST_3', 'CRM_SHOP_3', 'CRM_ETC_COST_3', '믹스커피', '2016-07-22 14:14:31', 100000, '전월 대비 평균유지중'),
	('CRM_ETC_COSTLIST_4', 'CRM_SHOP_4', 'CRM_ETC_COST_3', '종이컵', '2016-08-01 11:55:50', 0, '분홍색으로');
/*!40000 ALTER TABLE `CRM_ETC_COSTLIST_TB` ENABLE KEYS */;


# Dumping structure for table phoenixooo.CRM_ETC_COSTTYPE_TB
CREATE TABLE IF NOT EXISTS `CRM_ETC_COSTTYPE_TB` (
  `ETC_COSTTYPE_CD` varchar(50) NOT NULL,
  `SHOP_CD` varchar(50) NOT NULL,
  `ETC_COST_CD` varchar(50) NOT NULL,
  `ETC_COST_NM` varchar(50) NOT NULL,
  `ETC_COST_TYPE_NM` varchar(50) NOT NULL,
  PRIMARY KEY (`ETC_COSTTYPE_CD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='기타지출세부항목';

# Dumping data for table phoenixooo.CRM_ETC_COSTTYPE_TB: 8 rows
/*!40000 ALTER TABLE `CRM_ETC_COSTTYPE_TB` DISABLE KEYS */;
INSERT INTO `CRM_ETC_COSTTYPE_TB` (`ETC_COSTTYPE_CD`, `SHOP_CD`, `ETC_COST_CD`, `ETC_COST_NM`, `ETC_COST_TYPE_NM`) VALUES
	('CRM_ETC_COSTTYPE_10', 'CRM_SHOP_1', 'CRM_ETC_COST_1', '세금', '수도'),
	('CRM_ETC_COSTTYPE_2', 'CRM_SHOP_1', 'CRM_ETC_COST_1', '세금', '전기'),
	('CRM_ETC_COSTTYPE_3', 'CRM_SHOP_1', 'CRM_ETC_COST_5', '커피', '맥심'),
	('CRM_ETC_COSTTYPE_6', 'CRM_SHOP_1', 'CRM_ETC_COST_6', '잡지', '보그'),
	('CRM_ETC_COSTTYPE_7', 'CRM_SHOP_1', 'CRM_ETC_COST_3', '비품', '물컵'),
	('CRM_ETC_COSTTYPE_8', 'CRM_SHOP_1', 'CRM_ETC_COST_5', '커피', '티오피'),
	('CRM_ETC_COSTTYPE_9', 'CRM_SHOP_1', 'CRM_ETC_COST_6', '잡지', '에스콰이아'),
	('CRM_ETC_COSTTYPE_11', 'CRM_SHOP_1', 'CRM_ETC_COST_2', '미용실용품', '');
/*!40000 ALTER TABLE `CRM_ETC_COSTTYPE_TB` ENABLE KEYS */;


# Dumping structure for table phoenixooo.CRM_ETC_COST_TB
CREATE TABLE IF NOT EXISTS `CRM_ETC_COST_TB` (
  `ETC_COST_CD` varchar(50) NOT NULL,
  `SHOP_CD` varchar(50) NOT NULL,
  `ETC_COST_NM` varchar(50) NOT NULL,
  PRIMARY KEY (`ETC_COST_CD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='기타지출항목';

# Dumping data for table phoenixooo.CRM_ETC_COST_TB: 8 rows
/*!40000 ALTER TABLE `CRM_ETC_COST_TB` DISABLE KEYS */;
INSERT INTO `CRM_ETC_COST_TB` (`ETC_COST_CD`, `SHOP_CD`, `ETC_COST_NM`) VALUES
	('CRM_ETC_COST_1', 'CRM_SHOP_1', '세금'),
	('CRM_ETC_COST_2', 'CRM_SHOP_1', '미용실용품'),
	('CRM_ETC_COST_3', 'CRM_SHOP_1', '비품'),
	('CRM_ETC_COST_4', 'CRM_SHOP_2', '커피'),
	('CRM_ETC_COST_6', 'CRM_SHOP_1', '잡지'),
	('CRM_ETC_COST_5', 'CRM_SHOP_1', '커피'),
	('CRM_ETC_COST_8', 'CRM_SHOP_1', ''),
	('CRM_ETC_COST_7', 'CRM_SHOP_1', '');
/*!40000 ALTER TABLE `CRM_ETC_COST_TB` ENABLE KEYS */;


# Dumping structure for table phoenixooo.CRM_GOODS_ORDER_TB
CREATE TABLE IF NOT EXISTS `CRM_GOODS_ORDER_TB` (
  `ORDER_CD` varchar(45) NOT NULL,
  `SHOP_CD` varchar(45) NOT NULL,
  `EMPLOYEE_CD` varchar(45) NOT NULL,
  `ACCOUNT_CD` varchar(45) NOT NULL,
  `GOODS_CD` varchar(45) NOT NULL,
  `ORDER_DT` datetime NOT NULL,
  `ORDER_EMPLOYEE_NM` varchar(45) NOT NULL,
  `CHARGER_NM` varchar(45) NOT NULL,
  `GOODS_QUANTITY_NO` int(11) NOT NULL,
  `ORDER_ST` varchar(45) NOT NULL,
  PRIMARY KEY (`ORDER_CD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='미용용품주문';

# Dumping data for table phoenixooo.CRM_GOODS_ORDER_TB: 4 rows
/*!40000 ALTER TABLE `CRM_GOODS_ORDER_TB` DISABLE KEYS */;
INSERT INTO `CRM_GOODS_ORDER_TB` (`ORDER_CD`, `SHOP_CD`, `EMPLOYEE_CD`, `ACCOUNT_CD`, `GOODS_CD`, `ORDER_DT`, `ORDER_EMPLOYEE_NM`, `CHARGER_NM`, `GOODS_QUANTITY_NO`, `ORDER_ST`) VALUES
	('CRM_ORDER_1', 'CRM_SHOP_1', 'CRM_EMPLOYEE_1', 'CRM_ACCOUNT_1', 'CRM_GOODS_1', '2016-07-22 12:42:13', '2016_07_22', '이승주', 30, '주문완료'),
	('CRM_ORDER_2', 'CRM_SHOP_2', 'CRM_EMPLOYEE_2', 'CRM_ACCOUNT_2', 'CRM_GOODS_2', '2016-07-22 13:55:52', '2016_07_22', '이승주', 30, '주문완료'),
	('CRM_ORDER_3', 'CRM_SHOP_3', 'CRM_EMPLOYEE_3', 'CRM_ACCOUNT_3', 'CRM_GOODS_3', '2016-07-22 13:59:20', '2016_07_22', '이승주', 30, '주문완료'),
	('CRM_ORDER_4', 'CRM_SHOP_1', 'CRM_EMPLOYEE_1', 'CRM_ACCOUNT_1', 'CRM_GOODS_1', '2016-07-22 15:45:26', '2016_07_22', '이승주', 30, '주문완료');
/*!40000 ALTER TABLE `CRM_GOODS_ORDER_TB` ENABLE KEYS */;


# Dumping structure for table phoenixooo.CRM_GOODS_PAYMENT_TB
CREATE TABLE IF NOT EXISTS `CRM_GOODS_PAYMENT_TB` (
  `PAYMENT_CD` varchar(45) NOT NULL,
  `STOCK_CD` varchar(45) NOT NULL,
  `PAYMENT_DT` datetime NOT NULL,
  `EMPLOYEE_NM` varchar(45) NOT NULL,
  `PAYMENT_MEMO` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PAYMENT_CD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='미용용품결제';

# Dumping data for table phoenixooo.CRM_GOODS_PAYMENT_TB: 4 rows
/*!40000 ALTER TABLE `CRM_GOODS_PAYMENT_TB` DISABLE KEYS */;
INSERT INTO `CRM_GOODS_PAYMENT_TB` (`PAYMENT_CD`, `STOCK_CD`, `PAYMENT_DT`, `EMPLOYEE_NM`, `PAYMENT_MEMO`) VALUES
	('CRM_GOODS_PAYMENT_1', 'CRM_GOODS_STOCK_1', '2016-07-22 14:08:43', '이승주', '이상무'),
	('CRM_GOODS_PAYMENT_2', 'CRM_GOODS_STOCK_3', '2016-07-22 14:11:51', '이승주', '이상무'),
	('CRM_GOODS_PAYMENT_3', 'CRM_GOODS_STOCK_4', '2016-07-22 14:12:34', '이승주', '이상무'),
	('CRM_GOODS_PAYMENT_4', 'CRM_GOODS_STOCK_1', '2016-08-05 10:02:59', '존', 'sdfs');
/*!40000 ALTER TABLE `CRM_GOODS_PAYMENT_TB` ENABLE KEYS */;


# Dumping structure for table phoenixooo.CRM_GOODS_RETURN_TB
CREATE TABLE IF NOT EXISTS `CRM_GOODS_RETURN_TB` (
  `RETURN_CD` varchar(50) NOT NULL,
  `STOCK_CD` varchar(50) NOT NULL,
  `ACCOUNT_CD` varchar(50) NOT NULL,
  `SHOP_CD` varchar(50) NOT NULL,
  `USER_CD` varchar(50) NOT NULL,
  `GOODS_CD` varchar(50) NOT NULL,
  `RETURN_QUANTITY_NO` int(11) NOT NULL,
  `RETURN_REASON_CTT` text NOT NULL,
  `RETURN_DT` datetime NOT NULL,
  `RETURN_ST` varchar(50) NOT NULL,
  `ORDER_QUANTITY_NO` int(11) NOT NULL,
  `PAYMENT_MEMO` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`RETURN_CD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='미용용품반품';

# Dumping data for table phoenixooo.CRM_GOODS_RETURN_TB: 3 rows
/*!40000 ALTER TABLE `CRM_GOODS_RETURN_TB` DISABLE KEYS */;
INSERT INTO `CRM_GOODS_RETURN_TB` (`RETURN_CD`, `STOCK_CD`, `ACCOUNT_CD`, `SHOP_CD`, `USER_CD`, `GOODS_CD`, `RETURN_QUANTITY_NO`, `RETURN_REASON_CTT`, `RETURN_DT`, `RETURN_ST`, `ORDER_QUANTITY_NO`, `PAYMENT_MEMO`) VALUES
	('CRM_GOODS_RETURN_1', 'CRM_GOODS_STOCK_1', 'CRM_ACCOUNT_1', 'CRM_SHOP_1', 'COM_USER_1', 'CRM_GOODS_1', 30, '유통기한 지남', '2016-07-22 14:22:24', '미처리', 100, ''),
	('CRM_GOODS_RETURN_2', 'CRM_GOODS_STOCK_2', 'CRM_ACCOUNT_2', 'CRM_SHOP_2', 'COM_USER_2', 'CRM_GOODS_2', 30, '유통기한 지남', '2016-07-22 14:24:04', '미처리', 100, ''),
	('CRM_GOODS_RETURN_3', 'CRM_GOODS_STOCK_3', 'CRM_ACCOUNT_3', 'CRM_SHOP_3', 'COM_USER_3', 'CRM_GOODS_3', 30, '유통기한 지남', '2016-07-22 14:24:18', '미처리', 100, '');
/*!40000 ALTER TABLE `CRM_GOODS_RETURN_TB` ENABLE KEYS */;


# Dumping structure for table phoenixooo.CRM_GOODS_SALE_TB
CREATE TABLE IF NOT EXISTS `CRM_GOODS_SALE_TB` (
  `GOODS_SALE_CD` varchar(50) NOT NULL,
  `STOCK_CD` varchar(50) NOT NULL,
  `SHOP_CD` varchar(50) NOT NULL,
  `EMPLOYEE_CD` varchar(50) NOT NULL,
  `USER_CD` varchar(50) NOT NULL,
  `POINT_CD` varchar(50) NOT NULL,
  `GOODS_CD` varchar(50) NOT NULL,
  `GOODS_QUANTITY_NO` int(11) NOT NULL,
  `PAYMENT_TYPE_GB` varchar(50) NOT NULL,
  `GOODS_SALE_DT` datetime NOT NULL,
  `DISCOUNT_FL` int(11) NOT NULL,
  `SALE_WON` int(11) NOT NULL,
  PRIMARY KEY (`GOODS_SALE_CD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='미용용품판매';

# Dumping data for table phoenixooo.CRM_GOODS_SALE_TB: 3 rows
/*!40000 ALTER TABLE `CRM_GOODS_SALE_TB` DISABLE KEYS */;
INSERT INTO `CRM_GOODS_SALE_TB` (`GOODS_SALE_CD`, `STOCK_CD`, `SHOP_CD`, `EMPLOYEE_CD`, `USER_CD`, `POINT_CD`, `GOODS_CD`, `GOODS_QUANTITY_NO`, `PAYMENT_TYPE_GB`, `GOODS_SALE_DT`, `DISCOUNT_FL`, `SALE_WON`) VALUES
	('CRM_GOODS_SALE_1', 'CRM_GOODS_STOCK_1', 'CRM_SHOP_1', 'CRM_EMPLOYEE_1', 'COM_USER_15', 'CRM_POINT_1', 'CRM_GOODS_1', 30, '현금', '2016-07-22 14:30:15', 10, 110000),
	('CRM_GOODS_SALE_2', 'CRM_GOODS_STOCK_2', 'CRM_SHOP_2', 'CRM_EMPLOYEE_2', 'COM_USER_5', 'CRM_POINT_2', 'CRM_GOODS_2', 30, '현금', '2016-07-22 14:31:37', 10, 110000),
	('CRM_GOODS_SALE_3', 'CRM_GOODS_STOCK_3', 'CRM_SHOP_3', 'CRM_EMPLOYEE_3', 'COM_USER_33', 'CRM_POINT_3', 'CRM_GOODS_3', 30, '현금', '2016-07-22 14:31:48', 10, 110000);
/*!40000 ALTER TABLE `CRM_GOODS_SALE_TB` ENABLE KEYS */;


# Dumping structure for table phoenixooo.CRM_GOODS_STOCK_TB
CREATE TABLE IF NOT EXISTS `CRM_GOODS_STOCK_TB` (
  `STOCK_CD` varchar(45) NOT NULL,
  `ACCOUNT_CD` varchar(45) NOT NULL,
  `SHOP_CD` varchar(45) NOT NULL,
  `EMPLOYEE_CD` varchar(45) NOT NULL,
  `GOODS_CD` varchar(45) NOT NULL,
  `STOCK_DT` datetime NOT NULL,
  `GOODS_QUANTITY_NO` int(11) NOT NULL,
  PRIMARY KEY (`STOCK_CD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='미용용품입고';

# Dumping data for table phoenixooo.CRM_GOODS_STOCK_TB: 4 rows
/*!40000 ALTER TABLE `CRM_GOODS_STOCK_TB` DISABLE KEYS */;
INSERT INTO `CRM_GOODS_STOCK_TB` (`STOCK_CD`, `ACCOUNT_CD`, `SHOP_CD`, `EMPLOYEE_CD`, `GOODS_CD`, `STOCK_DT`, `GOODS_QUANTITY_NO`) VALUES
	('CRM_GOODS_STOCK_1', 'CRM_ACCOUNT_1', 'CRM_SHOP_1', 'CRM_EMPLOYEE_1', 'CRM_GOODS_4', '2016-07-22 14:03:12', 2),
	('CRM_GOODS_STOCK_2', 'CRM_ACCOUNT_2', 'CRM_SHOP_2', 'CRM_EMPLOYEE_2', 'CRM_GOODS_2', '2016-07-22 14:03:32', 30),
	('CRM_GOODS_STOCK_3', 'CRM_ACCOUNT_1', 'CRM_SHOP_1', 'CRM_EMPLOYEE_2', 'CRM_GOODS_2', '2016-08-03 16:10:31', 3),
	('CRM_GOODS_STOCK_4', 'CRM_ACCOUNT_6', 'CRM_SHOP_2', 'CRM_EMPLOYEE_12', 'CRM_GOODS_3', '2016-08-12 16:26:50', 1);
/*!40000 ALTER TABLE `CRM_GOODS_STOCK_TB` ENABLE KEYS */;


# Dumping structure for table phoenixooo.CRM_GOODS_TB
CREATE TABLE IF NOT EXISTS `CRM_GOODS_TB` (
  `GOODS_CD` varchar(45) NOT NULL,
  `SHOP_CD` varchar(45) NOT NULL,
  `EMPLOYEE_CD` varchar(45) NOT NULL,
  `ACCOUNT_CD` varchar(45) NOT NULL,
  `GOODS_NM` varchar(45) NOT NULL,
  `BUYING_GOODS_UNIT_WON` int(11) NOT NULL,
  `SALE_GOODS_UNIT_WON` int(11) NOT NULL,
  `GOODS_MEMO` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`GOODS_CD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='미용용품단가';

# Dumping data for table phoenixooo.CRM_GOODS_TB: 11 rows
/*!40000 ALTER TABLE `CRM_GOODS_TB` DISABLE KEYS */;
INSERT INTO `CRM_GOODS_TB` (`GOODS_CD`, `SHOP_CD`, `EMPLOYEE_CD`, `ACCOUNT_CD`, `GOODS_NM`, `BUYING_GOODS_UNIT_WON`, `SALE_GOODS_UNIT_WON`, `GOODS_MEMO`) VALUES
	('CRM_GOODS_1', 'CRM_SHOP_2', 'CRM_EMPLOYEE_1', 'CRM_ACCOUNT_2', '댕기머리샴푸', 10000, 30000, ''),
	('CRM_GOODS_2', 'CRM_SHOP_1', 'CRM_EMPLOYEE_1', 'CRM_ACCOUNT_1', '샴푸', 11000, 40000, ''),
	('CRM_GOODS_3', 'CRM_SHOP_2', 'CRM_EMPLOYEE_2', 'CRM_ACCOUNT_2', '에센스', 9000, 20000, 'ㅇㅇ'),
	('CRM_GOODS_4', 'CRM_SHOP_1', 'CRM_EMPLOYEE_2', 'CRM_ACCOUNT_2', '댕기머리샴푸', 20000, 45000, ''),
	('CRM_GOODS_5', 'CRM_SHOP_3', 'CRM_EMPLOYEE_4', 'CRM_ACCOUNT_1', '기본샴푸', 0, 0, ''),
	('CRM_GOODS_11', 'CRM_SHOP_1', 'CRM_EMPLOYEE_11', 'QQQQQ', '11111', 111, 111, '111111'),
	('CRM_GOODS_10', 'CRM_SHOP_10', 'CRM_EMPLOYEE_10', 'dsfsdf', 'asdfsd', 213123, 123123, 'dsfdafs'),
	('CRM_GOODS_12', 'CRM_SHOP_10', 'CRM_EMPLOYEE_10', 'dsafasdg', 'dfsdf', 2342, 2132, 'dfdf'),
	('CRM_GOODS_13', 'CRM_SHOP_10', 'CRM_EMPLOYEE_10', 'dfdsfsddddd', 'asdfdxxx', 1212111, 3332211, 'dfsdfsdfds'),
	('CRM_GOODS_14', 'CRM_SHOP_10', 'CRM_EMPLOYEE_10', 'gfdgdf', 'fgfdg', 43, 444, 'dfsxfd'),
	('CRM_GOODS_15', 'CRM_SHOP_10', 'CRM_EMPLOYEE_10', '????????2', '?????????', 5000, 50000, '??');
/*!40000 ALTER TABLE `CRM_GOODS_TB` ENABLE KEYS */;


# Dumping structure for table phoenixooo.CRM_GOODS_USE_TB
CREATE TABLE IF NOT EXISTS `CRM_GOODS_USE_TB` (
  `GOODS_USE_CD` varchar(50) NOT NULL,
  `SHOP_CD` varchar(50) NOT NULL,
  `EMPLOYEE_CD` varchar(50) NOT NULL,
  `ACCOUNT_CD` varchar(50) NOT NULL,
  `GOODS_CD` varchar(50) NOT NULL,
  `GOODS_USE_QUANTITY_NO` int(11) NOT NULL,
  `GOODS_USE_DT` datetime NOT NULL,
  `GOODS_USE_MEMO` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`GOODS_USE_CD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='미용용품사용내역';

# Dumping data for table phoenixooo.CRM_GOODS_USE_TB: 4 rows
/*!40000 ALTER TABLE `CRM_GOODS_USE_TB` DISABLE KEYS */;
INSERT INTO `CRM_GOODS_USE_TB` (`GOODS_USE_CD`, `SHOP_CD`, `EMPLOYEE_CD`, `ACCOUNT_CD`, `GOODS_CD`, `GOODS_USE_QUANTITY_NO`, `GOODS_USE_DT`, `GOODS_USE_MEMO`) VALUES
	('CRM_GOODS_USE_1', 'CRM_SHOP_1', 'CRM_EMPLOYEE_1', 'CRM_ACCOUNT_1', 'CRM_GOODS_1', 30, '2016-07-22 14:35:08', '이상없음'),
	('CRM_GOODS_USE_2', 'CRM_SHOP_2', 'CRM_EMPLOYEE_2', 'CRM_ACCOUNT_1', 'CRM_GOODS_2', 30, '2016-07-22 14:36:22', '이상없음'),
	('CRM_GOODS_USE_3', 'CRM_SHOP_3', 'CRM_EMPLOYEE_3', 'CRM_ACCOUNT_1', 'CRM_GOODS_3', 30, '2016-07-22 14:36:53', '이상없음'),
	('CRM_GOODS_USE_4', 'CRM_SHOP_1', 'CRM_EMPLOYEE_1', 'CRM_ACCOUNT_1', 'CRM_GOODS_2', 3, '2016-08-05 09:24:50', 'ㄴㅇㄹㄴㅇㄹ');
/*!40000 ALTER TABLE `CRM_GOODS_USE_TB` ENABLE KEYS */;


# Dumping structure for table phoenixooo.CRM_ITEM_DESIGN_TB
CREATE TABLE IF NOT EXISTS `CRM_ITEM_DESIGN_TB` (
  `ITEMDESIGN_CD` varchar(45) NOT NULL,
  `SHOP_CD` varchar(45) NOT NULL,
  `ITEM_CD` varchar(45) NOT NULL,
  `ITEMDESIGN_NM` varchar(45) NOT NULL,
  `ITEMDESIGN_WON` int(11) NOT NULL,
  `ITEMDESIGN_REGISTE_DT` datetime NOT NULL,
  PRIMARY KEY (`ITEMDESIGN_CD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='시술디자인';

# Dumping data for table phoenixooo.CRM_ITEM_DESIGN_TB: 7 rows
/*!40000 ALTER TABLE `CRM_ITEM_DESIGN_TB` DISABLE KEYS */;
INSERT INTO `CRM_ITEM_DESIGN_TB` (`ITEMDESIGN_CD`, `SHOP_CD`, `ITEM_CD`, `ITEMDESIGN_NM`, `ITEMDESIGN_WON`, `ITEMDESIGN_REGISTE_DT`) VALUES
	('CRM_ITEM_DESIGN_13', 'CRM_SHOP_1', 'CRM_ITEM_5', '일반컷', 13000, '2016-08-12 09:13:57'),
	('CRM_ITEM_DESIGN_9', 'CRM_SHOP_1', 'CRM_ITEM_1', '드래드펌', 200000, '2016-08-02 17:29:31'),
	('CRM_ITEM_DESIGN_14', 'CRM_SHOP_1', 'CRM_ITEM_5', '디자인컷', 25000, '2016-08-12 09:14:08'),
	('CRM_ITEM_DESIGN_5', 'CRM_SHOP_1', 'CRM_ITEM_1', '매직펌', 130000, '2016-08-02 13:16:32'),
	('CRM_ITEM_DESIGN_10', 'CRM_SHOP_1', 'CRM_ITEM_4', '케라시스', 1000000, '2016-08-05 12:30:53'),
	('CRM_ITEM_DESIGN_11', 'CRM_SHOP_1', 'CRM_ITEM_4', '시세이도', 200000, '2016-08-05 12:31:00'),
	('CRM_ITEM_DESIGN_12', 'CRM_SHOP_1', 'CRM_ITEM_4', 'VIP용 케어', 300000, '2016-08-05 12:31:39');
/*!40000 ALTER TABLE `CRM_ITEM_DESIGN_TB` ENABLE KEYS */;


# Dumping structure for table phoenixooo.CRM_ITEM_TB
CREATE TABLE IF NOT EXISTS `CRM_ITEM_TB` (
  `ITEM_CD` varchar(45) NOT NULL,
  `SHOP_CD` varchar(45) NOT NULL,
  `ITEM_NM` varchar(45) NOT NULL,
  `ITEM_REGISTE_DT` datetime NOT NULL,
  PRIMARY KEY (`ITEM_CD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='시술품목';

# Dumping data for table phoenixooo.CRM_ITEM_TB: 3 rows
/*!40000 ALTER TABLE `CRM_ITEM_TB` DISABLE KEYS */;
INSERT INTO `CRM_ITEM_TB` (`ITEM_CD`, `SHOP_CD`, `ITEM_NM`, `ITEM_REGISTE_DT`) VALUES
	('CRM_ITEM_1', 'CRM_SHOP_1', '펌', '2011-01-01 00:00:00'),
	('CRM_ITEM_4', 'CRM_SHOP_1', '헤어케어', '2016-08-05 12:30:41'),
	('CRM_ITEM_5', 'CRM_SHOP_1', '컷', '2016-08-12 09:13:47');
/*!40000 ALTER TABLE `CRM_ITEM_TB` ENABLE KEYS */;


# Dumping structure for table phoenixooo.CRM_LEVEL_TB
CREATE TABLE IF NOT EXISTS `CRM_LEVEL_TB` (
  `LEVEL_CD` varchar(45) NOT NULL,
  `SHOP_CD` varchar(45) NOT NULL,
  `EMPLOYEE_CD` varchar(45) NOT NULL,
  `BUSINESS_MANAGEMENT_FL` int(11) NOT NULL,
  `CUSTOMER_MANAGEMENT_FL` int(11) NOT NULL,
  `MARKETTING__MANAGEMENT_FL` int(11) NOT NULL,
  `COST__MANAGEMENT_FL` int(11) NOT NULL,
  `EMPLOYEE_MNG_FL` int(11) NOT NULL,
  `SALES__MANAGEMENT_FL` int(11) NOT NULL,
  PRIMARY KEY (`LEVEL_CD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='접근권한';

# Dumping data for table phoenixooo.CRM_LEVEL_TB: 3 rows
/*!40000 ALTER TABLE `CRM_LEVEL_TB` DISABLE KEYS */;
INSERT INTO `CRM_LEVEL_TB` (`LEVEL_CD`, `SHOP_CD`, `EMPLOYEE_CD`, `BUSINESS_MANAGEMENT_FL`, `CUSTOMER_MANAGEMENT_FL`, `MARKETTING__MANAGEMENT_FL`, `COST__MANAGEMENT_FL`, `EMPLOYEE_MNG_FL`, `SALES__MANAGEMENT_FL`) VALUES
	('CRM_LEVEL_1', 'CRM_SHOP_1', 'CRM_EMPLOYEE_1', 0, 1, 1, 1, 0, 0),
	('CRM_LEVEL_2', 'CRM_SHOP_2', 'CRM_EMPLOYEE_2', 1, 1, 1, 1, 0, 0),
	('CRM_LEVEL_3', 'CRM_SHOP_3', 'CRM_EMPLOYEE_3', 1, 1, 1, 0, 0, 0);
/*!40000 ALTER TABLE `CRM_LEVEL_TB` ENABLE KEYS */;


# Dumping structure for table phoenixooo.CRM_PAYMENT_TB
CREATE TABLE IF NOT EXISTS `CRM_PAYMENT_TB` (
  `PAYMENT_CD` varchar(45) NOT NULL,
  `SHOP_CD` varchar(45) NOT NULL,
  `EMPLOYEE_CD` varchar(45) NOT NULL,
  `CUSTOMER_CD` varchar(45) NOT NULL,
  `POINT_CD` varchar(45) DEFAULT NULL,
  `ITEMDESIGN_CD` varchar(45) NOT NULL,
  `CUSTOMER_NM` varchar(45) NOT NULL,
  `EMPLOYEE_NM` varchar(45) NOT NULL,
  `ITEMDESIGN_NM` varchar(45) NOT NULL,
  `PAYMENT_TYPE_GB` varchar(45) NOT NULL,
  `PAYMENT_TOTAL_WON` int(11) NOT NULL,
  `PAYMENT_DT` date NOT NULL,
  `PAYMENT_MEMO` text,
  PRIMARY KEY (`PAYMENT_CD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='CRM결제';

# Dumping data for table phoenixooo.CRM_PAYMENT_TB: 22 rows
/*!40000 ALTER TABLE `CRM_PAYMENT_TB` DISABLE KEYS */;
INSERT INTO `CRM_PAYMENT_TB` (`PAYMENT_CD`, `SHOP_CD`, `EMPLOYEE_CD`, `CUSTOMER_CD`, `POINT_CD`, `ITEMDESIGN_CD`, `CUSTOMER_NM`, `EMPLOYEE_NM`, `ITEMDESIGN_NM`, `PAYMENT_TYPE_GB`, `PAYMENT_TOTAL_WON`, `PAYMENT_DT`, `PAYMENT_MEMO`) VALUES
	('CRM_PAYMENT_2', 'CRM_SHOP_1', 'CRM_EMPLOYEE_2', 'CRM_CUSTOMER_4', NULL, 'CRM_ITEM_DESIGN_13', '한효주', '비와이', '일반컷', '현금', 13000, '2016-08-02', ''),
	('CRM_PAYMENT_3', 'CRM_SHOP_1', 'CRM_EMPLOYEE_9', 'CRM_CUSTOMER_1', NULL, 'CRM_ITEM_DESIGN_14', '티파니', 'GENZY', '디자인컷', '현금', 25000, '2016-08-12', '이쁘다'),
	('CRM_PAYMENT_4', 'CRM_SHOP_1', 'CRM_EMPLOYEE_6', 'CRM_CUSTOMER_1', NULL, 'CRM_ITEM_DESIGN_9', '티파니', 'ISU', '드래드펌', '카드', 200000, '2016-08-02', '티파니가 고백했어요'),
	('CRM_PAYMENT_5', 'CRM_SHOP_1', 'CRM_EMPLOYEE_2', 'CRM_CUSTOMER_1', NULL, 'CRM_ITEM_DESIGN_10', '티파니', 'B.Y', '케라시스', '카드', 1000000, '2016-08-09', ''),
	('CRM_PAYMENT_6', 'CRM_SHOP_1', 'CRM_EMPLOYEE_2', 'CRM_CUSTOMER_2', NULL, 'CRM_ITEM_DESIGN_13', '김우빈', 'B.Y', '일반컷', '현금', 13000, '2016-08-04', '진상 손님이시네요'),
	('CRM_PAYMENT_7', 'CRM_SHOP_1', 'CRM_EMPLOYEE_10', 'CRM_CUSTOMER_2', NULL, 'CRM_ITEM_DESIGN_9', '김우빈', 'LINE', '드래드펌', '현금', 200000, '2016-08-12', '진상이 아니시네요...'),
	('CRM_PAYMENT_8', 'CRM_SHOP_1', 'CRM_EMPLOYEE_9', 'CRM_CUSTOMER_3', NULL, 'CRM_ITEM_DESIGN_13', '현빈', 'GENZY', '일반컷', '현금', 13000, '2016-08-11', '원장님 아들'),
	('CRM_PAYMENT_9', 'CRM_SHOP_1', 'CRM_EMPLOYEE_11', 'CRM_CUSTOMER_3', NULL, 'CRM_ITEM_DESIGN_5', '현빈', 'LUCY', '매직펌', '카드', 130000, '2016-08-11', '원장님 아들'),
	('CRM_PAYMENT_10', 'CRM_SHOP_1', 'CRM_EMPLOYEE_2', 'CRM_CUSTOMER_7', NULL, 'CRM_ITEM_DESIGN_14', '이효리', 'B.Y', '디자인컷', '카드', 25000, '2016-08-02', '잘하고계십니다.'),
	('CRM_PAYMENT_11', 'CRM_SHOP_1', 'CRM_EMPLOYEE_2', 'CRM_CUSTOMER_9', NULL, 'CRM_ITEM_DESIGN_13', '차태현', 'B.Y', '일반컷', '현금', 13000, '2016-08-01', ''),
	('CRM_PAYMENT_12', 'CRM_SHOP_1', 'CRM_EMPLOYEE_10', 'CRM_CUSTOMER_9', NULL, 'CRM_ITEM_DESIGN_5', '차태현', 'LINE', '매직펌', '카드', 130000, '2016-08-03', '시술일 '),
	('CRM_PAYMENT_13', 'CRM_SHOP_1', 'CRM_EMPLOYEE_11', 'CRM_CUSTOMER_9', NULL, 'CRM_ITEM_DESIGN_11', '차태현', 'LUCY', '시세이도', '현금', 200000, '2016-08-03', '힘이드는구나'),
	('CRM_PAYMENT_14', 'CRM_SHOP_1', 'CRM_EMPLOYEE_9', 'CRM_CUSTOMER_9', NULL, 'CRM_ITEM_DESIGN_9', '차태현', 'GENZY', '드래드펌', '카드', 200000, '2016-08-02', '3353'),
	('CRM_PAYMENT_15', 'CRM_SHOP_1', 'CRM_EMPLOYEE_1', 'CRM_CUSTOMER_9', NULL, 'CRM_ITEM_DESIGN_5', '차태현', 'JOHN', '매직펌', '현금', 130000, '2016-08-09', ''),
	('CRM_PAYMENT_16', 'CRM_SHOP_1', 'CRM_EMPLOYEE_2', 'CRM_CUSTOMER_9', NULL, 'CRM_ITEM_DESIGN_10', '차태현', 'B.Y', '케라시스', '카드', 1000000, '2016-08-02', ''),
	('CRM_PAYMENT_17', 'CRM_SHOP_1', 'CRM_EMPLOYEE_10', 'CRM_CUSTOMER_9', NULL, 'CRM_ITEM_DESIGN_11', '차태현', 'LINE', '시세이도', '현금', 200000, '2016-08-03', '테스트입니다.'),
	('CRM_PAYMENT_18', 'CRM_SHOP_1', 'CRM_EMPLOYEE_6', 'CRM_CUSTOMER_8', NULL, 'CRM_ITEM_DESIGN_13', '이효리', 'ISU', '일반컷', '카드', 13000, '2016-08-12', ''),
	('CRM_PAYMENT_19', 'CRM_SHOP_1', 'CRM_EMPLOYEE_9', 'CRM_CUSTOMER_6', NULL, 'CRM_ITEM_DESIGN_13', '강동원', 'GENZY', '일반컷', '카드', 13000, '2016-08-12', ''),
	('CRM_PAYMENT_20', 'CRM_SHOP_1', 'CRM_EMPLOYEE_10', 'CRM_CUSTOMER_5', NULL, 'CRM_ITEM_DESIGN_11', '고아라', 'LINE', '시세이도', '카드', 200000, '2016-08-10', '비싸다고 하심.'),
	('CRM_PAYMENT_21', 'CRM_SHOP_1', 'CRM_EMPLOYEE_6', 'CRM_CUSTOMER_4', NULL, 'CRM_ITEM_DESIGN_9', '한효주', 'ISU', '드래드펌', '현금', 200000, '2016-08-12', ''),
	('CRM_PAYMENT_22', 'CRM_SHOP_1', 'CRM_EMPLOYEE_9', 'CRM_CUSTOMER_9', NULL, 'CRM_ITEM_DESIGN_14', '차태현', 'GENZY', '디자인컷', '카드', 25000, '2016-08-24', ''),
	('CRM_PAYMENT_1', 'CRM_SHOP_1', 'CRM_EMPLOYEE_12', 'CRM_CUSTOMER_2', NULL, 'CRM_ITEM_DESIGN_10', '김우빈', '디바', '케라시스', '카드', 1000000, '2015-01-01', NULL);
/*!40000 ALTER TABLE `CRM_PAYMENT_TB` ENABLE KEYS */;


# Dumping structure for table phoenixooo.CRM_PAYMENT_TYPE_TB
CREATE TABLE IF NOT EXISTS `CRM_PAYMENT_TYPE_TB` (
  `PAYMENT_TYPE_CD` varchar(50) NOT NULL,
  `PAYMENT_TYPE_GB` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`PAYMENT_TYPE_CD`),
  UNIQUE KEY `PAYMENT_TYPE_GB` (`PAYMENT_TYPE_GB`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='결제방법';

# Dumping data for table phoenixooo.CRM_PAYMENT_TYPE_TB: 2 rows
/*!40000 ALTER TABLE `CRM_PAYMENT_TYPE_TB` DISABLE KEYS */;
INSERT INTO `CRM_PAYMENT_TYPE_TB` (`PAYMENT_TYPE_CD`, `PAYMENT_TYPE_GB`) VALUES
	('PAYMENT_TYPE_CASH', '현금'),
	('PAYMENT_TYPE_CARD', '카드');
/*!40000 ALTER TABLE `CRM_PAYMENT_TYPE_TB` ENABLE KEYS */;


# Dumping structure for table phoenixooo.CRM_POINT_TB
CREATE TABLE IF NOT EXISTS `CRM_POINT_TB` (
  `POINT_CD` varchar(50) NOT NULL,
  `SHOP_CD` varchar(50) NOT NULL,
  `ITEM_CD` varchar(50) NOT NULL,
  `ITEMDESIGN_CD` varchar(45) NOT NULL,
  `ITEM_NM` varchar(45) DEFAULT NULL,
  `POINT_PAYCASH_NO` int(11) NOT NULL,
  `POINT_PAYCARD_NO` int(11) NOT NULL,
  `POINT_PAYRECEIPT_NO` int(11) NOT NULL,
  PRIMARY KEY (`POINT_CD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='적립포인트';

# Dumping data for table phoenixooo.CRM_POINT_TB: 3 rows
/*!40000 ALTER TABLE `CRM_POINT_TB` DISABLE KEYS */;
INSERT INTO `CRM_POINT_TB` (`POINT_CD`, `SHOP_CD`, `ITEM_CD`, `ITEMDESIGN_CD`, `ITEM_NM`, `POINT_PAYCASH_NO`, `POINT_PAYCARD_NO`, `POINT_PAYRECEIPT_NO`) VALUES
	('CRM_POINT_1', 'CRM_SHOP_1', 'CRM_ITEM_1', 'CRM_ITEM_DESIGN_1', '파마', 10, 5, 5),
	('CRM_POINT_2', 'CRM_SHOP_2', 'CRM_ITEM_2', 'CRM_ITEM_DESIGN_2', '컷', 5, 2, 2),
	('CRM_POINT_3', 'CRM_SHOP_3', 'CRM_ITEM_3', 'CRM_ITEM_DESIGN_3', '염색', 5, 2, 2);
/*!40000 ALTER TABLE `CRM_POINT_TB` ENABLE KEYS */;


# Dumping structure for table phoenixooo.CRM_RESERVATION_TB
CREATE TABLE IF NOT EXISTS `CRM_RESERVATION_TB` (
  `RESERVATION_CD` varchar(45) NOT NULL,
  `SHOP_CD` varchar(45) NOT NULL,
  `EMPLOYEE_CD` varchar(45) NOT NULL,
  `USER_CD` varchar(45) NOT NULL,
  `ITEMDESIGN_CD` varchar(45) NOT NULL,
  `USER_NM` varchar(45) NOT NULL,
  `EMPLOYEE_NM` varchar(45) NOT NULL,
  `ITEMDESIGN_NM` varchar(45) NOT NULL,
  `RESERVATION_DT` datetime NOT NULL,
  `RESERVATION_TIME_DT` datetime NOT NULL,
  `RESERVATION_ST` varchar(45) NOT NULL,
  `CANCLE_DT` datetime NOT NULL,
  PRIMARY KEY (`RESERVATION_CD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='예약';

# Dumping data for table phoenixooo.CRM_RESERVATION_TB: 3 rows
/*!40000 ALTER TABLE `CRM_RESERVATION_TB` DISABLE KEYS */;
INSERT INTO `CRM_RESERVATION_TB` (`RESERVATION_CD`, `SHOP_CD`, `EMPLOYEE_CD`, `USER_CD`, `ITEMDESIGN_CD`, `USER_NM`, `EMPLOYEE_NM`, `ITEMDESIGN_NM`, `RESERVATION_DT`, `RESERVATION_TIME_DT`, `RESERVATION_ST`, `CANCLE_DT`) VALUES
	('CRM_RESERVATION_1', 'CRM_SHOP_1', 'CRM_EMPLOYEE_1', 'COM_USER_10', 'CRM_ITEM_DESIGN_1', '김원중', '가인', '디자인컷', '2016-07-22 12:38:05', '2016-07-22 12:38:05', '취소', '2016-07-22 12:38:05'),
	('CRM_RESERVATION_2', 'CRM_SHOP_2', 'CRM_EMPLOYEE_2', 'COM_USER_11', 'CRM_ITEM_DESIGN_2', '신복기', '지나', '아놀드파마', '2016-07-22 12:38:33', '2016-07-22 12:38:33', '취소', '2016-07-22 12:38:33'),
	('CRM_RESERVATION_3', 'CRM_SHOP_3', 'CRM_EMPLOYEE_3', 'COM_USER_12', 'CRM_ITEM_DESIGN_3', '구아란', '듀로탄', '어른컷', '2016-07-22 12:39:11', '2016-07-22 12:39:11', '신청', '2016-07-22 12:39:11');
/*!40000 ALTER TABLE `CRM_RESERVATION_TB` ENABLE KEYS */;


# Dumping structure for table phoenixooo.CRM_SALARY_TB
CREATE TABLE IF NOT EXISTS `CRM_SALARY_TB` (
  `SALARY_CD` varchar(45) NOT NULL,
  `SHOP_CD` varchar(45) NOT NULL,
  `EMPLOYEE_CD` varchar(45) NOT NULL,
  `SALARY_PAY_DT` datetime NOT NULL,
  `SALARY_MONTH_DT` datetime NOT NULL,
  `EMPLOYEE_NM` varchar(45) NOT NULL,
  `SALARY_WON` int(11) NOT NULL,
  PRIMARY KEY (`SALARY_CD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='급여지급';

# Dumping data for table phoenixooo.CRM_SALARY_TB: 10 rows
/*!40000 ALTER TABLE `CRM_SALARY_TB` DISABLE KEYS */;
INSERT INTO `CRM_SALARY_TB` (`SALARY_CD`, `SHOP_CD`, `EMPLOYEE_CD`, `SALARY_PAY_DT`, `SALARY_MONTH_DT`, `EMPLOYEE_NM`, `SALARY_WON`) VALUES
	('CRM_SALARY_1', 'CRM_SHOP_2', 'CRM_EMPLOYEE_2', '2016-07-22 14:02:18', '2016-07-22 14:02:18', '조엘', 1590000),
	('CRM_SALARY_2', 'CRM_SHOP_1', 'CRM_EMPLOYEE_3', '2016-07-22 14:03:02', '2016-07-22 14:03:02', '앤디', 1590000),
	('CRM_SALARY_3', 'CRM_SHOP_1', 'CRM_EMPLOYEE_2', '2016-07-22 14:03:25', '2016-07-22 14:03:25', '라디', 2500000),
	('CRM_SALARY_4', 'CRM_SHOP_3', 'CRM_EMPLOYEE_1', '2016-08-12 10:23:27', '2016-08-12 14:03:25', '김김', 15000),
	('CRM_SALARY_5', 'CRM_SHOP_1', 'CRM_EMPLOYEE_2', '2016-08-12 10:24:27', '2016-08-13 14:03:25', '차이수', 150000),
	('CRM_SALARY_6', 'CRM_SHOP_3', 'CRM_EMPLOYEE_1', '2016-08-12 11:45:32', '2016-08-12 00:00:00', '차이수', 12341234),
	('CRM_SALARY_7', 'CRM_SHOP_3', 'CRM_EMPLOYEE_1', '2016-08-12 11:49:04', '2016-08-12 00:00:00', '차이수', 12312312),
	('CRM_SALARY_8', 'CRM_SHOP_3', 'CRM_EMPLOYEE_1', '2016-08-12 11:54:31', '2016-08-12 00:00:00', '차이수', 12312312),
	('CRM_SALARY_9', 'CRM_SHOP_3', 'CRM_EMPLOYEE_1', '2016-08-12 00:00:00', '2016-08-12 00:00:00', '차이수', 12312312),
	('CRM_SALARY_10', 'CRM_SHOP_3', 'CRM_EMPLOYEE_1', '2016-08-12 12:00:19', '2016-08-12 00:00:00', '차이수', 12312312);
/*!40000 ALTER TABLE `CRM_SALARY_TB` ENABLE KEYS */;


# Dumping structure for table phoenixooo.CRM_SHOP_TB
CREATE TABLE IF NOT EXISTS `CRM_SHOP_TB` (
  `SHOP_CD` varchar(45) NOT NULL,
  `USER_CD` varchar(45) NOT NULL,
  `SHOP_NM` varchar(45) NOT NULL,
  `SHOP_POST_NO` int(11) NOT NULL,
  `SHOP_ADDR` varchar(45) NOT NULL,
  `BUSINESS_NO` int(11) NOT NULL,
  `SHOP_JOIN_DT` datetime NOT NULL,
  `SHOP_MEMO` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`SHOP_CD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='미용실';

# Dumping data for table phoenixooo.CRM_SHOP_TB: 8 rows
/*!40000 ALTER TABLE `CRM_SHOP_TB` DISABLE KEYS */;
INSERT INTO `CRM_SHOP_TB` (`SHOP_CD`, `USER_CD`, `SHOP_NM`, `SHOP_POST_NO`, `SHOP_ADDR`, `BUSINESS_NO`, `SHOP_JOIN_DT`, `SHOP_MEMO`) VALUES
	('CRM_SHOP_1', 'COM_USER_1', '이수차헤어커커', 0, '서신동', 2147483647, '0000-00-00 00:00:01', ''),
	('CRM_SHOP_2', 'COM_USER_2', '박승철미용실', 0, '서곡지구', 2147483646, '0000-00-00 00:00:02', ''),
	('CRM_SHOP_3', 'COM_USER_3', '이철헤어커커', 0, '덕진동', 2147483645, '0000-00-00 00:00:03', ''),
	('CRM_SHOP_4', 'COM_USER_18', '차차차컷', 0, '효자동', 2147483647, '0000-00-00 00:00:00', NULL),
	('CRM_SHOP_5', 'COM_USER_19', '꽃보다복기헤어샵', 0, '삼천동', 2147483647, '0000-00-00 00:00:00', NULL),
	('CRM_SHOP_6', 'COM_USER_18', '디자이너강헤어', 0, '평화동', 2147483647, '0000-00-00 00:00:00', NULL),
	('CRM_SHOP_7', 'COM_USER_19', '이승주헤어', 0, '화곡동', 2147483647, '0000-00-00 00:00:00', NULL),
	('CRM_SHOP_8', 'COM_USER_26', '외출금지헤어', 0, '신정동', 0, '0000-00-00 00:00:00', NULL);
/*!40000 ALTER TABLE `CRM_SHOP_TB` ENABLE KEYS */;


# Dumping structure for table phoenixooo.home_comment
CREATE TABLE IF NOT EXISTS `home_comment` (
  `comment_no` int(10) NOT NULL AUTO_INCREMENT,
  `comment_writer` varchar(50) NOT NULL,
  `comment_pw` varchar(50) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_date` datetime NOT NULL,
  PRIMARY KEY (`comment_no`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='for teacher';

# Dumping data for table phoenixooo.home_comment: 3 rows
/*!40000 ALTER TABLE `home_comment` DISABLE KEYS */;
INSERT INTO `home_comment` (`comment_no`, `comment_writer`, `comment_pw`, `comment_content`, `comment_date`) VALUES
	(1, '아란님', '1234', '어서오세요!', '2016-07-17 00:00:00'),
	(12, '이승주', '1234', '배경색이 산뜻하네요!', '2016-07-22 16:52:50'),
	(13, 'ㅋㅋㅋㅋ', '4657', '아란아 안녕 ㅎㅎㅎ 덥다....', '2016-07-25 18:36:13');
/*!40000 ALTER TABLE `home_comment` ENABLE KEYS */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
