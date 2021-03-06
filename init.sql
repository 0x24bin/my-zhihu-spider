CREATE DATABASE `MY_ZHIHU` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

CREATE TABLE `QUESTION` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TOPIC_ID` int(10) unsigned NOT NULL,
  `NAME` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `LINK_ID` int(10) unsigned NOT NULL,
  `FOCUS` int(10) unsigned NOT NULL,
  `ANSWER` int(10) unsigned NOT NULL,
  `LAST_VISIT` int(10) unsigned DEFAULT NULL,
  `TOP_ANSWER_NUMBER` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `LINK_ID` (`LINK_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=1101529 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `TOPIC` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_VISIT` int(10) unsigned DEFAULT NULL,
  `LINK_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `LINK_ID` (`LINK_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=49486 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `ANSWER`(
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LINK_ID` int(10) unsigned NOT NULL,
  `AUTHOR_NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `AUTHOR_TOKEN` varchar(100)  DEFAULT NULL,
  `QUESTION_ID` int(10) unsigned NOT NULL,
  `THUMB_COUNT` int(10) unsigned NOT NULL,
  `COMMENT_COUNT` int(10) unsigned NOT NULL,
  `COLLECT_COUNT` int(10) unsigned NOT NULL,
  `LAST_EDIT_TIME` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `LINK_ID` (`LINK_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=1200123 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `AUTHOR`(
   `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
   `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
   `SEX` BIT NOT NULL,
   `TOKEN` varchar(100)  DEFAULT NULL,
   `LOCATION` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
   `INDUSTRY` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
   `THUMB_COUNT` int(10) unsigned NOT NULL,
   `THANKS_COUNT` int(10) unsigned NOT NULL,
   PRIMARY KEY (`ID`),
   UNIQUE KEY `TOKEN` (`TOKEN`)
) ENGINE=MyISAM AUTO_INCREMENT=10001 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;