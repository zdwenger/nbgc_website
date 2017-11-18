-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Nov 23, 2016 at 10:33 PM
-- Server version: 5.5.52-cll
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


--
-- Database: `002048`
--

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_action`
--

DROP TABLE IF EXISTS `#__acymailing_action`;
CREATE TABLE IF NOT EXISTS `#__acymailing_action` (
  `action_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `frequency` int(10) unsigned NOT NULL,
  `nextdate` int(10) unsigned NOT NULL,
  `server` varchar(255) NOT NULL,
  `port` varchar(50) NOT NULL,
  `connection_method` varchar(10) NOT NULL DEFAULT '0',
  `secure_method` varchar(10) NOT NULL DEFAULT '0',
  `self_signed` tinyint(4) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `userid` int(10) unsigned DEFAULT NULL,
  `conditions` text,
  `actions` text,
  `report` text,
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` smallint(5) unsigned DEFAULT '0',
  `delete_wrong_emails` tinyint(4) NOT NULL DEFAULT '0',
  `senderfrom` tinyint(4) NOT NULL DEFAULT '0',
  `senderto` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_config`
--

DROP TABLE IF EXISTS `#__acymailing_config`;
CREATE TABLE IF NOT EXISTS `#__acymailing_config` (
  `namekey` varchar(200) NOT NULL,
  `value` text,
  PRIMARY KEY (`namekey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__acymailing_config`
--

INSERT INTO `#__acymailing_config` (`namekey`, `value`) VALUES
('level', 'Starter'),
('version', '5.6.0'),
('from_name', 'Kreative'),
('from_email', 'info@demosite.com'),
('mailer_method', 'mail'),
('sendmail_path', '/usr/sbin/sendmail'),
('smtp_secured', ''),
('smtp_auth', '0'),
('smtp_username', ''),
('smtp_password', ''),
('reply_name', 'Kreative'),
('reply_email', 'info@demosite.com'),
('cron_sendto', 'info@demosite.com'),
('bounce_email', ''),
('add_names', '1'),
('encoding_format', '8bit'),
('charset', 'UTF-8'),
('word_wrapping', '150'),
('hostname', ''),
('embed_images', '0'),
('embed_files', '1'),
('editor', '0'),
('multiple_part', '1'),
('smtp_host', 'localhost'),
('smtp_port', ''),
('queue_nbmail', '40'),
('queue_nbmail_auto', '70'),
('queue_type', 'auto'),
('queue_try', '3'),
('queue_pause', '120'),
('allow_visitor', '1'),
('require_confirmation', '0'),
('priority_newsletter', '3'),
('allowedfiles', 'zip,doc,docx,pdf,xls,txt,gzip,rar,jpg,gif,xlsx,pps,csv,bmp,ico,odg,odp,ods,odt,png,ppt,swf,xcf,mp3,wma'),
('uploadfolder', 'media/com_acymailing/upload'),
('confirm_redirect', ''),
('subscription_message', '1'),
('notification_unsuball', ''),
('cron_next', '1251990901'),
('confirmation_message', '1'),
('welcome_message', '1'),
('unsub_message', '1'),
('cron_last', '0'),
('cron_fromip', ''),
('cron_report', ''),
('cron_frequency', '900'),
('cron_sendreport', '2'),
('cron_fullreport', '1'),
('cron_savereport', '2'),
('cron_savepath', 'media/com_acymailing/logs/report638122558.log'),
('notification_created', ''),
('notification_accept', ''),
('notification_refuse', ''),
('forward', '0'),
('description_starter', 'Joomla!™ Marketing Campaign'),
('description_essential', 'Joomla!™ Newsletter System'),
('description_business', 'Joomla!™ Mailing Extension'),
('description_enterprise', 'Joomla!™ E-mail Marketing'),
('priority_followup', '2'),
('unsub_redirect', ''),
('show_footer', '1'),
('use_sef', '0'),
('itemid', '0'),
('css_module', 'default'),
('css_frontend', 'default'),
('css_backend', ''),
('menu_position', 'above'),
('unsub_reasons', 'a:2:{i:0;s:21:"UNSUB_SURVEY_FREQUENT";i:1;s:21:"UNSUB_SURVEY_RELEVANT";}'),
('installcomplete', '0'),
('Starter', '0'),
('Essential', '1'),
('Business', '2'),
('Enterprise', '3'),
('website', 'http://localhost/'),
('module_redirect', 'localhost|localhost8080|demo.astemplates.com'),
('bootstrap_frontend', '0'),
('security_key', 'eGp2Q95QVhdH2rqJ7wiqPfed3iC1B3'),
('trackingsystem', 'acymailing'),
('acl_newsletters_lists', 'all'),
('acl_newsletters_attachments', 'all'),
('acl_newsletters_sender_informations', 'all'),
('acl_newsletters_meta_data', 'all'),
('acl_newsletters_abtesting', 'all'),
('description_sidekick', 'Joomla!® E-mail Marketing'),
('Sidekick', '4'),
('captcha_plugin', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_fields`
--

DROP TABLE IF EXISTS `#__acymailing_fields`;
CREATE TABLE IF NOT EXISTS `#__acymailing_fields` (
  `fieldid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `fieldname` varchar(250) NOT NULL,
  `namekey` varchar(50) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `value` text NOT NULL,
  `published` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ordering` smallint(5) unsigned DEFAULT '99',
  `options` text,
  `core` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `required` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `backend` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `frontcomp` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `default` varchar(250) DEFAULT NULL,
  `listing` tinyint(3) unsigned DEFAULT NULL,
  `frontlisting` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `frontjoomlaprofile` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `frontjoomlaregistration` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `joomlaprofile` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `access` varchar(250) NOT NULL DEFAULT 'all',
  `fieldcat` int(11) NOT NULL DEFAULT '0',
  `listingfilter` tinyint(4) DEFAULT NULL,
  `frontlistingfilter` tinyint(4) DEFAULT NULL,
  `frontform` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`fieldid`),
  UNIQUE KEY `namekey` (`namekey`),
  KEY `orderingindex` (`published`,`ordering`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `#__acymailing_fields`
--

INSERT INTO `#__acymailing_fields` (`fieldid`, `fieldname`, `namekey`, `type`, `value`, `published`, `ordering`, `options`, `core`, `required`, `backend`, `frontcomp`, `default`, `listing`, `frontlisting`, `frontjoomlaprofile`, `frontjoomlaregistration`, `joomlaprofile`, `access`, `fieldcat`, `listingfilter`, `frontlistingfilter`, `frontform`) VALUES
(1, 'NAMECAPTION', 'name', 'text', '', 1, 1, '', 1, 1, 1, 1, '', 1, 1, 0, 0, 0, 'all', 0, NULL, NULL, 1),
(2, 'EMAILCAPTION', 'email', 'text', '', 1, 2, '', 1, 1, 1, 1, '', 1, 1, 0, 0, 0, 'all', 0, NULL, NULL, 1),
(3, 'RECEIVE', 'html', 'radio', '0::JOOMEXT_TEXT\n1::HTML', 1, 3, '', 1, 1, 1, 1, '1', 1, 1, 0, 0, 0, 'all', 0, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_filter`
--

DROP TABLE IF EXISTS `#__acymailing_filter`;
CREATE TABLE IF NOT EXISTS `#__acymailing_filter` (
  `filid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `description` text,
  `published` tinyint(3) unsigned DEFAULT NULL,
  `lasttime` int(10) unsigned DEFAULT NULL,
  `trigger` text,
  `report` text,
  `action` text,
  `filter` text,
  PRIMARY KEY (`filid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_forward`
--

DROP TABLE IF EXISTS `#__acymailing_forward`;
CREATE TABLE IF NOT EXISTS `#__acymailing_forward` (
  `subid` int(10) unsigned NOT NULL,
  `mailid` mediumint(8) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `nbforwarded` int(10) unsigned NOT NULL,
  PRIMARY KEY (`subid`,`mailid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_geolocation`
--

DROP TABLE IF EXISTS `#__acymailing_geolocation`;
CREATE TABLE IF NOT EXISTS `#__acymailing_geolocation` (
  `geolocation_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `geolocation_subid` int(10) unsigned NOT NULL DEFAULT '0',
  `geolocation_type` varchar(255) NOT NULL DEFAULT 'subscription',
  `geolocation_ip` varchar(255) NOT NULL DEFAULT '',
  `geolocation_created` int(10) unsigned NOT NULL DEFAULT '0',
  `geolocation_latitude` decimal(9,6) NOT NULL DEFAULT '0.000000',
  `geolocation_longitude` decimal(9,6) NOT NULL DEFAULT '0.000000',
  `geolocation_postal_code` varchar(255) NOT NULL DEFAULT '',
  `geolocation_country` varchar(255) NOT NULL DEFAULT '',
  `geolocation_country_code` varchar(255) NOT NULL DEFAULT '',
  `geolocation_state` varchar(255) NOT NULL DEFAULT '',
  `geolocation_state_code` varchar(255) NOT NULL DEFAULT '',
  `geolocation_city` varchar(255) NOT NULL DEFAULT '',
  `geolocation_continent` varchar(255) NOT NULL DEFAULT '',
  `geolocation_timezone` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`geolocation_id`),
  KEY `geolocation_type` (`geolocation_subid`,`geolocation_type`),
  KEY `geolocation_ip_created` (`geolocation_ip`,`geolocation_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_history`
--

DROP TABLE IF EXISTS `#__acymailing_history`;
CREATE TABLE IF NOT EXISTS `#__acymailing_history` (
  `subid` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `action` varchar(50) NOT NULL COMMENT 'different actions: created,modified,confirmed',
  `data` text,
  `source` text,
  `mailid` mediumint(8) unsigned DEFAULT NULL,
  KEY `subid` (`subid`,`date`),
  KEY `dateindex` (`date`),
  KEY `actionindex` (`action`,`mailid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__acymailing_history`
--

INSERT INTO `#__acymailing_history` (`subid`, `date`, `ip`, `action`, `data`, `source`, `mailid`) VALUES
(2, 1391800125, '127.0.0.1', 'created', '', 'HTTP_REFERER::http://localhost/administrator/\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 5.1; rv:26.0) Gecko/20100101 Firefox/26.0 AlexaToolbar/alxf-2.19\nHTTP_HOST::localhost\nSERVER_ADDR::127.0.0.1\nREMOTE_ADDR::127.0.0.1\nREQUEST_URI::/WebJoomla_48/administrator/index.php', 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_list`
--

DROP TABLE IF EXISTS `#__acymailing_list`;
CREATE TABLE IF NOT EXISTS `#__acymailing_list` (
  `name` varchar(250) NOT NULL,
  `description` text,
  `ordering` smallint(5) unsigned DEFAULT '0',
  `listid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `published` tinyint(4) DEFAULT NULL,
  `userid` int(10) unsigned DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `color` varchar(30) DEFAULT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `welmailid` mediumint(9) DEFAULT NULL,
  `unsubmailid` mediumint(9) DEFAULT NULL,
  `type` enum('list','campaign') NOT NULL DEFAULT 'list',
  `access_sub` varchar(250) DEFAULT 'all',
  `access_manage` varchar(250) NOT NULL DEFAULT 'none',
  `languages` varchar(250) NOT NULL DEFAULT 'all',
  `startrule` varchar(50) NOT NULL DEFAULT '0',
  `category` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`listid`),
  KEY `typeorderingindex` (`type`,`ordering`),
  KEY `useridindex` (`userid`),
  KEY `typeuseridindex` (`type`,`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#__acymailing_list`
--

INSERT INTO `#__acymailing_list` (`name`, `description`, `ordering`, `listid`, `published`, `userid`, `alias`, `color`, `visible`, `welmailid`, `unsubmailid`, `type`, `access_sub`, `access_manage`, `languages`, `startrule`, `category`) VALUES
('Newsletters', 'Receive our latest news', 1, 1, 1, 898, 'mailing_list', '#3366ff', 1, NULL, NULL, 'list', 'all', 'none', 'all', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_listcampaign`
--

DROP TABLE IF EXISTS `#__acymailing_listcampaign`;
CREATE TABLE IF NOT EXISTS `#__acymailing_listcampaign` (
  `campaignid` smallint(5) unsigned NOT NULL,
  `listid` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`campaignid`,`listid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_listmail`
--

DROP TABLE IF EXISTS `#__acymailing_listmail`;
CREATE TABLE IF NOT EXISTS `#__acymailing_listmail` (
  `listid` smallint(5) unsigned NOT NULL,
  `mailid` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`listid`,`mailid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_listsub`
--

DROP TABLE IF EXISTS `#__acymailing_listsub`;
CREATE TABLE IF NOT EXISTS `#__acymailing_listsub` (
  `listid` smallint(5) unsigned NOT NULL,
  `subid` int(10) unsigned NOT NULL,
  `subdate` int(10) unsigned DEFAULT NULL,
  `unsubdate` int(10) unsigned DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`listid`,`subid`),
  KEY `subidindex` (`subid`),
  KEY `listidstatusindex` (`listid`,`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__acymailing_listsub`
--

INSERT INTO `#__acymailing_listsub` (`listid`, `subid`, `subdate`, `unsubdate`, `status`) VALUES
(1, 1, 1358282480, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_mail`
--

DROP TABLE IF EXISTS `#__acymailing_mail`;
CREATE TABLE IF NOT EXISTS `#__acymailing_mail` (
  `mailid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(250) NOT NULL,
  `body` longtext NOT NULL,
  `altbody` longtext NOT NULL,
  `published` tinyint(4) DEFAULT '1',
  `senddate` int(10) unsigned DEFAULT NULL,
  `created` int(10) unsigned DEFAULT NULL,
  `fromname` varchar(250) DEFAULT NULL,
  `fromemail` varchar(250) DEFAULT NULL,
  `replyname` varchar(250) DEFAULT NULL,
  `replyemail` varchar(250) DEFAULT NULL,
  `type` enum('news','autonews','followup','unsub','welcome','notification','joomlanotification','action') NOT NULL DEFAULT 'news',
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `userid` int(10) unsigned DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `attach` text,
  `html` tinyint(4) NOT NULL DEFAULT '1',
  `tempid` smallint(6) NOT NULL DEFAULT '0',
  `key` varchar(200) DEFAULT NULL,
  `frequency` varchar(50) DEFAULT NULL,
  `params` text,
  `sentby` int(10) unsigned DEFAULT NULL,
  `metakey` text,
  `metadesc` text,
  `filter` text,
  `language` varchar(50) NOT NULL DEFAULT '',
  `abtesting` varchar(250) DEFAULT NULL,
  `thumb` varchar(250) DEFAULT NULL,
  `summary` text NOT NULL,
  `favicon` text,
  `bccaddresses` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`mailid`),
  KEY `senddate` (`senddate`),
  KEY `typemailidindex` (`type`,`mailid`),
  KEY `useridindex` (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `#__acymailing_mail`
--

INSERT INTO `#__acymailing_mail` (`mailid`, `subject`, `body`, `altbody`, `published`, `senddate`, `created`, `fromname`, `fromemail`, `replyname`, `replyemail`, `type`, `visible`, `userid`, `alias`, `attach`, `html`, `tempid`, `key`, `frequency`, `params`, `sentby`, `metakey`, `metadesc`, `filter`, `language`, `abtesting`, `thumb`, `summary`, `favicon`, `bccaddresses`) VALUES
(1, 'New Subscriber on your website : {user:email}', '<p>Hello {subtag:name},</p><p>A new user has been created in AcyMailing : </p><blockquote><p>Name : {user:name}</p><p>Email : {user:email}</p><p>IP : {user:ip} </p><p>Subscription : {user:subscription}</p></blockquote>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_created', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL),
(2, 'A User unsubscribed from all your lists : {user:email}', '<p>Hello {subtag:name},</p><p>The user {user:name} : {user:email} unsubscribed from all your lists</p><p>Subscription : {user:subscription}</p><p>{survey}</p>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_unsuball', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL),
(3, 'A User unsubscribed : {user:email}', '<p>Hello {subtag:name},</p><p>The user {user:name} : {user:email} unsubscribed from your list</p><p>Subscription : {user:subscription}</p><p>{survey}</p>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_unsub', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL),
(4, 'A User refuses to receive e-mails from your website : {user:email}', '<p>The User {user:name} : {user:email} refuses to receive any e-mail anymore from your website.</p><p>Subscription : {user:subscription}</p><p>{survey}</p>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_refuse', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL),
(5, '{subtag:name|ucfirst}, {trans:PLEASE_CONFIRM_SUB}', '<div style="text-align: center; width: 100%; background-color: #ffffff;">\r\n			<table style="text-align:justify; margin:auto; background-color:#ebebeb; border:1px solid #e7e7e7" border="0" cellspacing="0" cellpadding="0" width="600" align="center" bgcolor="#ebebeb">\r\n			<tbody>\r\n			<tr style="line-height: 0px;">\r\n			<td style="line-height: 0px;" height="38px"><img src="media/com_acymailing/templates/newsletter-4/images/top.png" border="0" alt=" - - - " /></td>\r\n			</tr>\r\n			<tr>\r\n			<td style="text-align:center" width="600">\r\n			<table style="margin:auto;" border="0" cellspacing="0" cellpadding="0" width="520">\r\n			<tbody>\r\n			<tr>\r\n			<td style="background-color: #ffffff; border: 1px solid #dbdbdb; padding: 20px; width: 500px; margin: 15px auto; text-align: left;">\r\n			<h1>Hello {subtag:name|ucfirst},</h1>\r\n			<p>{trans:CONFIRM_MSG}<br /><br />{trans:CONFIRM_MSG_ACTIVATE}</p>\r\n			<br />\r\n			<p style="text-align:center;"><strong>{confirm}{trans:CONFIRM_SUBSCRIPTION}{/confirm}</strong></p>\r\n			</td>\r\n			</tr>\r\n			</tbody>\r\n			</table>\r\n			</td>\r\n			</tr>\r\n			<tr style="line-height: 0px;">\r\n			<td style="line-height: 0px;" height="40px"><img src="media/com_acymailing/templates/newsletter-4/images/bottom.png" border="0" alt=" - - - " /></td>\r\n			</tr>\r\n			</tbody>\r\n			</table>\r\n			</div>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'confirmation', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL),
(6, 'AcyMailing Cron Report {mainreport}', '<p>{report}</p><p>{detailreport}</p>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'report', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL),
(7, 'A Newsletter has been generated : "{subject}"', '<p>The Newsletter issue {issuenb} has been generated : </p><p>Subject : {subject}</p><p>{body}</p>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_autonews', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL),
(8, 'Modify your subscription', '<p>Hello {subtag:name}, </p><p>You requested some changes on your subscription,</p><p>Please {modify}click here{/modify} to be identified as the owner of this account and then modify your subscription.</p>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'modif', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_queue`
--

DROP TABLE IF EXISTS `#__acymailing_queue`;
CREATE TABLE IF NOT EXISTS `#__acymailing_queue` (
  `senddate` int(10) unsigned NOT NULL,
  `subid` int(10) unsigned NOT NULL,
  `mailid` mediumint(8) unsigned NOT NULL,
  `priority` tinyint(3) unsigned DEFAULT '3',
  `try` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `paramqueue` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`subid`,`mailid`),
  KEY `listingindex` (`senddate`,`subid`),
  KEY `mailidindex` (`mailid`),
  KEY `orderingindex` (`priority`,`senddate`,`subid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_rules`
--

DROP TABLE IF EXISTS `#__acymailing_rules`;
CREATE TABLE IF NOT EXISTS `#__acymailing_rules` (
  `ruleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `ordering` smallint(6) DEFAULT NULL,
  `regex` text NOT NULL,
  `executed_on` text NOT NULL,
  `action_message` text NOT NULL,
  `action_user` text NOT NULL,
  `published` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`ruleid`),
  KEY `ordering` (`published`,`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_stats`
--

DROP TABLE IF EXISTS `#__acymailing_stats`;
CREATE TABLE IF NOT EXISTS `#__acymailing_stats` (
  `mailid` mediumint(8) unsigned NOT NULL,
  `senthtml` int(10) unsigned NOT NULL DEFAULT '0',
  `senttext` int(10) unsigned NOT NULL DEFAULT '0',
  `senddate` int(10) unsigned NOT NULL,
  `openunique` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `opentotal` int(10) unsigned NOT NULL DEFAULT '0',
  `bounceunique` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `fail` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `clicktotal` int(10) unsigned NOT NULL DEFAULT '0',
  `clickunique` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `unsub` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forward` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bouncedetails` text,
  PRIMARY KEY (`mailid`),
  KEY `senddateindex` (`senddate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_subscriber`
--

DROP TABLE IF EXISTS `#__acymailing_subscriber`;
CREATE TABLE IF NOT EXISTS `#__acymailing_subscriber` (
  `subid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(250) NOT NULL,
  `created` int(10) unsigned DEFAULT NULL,
  `confirmed` tinyint(4) NOT NULL DEFAULT '0',
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `accept` tinyint(4) NOT NULL DEFAULT '1',
  `ip` varchar(100) DEFAULT NULL,
  `html` tinyint(4) NOT NULL DEFAULT '1',
  `key` varchar(250) DEFAULT NULL,
  `confirmed_date` int(10) unsigned NOT NULL DEFAULT '0',
  `confirmed_ip` varchar(100) DEFAULT NULL,
  `lastopen_date` int(10) unsigned NOT NULL DEFAULT '0',
  `lastclick_date` int(10) unsigned NOT NULL DEFAULT '0',
  `lastopen_ip` varchar(100) DEFAULT NULL,
  `lastsent_date` int(10) unsigned NOT NULL DEFAULT '0',
  `source` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`subid`),
  UNIQUE KEY `email` (`email`),
  KEY `userid` (`userid`),
  KEY `queueindex` (`enabled`,`accept`,`confirmed`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `#__acymailing_subscriber`
--

INSERT INTO `#__acymailing_subscriber` (`subid`, `email`, `userid`, `name`, `created`, `confirmed`, `enabled`, `accept`, `ip`, `html`, `key`, `confirmed_date`, `confirmed_ip`, `lastopen_date`, `lastclick_date`, `lastopen_ip`, `lastsent_date`, `source`) VALUES
(1, 'info@demosite.com', 898, 'Super User', 1357612892, 1, 1, 1, NULL, 1, NULL, 0, NULL, 0, 0, NULL, 0, ''),
(2, 'demo@astemplates.com', 352, 'Super User', 1391800125, 1, 1, 1, '127.0.0.1', 1, 'fe15d8ef874ebfbdf2eea48766f64893', 0, NULL, 0, 0, NULL, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_tag`
--

DROP TABLE IF EXISTS `#__acymailing_tag`;
CREATE TABLE IF NOT EXISTS `#__acymailing_tag` (
  `tagid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `userid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`tagid`),
  KEY `useridindex` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_tagmail`
--

DROP TABLE IF EXISTS `#__acymailing_tagmail`;
CREATE TABLE IF NOT EXISTS `#__acymailing_tagmail` (
  `tagid` smallint(5) unsigned NOT NULL,
  `mailid` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`tagid`,`mailid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_template`
--

DROP TABLE IF EXISTS `#__acymailing_template`;
CREATE TABLE IF NOT EXISTS `#__acymailing_template` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `description` text,
  `body` longtext,
  `altbody` longtext,
  `created` int(10) unsigned DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '1',
  `premium` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` smallint(5) unsigned DEFAULT '0',
  `namekey` varchar(50) NOT NULL,
  `styles` text,
  `subject` varchar(250) DEFAULT NULL,
  `stylesheet` text,
  `fromname` varchar(250) DEFAULT NULL,
  `fromemail` varchar(250) DEFAULT NULL,
  `replyname` varchar(250) DEFAULT NULL,
  `replyemail` varchar(250) DEFAULT NULL,
  `thumb` varchar(250) DEFAULT NULL,
  `readmore` varchar(250) DEFAULT NULL,
  `access` varchar(250) NOT NULL DEFAULT 'all',
  `category` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`tempid`),
  UNIQUE KEY `namekey` (`namekey`),
  KEY `orderingindex` (`ordering`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `#__acymailing_template`
--

INSERT INTO `#__acymailing_template` (`tempid`, `name`, `description`, `body`, `altbody`, `created`, `published`, `premium`, `ordering`, `namekey`, `styles`, `subject`, `stylesheet`, `fromname`, `fromemail`, `replyname`, `replyemail`, `thumb`, `readmore`, `access`, `category`) VALUES
(1, 'Notification template', '', '<div style="text-align:center; width:100%; background-color:#fff;">\r\n	<div class="info">{readonline}This email contains graphics, so if you don''t see them,view it in your browser{/readonline}</div>\r\n	<table width="600" bgcolor="#ebebeb" cellpadding="0" cellspacing="0" style="text-align:justify; margin:auto; background-color:#ebebeb; border:1px solid #e7e7e7" align="center">\r\n		<tr>\r\n			<td height="38px">\r\n				<img src="media/com_acymailing/templates/newsletter-4/top.png" alt=" - - - "/>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td width="600" style="text-align:center">\r\n				<table width="520" border="0" cellpadding="0" cellspacing="0" style="margin:auto;">\r\n					<tr>\r\n						<td style="padding:20px 0px; text-align:left;">\r\n							<img src="media/com_acymailing/templates/newsletter-4/message_icon.png" alt="" style="float:left; margin:0px; margin-right:20px;"/>\r\n							<h3>Topic of your message</h3>\r\n							<h4>Subtitle for your message</h4>\r\n						</td>\r\n					</tr>\r\n					<tr>\r\n						<td style="background-color:#fff; border:1px solid #dbdbdb; padding:20px; width:500px; margin:auto; margin-top:15px; margin-bottom:15px;text-align:left">\r\n							<h1>Dear {subtag:name},</h1>\r\n							Your message here...\r\n						</td>\r\n					</tr>\r\n				</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td height="40px">\r\n				<img src="media/com_acymailing/templates/newsletter-4/bottom.png" alt=" - - - " />\r\n			</td>\r\n		</tr>\r\n	 </table>\r\n	 <div class="info">Not interested any more? {unsubscribe}Unsubscribe{/unsubscribe}</div>\r\n</div>', '', NULL, 1, 0, 1, 'newsletter-4', 'a:9:{s:6:"tag_h1";s:96:"color:#393939 !important; font-size:14px; font-weight:normal; font-weight:bold; margin:10px 0px;";s:6:"tag_h2";s:106:"color: #309fb3 !important; font-size: 14px; font-weight: normal; text-align:left; margin:0px; padding:0px;";s:6:"tag_h3";s:144:"color: #393939 !important; font-size: 18px; font-weight: bold; text-align:left; margin:0px; padding-bottom:5px; border-bottom:1px solid #bdbdbd;";s:6:"tag_h4";s:117:"color: #309fb3 !important; font-size: 14px; font-weight: bold; text-align:left; margin:0px; padding: 5px 0px 0px 0px;";s:5:"tag_a";s:71:"color:#4d4d4d; text-decoration:none; font-style:italic; cursor:pointer;";s:19:"acymailing_readmore";s:32:"font-size: 10px; color: #999999;";s:17:"acymailing_online";s:52:"color:#a3a3a3; text-decoration:none; font-size:11px;";s:8:"color_bg";s:7:"#ffffff";s:18:"acymailing_content";s:19:"text-align:justify;";}', NULL, 'div,table,p, td{font-family: Verdana, Arial, Helvetica, sans-serif; font-size:12px;}\r\ndiv.info{text:align:center;padding:10px;}', NULL, NULL, NULL, NULL, 'media/com_acymailing/templates/newsletter-4/newsletter-4.png', NULL, 'all', ''),
(2, 'Newspaper', '', '<div style="width:100%; background-color:#454545; padding-bottom:20px; color:#ffffff;" align="center">\r\n	<div class="acymailing_online">{readonline}This e-mail contains graphics, if you don''t see them <strong>»view it online.</strong>{/readonline}</div>\r\n\r\n <table width="600" border="0" cellspacing="0" cellpadding="0" align="center" style="margin:auto; background-color:#ffffff; color:#454545;">\r\n\r\n	<tr>\r\n		<td>\r\n		<table width="600" border="0" cellspacing="0" cellpadding="0">\r\n	<tr>\r\n		<td width="30">&nbsp;</td>\r\n		<td width="386" style="font-family:Times New Roman, Times, serif"><h1>Your e-mail title</h1> <h3>Subtitle</h3></td>\r\n		<td width="184" style="line-height:0px"><img src="media/com_acymailing/templates/newsletter-5/logo.png" height="96" width="184" alt="logo" /></td>\r\n	</tr>\r\n	<tr>\r\n		<td colspan="3" width="600" height="31" valign="top" style="line-height:0px; background-color:#e4e4e4"><img src="media/com_acymailing/templates/newsletter-5/header.png" width="600" height="31" alt="---" /></td>\r\n	</tr>\r\n		<tr>\r\n		<td colspan="3" width="600" height="31" valign="top" style="line-height:0px;"><img src="media/com_acymailing/templates/newsletter-5/banner.png" width="600" height="217" alt="banner" /></td>\r\n	</tr>\r\n		<tr>\r\n		<td colspan="3" width="600" height="31" valign="top" style="line-height:0px;"><img src="media/com_acymailing/templates/newsletter-5/separator.png" height="21" width="600" alt="---" /></td>\r\n	</tr>\r\n</table>\r\n\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n		<table width="600" border="0" cellspacing="0" cellpadding="0">\r\n	<tr>\r\n		<td width="30">&nbsp;</td>\r\n		<td width="540" style="text-align:justify; color:#575757; font-family:Times New Roman, Times, serif; font-size:13px;">\r\n		<h2>Interviews and reports</h2>\r\n\r\n<span class="dark">Lorem ipsum dolor sit amet, consectLorem ipsum dolor sit amet.</span><br/>\r\nconsectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi. Vivamus elementum.ed elementum convallis mi. <a href="#">Vivamus elementum</a>.Lorem ipsum dolor sit amet.<br/> <br/>\r\ncLorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi. Vivamus elementum. <br /><br />\r\n<span class="acymailing_readmore">Read More</span>\r\n<br /><br />\r\n\r\n<h2>Journalism around the world</h2> <span class="dark">Lorem ipsum dolor sit amet, consectLorem. consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum.</span> consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi. Vivamus elementum.ed elementum convallis mi. <br /><br />Vivamus elementum.<a href="#">Lorem ipsum dolor</a> sit amet.Lorem ipsum dolor sit amet, consectetur adipiscing elit. <br /><br />\r\n<span class="acymailing_readmore">Read More</span> </td>\r\n		<td width="30">&nbsp;</td>\r\n	</tr>\r\n</table>\r\n\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n		<table width="600" border="0" cellspacing="0" cellpadding="0">\r\n	<tr>\r\n		<td width="600" height="14"><img src="media/com_acymailing/templates/newsletter-5/footer1.png" width="600" height="14" alt="--" /></td>\r\n	</tr>\r\n	<tr>\r\n		<td width="600" style="text-align:center; background-color:#ebebeb;  color:#454545; font-family:Times New Roman, Times, serif; font-size:13px" height="25" class="footer"><a href="#">www.mywebsite.com</a> |  <a href="#">contact</a> | <a href="#">Facebook</a> | <a href="#">Twitter</a></td>\r\n	</tr>\r\n	<tr>\r\n		<td width="600" height="7" style="background-color:#454545;"><img src="media/com_acymailing/templates/newsletter-5/footer2.png" width="600" height="7" alt="--" /></td>\r\n	</tr>\r\n</table>\r\n\r\n		</td>\r\n	</tr>\r\n</table>\r\n\r\n<div class="acymailing_unsub">{unsubscribe}If you’re not interested any more  <strong>» unsubscribe</strong>{/unsubscribe}</div>\r\n</div>\r\n', '', NULL, 1, 0, 2, 'newsletter-5', 'a:10:{s:6:"tag_h1";s:71:"color:#454545 !important; font-size:24px; font-weight:bold; margin:0px;";s:6:"tag_h2";s:145:"color:#b20000 !important; font-size:18px; font-weight:bold; margin:0px; margin-bottom:10px; padding-bottom:4px; border-bottom: 1px solid #d6d6d6;";s:6:"tag_h3";s:76:"color:#b20101 !important; font-weight:bold; font-size:18px; margin:10px 0px;";s:6:"tag_h4";s:67:"color:#e52323 !important; font-weight:bold; margin:0px; padding:0px";s:5:"tag_a";s:65:"cursor:pointer; color:#9d0000; text-decoration:none; border:none;";s:19:"acymailing_readmore";s:198:"cursor:pointer; color:#ffffff; background-color:#9d0000; border-top:1px solid #9d0000; border-bottom:1px solid #9d0000; border-right:4px solid #9d0000; border-left:4px solid #9d0000; font-size:13px;";s:17:"acymailing_online";s:127:"color:#dddddd; text-decoration:none; font-size:13px; margin:10px; text-align:center; font-family:Times New Roman, Times, serif;";s:8:"color_bg";s:7:"#454545";s:18:"acymailing_content";s:0:"";s:16:"acymailing_unsub";s:71:"color:#dddddd; text-decoration:none; font-size:13px; text-align:center;";}', NULL, 'footer a{\r\n	color:#454545;\r\n}\r\n.dark{\r\n	color:#454545;\r\n	font-weight:bold;\r\n}\r\ndiv,table,p, td{font-family:"Times New Roman", Times, serif;font-size:13px;color:#575757;}', NULL, NULL, NULL, NULL, 'media/com_acymailing/templates/newsletter-5/newsletter-5.png', NULL, 'all', ''),
(3, 'Build Bio', '', '<div style="width:100%; background-color:#3c3c3c; padding-bottom:20px; color:#ffffff;" align="center">\r\n	<div class="acymailing_online">{readonline}This e-mail contains graphics, if you don''t see them <strong>»view it online.</strong>{/readonline}</div>\r\n\r\n <table width="600" border="0" cellspacing="0" cellpadding="0" align="center" style="margin:auto; background-color:#ffffff; color:#575757;">\r\n	<tr>\r\n		<td>\r\n		<table width="600" border="0" cellspacing="0" cellpadding="0">\r\n	<tr>\r\n		<td colspan="3" width="600" height="41" style="line-height:0px; background-color:#eeeeee" valign="bottom"><img src="media/com_acymailing/templates/newsletter-6/header.png" width="600" height="41" alt="mail"  /></td>\r\n	</tr>\r\n	<tr>\r\n		<td width="250" height="122" style="line-height:0px;"><img src="media/com_acymailing/templates/newsletter-6/logo.png" width="250" height="122" alt="logo" /></td>\r\n		<td width="328" height="122" style="line-height:0px;"><img src="media/com_acymailing/templates/newsletter-6/banner.png" width="328" height="122" alt="banner" /></td>\r\n		<td width="22" height="122">&nbsp;</td>\r\n	</tr>\r\n	<tr>\r\n		<td width="250" style="background-color:#b9cf00; color:#ffffff;">&nbsp;</td>\r\n		<td width="328" height="25" style="text-align:right; background-color:#b9cf00; color:#ffffff;">Newsletter n°{mailid} - {date:3}</td>\r\n		<td width="22" style="background-color:#b9cf00; color:#ffffff;">&nbsp;</td>\r\n	</tr>\r\n		<tr>\r\n		<td colspan="3" width="600" height="25">&nbsp;</td>\r\n	</tr>\r\n</table>\r\n		</td>\r\n	</tr>\r\n\r\n	<tr>\r\n		<td>\r\n		<table width="600" border="0" cellspacing="0" cellpadding="0">\r\n	<tr>\r\n		<td width="30">&nbsp;</td>\r\n		<td width="540" style="text-align:justify; color:#575757;"><h1>Hello {subtag:name},</h1>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum Vivamus elementum. sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi.\r\n\r\n<br/>&nbsp;<br/>\r\n<h2>Day One</h2>\r\n<strong>Lorem ipsum dolor sit amet, consectLorem ipsum dolor sit amet.</strong><br />\r\nconsectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed <a href="#">elementum convallis</a> mi. Vivamus elementum.ed elementum convallis mi. Vivamus elementum.Lorem ipsum dolor sit amet. <br/><br/>\r\ncLorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi. Vivamus elementum.\r\n<br/><br/><span class="acymailing_readmore">Read More</span>\r\n\r\n<br />&nbsp;<br />\r\n<h2>How to build a green house</h2> <img src="media/com_acymailing/templates/newsletter-6/picture.png" height="160" width="193" alt="picture" style="float:left;" />\r\n<strong>Lorem ipsum dolor sit amet, elit.</strong> Aenean sollicitudin orci sit amet . Sed <a href="#">elementum convallis</a> mi. Vivamus elementum.ed elementum convallis mi. Vivamus elementum.Lorem ipsum dolor sit amet. <br/><br/>\r\ncLorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi. Vivamus elementum.\r\n<br/><br/><span class="acymailing_readmore">Read More</span>\r\n</td>\r\n		<td width="30">&nbsp;</td>\r\n	</tr>\r\n</table>\r\n\r\n		</td>\r\n	</tr>\r\n\r\n\r\n	<tr>\r\n		<td>\r\n		<table width="600" border="0" cellspacing="0" cellpadding="0">\r\n	<tr>\r\n		<td width="18">&nbsp;</td>\r\n		<td width="523">&nbsp;</td>\r\n		<td width="59">&nbsp;</td>\r\n	</tr>\r\n	<tr>\r\n		<td colspan="3" width="600" valign="top" style="line-height:0px; background-color:#efefef;"><img src="media/com_acymailing/templates/newsletter-6/footer1.png" width="600" height="18" alt="--"/></td>\r\n	</tr>\r\n	<tr>\r\n		<td width="18" height="20" style="line-height:0px; background-color:#efefef;"><img src="media/com_acymailing/templates/newsletter-6/footer2.png" height="20" width="18" alt="-" /></td>\r\n		<td width="523" style="text-align:right; background-color:#efefef; color:#575757;" class="footer"><a href="#">www.mywebsite.com</a> |  <a href="#">Contact</a></td>\r\n		<td width="59" height="20" style="line-height:0px; background-color:#efefef;"><a href="#"><img src="media/com_acymailing/templates/newsletter-6/mail.png" width="59" height="20" alt="message" style="border:none;" /></a></td>\r\n	</tr>\r\n	<tr>\r\n		<td colspan="3" width="600" valign="top" style="background-color:#3c3c3c; line-height:0px;"><img src="media/com_acymailing/templates/newsletter-6/footer4.png" height="24" width="600" alt="--"/></td>\r\n	</tr>\r\n</table>\r\n\r\n		</td>\r\n	</tr>\r\n</table>\r\n\r\n<div class="acymailing_unsub">{unsubscribe}If you’re not interested any more  <strong>» unsubscribe</strong>{/unsubscribe}</div>\r\n</div>\r\n', '', NULL, 1, 0, 3, 'newsletter-6', 'a:9:{s:6:"tag_h1";s:69:"font-weight:bold; font-size:14px;color:#3c3c3c !important;margin:0px;";s:6:"tag_h2";s:129:"color:#b9cf00 !important; font-size:14px; font-weight:bold; margin-top:20px; border-bottom:1px solid #d6d6d6; padding-bottom:4px;";s:6:"tag_h3";s:149:"color:#7e7e7e !important; font-size:14px; font-weight:bold; margin:20px 0px 0px 0px; border-bottom:1px solid #d6d6d6; padding-bottom:0px 0px 4px 0px;";s:6:"tag_h4";s:84:"color:#879700 !important; font-size:12px; font-weight:bold; margin:0px; padding:0px;";s:8:"color_bg";s:7:"#3c3c3c";s:5:"tag_a";s:65:"cursor:pointer; color:#a2b500; text-decoration:none; border:none;";s:17:"acymailing_online";s:84:"color:#dddddd; text-decoration:none; font-size:11px; margin:10px; text-align:center;";s:16:"acymailing_unsub";s:71:"color:#dddddd; text-decoration:none; font-size:11px; text-align:center;";s:19:"acymailing_readmore";s:182:"cursor:pointer; color:#ffffff; background-color:#b9cf00; border-top:2px solid #b9cf00; border-bottom:2px solid #b9cf00; border-right:4px solid #b9cf00; border-left:4px solid #b9cf00;";}', NULL, 'table, div, p, td{\r\n	font-family: Verdana, Arial, Helvetica, sans-serif;\r\n	font-size:11px;\r\n	color:#575757;\r\n}\r\n\r\n.footer a{\r\n	color:#575757;}\r\n', NULL, NULL, NULL, NULL, 'media/com_acymailing/templates/newsletter-6/newsletter-6.png', NULL, 'all', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_url`
--

DROP TABLE IF EXISTS `#__acymailing_url`;
CREATE TABLE IF NOT EXISTS `#__acymailing_url` (
  `urlid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`urlid`),
  KEY `url` (`url`(250))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_urlclick`
--

DROP TABLE IF EXISTS `#__acymailing_urlclick`;
CREATE TABLE IF NOT EXISTS `#__acymailing_urlclick` (
  `urlid` int(10) unsigned NOT NULL,
  `mailid` mediumint(8) unsigned NOT NULL,
  `click` smallint(5) unsigned NOT NULL DEFAULT '0',
  `subid` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`urlid`,`mailid`,`subid`),
  KEY `dateindex` (`date`),
  KEY `mailidindex` (`mailid`),
  KEY `subidindex` (`subid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_userstats`
--

DROP TABLE IF EXISTS `#__acymailing_userstats`;
CREATE TABLE IF NOT EXISTS `#__acymailing_userstats` (
  `mailid` mediumint(8) unsigned NOT NULL,
  `subid` int(10) unsigned NOT NULL,
  `html` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `sent` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `senddate` int(10) unsigned NOT NULL,
  `open` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `opendate` int(11) NOT NULL,
  `bounce` tinyint(4) NOT NULL DEFAULT '0',
  `fail` tinyint(4) NOT NULL DEFAULT '0',
  `ip` varchar(100) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `browser_version` tinyint(3) unsigned DEFAULT NULL,
  `is_mobile` tinyint(3) unsigned DEFAULT NULL,
  `mobile_os` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `bouncerule` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mailid`,`subid`),
  KEY `senddateindex` (`senddate`),
  KEY `subidindex` (`subid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__assets`
--

DROP TABLE IF EXISTS `#__assets`;
CREATE TABLE IF NOT EXISTS `#__assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=115 ;

--
-- Dumping data for table `#__assets`
--

INSERT INTO `#__assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 227, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 148, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 149, 150, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 151, 152, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 153, 154, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 155, 156, 1, 'com_login', 'com_login', '{}'),
(13, 1, 157, 158, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 159, 160, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 161, 162, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 163, 164, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 165, 166, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 167, 186, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 187, 190, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 191, 192, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 193, 194, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 195, 196, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 197, 198, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 199, 202, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 203, 206, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 207, 208, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 19, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 188, 189, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 204, 205, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 200, 201, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 209, 210, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 211, 212, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 8, 20, 29, 2, 'com_content.category.41', 'Slider', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(36, 35, 21, 22, 3, 'com_content.article.66', 'We offer superb reliability personal hosting with personal touch', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(37, 35, 23, 24, 3, 'com_content.article.3', 'A range of technical and advisory project services A range of technical and advisory project service', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(38, 35, 25, 26, 3, 'com_content.article.67', 'We provide the best service for a single location to review everything', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(39, 35, 27, 28, 3, 'com_content.article.68', 'Security is on the first place, we can take care of everything!', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(40, 8, 30, 39, 2, 'com_content.category.11', 'Who We Are', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(41, 40, 31, 32, 3, 'com_content.article.10', 'Who We Are', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(42, 8, 40, 49, 2, 'com_content.category.12', 'What We Offer', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(43, 42, 41, 48, 3, 'com_content.article.11', 'What We Offer', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(44, 8, 50, 53, 2, 'com_content.category.13', 'Our Awords', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(45, 44, 51, 52, 3, 'com_content.article.12', 'Our Awords', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(46, 8, 54, 57, 2, 'com_content.category.14', 'Company Profile', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(47, 46, 55, 56, 3, 'com_content.article.13', 'Company Profile', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(48, 43, 42, 43, 4, 'com_content.article.7', 'Think BIG with our company', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(49, 43, 44, 45, 4, 'com_content.article.8', 'Honesty, trust and simplicity', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(50, 43, 46, 47, 4, 'com_content.article.9', 'Intuitive creative vision', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(51, 40, 33, 34, 3, 'com_content.article.5', 'Full support service', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(52, 40, 35, 36, 3, 'com_content.article.69', 'Our Copabilities', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(53, 8, 58, 65, 2, 'com_content.category.42', 'Our History', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(54, 53, 59, 60, 3, 'com_content.article.15', '2010', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(55, 53, 61, 62, 3, 'com_content.article.16', '2011', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(56, 53, 63, 64, 3, 'com_content.article.17', '2012', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(57, 8, 66, 113, 2, 'com_content.category.43', 'Our Projects', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(58, 57, 67, 68, 3, 'com_content.category.22', 'Our Projects1', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(59, 57, 69, 106, 3, 'com_content.category.44', 'Our Portfolio', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(60, 59, 70, 85, 4, 'com_content.category.45', 'Business', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(61, 60, 71, 72, 5, 'com_content.article.56', 'GlobalTech', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(62, 60, 73, 74, 5, 'com_content.article.51', 'Global Solutions', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(63, 60, 75, 78, 5, 'com_content.article.34', 'Arcom', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(64, 60, 79, 80, 5, 'com_content.article.53', 'Workers', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(65, 60, 81, 82, 5, 'com_content.article.55', 'Roaders', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(66, 60, 83, 84, 5, 'com_content.article.52', 'Business.Co', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(67, 59, 86, 91, 4, 'com_content.category.46', 'e-Commerce', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(68, 67, 87, 88, 5, 'com_content.article.35', 'MediShop', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(69, 67, 89, 90, 5, 'com_content.article.54', 'ShoesStore', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(70, 59, 92, 95, 4, 'com_content.category.47', 'Buity', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(71, 70, 93, 94, 5, 'com_content.article.58', 'Naturel', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(72, 59, 96, 101, 4, 'com_content.category.48', 'Design', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(73, 72, 97, 98, 5, 'com_content.article.59', 'InterLux', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(74, 72, 99, 100, 5, 'com_content.article.57', 'Artisan', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(75, 59, 102, 105, 4, 'com_content.category.49', 'Real Estate', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(76, 75, 103, 104, 5, 'com_content.article.36', 'Realty', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(77, 57, 107, 112, 3, 'com_content.category.26', 'What People Say About Us', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(78, 8, 114, 133, 2, 'com_content.category.50', 'Our Services', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(79, 78, 115, 118, 3, 'com_content.category.51', 'Designing Services', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(80, 78, 119, 122, 3, 'com_content.category.52', 'Development Services', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(81, 78, 123, 126, 3, 'com_content.category.53', 'Hosting Services', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(82, 78, 127, 130, 3, 'com_content.category.54', 'SEO Services', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(83, 79, 116, 117, 4, 'com_content.article.72', 'Designing', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(84, 80, 120, 121, 4, 'com_content.article.73', 'Development', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(85, 81, 124, 125, 4, 'com_content.article.74', 'Hosting', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(86, 82, 128, 129, 4, 'com_content.article.75', 'SEO', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(87, 78, 131, 132, 3, 'com_content.article.39', 'Services', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(88, 8, 134, 137, 2, 'com_content.category.55', 'Our Business', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(89, 88, 135, 136, 3, 'com_content.article.48', 'Business', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(90, 77, 108, 109, 4, 'com_content.article.37', 'Andy Smith', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(91, 77, 110, 111, 4, 'com_content.article.38', 'Sarah Brown', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(92, 8, 138, 147, 2, 'com_content.category.56', 'Item Features', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(93, 92, 139, 140, 3, 'com_content.article.49', 'Template Features', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(94, 92, 141, 142, 3, 'com_content.article.62', 'Color Styles', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(95, 92, 143, 144, 3, 'com_content.article.64', 'Item Parameters', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(96, 92, 145, 146, 3, 'com_content.article.63', 'Module Positions', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(97, 40, 37, 38, 3, 'com_content.article.76', 'Home Style 2', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(98, 63, 76, 77, 6, 'com_content.article.18', 'Cum sociis natoque', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(99, 1, 213, 214, 1, 'com_tags', 'com_tags', '{}'),
(100, 1, 215, 216, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(101, 1, 217, 218, 1, 'com_ajax', 'com_ajax', '{}'),
(102, 1, 219, 220, 1, 'com_postinstall', 'com_postinstall', '{}'),
(103, 18, 168, 169, 2, 'com_modules.module.127', 'Kreative - Try it For Free', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(104, 1, 221, 222, 1, 'com_phocagallery', 'com_phocagallery', '{}'),
(105, 18, 170, 171, 2, 'com_modules.module.172', 'Meet Our Team', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(106, 18, 172, 173, 2, 'com_modules.module.106', 'Monthly Newsletter', ''),
(107, 18, 174, 175, 2, 'com_modules.module.103', 'Our Services', ''),
(108, 18, 176, 177, 2, 'com_modules.module.173', 'Unite Revolution Slider 2', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(109, 1, 223, 224, 1, 'com_uniterevolution2', 'com_uniterevolution2', '{"revolution2.slidersetting":{"7":1},"revolution2.slideroperations":{"7":1},"revolution2.slideoperations":{"7":1},"revolution2.editslide":{"7":1} }'),
(110, 18, 178, 179, 2, 'com_modules.module.108', 'Our History', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(111, 18, 180, 181, 2, 'com_modules.module.149', 'Breadcrumbs', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(112, 18, 182, 183, 2, 'com_modules.module.91', 'AS Menu', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(113, 1, 225, 226, 1, 'com_acymailing', 'AcyMailing', '{}'),
(114, 18, 184, 185, 2, 'com_modules.module.174', 'AS Superfish Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}');

-- --------------------------------------------------------

--
-- Table structure for table `#__associations`
--

DROP TABLE IF EXISTS `#__associations`;
CREATE TABLE IF NOT EXISTS `#__associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `#__banners`
--

DROP TABLE IF EXISTS `#__banners`;
CREATE TABLE IF NOT EXISTS `#__banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__banner_clients`
--

DROP TABLE IF EXISTS `#__banner_clients`;
CREATE TABLE IF NOT EXISTS `#__banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__banner_tracks`
--

DROP TABLE IF EXISTS `#__banner_tracks`;
CREATE TABLE IF NOT EXISTS `#__banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `#__categories`
--

DROP TABLE IF EXISTS `#__categories`;
CREATE TABLE IF NOT EXISTS `#__categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_language` (`language`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_alias` (`alias`(100))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=57 ;

--
-- Dumping data for table `#__categories`
--

INSERT INTO `#__categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 109, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 518, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 518, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 85, 86, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 518, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 87, 88, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 518, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 89, 90, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 518, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(6, 31, 1, 91, 92, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 518, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 93, 94, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 518, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 36, 1, 45, 46, 1, 'slider-home', 'com_content', 'Slider Home', 'slider-home', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-01-08 20:19:32', 0, '0000-00-00 00:00:00', 0, '*', 1),
(9, 40, 1, 3, 4, 1, 'home', 'com_content', 'Home', 'home', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-01-09 02:31:02', 0, '0000-00-00 00:00:00', 0, '*', 1),
(10, 43, 1, 9, 10, 1, 'news', 'com_content', 'News', 'news', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-01-09 23:09:01', 898, '2013-01-10 23:58:51', 5, '*', 1),
(11, 40, 1, 7, 8, 1, 'who', 'com_content', 'Who We Are', 'who', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-01-10 21:04:06', 352, '2013-04-03 02:39:34', 2, '*', 1),
(12, 42, 1, 11, 12, 1, 'what-we-offer', 'com_content', 'What We Offer', 'what-we-offer', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-01-11 00:03:56', 352, '2013-04-03 02:52:24', 0, '*', 1),
(13, 44, 1, 13, 14, 1, 'our-awords', 'com_content', 'Our Awords', 'our-awords', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-01-11 00:04:12', 352, '2013-04-03 03:04:38', 0, '*', 1),
(14, 46, 1, 15, 16, 1, 'company-profile', 'com_content', 'Company Profile', 'company-profile', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-01-11 00:04:32', 352, '2013-04-03 03:32:24', 0, '*', 1),
(16, 57, 1, 17, 40, 1, 'about-us', 'com_content', 'About Us', 'about-us', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-01-18 20:22:28', 0, '0000-00-00 00:00:00', 0, '*', 1),
(17, 59, 1, 83, 84, 1, 'history', 'com_content', 'History', 'history', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-01-18 21:05:10', 0, '0000-00-00 00:00:00', 0, '*', 1),
(18, 63, 1, 41, 42, 1, 'blog', 'com_content', 'Blog', 'blog', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-01-18 23:48:23', 0, '0000-00-00 00:00:00', 271, '*', 1),
(19, 67, 1, 49, 50, 1, 'blog-2-columns', 'com_content', 'Blog 2 Columns', 'blog-2-columns', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-01-19 21:33:24', 0, '0000-00-00 00:00:00', 60, '*', 1),
(20, 72, 1, 51, 52, 1, 'blog-3-columns', 'com_content', 'Blog 3 Columns', 'blog-3-columns', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-01-19 21:53:48', 0, '0000-00-00 00:00:00', 67, '*', 1),
(21, 79, 1, 43, 44, 1, 'blog-1-column', 'com_content', 'Blog 1 Column', 'blog-1-column', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-01-21 23:05:07', 0, '0000-00-00 00:00:00', 122, '*', 1),
(22, 58, 16, 30, 37, 2, 'about-us/our-projects1', 'com_content', 'Our Projects1', 'our-projects1', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-01-22 00:25:10', 352, '2013-04-08 23:08:13', 99, '*', 1),
(23, 84, 22, 31, 32, 3, 'about-us/our-projects1/management', 'com_content', 'Management', 'management', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-01-22 00:25:32', 898, '2013-01-22 02:16:13', 1, '*', 1),
(24, 85, 22, 33, 34, 3, 'about-us/our-projects1/lawyers', 'com_content', 'Lawyers', 'lawyers', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-01-22 00:25:58', 898, '2013-01-22 02:17:14', 0, '*', 1),
(25, 86, 22, 35, 36, 3, 'about-us/our-projects1/support', 'com_content', 'Support', 'support', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-01-22 00:26:10', 898, '2013-01-22 02:17:40', 0, '*', 1),
(26, 77, 16, 38, 39, 2, 'about-us/testimonials', 'com_content', 'What People Say About Us', 'testimonials', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-01-22 02:26:33', 352, '2013-04-09 02:47:02', 95, '*', 1),
(27, 93, 1, 53, 70, 1, 'services', 'com_content', 'Services', 'services', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-01-22 04:57:08', 0, '0000-00-00 00:00:00', 0, '*', 1),
(28, 95, 27, 54, 55, 2, 'services/insurance', 'com_content', 'Insurance', 'insurance', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-01-23 23:24:46', 898, '2013-01-23 23:25:40', 0, '*', 1),
(29, 96, 27, 56, 57, 2, 'services/family', 'com_content', 'Family', 'family', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-01-23 23:25:01', 898, '2013-01-23 23:25:55', 0, '*', 1),
(30, 97, 27, 58, 59, 2, 'services/immigration', 'com_content', 'Immigration', 'immigration', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-01-23 23:25:17', 898, '2013-01-23 23:26:10', 0, '*', 1),
(31, 101, 27, 60, 69, 2, 'services/special-services', 'com_content', 'Special Services', 'special-services', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam porttitor cursus elit. Nullam aliquam sapien ut ante facilisis auctor. Donec accumsan, nisi in vehicula lobortis, erat arcu semper tortor, et interdum leo neque vel justo. Aenean felis eros, porta a scelerisque condimentum, lacinia eu nibh. Sed id velit et risus sollicitudin fermentum. Integer arcu justo, vehicula quis aliquet nec, fermentum eu urna. Fusce a nibh non erat ornare posuere.</p>', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-01-23 23:55:13', 898, '2013-01-24 00:03:22', 191, '*', 1),
(32, 102, 31, 61, 62, 3, 'services/special-services/criminal', 'com_content', 'Criminal', 'criminal', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-01-23 23:56:47', 0, '0000-00-00 00:00:00', 0, '*', 1),
(33, 103, 31, 63, 64, 3, 'services/special-services/employment', 'com_content', 'Employment', 'employment', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-01-23 23:57:02', 0, '0000-00-00 00:00:00', 0, '*', 1),
(34, 104, 31, 65, 66, 3, 'services/special-services/malpractice', 'com_content', 'Malpractice', 'malpractice', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-01-23 23:58:29', 0, '0000-00-00 00:00:00', 0, '*', 1),
(35, 105, 31, 67, 68, 3, 'services/special-services/securities', 'com_content', 'Securities', 'securities', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-01-23 23:59:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(36, 111, 1, 71, 72, 1, 'conditions', 'com_content', 'Conditions', 'conditions', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-01-24 01:31:38', 0, '0000-00-00 00:00:00', 0, '*', 1),
(37, 112, 1, 73, 74, 1, 'business', 'com_content', 'Business', 'business', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-01-24 03:21:28', 0, '0000-00-00 00:00:00', 0, '*', 1),
(38, 113, 1, 75, 76, 1, 'education', 'com_content', 'Education', 'education', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-01-24 03:21:39', 0, '0000-00-00 00:00:00', 0, '*', 1),
(39, 115, 1, 77, 78, 1, 'features', 'com_content', 'Features', 'features', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-01-24 22:29:27', 0, '0000-00-00 00:00:00', 0, '*', 1),
(40, 127, 1, 79, 80, 1, 'terms', 'com_content', 'Terms', 'terms', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-02-05 19:16:31', 0, '0000-00-00 00:00:00', 0, '*', 1),
(41, 35, 1, 5, 6, 1, 'slider', 'com_content', 'Slider', 'slider', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-04-02 20:05:44', 0, '0000-00-00 00:00:00', 0, '*', 1),
(42, 53, 1, 81, 82, 1, 'our-history', 'com_content', 'Our History', 'our-history', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-04-08 22:12:02', 0, '0000-00-00 00:00:00', 0, '*', 1),
(43, 57, 1, 47, 48, 1, 'our-projects', 'com_content', 'Our Projects', 'our-projects', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-04-08 22:33:31', 0, '0000-00-00 00:00:00', 0, '*', 1),
(44, 59, 16, 18, 29, 2, 'about-us/our-portfolio', 'com_content', 'Our Portfolio', 'our-portfolio', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-04-08 23:08:39', 352, '2013-04-08 23:29:21', 154, '*', 1),
(45, 60, 44, 19, 20, 3, 'about-us/our-portfolio/business', 'com_content', 'Business', 'business', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-04-08 23:09:24', 352, '2013-04-08 23:10:51', 99, '*', 1),
(46, 67, 44, 21, 22, 3, 'about-us/our-portfolio/e-commerce', 'com_content', 'e-Commerce', 'e-commerce', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-04-09 00:02:35', 0, '0000-00-00 00:00:00', 99, '*', 1),
(47, 70, 44, 23, 24, 3, 'about-us/our-portfolio/buity', 'com_content', 'Buity', 'buity', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-04-09 00:11:12', 0, '0000-00-00 00:00:00', 99, '*', 1),
(48, 72, 44, 25, 26, 3, 'about-us/our-portfolio/design', 'com_content', 'Design', 'design', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-04-09 02:12:03', 0, '0000-00-00 00:00:00', 99, '*', 1),
(49, 75, 44, 27, 28, 3, 'about-us/our-portfolio/real-estate', 'com_content', 'Real Estate', 'real-estate', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-04-09 02:23:17', 0, '0000-00-00 00:00:00', 99, '*', 1),
(50, 78, 1, 95, 104, 1, 'our-services', 'com_content', 'Our Services', 'our-services', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-04-09 19:27:00', 0, '0000-00-00 00:00:00', 0, '*', 1),
(51, 79, 50, 96, 97, 2, 'our-services/designing-services', 'com_content', 'Designing Services', 'designing-services', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-04-09 19:27:29', 352, '2013-04-09 19:27:46', 0, '*', 1),
(52, 80, 50, 98, 99, 2, 'our-services/development-services', 'com_content', 'Development Services', 'development-services', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-04-09 19:28:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(53, 81, 50, 100, 101, 2, 'our-services/hosting-services', 'com_content', 'Hosting Services', 'hosting-services', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-04-09 19:28:12', 0, '0000-00-00 00:00:00', 0, '*', 1),
(54, 82, 50, 102, 103, 2, 'our-services/seo-services', 'com_content', 'SEO Services', 'seo-services', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-04-09 19:28:27', 0, '0000-00-00 00:00:00', 0, '*', 1),
(55, 88, 1, 105, 106, 1, 'our-business', 'com_content', 'Our Business', 'our-business', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-04-09 22:25:23', 0, '0000-00-00 00:00:00', 0, '*', 1),
(56, 92, 1, 107, 108, 1, 'item-features', 'com_content', 'Item Features', 'item-features', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 518, '2013-04-09 23:01:07', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__contact_details`
--

DROP TABLE IF EXISTS `#__contact_details`;
CREATE TABLE IF NOT EXISTS `#__contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` mediumtext COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#__contact_details`
--

INSERT INTO `#__contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`, `version`, `hits`) VALUES
(1, 'Contact Us', 'contact-us', 'site administrator', '17600 Yonge Biggest St,', 'Toronto', 'Ontario', 'CA', 'L3Y 4Z1', '1 800 987 6543', '1 800 987 6543', '<p><strong>Donec in urna lorem, vel placerat sem.</strong></p>\r\n<p>Vivamus auctor justo ac ipsum suscipit sed pulvinar quam porttitor. Pellentesque blandit condimentum dapibus. Aliquam tempus vulputate leo id pulvinar. Proin ultrices tincidunt sem, sit amet congue felis imperdiet interdum. Duis in leo eros, vel luctus erat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet ante et mauris vestibulum dignissim. Fusce quis bibendum lorem. Integer venenatis aliquam justo quis varius.</p>\r\n<div id="contact_map" class="contact_map">{mosmap height=''358'' }</div>', '', 'email@sitename.org', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"hide","show_contact_list":"1","presentation_style":"plain","show_tags":"","show_name":"0","show_position":"0","show_email":"1","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"0","show_telephone":"1","show_mobile":"0","show_fax":"1","show_webpage":"0","show_misc":"1","show_image":"0","allow_vcard":"0","show_articles":"0","show_profile":"1","show_links":"0","linka_name":"","linka":false,"linkb_name":"","linkb":false,"linkc_name":"","linkc":false,"linkd_name":"","linkd":false,"linke_name":"","linke":false,"contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 4, 1, '', '', '', '', '', '*', '2013-01-17 22:42:19', 518, '', '2015-03-14 23:27:45', 455, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 11, 58);

-- --------------------------------------------------------

--
-- Table structure for table `#__content`
--

DROP TABLE IF EXISTS `#__content`;
CREATE TABLE IF NOT EXISTS `#__content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=77 ;

--
-- Dumping data for table `#__content`
--

INSERT INTO `#__content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 35, 'Getting Started', 'getting-started', '<p>It''s easy to get started creating your website. Knowing some of the basics will help.</p>\r\n<h3>What is a Content Management System?</h3>\r\n<p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.</p>\r\n<p>In this site, the content is stored in a <em>database</em>. The look and feel are created by a <em>template</em>. The Joomla! software brings together the template and the content to create web pages.</p>\r\n<h3>Site and Administrator</h3>\r\n<p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the "Site Administrator" link on the "User Menu" menu (visible once you login) or by adding /administrator to the end of your domain name.</p>\r\n<p>Log in to the administrator using the username and password created during the installation of Joomla.</p>\r\n<h3>Logging in</h3>\r\n<p>To login to the front end of your site use the login form. Use the user name and password that were created as part of the installation process. Once logged-in you will be able to create and edit articles.</p>\r\n<p>In managing your site, you will be able to create content that only logged-in users are able to see.</p>\r\n<h3>Creating an article</h3>\r\n<p>Once you are logged-in, a new menu will be visible. To create a new article, click on the "Submit Article" link on that menu.</p>\r\n<p>The new article interface gives you a lot of options, but all you need to do is add a title and put something in the content area. To make it easy to find, set the state to published.</p>\r\n<div>You can edit an existing article by clicking on the edit icon (this only displays to users who have the right to edit).</div>\r\n<h3>Template and modules</h3>\r\n<p>The look and feel of your site is controlled by a template. You can change the site name, background colour, highlights colour and more by editing the template options. In the administrator go to the Template Styles and click on My Default Template (Protostar). Most changes will be made on the Options tab.</p>\r\n<p>The boxes around the main content of the site are called modules. You can change the image at the top of the page by editing the Image Module module in the Module Manager.</p>\r\n<h3>Learn more</h3>\r\n<p>There is much more to learn about how to use Joomla! to create the web site you envision. You can learn much more at the <a href="http://docs.joomla.org">Joomla! documentation site</a> and on the<a href="http://forum.joomla.org"> Joomla! forums</a>.</p>', '', 1, 2, '2011-01-01 10:01:00', 518, '', '2012-09-25 05:25:14', 401, 0, '0000-00-00 00:00:00', '2012-09-23 10:01:10', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, '', '', 1, 130, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 51, 'Full support service', 'full-support-service', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris elementum orci at nibh eleifend cursus quis a enim. Pellentesque lacinia, urna sed consectetur aliquam, turpis dui posuere augue, non venenatis sem est sed felis. Vestibulum magna lectus...</p>\r\n', '\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris elementum orci at nibh eleifend cursus quis a enim. Pellentesque lacinia, urna sed consectetur aliquam, turpis dui posuere augue, non venenatis sem est sed felis. Vestibulum magna lectus, ornare non tempus id, auctor sed felis. Vestibulum magna lectus, ornare non tempus id, auctor sed felis. Maecenas vitae eros ut lectus eleifend malesuada nec quis nisl. Nullam hendrerit lacus elit, sit amet sollicitudin mauris. Sed tempus volutpat nisi vel gravida. Suspendisse potenti.</p>', 1, 9, '2013-01-09 02:33:52', 518, '', '2013-09-12 16:11:18', 352, 0, '0000-00-00 00:00:00', '2013-01-09 02:33:52', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/as002048\\/home.1.jpg","float_intro":"none","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"1","link_category":"1","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 19, 2, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(7, 48, 'Think BIG with our company', 'nullam-commodo-interdum', '<p><img class="introico" src="images/sampledata/as002048/ico.news.1.png" />Morbi vulputate tortor nec nibh dapibus nec fringilla leo consequat. Pellentesque nec nulla in mi eleifend posuere aliquam et mauris.</p>\r\n', '\r\n<p>Pellentesque nec mi quam. Vivamus tristique semper orci et aliquet. Ut in nisl nec est eleifend fermentum et eget sem. Sed id justo vel enim iaculis auctor. In luctus semper ligula, vitae tristique est interdum id. Duis neque arcu, varius ac semper et, fermentum hendrerit ipsum. Mauris facilisis dapibus ligula. Morbi at ligula id urna iaculis iaculis eget sit amet orci. Praesent non pellentesque elit. Nunc ut ante nibh. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id diam non erat dignissim vehicula quis non leo. Nam dignissim accumsan lorem. Nulla consectetur scelerisque leo et feugiat. Etiam tortor purus, cursus sed sagittis a, mollis vitae nunc.</p>\r\n<p>Morbi vulputate tortor nec nibh dapibus nec fringilla leo consequat. Pellentesque nec nulla in mi eleifend posuere aliquam et mauris. Maecenas quis arcu lectus. Praesent varius condimentum lacus, id lobortis nibh pellentesque sed. Sed condimentum, mi vel auctor porta, ligula nunc bibendum ligula, non vulputate ipsum massa quis magna. Sed vel rhoncus risus. Sed accumsan diam quis ipsum tempus dictum. Nunc dui odio, venenatis id imperdiet eget, posuere sed elit. Donec risus metus, blandit posuere dictum a, pellentesque nec nisl. Aliquam eu erat in orci sagittis cursus. Nam mollis tincidunt lorem, vitae lacinia purus aliquet eget. Aliquam blandit sapien eu nunc mattis pulvinar. Integer et dui id orci imperdiet dictum. Etiam odio erat, auctor nec tempor ac, aliquam in metus.</p>\r\n<p>Vivamus sed eros facilisis quam tempus rhoncus quis facilisis nunc. Vivamus ac felis ac tortor porttitor placerat a ac lectus. Aliquam aliquet ipsum at neque vestibulum hendrerit. Maecenas luctus lobortis erat ac placerat. Aliquam at nisl lectus, ac malesuada ipsum. Cras vulputate nisl sit amet sapien egestas suscipit. Cras suscipit condimentum nibh, ut pulvinar ipsum malesuada rhoncus.</p>', 1, 10, '2013-01-09 23:14:13', 518, '', '2013-04-05 18:20:19', 352, 0, '0000-00-00 00:00:00', '2013-01-09 23:14:13', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 17, 2, '', '', 1, 10, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 49, 'Honesty, trust and simplicity', 'nullam-commodo-interdum-2', '<p><img class="introico" src="images/sampledata/as002048/ico.news.2.png" />Morbi vulputate tortor nec nibh dapibus nec fringilla leo consequat. Pellentesque nec nulla in mi eleifend posuere aliquam et mauris.</p>\r\n', '\r\n<p>In hac habitasse platea dictumst. Sed nec risus tempor quam porttitor cursus. Quisque aliquam laoreet pharetra. Proin interdum pretium est, sit amet dictum dolor euismod id. Pellentesque id elit mi. Pellentesque nisl ligula, consectetur eget tristique id, auctor blandit enim. Integer ornare, metus nec mollis dapibus, metus felis porta velit, eget ultrices odio tortor a elit. Aliquam rutrum ultricies nisl, commodo facilisis mauris blandit vitae. Suspendisse rutrum dui sodales tortor placerat et varius dolor viverra. Sed ornare eros ac libero feugiat ultrices. In hendrerit, nisl eu placerat varius, massa neque porttitor eros, a rutrum magna mauris vitae tortor.</p>\r\n<p>Morbi dui lacus, rhoncus a vulputate sit amet, dapibus ac ipsum. Cras vehicula convallis sem, sit amet vulputate sapien tincidunt id. Quisque sollicitudin elit vel magna adipiscing ornare. Praesent accumsan mi eget dui dignissim dapibus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Etiam at sapien et purus varius molestie. Suspendisse pharetra, risus eget consectetur condimentum, ante justo congue ipsum, sed lacinia purus lectus ut lectus. Aenean in turpis at elit dapibus feugiat at in quam.</p>', 1, 10, '2013-01-09 23:14:13', 518, '', '2013-04-05 04:00:03', 352, 0, '0000-00-00 00:00:00', '2013-01-09 23:14:13', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(9, 50, 'Intuitive creative vision', 'nullam-commodo-interdum-3', '<p><img class="introico" src="images/sampledata/as002048/ico.news.3.png" />Morbi vulputate tortor nec nibh dapibus nec fringilla leo consequat. Pellentesque nec nulla in mi eleifend posuere aliquam et mauris.</p>\r\n', '\r\n<p>Pellentesque malesuada accumsan ultrices. Integer ac tempus est. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam eu purus sed enim hendrerit fringilla. Pellentesque consectetur arcu vitae dolor lacinia vitae convallis dolor fringilla. Pellentesque tortor lorem, ultricies eget malesuada in, ultrices ut elit. Mauris et diam at massa egestas tristique vitae ac tortor. Aliquam ligula turpis, lacinia vitae porta sed, commodo nec orci. Aenean vel neque nec dolor rutrum pulvinar nec ac nunc. Suspendisse dui mi, egestas vulputate facilisis at, dignissim eget leo. Nullam in justo turpis. Cras venenatis nisi sit amet leo lacinia vel iaculis ligula sodales.</p>\r\n<p>Aenean at imperdiet nulla. Morbi nisi quam, scelerisque et rhoncus vitae, mollis quis odio. Sed vestibulum semper tincidunt. Praesent luctus faucibus feugiat. Phasellus ullamcorper nisl a elit aliquam volutpat. Proin eros metus, vulputate vitae tincidunt nec, auctor in justo. Sed lacinia purus in nibh mollis in hendrerit risus luctus. Morbi dignissim congue facilisis. Integer consequat sagittis lacus at accumsan. Mauris eu metus id velit pellentesque malesuada sit amet non augue. Vestibulum molestie magna volutpat nisl pellentesque condimentum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed sed vulputate diam. Nam hendrerit erat vitae nisi scelerisque id sagittis augue tristique. Duis urna nisl, mollis et rhoncus ac, commodo ut massa.</p>', 1, 10, '2013-01-09 23:14:13', 518, '', '2013-04-05 04:09:31', 352, 0, '0000-00-00 00:00:00', '2013-01-09 23:14:13', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 41, 'Who We Are', 'who-we-are', '<p id="system-readmore"><img src="images/sampledata/as002048/ico.whoweare.png" alt="" /></p>\r\n<h3>Who We Are</h3>\r\n<p>Lorem ipsum dolor sit nunc amet, consectetur adipiscing elit. Donec facilisis consequat tellus a fermentum.</p>\r\n', '\r\n<p>Aliquam ac egestas dui. Vestibulum quis magna eu elit mollis cursus vel nec dolor. Mauris consectetur, elit ac faucibus commodo, ante dolor consectetur libero, at volutpat purus mi non metus. Curabitur pellentesque dapibus nunc, quis auctor urna dignissim sit amet. In hac habitasse platea dictumst. Morbi mauris mauris, porta sed pellentesque eget, eleifend sed libero. Proin ut enim dictum risus dignissim laoreet. Phasellus tempor, nisl sed convallis lobortis, eros mi sagittis eros, et fringilla nunc nunc a dui. Aliquam tincidunt metus at est rutrum rhoncus. Pellentesque eget odio tellus. Phasellus non justo lorem. Maecenas non elementum nunc. Mauris blandit, ligula id tincidunt placerat, erat lorem hendrerit eros, vitae porttitor est elit vel odio.</p>\r\n<p>Praesent sed mi ultrices dolor dignissim ornare. Nam vestibulum aliquam sapien vel venenatis. Sed lobortis ultricies justo, sit amet ultrices metus scelerisque eleifend. Phasellus sagittis nisi non nulla tempus id condimentum sem sodales. Suspendisse a ante quis eros adipiscing aliquam. Donec tempor interdum nisi, at tincidunt risus egestas ut. Cras vitae convallis est. Nam non metus quis turpis commodo ultrices nec sed nisl. Mauris scelerisque ornare purus ut lobortis. Nam iaculis pretium eros sed interdum. In et dui elit, nec congue turpis. Mauris justo quam, rutrum et venenatis sed, facilisis sed nibh. Morbi tempus congue metus, ut accumsan urna aliquet ut. Mauris porttitor dui nec nibh tempus ut commodo nisl ornare. Proin condimentum varius nunc. Pellentesque sem risus, elementum ornare tempor sit amet, semper id orci.</p>', 1, 11, '2013-01-09 23:14:13', 518, '', '2013-04-04 20:57:22', 352, 0, '0000-00-00 00:00:00', '2013-01-09 23:14:13', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"none","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"none","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"0","link_titles":"","show_intro":"0","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 16, 0, '', '', 1, 13, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(11, 43, 'What We Offer', 'what-we-offer', '<p id="system-readmore"><img src="images/sampledata/as002048/ico.whatweoffer.png" alt="" /></p>\r\n<h3>What We Offer</h3>\r\n<p>Lorem ipsum dolor sit nunc amet, consectetur adipiscing elit. Donec facilisis consequat tellus a fermentum.</p>\r\n', '\r\n<p>Aliquam ac egestas dui. Vestibulum quis magna eu elit mollis cursus vel nec dolor. Mauris consectetur, elit ac faucibus commodo, ante dolor consectetur libero, at volutpat purus mi non metus. Curabitur pellentesque dapibus nunc, quis auctor urna dignissim sit amet. In hac habitasse platea dictumst. Morbi mauris mauris, porta sed pellentesque eget, eleifend sed libero. Proin ut enim dictum risus dignissim laoreet. Phasellus tempor, nisl sed convallis lobortis, eros mi sagittis eros, et fringilla nunc nunc a dui. Aliquam tincidunt metus at est rutrum rhoncus. Pellentesque eget odio tellus. Phasellus non justo lorem. Maecenas non elementum nunc. Mauris blandit, ligula id tincidunt placerat, erat lorem hendrerit eros, vitae porttitor est elit vel odio.</p>\r\n<p>Praesent sed mi ultrices dolor dignissim ornare. Nam vestibulum aliquam sapien vel venenatis. Sed lobortis ultricies justo, sit amet ultrices metus scelerisque eleifend. Phasellus sagittis nisi non nulla tempus id condimentum sem sodales. Suspendisse a ante quis eros adipiscing aliquam. Donec tempor interdum nisi, at tincidunt risus egestas ut. Cras vitae convallis est. Nam non metus quis turpis commodo ultrices nec sed nisl. Mauris scelerisque ornare purus ut lobortis. Nam iaculis pretium eros sed interdum. In et dui elit, nec congue turpis. Mauris justo quam, rutrum et venenatis sed, facilisis sed nibh. Morbi tempus congue metus, ut accumsan urna aliquet ut. Mauris porttitor dui nec nibh tempus ut commodo nisl ornare. Proin condimentum varius nunc. Pellentesque sem risus, elementum ornare tempor sit amet, semper id orci.</p>', 1, 12, '2013-01-09 23:14:13', 518, '', '2013-04-04 20:57:50', 352, 0, '0000-00-00 00:00:00', '2013-01-09 23:14:13', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"none","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"none","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"0","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, '', '', 1, 4, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(12, 45, 'Our Awords', 'our-awords', '<p id="system-readmore"><img src="images/sampledata/as002048/ico.ourawords.png" alt="" /></p>\r\n<h3>Our Awords</h3>\r\n<p>Lorem ipsum dolor sit nunc amet, consectetur adipiscing elit. Donec facilisis consequat tellus a fermentum.</p>\r\n', '\r\n<p>Aliquam ac egestas dui. Vestibulum quis magna eu elit mollis cursus vel nec dolor. Mauris consectetur, elit ac faucibus commodo, ante dolor consectetur libero, at volutpat purus mi non metus. Curabitur pellentesque dapibus nunc, quis auctor urna dignissim sit amet. In hac habitasse platea dictumst. Morbi mauris mauris, porta sed pellentesque eget, eleifend sed libero. Proin ut enim dictum risus dignissim laoreet. Phasellus tempor, nisl sed convallis lobortis, eros mi sagittis eros, et fringilla nunc nunc a dui. Aliquam tincidunt metus at est rutrum rhoncus. Pellentesque eget odio tellus. Phasellus non justo lorem. Maecenas non elementum nunc. Mauris blandit, ligula id tincidunt placerat, erat lorem hendrerit eros, vitae porttitor est elit vel odio.</p>\r\n<p>Praesent sed mi ultrices dolor dignissim ornare. Nam vestibulum aliquam sapien vel venenatis. Sed lobortis ultricies justo, sit amet ultrices metus scelerisque eleifend. Phasellus sagittis nisi non nulla tempus id condimentum sem sodales. Suspendisse a ante quis eros adipiscing aliquam. Donec tempor interdum nisi, at tincidunt risus egestas ut. Cras vitae convallis est. Nam non metus quis turpis commodo ultrices nec sed nisl. Mauris scelerisque ornare purus ut lobortis. Nam iaculis pretium eros sed interdum. In et dui elit, nec congue turpis. Mauris justo quam, rutrum et venenatis sed, facilisis sed nibh. Morbi tempus congue metus, ut accumsan urna aliquet ut. Mauris porttitor dui nec nibh tempus ut commodo nisl ornare. Proin condimentum varius nunc. Pellentesque sem risus, elementum ornare tempor sit amet, semper id orci.</p>', 1, 13, '2013-01-09 23:14:13', 518, '', '2013-04-04 20:58:18', 352, 0, '0000-00-00 00:00:00', '2013-01-09 23:14:13', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"none","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"none","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"0","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(13, 47, 'Company Profile', 'company-profile', '<p id="system-readmore"><img src="images/sampledata/as002048/ico.companyprofile.png" alt="" /></p>\r\n<h3>Company Profile</h3>\r\n<p>Lorem ipsum dolor sit nunc amet, consectetur adipiscing elit. Donec facilisis consequat tellus a fermentum.</p>\r\n', '\r\n<p>Aliquam ac egestas dui. Vestibulum quis magna eu elit mollis cursus vel nec dolor. Mauris consectetur, elit ac faucibus commodo, ante dolor consectetur libero, at volutpat purus mi non metus. Curabitur pellentesque dapibus nunc, quis auctor urna dignissim sit amet. In hac habitasse platea dictumst. Morbi mauris mauris, porta sed pellentesque eget, eleifend sed libero. Proin ut enim dictum risus dignissim laoreet. Phasellus tempor, nisl sed convallis lobortis, eros mi sagittis eros, et fringilla nunc nunc a dui. Aliquam tincidunt metus at est rutrum rhoncus. Pellentesque eget odio tellus. Phasellus non justo lorem. Maecenas non elementum nunc. Mauris blandit, ligula id tincidunt placerat, erat lorem hendrerit eros, vitae porttitor est elit vel odio.</p>\r\n<p>Praesent sed mi ultrices dolor dignissim ornare. Nam vestibulum aliquam sapien vel venenatis. Sed lobortis ultricies justo, sit amet ultrices metus scelerisque eleifend. Phasellus sagittis nisi non nulla tempus id condimentum sem sodales. Suspendisse a ante quis eros adipiscing aliquam. Donec tempor interdum nisi, at tincidunt risus egestas ut. Cras vitae convallis est. Nam non metus quis turpis commodo ultrices nec sed nisl. Mauris scelerisque ornare purus ut lobortis. Nam iaculis pretium eros sed interdum. In et dui elit, nec congue turpis. Mauris justo quam, rutrum et venenatis sed, facilisis sed nibh. Morbi tempus congue metus, ut accumsan urna aliquet ut. Mauris porttitor dui nec nibh tempus ut commodo nisl ornare. Proin condimentum varius nunc. Pellentesque sem risus, elementum ornare tempor sit amet, semper id orci.</p>', 1, 14, '2013-01-09 23:14:13', 518, '', '2013-04-04 20:58:41', 352, 0, '0000-00-00 00:00:00', '2013-01-09 23:14:13', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"none","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"left","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"0","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 0, '', '', 1, 7, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(14, 58, 'Who We Are?', 'who-we-are', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vitae mi id leo porta lobortis. Suspendisse egestas ligula ante. Aliquam auctor laoreet dolor, quis eleifend nunc mollis at. Quisque vulputate libero nec mauris mattis ut mollis enim imperdiet. Vivamus interdum egestas mi sed gravida. Suspendisse molestie tincidunt consequat. Cras tincidunt tempor imperdiet. Phasellus eget ligula id diam lobortis commodo non vitae mi. Nam dapibus est at metus tristique viverra. Nulla interdum dapibus dignissim. Donec non lorem est, in pharetra odio. Sed feugiat, massa eu malesuada mollis, mauris dolor sodales tortor, quis iaculis dolor tellus vel libero. Phasellus venenatis convallis nisl sit amet commodo. Mauris ornare est elit. Maecenas molestie mauris sit amet nisl molestie et fermentum est consequat. Vivamus vehicula.</p>', '', 1, 16, '2013-01-18 20:38:19', 518, '', '2013-04-08 22:21:25', 352, 0, '0000-00-00 00:00:00', '2013-01-18 20:38:19', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"left","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/as002048\\/about.1.jpg","float_fulltext":"left","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, '', '', 1, 214, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(15, 54, '2010', 'nullam-commodo-interdum', '<h3>Pellentesque nec mi quam. Vivamus tristique semper orci</h3>\r\n<p>Pellentesque nec mi quam. Vivamus tristique semper orci et aliquet. Ut enim risus, pharetra eget luctus tincidunt, molestie.</p>', '', 1, 42, '2013-01-09 23:14:13', 518, '', '2013-04-09 02:58:49', 352, 0, '0000-00-00 00:00:00', '2013-01-09 23:14:13', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 9, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(16, 55, '2011', 'nullam-commodo-interdum-2', '<h3>Ivamus adipiscing consectetur magna quis vulputate.</h3>\r\n<p>Nam convallis, quam et porttitor dictum, odio metus sodales quam, eget tincidunt ante elit et velit. Nullam ornare.</p>', '', 1, 42, '2013-01-09 23:14:13', 518, '', '2013-04-09 02:59:19', 352, 0, '0000-00-00 00:00:00', '2013-01-09 23:14:13', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(17, 56, '2012', 'nullam-commodo-interdum-3', '<h3>Ut porta tellus ut metus porta dapibus lorem quis.</h3>\r\n<p>Sed sit amet ligula est, vel mattis ipsum. Quisque gravida mauris ut augue mattis.</p>', '', 1, 42, '2013-01-09 23:14:13', 518, '', '2013-04-09 03:01:11', 352, 0, '0000-00-00 00:00:00', '2013-01-09 23:14:13', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(18, 98, 'Cum sociis natoque', 'cum-sociis-natoque', '<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam malesuada, felis nec facilisis vestibulum, erat tortor vestibulum justo, quis fringilla quam eros non eros. Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis nulla vel eros dictum egestas sit amet id nisl. Duis eros risus, scelerisque eget gravida vitae, mattis a nisl. Etiam fermentum convallis diam sit amet euismod. Proin euismod tortor ac tellus congue scelerisque pretium enim volutpat. Sed ut eros ac diam dapibus commodo. Cras non dolor sit amet erat condimentum semper vitae eu augue. Nunc id leo elit, vitae varius orci. Sed pretium blandit suscipit. Phasellus tempus elementum lacinia. Nunc id leo.</p>\r\n<p>Aenean nec tortor erat. Nam metus sem, hendrerit rhoncus bibendum sit amet, vulputate et urna. Curabitur ac molestie nunc. Proin aliquam adipiscing quam eget auctor. In facilisis porta dui, sit amet scelerisque elit eleifend vel. Curabitur eget tortor in sapien tincidunt auctor. In hac habitasse platea dictumst. Integer et ante arcu. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut in velit est. Integer commodo sapien at metus fermentum sagittis. Duis pretium urna sit amet libero elementum non rutrum nulla pharetra. Aliquam erat volutpat. Curabitur dolor massa. Donec ac est ut mauris molestie mattis non non sapien. Nullam fringilla sapien vel nulla scelerisque consequat. Donec sed tellus dolor, vitae fermentum tellus. Praesent sollicitudin, dolor eu elementum volutpat, ipsum erat pretium enim, sit amet aliquet nulla nisl laoreet tellus. Nulla ac tincidunt diam. Suspendisse nisl quam, pulvinar sed hendrerit at, venenatis ac risus. Donec sodales tincidunt laoreet.</p>\r\n', '\r\n<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam malesuada, felis nec facilisis vestibulum, erat tortor vestibulum justo, quis fringilla quam eros non eros. Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis nulla vel eros dictum egestas sit amet id nisl. Duis eros risus, scelerisque eget gravida vitae, mattis a nisl. Etiam fermentum convallis diam sit amet euismod. Proin euismod tortor ac tellus congue scelerisque pretium enim volutpat. Sed ut eros ac diam dapibus commodo. Cras non dolor sit amet erat condimentum semper vitae eu augue. Nunc id leo elit, vitae varius orci. Sed pretium blandit suscipit. Phasellus tempus elementum lacinia. Nunc id leo bibendum elit cursus lobortis.</p>\r\n<p>Aenean nec tortor erat. Nam metus sem, hendrerit rhoncus bibendum sit amet, vulputate et urna. Curabitur ac molestie nunc. Proin aliquam adipiscing quam eget auctor. In facilisis porta dui, sit amet scelerisque elit eleifend vel. Curabitur eget tortor.</p>\r\n<p><img class="right frame shady" src="images/sampledata/as002048/blog/img.blog.1.jpg" width="220" />Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut in velit est. Integer commodo sapien at metus fermentum sagittis. Duis pretium urna sit amet libero elementum non rutrum nulla pharetra. Aliquam erat volutpat. Curabitur dolor massa. Donec ac est ut mauris molestie mattis non non sapien. Nullam fringilla sapien vel nulla scelerisque consequat. Donec sed tellus dolor, vitae fermentum tellus. Praesent sollicitudin, dolor eu elementum volutpat, ipsum erat pretium enim, sit amet aliquet nulla nisl laoreet tellus. Nulla ac tincidunt diam. Suspendisse nisl quam, pulvinar sed hendrerit at, venenatis ac risus. Donec sodales tincidunt laoreet. Quisque eros metus, ultrices dignissim accumsan sed, ultricies eu orci. Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis nulla vel eros dictum egestas sit amet id nisl. Duis eros risus, scelerisque eget gravida vitae, mattis a nisl. Etiam fermentum convallis diam sit amet euismod. Proin euismod tortor ac tellus congue scelerisque pretium enim volutpat. Sed ut eros ac diam dapibus commodo. Cras non dolor sit amet erat condimentum semper vitae eu augue. Nunc id leo elit, vitae varius orci. Sed pretium blandit suscipit. Phasellus tempus elementum lacinia. Nunc id leo bibendum.</p>', 1, 18, '2013-01-18 23:53:43', 518, '', '2013-09-12 01:04:24', 352, 0, '0000-00-00 00:00:00', '2013-01-18 23:53:43', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/as002048\\/blog\\/img.blog.1.jpg","float_intro":"left","image_intro_alt":"Joomla Template","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/as002048\\/blog\\/full.blog.1.jpg","float_fulltext":"left","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 9, 2, '', '', 1, 33, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(19, 65, 'Etiam fermentum', 'cum-sociis-natoque-2', '<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam malesuada, felis nec facilisis vestibulum, erat tortor vestibulum justo, quis fringilla quam eros non eros. Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis nulla vel eros dictum egestas sit amet id nisl. Duis eros risus, scelerisque eget gravida vitae, mattis a nisl. Etiam fermentum convallis diam sit amet euismod. Proin euismod tortor ac tellus congue scelerisque pretium enim volutpat. Sed ut eros ac diam dapibus commodo. Cras non dolor sit amet erat condimentum semper vitae eu augue. Nunc id leo elit, vitae varius orci. Sed pretium blandit suscipit. Phasellus tempus elementum lacinia. Nunc id leo bibendum elit cursus.</p>\r\n', '\r\n<ul>\r\n<li>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</li>\r\n<li>Nullam malesuada, felis nec facilisis vestibulum, erat tortor vestibulum justo.</li>\r\n<li>Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Lorem ipsum dolor sit amet.</li>\r\n<li>Etiam quis nulla vel eros dictum egestas sit amet id nisl. Duis eros risus.</li>\r\n<li>Proin euismod tortor ac tellus congue scelerisque pretium enim volutpat.</li>\r\n</ul>\r\n<p>Aenean nec tortor erat. Nam metus sem, hendrerit rhoncus bibendum sit amet, vulputate et urna. Curabitur ac molestie nunc. Proin aliquam adipiscing quam eget auctor. In facilisis porta dui, sit amet scelerisque elit eleifend vel. Curabitur eget tortor in sapien tincidunt auctor. In hac habitasse platea dictumst. Integer et ante arcu. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut in velit est. Integer commodo sapien at metus fermentum sagittis. Duis pretium urna sit amet libero elementum non rutrum nulla pharetra. Aliquam erat volutpat. Curabitur dolor massa. Donec ac est ut mauris molestie mattis non non sapien. Nullam fringilla sapien vel nulla scelerisque consequat. Donec sed tellus dolor, vitae fermentum tellus. Praesent sollicitudin, dolor eu elementum volutpat, ipsum erat pretium enim, sit amet aliquet nulla nisl laoreet tellus. Nulla ac tincidunt diam. Suspendisse nisl quam, pulvinar sed hendrerit at, venenatis ac risus. Donec sodales tincidunt laoreet. Quisque eros metus, ultrices dignissim accumsan sed, ultricies eu orci.</p>', 1, 18, '2013-01-18 23:53:43', 518, '', '2013-01-21 21:31:14', 898, 0, '0000-00-00 00:00:00', '2013-01-18 23:53:43', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/as002048\\/blog\\/img.blog.2.jpg","float_intro":"left","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/as002048\\/blog\\/full.blog.2.jpg","float_fulltext":"none","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 1, '', '', 1, 25, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(20, 66, 'Proin aliquam', 'cum-sociis-natoque-3', '<p>Proin euismod tortor ac tellus congue scelerisque pretium enim volutpat. Sed ut eros ac diam dapibus commodo. Cras non dolor sit amet erat condimentum semper vitae eu augue. Nunc id leo elit, vitae varius orci. Sed pretium blandit suscipit. Phasellus tempus elementum lacinia. Nunc id leo bibendum elit cursus lobortis. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam malesuada, felis nec facilisis vestibulum, erat tortor vestibulum justo, quis fringilla quam eros non eros. Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis nulla vel eros dictum egestas sit amet id nisl. Duis eros risus, scelerisque eget gravida vitae, mattis a nisl. Etiam fermentum convallis diam.</p>\r\n', '\r\n<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam malesuada, felis nec facilisis vestibulum, erat tortor vestibulum justo, quis fringilla quam eros non eros. Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis nulla vel eros dictum egestas sit amet id nisl. Duis eros risus, scelerisque eget gravida vitae, mattis a nisl. Etiam fermentum convallis diam sit amet euismod. Proin euismod tortor ac tellus congue scelerisque pretium enim volutpat. Sed ut eros ac diam dapibus commodo. Cras non dolor sit amet erat condimentum semper vitae eu augue. Nunc id leo elit, vitae varius orci. Sed pretium blandit suscipit. Phasellus tempus elementum lacinia. Nunc id leo bibendum elit cursus lobortis. Aenean nec tortor erat. Nam metus sem, hendrerit rhoncus bibendum sit amet, vulputate et urna. Curabitur ac molestie nunc. Proin aliquam adipiscing quam eget auctor. In facilisis porta dui, sit amet scelerisque elit eleifend vel.</p>\r\n<p>Curabitur eget tortor in sapien tincidunt auctor. In hac habitasse platea dictumst. Integer et ante arcu. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut in velit est. Integer commodo sapien at metus fermentum sagittis. Duis pretium urna sit amet libero elementum non rutrum nulla pharetra. Aliquam erat volutpat. Curabitur dolor massa. Donec ac est ut mauris molestie mattis non non sapien. Nullam fringilla sapien vel nulla scelerisque consequat. Donec sed tellus dolor, vitae fermentum tellus. Praesent sollicitudin, dolor eu elementum volutpat, ipsum erat pretium enim, sit amet aliquet nulla nisl laoreet tellus. Nulla ac tincidunt diam. Suspendisse nisl quam, pulvinar sed hendrerit at, venenatis ac risus. Donec sodales tincidunt laoreet. Quisque eros metus, ultrices dignissim accumsan. Phasellus tempus elementum lacinia. Nunc id leo bibendum elit cursus lobortis. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam malesuada, felis nec facilisis vestibulum, erat tortor vestibulum justo, quis fringilla quam eros non eros. Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis nulla vel eros dictum egestas sit amet id nisl. Duis eros risus, scelerisque eget gravida vitae, mattis a nisl. Etiam fermentum convallis diam erat tortor vestibulum justo, quis fringilla quam eros non eros. Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis nulla vel eros dictum egestas sit amet id nisl. <br /><br /> Nullam malesuada, felis nec facilisis vestibulum, erat tortor vestibulum justo, quis fringilla quam eros non eros. Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis nulla vel eros dictum egestas sit amet id nisl. Duis eros risus, scelerisque eget gravida vitae, mattis a nisl. Etiam fermentum convallis diam sit amet euismod. Proin euismod tortor ac tellus congue scelerisque pretium enim volutpat. Sed ut eros ac diam dapibus commodo. Cras non dolor sit amet erat condimentum semper vitae eu augue. Nunc id leo elit, vitae varius orci. Sed pretium blandit suscipit. Phasellus tempus elementum lacinia. Nunc id leo bibendum elit cursus lobortis. Aenean nec tortor erat. Nam metus sem, hendrerit rhoncus bibendum sit amet, vulputate et urna. Curabitur ac molestie nunc.</p>', 1, 18, '2013-01-18 23:53:43', 518, '', '2013-02-04 20:23:40', 898, 0, '0000-00-00 00:00:00', '2013-01-18 23:53:43', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/as002048\\/blog\\/img.blog.3.jpg","float_intro":"left","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/as002048\\/blog\\/full.blog.3.jpg","float_fulltext":"left","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 0, '', '', 1, 9, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `#__content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(21, 68, 'Aenean nec tortor', 'cum-sociis-natoque', '<p>Duis eros risus, scelerisque eget gravida vitae, mattis a nisl. Etiam fermentum convallis diam sit amet euismod. Proin euismod tortor ac tellus congue scelerisque pretium enim volutpat. Sed ut eros ac diam dapibus commodo. Cras non dolor sit amet erat condimentum semper vitae eu augue. Nunc id leo elit, vitae varius orci. Sed pretium blandit suscipit. Phasellus tempus elementum lacinia. Nunc id leo bibendum elit cursus lobortis.Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam malesuada, felis nec facilisis vestibulum, erat tortor vestibulum justo, quis fringilla quam eros non eros. Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis nulla vel eros dictum egestas sit ametid.</p>\r\n', '\r\n<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam malesuada, felis nec facilisis vestibulum, erat tortor vestibulum justo, quis fringilla quam eros non eros. Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis nulla vel eros dictum egestas sit amet id nisl. Duis eros risus, scelerisque eget gravida vitae, mattis a nisl. Etiam fermentum convallis diam sit amet euismod. Proin euismod tortor ac tellus congue scelerisque pretium enim volutpat. Sed ut eros ac diam dapibus commodo. Cras non dolor sit amet erat condimentum semper vitae eu augue. Nunc id leo elit, vitae varius orci. Sed pretium blandit suscipit. Phasellus tempus elementum lacinia. Nunc id leo bibendum elit cursus lobortis.</p>\r\n<p>Aenean nec tortor erat. Nam metus sem, hendrerit rhoncus bibendum sit amet, vulputate et urna. Curabitur ac molestie nunc. Proin aliquam adipiscing quam eget auctor. In facilisis porta dui, sit amet scelerisque elit eleifend vel. Curabitur eget tortor in sapien tincidunt auctor. In hac habitasse platea dictumst. Integer et ante arcu. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut in velit est. Integer commodo sapien at metus fermentum sagittis. Duis pretium urna sit amet libero elementum non rutrum nulla pharetra. Aliquam erat volutpat. Curabitur dolor massa. Donec ac est ut mauris molestie mattis non non sapien. Nullam fringilla sapien vel nulla scelerisque consequat. Donec sed tellus dolor, vitae fermentum tellus. Praesent sollicitudin, dolor eu elementum volutpat, ipsum erat pretium enim, sit amet aliquet nulla nisl laoreet tellus. Nulla ac tincidunt diam. Suspendisse nisl quam, pulvinar sed hendrerit at, venenatis ac risus. Donec sodales tincidunt laoreet. Quisque eros metus, ultrices dignissim accumsan sed, ultricies eu orci. Cras non dolor sit amet erat condimentum semper vitae eu augue. Nunc id leo elit, vitae varius orci. Sed pretium blandit suscipit. Phasellus tempus elementum lacinia. Nunc id leo bibendum elit cursus lobortis.Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam malesuada, felis nec facilisis vestibulum, erat tortor vestibulum justo, quis fringilla quam eros non eros. Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Lorem ipsum dolor sit amet. Phasellus tempus elementum lacinia. Nunc id leo bibendum elit cursus lobortis.</p>', 1, 19, '2013-01-18 23:53:43', 518, '', '2013-02-04 21:00:00', 898, 0, '0000-00-00 00:00:00', '2013-01-18 23:53:43', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/as002048\\/blog\\/img.blog.4.jpg","float_intro":"left","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/as002048\\/blog\\/full.blog.7.jpg","float_fulltext":"none","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 3, '', '', 1, 15, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(22, 69, 'Duis eros risus', 'cum-sociis-natoque-2', '<p>Etiam fermentum convallis diam sit amet euismod. Proin euismod tortor ac tellus congue scelerisque pretium enim volutpat. Sed ut eros ac diam dapibus commodo. Nullam malesuada, felis nec facilisis vestibulum, erat tortor vestibulum justo, quis fringilla quam eros non eros. Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Duis eros risus, scelerisque eget gravida vitae, mattis a nisl. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis nulla vel eros dictum egestas sit amet id nisl. Cras non dolor sit amet erat condimentum semper vitae eu augue. Nunc id leo elit, vitae varius orci. Sed pretium blandit suscipit. Phasellus tempus elementum lacinia. Nunc id leo bibendum elit cursus lobortis.Cum sociis natoque penatibus et magnis dis parturient montes.</p>\r\n', '\r\n<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam malesuada, felis nec facilisis vestibulum, erat tortor vestibulum justo, quis fringilla quam eros non eros. Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis nulla vel eros dictum egestas sit amet id nisl. Duis eros risus, scelerisque eget gravida vitae, mattis a nisl. Etiam fermentum convallis diam sit amet euismod. Proin euismod tortor ac tellus congue scelerisque pretium enim volutpat. Sed ut eros ac diam dapibus commodo. Cras non dolor sit amet erat condimentum semper vitae eu augue. Nunc id leo elit, vitae varius orci. Sed pretium blandit suscipit. Phasellus tempus elementum lacinia. Nunc id leo bibendum elit cursus lobortis.</p>\r\n<p>Aenean nec tortor erat. Nam metus sem, hendrerit rhoncus bibendum sit amet, vulputate et urna. Curabitur ac molestie nunc. Proin aliquam adipiscing quam eget auctor. In facilisis porta dui, sit amet scelerisque elit eleifend vel. Curabitur eget tortor in sapien tincidunt auctor. In hac habitasse platea dictumst. Integer et ante arcu. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut in velit est. Integer commodo sapien at metus fermentum sagittis. Duis pretium urna sit amet libero elementum non rutrum nulla pharetra. Aliquam erat volutpat. Curabitur dolor massa. Donec ac est ut mauris molestie mattis non non sapien. Nullam fringilla sapien vel nulla scelerisque consequat.<br /><br /><img class="right" src="images/sampledata/as002048/blog/img.blog.6.jpg" width="220" /> Donec sed tellus dolor, vitae fermentum tellus. Praesent sollicitudin, dolor eu elementum volutpat, ipsum erat pretium enim, sit amet aliquet nulla nisl laoreet tellus. Nulla ac tincidunt diam. Suspendisse nisl quam, pulvinar sed hendrerit at, venenatis ac risus. Donec sodales tincidunt laoreet. Quisque eros metus, ultrices dignissim. Etiam fermentum convallis diam sit amet euismod. Proin euismod tortor ac tellus congue scelerisque pretium enim volutpat. Sed ut eros ac diam dapibus commodo. Nullam malesuada, felis nec facilisis vestibulum, erat tortor vestibulum justo, quis fringilla quam eros non eros. Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Duis eros risus, scelerisque eget gravida vitae, mattis a nisl. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis nulla vel eros dictum egestas sit amet id nisl. Cras non dolor sit amet erat condimentum semper vitae eu augue. Nunc id leo elit, vitae varius orci. Sed pretium blandit suscipit. Phasellus tempus elementum lacinia. Nunc id leo bibendum elit cursus lobortis.Cum sociis natoque penatibus et magnis dis parturient montes. Proin euismod tortor ac tellus congue scelerisque pretium enim volutpat.</p>', 1, 19, '2013-01-18 23:53:43', 518, '', '2013-02-04 21:06:13', 898, 0, '0000-00-00 00:00:00', '2013-01-18 23:53:43', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/as002048\\/blog\\/img.blog.5.jpg","float_intro":"left","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/as002048\\/blog\\/full.blog.5.jpg","float_fulltext":"left","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 10, 2, '', '', 1, 14, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(23, 70, 'Nunc idleo elit vitae', 'cum-sociis-natoque-3', '<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam malesuada, felis nec facilisis vestibulum, erat tortor vestibulum justo, quis fringilla quam eros non eros. Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis nulla vel eros dictum egestas sit amet id nisl. Duis eros risus, scelerisque eget gravida vitae, mattis a nisl. Etiam fermentum convallis diam sit amet euismod. Proin euismod tortor ac tellus congue scelerisque pretium enim volutpat. Sed ut eros ac diam dapibus commodo. Cras non dolor sit amet erat condimentum semper vitae eu augue. Nunc id leo elit, vitae varius orci. Sed pretium blandit suscipit. Phasellus tempus elementum lacinia. Nunc id leo bibendum elit.</p>\r\n', '\r\n<ul>\r\n<li>Cum sociis natoque penatibus et magnis dis parturient montes.</li>\r\n<li>Nullam malesuada, felis nec facilisis vestibulum, erat tortor.</li>\r\n<li>Donec sem mi, pellentesque in ultricies a, viverra sed ligula.</li>\r\n<li>Lorem ipsum dolor sit amet. Duis eros risus.</li>\r\n<li>Etiam quis nulla vel eros dictum egestas sit amet id nisl.</li>\r\n<li>Nullam malesuada, felis nec facilisis vestibulum, erat tortor.</li>\r\n<li>Donec sem mi, pellentesque in ultricies a, viverra sed ligula.</li>\r\n<li>Proin euismod tortor ac tellus congue scelerisque pretium.</li>\r\n</ul>\r\n<p>Aenean nec tortor erat. Nam metus sem, hendrerit rhoncus bibendum sit amet, vulputate et urna. Curabitur ac molestie nunc. Proin aliquam adipiscing quam eget auctor. In facilisis porta dui, sit amet scelerisque elit eleifend vel. Curabitur eget tortor in sapien tincidunt auctor. In hac habitasse platea dictumst. Integer et ante arcu. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut in velit est. Integer commodo sapien at metus fermentum sagittis. Duis pretium urna sit amet libero elementum non rutrum nulla pharetra. Aliquam erat volutpat. Curabitur dolor massa. Donec ac est ut mauris molestie mattis non non sapien. Nullam fringilla sapien vel nulla scelerisque consequat. Donec sed tellus dolor, vitae fermentum tellus. Praesent sollicitudin, dolor eu elementum volutpat, ipsum erat pretium enim, sit amet aliquet nulla nisl laoreet tellus. Nulla ac tincidunt diam. Suspendisse nisl quam, pulvinar sed hendrerit at, venenatis ac risus. Donec sodales tincidunt laoreet. Quisque eros metus, ultrices dignissim accumsan sed, ultricies eu orci.</p>', 1, 19, '2013-01-18 23:53:43', 518, '', '2013-02-04 20:36:07', 898, 0, '0000-00-00 00:00:00', '2013-01-18 23:53:43', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/as002048\\/blog\\/img.blog.7.jpg","float_intro":"left","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/as002048\\/blog\\/full.blog.6.jpg","float_fulltext":"none","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 1, '', '', 1, 7, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(24, 71, 'Phasellus tempus', 'cum-sociis-natoque-4', '<p>Proin euismod tortor ac tellus congue scelerisque pretium enim volutpat. Sed ut eros ac diam dapibus commodo. Cras non dolor sit amet erat condimentum semper vitae eu augue. Nunc id leo elit, vitae varius orci. Sed pretium blandit suscipit. Phasellus tempus elementum lacinia. Nunc id leo bibendum elit cursus lobortis. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam malesuada, felis nec facilisis vestibulum, erat tortor vestibulum justo, quis fringilla quam eros non eros. Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis nulla vel eros dictum egestas sit amet id nisl. Duis eros risus, scelerisque eget gravida vitae, mattis a nisl. Etiam fermentum convallis diam.</p>\r\n', '\r\n<p>Aenean nec tortor erat. Nam metus sem, hendrerit rhoncus bibendum sit amet, vulputate et urna. Curabitur ac molestie nunc. Proin aliquam adipiscing quam eget auctor. In facilisis porta dui, sit amet scelerisque elit eleifend vel. Curabitur eget tortor in sapien tincidunt auctor. In hac habitasse platea dictumst. Integer et ante arcu. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut in velit est. Integer commodo sapien at metus fermentum sagittis. Duis pretium urna sit amet libero elementum non rutrum nulla pharetra. Aliquam erat volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur dolor massa. Donec ac est ut mauris molestie mattis non non sapien. Nullam fringilla sapien vel nulla scelerisque consequat. Donec sed tellus dolor, vitae fermentum tellus. Praesent sollicitudin, dolor eu elementum volutpat, ipsum erat pretium enim, sit amet aliquet nulla nisl laoreet tellus. Nulla ac tincidunt diam. Suspendisse nisl quam, pulvinar sed hendrerit at, venenatis ac risus. Cras non dolor sit amet erat condimentum semper vitae eu augue. Donec sodales tincidunt laoreet. Quisque eros metus, ultrices dignissim accumsan. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam malesuada, felis nec facilisis vestibulum, erat tortor.</p>\r\n<p><img class="right" src="images/sampledata/as002048/blog/img.blog.7.jpg" width="220" />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur dolor massa. Donec ac est ut mauris molestie mattis non non sapien. Nullam fringilla sapien vel nulla scelerisque consequat. Donec sed tellus dolor, vitae fermentum tellus. Praesent sollicitudin, dolor eu elementum volutpat, ipsum erat pretium enim, sit amet aliquet nulla nisl laoreet tellus. Nulla ac tincidunt diam. Suspendisse nisl quam, pulvinar sed hendrerit at, venenatis ac risus. Cras non dolor sit amet erat condimentum semper vitae eu augue. Donec sodales tincidunt laoreet. Quisque eros metus, ultrices dignissim accumsan. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam malesuada, felis nec facilisis vestibulum, erat tortor vestibulum justo, quis fringilla quam eros non eros. Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Aenean nec tortor erat. Nam metus sem, hendrerit rhoncus bibendum sit amet, vulputate et urna. Curabitur ac molestie nunc. Proin aliquam adipiscing quam eget auctor. In facilisis porta dui, sit amet scelerisque elit eleifend vel. Curabitur eget tortor in sapien tincidunt auctor. In hac habitasse platea dictumst. Integer et ante arcu. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut in velit est. Integer commodo sapien at metus fermentum sagittis.</p>\r\n<div class="product-separator"> </div>', 1, 19, '2013-01-18 23:53:43', 518, '', '2013-02-04 21:11:48', 898, 0, '0000-00-00 00:00:00', '2013-01-18 23:53:43', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/as002048\\/blog\\/img.blog.8.jpg","float_intro":"left","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/as002048\\/blog\\/full.blog.10.jpg","float_fulltext":"none","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 0, '', '', 1, 12, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(25, 73, 'Aenean nec tortor erat', 'cum-sociis-natoque-4', '<p>Duis eros risus, scelerisque eget gravida vitae, mattis a nisl. Etiam fermentum convallis diam sit amet euismod. Proin euismod tortor ac tellus congue scelerisque pretium enim volutpat. Sed ut eros ac diam dapibus commodo. Cras non dolor sit amet erat condimentum semper vitae eu augue. Nunc id leo elit, vitae varius.</p>\r\n', '\r\n<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam malesuada, felis nec facilisis vestibulum, erat tortor vestibulum justo, quis fringilla quam eros non eros. Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis nulla vel eros dictum egestas sit amet id nisl. Duis eros risus, scelerisque eget gravida vitae, mattis a nisl. Etiam fermentum convallis diam sit amet euismod. Proin euismod tortor ac tellus congue scelerisque pretium enim volutpat. Sed ut eros ac diam dapibus commodo. Cras non dolor sit amet erat condimentum semper vitae eu augue. Nunc id leo elit, vitae varius orci. Sed pretium blandit suscipit. Phasellus tempus elementum lacinia. Nunc id leo bibendum elit cursus lobortis. Aenean nec tortor erat. Nam metus sem, hendrerit rhoncus bibendum sit amet, vulputate et urna.</p>\r\n<p><img class="right" src="images/sampledata/as002048/blog/img.blog.8.jpg" width="220" /> Curabitur ac molestie nunc. Proin aliquam adipiscing quam eget auctor. In facilisis porta dui, sit amet scelerisque elit eleifend vel. Curabitur eget tortor in sapien tincidunt auctor. In hac habitasse platea dictumst. Integer et ante arcu. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut in velit est. Integer commodo sapien at metus fermentum sagittis. Duis pretium urna sit amet libero elementum non rutrum nulla pharetra. Aliquam erat volutpat. Curabitur dolor massa. Donec ac est ut mauris molestie mattis non non sapien. Nullam fringilla sapien vel nulla scelerisque consequat. Donec sed tellus dolor, vitae fermentum tellus. Praesent sollicitudin, dolor eu elementum volutpat, ipsum erat pretium enim, sit amet aliquet nulla nisl laoreet tellus. Nulla ac tincidunt diam. Suspendisse nisl quam, pulvinar sed hendrerit at, venenatis ac risus. Donec sodales tincidunt laoreet. Quisque eros metus, ultrices dignissim accumsan sed, ultricies eu orci. Cras non dolor sit amet erat condimentum semper vitae eu augue. Nunc id leo elit, vitae varius orci. Sed pretium blandit suscipit. Phasellus tempus elementum lacinia. Nunc id leo bibendum elit cursus lobortis.Cum sociis natoque penatibus et magnis dis parturient montes.</p>', 1, 20, '2013-01-18 23:53:43', 518, '', '2013-02-04 21:18:54', 898, 0, '0000-00-00 00:00:00', '2013-01-18 23:53:43', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/as002048\\/blog\\/img.blog.9.jpg","float_intro":"left","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/as002048\\/blog\\/full.blog.6.jpg","float_fulltext":"none","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 5, '', '', 1, 6, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(26, 74, 'Dictum egestas sit', 'cum-sociis-natoque-5', '<p>Nunc id leo bibendum elit cursus lobortis. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam malesuada, felis nec facilisis vestibulum, erat tortor vestibulum justo, quis fringilla quam eros non eros. Donec sem mi, pellentesque in ultricies ligula.</p>\r\n', '\r\n<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam malesuada, felis nec facilisis vestibulum, erat tortor vestibulum justo, quis fringilla quam eros non eros. Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis nulla vel eros dictum egestas sit amet id nisl. Duis eros risus, scelerisque eget gravida vitae, mattis a nisl. Etiam fermentum convallis diam sit amet euismod. Proin euismod tortor ac tellus congue scelerisque pretium enim volutpat. Sed ut eros ac diam dapibus commodo. Cras non dolor sit amet erat condimentum semper vitae eu augue. Nunc id leo elit, vitae varius orci. Sed pretium blandit suscipit. Phasellus tempus elementum lacinia. Nunc id leo bibendum elit cursus lobortis.</p>\r\n<p>Aenean nec tortor erat. Nam metus sem, hendrerit rhoncus bibendum sit amet, vulputate et urna. Curabitur ac molestie nunc. Proin aliquam adipiscing quam eget auctor. In facilisis porta dui, sit amet scelerisque elit eleifend vel. Curabitur eget tortor in sapien.</p>\r\n<p><img class="right" src="images/sampledata/as002048/blog/img.blog.14.jpg" width="220" />Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut in velit est. Integer commodo sapien at metus fermentum sagittis. Duis pretium urna sit amet libero elementum non rutrum nulla pharetra. Aliquam erat volutpat. Curabitur dolor massa. Donec ac est ut mauris molestie mattis non non sapien. Nullam fringilla sapien vel nulla scelerisque consequat. Donec sed tellus dolor, vitae fermentum tellus. Praesent sollicitudin, dolor eu elementum volutpat, ipsum erat pretium enim, sit amet aliquet nulla nisl laoreet tellus. Nulla ac tincidunt diam. Suspendisse nisl quam, pulvinar sed hendrerit at, venenatis ac risus. Donec sodales tincidunt laoreet. Quisque eros metus, ultrices dignissim accumsan sed, ultricies eu orci. Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis nulla vel eros dictum egestas sit amet id nisl. Duis eros risus, scelerisque eget gravida vitae, mattis a nisl. Etiam fermentum convallis diam sit amet euismod. Proin euismod tortor ac tellus congue scelerisque pretium enim.</p>', 1, 20, '2013-01-18 23:53:43', 518, '', '2013-02-04 21:58:45', 898, 0, '0000-00-00 00:00:00', '2013-01-18 23:53:43', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/as002048\\/blog\\/img.blog.12.jpg","float_intro":"left","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/as002048\\/blog\\/full.blog.9.jpg","float_fulltext":"none","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 4, '', '', 1, 5, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(27, 75, 'Duis eros risus', 'cum-sociis-natoque-6', '<p>Etiam fermentum convallis diam sit amet euismod. Proin euismod tortor ac tellus congue scelerisque pretium enim volutpat. Sed ut eros ac diam dapibus commodo. Nullam malesuada, felis nec facilisis vestibulum, erat tortor vestibulum justo, quis fringilla quam eros non eros.</p>\r\n', '\r\n<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam malesuada, felis nec facilisis vestibulum, erat tortor vestibulum justo, quis fringilla quam eros non eros. Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis nulla vel eros dictum egestas sit amet id nisl. Duis eros risus, scelerisque eget gravida vitae, mattis a nisl. Etiam fermentum convallis diam sit amet euismod. Proin euismod tortor ac tellus congue scelerisque pretium enim volutpat. Sed ut eros ac diam dapibus commodo. Cras non dolor sit amet erat condimentum semper vitae eu augue. Nunc id leo elit, vitae varius orci. Sed pretium blandit suscipit. Phasellus tempus elementum lacinia. Nunc id leo bibendum elit cursus lobortis.</p>\r\n<p>Aenean nec tortor erat. Nam metus sem, hendrerit rhoncus bibendum sit amet, vulputate et urna. Curabitur ac molestie nunc. Proin aliquam adipiscing quam eget auctor. In facilisis porta dui, sit amet scelerisque elit eleifend vel. Curabitur eget tortor in sapien tincidunt auctor. In hac habitasse platea dictumst. Integer et ante arcu. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut in velit est. Integer commodo sapien at metus fermentum sagittis. Duis pretium urna sit amet libero elementum non rutrum nulla pharetra. Aliquam erat volutpat. Curabitur dolor massa. Donec ac est ut mauris molestie mattis non non sapien. Nullam fringilla sapien vel nulla scelerisque consequat. Donec sed tellus dolor, vitae fermentum tellus. Praesent sollicitudin, dolor eu elementum volutpat, ipsum erat pretium enim, sit amet aliquet nulla nisl laoreet tellus. Nulla ac tincidunt diam. Suspendisse nisl quam, pulvinar sed hendrerit at, venenatis ac risus. Donec sodales tincidunt laoreet. Quisque eros metus, ultrices dignissim. <br /><br /> Etiam fermentum convallis diam sit amet euismod. Proin euismod tortor ac tellus congue scelerisque pretium enim volutpat. Sed ut eros ac diam dapibus commodo. Nullam malesuada, felis nec facilisis vestibulum, erat tortor vestibulum justo, quis fringilla quam eros non eros. Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Duis eros risus, scelerisque eget gravida vitae, mattis a nisl. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis nulla vel eros dictum egestas sit amet id nisl. Cras non dolor sit amet erat condimentum semper vitae eu augue. Nunc id leo elit, vitae varius orci. Sed pretium blandit suscipit. Phasellus tempus elementum lacinia. Nunc id leo bibendum elit cursus lobortis.Cum sociis natoque penatibus et magnis dis parturient montes. Proin euismod tortor ac tellus congue scelerisque pretium enim volutpat. Sed ut eros ac diam dapibus commodo. Cras non dolor sit amet erat condimentum semper vitae eu augue. Nunc id leo elit, vitae varius orci.</p>', 1, 20, '2013-01-18 23:53:43', 518, '', '2013-02-04 21:54:24', 898, 0, '0000-00-00 00:00:00', '2013-01-18 23:53:43', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/as002048\\/blog\\/img.blog.10.jpg","float_intro":"left","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/as002048\\/blog\\/full.blog.8.jpg","float_fulltext":"none","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 3, '', '', 1, 8, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(28, 76, 'Etiam fermentum', 'cum-sociis-natoque-7', '<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam malesuada, felis nec facilisis vestibulum, erat tortor vestibulum justo, quis fringilla quam eros non eros. Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Lorem ipsum dolor sit amet.</p>\r\n', '\r\n<p>Aenean nec tortor erat. Nam metus sem, hendrerit rhoncus bibendum sit amet, vulputate et urna. Curabitur ac molestie nunc. Proin aliquam adipiscing quam eget auctor. In facilisis porta dui, sit amet scelerisque elit eleifend vel. Curabitur eget tortor in sapien tincidunt auctor. In hac habitasse platea dictumst. Integer et ante arcu. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut in velit est. Integer commodo sapien at metus fermentum sagittis. Duis pretium urna sit amet libero elementum non rutrum nulla pharetra. Aliquam erat volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur dolor massa. Donec ac est ut mauris molestie mattis non non sapien. Nullam fringilla sapien vel nulla scelerisque consequat. Donec sed tellus dolor, vitae fermentum tellus. Praesent sollicitudin, dolor eu elementum volutpat, ipsum erat pretium enim, sit amet aliquet nulla nisl laoreet tellus. Nulla ac tincidunt diam. Suspendisse nisl quam, pulvinar sed hendrerit at, venenatis ac risus. Cras non dolor sit amet erat condimentum semper vitae eu augue. Donec sodales tincidunt laoreet. Quisque eros metus, ultrices dignissim accumsan. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam malesuada, felis nec facilisis vestibulum, erat tortor vestibulum justo, quis fringilla quam eros non eros. Donec sem mi, pellentesque in ultricies a, viverra sed ligula.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur dolor massa. Donec ac est ut mauris molestie mattis non non sapien. Nullam fringilla sapien vel nulla scelerisque consequat. Donec sed tellus dolor, vitae fermentum tellus. Praesent sollicitudin, dolor eu elementum volutpat, ipsum erat pretium enim, sit amet aliquet nulla nisl laoreet tellus. Nulla ac tincidunt diam. Suspendisse nisl quam, pulvinar sed hendrerit at, venenatis ac risus. Cras non dolor sit amet erat condimentum semper vitae eu augue. Donec sodales tincidunt laoreet. Quisque eros metus, ultrices dignissim accumsan. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam malesuada, felis nec facilisis vestibulum, erat tortor vestibulum justo, quis fringilla quam eros non eros. Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Aenean nec tortor erat. Nam metus sem, hendrerit rhoncus bibendum sit amet, vulputate et urna. Curabitur ac molestie nunc. Proin aliquam adipiscing quam eget auctor. In facilisis porta dui, sit amet scelerisque elit eleifend vel. Curabitur eget tortor in sapien tincidunt auctor. In hac habitasse platea dictumst. Integer et ante arcu. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut in velit est. Integer commodo sapien at metus fermentum sagittis.</p>', 1, 20, '2013-01-18 23:53:43', 518, '', '2013-02-04 22:05:23', 898, 0, '0000-00-00 00:00:00', '2013-01-18 23:53:43', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/as002048\\/blog\\/img.blog.13.jpg","float_intro":"left","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/as002048\\/blog\\/full.blog.11.jpg","float_fulltext":"none","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 2, '', '', 1, 6, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(29, 77, 'Nunc idleo elit vitae', 'cum-sociis-natoque-8', '<p>Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis nulla vel eros dictum egestas sit amet id nisl. Duis eros risus, scelerisque eget gravida vitae, mattis a nisl. Etiam fermentum convallis diam sit amet euismod. Proin euismod.</p>\r\n', '\r\n<ul>\r\n<li>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</li>\r\n<li>Nullam malesuada, felis nec facilisis vestibulum, erat tortor vestibulum justo.</li>\r\n<li>Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Lorem ipsum dolor sit amet.</li>\r\n<li>Etiam quis nulla vel eros dictum egestas sit amet id nisl. Duis eros risus.</li>\r\n<li>Proin euismod tortor ac tellus congue scelerisque pretium enim volutpat.</li>\r\n</ul>\r\n<p>Aenean nec tortor erat. Nam metus sem, hendrerit rhoncus bibendum sit amet, vulputate et urna. Curabitur ac molestie nunc. Proin aliquam adipiscing quam eget auctor. In facilisis porta dui, sit amet scelerisque elit eleifend vel. Curabitur eget tortor in sapien tincidunt auctor. In hac habitasse platea dictumst. Integer et ante arcu. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut in velit est. Integer commodo sapien at metus fermentum sagittis. Duis pretium urna sit amet libero elementum non rutrum nulla pharetra. Aliquam erat volutpat. Curabitur dolor massa. Donec ac est ut mauris molestie mattis non non sapien. Nullam fringilla sapien vel nulla scelerisque consequat. Donec sed tellus dolor, vitae fermentum tellus. Praesent sollicitudin, dolor eu elementum volutpat, ipsum erat pretium enim, sit amet aliquet nulla nisl laoreet tellus. Nulla ac tincidunt diam. Suspendisse nisl quam, pulvinar sed hendrerit at, venenatis ac risus. Donec sodales tincidunt laoreet. Quisque eros metus, ultrices dignissim accumsan sed, ultricies eu orci.</p>', 1, 20, '2013-01-18 23:53:43', 518, '', '2013-02-04 21:55:08', 898, 0, '0000-00-00 00:00:00', '2013-01-18 23:53:43', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/as002048\\/blog\\/img.blog.11.jpg","float_intro":"left","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/as002048\\/blog\\/full.blog.7.jpg","float_fulltext":"none","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 1, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(30, 78, 'Phasellus tempus', 'cum-sociis-natoque-9', '<p>Nullam malesuada, felis nec facilisis vestibulum, erat tortor vestibulum justo, quis fringilla quam eros non eros. Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis nulla vel eros dictum egestas sit amet id nisl.</p>\r\n', '\r\n<p>Aenean nec tortor erat. Nam metus sem, hendrerit rhoncus bibendum sit amet, vulputate et urna. Curabitur ac molestie nunc. Proin aliquam adipiscing quam eget auctor. In facilisis porta dui, sit amet scelerisque elit eleifend vel. Curabitur eget tortor in sapien tincidunt auctor. In hac habitasse platea dictumst. Integer et ante arcu. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut in velit est. Integer commodo sapien at metus fermentum sagittis. Duis pretium urna sit amet libero elementum non rutrum nulla pharetra. Aliquam erat volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur dolor massa. Donec ac est ut mauris molestie mattis non non sapien. Nullam fringilla sapien vel nulla scelerisque consequat. Donec sed tellus dolor, vitae fermentum tellus. Praesent sollicitudin, dolor eu elementum volutpat, ipsum erat pretium enim, sit amet aliquet nulla nisl laoreet tellus. Nulla ac tincidunt diam. Suspendisse nisl quam, pulvinar sed hendrerit at, venenatis ac risus. Cras non dolor sit amet erat condimentum semper vitae eu augue. Donec sodales tincidunt laoreet. Quisque eros metus, ultrices dignissim accumsan. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam malesuada, felis nec facilisis vestibulum, erat tortor vestibulum justo, quis fringilla quam eros non eros. Donec sem mi, pellentesque in ultricies a, viverra sed ligula.</p>\r\n<p><img class="left" src="images/sampledata/as002048/blog/img.blog.12.jpg" width="220" />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur dolor massa. Donec ac est ut mauris molestie mattis non non sapien. Nullam fringilla sapien vel nulla scelerisque consequat. Donec sed tellus dolor, vitae fermentum tellus. Praesent sollicitudin, dolor eu elementum volutpat, ipsum erat pretium enim, sit amet aliquet nulla nisl laoreet tellus. Nulla ac tincidunt diam. Suspendisse nisl quam, pulvinar sed hendrerit at, venenatis ac risus. Cras non dolor sit amet erat condimentum semper vitae eu augue. Donec sodales tincidunt laoreet. Quisque eros metus, ultrices dignissim accumsan. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam malesuada, felis nec facilisis vestibulum, erat tortor vestibulum justo, quis fringilla quam eros non eros. Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Aenean nec tortor erat. Nam metus sem, hendrerit rhoncus bibendum sit amet, vulputate et urna. Curabitur ac molestie nunc. Proin aliquam adipiscing quam eget auctor. In facilisis porta dui, sit amet scelerisque elit eleifend vel. Curabitur eget tortor.</p>', 1, 20, '2013-01-18 23:53:43', 518, '', '2013-02-04 22:10:32', 898, 0, '0000-00-00 00:00:00', '2013-01-18 23:53:43', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/as002048\\/blog\\/img.blog.14.jpg","float_intro":"left","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/as002048\\/blog\\/full.blog.12.jpg","float_fulltext":"none","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 0, '', '', 1, 35, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(31, 80, 'Cum sociis natoque', 'cum-sociis-natoque', '<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam malesuada, felis nec facilisis vestibulum, erat tortor vestibulum justo, quis fringilla quam eros non eros. Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Lorem ipsum dolor sit amet.</p>\r\n', '\r\n<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam malesuada, felis nec facilisis vestibulum, erat tortor vestibulum justo, quis fringilla quam eros non eros. Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis nulla vel eros dictum egestas sit amet id nisl. Duis eros risus, scelerisque eget gravida vitae, mattis a nisl. Etiam fermentum convallis diam sit amet euismod. Proin euismod tortor ac tellus congue scelerisque pretium enim volutpat. Sed ut eros ac diam dapibus commodo. Cras non dolor sit amet erat condimentum semper vitae eu augue. Nunc id leo elit, vitae varius orci. Sed pretium blandit suscipit. Phasellus tempus elementum lacinia. Nunc id leo bibendum elit cursus lobortis.</p>\r\n<p>Aenean nec tortor erat. Nam metus sem, hendrerit rhoncus bibendum sit amet, vulputate et urna. Curabitur ac molestie nunc. Proin aliquam adipiscing quam eget auctor. In facilisis porta dui, sit amet scelerisque elit eleifend vel. Curabitur eget tortor.</p>\r\n<p><img class="right frame shady" src="images/sampledata/as002048/blog/img.blog.1.jpg" width="220" />Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut in velit est. Integer commodo sapien at metus fermentum sagittis. Duis pretium urna sit amet libero elementum non rutrum nulla pharetra. Aliquam erat volutpat. Curabitur dolor massa. Donec ac est ut mauris molestie mattis non non sapien. Nullam fringilla sapien vel nulla scelerisque consequat. Donec sed tellus dolor, vitae fermentum tellus. Praesent sollicitudin, dolor eu elementum volutpat, ipsum erat pretium enim, sit amet aliquet nulla nisl laoreet tellus. Nulla ac tincidunt diam. Suspendisse nisl quam, pulvinar sed hendrerit at, venenatis ac risus. Donec sodales tincidunt laoreet. Quisque eros metus, ultrices dignissim accumsan sed, ultricies eu orci. Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis nulla vel eros dictum egestas sit amet id nisl. Duis eros risus, scelerisque eget gravida vitae, mattis a nisl. Etiam fermentum convallis diam sit amet euismod. Proin euismod tortor ac tellus congue scelerisque pretium enim volutpat. Sed ut eros ac diam dapibus commodo. Cras non dolor sit amet erat condimentum semper vitae eu augue. Nunc id leo elit, vitae varius orci. Sed pretium blandit suscipit. Phasellus tempus elementum lacinia. Nunc id leo bibendum.</p>', 1, 21, '2013-01-18 23:53:43', 518, '', '2013-01-21 23:53:24', 898, 0, '0000-00-00 00:00:00', '2013-01-18 23:53:43', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/as002048\\/blog\\/img.blog.1.jpg","float_intro":"left","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/as002048\\/blog\\/full.blog.1.jpg","float_fulltext":"left","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 2, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `#__content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(32, 81, 'Etiam fermentum ask', 'cum-sociis-natoque-2', '<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam malesuada, felis nec facilisis vestibulum, erat tortor vestibulum justo, quis fringilla quam eros non eros. Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Lorem ipsum dolor sit amet, consectetur.</p>\r\n', '\r\n<ul>\r\n<li>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</li>\r\n<li>Nullam malesuada, felis nec facilisis vestibulum, erat tortor vestibulum justo.</li>\r\n<li>Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Lorem ipsum dolor sit amet.</li>\r\n<li>Etiam quis nulla vel eros dictum egestas sit amet id nisl. Duis eros risus.</li>\r\n<li>Proin euismod tortor ac tellus congue scelerisque pretium enim volutpat.</li>\r\n</ul>\r\n<p>Aenean nec tortor erat. Nam metus sem, hendrerit rhoncus bibendum sit amet, vulputate et urna. Curabitur ac molestie nunc. Proin aliquam adipiscing quam eget auctor. In facilisis porta dui, sit amet scelerisque elit eleifend vel. Curabitur eget tortor in sapien tincidunt auctor. In hac habitasse platea dictumst. Integer et ante arcu. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut in velit est. Integer commodo sapien at metus fermentum sagittis. Duis pretium urna sit amet libero elementum non rutrum nulla pharetra. Aliquam erat volutpat. Curabitur dolor massa. Donec ac est ut mauris molestie mattis non non sapien. Nullam fringilla sapien vel nulla scelerisque consequat. Donec sed tellus dolor, vitae fermentum tellus. Praesent sollicitudin, dolor eu elementum volutpat, ipsum erat pretium enim, sit amet aliquet nulla nisl laoreet tellus. Nulla ac tincidunt diam. Suspendisse nisl quam, pulvinar sed hendrerit at, venenatis ac risus. Donec sodales tincidunt laoreet. Quisque eros metus, ultrices dignissim accumsan sed, ultricies eu orci.</p>', 1, 21, '2013-01-18 23:53:43', 518, '', '2013-01-21 23:49:29', 898, 0, '0000-00-00 00:00:00', '2013-01-18 23:53:43', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/as002048\\/blog\\/img.blog.2.jpg","float_intro":"left","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/as002048\\/blog\\/full.blog.2.jpg","float_fulltext":"none","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 1, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(33, 82, 'Proin aliquam lorem', 'cum-sociis-natoque-3', '<p>Proin euismod tortor ac tellus congue scelerisque pretium enim volutpat. Sed ut eros ac diam dapibus commodo. Cras non dolor sit amet erat condimentum semper vitae eu augue. Nunc id leo elit, vitae varius orci. Sed pretium blandit suscipit. Phasellus tempus elementum lacinia. Nunc id leo bibendum elit cursus.</p>\r\n', '\r\n<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam malesuada, felis nec facilisis vestibulum, erat tortor vestibulum justo, quis fringilla quam eros non eros. Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis nulla vel eros dictum egestas sit amet id nisl. Duis eros risus, scelerisque eget gravida vitae, mattis a nisl. Etiam fermentum convallis diam sit amet euismod. Proin euismod tortor ac tellus congue scelerisque pretium enim volutpat. Sed ut eros ac diam dapibus commodo. Cras non dolor sit amet erat condimentum semper vitae eu augue. Nunc id leo elit, vitae varius orci. Sed pretium blandit suscipit. Phasellus tempus elementum lacinia. Nunc id leo bibendum elit cursus lobortis. Aenean nec tortor erat. Nam metus sem, hendrerit rhoncus bibendum sit amet, vulputate et urna. Curabitur ac molestie nunc. Proin aliquam adipiscing quam eget auctor. In facilisis porta dui, sit amet scelerisque elit eleifend vel.Curabitur eget tortor in sapien tincidunt auctor. In hac habitasse platea dictumst. Integer et ante arcu. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut in velit est. Integer commodo sapien at metus fermentum sagittis. Duis pretium urna sit amet libero elementum non rutrum nulla pharetra.</p>\r\n<p><img class="right" src="images/sampledata/as002048/blog/img.blog.3.jpg" width="220" style="margin-top: 12px;" /> Aliquam erat volutpat. Curabitur dolor massa. Donec ac est ut mauris molestie mattis non non sapien. Nullam fringilla sapien vel nulla scelerisque consequat. Donec sed tellus dolor, vitae fermentum tellus. Praesent sollicitudin, dolor eu elementum volutpat, ipsum erat pretium enim, sit amet aliquet nulla nisl laoreet tellus. Nulla ac tincidunt diam. Suspendisse nisl quam, pulvinar sed hendrerit at, venenatis ac risus. Donec sodales tincidunt laoreet. Quisque eros metus, ultrices dignissim accumsan. Phasellus tempus elementum lacinia. Nunc id leo bibendum elit cursus lobortis. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam malesuada, felis nec facilisis vestibulum, erat tortor vestibulum justo, quis fringilla quam eros non eros. Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis nulla vel eros dictum egestas sit amet id nisl. Duis eros risus, scelerisque eget gravida vitae, mattis a nisl. Etiam fermentum convallis diam erat tortor vestibulum justo, quis fringilla quam eros non eros. Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis nulla vel.</p>', 1, 21, '2013-01-18 23:53:43', 518, '', '2013-02-04 20:31:07', 898, 0, '0000-00-00 00:00:00', '2013-01-18 23:53:43', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/as002048\\/blog\\/img.blog.3.jpg","float_intro":"left","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/as002048\\/blog\\/full.blog.3.jpg","float_fulltext":"left","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, '', '', 1, 11, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(34, 63, 'Arcom', 'arcom', '<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam malesuada, felis nec facilisis ...</p>\r\n', '\r\n<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam malesuada, felis nec facilisis vestibulum, erat tortor vestibulum justo, quis fringilla quam eros non eros. Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis nulla vel eros dictum egestas sit amet id nisl. Duis eros risus, scelerisque eget gravida vitae, mattis a nisl. Etiam fermentum convallis diam sit amet euismod. Proin euismod tortor ac tellus congue scelerisque pretium enim volutpat. Sed ut eros ac diam dapibus commodo. Cras non dolor sit amet erat condimentum semper vitae eu augue. Nunc id leo elit, vitae varius orci. Sed pretium blandit suscipit. Phasellus tempus elementum lacinia. Nunc id leo bibendum elit cursus lobortis.</p>\r\n<p>Aenean nec tortor erat. Nam metus sem, hendrerit rhoncus bibendum sit amet, vulputate et urna. Curabitur ac molestie nunc. Proin aliquam adipiscing quam eget auctor. In facilisis porta dui, sit amet scelerisque elit eleifend vel. Curabitur eget tortor.</p>\r\n<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut in velit est. Integer commodo sapien at metus fermentum sagittis. Duis pretium urna sit amet libero elementum non rutrum nulla pharetra. Aliquam erat volutpat. Curabitur dolor massa. Donec ac est ut mauris molestie mattis non non sapien. Nullam fringilla sapien vel nulla scelerisque consequat. Donec sed tellus dolor, vitae fermentum tellus. Praesent sollicitudin, dolor eu elementum volutpat, ipsum erat pretium enim, sit amet aliquet nulla nisl laoreet tellus. Nulla ac tincidunt diam. Suspendisse nisl quam, pulvinar sed hendrerit at, venenatis ac risus. Donec sodales tincidunt laoreet. Quisque eros metus, ultrices dignissim accumsan sed, ultricies eu orci. Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis nulla vel eros dictum egestas sit amet id nisl. Duis eros risus, scelerisque eget gravida vitae, mattis a nisl. Etiam fermentum convallis diam sit amet euismod. Proin euismod tortor ac tellus congue scelerisque pretium enim volutpat. Sed ut eros ac diam dapibus commodo. Cras non dolor sit amet erat condimentum semper vitae eu augue. Nunc id leo elit, vitae varius orci. Sed pretium blandit suscipit. Phasellus tempus elementum lacinia. Nunc id leo bibendum.</p>', 1, 45, '2013-01-18 23:53:43', 518, '', '2013-04-08 23:55:18', 352, 0, '0000-00-00 00:00:00', '2013-01-18 23:53:43', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/as002048\\/portfolio\\/thumb.project.3.jpg","float_intro":"left","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/as002048\\/portfolio\\/project.3.jpg","float_fulltext":"left","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 1, '', '', 1, 6, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(35, 68, 'MediShop', 'cum-sociis-natoque', '<p>Duis fringilla vestibulum porttitor. Nullam consequat laoreet tellus, sit amet vulputate ipsum dictum atac urna adipiscing ...</p>\r\n', '\r\n<p>Integer non justo arcu, ut mollis sem. Quisque et risus lorem. Cras vel sem justo. Suspendisse elementum leo vitae est molestie tempor. Mauris tempor neque eu erat interdum in consectetur urna bibendum. Nulla interdum tortor eget ante volutpat at mattis purus condimentum. Nullam bibendum lobortis ipsum, blandit pellentesque mauris venenatis vitae. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis quis scelerisque arcu. Aenean lorem libero, hendrerit mattis varius ut, viverra vitae purus. Aenean ultrices facilisis consectetur.</p>\r\n<p> </p>\r\n<p>Aliquam dictum purus non mi semper ac aliquam justo varius. Cras convallis nunc in augue aliquam ac rutrum diam commodo. Fusce magna arcu, pharetra quis fermentum quis, aliquam nec eros. Sed enim lectus, convallis vel hendrerit nec, pellentesque sit amet sapien. Maecenas mi tortor, consequat eget semper nec, porta ac justo. Maecenas lectus quam, volutpat a laoreet in, fringilla rhoncus augue. In convallis nulla sem.</p>\r\n<p> </p>\r\n<p>Pellentesque risus sapien, accumsan ac condimentum et, luctus ut libero. Quisque tempor ipsum turpis. Nulla vitae urna massa, eu dapibus massa. Donec ultrices volutpat arcu eu varius. Cras nec enim libero. Nulla eu est ante, semper lobortis lacus. Cras gravida auctor bibendum. Phasellus luctus purus vitae elit tempus ac adipiscing nunc vulputate. Nam accumsan condimentum cursus. Duis lacus nisi, porta eget tincidunt ac, gravida a neque. Nam quis velit id est gravida iaculis. Vivamus egestas massa ac enim dictum at tincidunt leo lobortis. Morbi in ante eget sem viverra consectetur. In pulvinar interdum est quis fermentum. Nulla vitae nibh sit amet tellus ornare dictum.</p>\r\n<p> </p>\r\n<p>Maecenas sed sagittis eros. Praesent dapibus, nisi eget iaculis venenatis, turpis velit tincidunt sapien, in consectetur dui sem a urna. Suspendisse est dolor, viverra vitae porta ut, cursus in sapien. Praesent placerat aliquam faucibus. Sed diam leo, lobortis a vestibulum scelerisque, vestibulum eget leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam feugiat aliquet tincidunt. Nunc rhoncus interdum ante, eget vulputate turpis porta sed. Fusce ut neque lorem, a sollicitudin magna. Nunc elementum libero sed urna faucibus iaculis vel sit amet magna. Aenean non turpis auctor quam rutrum condimentum. Vivamus egestas nibh sit amet mauris congue vitae euismod erat tincidunt. Mauris velit nisl, mattis ut condimentum scelerisque, bibendum sit amet purus. Fusce gravida congue velit, eleifend commodo quam rhoncus ac. Aliquam interdum condimentum felis, eu vestibulum turpis elementum et.</p>', 1, 46, '2013-01-18 23:53:43', 518, '', '2013-04-09 00:06:09', 352, 0, '0000-00-00 00:00:00', '2013-01-18 23:53:43', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/as002048\\/portfolio\\/thumb.project.7.jpg","float_intro":"left","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/as002048\\/portfolio\\/project.7.jpg","float_fulltext":"left","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"as002048:gallery","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 5, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(36, 76, 'Realty', 'realty', '<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam malesuada, felis nec facilisis ...</p>\r\n', '\r\n<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam malesuada, felis nec facilisis vestibulum, erat tortor vestibulum justo, quis fringilla quam eros non eros. Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis nulla vel eros dictum egestas sit amet id nisl. Duis eros risus, scelerisque eget gravida vitae, mattis a nisl. Etiam fermentum convallis diam sit amet euismod. Proin euismod tortor ac tellus congue scelerisque pretium enim volutpat. Sed ut eros ac diam dapibus commodo. Cras non dolor sit amet erat condimentum semper vitae eu augue. Nunc id leo elit, vitae varius orci. Sed pretium blandit suscipit. Phasellus tempus elementum lacinia. Nunc id leo bibendum elit cursus lobortis.</p>\r\n<p>Aenean nec tortor erat. Nam metus sem, hendrerit rhoncus bibendum sit amet, vulputate et urna. Curabitur ac molestie nunc. Proin aliquam adipiscing quam eget auctor. In facilisis porta dui, sit amet scelerisque elit eleifend vel. Curabitur eget tortor.</p>\r\n<p><img class="right frame shady" src="images/sampledata/as002048/blog/img.blog.1.jpg" width="220" />Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut in velit est. Integer commodo sapien at metus fermentum sagittis. Duis pretium urna sit amet libero elementum non rutrum nulla pharetra. Aliquam erat volutpat. Curabitur dolor massa. Donec ac est ut mauris molestie mattis non non sapien. Nullam fringilla sapien vel nulla scelerisque consequat. Donec sed tellus dolor, vitae fermentum tellus. Praesent sollicitudin, dolor eu elementum volutpat, ipsum erat pretium enim, sit amet aliquet nulla nisl laoreet tellus. Nulla ac tincidunt diam. Suspendisse nisl quam, pulvinar sed hendrerit at, venenatis ac risus. Donec sodales tincidunt laoreet. Quisque eros metus, ultrices dignissim accumsan sed, ultricies eu orci. Donec sem mi, pellentesque in ultricies a, viverra sed ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis nulla vel eros dictum egestas sit amet id nisl. Duis eros risus, scelerisque eget gravida vitae, mattis a nisl. Etiam fermentum convallis diam sit amet euismod. Proin euismod tortor ac tellus congue scelerisque pretium enim volutpat. Sed ut eros ac diam dapibus commodo. Cras non dolor sit amet erat condimentum semper vitae eu augue. Nunc id leo elit, vitae varius orci. Sed pretium blandit suscipit. Phasellus tempus elementum lacinia. Nunc id leo bibendum.</p>', 1, 49, '2013-01-18 23:53:43', 518, '', '2013-04-09 02:31:21', 352, 0, '0000-00-00 00:00:00', '2013-01-18 23:53:43', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/as002048\\/portfolio\\/thumb.project.12.jpg","float_intro":"left","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/as002048\\/portfolio\\/project.12.jpg","float_fulltext":"left","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"as002048:gallery","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 3, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(37, 90, 'Andy Smith', 'andy-smith', '<blockquote>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus dolor tellus, varius at imperdiet et, gravida eget ipsum. Pellentesque scelerisque justo ut ligula porta aliquet. Vivamus sapien tellus, euismod sed sollicitudin ut, imperdiet at turpis. Nullam consectetur volutpat iaculis. Nam lectus eros, auctor vel venenatis at, pharetra id lacus. Ut sit amet ipsum lacus. Vestibulum id nisi a tellus eleifend auctor vel eu nibh. Curabitur egestas, arcu quis adipiscing tincidunt, nunc enim tristique augue, ut bibendum odio nulla sed eros. Aliquam  est, et fermentum velit semper sit amet. Fusce blandit consequat vestibulum. Aenean id leo quis tellus posuere cursus vel id urna.</p>\r\n<small>Andy Smith</small></blockquote>', '', 1, 26, '2013-01-22 02:36:20', 518, '', '2013-04-09 22:49:20', 352, 0, '0000-00-00 00:00:00', '2013-01-22 02:36:20', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/as002048\\/testimonials\\/testimonial.thumb.1.jpg","float_intro":"right","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(38, 91, 'Sarah Brown', 'andy-smith-2', '<blockquote>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus dolor tellus, varius at imperdiet et, gravida eget ipsum. Pellentesque scelerisque justo ut ligula porta aliquet. Vivamus sapien tellus, euismod sed sollicitudin ut, imperdiet at turpis. Nullam consectetur volutpat iaculis. Nam lectus eros, auctor vel venenatis at, pharetra id lacus. Ut sit amet ipsum lacus. Vestibulum id nisi a tellus eleifend auctor vel eu nibh. Curabitur egestas, arcu quis adipiscing tincidunt, nunc enim tristique augue, ut bibendum odio nulla sed eros. Aliquam pretium dictum est, et fermentum velit semper sit amet. Fusce blandit consequat vestibulum. Aenean id leo quis tellus posuere cursus.</p>\r\n<small>Sarah Brown</small></blockquote>', '', 1, 26, '2013-01-22 02:36:20', 518, '', '2013-04-09 22:48:55', 352, 0, '0000-00-00 00:00:00', '2013-01-22 02:36:20', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/as002048\\/testimonials\\/testimonial.thumb.2.jpg","float_intro":"right","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(39, 87, 'Services', 'services', '<h2 class="item_title">How it works</h2>\r\n<div class="row-fluid">\r\n<div class="span3">\r\n<p class="blocknumber"><span class="blocknumber">A</span>Suscipit sem. Aliquam vulputate elit acquam tristique sit amet sceleris que eros euismod. Nam rutrum odioram at metus vulputate nec ultricies augue. Sed non tellus.</p>\r\n</div>\r\n<div class="span3">\r\n<p class="blocknumber"><span class="blocknumber">B</span>Lorem ipsum dolor sitom amet, consectetur deron adipiscing elit. Praesento inamara posuere felis. Aliquam sedora est augue, vitaem suscipit sem induero.</p>\r\n</div>\r\n<div class="span3">\r\n<p class="blocknumber"><span class="blocknumber">C</span>Nam rutrum odio atran metus vulputate nec ultricies augue. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesento inaelit acquam tristique sit amet.</p>\r\n</div>\r\n<div class="span3">\r\n<p class="blocknumber"><span class="blocknumber">D</span>Sed non tellus indui. Mauris condimentum, diamant eget rutrum vestibulum, sapien enim iaculis metus. Nam rutrum odio atran metus. Vitaem suscipit consectetur.</p>\r\n</div>\r\n</div>\r\n<div class="item-separator"> </div>\r\n<div class="row-fluid">\r\n<div class="span6">\r\n<h2 class="item_title">FAQ</h2>\r\n<div class="toggle 1">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</div>\r\n<div class="toggle_content 1">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent in posuere felis. Aliquam sed est augue, vitae suscipit sem. Aliquam vulputate elit ac quam tristique sit amet scelerisque eros euismod.</div>\r\n<div class="toggle 2">Maecenas lobortis, diameu malesuada tincidunt.</div>\r\n<div class="toggle_content 2">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent in posuere felis. Aliquam sed est augue, vitae suscipit sem. Aliquam vulputate elit ac quam tristique sit amet scelerisque eros euismod.</div>\r\n<div class="toggle 3">Phasellus lorem nisi, gravida indictum sit amet.</div>\r\n<div class="toggle_content 3">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent in posuere felis. Aliquam sed est augue, vitae suscipit sem. Aliquam vulputate elit ac quam tristique sit amet scelerisque eros euismod.</div>\r\n<div class="toggle 4">Phasellus porttitor cursus nibh vitae commodo.</div>\r\n<div class="toggle_content 4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent in posuere felis. Aliquam sed est augue, vitae suscipit sem. Aliquam vulputate elit ac quam tristique sit amet scelerisque eros euismod.</div>\r\n<div class="toggle 5">Morbi commodo, sem ac tempus consequat, aliquam orci.</div>\r\n<div class="toggle_content 5">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent in posuere felis. Aliquam sed est augue, vitae suscipit sem. Aliquam vulputate elit ac quam tristique sit amet scelerisque eros euismod.</div>\r\n<div class="toggle 6">Curabitur nisi odio, euismod in, consectetur a lorem.</div>\r\n<div class="toggle_content 6">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent in posuere felis. Aliquam sed est augue, vitae suscipit sem. Aliquam vulputate elit ac quam tristique sit amet scelerisque eros euismod.</div>\r\n</div>\r\n<div class="span3">\r\n<h2 class="item_title"> </h2>\r\n<p><img class="left" src="images/sampledata/as002048/services/img.services.1.jpg" width="221" /> Lorem ipsum dolor sitomar des amet, sceleris consectetur adipiscing elit. Praesento ina posuere felis. Aliquam sedora est augue, vitaem suscipit sem. Aliquam vulputate elit acquam.</p>\r\n</div>\r\n<div class="span3">\r\n<h2 class="item_title"> </h2>\r\n<p><img class="left" src="images/sampledata/as002048/services/img.services.2.jpg" width="221" />Aliquam sedora est augue, vitaem suscipit sem. Aliquam vulputate elit acquam tristique sit amet. Praesento ina posuere felis. Aliquam sedora est augue, vitaem suscipit consectetur.</p>\r\n</div>\r\n</div>', '', 1, 50, '2013-01-22 04:57:47', 518, '', '2013-04-09 20:53:39', 352, 0, '0000-00-00 00:00:00', '2013-01-22 04:57:47', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 22, 0, '', '', 1, 355, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(48, 89, 'Business', 'business', '<p class="blocknumber"><span class="blocknumber">1</span>Suscipit sem. Aliquam vulputate elit acquam tristique sit amet sceleris que eros euismod. Nam rutrum.</p>\r\n<p class="blocknumber"><span class="blocknumber">2</span>Lorem ipsum dolor sitom amet, consectetur deron adipiscing elit. Praesento inamara posuere felis.</p>\r\n<p class="blocknumber"><span class="blocknumber">3</span>Nam rutrum odio atran metus vulputate nec ultricies augue. Lorem ipsum dolor sit amet, consectetur.</p>\r\n<p class="blocknumber"><span class="blocknumber">4</span>Mauris at metus neque, ac pretium lorem. Vestibulum dignissim accumsan ante, eu ultrices eros.</p>\r\n<p class="blocknumber"><span class="blocknumber">5</span>Phasellus a sem sit amet augue laoreet sodales in vitae lectus. Praesent porta molestie pretium.</p>\r\n<p class="blocknumber"><span class="blocknumber">6</span>Curabitur egestas, arcu quis adipiscing tincidunt, nunc enim tristique augue, ut bibendum odio.</p>', '', 1, 55, '2013-01-24 03:22:18', 518, '', '2013-04-09 22:39:27', 352, 0, '0000-00-00 00:00:00', '2013-01-24 03:22:18', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"right","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/as002048\\/blog\\/img.blog.4.jpg","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"0","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 14, 0, '', '', 1, 10, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(49, 93, 'Template Features', 'features', '<p>In this template we would like to present something new and extraordinary – and its name is Joomla 3 Bootstrapped Template! This template is based on the Bootstrap and AS Frameworks, the Bootstrap Framework makes it fully responsive to all screen resolutions and aspect ratios, the AS Framework allows you to customize our templates with minimum coding knowledge.<br /><br />Developed by Twitter (http://twitter.github.com/bootstrap/), Bootstrap is a library of user interface elements that will standardize the user interfaces of your Joomla! templates. Not only is this great for template developers who no longer have to develop their own interface elements but also for users who will get to enjoy a standard easy to use and graphically pleasing interface across all Joomla! templates.</p>\r\n<p> </p>\r\n<div class="row-fluid">\r\n<div class="span2">\r\n<h3>Default</h3>\r\n<img src="images/sampledata/as002048/style.default.jpg" /><br /><br /> <a class="readmore" href="index.php/features/color-styles/default">PREVIEW</a></div>\r\n<div class="span2">\r\n<h3>Orange</h3>\r\n<img src="images/sampledata/as002048/style.orange.jpg" /><br /><br /> <a class="readmore" href="index.php/features/color-styles/orange">PREVIEW</a></div>\r\n<div class="span2">\r\n<h3>Forest</h3>\r\n<img src="images/sampledata/as002048/style.forest.jpg" /><br /><br /> <a class="readmore" href="index.php/features/color-styles/forest">PREVIEW</a></div>\r\n<div class="span2">\r\n<h3>Silver</h3>\r\n<img src="images/sampledata/as002048/style.silver.jpg" /><br /><br /> <a class="readmore" href="index.php/features/color-styles/silver">PREVIEW</a></div>\r\n<div class="span2">\r\n<h3>Sky</h3>\r\n<img src="images/sampledata/as002048/style.sky.jpg" /><br /><br /> <a class="readmore" href="index.php/features/color-styles/sky">PREVIEW</a></div>\r\n<div class="span2">\r\n<h3>Teal</h3>\r\n<img src="images/sampledata/as002048/style.teal.jpg" /><br /><br /> <a class="readmore" href="index.php/features/color-styles/teal">PREVIEW</a></div>\r\n</div>\r\n<div class="item-separator"> </div>\r\n<div class="item-separator"> </div>\r\n<div class="item-separator"> </div>\r\n<h2 class="item_title">Custom Colors</h2>\r\n<div class="row-fluid">\r\n<div class="span9">\r\n<p>The Custom Colors is a very powerful feature of the template. It allows you to customize the colors of all elements from backgrounds, links, text and menu links by section. Many of the templae''s elements are designed with certain opacity so that no matter what color the background they will stay visible.</p>\r\n</div>\r\n<div class="span3"><img class="right noborder" src="images/sampledata/as002048/colors.png" width="330" /></div>\r\n</div>\r\n<h2 class="item_title">Fonts</h2>\r\n<div class="row-fluid">\r\n<div class="span12">\r\n<p>The AS002048 template offers more then 35 standard Web and Goolge fonts to choose from. Choosing fonts for your website has never been easier. One of the advantages of using Google fonts is that the actual fonts are served from an online directory the first time the users browser requests them and then cached locally. This eliminates the requirement to have the fonts available on the user''s machine in the first place. Another advantage of Google fonts is that they are not JavaScript dependent and they are selectable as opposed to non-selectable for Cufon fonts.</p>\r\n</div>\r\n</div>\r\n<div class="item-separator"> </div>\r\n<div class="item-separator"> </div>\r\n<h2 class="item_title">AS Responsive Menu</h2>\r\n<div class="row-fluid">\r\n<div class="span9">\r\n<p>The AS Menu module is a responsive module for showing a main Joomla! template menu on mobile, tablet or desktop devices.<br /> The extension is based on jQuery technology and can be customized using the menu Advanced Configuration Parameters.<br /><br /> <a href="http://www.astemplates.com/itemdetails.php?id=169&amp;page=params" target="blank">Click here</a> to see all extension parameters.</p>\r\n</div>\r\n<div class="span3"><img class="right noborder" src="images/sampledata/as002048/menu.png" width="330" /></div>\r\n</div>\r\n<h2 class="item_title">AS Art Slider</h2>\r\n<div class="row-fluid">\r\n<div class="span9">\r\n<p>The AS ArtSlider module is a combination of default Joomla Articles Newsflash module and Camera Slideshow jQuery plugin. The extension allows you to display article''s intro image with the article title and intro text. <br /><br /> <a href="http://www.astemplates.com/itemdetails.php?id=165&amp;page=params" target="blank">Click here</a> to see all extension parameters.</p>\r\n</div>\r\n<div class="span3"><img class="right noborder" src="images/sampledata/as002048/artslider.png" width="330" /></div>\r\n</div>\r\n<h2 class="item_title">AS Scroller</h2>\r\n<div class="row-fluid">\r\n<div class="span9">\r\n<p>The AS Scroller is a javabased based continuous horizontal image scroller of one or more images from a specified folder with an optional redirection link.<br /> As all our extensions it has a lot of parameters for easy extension customization.<br /><br /> <a href="http://www.astemplates.com/itemdetails.php?id=144&amp;page=params" target="blank">Click here</a> to see all extension parameters.</p>\r\n</div>\r\n<div class="span3"><img class="right noborder" src="images/sampledata/as002048/scroller.png" width="330" /></div>\r\n</div>', '', 1, 56, '2013-01-24 22:32:32', 518, '', '2013-04-12 02:23:00', 352, 0, '0000-00-00 00:00:00', '2013-01-24 22:32:32', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 55, 4, '', '', 1, 156, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(51, 62, 'Global Solutions', 'global-solutions', '<p>Donec sit amet nulla orci, ornare vulputate mauris. In commodo est in libero condimentum eget accumsan metus molestie id risus. ...</p>\r\n', '\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc enim mi, gravida et iaculis quis, luctus vitae risus. Suspendisse potenti. Integer vitae nunc porta nisl blandit rutrum et vitae leo. Sed lacus elit, vehicula quis tempor eu, ultricies id mi. Sed at risus leo. Donec sit amet nulla orci, ornare vulputate mauris. In commodo est in libero condimentum eget accumsan metus molestie. Nunc commodo, dolor ac tincidunt cursus, justo ante egestas purus, non ultricies augue lacus id risus.</p>\r\n<p>Cras nec enim eu felis ultrices lacinia a quis erat. Etiam sit amet magna et dolor tristique porta. Sed pulvinar placerat lorem, accumsan scelerisque tellus consectetur tristique. Curabitur vel faucibus felis. Nullam dictum elit ut ligula laoreet ac commodo lacus euismod. Proin ut varius justo. Donec sit amet venenatis quam. Sed quis enim libero, ac faucibus est. Nullam eu iaculis lorem. Vestibulum eu diam nisi.</p>\r\n<p>Phasellus ac sem a nibh vestibulum porttitor id sit amet purus. Integer in cursus risus. Suspendisse turpis enim, tincidunt eget pretium sit amet, tincidunt non nisl. Nam blandit egestas tortor non euismod. Duis varius congue enim. Etiam aliquet tellus quis felis rhoncus sed feugiat arcu scelerisque. Aliquam erat volutpat. Fusce quis mi risus. Etiam suscipit augue sed nunc rutrum tincidunt. Sed placerat nunc in nunc pharetra feugiat.</p>\r\n<p>Vivamus sapien mauris, malesuada non laoreet vitae, convallis a diam. Mauris convallis molestie tortor, tempus facilisis massa luctus in. Duis sollicitudin consequat risus in feugiat. Maecenas convallis lobortis ligula, sit amet vehicula nunc imperdiet eget. Vestibulum tellus dui, suscipit vitae auctor quis, blandit vel eros. Maecenas sit amet purus elit, quis pharetra nibh. Quisque augue arcu, fringilla ac sagittis id, facilisis at sem. Donec dapibus tortor id lorem viverra imperdiet. Quisque ultrices imperdiet congue. Sed orci sapien, condimentum eu iaculis placerat, fermentum et purus. Donec ac diam eros, a egestas tortor. Ut odio mi, eleifend id accumsan dapibus, aliquet in felis. In eros ipsum, feugiat sed fringilla eu, gravida vitae nunc. Ut scelerisque neque ac velit laoreet eu lobortis lorem venenatis. Proin vulputate urna ut metus adipiscing pellentesque molestie quam congue. Morbi a faucibus ligula.</p>\r\n<p>Donec porttitor mollis sodales. Integer tincidunt ligula et ante luctus fringilla. Phasellus elementum vestibulum urna, eget posuere elit vehicula sit amet. In vestibulum nibh id lorem imperdiet fringilla. Curabitur sollicitudin purus fringilla mauris adipiscing nec mattis tellus gravida. Ut condimentum commodo nibh ornare mattis. Quisque lacinia dignissim purus, a condimentum tortor aliquam quis.</p>', 1, 45, '2013-01-18 23:53:43', 518, '', '2013-04-08 23:55:30', 352, 0, '0000-00-00 00:00:00', '2013-01-18 23:53:43', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/as002048\\/portfolio\\/thumb.project.2.jpg","float_intro":"left","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/as002048\\/portfolio\\/project.2.jpg","float_fulltext":"left","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(52, 66, 'Business.Co', 'business-co', '<p>Duis dignissim congue odio, in tempor orci vehicula eu. Praesent vehicula libero eu nisi scelerisque tincidunt ....</p>\r\n', '\r\n<p>Duis ut odio non felis congue semper. Praesent id lacus euismod est vehicula ultricies. Ut non est nunc. Vivamus vel odio augue. Etiam porttitor hendrerit nisl eu rhoncus. Integer ante felis, congue vitae tincidunt et, auctor et justo. Nulla ut dolor nunc. Praesent ut sodales ante. Donec vulputate rhoncus venenatis. Nulla facilisi. Phasellus mattis porttitor justo, auctor facilisis elit faucibus et. In in urna vel quam scelerisque tempor id malesuada velit.</p>\r\n<p>Aliquam dictum purus non mi semper ac aliquam justo varius. Cras convallis nunc in augue aliquam ac rutrum diam commodo. Fusce magna arcu, pharetra quis fermentum quis, aliquam nec eros. Sed enim lectus, convallis vel hendrerit nec, pellentesque sit amet sapien. Maecenas mi tortor, consequat eget semper nec, porta ac justo. Maecenas lectus quam, volutpat a laoreet in, fringilla rhoncus augue. In convallis nulla sem.</p>\r\n<p>Pellentesque risus sapien, accumsan ac condimentum et, luctus ut libero. Quisque tempor ipsum turpis. Nulla vitae urna massa, eu dapibus massa. Donec ultrices volutpat arcu eu varius. Cras nec enim libero. Nulla eu est ante, semper lobortis lacus. Cras gravida auctor bibendum. Phasellus luctus purus vitae elit tempus ac adipiscing nunc vulputate. Nam accumsan condimentum cursus. Duis lacus nisi, porta eget tincidunt ac, gravida a neque. Nam quis velit id est gravida iaculis. Vivamus egestas massa ac enim dictum at tincidunt leo lobortis. Morbi in ante eget sem viverra consectetur. In pulvinar interdum est quis fermentum. Nulla vitae nibh sit amet tellus ornare dictum.</p>\r\n<p>Maecenas sed sagittis eros. Praesent dapibus, nisi eget iaculis venenatis, turpis velit tincidunt sapien, in consectetur dui sem a urna. Suspendisse est dolor, viverra vitae porta ut, cursus in sapien. Praesent placerat aliquam faucibus. Sed diam leo, lobortis a vestibulum scelerisque, vestibulum eget leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam feugiat aliquet tincidunt. Nunc rhoncus interdum ante, eget vulputate turpis porta sed. Fusce ut neque lorem, a sollicitudin magna. Nunc elementum libero sed urna faucibus iaculis vel sit amet magna. Aenean non turpis auctor quam rutrum condimentum. Vivamus egestas nibh sit amet mauris congue vitae euismod erat tincidunt. Mauris velit nisl, mattis ut condimentum scelerisque, bibendum sit amet purus. Fusce gravida congue velit, eleifend commodo quam rhoncus ac. Aliquam interdum condimentum felis, eu vestibulum turpis elementum et.</p>', 1, 45, '2013-01-18 23:53:43', 518, '', '2013-04-08 23:54:27', 352, 0, '0000-00-00 00:00:00', '2013-01-18 23:53:43', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/as002048\\/portfolio\\/thumb.project.6.jpg","float_intro":"left","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/as002048\\/portfolio\\/project.6.jpg","float_fulltext":"left","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"as002048:gallery","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 4, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(53, 64, 'Workers', 'workers', '<p>Vestibulum porta convallis magna, in commodo augue semper quis. Integer at arcu ac purus commodo consequat in at arcu ...</p>\r\n', '\r\n<p>Praesent euismod mollis felis a tempus. Integer ac ante turpis. Aenean accumsan purus at lectus varius a bibendum leo faucibus. Mauris odio mauris, tempus vitae sollicitudin in, viverra vel ligula. Duis in nisl nisl. Proin volutpat, lacus at venenatis blandit, diam ante dapibus libero, in elementum nisi est a enim. Mauris non mauris purus. Aenean id augue in turpis pharetra venenatis id vel urna. Phasellus posuere erat at metus tristique in vehicula velit tristique. Proin suscipit ultricies massa non blandit. Sed vehicula tristique condimentum. Donec a augue quis sapien euismod lacinia. Nulla pulvinar, dui at porttitor tincidunt, nisl sem varius dui, id dictum velit arcu sit amet neque. Cras vitae quam et nisl egestas accumsan id nec dolor.</p>\r\n<p>Maecenas ac nulla quis justo imperdiet mattis volutpat et neque. Pellentesque porttitor, magna nec eleifend faucibus, metus felis tincidunt lacus, eget lobortis est orci a erat. Aliquam erat volutpat. Donec imperdiet scelerisque mauris, eget convallis metus iaculis sed. Pellentesque suscipit semper diam sit amet consectetur. Sed ut libero metus. Suspendisse potenti. Suspendisse potenti. Vestibulum semper rutrum quam, ac rutrum massa sollicitudin eget. Ut risus mi, rutrum in laoreet in, blandit at ligula. Fusce elit nisi, ultrices in tristique non, vestibulum sed turpis. Proin lobortis scelerisque tortor vel gravida. Integer at egestas velit. Donec interdum hendrerit eros sed molestie. Pellentesque at risus nec ipsum blandit gravida. Phasellus semper, nisi non dignissim cursus, nunc urna tincidunt purus, eu placerat arcu felis id diam. Nam ultrices turpis eget dui auctor in bibendum lacus auctor.</p>\r\n<p>Mauris non nunc lectus, at fringilla ante. Aenean dictum, mauris id varius luctus, mi sem pellentesque felis, eget tempor orci felis nec sapien. Proin nec tempor leo. Mauris sagittis nunc a tortor varius porttitor tincidunt mauris pretium. Nunc nulla libero, venenatis ut interdum ac, malesuada quis nibh. Morbi et urna a libero sagittis faucibus. Duis auctor felis adipiscing libero gravida quis consequat lacus viverra. Nunc mattis eleifend quam, eget hendrerit nisl semper in. Mauris placerat pellentesque nunc, at consequat nisi mattis ac. Nam dignissim laoreet arcu vitae euismod. Etiam euismod bibendum augue, sit amet auctor libero egestas at. Aliquam aliquam auctor tincidunt. Aenean lobortis blandit purus ac iaculis. Aliquam erat volutpat.</p>', 1, 45, '2013-01-18 23:53:43', 518, '', '2013-04-08 23:56:08', 352, 0, '0000-00-00 00:00:00', '2013-01-18 23:53:43', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/as002048\\/portfolio\\/thumb.project.4.jpg","float_intro":"left","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/as002048\\/portfolio\\/project.4.jpg","float_fulltext":"left","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"as002048:gallery","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 3, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `#__content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(54, 69, 'ShoesStore', 'shoesstore', '<p>Curabitur placerat tincidunt purus. Proin pellentesque dictum augue, vel tristique arcu lobortis sit amet. Duis sit amet diam ...</p>\r\n', '\r\n<p>Suspendisse pellentesque scelerisque pulvinar. Suspendisse vestibulum erat vitae nisl fringilla sit amet dapibus lacus hendrerit. Nulla facilisi. Ut vulputate libero eget nisl luctus pretium. Sed libero arcu, imperdiet ac laoreet vel, adipiscing ac arcu. Aenean sapien mauris, mollis vitae viverra gravida, volutpat id neque. Cras dignissim luctus congue. Aliquam erat volutpat. Quisque faucibus pretium lacus. Quisque non arcu et magna laoreet aliquet at et sem. Quisque posuere placerat velit accumsan tristique. Donec molestie elementum ultricies. Sed eu lacus risus, et vestibulum libero. Nulla vulputate dignissim purus, ut convallis nisi lobortis in. Ut vitae convallis lectus. Vestibulum eu pulvinar risus.</p>\r\n<p>Donec scelerisque auctor imperdiet. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eu lobortis turpis. Fusce quis risus enim. Nullam quis ligula magna. Sed tincidunt, ipsum quis egestas rutrum, erat augue ullamcorper urna, at aliquam lectus risus et sapien. Curabitur odio odio, imperdiet sed eleifend id, placerat vel lorem. Maecenas tristique augue nec leo semper mattis. Quisque a arcu vel arcu elementum commodo. Phasellus quis ultricies mi. Phasellus dapibus pretium nisl, at ullamcorper lacus euismod at. Maecenas sed tortor purus, vel vulputate mauris.</p>\r\n<p>Morbi convallis nisi non mi gravida luctus. Sed et dolor non ligula vulputate dignissim sed ac risus. Pellentesque semper mi fermentum odio suscipit mattis. Pellentesque euismod ipsum vitae metus blandit sollicitudin non eu felis. Duis adipiscing imperdiet volutpat. Phasellus ut tellus in turpis tincidunt suscipit. Aliquam tincidunt rutrum lectus quis ullamcorper. Curabitur vel enim est, et sollicitudin urna. Vivamus molestie lectus sit amet tellus feugiat iaculis tincidunt sapien accumsan. Proin lectus metus, sagittis et commodo id, gravida sed lectus.</p>\r\n<p>Proin quis mi sed nibh ullamcorper dignissim eu ut lectus. Donec mollis lacus ut diam feugiat laoreet. Nulla id scelerisque sapien. Suspendisse potenti. Sed sed diam tortor, sit amet lacinia arcu. Pellentesque sollicitudin vestibulum risus, eu facilisis nulla pharetra eget. Phasellus eu ornare neque. Vestibulum cursus justo quis sapien cursus congue. Mauris accumsan lacus id est sagittis feugiat viverra at arcu. Integer vehicula nisl ac dui euismod id elementum sapien euismod. Sed blandit, est sit amet luctus iaculis, enim magna porttitor magna, et fermentum tortor diam in risus. Aliquam orci justo, dapibus tempus cursus a, tristique et quam.</p>', 1, 46, '2013-01-18 23:53:43', 518, '', '2013-04-09 00:09:35', 352, 0, '0000-00-00 00:00:00', '2013-01-18 23:53:43', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/as002048\\/portfolio\\/thumb.project.8.jpg","float_intro":"left","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/as002048\\/portfolio\\/project.8.jpg","float_fulltext":"left","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"as002048:gallery","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 2, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(55, 65, 'Roaders', 'roaders', '<p>Pellentesque aliquet congue imperdiet. Praesent id augue sit amet erat porttitor sagittis iaculis a metus. Sed iaculis placerat ...</p>\r\n', '\r\n<p>Suspendisse potenti. Vivamus et dictum dui. Donec viverra, est at vehicula faucibus, leo neque molestie metus, mattis pulvinar leo ante non risus. Duis tempor tortor nec lacus ultricies bibendum. Nulla vulputate lorem a nunc aliquet quis vehicula velit malesuada. In tortor felis, volutpat id egestas eu, pellentesque fermentum justo. Integer tellus erat, consectetur a congue sit amet, semper id massa. Aliquam mattis, justo vel ultricies iaculis, eros nisl varius orci, ac auctor lacus nulla in elit. Aliquam semper consequat luctus. Vivamus eu metus leo, ut ornare lacus. Nam semper blandit risus et egestas.</p>\r\n<p>Aliquam erat volutpat. Maecenas vitae sem vel lorem dictum commodo. Curabitur id eros metus. Donec non eros at augue rhoncus viverra in vel risus. Vivamus eu urna eu ante pretium pulvinar sit amet sed dolor. Mauris mi lorem, elementum in faucibus ut, pulvinar sollicitudin purus. Proin tincidunt pharetra enim id accumsan. Duis condimentum dapibus congue. Etiam dapibus pulvinar luctus. Aenean a orci felis, eu mollis tellus. Cras massa augue, accumsan non interdum id, mollis sit amet lacus. Cras a lorem nec augue ornare tincidunt. Aenean ipsum lorem, euismod eget vehicula sit amet, dapibus eget risus. Sed lobortis erat eu est pulvinar viverra. Vivamus nunc dui, varius dignissim porttitor ut, volutpat et est.</p>\r\n<p>Donec vehicula quam in est ullamcorper condimentum accumsan quam viverra. Ut mattis dapibus pretium. Pellentesque et mauris nibh, quis ullamcorper tellus. Donec fringilla condimentum sem, eu fringilla augue mollis nec. Vestibulum pulvinar enim at lorem scelerisque vel adipiscing augue condimentum. Nam eu rutrum sapien. Vivamus et felis metus, vel hendrerit turpis. Aenean pulvinar interdum interdum. Sed at placerat tellus. Mauris at leo vel justo volutpat fermentum. Sed pellentesque, enim non tempus dictum, risus diam fermentum libero, vulputate pulvinar orci ipsum vel turpis.</p>\r\n<p>Maecenas eu tortor sit amet lorem euismod accumsan et a leo. Nunc dapibus sagittis dui, ut auctor ante semper non. Maecenas at urna sapien, id pulvinar ante. Mauris congue sapien at ipsum convallis facilisis. Pellentesque id tortor mi, nec eleifend nibh. Sed semper egestas lectus. Curabitur fringilla, tortor sit amet rutrum faucibus, ipsum erat euismod augue, sed facilisis sem lectus sit amet nibh. Mauris vestibulum tincidunt interdum. Praesent purus elit, ullamcorper ac commodo nec, varius sed nisl. Cras massa tellus, pulvinar eget sodales vel, accumsan posuere est. Nullam pulvinar tincidunt placerat. Nam sodales porttitor laoreet.</p>', 1, 45, '2013-01-18 23:53:43', 518, '', '2013-04-09 00:01:26', 352, 0, '0000-00-00 00:00:00', '2013-01-18 23:53:43', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/as002048\\/portfolio\\/thumb.project.5.jpg","float_intro":"left","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/as002048\\/portfolio\\/project.5.jpg","float_fulltext":"left","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"as002048:gallery","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 1, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(56, 61, 'GlobalTech', 'globaltech', '<p>Fusce mi sapien, faucibus eu elementum ut, pulvinar in nibh. Vestibulum mattis sodales enim, eu cursus massa tincidunt sit amet ...</p>\r\n', '\r\n<p>Etiam consectetur congue dolor, quis dignissim felis molestie non. Morbi risus enim, imperdiet non elementum in, vestibulum sit amet leo. Aliquam ut ipsum vitae quam consectetur scelerisque et eget nulla. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin mauris tellus, dictum sed fringilla non, varius nec turpis. Pellentesque iaculis lorem a nunc elementum posuere. Vestibulum in ligula massa. Suspendisse imperdiet metus nec felis pellentesque dignissim.</p>\r\n<p>Duis ultrices, enim id consequat interdum, ipsum erat semper elit, vel ullamcorper eros tortor in enim. Suspendisse at dui purus. Phasellus condimentum eros ac magna dapibus sit amet varius orci pretium. Morbi viverra est volutpat nibh venenatis mollis. Etiam vitae velit id ante blandit egestas eu et lacus. Vivamus sodales suscipit justo eu placerat. Vivamus sed sapien velit, nec pharetra eros. Morbi pretium mattis sem id molestie. Nunc convallis, turpis at sagittis pretium, enim erat luctus nisi, eu cursus risus mauris in ante. Vestibulum in nisl a ligula egestas lacinia at id nisl.</p>\r\n<p>Vestibulum tincidunt risus id mi blandit vitae facilisis magna sodales. Cras at neque enim. Curabitur cursus lorem eu turpis bibendum quis hendrerit orci iaculis. Mauris ultricies dolor vitae elit accumsan nec luctus ipsum volutpat. Aenean tempus magna quis nisl facilisis sed adipiscing diam tempor. Phasellus diam metus, mattis a pellentesque id, ornare a justo. Mauris viverra aliquet sem vitae feugiat. Aenean lorem turpis, auctor iaculis pharetra sagittis, venenatis ac lectus. Etiam adipiscing dui at lectus pretium tincidunt. Praesent ornare iaculis dignissim. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Suspendisse et nisl eu neque congue congue in ac dolor. Aenean dictum odio gravida sem commodo quis egestas lorem luctus. Quisque tristique lobortis urna, eu porta lacus aliquam quis.</p>\r\n<p>Cras adipiscing quam sed turpis tristique nec condimentum sem convallis. Sed et lacus elit, in tristique lorem. Proin nibh purus, laoreet ut sollicitudin in, adipiscing vitae ante. Curabitur viverra porta velit. Nulla tortor mauris, suscipit ac fermentum porttitor, mollis eget eros. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent ante velit, lobortis nec tincidunt in, ullamcorper eu lectus. Praesent erat justo, ullamcorper et dignissim sed, congue bibendum ligula. Duis tristique elit in ipsum sodales in tincidunt arcu pellentesque. Cras facilisis commodo eros, eu consectetur dui iaculis ac.</p>', 1, 45, '2013-01-18 23:53:43', 518, '', '2013-04-08 23:55:41', 352, 0, '0000-00-00 00:00:00', '2013-01-18 23:53:43', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/as002048\\/portfolio\\/thumb.project.1.jpg","float_intro":"left","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/as002048\\/portfolio\\/project.1.jpg","float_fulltext":"left","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"1","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"as002048:gallery","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 8, 0, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(57, 74, 'Artisan', 'artisan', '<p>Vestibulum iaculis mattis sem, ac porttitor eros sodales volutpat. Donec eu dolor neque, porttitor viverra libero. Suspendisse aliquet ...</p>\r\n', '\r\n<p>Nullam quam mauris, scelerisque tincidunt pharetra id, dictum eleifend sapien. Duis feugiat aliquam diam, non dictum lorem fermentum non. Duis magna diam, pharetra vel porttitor ac, cursus molestie sem. Duis tincidunt imperdiet ipsum non lobortis. Aliquam vel urna sem, in aliquam magna. Donec eget nulla id leo aliquam ullamcorper. Integer id odio dui. Cras ornare dolor lorem, vel bibendum ipsum. Mauris tincidunt ultrices pellentesque. Mauris quis mauris id felis posuere vestibulum. Integer tellus eros, commodo ac porttitor sed, faucibus et tortor. Aliquam vestibulum hendrerit diam, eget cursus justo pellentesque rhoncus. Vestibulum iaculis mattis sem, ac porttitor eros sodales volutpat. Donec eu dolor neque, porttitor viverra libero. Suspendisse aliquet ipsum a diam varius fringilla. Maecenas massa dolor, tincidunt vel elementum dictum, porttitor eget massa.</p>\r\n<p>Curabitur placerat felis venenatis ante tristique ut blandit sapien euismod. Curabitur eget urna metus. Vivamus congue, augue et semper rutrum, turpis justo luctus massa, in tristique eros nisi ac turpis. Praesent porta hendrerit odio, ac aliquet nunc blandit at. Nunc eget enim id mi congue posuere non sed tortor. Integer imperdiet blandit orci. Vestibulum placerat turpis et velit iaculis blandit. Integer mattis augue ac diam sollicitudin ullamcorper. Phasellus et tortor quis nisi dapibus pulvinar. Vivamus condimentum, neque venenatis venenatis sodales, nulla purus luctus arcu, id rutrum turpis arcu nec tellus. Curabitur blandit nulla mattis justo suscipit quis aliquam ligula ullamcorper. Donec eu lorem lectus. Ut malesuada dapibus velit sed lacinia. Donec nec dolor eu tortor porttitor laoreet ut quis ipsum. Phasellus at tellus et augue hendrerit auctor et et arcu.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam aliquet nisi sit amet est laoreet ac pretium nibh egestas. Donec aliquet gravida tempus. In sed arcu purus. Nullam eu felis orci, elementum condimentum leo. Mauris aliquam orci quis velit tristique in sollicitudin quam lacinia. Praesent viverra, metus eu rhoncus bibendum, metus sem laoreet turpis, eu condimentum risus mauris vitae lorem. Suspendisse potenti. Etiam elementum nibh vitae tortor lobortis id facilisis ante blandit. Vivamus et arcu lorem. Cras consectetur auctor ipsum non cursus. Praesent eget tortor sit amet augue porta placerat in eu nisi. Proin et massa ligula, sit amet rutrum est.</p>\r\n<p>In orci leo, porta ac sodales eget, aliquet eget urna. Aliquam erat volutpat. Mauris fermentum lacus quis eros ullamcorper consequat. Cras sed nisl libero, non faucibus arcu. Suspendisse potenti. Curabitur diam nunc, mollis et vulputate sit amet, suscipit ut tortor. Vivamus ultricies, risus id ornare egestas, orci velit elementum arcu, in tincidunt tellus sapien eu nisl. Nunc ut orci at ligula malesuada suscipit.</p>\r\n<p>Sed sed tempus tortor. Nulla ac massa a risus consectetur posuere. Sed in massa eget felis sagittis iaculis id in neque. Aliquam at tortor eget justo tristique tempus. Curabitur eu ante ut libero tristique adipiscing et eu erat. Donec nec diam eu orci eleifend interdum quis at neque. Aliquam placerat tortor sed dui rhoncus viverra. Praesent dictum suscipit odio at suscipit. Nulla nec orci ut libero vehicula mattis. Vivamus in arcu eu purus viverra tristique. Fusce venenatis felis et lectus lacinia ut molestie velit dapibus. Maecenas consequat libero condimentum quam ultrices nec facilisis sem dictum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin ut est mauris.</p>', 1, 48, '2013-01-18 23:53:43', 518, '', '2013-04-09 02:20:12', 352, 0, '0000-00-00 00:00:00', '2013-01-18 23:53:43', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/as002048\\/portfolio\\/thumb.project.11.jpg","float_intro":"left","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/as002048\\/portfolio\\/project.11.jpg","float_fulltext":"left","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"as002048:gallery","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(58, 71, 'Naturel', 'naturel', '<p>Etiam nec lectus dolor, sit amet varius mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent semper tellus ...</p>\r\n', '\r\n<p>Praesent id sem augue. Curabitur sodales euismod lorem, eget vestibulum erat pretium a. Nullam pulvinar, neque a venenatis dignissim, lectus tortor cursus velit, sit amet lacinia tortor lorem posuere nisi. Suspendisse potenti. Praesent dignissim nulla a nisl gravida facilisis. Integer velit arcu, lacinia sit amet venenatis nec, rhoncus non metus. Vivamus vel fringilla magna. Sed pharetra sapien at mauris elementum at porttitor enim fringilla.</p>\r\n<p>Maecenas dapibus, massa ac vestibulum congue, lacus turpis tincidunt lectus, in iaculis odio sapien eget lorem. Ut ac urna velit. Fusce vulputate aliquet rhoncus. Pellentesque blandit erat vel nibh lobortis et rhoncus lacus sollicitudin. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque tincidunt venenatis ullamcorper. Curabitur a nulla vitae ante facilisis dapibus. Sed a tortor nulla. Praesent feugiat, nibh ut consequat aliquet, purus neque aliquet mauris, et venenatis ligula diam vel lacus.</p>\r\n<p>Pellentesque laoreet metus sit amet neque consectetur rutrum. Sed in leo eget odio rutrum vulputate. Integer lectus leo, varius in fringilla pellentesque, vulputate vitae ante. Cras eleifend est nec tellus lobortis tempus sit amet non nunc. Phasellus suscipit cursus eros sed tempor. Vestibulum pellentesque eros nec ipsum vehicula et iaculis lacus tempus. Praesent diam est, viverra at interdum eget, interdum eget felis. Sed eleifend tincidunt ligula sit amet faucibus. Morbi non nisl quis nisi hendrerit porttitor. Sed felis justo, pellentesque in molestie ac, iaculis sit amet nunc. Donec vulputate velit ac turpis tempus eget consequat massa dictum. Vestibulum viverra varius arcu in aliquam. Etiam tempor eleifend nisi. Curabitur nisl arcu, rhoncus sit amet sollicitudin nec, aliquam in est.</p>\r\n<p>Pellentesque fermentum ultricies vulputate. Vivamus euismod ligula ut ante laoreet aliquet. Fusce placerat consequat metus, quis consequat dolor pretium eget. Cras pellentesque nunc orci, eu consectetur ligula. Donec id facilisis libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin purus arcu, pharetra vel sodales vitae, consectetur id risus. Aenean blandit porttitor posuere. Phasellus a felis mi, quis aliquet purus. Nulla dolor nisl, semper sit amet rhoncus ac, scelerisque et risus. Proin est justo, luctus et posuere eu, rhoncus vitae lacus. Aenean porttitor neque non metus dictum mollis. Phasellus dignissim lectus id tortor congue in faucibus urna volutpat. Suspendisse adipiscing, justo et laoreet interdum, mauris augue auctor sapien, ut fermentum nibh orci ac felis. Nullam gravida interdum ipsum lobortis pellentesque. Vivamus vel elit eget tellus dictum gravida.</p>', 1, 47, '2013-01-18 23:53:43', 518, '', '2013-04-09 00:13:55', 352, 0, '0000-00-00 00:00:00', '2013-01-18 23:53:43', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/as002048\\/portfolio\\/thumb.project.9.jpg","float_intro":"left","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/as002048\\/portfolio\\/project.9.jpg","float_fulltext":"left","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"as002048:gallery","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 1, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(59, 73, 'InterLux', 'cum-sociis-natoque-4', '<p>Proin a pharetra nulla. Aenean congue dui vel lacus scelerisque eget aliquam est elementum. Proin auctor consectetur urna ...</p>\r\n', '\r\n<p>Cras faucibus convallis nisi, sed mattis risus suscipit nec. Aenean vulputate sagittis dapibus. Curabitur pharetra lacinia iaculis. Duis sed diam ornare felis cursus ullamcorper non non nisl. Vivamus imperdiet nunc sit amet dolor tristique bibendum. Nunc viverra est non metus posuere blandit. Fusce in pretium turpis. Duis a sapien neque, in sodales nibh.</p>\r\n<p>Nam viverra viverra risus, ac feugiat diam egestas quis. Sed lacinia urna sed massa pellentesque convallis. Ut urna orci, porta eu fermentum nec, feugiat sollicitudin ligula. In volutpat tristique metus, ac bibendum est eleifend a. Nam consectetur egestas libero et tempus. Ut congue ultricies tellus sed lobortis. Nunc at auctor diam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In sed iaculis magna. In orci ligula, euismod non volutpat sit amet, molestie ac tellus. Donec cursus quam sit amet mauris consectetur vehicula. Nulla ornare felis non lorem viverra eget posuere velit tincidunt.</p>\r\n<p>Quisque et nulla erat. Quisque venenatis, justo eget laoreet tempor, nisl velit blandit augue, at auctor tellus leo quis arcu. Nunc nulla turpis, posuere vitae pellentesque a, consectetur id nisi. Vestibulum interdum magna id risus sollicitudin malesuada. Sed eget nisi diam. In hac habitasse platea dictumst. Vestibulum neque augue, pulvinar at hendrerit in, eleifend nec lacus. Nullam urna risus, semper sit amet laoreet quis, dignissim vel arcu. Etiam rutrum egestas felis, id dictum felis tempor in. Curabitur id dolor a purus tincidunt imperdiet quis et enim. Integer dapibus placerat ligula, at venenatis nisi varius vitae. In pulvinar, felis eu fermentum interdum, purus sapien accumsan nulla, quis semper tortor arcu eu felis. Phasellus porttitor mauris ac nisi gravida consequat.</p>\r\n<p>Morbi quam mauris, dignissim sit amet fringilla ac, porttitor eget lorem. Sed est nulla, ornare sit amet faucibus eu, viverra consectetur diam. Donec molestie fringilla metus ut molestie. Nullam condimentum convallis tellus quis condimentum. Aenean ultricies fermentum diam, sit amet consectetur orci condimentum vel. In interdum mauris non turpis tincidunt vitae sollicitudin nibh semper. Morbi et ligula felis. Nam ac leo ut sapien blandit sagittis sed at enim. Sed tincidunt, velit eget venenatis vestibulum, justo felis ultrices erat, ut aliquet nibh purus ac mi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam luctus imperdiet metus, vel vestibulum ligula semper non. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean volutpat ullamcorper augue nec luctus. Pellentesque mattis tempor justo, at auctor turpis pretium a. Pellentesque cursus nisl id ipsum imperdiet id molestie leo ornare. Sed aliquet lectus sit amet nunc luctus lobortis.</p>', 1, 48, '2013-01-18 23:53:43', 518, '', '2013-04-09 02:15:39', 352, 0, '0000-00-00 00:00:00', '2013-01-18 23:53:43', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/as002048\\/portfolio\\/thumb.project.10.jpg","float_intro":"left","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/as002048\\/portfolio\\/project.10.jpg","float_fulltext":"left","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"as002048:gallery","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(60, 128, 'Terms of Use', 'terms-of-use', '<p>Please carefully read the following terms and conditions.<br /> Your purchase or use of our products implies that you have read and accepted these terms and conditions.<br /><br /></p>\r\n<h2 class="item_title">1. Copyright</h2>\r\n<p>AS Templates site (this site) is owned by <a href="http://www.asdesigning.com" target="_blank">ASDE</a> (Canada/USA).<br /> All items/designs (templates, modules, components, plugins, extensions, etc.) published on this site are sold under regular or extended license unless the requirements outlined below are met. Reselling or giving any published items/designs to any other party not outlined below is a violation of copyright law.<br /><br /> We respect the intellectual property rights of others, and require that those people who use our items/designs, or the services or features made available on our site, do the same.<br /><br /></p>\r\n<h2 class="item_title">2. License</h2>\r\n<ul>\r\n<li>Published items/designs are <a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0.html" target="_blank">GPL </a> compliant. Some of PHP portions of the items/designs are licensed under the appropriate <a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0.html" target="_blank">GPL License </a> of the parent platform.<br /> The PHP portions developed by ASDE or partners, and the non-compiled portions including images, cascading style sheets and JavaScript of items/designs are licensed under the "ASDE Commercial License" in accordance with the rest of these Terms of Use.</li>\r\n<li>The ASDE Commercial License is a GPL compatible license that pertains to the images, cascading style sheets and JavaScript elements of published items/designs on this site. As stated by the GPL license, these elements of items/designs that are not compiled together but are sent independently of GPL code, and combined in a client''s browser, do not have to be GPL themselves. These images, cascading style sheets and JavaScript elements are copyrighted by ASDE or our partners and can be used and manipulated for your own or your clients purposes. You cannot redistribute these files as your own, or include them in a package or extension of your own without prior consent of ASDE. There are two license types may be used:<ol>\r\n<li type="a">for a single domain - regular license</li>\r\n<li type="a">for unlimited domains - extended license, this license is a perfect option if you are independent web designer/developer/company who wants to use our items for your clients, this license does <strong>NOT</strong> allow for redistribution of templates in any form.</li>\r\n</ol></li>\r\n<li>"Free" templates are released under the <a href="http://creativecommons.org/licenses/by/3.0/" target="_blank">Creative Commons Attribution 3.0 license.</a>. This means that it can be used for private and commercial purposes, edited freely or redistributed as long as you keep the link back to <a href="http://www.asdesigning.com" target="_blank">asdesigning.com</a>. If you would like to remove the link, you should purchase an ASDE Commercial License.<br /><br /></li>\r\n</ul>\r\n<h2 class="item_title">3. Limited Use Granted</h2>\r\n<p>You may use each idividual item/design on a single website or on multiple websites depends on the purchased license type: regular or extended, belonging to either you or your client. You may not use a regular license on multiple websites/projects.<br /> The license grants you access to download the item/design for a period of 365 days after the date of purchase. During this period, the item/design will be upgraded regulary and your license grants you permission to download these upgrades.<br /><br /></p>\r\n<h2 class="item_title">4. Modifications</h2>\r\n<p>You are authorized to make any necessary modification(s) to our items/designs to fit your purposes. You may not however redistribute or release non-GPL portions of the items/designs as GPL or otherwise. You must also not change or remove the copyright information in the header of the any file included in the installation package. You may however remove our copyright from the footer of the templates if needed.<br /><br /></p>\r\n<h2 class="item_title">5. Unauthorized use</h2>\r\n<p>You may not place any non-GPL portions of our items/designs, modified or unmodified, on a diskette, CD, website or any other medium and offer them for redistribution or resale of any kind without prior written consent from ASDE.<br /><br /></p>\r\n<h2 class="item_title">6. Delivery</h2>\r\n<p>After we have successfully received your payment, your item/design download information will be emailed to the email address you provided.<br /><br /></p>\r\n<h2 class="item_title">7. Assignability</h2>\r\n<p>You may not sub-license, assign, or transfer this license to anyone else without prior written consent from ASDE.<br /><br /></p>\r\n<h2 class="item_title">8. Ownership</h2>\r\n<p>You may not claim intellectual or exclusive ownership to any of products published on this site, modified or unmodified.<br /><br /></p>\r\n<h2 class="item_title">9. Refund policy</h2>\r\n<p>Since ASDE is offering non-tangible irrevocable goods we do not issue refunds/exchanges once the order is accomplished and the item download link is provided. As a customer you are responsible for understanding this upon purchasing any item/design on our site. Please note that: we do not bear any responsibility and therefore we do not satisfy any refund/return/exchange requests based on incompatibility of our products with some third-party software (plug-ins, add-ons, modules, search engines, scripts, extensions etc) other than those which are specified as compatible in a description available on the template details page of each product; we do not bear any responsibility and therefore we do not satisfy any refund/return/exchange requests based on server configuration settings on your test localhost server. We don''t guarantee that our products are fully compatible with any third-party programs and we do not provide support for third-party applications.<br /><br /></p>\r\n<h2 class="item_title">10. Warranty</h2>\r\n<p>All products published on this site are provided without warranty of any kind, either expressed or implied. In no event shall ASDE be liable for any damages including, but not limited to, direct, indirect, special, incidental or consequential damages or other losses arising out of the use of or inability to use our items/designs. ASDE does not warranty or guarantee these items/designs will function with all third-party extensions and browsers.<br /><br /></p>\r\n<h2 class="item_title">11. Support</h2>\r\n<p>We offer no support via email or otherwise for installation, customization, administration, etc. for free. An item comments are available to ASDE members only. ASDE does not commit to monitor these comments, but we reserve the right to respond and answer questions. You acknowledge by your use of the templates that it is at your sole risk, and that you assume full responsibility for all costs associated with all necessary servicing or repairs of any equipment you use in connection with the item/design. Our items/designs are produced according to the latest web standards and we''ve been trying to make the process of working with them as easy as possible, so for people with minimum web development experience it should be easy to work with them.<br /><br /></p>\r\n<h2 class="item_title">12. Changes to Terms of Use</h2>\r\n<p>We can revise or change these Terms (in whole or in part) from time to time and at any time without notice to you.</p>', '', 1, 40, '2013-02-05 19:17:14', 518, '', '2013-02-05 19:53:58', 898, 0, '0000-00-00 00:00:00', '2013-02-05 19:17:14', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 1, '', '', 1, 32, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(61, 129, 'Privacy Policy', 'privacy', '<h2 class="item_title">1. Advertisement</h2>\r\n<p>Some of the advertisements on our site are provided by outside advertisement companies and may contain cookies. While we use cookies on our site, the cookies associated with these advertisements are collected by their respective companies and are therefore not accessible to us.<br /><br /></p>\r\n<h2 class="item_title">2. Cookies</h2>\r\n<p>Cookies are small data files that websites can write to your hard drive when you visit them. Once written, the cookie can only be accessed by the site that originally created it. Our site uses cookies to store personal site preferences, session information, and ordering information specific to you (such as the contents of your shopping cart).<br /><br /></p>\r\n<h2 class="item_title">3. Membership</h2>\r\n<p>We collect customer contact information from the registration form. We will never provide or sell any information to third parties.<br /> This information can be used:</p>\r\n<ul>\r\n<li>To send news, information about our activities and general promotional material which may be useful to you.</li>\r\n<li>To monitor who is accessing the membership section of our site.</li>\r\n<li>To improve our site and services.</li>\r\n<li>To monitor our site performances.</li>\r\n</ul>\r\n<p><br /><br /></p>\r\n<h2 class="item_title">4. Payment Security</h2>\r\n<p>All online transactions through our website are handled with industry-standard SSL (Secure Sockets Layer) encryption through the Paypal. Secure SSL means that when you enter your credit card number into our secure order form and press the purchase button, your information goes through a secure encryption process. This prevents any person on the Internet from seeing any information you submit. Your payment is authorized without human intervention.<br /><br /></p>\r\n<h2 class="item_title">5. Disclaimer</h2>\r\n<p>Our site contains links to other sites. While we provide links to them, we are not responsible for their content or privacy policies. We strongly recommend that you read the Privacy Policy of the linked websites as they may contain further terms and conditions which apply to you.<br /> We are not responsible for the content of any websites where our templates/designs used.</p>', '', 1, 40, '2013-02-05 19:17:14', 518, '', '2013-02-05 19:56:34', 898, 0, '0000-00-00 00:00:00', '2013-02-05 19:17:14', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, '', '', 1, 14, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(62, 94, 'Color Styles', 'color-styles', '<div class="row-fluid">\r\n<div class="span2">\r\n<h3>Default</h3>\r\n<img src="images/sampledata/as002048/style.default.jpg" /><br /><br /> <a class="readmore" href="index.php/features/color-styles/default">PREVIEW</a></div>\r\n<div class="span2">\r\n<h3>Orange</h3>\r\n<img src="images/sampledata/as002048/style.orange.jpg" /><br /><br /> <a class="readmore" href="index.php/features/color-styles/cherry">PREVIEW</a></div>\r\n<div class="span2">\r\n<h3>Forest</h3>\r\n<img src="images/sampledata/as002048/style.forest.jpg" /><br /><br /> <a class="readmore" href="index.php/features/color-styles/forest">PREVIEW</a></div>\r\n<div class="span2">\r\n<h3>Silver</h3>\r\n<img src="images/sampledata/as002048/style.silver.jpg" /><br /><br /> <a class="readmore" href="index.php/features/color-styles/silver">PREVIEW</a></div>\r\n<div class="span2">\r\n<h3>Sky</h3>\r\n<img src="images/sampledata/as002048/style.sky.jpg" /><br /><br /> <a class="readmore" href="index.php/features/color-styles/sky">PREVIEW</a></div>\r\n<div class="span2">\r\n<h3>Teal</h3>\r\n<img src="images/sampledata/as002048/style.teal.jpg" /><br /><br /> <a class="readmore" href="index.php/features/color-styles/teal">PREVIEW</a></div>\r\n</div>', '', 1, 56, '2013-01-24 22:32:32', 518, '', '2013-04-10 20:14:14', 352, 0, '0000-00-00 00:00:00', '2013-01-24 22:32:32', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 3, '', '', 1, 219, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(63, 96, 'Module Positions', 'module-positions', '<div class="float-right"><em><br /> * - free version is limited and not contains all module positions<br /> <br /><br /></em></div>\r\n<div class="clear center"><img class="noborder" src="http://www.astemplates.com/content/templates/179/positions.jpg" alt="Module Positions" /><br /><br /></div>\r\n<div class="float-right"><em> * - free version is limited and not contains all module positions </em><br /><br /><br /></div>\r\n<div class="clear"> </div>', '', 1, 56, '2013-02-21 21:30:48', 518, '', '2013-04-11 22:14:10', 352, 0, '0000-00-00 00:00:00', '2013-02-21 21:30:48', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 2, '', '', 1, 53, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(64, 95, 'Item Parameters', 'item-parameters', '<div class="float-right"><em><br /> * free version is limited and not contains all parameters<br /> <br /><br /></em></div>\r\n<div class="clear center"><img class="noborder" src="http://www.astemplates.com/content/templates/179/params.png" alt="Template Parameters" /><br /><br /></div>\r\n<div class="float-right"><em> * free version is limited and not contains all parameters </em><br /><br /><br /></div>\r\n<div class="clear"> </div>', '', 1, 56, '2013-02-21 21:30:48', 518, '', '2013-04-11 22:11:09', 352, 0, '0000-00-00 00:00:00', '2013-02-21 21:30:48', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 1, '', '', 1, 15, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(66, 36, 'We offer superb reliability personal hosting with personal touch', 'slide1', '<ul>\r\n<li>Basic</li>\r\n<li>Medium</li>\r\n<li>Large</li>\r\n</ul>\r\n', '\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ullamcorper semper magna vel gravida. Praesent eu augue ante. Quisque lacinia turpis in sapien scelerisque faucibus. Morbi id urna id purus dignissim bibendum quis vel eros. Nulla facilisi. Pellentesque rhoncus, ipsum vitae aliquet molestie, nunc dolor eleifend neque, sit amet ornare nisl nibh sit amet justo. Maecenas non ipsum eu mi adipiscing tempor. Etiam dignissim est eu felis laoreet sit amet facilisis justo vulputate. In cursus scelerisque auctor.</p>\r\n<p>Praesent in massa est. Aenean sodales commodo nibh, sed malesuada sem convallis sed. Donec consequat, risus nec mollis pretium, urna risus euismod nibh, laoreet ornare mi nunc vulputate ipsum. Aliquam aliquet mi non erat varius bibendum. Curabitur ultricies lorem in turpis pretium quis vulputate ante mattis. Maecenas fermentum augue vel lectus malesuada eget pellentesque orci pulvinar. In hac habitasse platea dictumst. Ut turpis nunc, tincidunt quis facilisis non, convallis sit amet magna. Aliquam dolor mi, congue vel ultrices a, faucibus vitae tortor. Fusce vitae justo urna. Duis auctor ipsum sit amet dolor aliquam eget sagittis magna faucibus. Etiam ut laoreet turpis.</p>\r\n<p>Fusce mi justo, imperdiet ut euismod in, posuere congue tortor. In auctor scelerisque orci nec facilisis. Sed sollicitudin est sit amet nibh sagittis varius. Phasellus ultricies, dui nec eleifend convallis, lacus diam condimentum augue, eu mollis tortor ante eu turpis. Nunc sem diam, iaculis non sodales in, aliquet pharetra elit. Pellentesque nec odio justo, nec tincidunt sapien. Mauris id nulla est. Quisque convallis arcu et libero molestie facilisis. Suspendisse ac pellentesque urna. Etiam sem lectus, volutpat ut consequat at, viverra vitae libero. Donec varius dignissim elit, eu vestibulum quam consectetur ut. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed viverra, metus ac dapibus imperdiet, purus nisi molestie nunc, ut placerat augue leo at lectus.</p>\r\n<p>Duis non lacus vitae metus vulputate fringilla. Phasellus neque ante, placerat sit amet iaculis a, tincidunt placerat nunc. Maecenas aliquet risus nibh, eu congue mi. Sed accumsan neque vitae ante sagittis sed rutrum elit lobortis. Nam tempus volutpat tincidunt. Nam vulputate vestibulum ligula quis ornare. Nunc at urna augue, et aliquet dui. Fusce placerat nisi sed sapien sollicitudin malesuada. Nullam sapien enim, porta ut gravida a, eleifend id magna.</p>\r\n<p>Duis vel felis dui, a consectetur mauris. Proin id convallis mauris. Aenean aliquet, sapien sed condimentum egestas, sapien ligula semper tortor, nec sagittis tortor mi ac metus. Donec nec fringilla nunc. Maecenas ac purus dui, eu vestibulum diam. Proin sit amet ante non diam volutpat auctor. Curabitur lacinia dictum orci, vitae condimentum diam semper in. In sit amet lorem eleifend turpis pulvinar mattis.</p>', 1, 41, '2013-01-08 21:31:26', 518, '', '2013-04-02 21:51:05', 352, 0, '0000-00-00 00:00:00', '2013-01-08 21:31:26', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/as002048\\/slider\\/slider1.png","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"0","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 2, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `#__content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(67, 38, 'We provide the best service for a single location to review everything', 'slide2-2', '<ul>\r\n<li>Detailed online reporting</li>\r\n<li>Application performance</li>\r\n<li>Server performance</li>\r\n</ul>\r\n', '\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ullamcorper semper magna vel gravida. Praesent eu augue ante. Quisque lacinia turpis in sapien scelerisque faucibus. Morbi id urna id purus dignissim bibendum quis vel eros. Nulla facilisi. Pellentesque rhoncus, ipsum vitae aliquet molestie, nunc dolor eleifend neque, sit amet ornare nisl nibh sit amet justo. Maecenas non ipsum eu mi adipiscing tempor. Etiam dignissim est eu felis laoreet sit amet facilisis justo vulputate. In cursus scelerisque auctor.</p>\r\n<p>Praesent in massa est. Aenean sodales commodo nibh, sed malesuada sem convallis sed. Donec consequat, risus nec mollis pretium, urna risus euismod nibh, laoreet ornare mi nunc vulputate ipsum. Aliquam aliquet mi non erat varius bibendum. Curabitur ultricies lorem in turpis pretium quis vulputate ante mattis. Maecenas fermentum augue vel lectus malesuada eget pellentesque orci pulvinar. In hac habitasse platea dictumst. Ut turpis nunc, tincidunt quis facilisis non, convallis sit amet magna. Aliquam dolor mi, congue vel ultrices a, faucibus vitae tortor. Fusce vitae justo urna. Duis auctor ipsum sit amet dolor aliquam eget sagittis magna faucibus. Etiam ut laoreet turpis.</p>\r\n<p>Fusce mi justo, imperdiet ut euismod in, posuere congue tortor. In auctor scelerisque orci nec facilisis. Sed sollicitudin est sit amet nibh sagittis varius. Phasellus ultricies, dui nec eleifend convallis, lacus diam condimentum augue, eu mollis tortor ante eu turpis. Nunc sem diam, iaculis non sodales in, aliquet pharetra elit. Pellentesque nec odio justo, nec tincidunt sapien. Mauris id nulla est. Quisque convallis arcu et libero molestie facilisis. Suspendisse ac pellentesque urna. Etiam sem lectus, volutpat ut consequat at, viverra vitae libero. Donec varius dignissim elit, eu vestibulum quam consectetur ut. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed viverra, metus ac dapibus imperdiet, purus nisi molestie nunc, ut placerat augue leo at lectus.</p>\r\n<p>Duis non lacus vitae metus vulputate fringilla. Phasellus neque ante, placerat sit amet iaculis a, tincidunt placerat nunc. Maecenas aliquet risus nibh, eu congue mi. Sed accumsan neque vitae ante sagittis sed rutrum elit lobortis. Nam tempus volutpat tincidunt. Nam vulputate vestibulum ligula quis ornare. Nunc at urna augue, et aliquet dui. Fusce placerat nisi sed sapien sollicitudin malesuada. Nullam sapien enim, porta ut gravida a, eleifend id magna.</p>\r\n<p>Duis vel felis dui, a consectetur mauris. Proin id convallis mauris. Aenean aliquet, sapien sed condimentum egestas, sapien ligula semper tortor, nec sagittis tortor mi ac metus. Donec nec fringilla nunc. Maecenas ac purus dui, eu vestibulum diam. Proin sit amet ante non diam volutpat auctor. Curabitur lacinia dictum orci, vitae condimentum diam semper in. In sit amet lorem eleifend turpis pulvinar mattis.</p>', 1, 41, '2013-01-08 21:31:26', 518, '', '2013-04-04 19:20:08', 352, 0, '0000-00-00 00:00:00', '2013-01-08 21:31:26', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/as002048\\/slider\\/slider2.png","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"0","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(68, 39, 'Security is on the first place, we can take care of everything!', 'slide3', '<ul>\r\n<li>Databases</li>\r\n<li>Support</li>\r\n<li>Development</li>\r\n</ul>\r\n', '\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ullamcorper semper magna vel gravida. Praesent eu augue ante. Quisque lacinia turpis in sapien scelerisque faucibus. Morbi id urna id purus dignissim bibendum quis vel eros. Nulla facilisi. Pellentesque rhoncus, ipsum vitae aliquet molestie, nunc dolor eleifend neque, sit amet ornare nisl nibh sit amet justo. Maecenas non ipsum eu mi adipiscing tempor. Etiam dignissim est eu felis laoreet sit amet facilisis justo vulputate. In cursus scelerisque auctor.</p>\r\n<p>Praesent in massa est. Aenean sodales commodo nibh, sed malesuada sem convallis sed. Donec consequat, risus nec mollis pretium, urna risus euismod nibh, laoreet ornare mi nunc vulputate ipsum. Aliquam aliquet mi non erat varius bibendum. Curabitur ultricies lorem in turpis pretium quis vulputate ante mattis. Maecenas fermentum augue vel lectus malesuada eget pellentesque orci pulvinar. In hac habitasse platea dictumst. Ut turpis nunc, tincidunt quis facilisis non, convallis sit amet magna. Aliquam dolor mi, congue vel ultrices a, faucibus vitae tortor. Fusce vitae justo urna. Duis auctor ipsum sit amet dolor aliquam eget sagittis magna faucibus. Etiam ut laoreet turpis.</p>\r\n<p>Fusce mi justo, imperdiet ut euismod in, posuere congue tortor. In auctor scelerisque orci nec facilisis. Sed sollicitudin est sit amet nibh sagittis varius. Phasellus ultricies, dui nec eleifend convallis, lacus diam condimentum augue, eu mollis tortor ante eu turpis. Nunc sem diam, iaculis non sodales in, aliquet pharetra elit. Pellentesque nec odio justo, nec tincidunt sapien. Mauris id nulla est. Quisque convallis arcu et libero molestie facilisis. Suspendisse ac pellentesque urna. Etiam sem lectus, volutpat ut consequat at, viverra vitae libero. Donec varius dignissim elit, eu vestibulum quam consectetur ut. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed viverra, metus ac dapibus imperdiet, purus nisi molestie nunc, ut placerat augue leo at lectus.</p>\r\n<p>Duis non lacus vitae metus vulputate fringilla. Phasellus neque ante, placerat sit amet iaculis a, tincidunt placerat nunc. Maecenas aliquet risus nibh, eu congue mi. Sed accumsan neque vitae ante sagittis sed rutrum elit lobortis. Nam tempus volutpat tincidunt. Nam vulputate vestibulum ligula quis ornare. Nunc at urna augue, et aliquet dui. Fusce placerat nisi sed sapien sollicitudin malesuada. Nullam sapien enim, porta ut gravida a, eleifend id magna.</p>\r\n<p>Duis vel felis dui, a consectetur mauris. Proin id convallis mauris. Aenean aliquet, sapien sed condimentum egestas, sapien ligula semper tortor, nec sagittis tortor mi ac metus. Donec nec fringilla nunc. Maecenas ac purus dui, eu vestibulum diam. Proin sit amet ante non diam volutpat auctor. Curabitur lacinia dictum orci, vitae condimentum diam semper in. In sit amet lorem eleifend turpis pulvinar mattis.</p>', 1, 41, '2013-01-08 21:31:26', 518, '', '2013-04-02 22:20:52', 352, 0, '0000-00-00 00:00:00', '2013-01-08 21:31:26', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/as002048\\/slider\\/slider3.png","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"0","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(69, 52, 'Our Copabilities', 'our-copabilities', '<p>Pellentesque nec nulla in mi eleifend posuere aliquam et mauris. Vestibulum magna lectus, ornare non tempus id, auctor sed felis. Maecenas vitae eros ut lectus eleifend malesuada nec quis nisl. Nullam hendrerit lacus elit, sit amet sollicitudin mauris...</p>\r\n', '\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris elementum orci at nibh eleifend cursus quis a enim. Pellentesque lacinia, urna sed consectetur aliquam, turpis dui posuere augue, non venenatis sem est sed felis. Vestibulum magna lectus, ornare non tempus id, auctor sed felis. Vestibulum magna lectus, ornare non tempus id, auctor sed felis. Maecenas vitae eros ut lectus eleifend malesuada nec quis nisl. Nullam hendrerit lacus elit, sit amet sollicitudin mauris. Sed tempus volutpat nisi vel gravida. Suspendisse potenti.</p>', 1, 9, '2013-01-09 02:33:52', 518, '', '2013-04-05 19:52:23', 352, 0, '0000-00-00 00:00:00', '2013-01-09 02:33:52', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/as002048\\/home.2.jpg","float_intro":"none","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(72, 83, 'Designing', 'designing', '<p id="system-readmore"><img src="images/sampledata/as002048/ico.designing.png" alt="" /></p>\r\n<p>Aliquam ac egestas dui. Vestibulum quis magna eu elit mollis cursus vel nec dolor. Mauris consectetur, elitac de faucibus commodo, ante dolor.</p>', '', 1, 51, '2013-01-09 23:14:13', 518, '', '2013-04-09 20:29:37', 352, 0, '0000-00-00 00:00:00', '2013-01-09 23:14:13', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"none","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"none","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"0","link_titles":"","show_intro":"0","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(73, 84, 'Development', 'development', '<p id="system-readmore"><img src="images/sampledata/as002048/ico.development.png" alt="" /></p>\r\n<p>Praesent sed mi ultrices dolor dignissim ornare. Nam vestibulum aliquam sapien vel venenatis. Sed lobortis ultricies justo, sit amet ultrices metus scel.</p>', '', 1, 52, '2013-01-09 23:14:13', 518, '', '2013-04-09 20:31:55', 352, 0, '0000-00-00 00:00:00', '2013-01-09 23:14:13', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"none","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"none","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"0","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(74, 85, 'Hosting', 'hosting', '<p id="system-readmore"><img src="images/sampledata/as002048/ico.hosting.png" alt="" /></p>\r\n<p>Morbi mauris mauris, porta sed pellentesque eget, eleifend sed libero. Proin ut enim dictum risus dignissim laoreet. Phasellus tempor, nisl sed.</p>', '', 1, 53, '2013-01-09 23:14:13', 518, '', '2013-04-09 20:30:54', 352, 647, '2015-12-21 23:23:46', '2013-01-09 23:14:13', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"none","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"none","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"0","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(75, 86, 'SEO', 'seo', '<p id="system-readmore"><img src="images/sampledata/as002048/ico.seo.png" alt="" /></p>\r\n<p>Mauris justo quam, rutrum et venenatis sed, facilisis sed nibh. Morbi tempus congue metus, ut accumsan urna aliquet ut. Mauris porttitor dui.</p>', '', 1, 54, '2013-01-09 23:14:13', 518, '', '2013-04-09 20:32:53', 352, 0, '0000-00-00 00:00:00', '2013-01-09 23:14:13', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"none","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"left","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"0","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(76, 97, 'Home Style 2', 'homepage-2', '<div class="row-fluid">\r\n<div class="span4">\r\n<div class="toggle 1">Lorem ipsum dolor sit amet, consectetur elit.</div>\r\n<div class="toggle_content 1">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent in posuere felis. Aliquam sed est augue, vitae suscipit sem. Aliquam vulputate elit ac quam tristique sit amet scelerisque eros euismod.</div>\r\n<div class="toggle 2">Maecenas lobortis, diameu malesuada tinci.</div>\r\n<div class="toggle_content 2">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent in posuere felis. Aliquam sed est augue, vitae suscipit sem. Aliquam vulputate elit ac quam tristique sit amet scelerisque eros euismod.</div>\r\n<div class="toggle 3">Phasellus lorem nisi, gravida indictum sit amet.</div>\r\n<div class="toggle_content 3">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent in posuere felis. Aliquam sed est augue, vitae suscipit sem. Aliquam vulputate elit ac quam tristique sit amet scelerisque eros euismod.</div>\r\n<div class="toggle 4">Phasellus porttitor cursus nibh vitae commodo.</div>\r\n<div class="toggle_content 4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent in posuere felis. Aliquam sed est augue, vitae suscipit sem. Aliquam vulputate elit ac quam tristique sit amet scelerisque eros euismod.</div>\r\n<div class="toggle 5">Morbi commodo, sem ac tempus consequat orci.</div>\r\n<div class="toggle_content 5">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent in posuere felis. Aliquam sed est augue, vitae suscipit sem. Aliquam vulputate elit ac quam tristique sit amet scelerisque eros euismod.</div>\r\n<div class="toggle 6">Curabitur nisi odio, euismod in, consectetur.</div>\r\n<div class="toggle_content 6">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent in posuere felis. Aliquam sed est augue, vitae suscipit sem. Aliquam vulputate elit ac quam tristique sit amet scelerisque eros euismod.</div>\r\n</div>\r\n<div class="span4">\r\n<h2 class="item_title">Welcome to Us</h2>\r\n<p class="home">Aliquam sedora est augue, vitaem suscipit sem. Aliquam vulputate elit acquam tristique sit amet. Praesento ina posuere felis. Aliquam sedora est augue, vitaem suscipit consectetur.</p>\r\n<p class="home">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris elementum orci at nibh eleifend cursus quis a enim. Pellentesque lacinia, urna sed consectetur aliquam, turpis dui posuere augue, non venenatis sem est sed felis.Pellentesque nec nulla in mi eleifend posuere aliquam et mauris!</p>\r\n</div>\r\n<div class="span4">\r\n<p><img class="left" src="images/sampledata/as002048/home.3.jpg" /></p>\r\n</div>\r\n</div>', '', 1, 9, '2013-01-22 04:57:47', 518, '', '2013-04-17 04:53:42', 352, 647, '2015-12-21 23:23:36', '2013-01-22 04:57:47', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 18, 0, '', '', 1, 310, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__contentitem_tag_map`
--

DROP TABLE IF EXISTS `#__contentitem_tag_map`;
CREATE TABLE IF NOT EXISTS `#__contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `#__content_frontpage`
--

DROP TABLE IF EXISTS `#__content_frontpage`;
CREATE TABLE IF NOT EXISTS `#__content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `#__content_frontpage`
--

INSERT INTO `#__content_frontpage` (`content_id`, `ordering`) VALUES
(5, 2),
(69, 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__content_rating`
--

DROP TABLE IF EXISTS `#__content_rating`;
CREATE TABLE IF NOT EXISTS `#__content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `#__content_types`
--

DROP TABLE IF EXISTS `#__content_types`;
CREATE TABLE IF NOT EXISTS `#__content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`(100))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=10005 ;

--
-- Dumping data for table `#__content_types`
--

INSERT INTO `#__content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special": {"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Weblink', 'com_weblinks.weblink', '{"special":{"dbtable":"#__weblinks","key":"id","type":"Weblink","prefix":"WeblinksTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"url", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special": {}}', 'WeblinksHelperRoute::getWeblinkRoute', '{"formFile":"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","featured","images"], "ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"], "convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(3, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special": {"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(4, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special": {"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(5, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special": {}}', 'UsersHelperRoute::getUserRoute', ''),
(6, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(9, 'Weblinks Category', 'com_weblinks.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'WeblinksHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(10, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(10000, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(10001, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(10002, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(10003, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(10004, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `#__core_log_searches`
--

DROP TABLE IF EXISTS `#__core_log_searches`;
CREATE TABLE IF NOT EXISTS `#__core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `#__extensions`
--

DROP TABLE IF EXISTS `#__extensions`;
CREATE TABLE IF NOT EXISTS `#__extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=10041 ;

--
-- Dumping data for table `#__extensions`
--

INSERT INTO `#__extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html","enable_flash":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"name":"com_weblinks","type":"component","creationDate":"2016-03-22","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":"","filename":"weblinks"}', '{"show_comp_description":"1","comp_description":"","show_link_hits":"1","show_link_description":"1","show_other_cats":"0","show_headings":"0","show_numbers":"0","show_report":"1","count_clicks":"1","target":"0","link_icons":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","show_publishing_options":"1","show_article_options":"1","show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.2","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"LIB_PHPUTF8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"LIB_JOOMLA","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"https:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"1aad42ffbb7444d65ef7ad834eb371cd"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"LIB_IDNA","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"LIB_PHPASS","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"name":"mod_weblinks","type":"module","creationDate":"2016-03-22","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":"","filename":"mod_weblinks"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '{"name":"plg_content_geshi","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"","authorUrl":"qbnz.com\\/highlighter","version":"3.0.0","description":"PLG_CONTENT_GESHI_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.18.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2016","author":"Ephox Corporation","copyright":"Ephox Corporation","authorEmail":"N\\/A","authorUrl":"http:\\/\\/www.tinymce.com","version":"4.4.3","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"mode":"1","skin":"0","entity_encoding":"raw","lang_mode":"0","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","resizing":"true","resize_horizontal":"false","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `#__extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"name":"plg_search_weblinks","type":"plugin","creationDate":"2016-03-22","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":"","filename":"weblinks"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 1, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 0, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 0, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 0, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 0, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 0, 1, 0, '{"name":"plg_finder_weblinks","type":"plugin","creationDate":"2016-03-22","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":"","filename":"weblinks"}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 0, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 0, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{"name":"plg_system_updatenotification","type":"plugin","creationDate":"May 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION","group":"","filename":"updatenotification"}', '{"lastrun":1479957784}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_module","type":"plugin","creationDate":"October 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_MODULE_XML_DESCRIPTION","group":"","filename":"module"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{"name":"plg_system_stats","type":"plugin","creationDate":"November 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_STATS_XML_DESCRIPTION","group":"","filename":"stats"}', '{"mode":3,"lastrun":1479957789,"unique_id":"6a3181e55421aeaab7ecbda10baa407fc2326132","interval":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(455, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{"name":"plg_installer_packageinstaller","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"packageinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_FOLDERINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"folderinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_URLINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"urlinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"October 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.4","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"October 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.4","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"October 2016","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.4","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(801, 'pkg_weblinks', 'package', 'pkg_weblinks', '', 0, 1, 1, 0, '{"name":"pkg_weblinks","type":"package","creationDate":"2016-03-22","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PKG_WEBLINKS_XML_DESCRIPTION","group":"","filename":"pkg_weblinks"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB) Language Pack","type":"package","creationDate":"October 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.4.1","description":"en-GB language pack","group":"","filename":"pkg_en-GB"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'AS002048', 'template', 'as002048', '', 0, 1, 1, 0, '{"name":"AS 002048","type":"template","creationDate":"2013-01-21","author":"AS Designing","copyright":"AS Designing","authorEmail":"","authorUrl":"http:\\/\\/www.asdesigning.com","version":"2.4.0","description":"\\n\\t\\n\\t\\n\\n\\t\\t\\t<img src=\\"..\\/templates\\/as002048\\/template_thumbnail.png\\" align=\\"left\\" style=\\"margin: 0px 10px 10px 0px;\\" \\/>\\n\\t\\t\\t\\n\\t\\t\\t<h1>AS Template 002048 <br>Premium Version for Joomla! 3.0<\\/h1>\\n\\t\\t\\t\\n\\t\\t\\t<br \\/><a href=\\"http:\\/\\/astemplates.com\\/itemdetails.php?id=157&page=howto\\" target=\\"_blank\\">Click here<\\/a>  to see the template documentation.\\n\\t\\t\\t<br \\/>Visit our site for more templates: <a href=\\"http:\\/\\/www.astemplates.com\\" target=\\"_blank\\">http:\\/\\/www.astemplates.com<\\/a>.\\n\\t\\t\\t<br \\/><br \\/>\\n\\t\\t\\t\\n\\t\\t\\t<\\/span>\\n\\t\\t\\t<br \\/><br \\/>\\n\\t","group":""}', '{"logo_img":"","slogan_txt":"","logo_size":"7","aside_left_width":"3","aside_right_width":"3","feature_totop":"1","feature_totop_text":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'mod_as_menu', 'module', 'mod_as_menu', '', 0, 1, 0, 0, '{"name":"mod_as_menu","type":"module","creationDate":"Unknown","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"3.0","description":"mod_as_menu_XML_DESCRIPTION","group":""}', '{"startLevel":"1","endLevel":"0","showAllChildren":"1","cache":"1","cache_time":"900","cachemode":"itemid","as-delay":"500","as-animation":"opacity:''show''","as-speed":"normal","easing":"swing"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 'mod_as_artslider', 'module', 'mod_as_artslider', '', 0, 1, 0, 0, '{"name":"mod_as_artslider","type":"module","creationDate":"September 2012","author":"Unknown","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"","authorUrl":"","version":"1.0","description":"MOD_AS_ARTSLIDER_XML_DESCRIPTION","group":""}', '{"catid":"","image":"0","item_title":"0","item_heading":"h4","readmore":"0","count":"5","ordering":"a.publish_up","cache":"1","cache_time":"900","cachemode":"itemid","theme":"0","script":"0","":"MOD_AS_ARTSLIDER_CAPTION","alignment":"center","autoAdvance":"false","mobileAutoAdvance":"false","height":"50%","minHeight":"200px","imagePath":"images\\/","overlayer":"false","portrait":"true","loader":"pie","pieDiameter":"38","piePosition":"rightTop","barDirection":"leftToRight","barPosition":"bottom","loaderColor":"#eeeeee","loaderBgColor":"#222222","loaderOpacity":".8","loaderPadding":"2","loaderStroke":"7","cols":"6","rows":"4","slicedCols":"6","slicedRows":"4","easing":"easeInOutExpo","mobileEasing":"easeInOutExpo","fx":"random","mobileFx":"simpleFade","gridDifference":"250","opacityOnGrid":"false","slideOn":"random","time":"7000","transPeriod":"1500","hover":"false","navigation":"true","navigationHover":"true","mobileNavHover":"true","pagination":"false","playPause":"false","pauseOnClick":"false","thumbnails":"false","show_caption":"0","captionEffect":"fadeIn"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 'AcyMailing', 'component', 'com_acymailing', '', 1, 1, 0, 0, '{"name":"AcyMailing","type":"component","creationDate":"novembre 2016","author":"Acyba","copyright":"Copyright (C) 2009-2016 ACYBA SAS - All rights reserved.","authorEmail":"dev@acyba.com","authorUrl":"http:\\/\\/www.acyba.com","version":"5.6.0","description":"Manage your Mailing lists, Newsletters, e-mail marketing campaigns","group":"","filename":"acymailing_j3"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 'AcyMailing : trigger Joomla Content plugins', 'plugin', 'contentplugin', 'acymailing', 0, 0, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 15, 0),
(10011, 'AcyMailing Manage text', 'plugin', 'managetext', 'acymailing', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(10012, 'AcyMailing Tag : Website links', 'plugin', 'online', 'acymailing', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(10013, 'AcyMailing : share on social networks', 'plugin', 'share', 'acymailing', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 20, 0),
(10014, 'AcyMailing : Statistics Plugin', 'plugin', 'stats', 'acymailing', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 50, 0),
(10015, 'AcyMailing table of contents generator', 'plugin', 'tablecontents', 'acymailing', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10016, 'AcyMailing Tag : CB User information', 'plugin', 'tagcbuser', 'acymailing', 0, 0, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(10017, 'AcyMailing Tag : content insertion', 'plugin', 'tagcontent', 'acymailing', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 11, 0),
(10018, 'AcyMailing Tag : Subscriber information', 'plugin', 'tagsubscriber', 'acymailing', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(10019, 'AcyMailing Tag : Manage the Subscription', 'plugin', 'tagsubscription', 'acymailing', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10020, 'AcyMailing Tag : Date / Time', 'plugin', 'tagtime', 'acymailing', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10021, 'AcyMailing Tag : Joomla User Information', 'plugin', 'taguser', 'acymailing', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(10022, 'AcyMailing Template Class Replacer', 'plugin', 'template', 'acymailing', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 25, 0),
(10023, 'AcyMailing : (auto)Subscribe during Joomla registration', 'plugin', 'regacymailing', 'system', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10024, 'AcyMailing Module', 'module', 'mod_acymailing', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10025, 'AS Scroller', 'module', 'mod_as_scroller', '', 0, 1, 0, 0, '{"name":"AS Scroller","type":"module","creationDate":"2012-08-23","author":"AS Designing","copyright":"AS Designing","authorEmail":"","authorUrl":"http:\\/\\/www.asdesigning.com","version":"2.0.0","description":"\\n    \\n\\n            <img src=\\"..\\/modules\\/mod_as_scroller\\/extension_thumbnail.png\\" align=\\"left\\" style=\\"margin: 0px 20px 10px 0px;\\" \\/>\\n            \\n            <h1>AS Extensions - AS Scroller<\\/h1>\\n            <br \\/>\\n            Horizontal image scroller for one or more images<br \\/>\\n\\t\\t\\tVisit our site for more extensions: <a href=\\"http:\\/\\/www.astemplates.com\\" target=\\"_blank\\">www.astemplates.com<\\/a>\\n            \\n            <br \\/><br \\/>    \\n    \\n    ","group":""}', '{"scroller_width":"100%","scroller_height":"100px","scroller_bgcolor":"","scroller_speed":"1","Header1":"Images","scroller_folder":"images","scroller_usesubs":"0","scroller_randomizing":"0","scroller_direction":"left","scroller_imgwidth":"","scroller_imgheight":"","scroller_imgspacing":"3","scroller_valignment":"top","Header2":"URLs","scroller_urls":"","scroller_urlrepeat":"1","scroller_urltarget":"0","Header3":"On Mouse Actions","scroller_onmouseover":"pause","cache":"1","cache_time":"900","cachemode":"itemid","Header6":"Custom CSS","as_slider_css":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10027, 'mod_articles_single', 'module', 'mod_articles_single', '', 0, 1, 0, 0, '{"name":"mod_articles_single","type":"module","creationDate":"Unknown","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"1.1.0","description":"MOD_ARTICLES_SINGLE_XML_DESCRIPTION","group":""}', '{"article_id":"","item_title":"0","item_heading":"h4","published_on":"0","createdby":"0","show_intro_image":"1","readmore":"0","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10035, 'System - Google Maps', 'plugin', 'plugin_googlemap3', 'system', 0, 1, 1, 0, '{"name":"System - Google Maps","type":"plugin","creationDate":"July 2014","author":"Mike Reumer","copyright":"(C) 2014 Reumer","authorEmail":"tech@reumer.net","authorUrl":"tech.reumer.net","version":"3.3","description":"PLUGIN_GOOGLE_MAP3_INSTALLATION","group":"","filename":"plugin_googlemap3"}', '{"publ":"1","debug":"1","plugincode":"mosmap","brackets":"{","Google_API_version":"3.x","visualrefresh":"1","signedin":"0","show":"1","mapprint":"none","mapclass":"","mapcss":"\\/* For img in the map remove borders, shadow, no margin and no max-width\\r\\n*\\/\\r\\n.map img, .svPanel img {\\r\\n    border: 0px;\\r\\n    box-shadow: none;\\r\\n    margin: 0px !important;\\r\\n    padding: 0px !important;\\r\\n    max-width: none !important;\\r\\n    background: none !important;\\r\\n}\\r\\n\\r\\n\\/* Make sure the directions are below the map\\r\\n*\\/\\r\\n.directions {\\r\\n    clear: left;\\r\\n}\\r\\n\\r\\n.adp-directions {\\r\\n    width: 100%;\\r\\n}\\r\\n\\r\\n\\/* Solve problems in chrome with the show of the direction steps in full width\\r\\n*\\/\\r\\n.adp-placemark {\\r\\n    width : 100%;\\r\\n}\\r\\n\\r\\n\\/* Padding for image overlay\\r\\n*\\/\\r\\n.controlDiv {\\r\\n    padding : 5px;\\r\\n}\\r\\n","loadmootools":"1","timeinterval":"500","Google_API_key":"","Google_Multi_API_key":"","urlsetting":"http_host","googlewebsite":"maps.google.com","styledmap":"","align":"center","langtype":"site","lang":"","width":"100%","height":"360","effect":"none","lat":"43.656877","lon":"-79.32085","centerlat":"","centerlon":"","address":"","geoloc":"0","geocenter":"0","controltype":"UI","zoomType":"Large","svcontrol":"0","returncontrol":"1","zoom":"13","corzoom":"0","minzoom":"0","maxzoom":"19","rotation":"1","zoomnew":"1","zoomWheel":"1","keyboard":"0","mapType":"Normal","showmaptype":"1","showNormalMaptype":"1","showSatelliteMaptype":"1","showHybridMaptype":"1","showTerrainMaptype":"1","showscale":"0","overview":"0","dragging":"1","marker":"1","icon":"","iconwidth":"","iconheight":"","iconanchorx":"","iconanchory":"","iconshadow":"","iconshadowwidth":"","iconshadowheight":"","iconimagemap":"","traffic":"0","transit":"0","bicycle":"0","panoramio":"0","panominzoom":"none","panomaxzoom":"none","pano_userid":"","pano_tag":"","weather":"0","weathercloud":"0","weatherinfo":"1","weathertempunit":"celsius","weatherwindunit":"km","dir":"0","dirtype":"D","formdirtype":"1","avoidhighways":"0","avoidtoll":"0","diroptimize":"0","diralternatives":"0","showdir":"1","animdir":"0","animspeed":"1","animautostart":"0","animunit":"kilometers","formspeed":"0","formaddress":"0","formdir":"0","autocompl":"both","langanim":"en;The requested panorama could not be displayed|Could not generate a route for the current start and end addresses|Street View coverage is not available for this route|You have reached your destination|miles|miles|ft|kilometers|kilometer|meters|In|You will reach your destination|Stop|Drive|Press Drive to follow your route|Route|Speed|Fast|Medium|Slow","txtdir":"Directions: ","txtgetdir":"Get Directions","txtfrom":"From here","txtto":"To here","txtdiraddr":"Address: ","txt_driving":"","txt_avhighways":"","txt_avtoll":"","txt_walking":"","txt_bicycle":"","txt_transit":"","txt_optimize":"","txt_alternatives":"","inputsize":"25","dirdefault":"0","gotoaddr":"0","gotoaddrzoom":"0","gotoaddrtimeout":"5000","txtaddr":"Address: ##","erraddr":"Address ## not found!","txtgotoaddr":"Goto","clientgeotype":"google","lightbox":"0","txtlightbox":"Open lightbox","lbxcaption":"","lbxwidth":"500","lbxheight":"700","lbxcenterlat":"","lbxcenterlon":"","lbxzoom":"","sv":"none","svpano":"","svwidth":"100%","svheight":"300","svyaw":"0","svpitch":"0","svzoom":"","svautorotate":"0","svaddress":"1","kmlrenderer":"google","kmlsidebar":"none","kmlsbwidth":"200","kmlfoldersopen":"0","kmlhide":"0","kmlscale":"0","kmlopenmethod":"click","kmlsbsort":"none","kmllightbox":"0","kmlmessshow":"0","kmlclickablemarkers":"1","kmlzoommarkers":"0","kmlopendivmarkers":"","kmlcontentlinkmarkers":"0","kmllinkablemarkers":"0","kmllinktarget":"_self","kmllinkmethod":"dblclick","kmlhighlite":"{ ''color'': ''#aaffff'', ''opacity'': 0.3,  ''textcolor'': ''#000000'' }","kmlmarkerlabel":"100","kmlmarkerlabelclass":"","kmlpolylabel":"100","kmlpolylabelclass":"","proxy":"1","txtsrchnrby":"Search nearby","txtzoomhere":"Zoom Here","txtaddrstart":"Start address:","txtkmlgetdir":"Go","txtback":null,"txtsearchnearby":"Search nearby: e.g. pizza","txtsearch":"Go","maxcluster":"","clustericonurl":"\\/media\\/plugin_googlemap3\\/site\\/geoxmlv3\\/images\\/m","gridsize":"","minmarkerscluster":"","maxlinesinfocluster":"","clusterinfowindow":"click","clusterzoom":"dblclick","clustermarkerzoom":"16","txtzoomin":"Zoom in to show more","txtclustercount1":"...and","txtclustercount2":"more","tilelayer":"","tilemethod":"","tileopacity":"1","tilebounds":"","tileminzoom":"0","tilemaxzoom":"19","imageurl":"","imageposition":"RIGHT_TOP","imageindex":"1","imagewidth":"","imageheight":"","twittername":"","twittertweets":"15","twittericon":"\\/media\\/plugin_googlemap3\\/site\\/Twitter\\/twitter_map_icon.png","twitterline":"#ff0000ff","twitterlinewidth":"4","twitterstartloc":"0,0,0","twitterconsumerkey":"","twitterconsumersecret":"","twitteraccesstoken":"","twitteraccesstokensecret":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10036, 'com_phocagallery', 'component', 'com_phocagallery', '', 1, 1, 0, 0, '{"name":"com_phocagallery","type":"component","creationDate":"16\\/08\\/2013","author":"Jan Pavelka (www.phoca.cz)","copyright":"Jan Pavelka","authorEmail":"","authorUrl":"www.phoca.cz","version":"4.0.2","description":"Phoca Gallery","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10037, 'mod_phocagallery_image', 'module', 'mod_phocagallery_image', '', 0, 1, 0, 0, '{"name":"mod_phocagallery_image","type":"module","creationDate":"21\\/07\\/2013","author":"Jan Pavelka (www.phoca.cz)","copyright":"Jan Pavelka","authorEmail":"","authorUrl":"www.phoca.cz","version":"4.0.0","description":"MOD_PHOCAGALLERY_IMAGE_DESCRIPTION","group":""}', '{"phocahead1":"MOD_PHOCAGALLERY_IMAGE_CONFIG_GENERAL_SETTINGS_LABEL","category_id":"0","image_ordering":"1","limit_start":"0","limit_count":"1","module_link":"0","phocahead2":"MOD_PHOCAGALLERY_IMAGE_CONFIG_DESIGN_SETTINGS_LABEL","module_type":"shadow1","image_size":"auto","font_color":"#b36b00","display_name":"1","display_icon_detail":"1","display_icon_download":"2","font_size_name":"12","char_length_name":"15","category_box_space":"0","padding_mosaic":"3","custom_image_width":"","custom_image_height":"","minimum_box_width":"","phocagallery_module_width":"","phocahead3":"MOD_PHOCAGALLERY_IMAGE_CONFIG_DEFAULT_DESCRIPTION_SETTINGS_LABEL","spacer4":"MOD_PHOCAGALLERY_IMAGE_DETAIL_WINDOW_WARNING","detail_window":"0","modal_box_overlay_color":"#000000","modal_box_overlay_opacity":"0.3","modal_box_border_color":"#6b6b6b","modal_box_border_width":"2","sb_slideshow_delay":"5","highslide_class":"rounded-white","highslide_opacity":"0","highslide_outline_type":"rounded-white","highslide_fullimg":"0","highslide_close_button":"0","highslide_slideshow":"1","highslide_description":"1","jak_slideshow_delay":"5","spacer10":"MOD_PHOCAGALLERY_IMAGE_JAK_LIGHTBOX_ORIENTATION_WARNING","jak_orientation":"none","jak_description":"1","jak_description_height":"10","display_description_detail":"0","display_title_description":"0","detail_buttons":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10038, 'Unite Revolution Slider 2', 'module', 'mod_unite_revolution2', '', 0, 1, 0, 0, '{"name":"Unite Revolution Slider 2","type":"module","creationDate":"October 2012","author":"Unite CMS","copyright":"Copyright (C) 2012 UniteCMS.net, All rights reserved.","authorEmail":"support@unitecms.net","authorUrl":"http:\\/\\/unitecms.net","version":"4.6.3 b1","description":"\\n\\t\\t\\t<div style=\\"font-weight:normal;\\">\\n\\t\\t\\t<p><strong>Unite Revolution Slider (new edition)<\\/strong> module. Put the slider on any page. All the slider configuration located in Component.<\\/p>\\n\\t\\t\\t<p>\\n\\t\\t\\t\\tFor support please turn to <a href=\\"http:\\/\\/unitecms.net\\/joomla-extensions\\/unite-revolution-slider-responsive\\" target=\\"_blank\\">Unite Revolution Slider Page<\\/a>\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<small style=\\"float:right\\">ver. 4.6.3 b1<\\/small>\\n\\t\\t\\t<\\/div>\\n     \\n\\t ","group":""}', '{"include_jquery":"true","js_load_type":"head","no_conflict_mode":"false","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10039, 'com_uniterevolution2', 'component', 'com_uniterevolution2', '', 1, 1, 0, 0, '{"name":"com_uniterevolution2","type":"component","creationDate":"August 2012","author":"Unite CMS","copyright":"Copyright (C) 2012 UniteCMS.net, All rights reserved.","authorEmail":"support@unitecms.net","authorUrl":"http:\\/\\/www.unitecms.net","version":"4.6.3 b1","description":"\\n\\t\\tRevolution Slider extension and module installation success!\\n\\t","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10040, 'AS Superfish Menu', 'module', 'mod_as_superfish_menu', '', 0, 1, 0, 0, '{"name":"AS Superfish Menu","type":"module","creationDate":"2014-10-24","author":"AS Designing","copyright":"","authorEmail":"","authorUrl":"http:\\/\\/www.asdesigning.com","version":"1.0.0","description":"\\n\\t\\n\\n\\t\\t\\tThe AS Superfish Menu module displays a main Joomla! template menu for desktop and mobile devices.<br \\/>\\n\\t\\t\\t\\n\\t\\t\\t<br \\/>Visit our site for more extensions: <a href=\\"http:\\/\\/www.astemplates.com\\" target=\\"_blank\\">http:\\/\\/www.astemplates.com<\\/a>.\\n\\t\\t\\t<br \\/><br \\/>\\n\\t\\t\\t\\n\\t\\t\\t<\\/span>\\n\\t\\t\\t<br \\/><br \\/>\\n\\t","group":"","filename":"mod_as_superfish_menu"}', '{"startLevel":"1","endLevel":"0","showAllChildren":"1","moduleclass_sfx":"navigation main_menu","cache":"1","cache_time":"900","cachemode":"itemid","sf-delay":"500","sf-sticky":"1","sf-dynamic":"0","sf-layout":"hor","sf-onclick":"0","sf-mobiselect":"0","sf-mobinavtext":"Navigate to...","sf-mobiclassname":"select-menu","sf-mobisubclassname":"sub-menu","sf-mobisticky":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_filters`
--

DROP TABLE IF EXISTS `#__finder_filters`;
CREATE TABLE IF NOT EXISTS `#__finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` mediumtext NOT NULL,
  `params` longtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links`
--

DROP TABLE IF EXISTS `#__finder_links`;
CREATE TABLE IF NOT EXISTS `#__finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`),
  KEY `idx_title` (`title`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms0`
--

DROP TABLE IF EXISTS `#__finder_links_terms0`;
CREATE TABLE IF NOT EXISTS `#__finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms1`
--

DROP TABLE IF EXISTS `#__finder_links_terms1`;
CREATE TABLE IF NOT EXISTS `#__finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms2`
--

DROP TABLE IF EXISTS `#__finder_links_terms2`;
CREATE TABLE IF NOT EXISTS `#__finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms3`
--

DROP TABLE IF EXISTS `#__finder_links_terms3`;
CREATE TABLE IF NOT EXISTS `#__finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms4`
--

DROP TABLE IF EXISTS `#__finder_links_terms4`;
CREATE TABLE IF NOT EXISTS `#__finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms5`
--

DROP TABLE IF EXISTS `#__finder_links_terms5`;
CREATE TABLE IF NOT EXISTS `#__finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms6`
--

DROP TABLE IF EXISTS `#__finder_links_terms6`;
CREATE TABLE IF NOT EXISTS `#__finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms7`
--

DROP TABLE IF EXISTS `#__finder_links_terms7`;
CREATE TABLE IF NOT EXISTS `#__finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms8`
--

DROP TABLE IF EXISTS `#__finder_links_terms8`;
CREATE TABLE IF NOT EXISTS `#__finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms9`
--

DROP TABLE IF EXISTS `#__finder_links_terms9`;
CREATE TABLE IF NOT EXISTS `#__finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termsa`
--

DROP TABLE IF EXISTS `#__finder_links_termsa`;
CREATE TABLE IF NOT EXISTS `#__finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termsb`
--

DROP TABLE IF EXISTS `#__finder_links_termsb`;
CREATE TABLE IF NOT EXISTS `#__finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termsc`
--

DROP TABLE IF EXISTS `#__finder_links_termsc`;
CREATE TABLE IF NOT EXISTS `#__finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termsd`
--

DROP TABLE IF EXISTS `#__finder_links_termsd`;
CREATE TABLE IF NOT EXISTS `#__finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termse`
--

DROP TABLE IF EXISTS `#__finder_links_termse`;
CREATE TABLE IF NOT EXISTS `#__finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termsf`
--

DROP TABLE IF EXISTS `#__finder_links_termsf`;
CREATE TABLE IF NOT EXISTS `#__finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_taxonomy`
--

DROP TABLE IF EXISTS `#__finder_taxonomy`;
CREATE TABLE IF NOT EXISTS `#__finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#__finder_taxonomy`
--

INSERT INTO `#__finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_taxonomy_map`
--

DROP TABLE IF EXISTS `#__finder_taxonomy_map`;
CREATE TABLE IF NOT EXISTS `#__finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_terms`
--

DROP TABLE IF EXISTS `#__finder_terms`;
CREATE TABLE IF NOT EXISTS `#__finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_terms_common`
--

DROP TABLE IF EXISTS `#__finder_terms_common`;
CREATE TABLE IF NOT EXISTS `#__finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `#__finder_terms_common`
--

INSERT INTO `#__finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_tokens`
--

DROP TABLE IF EXISTS `#__finder_tokens`;
CREATE TABLE IF NOT EXISTS `#__finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `#__finder_tokens_aggregate`;
CREATE TABLE IF NOT EXISTS `#__finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_types`
--

DROP TABLE IF EXISTS `#__finder_types`;
CREATE TABLE IF NOT EXISTS `#__finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__languages`
--

DROP TABLE IF EXISTS `#__languages`;
CREATE TABLE IF NOT EXISTS `#__languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) NOT NULL,
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#__languages`
--

INSERT INTO `#__languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__menu`
--

DROP TABLE IF EXISTS `#__menu`;
CREATE TABLE IF NOT EXISTS `#__menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_language` (`language`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_path` (`path`(100))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=579 ;

--
-- Dumping data for table `#__menu`
--

INSERT INTO `#__menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 203, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 71, 80, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 72, 73, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 74, 75, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 76, 77, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 78, 79, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 81, 86, 0, '*', 1),
(8, 'menu', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 82, 83, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 84, 85, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 87, 90, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 88, 89, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 91, 96, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 92, 93, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 94, 95, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 103, 104, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 101, 102, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 97, 98, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 99, 100, 0, '*', 1),
(201, 'usermenu', 'Your Profile', 'your-profile', '', 'your-profile', 'index.php?option=com_users&view=profile', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 109, 110, 0, '*', 0),
(207, 'top', 'Joomla.org', 'joomlaorg', '', 'joomlaorg', 'http://joomla.org', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 107, 108, 0, '*', 0),
(435, 'mainmenu', 'Home Style 2', 'homepage-2', '', 'homepage/homepage-2', 'index.php?option=com_content&view=featured', 'component', 1, 536, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":["9"],"layout_type":"blog","num_leading_articles":"0","num_intro_articles":"2","num_columns":"2","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"alpha","order_date":"created","show_pagination":"0","show_pagination_results":"","show_title":"1","link_titles":"0","show_intro":"","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"","show_readmore":"1","show_readmore_title":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"home_simple","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 4, 5, 0, '*', 0),
(448, 'usermenu', 'Site Administrator', 'site-administrator', '', 'site-administrator', 'administrator', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 115, 116, 0, '*', 0),
(449, 'usermenu', 'Submit an Article', 'submit-an-article', '', 'submit-an-article', 'index.php?option=com_content&view=form&layout=edit', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 111, 112, 0, '*', 0),
(450, 'usermenu', 'Submit a Web Link', 'submit-a-web-link', '', 'submit-a-web-link', 'index.php?option=com_weblinks&view=form&layout=edit', 'component', 1, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 113, 114, 0, '*', 0),
(464, 'top', 'Home', 'home', '', 'home', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"435","menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 105, 106, 0, '*', 0),
(483, 'our-services', 'Design Services', 'design-services', '', 'design-services', 'index.php?option=com_content&view=article&id=39', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"0","show_intro":"0","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_tags":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Design Services","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 117, 118, 0, '*', 0),
(484, 'our-services', 'Vestibulum quis massa posuere', 'vestibulum', '', 'vestibulum', 'index.php?option=com_content&view=article&id=1', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 133, 134, 0, '*', 0),
(485, 'our-services', 'Proin non consectetur arcu', 'proin', '', 'proin', 'index.php?option=com_content&view=article&id=1', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 135, 136, 0, '*', 0),
(486, 'our-services', 'Curabitur non leo nulla', 'curabitur', '', 'curabitur', 'index.php?option=com_content&view=article&id=1', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 137, 138, 0, '*', 0),
(487, 'mainmenu', 'Contact Us', 'contact-us', '', 'contact-us', 'index.php?option=com_contact&view=contact&id=1', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"presentation_style":"plain","show_contact_category":"hide","show_contact_list":"","show_tags":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 65, 66, 0, '*', 0),
(488, 'mainmenu', 'About Us', 'about-us', '', 'about-us', 'index.php?option=com_content&view=article&id=14', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 51, 54, 0, '*', 0),
(489, 'mainmenu', 'Blog', 'blog', '', 'blog', 'index.php?option=com_content&view=category&layout=blog&id=18', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"1","show_readmore_title":"1","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Blog","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 37, 44, 0, '*', 0),
(490, 'mainmenu', 'Blog 2 Columns', 'blog-2', '', 'blog/blog-2', 'index.php?option=com_content&view=category&layout=blog&id=19', 'component', 1, 489, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"4","num_columns":"2","num_links":"0","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"1","show_readmore_title":"1","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Blog 2 Columns","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 40, 41, 0, '*', 0),
(491, 'mainmenu', 'Blog 3 Columns', 'blog-3', '', 'blog/blog-3', 'index.php?option=com_content&view=category&layout=blog&id=20', 'component', 1, 489, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"6","num_columns":"3","num_links":"0","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_featured":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"1","show_readmore_title":"1","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_tags":"","show_noauth":"0","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"1","page_heading":"Blog 3 Columns","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 42, 43, 0, '*', 0),
(492, 'mainmenu', 'Blog 1 Column', 'blog-1', '', 'blog/blog-1', 'index.php?option=com_content&view=category&layout=blog&id=21', 'component', 1, 489, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"3","num_columns":"1","num_links":"0","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"1","show_readmore_title":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 38, 39, 0, '*', 0),
(493, 'mainmenu', 'Our Portfolio', 'our-portfolio', '', 'services/our-portfolio', 'index.php?option=com_content&view=category&layout=as002048:gallery&id=44', 'component', 1, 495, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"0","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"12","num_columns":"4","num_links":"0","multi_column_order":"1","show_subcategory_content":"-1","show_filter":"1","image_float":"use_article","orderby_pri":"none","orderby_sec":"order","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"1","link_titles":"1","show_intro":"","info_block_position":"0","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"","show_publish_date":"0","show_item_navigation":"","show_vote":"0","show_readmore":"0","show_readmore_title":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"1","page_heading":"Our Portfolio","pageclass_sfx":"gallery","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 34, 35, 0, '*', 0),
(494, 'mainmenu', 'Testimonials', 'testimonials', '', 'about-us/testimonials', 'index.php?option=com_content&view=category&layout=as002048:category&id=26', 'component', 1, 488, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"1","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"10","num_columns":"1","num_links":"0","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"0","link_titles":"0","show_intro":"","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"0","show_readmore_title":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"testimonials","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 52, 53, 0, '*', 0),
(495, 'mainmenu', 'Services', 'services', '', 'services', 'index.php?option=com_content&view=article&id=39', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"0","show_intro":"0","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_tags":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 31, 36, 0, '*', 0),
(496, 'mainmenu', 'Special Services', 'special-services', '', 'services/special-services', 'index.php?option=com_content&view=category&layout=as002048:category&id=31', 'component', -2, 495, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"0","show_description":"0","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"4","num_columns":"2","num_links":"0","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"1","link_titles":"0","show_intro":"1","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"1","show_readmore_title":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 32, 33, 0, '*', 0),
(497, 'mainmenu', 'Features', 'features', '', 'features', 'index.php?option=com_content&view=article&id=49', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"0","show_intro":"","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_tags":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"Template Features","show_page_heading":1,"page_heading":"Template Features","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 9, 30, 0, '*', 0),
(498, 'our-services', 'Donec tempor, mauris', 'curabitur-2', '', 'curabitur-2', 'index.php?option=com_content&view=article&id=1', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 139, 140, 0, '*', 0),
(499, 'our-services', 'Aenean sed neque etleo', 'curabitur-3', '', 'curabitur-3', 'index.php?option=com_content&view=article&id=1', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 141, 142, 0, '*', 0),
(500, 'our-services', 'Proin auctor nisl ornare risus', 'curabitur-4', '', 'curabitur-4', 'index.php?option=com_content&view=article&id=1', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 143, 144, 0, '*', 0),
(501, 'our-services', 'Vestibulum et nunc ante', 'curabitur-5', '', 'curabitur-5', 'index.php?option=com_content&view=article&id=1', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 145, 146, 0, '*', 0),
(502, 'terms-menu', 'Terms of Use', 'terms-of-use', '', 'terms-of-use', 'index.php?option=com_content&view=article&id=60', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"0","show_intro":"0","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 147, 148, 0, '*', 0),
(503, 'terms-menu', 'Privacy Policy', 'privacy-policy', '', 'privacy-policy', 'index.php?option=com_content&view=article&id=61', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"0","show_intro":"0","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 149, 150, 0, '*', 0),
(513, 'mainmenu', 'Color Styles', 'color-styles', '', 'features/color-styles', 'index.php?option=com_content&view=article&id=62', 'component', -2, 497, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"0","show_intro":"","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_tags":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Color Styles","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 10, 23, 0, '*', 0),
(514, 'mainmenu', 'Default', 'default', '', 'features/color-styles/default', 'index.php?option=com_content&view=article&id=62', 'component', -2, 513, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"0","show_intro":"","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_tags":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Color Styles","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 11, 12, 0, '*', 0),
(515, 'mainmenu', 'Orange', 'orange', '', 'features/color-styles/orange', 'index.php?option=com_content&view=article&id=62', 'component', -2, 513, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"0","show_intro":"","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_tags":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Color Styles","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 13, 14, 0, '*', 0),
(516, 'mainmenu', 'Forest', 'forest', '', 'features/color-styles/forest', 'index.php?option=com_content&view=article&id=62', 'component', -2, 513, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"0","show_intro":"","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_tags":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Color Styles","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 15, 16, 0, '*', 0),
(517, 'mainmenu', 'Silver', 'silver', '', 'features/color-styles/silver', 'index.php?option=com_content&view=article&id=62', 'component', -2, 513, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"0","show_intro":"","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_tags":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Color Styles","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 17, 18, 0, '*', 0),
(518, 'mainmenu', 'Sky', 'sky', '', 'features/color-styles/sky', 'index.php?option=com_content&view=article&id=62', 'component', -2, 513, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"0","show_intro":"","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_tags":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Color Styles","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 19, 20, 0, '*', 0),
(519, 'mainmenu', 'Teal', 'teal', '', 'features/color-styles/teal', 'index.php?option=com_content&view=article&id=62', 'component', -2, 513, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"0","show_intro":"","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_tags":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Color Styles","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 21, 22, 0, '*', 0),
(520, 'mainmenu', 'Module Positions', 'module-positions', '', 'features/module-positions', 'index.php?option=com_content&view=article&id=63', 'component', -2, 497, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"0","show_intro":"","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_tags":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Module Positions","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 24, 25, 0, '*', 0),
(521, 'mainmenu', 'Parameters', 'parameters', '', 'features/parameters', 'index.php?option=com_content&view=article&id=64', 'component', -2, 497, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"0","show_intro":"","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_tags":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Template Parameters","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 26, 27, 0, '*', 0),
(522, 'mainmenu', 'Typography', 'typography', '', 'features/typography', 'index.php?option=com_content&view=article&id=65', 'component', -2, 497, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"0","show_intro":"","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 28, 29, 0, '*', 0),
(523, 'social-menu', 'facebook', '2013-03-29-23-35-57', '', '2013-03-29-23-35-57', 'http://www.facebook.com', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"facebook","menu_image":"images\\/sampledata\\/as002048\\/ico.facebook.png","menu_text":0}', 7, 8, 0, '*', 0),
(524, 'social-menu', 'twitter', '2013-03-29-23-35-58', '', '2013-03-29-23-35-58', 'http://www.twitter.com', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"twitter","menu_image":"images\\/sampledata\\/as002048\\/ico.twitter.png","menu_text":0}', 49, 50, 0, '*', 0),
(525, 'social-menu', 'linkedin', '2013-03-29-23-35-59', '', '2013-03-29-23-35-59', 'http://www.linkedin.com', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"linkedin","menu_image":"images\\/sampledata\\/as002048\\/ico.linkedin.png","menu_text":0}', 63, 64, 0, '*', 0),
(526, 'social-menu', 'youtube', '2013-03-29-23-35-60', '', '2013-03-29-23-35-60', 'http://www.youtube.com', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"youtube","menu_image":"images\\/sampledata\\/as002048\\/ico.youtube.png","menu_text":0}', 69, 70, 0, '*', 0),
(527, 'social-menu', 'rss', '2013-03-29-23-35-61', '', '2013-03-29-23-35-61', 'http://www.cbc.ca/rss/', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"rss","menu_image":"images\\/sampledata\\/as002048\\/ico.rss.png","menu_text":0}', 67, 68, 0, '*', 0),
(528, 'our-services', 'Hosting Services', 'hosting-services', '', 'hosting-services', 'index.php?option=com_content&view=article&id=39', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"0","show_intro":"0","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_tags":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Hosting Services","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 119, 120, 0, '*', 0),
(529, 'our-services', 'Development Services', 'development-services', '', 'development-services', 'index.php?option=com_content&view=article&id=39', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"0","show_intro":"0","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_tags":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Development Services","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 121, 122, 0, '*', 0),
(530, 'our-services', 'Search Engine Optimization', 'seo', '', 'seo', 'index.php?option=com_content&view=article&id=39', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"0","show_intro":"0","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_tags":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Search Engine Optimization","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 131, 132, 0, '*', 0),
(531, 'our-services', 'Internet Marketing', 'internet-marketing', '', 'internet-marketing', 'index.php?option=com_content&view=article&id=39', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"0","show_intro":"0","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_tags":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Internet Marketing","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 123, 124, 0, '*', 0),
(532, 'our-services', 'Local Internet Marketing', 'local-internet-marketing', '', 'local-internet-marketing', 'index.php?option=com_content&view=article&id=39', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"0","show_intro":"0","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_tags":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Local Internet Marketing","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 125, 126, 0, '*', 0),
(533, 'our-services', 'Social Media Marketing', 'social-media-marketing', '', 'social-media-marketing', 'index.php?option=com_content&view=article&id=39', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"0","show_intro":"0","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_tags":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Social Media Marketing","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 127, 128, 0, '*', 0),
(534, 'our-services', 'Online Reputation Management', 'online-reputation-management', '', 'online-reputation-management', 'index.php?option=com_content&view=article&id=39', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"0","show_intro":"0","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_tags":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Online Reputation Management","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 129, 130, 0, '*', 0),
(535, 'mainmenu', 'Home Style 1', 'homepage-1', '', 'homepage/homepage-1', 'index.php?Itemid=', 'alias', 1, 536, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"536","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 2, 3, 0, '*', 0),
(536, 'mainmenu', 'Home', 'homepage', '', 'homepage', 'index.php?option=com_content&view=article&id=76', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"0","show_intro":"","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 1, 6, 1, '*', 0),
(537, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 47, 48, 0, '', 1),
(538, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 45, 46, 0, '*', 1),
(539, 'featured-menu', 'Who We Are', 'who-we-are', '', 'who-we-are', 'index.php?option=com_content&view=article&id=10', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"0","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_tags":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Who We Are","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 55, 56, 0, '*', 0);
INSERT INTO `#__menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(540, 'featured-menu', 'What We Offer', 'what-we-offer', '', 'what-we-offer', 'index.php?option=com_content&view=article&id=11', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"0","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_tags":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"What We Offer","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 57, 58, 0, '*', 0),
(541, 'featured-menu', 'Our Awords', 'our-awords', '', 'our-awords', 'index.php?option=com_content&view=article&id=12', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"0","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_tags":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Our Awords","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 59, 60, 0, '*', 0),
(542, 'featured-menu', 'Company Profile', 'company-profile', '', 'company-profile', 'index.php?option=com_content&view=article&id=13', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"0","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_tags":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Company Profile","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 61, 62, 0, '*', 0),
(543, 'main', 'COM_PHOCAGALLERY', 'com-phocagallery', '', 'com-phocagallery', 'index.php?option=com_phocagallery', 'component', 0, 1, 1, 10036, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu.png', 0, '', 151, 178, 0, '', 1),
(544, 'main', 'COM_PHOCAGALLERY_CONTROLPANEL', 'com-phocagallery-controlpanel', '', 'com-phocagallery/com-phocagallery-controlpanel', 'index.php?option=com_phocagallery', 'component', 0, 543, 2, 10036, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-control-panel.png', 0, '', 152, 153, 0, '', 1),
(545, 'main', 'COM_PHOCAGALLERY_IMAGES', 'com-phocagallery-images', '', 'com-phocagallery/com-phocagallery-images', 'index.php?option=com_phocagallery&view=phocagalleryimgs', 'component', 0, 543, 2, 10036, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-gal.png', 0, '', 154, 155, 0, '', 1),
(546, 'main', 'COM_PHOCAGALLERY_CATEGORIES', 'com-phocagallery-categories', '', 'com-phocagallery/com-phocagallery-categories', 'index.php?option=com_phocagallery&view=phocagallerycs', 'component', 0, 543, 2, 10036, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-cat.png', 0, '', 156, 157, 0, '', 1),
(547, 'main', 'COM_PHOCAGALLERY_THEMES', 'com-phocagallery-themes', '', 'com-phocagallery/com-phocagallery-themes', 'index.php?option=com_phocagallery&view=phocagalleryt', 'component', 0, 543, 2, 10036, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-theme.png', 0, '', 158, 159, 0, '', 1),
(548, 'main', 'COM_PHOCAGALLERY_CATEGORYRATING', 'com-phocagallery-categoryrating', '', 'com-phocagallery/com-phocagallery-categoryrating', 'index.php?option=com_phocagallery&view=phocagalleryra', 'component', 0, 543, 2, 10036, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-vote.png', 0, '', 160, 161, 0, '', 1),
(549, 'main', 'COM_PHOCAGALLERY_IMAGERATING', 'com-phocagallery-imagerating', '', 'com-phocagallery/com-phocagallery-imagerating', 'index.php?option=com_phocagallery&view=phocagalleryraimg', 'component', 0, 543, 2, 10036, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-vote-img.png', 0, '', 162, 163, 0, '', 1),
(550, 'main', 'COM_PHOCAGALLERY_CATEGORYCOMMENTS', 'com-phocagallery-categorycomments', '', 'com-phocagallery/com-phocagallery-categorycomments', 'index.php?option=com_phocagallery&view=phocagallerycos', 'component', 0, 543, 2, 10036, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-comment.png', 0, '', 164, 165, 0, '', 1),
(551, 'main', 'COM_PHOCAGALLERY_IMAGECOMMENTS', 'com-phocagallery-imagecomments', '', 'com-phocagallery/com-phocagallery-imagecomments', 'index.php?option=com_phocagallery&view=phocagallerycoimgs', 'component', 0, 543, 2, 10036, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-comment-img.png', 0, '', 166, 167, 0, '', 1),
(552, 'main', 'COM_PHOCAGALLERY_USERS', 'com-phocagallery-users', '', 'com-phocagallery/com-phocagallery-users', 'index.php?option=com_phocagallery&view=phocagalleryusers', 'component', 0, 543, 2, 10036, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-users.png', 0, '', 168, 169, 0, '', 1),
(553, 'main', 'COM_PHOCAGALLERY_FB', 'com-phocagallery-fb', '', 'com-phocagallery/com-phocagallery-fb', 'index.php?option=com_phocagallery&view=phocagalleryfbs', 'component', 0, 543, 2, 10036, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-fb.png', 0, '', 170, 171, 0, '', 1),
(554, 'main', 'COM_PHOCAGALLERY_TAGS', 'com-phocagallery-tags', '', 'com-phocagallery/com-phocagallery-tags', 'index.php?option=com_phocagallery&view=phocagallerytags', 'component', 0, 543, 2, 10036, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-tags.png', 0, '', 172, 173, 0, '', 1),
(555, 'main', 'COM_PHOCAGALLERY_STYLES', 'com-phocagallery-styles', '', 'com-phocagallery/com-phocagallery-styles', 'index.php?option=com_phocagallery&view=phocagalleryefs', 'component', 0, 543, 2, 10036, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-styles.png', 0, '', 174, 175, 0, '', 1),
(556, 'main', 'COM_PHOCAGALLERY_INFO', 'com-phocagallery-info', '', 'com-phocagallery/com-phocagallery-info', 'index.php?option=com_phocagallery&view=phocagalleryin', 'component', 0, 543, 2, 10036, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-info.png', 0, '', 176, 177, 0, '', 1),
(559, 'main', 'COM_UNITEREVOLUTION2', 'com-uniterevolution2', '', 'com-uniterevolution2', 'index.php?option=com_uniterevolution2', 'component', 0, 1, 1, 10039, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_uniterevolution2/images/icon-16-revolution.png', 0, '', 179, 180, 0, '', 1),
(568, 'main', 'AcyMailing', 'acymailing', '', 'acymailing', 'index.php?option=com_acymailing', 'component', 0, 1, 1, 10009, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-acymailing.png', 0, '{}', 181, 196, 0, '', 1),
(569, 'main', 'Users', 'users', '', 'acymailing/users', 'index.php?option=com_acymailing&ctrl=subscriber', 'component', 0, 568, 2, 10009, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-users.png', 0, '{}', 182, 183, 0, '', 1),
(570, 'main', 'Lists', 'lists', '', 'acymailing/lists', 'index.php?option=com_acymailing&ctrl=list', 'component', 0, 568, 2, 10009, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-acylist.png', 0, '{}', 184, 185, 0, '', 1),
(571, 'main', 'Newsletters', 'newsletters', '', 'acymailing/newsletters', 'index.php?option=com_acymailing&ctrl=newsletter', 'component', 0, 568, 2, 10009, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-newsletter.png', 0, '{}', 186, 187, 0, '', 1),
(572, 'main', 'Templates', 'templates', '', 'acymailing/templates', 'index.php?option=com_acymailing&ctrl=template', 'component', 0, 568, 2, 10009, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-acytemplate.png', 0, '{}', 188, 189, 0, '', 1),
(573, 'main', 'Queue', 'queue', '', 'acymailing/queue', 'index.php?option=com_acymailing&ctrl=queue', 'component', 0, 568, 2, 10009, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-process.png', 0, '{}', 190, 191, 0, '', 1),
(574, 'main', 'Statistics', 'statistics', '', 'acymailing/statistics', 'index.php?option=com_acymailing&ctrl=stats', 'component', 0, 568, 2, 10009, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-stats.png', 0, '{}', 192, 193, 0, '', 1),
(575, 'main', 'Configuration', 'configuration', '', 'acymailing/configuration', 'index.php?option=com_acymailing&ctrl=cpanel', 'component', 0, 568, 2, 10009, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-acyconfig.png', 0, '{}', 194, 195, 0, '', 1),
(576, 'main', 'com_weblinks', 'com-weblinks', '', 'com-weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 1, 'class:weblinks', 0, '{}', 197, 202, 0, '', 1),
(577, 'main', 'com_weblinks_links', 'com-weblinks-links', '', 'com-weblinks/com-weblinks-links', 'index.php?option=com_weblinks', 'component', 0, 576, 2, 21, 0, '0000-00-00 00:00:00', 0, 1, 'class:weblinks', 0, '{}', 198, 199, 0, '', 1),
(578, 'main', 'com_weblinks_categories', 'com-weblinks-categories', '', 'com-weblinks/com-weblinks-categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 576, 2, 21, 0, '0000-00-00 00:00:00', 0, 1, 'class:weblinks-cat', 0, '{}', 200, 201, 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__menu_types`
--

DROP TABLE IF EXISTS `#__menu_types`;
CREATE TABLE IF NOT EXISTS `#__menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `#__menu_types`
--

INSERT INTO `#__menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 0, 'usermenu', 'User Menu', 'A Menu for logged-in Users'),
(3, 0, 'our-services', 'Our Services', ''),
(4, 0, 'terms-menu', 'Terms Menu', ''),
(5, 0, 'social-menu', 'Social Menu', ''),
(6, 0, 'featured-menu', 'Featured Menu', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__messages`
--

DROP TABLE IF EXISTS `#__messages`;
CREATE TABLE IF NOT EXISTS `#__messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__messages_cfg`
--

DROP TABLE IF EXISTS `#__messages_cfg`;
CREATE TABLE IF NOT EXISTS `#__messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `#__modules`
--

DROP TABLE IF EXISTS `#__modules`;
CREATE TABLE IF NOT EXISTS `#__modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=175 ;

--
-- Dumping data for table `#__modules`
--

INSERT INTO `#__modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 0, 'Main Menu', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 1, '{"menutype":"mainmenu","active":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":" nav-pills","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"1","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(2, 0, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 0, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(4, 0, 'My Recently Added Articles', '', '', 1, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 2, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"by_me","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(8, 0, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 2, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"1","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(9, 0, 'Quick Links', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 2, 1, '{"context":"mod_quickicon","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","automatic_title":"0","module_tag":"div","bootstrap_size":"1","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(10, 0, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 2, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 0, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 2, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 0, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 2, 1, '', 1, '*'),
(14, 0, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 2, 1, '', 1, '*'),
(15, 0, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 2, 1, '', 1, '*'),
(16, 0, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 0, 'Breadcrumbs', '', '', 1, 'as-position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_breadcrumbs', 1, 0, '{"showHere":"0","showHome":"1","homeText":"Home","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"12","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(19, 0, 'User Menu', '', '', 3, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 2, 1, '{"menutype":"usermenu","active":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"1","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(27, 0, 'Archived Articles', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_archive', 1, 1, '{"count":"10","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(28, 0, 'Latest Article', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_latest', 1, 1, '{"catid":[""],"count":"5","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"1","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(29, 0, 'Articles Most Read', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_popular', 1, 1, '{"catid":["26","29"],"count":"5","show_front":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(30, 0, 'Feed Display', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_feed', 1, 1, '{"rssurl":"http:\\/\\/community.joomla.org\\/blogs\\/community.feed?type=rss","rssrtl":"0","rsstitle":"1","rssdesc":"1","rssimage":"1","rssitems":"3","rssitemdesc":"1","word_count":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(31, 0, 'News Flash', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_news', 1, 1, '{"catid":["19"],"image":"0","item_title":"0","link_titles":"","item_heading":"h4","showLastSeparator":"1","readmore":"1","count":"1","ordering":"a.publish_up","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(33, 0, 'Random Image', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_random_image', 1, 0, '{"type":"jpg","folder":"images\\/headers","link":"","width":"","height":"","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"1","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(34, 0, 'Articles Related Items', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_related_items', 1, 1, '{"showDate":"0","layout":"_:default","moduleclass_sfx":"","owncache":"1"}', 0, '*'),
(35, 0, 'Search', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_search', 1, 1, '{"label":"","width":"20","text":"","button":"","button_pos":"right","imagebutton":"","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(36, 0, 'Statistics', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_stats', 1, 1, '{"serverinfo":"1","siteinfo":"1","counter":"1","increase":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(37, 0, 'Syndicate Feeds', '', '', 1, 'syndicateload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_syndicate', 1, 1, '{"text":"Feed Entries","format":"rss","layout":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(38, 0, 'Users Latest', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_users_latest', 1, 1, '{"shownumber":"5","linknames":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"static"}', 0, '*'),
(39, 0, 'Who''s Online', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_whosonline', 1, 1, '{"showmode":"2","linknames":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(40, 0, 'Wrapper', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_wrapper', 1, 1, '{"url":"http:\\/\\/www.youtube.com\\/embed\\/vb2eObvmvdI","add":"1","scrolling":"auto","width":"640","height":"390","height_auto":"1","target":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(41, 0, 'Footer', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_footer', 1, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(48, 0, 'Image Module', '', '<p><img src="images/headers/blue-flower.jpg" alt="Blue Flower" /></p>', 1, 'position-3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"1","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(49, 0, 'Weblinks', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_weblinks', 1, 1, '{"catid":"32","count":"5","ordering":"title","direction":"asc","target":"3","description":"0","hits":"0","count_clicks":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(52, 0, 'Breadcrumbs', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_breadcrumbs', 1, 1, '{"showHere":"1","showHome":"1","homeText":"Home","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(56, 0, 'Banners', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_banners', 1, 1, '{"target":"1","count":"1","cid":"1","catid":["15"],"tag_search":"0","ordering":"random","header_text":"","footer_text":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(61, 0, 'Articles Categories', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_categories', 1, 1, '{"parent":"29","show_description":"0","show_children":"0","count":"0","maxlevel":"0","layout":"_:default","item_heading":"4","moduleclass_sfx":"","owncache":"1","cache_time":"900"}', 0, '*'),
(62, 0, 'Language Switcher', '', '', 3, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_languages', 1, 1, '{"header_text":"","footer_text":"","image":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(63, 0, 'Search', '', '', 3, 'as-position-10', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 0, '{"label":"","width":"20","text":"","button":"1","button_pos":"right","imagebutton":"","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(64, 0, 'Language Switcher', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_languages', 1, 1, '{"header_text":"","footer_text":"","dropdown":"0","image":"1","inline":"1","show_active":"1","full_name":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"1","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(69, 0, 'Articles Category', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_category', 1, 1, '{"mode":"normal","show_on_article_page":"1","show_front":"show","count":"0","category_filtering_type":"1","catid":["72"],"show_child_category_articles":"0","levels":"1","author_filtering_type":"1","created_by":[""],"author_alias_filtering_type":"1","created_by_alias":[""],"excluded_articles":"","date_filtering":"off","date_field":"a.created","start_date_range":"","end_date_range":"","relative_date":"30","article_ordering":"a.title","article_ordering_direction":"ASC","article_grouping":"none","article_grouping_direction":"ksort","month_year_format":"F Y","item_heading":"4","link_titles":"1","show_date":"0","show_date_field":"created","show_date_format":"Y-m-d H:i:s","show_category":"0","show_hits":"0","show_author":"0","show_introtext":"0","introtext_limit":"100","show_readmore":"0","show_readmore_title":"1","readmore_limit":"15","layout":"_:default","moduleclass_sfx":"","owncache":"1","cache_time":"900"}', 0, '*'),
(79, 0, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(84, 0, 'Smart Search Module', '', '', 2, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_finder', 1, 1, '{"searchfilter":"","show_autosuggest":"1","show_advanced":"0","layout":"_:default","moduleclass_sfx":"","field_size":20,"alt_label":"","show_label":"0","label_pos":"top","show_button":"0","button_pos":"right","opensearch":"1","opensearch_title":""}', 0, '*'),
(86, 0, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 2, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(91, 112, 'AS Menu', '', '', 1, 'as-position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_as_menu', 1, 0, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"1","module_id":"1","class_sfx":"","moduleclass_sfx":"navigation","layout":"_:default","cache":"1","cache_time":"900","cachemode":"itemid","menu_delay":"500","menu_speed":"normal","bg_color":"","gradient_topcolor":"","gradient_btmcolor":"","font_family":"''Trebuchet MS'', Arial, Helvetica, sans-serif","font_size1":"14","font_size2":"12","font_color":"","hfont_color":"","submenu_width":"191","border_radius":"0","module_tag":"div","bootstrap_size":"9","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(93, 0, 'AS ArtSlider', '', '', 1, 'as-position-5', 850, '2014-05-19 18:33:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_as_artslider', 1, 0, '{"category_id":["41"],"show_image":"1","show_title":"1","title_heading":"h2","title_color":"626262","firstword_title_color":"","secondword_title_color":"626262","link_titles":"0","link_title_color":"626262","link_hover_title_color":"","readmore":"1","readmore_txt":"Find Out More ...","readmore_gradient_topcolor":"","readmore_gradient_bottomcolor":"","readmore_bgcolor":"","readmore_color":"FFFFFF","articles_num":"3","ordering":"a.publish_up","layout":"_:default","moduleclass_sfx":"slider","cache":"1","cache_time":"900","cachemode":"itemid","slider_style":"1","slider_alignment":"center","slider_height":"39.7%","slider_autoplay":"1","slider_mobi_autoplay":"0","slider_columns":"6","slider_rows":"4","slider_slicedcols":"6","slider_slicedrows":"4","slider_easing":"easeInOutExpo","slider_mobieasing":"easeInOutExpo","slider_animation":"simpleFade","slider_mobianimation":"simpleFade","slider_grid_diff":"250","slider_grid_opacity":"0","slider_showtime":"5000","slider_transperiod":"500","slider_pause":"1","slider_stop":"0","slider_pagination":"1","slider_pagination_radius":"5px","slider_pagination_color":"FFFFFF","slider_pagination_hovercolor":"","slider_navigation":"0","slider_hover_navigation":"0","slider_play_pause":"0","slider_caption":"1","slider_caption_color":"626262","slider_caption_fontsize":"14px","slider_caption_animation":"fadeIn","module_tag":"div","bootstrap_size":"12","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(94, 0, 'Events & News', '', '', 1, 'as-position-15', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_news', 1, 0, '{"catid":["10"],"image":"1","item_title":"1","link_titles":"1","item_heading":"h3","showLastSeparator":"0","readmore":"0","count":"3","ordering":"a.publish_up","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h2","header_class":"","style":"0"}', 0, '*'),
(95, 0, 'Terms Menu', '', '', 1, 'as-position-35', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"terms-menu","active":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(96, 0, 'Who We Are', '', '', 1, 'as-position-6', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_news', 1, 0, '{"catid":["11"],"image":"1","item_title":"0","link_titles":"","item_heading":"h4","showLastSeparator":"0","readmore":"1","count":"1","ordering":"a.publish_up","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"3","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(97, 0, 'What We Offer', '', '', 2, 'as-position-6', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_news', 1, 0, '{"catid":["12"],"image":"1","item_title":"0","link_titles":"","item_heading":"h4","showLastSeparator":"0","readmore":"1","count":"1","ordering":"a.publish_up","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"3","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(98, 0, 'Our Awords', '', '', 3, 'as-position-6', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_news', 1, 0, '{"catid":["13"],"image":"1","item_title":"0","link_titles":"","item_heading":"h4","showLastSeparator":"0","readmore":"1","count":"1","ordering":"a.publish_up","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"3","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(99, 0, 'Company Profile', '', '', 4, 'as-position-6', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_news', 1, 0, '{"catid":["14"],"image":"1","item_title":"0","link_titles":"","item_heading":"h4","showLastSeparator":"0","readmore":"1","count":"1","ordering":"a.publish_up","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"3","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(100, 0, 'Latest News', '', '', 1, 'as-position-30', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_news', 1, 1, '{"catid":["10"],"image":"0","item_title":"1","link_titles":"1","item_heading":"h3","showLastSeparator":"0","readmore":"0","count":"2","ordering":"a.publish_up","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"3","header_tag":"h2","header_class":"","style":"0"}', 0, '*'),
(101, 0, 'Monthly Newsletter', '', '', 2, 'as-position-30', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_acymailing', 1, 1, '{"effect":"normal","lists":"None","hiddenlists":"All","displaymode":"tableless","listschecked":"All","checkmode":"0","dropdown":"0","overlay":"0","link":"1","customfields":"name,email","nametext":"","emailtext":"","fieldsize":"95%","displayfields":"0","introtext":"","finaltext":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris elementum orci at nibh eleifend cursus quis a enim. ","showsubscribe":"1","subscribetext":"","subscribetextreg":"","showunsubscribe":"0","unsubscribetext":"","redirectmode":"0","redirectlink":"","redirectlinkunsub":"","showterms":"0","showtermspopup":"1","termscontent":"0","mootoolsintro":"","mootoolsbutton":"","boxwidth":"250","boxheight":"200","moduleclass_sfx":"","textalign":"none","loggedin":"1","cache":"0","includejs":"header","itemid":"","module_tag":"div","bootstrap_size":"3","header_tag":"h2","header_class":"","style":"0"}', 0, '*'),
(102, 0, 'Our Partners', '', '', 1, 'as-position-23', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_as_scroller', 1, 0, '{"scroller_width":"100%","scroller_height":"100px","scroller_bgcolor":"","scroller_speed":"1","scroller_folder":"images\\/sampledata\\/as002048\\/partners","scroller_usesubs":"0","scroller_randomizing":"0","scroller_direction":"left","scroller_imgwidth":"","scroller_imgheight":"","scroller_imgspacing":"30","scroller_valignment":"top","scroller_urls":"","scroller_urlrepeat":"1","scroller_urltarget":"0","scroller_onmouseover":"pause","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","as_slider_css":"","module_tag":"div","bootstrap_size":"12","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(103, 107, 'Our Services', '', '', 6, 'as-position-30', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"our-services","active":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"3","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(104, 0, 'Monthly Newsletter', '', '', 3, 'as-position-30', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_acymailing', 1, 1, '{"effect":"normal","lists":"None","hiddenlists":"All","displaymode":"tableless","listschecked":"All","checkmode":"0","dropdown":"0","overlay":"0","link":"1","customfields":"name,email","nametext":"","emailtext":"","fieldsize":"95%","displayfields":"0","introtext":"","finaltext":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris elementum orci at nibh eleifend cursus quis a enim. ","showsubscribe":"1","subscribetext":"","subscribetextreg":"","showunsubscribe":"0","unsubscribetext":"","redirectmode":"0","redirectlink":"","redirectlinkunsub":"","showterms":"0","showtermspopup":"1","termscontent":"0","mootoolsintro":"","mootoolsbutton":"","boxwidth":"250","boxheight":"200","moduleclass_sfx":"","textalign":"none","loggedin":"1","cache":"0","includejs":"header","itemid":"","module_tag":"div","bootstrap_size":"3","header_tag":"h2","header_class":"","style":"0"}', 0, '*'),
(105, 0, 'Contact Us', '', '<p><img src="images/sampledata/as002048/ico.contactus.png" width="60" height="65" /></p>\r\n<h1>+1 800 987 65 43</h1>\r\n<p>E-mail us: email@demolink.org</p>\r\n<ul class="social">\r\n<li><img src="images/sampledata/as002048/ico.facebook.png" width="32" height="32" /></li>\r\n<li><img src="images/sampledata/as002048/ico.twitter.png" width="32" height="32" /></li>\r\n<li><img src="images/sampledata/as002048/ico.linkedin.png" width="32" height="32" /></li>\r\n<li><img src="images/sampledata/as002048/ico.youtube.png" width="32" height="32" /></li>\r\n</ul>', 4, 'as-position-30', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"3","header_tag":"h2","header_class":"","style":"0"}', 0, '*'),
(106, 106, 'Monthly Newsletter', '', '', 5, 'as-position-30', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_acymailing', 1, 1, '{"effect":"normal","lists":"None","hiddenlists":"All","displaymode":"tableless","listschecked":"All","checkmode":"0","dropdown":"0","overlay":"0","link":"1","customfields":"name,email","nametext":"","emailtext":"","fieldsize":"95%","displayfields":"0","introtext":"","finaltext":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris elementum orci at nibh eleifend cursus quis a enim. ","showsubscribe":"1","subscribetext":"","subscribetextreg":"","showunsubscribe":"0","unsubscribetext":"","redirectmode":"0","redirectlink":"","redirectlinkunsub":"","showterms":"0","showtermspopup":"1","termscontent":"0","mootoolsintro":"","mootoolsbutton":"","boxwidth":"250","boxheight":"200","moduleclass_sfx":"","textalign":"none","loggedin":"1","cache":"0","includejs":"header","itemid":"","module_tag":"div","bootstrap_size":"3","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(107, 0, 'Call Us', '', '<p>Call Us: <span>+1 800 987 65 43</span></p>', 2, 'as-position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"call-now","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"6","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(108, 110, 'Our History', '', '', 3, 'as-position-16', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_news', 1, 1, '{"catid":["42"],"image":"0","item_title":"1","link_titles":"1","item_heading":"h2","showLastSeparator":"1","readmore":"0","count":"3","ordering":"a.publish_up","layout":"_:default","moduleclass_sfx":"history","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h2","header_class":"","style":"0"}', 0, '*'),
(109, 0, 'Resources', '', '<ul>\r\n<li><a href="#">Maecenas vitae mi id leo porta lobortis.</a></li>\r\n<li><a href="#">Suspendisse egestas ligula ante.</a></li>\r\n<li><a href="#">Aliquam auctor laoreet dolor, quis.</a></li>\r\n<li><a href="#">Quisque vulputate libero nec mauris mollis.</a></li>\r\n</ul>', 1, 'as-position-22', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"3","header_tag":"h2","header_class":"","style":"0"}', 0, '*'),
(110, 0, 'What people say about us', '', '<blockquote>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquam justo neque. Maecenas blandit luctus rhoncus. Sed consectetur iaculis purus tempus pulvinar. Nullam consequat imperdiet fringilla. Vestibulum gravida elit in dui rutrum placerat. Vivamus vitae fermentum tortor. Aliquam et dui et turpis.<br /> <a href="#">Martin George, demolink.org</a></blockquote>', 1, 'as-position-22', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"5","header_tag":"h2","header_class":"","style":"0"}', 0, '*'),
(111, 0, 'Resources', '', '<ul>\r\n<li><a href="#">Maecenas vitae mi id leo porta lobortis.</a></li>\r\n<li><a href="#">Suspendisse egestas ligula ante.</a></li>\r\n<li><a href="#">Aliquam auctor laoreet dolor, quis eleifend nunc mollis at.</a></li>\r\n<li><a href="#">Quisque vulputate libero nec mauris mattis ut mollis.</a></li>\r\n<li><a href="#">Vivamus interdum egestas mi sed gravida.</a></li>\r\n</ul>', 1, 'as-position-23', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"4","header_tag":"h2","header_class":"","style":"0"}', 0, '*'),
(112, 0, 'Login', '', '', 2, 'as-position-10', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h2","header_class":"","style":"0"}', 0, '*'),
(113, 0, 'Design Services', '', '', 5, 'as-position-6', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_news', 1, 1, '{"catid":["51"],"image":"1","item_title":"0","link_titles":"","item_heading":"h4","showLastSeparator":"0","readmore":"1","count":"1","ordering":"a.publish_up","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"3","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(114, 0, 'Development Services', '', '', 7, 'as-position-6', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_news', 1, 1, '{"catid":["52"],"image":"1","item_title":"0","link_titles":"","item_heading":"h4","showLastSeparator":"0","readmore":"1","count":"1","ordering":"a.publish_up","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"3","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(115, 0, 'SEO Services', '', '', 8, 'as-position-6', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_news', 1, 1, '{"catid":["54"],"image":"1","item_title":"0","link_titles":"","item_heading":"h4","showLastSeparator":"0","readmore":"1","count":"1","ordering":"a.publish_up","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"3","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(116, 0, 'Practice', '', '<ul class="item-list">\r\n<li>\r\n<h3><a href="#">Operation Domestic Relations</a></h3>\r\n</li>\r\n<li>\r\n<h3><a href="#">Business Consulting Services</a></h3>\r\n</li>\r\n<li>\r\n<h3><a href="#">Taxes and Private Clients</a></h3>\r\n</li>\r\n<li>\r\n<h3><a href="#">Copyright and Trademark</a></h3>\r\n</li>\r\n<li>\r\n<h3><a href="#">Aircraft Acquisition</a></h3>\r\n</li>\r\n<li>\r\n<h3><a href="#">Controversy Experience</a></h3>\r\n</li>\r\n<li>\r\n<h3><a href="#">Estate and Trust</a></h3>\r\n</li>\r\n</ul>', 1, 'as-position-11', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h2","header_class":"","style":"0"}', 0, '*'),
(117, 0, 'mod_articles_single', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_single', 1, 1, '', 0, '*'),
(118, 0, 'Conditions', '', '', 2, 'as-position-16', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_single', 1, 1, '{"article_id":"47","item_title":"0","link_titles":"","item_heading":"h4","published_on":"0","createdby":"0","show_intro_image":"1","readmore":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h2","header_class":"","style":"0"}', 0, '*'),
(119, 0, 'Our Business', '', '', 1, 'as-position-10', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_single', 1, 1, '{"article_id":"48","item_title":"0","link_titles":"","item_heading":"h4","published_on":"0","createdby":"0","show_intro_image":"1","readmore":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h2","header_class":"","style":"0"}', 0, '*'),
(120, 0, 'AS ArtSlider', '', '', 1, 'as-position-5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_as_artslider', 1, 0, '{"category_id":["8"],"show_image":"1","show_title":"1","title_heading":"h2","link_titles":"","readmore":"1","readmore_txt":"More ...","articles_num":"3","ordering":"a.publish_up","layout":"_:default","moduleclass_sfx":"slider","cache_time":"900","cachemode":"itemid","slider_style":"1","slider_alignment":"center","slider_height":"33.8%","slider_autoplay":"1","slider_mobi_autoplay":"0","slider_columns":"6","slider_rows":"4","slider_slicedcols":"6","slider_slicedrows":"4","slider_easing":"easeInOutExpo","slider_mobieasing":"easeInOutExpo","slider_animation":"random","slider_mobianimation":"simpleFade","slider_grid_diff":"250","slider_grid_opacity":"0","slider_showtime":"5000","slider_transperiod":"500","slider_pause":"1","navigation":"1","navigationHover":"1","mobileNavHover":"1","pagination":"1","playPause":"0","pauseOnClick":"0","thumbnails":"0","show_caption":"1","captionEffect":"fadeIn","module_tag":"div","bootstrap_size":"12","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(121, 0, 'AS ArtSlider', '', '', 1, 'as-position-5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_as_artslider', 1, 0, '{"category_id":["8"],"show_image":"1","show_title":"1","title_heading":"h2","link_titles":"","readmore":"1","readmore_txt":"More ...","articles_num":"3","ordering":"a.publish_up","layout":"_:default","moduleclass_sfx":"slider","cache_time":"900","cachemode":"itemid","slider_style":"1","slider_alignment":"center","slider_height":"33.8%","slider_autoplay":"1","slider_mobi_autoplay":"0","slider_columns":"6","slider_rows":"4","slider_slicedcols":"6","slider_slicedrows":"4","slider_easing":"easeInOutExpo","slider_mobieasing":"easeInOutExpo","slider_animation":"random","slider_mobianimation":"simpleFade","slider_grid_diff":"250","slider_grid_opacity":"0","slider_showtime":"5000","slider_transperiod":"500","slider_pause":"1","slider_pagination":"0","playPause":"1","pauseOnClick":"0","thumbnails":"0","show_caption":"1","captionEffect":"fadeIn","module_tag":"div","bootstrap_size":"12","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(122, 0, 'User Menu', '', '', 4, 'as-position-15', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 2, 1, '{"menutype":"usermenu","active":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h2","header_class":"","style":"0"}', 0, '*'),
(123, 0, 'Terms', '', '', 1, 'as-position-10', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_random_image', 1, 0, '{"type":"jpg","folder":"images\\/sampledata\\/as002048\\/terms","link":"","width":"96%","height":"","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(124, 0, 'Template Features ', '', '<p>In this template we would like to present something new and extraordinary – and its name is Joomla 3 Bootstrapped Template! This template is based on the Bootstrap and AS Frameworks, the Bootstrap Framework makes it fully responsive to all screen resolutions and aspect ratios, the AS Framework allows you to customize our templates with minimum coding knowledge.<br /><br />Developed by Twitter (http://twitter.github.com/bootstrap/), Bootstrap is a library of user interface elements that will standardize the user interfaces of your Joomla! templates. Not only is this great for template developers who no longer have to develop their own interface elements but also for users who will get to enjoy a standard easy to use and graphically pleasing interface across all Joomla! templates.</p>', 9, 'as-position-6', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"12","header_tag":"h2","header_class":"","style":"0"}', 0, '*'),
(125, 0, 'Search', '', '', 3, 'as-position-16', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_search', 1, 0, '{"label":"","width":"20","text":"","button":"1","button_pos":"right","imagebutton":"","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(126, 0, 'Social Menu', '', '', 1, 'as-position-3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"social-menu","active":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"6","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(127, 103, 'Kreative - Try it For Free', '', '<h4 class="tryit"><a href="http://www.astemplates.com/itemdetails.php?id=179">Kreative : Bootstrapped Joomla 3.x Template - Fully responsive to all screen resolutions</a></h4>\r\n<p class="tryit"><a class="readmore" href="http://www.astemplates.com/joomla-template-details/179-002048">Try It For Free</a></p>', 1, 'as-position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"12","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(129, 0, 'Contact Us - Title', '', '<h3>Contact Us</h3>', 1, 'as-position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"12","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(130, 0, 'About Us - Title', '', '<h3>About Us</h3>', 1, 'as-position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"12","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(131, 0, 'Our Portfolio - Title', '', '<h3>Our Portfolio</h3>', 1, 'as-position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"12","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(132, 0, 'Testimonials - Title', '', '<h3>Testimonials</h3>', 1, 'as-position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"12","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(133, 0, 'Blog - Title', '', '<h3>Blog</h3>', 1, 'as-position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"12","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(134, 0, 'Blog 1 Column - Title', '', '<h3>Blog 1 Column</h3>', 1, 'as-position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"12","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(135, 0, 'Blog 2 Columns - Title', '', '<h3>Blog 2 Columns</h3>', 1, 'as-position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"12","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(136, 0, 'Blog 3 Columns - Title', '', '<h3>Blog 3 Columns</h3>', 1, 'as-position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"12","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(137, 0, 'Services - Title', '', '<h3>Services</h3>', 1, 'as-position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"12","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(138, 0, 'Special Services - Title', '', '<h3>Special Services</h3>', 1, 'as-position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"12","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(139, 0, 'Affordable Solutions You Can Trust', '', '<p>We pride ourselves on providing quality work with unparalleled support. Every customer we''ve had the pleasure to work with receives an unparalleled level of care and enthusiasm - guaranteeing you long reliable relationships. Heard it before? We know, so have we, that''s why we encourage all clients to carefully review our client list and contact our references. We practice what we preach, and it shows. We have a long list of happy customers and we can''t wait to share them with you.</p>', 1, 'as-position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"12","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(140, 0, 'Hosting Services', '', '', 6, 'as-position-6', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_news', 1, 1, '{"catid":["53"],"image":"1","item_title":"0","link_titles":"","item_heading":"h4","showLastSeparator":"0","readmore":"1","count":"1","ordering":"a.publish_up","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"3","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(141, 0, 'Terms of Use - Title', '', '<h3>Terms of Use</h3>', 1, 'as-position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"12","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(142, 0, 'Privacy Policy - Title', '', '<h3>Privacy Policy</h3>', 1, 'as-position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"12","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(143, 0, 'Template Features  - Title', '', '<h2 class="module_title ">Template Feature</h2>', 1, 'as-position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"12","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(144, 0, 'Template Features - Title', '', '<h3>Template Features</h3>', 1, 'as-position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"12","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(145, 0, 'Template Parameters - Title', '', '<h3>Template Parameters</h3>', 1, 'as-position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"12","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(146, 0, 'Module Positions - Title', '', '<h3>Contact Us</h3>', 1, 'as-position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"12","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(147, 0, 'Module Positions - Title', '', '<h3>Module Positions</h3>', 1, 'as-position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"12","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(148, 0, 'Online Reputation Management - Title', '', '<h3>Online Reputation Management</h3>', 1, 'as-position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"12","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(149, 111, 'Breadcrumbs', '', '', 1, 'as-position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 0, '{"showHere":"0","showHome":"1","homeText":"","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"12","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(150, 0, 'Design Services - Title', '', '<h3>Design Services</h3>', 1, 'as-position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"12","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(151, 0, 'Hosting Services - Title', '', '<h3>Hosting Services</h3>', 1, 'as-position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"12","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(152, 0, 'Development Services - Title', '', '<h3>Development Services</h3>', 1, 'as-position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"12","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(153, 0, ' Internet Marketing  - Title', '', '<h3>Internet Marketing</h3>', 1, 'as-position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"12","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(154, 0, ' Local Internet Marketing   - Title', '', '<h3>Local Internet Marketing</h3>', 1, 'as-position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"12","header_tag":"h3","header_class":"","style":"0"}', 0, '*');
INSERT INTO `#__modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(155, 0, ' Social Media Marketing  - Title', '', '<h3>Social Media Marketing</h3>', 1, 'as-position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"12","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(156, 0, 'Search Engine Optimization  - Title', '', '<h3>Search Engine Optimization</h3>', 1, 'as-position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"12","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(157, 0, 'Our Partners', '', '', 1, 'as-position-31', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_as_scroller', 1, 1, '{"scroller_width":"100%","scroller_height":"100px","scroller_bgcolor":"","scroller_speed":"1","scroller_folder":"images\\/sampledata\\/as002048\\/partners","scroller_usesubs":"0","scroller_randomizing":"0","scroller_direction":"left","scroller_imgwidth":"","scroller_imgheight":"","scroller_imgspacing":"30","scroller_valignment":"top","scroller_urls":"","scroller_urlrepeat":"1","scroller_urltarget":"0","scroller_onmouseover":"pause","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","as_slider_css":"","module_tag":"div","bootstrap_size":"12","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(159, 0, 'Multipurpose Templates', '', '<p><a href="index.php/"><img class="border" src="images/sampledata/as002048/feature.1.jpg" /></a> <a class="readmore" href="index.php/">Read more...</a></p>\r\n<h3>Multipurpose Templates</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris elementum orci at nibh eleifend cursus quis a enim. Pellentesque lacinia, urna sed consectetur aliquam, turpis dui posuere augue, non venenatis sem est sed felis. Vestibulum magna lectus...</p>', 1, 'as-position-6', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"4","header_tag":"h3","header_class":"align-left","style":"0"}', 0, '*'),
(160, 0, 'Why You Have Choose Our Designs', '', '', 1, 'as-position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"12","header_tag":"h2","header_class":"","style":"0"}', 0, '*'),
(161, 0, 'Excellent Documented', '', '<p><a href="index.php/"><img class="border" src="images/sampledata/as002048/feature.2.jpg" /></a> <a class="readmore" href="index.php/">Read more...</a></p>\r\n<h3>Excellent Documented</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris elementum orci at nibh eleifend cursus quis a enim. Pellentesque lacinia, urna sed consectetur aliquam, turpis dui posuere augue, non venenatis sem est sed felis. Vestibulum magna lectus...</p>', 1, 'as-position-6', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"4","header_tag":"h3","header_class":"align-left","style":"0"}', 0, '*'),
(162, 0, 'Great Support', '', '<p><a href="index.php/"><img class="border" src="images/sampledata/as002048/feature.3.jpg" /></a> <a class="readmore" href="index.php/">Read more...</a></p>\r\n<h3>Great Support</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris elementum orci at nibh eleifend cursus quis a enim. Pellentesque lacinia, urna sed consectetur aliquam, turpis dui posuere augue, non venenatis sem est sed felis. Vestibulum magna lectus...</p>', 1, 'as-position-6', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"4","header_tag":"h3","header_class":"align-left","style":"0"}', 0, '*'),
(163, 0, 'Support Services', '', '<h4><span class="ico"> <img src="images/sampledata/as002048/ico.news.4.png" alt="Support Services" /> </span> Support Services</h4>\r\n<p><a href="#" target="_self">Lorem ipsum dolor sit amet, cons ectetur adipiscing elit orcino [...]</a></p>', 1, 'as-position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"why-us","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"3","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(164, 0, 'Our Partners', '', '', 1, 'as-position-20', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_as_scroller', 1, 0, '{"scroller_width":"100%","scroller_height":"100px","scroller_bgcolor":"","scroller_speed":"1","scroller_folder":"images\\/sampledata\\/as002048\\/partners","scroller_usesubs":"0","scroller_randomizing":"0","scroller_direction":"left","scroller_imgwidth":"","scroller_imgheight":"","scroller_imgspacing":"30","scroller_valignment":"top","scroller_urls":"","scroller_urlrepeat":"1","scroller_urltarget":"0","scroller_onmouseover":"pause","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","as_slider_css":"","module_tag":"div","bootstrap_size":"12","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(165, 0, 'Responsive Design', '', '<h4><span class="ico"> <img src="images/sampledata/as002048/ico.news.8.png" alt="Responsive Design" /> </span> Responsive Design</h4>\r\n<p><a href="#" target="_self">Lorem ipsum dolor sit amet, cons ectetur adipiscing elit orcino [...]</a></p>', 1, 'as-position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"why-us","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"3","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(166, 0, 'How To', '', '<h4><span class="ico"> <img src="images/sampledata/as002048/ico.news.5.png" alt="How To" /> </span> How To</h4>\r\n<p><a href="#" target="_self">Lorem ipsum dolor sit amet, cons ectetur adipiscing elit orcino [...]</a></p>', 1, 'as-position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"why-us","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"3","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(167, 0, 'Multilanguage Ready', '', '<h4><span class="ico"> <img src="images/sampledata/as002048/ico.news.9.png" alt="Support Services" /> </span> Multilanguage Ready</h4>\r\n<p><a href="#" target="_self">Lorem ipsum dolor sit amet, cons ectetur adipiscing elit orcino [...]</a></p>', 1, 'as-position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"why-us","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"3","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(168, 0, 'Unlimited Colors', '', '<h4><span class="ico"> <img src="images/sampledata/as002048/ico.news.6.png" alt="Unlimited Colors" /> </span> Unlimited Colors</h4>\r\n<p><a href="#" target="_self">Lorem ipsum dolor sit amet, cons ectetur adipiscing elit orcino [...]</a></p>', 1, 'as-position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"why-us","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"3","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(169, 0, 'HTML5 and CSS3', '', '<h4><span class="ico"> <img src="images/sampledata/as002048/ico.news.10.png" alt="HTML5 and CSS3" /> </span> HTML5 &amp; CSS3</h4>\r\n<p><a href="#" target="_self">Lorem ipsum dolor sit amet, cons ectetur adipiscing elit orcino [...]</a></p>', 1, 'as-position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"why-us","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"3","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(170, 0, 'Typography', '', '<h4><span class="ico"> <img src="images/sampledata/as002048/ico.news.7.png" alt="Typography" /> </span> Typography</h4>\r\n<p><a href="#" target="_self">Lorem ipsum dolor sit amet, cons ectetur adipiscing elit orcino [...]</a></p>', 1, 'as-position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"why-us","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"3","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(171, 0, 'Highly Customizable', '', '<h4><span class="ico"> <img src="images/sampledata/as002048/ico.news.11.png" alt="Highly Customizable" /> </span> Highly Customizable</h4>\r\n<p><a href="#" target="_self">Lorem ipsum dolor sit amet, cons ectetur adipiscing elit orcino [...]</a></p>', 1, 'as-position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"why-us","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"3","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(172, 105, 'Meet Our Team', '', '', 7, 'as-position-30', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_phocagallery_image', 1, 1, '{"category_id":["1"],"image_ordering":"1","limit_start":"0","limit_count":"4","module_link":"0","module_type":"1","image_size":"medium","font_color":"#b36b00","display_name":"1","display_icon_detail":"1","display_icon_download":"2","font_size_name":"12","char_length_name":"15","category_box_space":"0","padding_mosaic":"3","custom_image_width":"","custom_image_height":"","minimum_box_width":"","phocagallery_module_width":"","detail_window":"2","modal_box_overlay_color":"#000000","modal_box_overlay_opacity":"0.3","modal_box_border_color":"#6b6b6b","modal_box_border_width":"2","sb_slideshow_delay":"5","highslide_class":"rounded-white","highslide_opacity":"0","highslide_outline_type":"rounded-white","highslide_fullimg":"0","highslide_close_button":"0","highslide_slideshow":"1","highslide_description":"1","jak_slideshow_delay":"5","jak_orientation":"none","jak_description":"1","jak_description_height":"10","display_description_detail":"0","display_title_description":"0","detail_buttons":"1","moduleclass_sfx":"","module_css_style":"","cache":"0","module_tag":"div","bootstrap_size":"6","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(173, 108, 'Unite Revolution Slider 2', '', '', 1, 'as-position-5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_unite_revolution2', 1, 0, '{"sliderid":"1","include_jquery":"false","js_load_type":"head","no_conflict_mode":"false","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"12","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(174, 114, 'AS Superfish Menu', '', '', 1, 'as-position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_as_superfish_menu', 1, 0, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"navigation main_menu","cache":"1","cache_time":"900","cachemode":"itemid","sf-delay":"500","sf-sticky":"0","sf-dynamic":"0","sf-layout":"hor","sf-onclick":"0","sf-mobiselect":"0","sf-mobinavtext":"Navigate to...","sf-mobiclassname":"select-menu","sf-mobisubclassname":"sub-menu","sf-mobisticky":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `#__modules_menu`
--

DROP TABLE IF EXISTS `#__modules_menu`;
CREATE TABLE IF NOT EXISTS `#__modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `#__modules_menu`
--

INSERT INTO `#__modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 497),
(17, 513),
(17, 514),
(17, 515),
(17, 516),
(17, 517),
(17, 518),
(17, 519),
(17, 520),
(17, 521),
(17, 522),
(19, 0),
(28, 0),
(33, 0),
(48, 0),
(63, 492),
(79, 0),
(86, 0),
(91, 0),
(93, 435),
(94, 435),
(95, 0),
(96, 435),
(97, 435),
(98, 435),
(99, 435),
(100, 0),
(101, 0),
(102, 435),
(102, 536),
(103, 0),
(104, 0),
(105, 0),
(106, 0),
(107, 0),
(108, 488),
(109, 488),
(110, 488),
(111, 488),
(112, 492),
(113, 495),
(114, 495),
(115, 495),
(116, 496),
(118, 494),
(119, 494),
(120, 435),
(121, 435),
(122, 492),
(123, 502),
(123, 503),
(124, 497),
(125, 492),
(126, 0),
(127, 435),
(129, 487),
(130, 488),
(131, 493),
(132, 494),
(133, 489),
(134, 492),
(135, 490),
(136, 491),
(137, 495),
(138, 496),
(139, 495),
(140, 495),
(141, 502),
(142, 503),
(143, 497),
(144, 497),
(145, 521),
(146, 520),
(147, 520),
(148, 534),
(149, -542),
(149, -541),
(149, -540),
(149, -539),
(149, -536),
(149, -535),
(149, -534),
(149, -533),
(149, -532),
(149, -531),
(149, -530),
(149, -529),
(149, -528),
(149, -521),
(149, -520),
(149, -519),
(149, -518),
(149, -517),
(149, -516),
(149, -515),
(149, -514),
(149, -513),
(149, -503),
(149, -502),
(149, -497),
(149, -495),
(149, -494),
(149, -493),
(149, -492),
(149, -491),
(149, -490),
(149, -489),
(149, -488),
(149, -487),
(149, -483),
(149, -435),
(150, 483),
(151, 528),
(152, 529),
(153, 531),
(154, 532),
(155, 533),
(156, 530),
(157, 435),
(159, 536),
(160, 536),
(161, 536),
(162, 536),
(163, 536),
(164, 536),
(165, 536),
(166, 536),
(167, 536),
(168, 536),
(169, 536),
(170, 536),
(171, 536),
(172, 0),
(173, 535),
(173, 536),
(174, 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__newsfeeds`
--

DROP TABLE IF EXISTS `#__newsfeeds`;
CREATE TABLE IF NOT EXISTS `#__newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__overrider`
--

DROP TABLE IF EXISTS `#__overrider`;
CREATE TABLE IF NOT EXISTS `#__overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__phocagallery`
--

DROP TABLE IF EXISTS `#__phocagallery`;
CREATE TABLE IF NOT EXISTS `#__phocagallery` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(250) NOT NULL DEFAULT '',
  `format` tinyint(1) NOT NULL DEFAULT '0',
  `description` text,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `latitude` varchar(20) NOT NULL DEFAULT '',
  `longitude` varchar(20) NOT NULL DEFAULT '',
  `zoom` int(3) NOT NULL DEFAULT '0',
  `geotitle` varchar(255) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `videocode` text,
  `vmproductid` int(11) NOT NULL DEFAULT '0',
  `imgorigsize` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `metakey` text,
  `metadesc` text,
  `metadata` text,
  `extlink1` text,
  `extlink2` text,
  `extid` varchar(255) NOT NULL DEFAULT '',
  `exttype` tinyint(1) NOT NULL DEFAULT '0',
  `extl` varchar(255) NOT NULL DEFAULT '',
  `extm` varchar(255) NOT NULL DEFAULT '',
  `exts` varchar(255) NOT NULL DEFAULT '',
  `exto` varchar(255) NOT NULL DEFAULT '',
  `extw` varchar(255) NOT NULL DEFAULT '',
  `exth` varchar(255) NOT NULL DEFAULT '',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `#__phocagallery`
--

INSERT INTO `#__phocagallery` (`id`, `catid`, `sid`, `title`, `alias`, `filename`, `format`, `description`, `date`, `hits`, `latitude`, `longitude`, `zoom`, `geotitle`, `userid`, `videocode`, `vmproductid`, `imgorigsize`, `published`, `approved`, `checked_out`, `checked_out_time`, `ordering`, `params`, `metakey`, `metadesc`, `metadata`, `extlink1`, `extlink2`, `extid`, `exttype`, `extl`, `extm`, `exts`, `exto`, `extw`, `exth`, `language`) VALUES
(1, 1, 0, 'Meet Our Team', 'meet-our-team', 'team.1.jpg', 2, NULL, '2013-12-18 00:08:04', 0, '0', '0', 0, '', 0, NULL, 0, 34585, 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(2, 1, 0, 'Meet Our Team', 'meet-our-team', 'team.2.jpg', 2, NULL, '2013-12-18 00:08:04', 0, '0', '0', 0, '', 0, NULL, 0, 36038, 1, 1, 0, '0000-00-00 00:00:00', 2, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(3, 1, 0, 'Meet Our Team', 'meet-our-team', 'team.3.jpg', 2, NULL, '2013-12-18 00:08:04', 0, '0', '0', 0, '', 0, NULL, 0, 31058, 1, 1, 0, '0000-00-00 00:00:00', 3, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(4, 1, 0, 'Meet Our Team', 'meet-our-team', 'team.4.jpg', 2, NULL, '2013-12-18 00:08:04', 0, '0', '0', 0, '', 0, NULL, 0, 33601, 1, 1, 0, '0000-00-00 00:00:00', 4, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*');

-- --------------------------------------------------------

--
-- Table structure for table `#__phocagallery_categories`
--

DROP TABLE IF EXISTS `#__phocagallery_categories`;
CREATE TABLE IF NOT EXISTS `#__phocagallery_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `accessuserid` text,
  `uploaduserid` text,
  `deleteuserid` text,
  `userfolder` text,
  `latitude` varchar(20) NOT NULL DEFAULT '',
  `longitude` varchar(20) NOT NULL DEFAULT '',
  `zoom` int(3) NOT NULL DEFAULT '0',
  `geotitle` varchar(255) NOT NULL DEFAULT '',
  `extid` varchar(255) NOT NULL DEFAULT '',
  `exta` varchar(255) NOT NULL DEFAULT '',
  `extu` varchar(255) NOT NULL DEFAULT '',
  `extauth` varchar(255) NOT NULL DEFAULT '',
  `extfbuid` int(11) NOT NULL DEFAULT '0',
  `extfbcatid` varchar(255) NOT NULL DEFAULT '',
  `params` text,
  `metakey` text,
  `metadesc` text,
  `metadata` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#__phocagallery_categories`
--

INSERT INTO `#__phocagallery_categories` (`id`, `parent_id`, `owner_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `date`, `published`, `approved`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `hits`, `accessuserid`, `uploaduserid`, `deleteuserid`, `userfolder`, `latitude`, `longitude`, `zoom`, `geotitle`, `extid`, `exta`, `extu`, `extauth`, `extfbuid`, `extfbcatid`, `params`, `metakey`, `metadesc`, `metadata`, `language`) VALUES
(1, 0, 0, 'Our Team', '', 'our-team', '', '', '', '', '2013-12-18 00:04:44', 1, 1, 0, '0000-00-00 00:00:00', NULL, 1, 1, 0, 0, '0', '0', '0', '', '', '', 0, '', '', '', '', '', 0, '', NULL, '', '', NULL, '*');

-- --------------------------------------------------------

--
-- Table structure for table `#__phocagallery_comments`
--

DROP TABLE IF EXISTS `#__phocagallery_comments`;
CREATE TABLE IF NOT EXISTS `#__phocagallery_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `comment` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__phocagallery_fb_users`
--

DROP TABLE IF EXISTS `#__phocagallery_fb_users`;
CREATE TABLE IF NOT EXISTS `#__phocagallery_fb_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appid` varchar(255) NOT NULL DEFAULT '',
  `appsid` varchar(255) NOT NULL DEFAULT '',
  `uid` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `secret` varchar(255) NOT NULL DEFAULT '',
  `base_domain` varchar(255) NOT NULL DEFAULT '',
  `expires` varchar(100) NOT NULL DEFAULT '',
  `session_key` text,
  `access_token` text,
  `sig` text,
  `fanpageid` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `comments` text,
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__phocagallery_img_comments`
--

DROP TABLE IF EXISTS `#__phocagallery_img_comments`;
CREATE TABLE IF NOT EXISTS `#__phocagallery_img_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `comment` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__phocagallery_img_votes`
--

DROP TABLE IF EXISTS `#__phocagallery_img_votes`;
CREATE TABLE IF NOT EXISTS `#__phocagallery_img_votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__phocagallery_img_votes_statistics`
--

DROP TABLE IF EXISTS `#__phocagallery_img_votes_statistics`;
CREATE TABLE IF NOT EXISTS `#__phocagallery_img_votes_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `average` float(8,6) NOT NULL DEFAULT '0.000000',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__phocagallery_styles`
--

DROP TABLE IF EXISTS `#__phocagallery_styles`;
CREATE TABLE IF NOT EXISTS `#__phocagallery_styles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `menulink` text,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `#__phocagallery_styles`
--

INSERT INTO `#__phocagallery_styles` (`id`, `title`, `alias`, `filename`, `menulink`, `type`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `language`) VALUES
(1, 'Phocagallery', 'phocagallery', 'phocagallery.css', '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '*'),
(2, 'Rating', '', 'rating.css', NULL, 1, 1, 0, '0000-00-00 00:00:00', 2, NULL, '*'),
(3, 'Default', '', 'default.css', NULL, 2, 1, 0, '0000-00-00 00:00:00', 3, NULL, '*'),
(4, 'Bootstrap', '', 'bootstrap.min.css', NULL, 1, 0, 0, '0000-00-00 00:00:00', 4, NULL, '*');

-- --------------------------------------------------------

--
-- Table structure for table `#__phocagallery_tags`
--

DROP TABLE IF EXISTS `#__phocagallery_tags`;
CREATE TABLE IF NOT EXISTS `#__phocagallery_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link_cat` int(11) NOT NULL DEFAULT '0',
  `link_ext` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__phocagallery_tags_ref`
--

DROP TABLE IF EXISTS `#__phocagallery_tags_ref`;
CREATE TABLE IF NOT EXISTS `#__phocagallery_tags_ref` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `tagid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `i_imgid` (`imgid`,`tagid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__phocagallery_user`
--

DROP TABLE IF EXISTS `#__phocagallery_user`;
CREATE TABLE IF NOT EXISTS `#__phocagallery_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `avatar` varchar(40) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__phocagallery_votes`
--

DROP TABLE IF EXISTS `#__phocagallery_votes`;
CREATE TABLE IF NOT EXISTS `#__phocagallery_votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__phocagallery_votes_statistics`
--

DROP TABLE IF EXISTS `#__phocagallery_votes_statistics`;
CREATE TABLE IF NOT EXISTS `#__phocagallery_votes_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `average` float(8,6) NOT NULL DEFAULT '0.000000',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__postinstall_messages`
--

DROP TABLE IF EXISTS `#__postinstall_messages`;
CREATE TABLE IF NOT EXISTS `#__postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `#__postinstall_messages`
--

INSERT INTO `#__postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_MSG_EACCELERATOR_TITLE', 'COM_CPANEL_MSG_EACCELERATOR_BODY', 'COM_CPANEL_MSG_EACCELERATOR_BUTTON', 'com_cpanel', 1, 'action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_condition', '3.2.0', 1),
(4, 700, 'COM_CPANEL_MSG_PHPVERSION_TITLE', 'COM_CPANEL_MSG_PHPVERSION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/phpversion.php', 'admin_postinstall_phpversion_condition', '3.2.2', 1),
(5, 700, 'COM_CPANEL_MSG_HTACCESS_TITLE', 'COM_CPANEL_MSG_HTACCESS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/htaccess.php', 'admin_postinstall_htaccess_condition', '3.4.0', 1),
(6, 700, 'COM_CPANEL_MSG_ROBOTS_TITLE', 'COM_CPANEL_MSG_ROBOTS_BODY', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.3.0', 1),
(7, 700, 'COM_CPANEL_MSG_LANGUAGEACCESS340_TITLE', 'COM_CPANEL_MSG_LANGUAGEACCESS340_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/languageaccess340.php', 'admin_postinstall_languageaccess340_condition', '3.4.1', 1),
(8, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1),
(9, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__redirect_links`
--

DROP TABLE IF EXISTS `#__redirect_links`;
CREATE TABLE IF NOT EXISTS `#__redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  KEY `idx_link_modifed` (`modified_date`),
  KEY `idx_old_url` (`old_url`(100))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=12 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__revslider_css`
--

DROP TABLE IF EXISTS `#__revslider_css`;
CREATE TABLE IF NOT EXISTS `#__revslider_css` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `handle` text NOT NULL,
  `settings` text,
  `hover` text,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `#__revslider_css`
--

INSERT INTO `#__revslider_css` (`id`, `handle`, `settings`, `hover`, `params`) VALUES
(1, '.tp-caption.medium_grey', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"20px","line-height":"20px","font-family":"Arial","padding":"2px 4px","margin":"0px","border-width":"0px","border-style":"none","background-color":"#888","white-space":"nowrap"}'),
(2, '.tp-caption.small_text', '{"hover":"false"}', '""', '{"font-size":"16px","line-height":"20px","font-weight":"700","font-family":""Trebuchet MS", Arial","color":"#fff","text-decoration":"none","background-color":"transparent","text-shadow":"none","margin":"0px","letter-spacing":"0px","height":"auto","padding":"0px 0px 0px 0px","border-width":"0px","border-color":"rgb(255, 255, 255)","border-style":"none"}'),
(3, '.tp-caption.medium_text', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"20px","line-height":"20px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(4, '.tp-caption.large_text', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"40px","line-height":"40px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(5, '.tp-caption.very_large_text', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"60px","line-height":"60px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap","letter-spacing":"-2px"}'),
(6, '.tp-caption.very_big_white', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"800","font-size":"60px","line-height":"60px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap","padding":"0px 4px","padding-top":"1px","background-color":"#000"}'),
(7, '.tp-caption.very_big_black', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"700","font-size":"60px","line-height":"60px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap","padding":"0px 4px","padding-top":"1px","background-color":"#fff"}'),
(8, '.tp-caption.modern_medium_fat', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"800","font-size":"24px","line-height":"20px","font-family":"\\"Open Sans\\", sans-serif","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(9, '.tp-caption.modern_medium_fat_white', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"800","font-size":"24px","line-height":"20px","font-family":"\\"Open Sans\\", sans-serif","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(10, '.tp-caption.modern_medium_light', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"300","font-size":"24px","line-height":"20px","font-family":"\\"Open Sans\\", sans-serif","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(11, '.tp-caption.modern_big_bluebg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"800","font-size":"30px","line-height":"36px","font-family":"\\"Open Sans\\", sans-serif","padding":"3px 10px","margin":"0px","border-width":"0px","border-style":"none","background-color":"#4e5b6c","letter-spacing":"0"}'),
(12, '.tp-caption.modern_big_redbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"30px","line-height":"36px","font-family":"\\"Open Sans\\", sans-serif","padding":"3px 10px","padding-top":"1px","margin":"0px","border-width":"0px","border-style":"none","background-color":"#de543e","letter-spacing":"0"}'),
(13, '.tp-caption.modern_small_text_dark', NULL, NULL, '{"position":"absolute","color":"#555","text-shadow":"none","font-size":"14px","line-height":"22px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(14, '.tp-caption.thinheadline_dark', NULL, NULL, '{"position":"absolute","color":"rgba(0,0,0,0.85)","text-shadow":"none","font-weight":"300","font-size":"30px","line-height":"30px","font-family":"\\"Open Sans\\"","background-color":"transparent"}'),
(15, '.tp-caption.thintext_dark', NULL, NULL, '{"position":"absolute","color":"rgba(0,0,0,0.85)","text-shadow":"none","font-weight":"300","font-size":"16px","line-height":"26px","font-family":"\\"Open Sans\\"","background-color":"transparent"}'),
(16, '.tp-caption.largeblackbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#000","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(17, '.tp-caption.largepinkbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#db4360","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(18, '.tp-caption.largewhitebg', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#fff","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(19, '.tp-caption.largegreenbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#67ae73","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(20, '.tp-caption.excerpt', '{"hover":"false"}', '{"font-size":"28px","line-height":"32px","font-weight":"700","font-family":""Trebuchet MS",Arial","color":"#fff","text-decoration":"none","background-color":"transparent","text-shadow":"none","margin":"0px","letter-spacing":"0px","height":"auto","padding":"0px","border-width":"0px","border-color":"rgb(255, 255, 255)","border-style":"none"}', '{"font-size":"28px","line-height":"32px","font-weight":"700","font-family":""Trebuchet MS", Arial","color":"#ffffff","text-decoration":"none","background-color":"transparent","text-shadow":"none","margin":"0px","letter-spacing":"0px","height":"auto","padding":"0px 0px 0px 0px","border-width":"0px","border-color":"transparent","border-style":"none"}'),
(21, '.tp-caption.large_bold_grey', NULL, NULL, '{"font-size":"60px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(102, 102, 102)","text-decoration":"none","background-color":"transparent","text-shadow":"none","margin":"0px","padding":"1px 4px 0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(22, '.tp-caption.medium_thin_grey', NULL, NULL, '{"font-size":"34px","line-height":"30px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(102, 102, 102)","text-decoration":"none","background-color":"transparent","padding":"1px 4px 0px","text-shadow":"none","margin":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(23, '.tp-caption.small_thin_grey', NULL, NULL, '{"font-size":"18px","line-height":"26px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(117, 117, 117)","text-decoration":"none","background-color":"transparent","padding":"1px 4px 0px","text-shadow":"none","margin":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(24, '.tp-caption.lightgrey_divider', NULL, NULL, '{"text-decoration":"none","background-color":"rgba(235, 235, 235, 1)","width":"370px","height":"3px","background-position":"initial initial","background-repeat":"initial initial","border-width":"0px","border-color":"rgb(34, 34, 34)","border-style":"none"}'),
(25, '.tp-caption.large_bold_darkblue', NULL, NULL, '{"font-size":"58px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(52, 73, 94)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(26, '.tp-caption.medium_bg_darkblue', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(52, 73, 94)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(27, '.tp-caption.medium_bold_red', NULL, NULL, '{"font-size":"24px","line-height":"30px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(227, 58, 12)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(28, '.tp-caption.medium_light_red', NULL, NULL, '{"font-size":"21px","line-height":"26px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(227, 58, 12)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(29, '.tp-caption.medium_bg_red', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(227, 58, 12)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(30, '.tp-caption.medium_bold_orange', NULL, NULL, '{"font-size":"24px","line-height":"30px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(243, 156, 18)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(31, '.tp-caption.medium_bg_orange', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(243, 156, 18)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(32, '.tp-caption.large_bold_white', NULL, NULL, '{"font-size":"58px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(33, '.tp-caption.medium_light_white', NULL, NULL, '{"font-size":"30px","line-height":"36px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(34, '.tp-caption.mediumlarge_light_white', NULL, NULL, '{"font-size":"34px","line-height":"40px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(35, '.tp-caption.mediumlarge_light_white_center', NULL, NULL, '{"font-size":"34px","line-height":"40px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"#ffffff","text-decoration":"none","background-color":"transparent","padding":"0px 0px 0px 0px","text-align":"center","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(36, '.tp-caption.medium_bg_asbestos', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(127, 140, 141)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(37, '.tp-caption.medium_light_black', NULL, NULL, '{"font-size":"30px","line-height":"36px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(0, 0, 0)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(38, '.tp-caption.large_bold_black', NULL, NULL, '{"font-size":"58px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(0, 0, 0)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(39, '.tp-caption.mediumlarge_light_darkblue', NULL, NULL, '{"font-size":"34px","line-height":"40px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(52, 73, 94)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(40, '.tp-caption.small_light_white', NULL, NULL, '{"font-size":"17px","line-height":"28px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(41, '.tp-caption.roundedimage', NULL, NULL, '{"border-width":"0px","border-color":"rgb(34, 34, 34)","border-style":"none"}'),
(42, '.tp-caption.large_bg_black', NULL, NULL, '{"font-size":"40px","line-height":"40px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(0, 0, 0)","padding":"10px 20px 15px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(43, '.tp-caption.mediumwhitebg', NULL, NULL, '{"font-size":"30px","line-height":"30px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(0, 0, 0)","text-decoration":"none","background-color":"rgb(255, 255, 255)","padding":"5px 15px 10px","text-shadow":"none","border-width":"0px","border-color":"rgb(0, 0, 0)","border-style":"none"}'),
(44, '.tp-caption.caption_text', '{"hover":"false"}', '""', '{"color":"#ffffff","background-color":"transparent","text-decoration":"none","font-size":"16px","line-height":"20px","font-weight":"normal","font-family":"Trebuchet MS,Arial","width":"35%","white-space":"normal !important","border-width":"0px","border-color":"rgb(255, 255, 255)","border-style":"none"}'),
(45, '.tp-caption.caption_heading', '{"hover":"false"}', '""', '{"color":"#ffffff","background-color":"transparent","text-decoration":"none","font-size":"28px","line-height":"32px","font-weight":"normal","font-family":"Trebuchet MS,Arial","width":"35%","white-space":"normal !important","border-width":"0px","border-color":"rgb(255, 255, 255)","border-style":"none"}');

-- --------------------------------------------------------

--
-- Table structure for table `#__revslider_layer_animations`
--

DROP TABLE IF EXISTS `#__revslider_layer_animations`;
CREATE TABLE IF NOT EXISTS `#__revslider_layer_animations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `handle` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__revslider_settings`
--

DROP TABLE IF EXISTS `#__revslider_settings`;
CREATE TABLE IF NOT EXISTS `#__revslider_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `general` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__revslider_sliders`
--

DROP TABLE IF EXISTS `#__revslider_sliders`;
CREATE TABLE IF NOT EXISTS `#__revslider_sliders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#__revslider_sliders`
--

INSERT INTO `#__revslider_sliders` (`id`, `title`, `alias`, `params`) VALUES
(1, 'Revolution Slider', 'Revolution Slider', '{"title":"Revolution Slider","alias":"Revolution Slider","shortcode":"[rev_slider Revolution Slider]","source_type":"gallery","post_types":"post","post_category":"","post_sortby":"ID","posts_sort_direction":"DESC","max_slider_posts":"30","excerpt_limit":"55","slider_template_id":"","posts_list":"","slider_type":"fullwidth","fullscreen_offset_container":"","fullscreen_min_height":"","full_screen_align_force":"off","auto_height":"off","force_full_width":"off","width":"1132","height":"380","responsitive_w1":"940","responsitive_sw1":"770","responsitive_w2":"780","responsitive_sw2":"500","responsitive_w3":"510","responsitive_sw3":"310","responsitive_w4":"0","responsitive_sw4":"0","responsitive_w5":"0","responsitive_sw5":"0","responsitive_w6":"0","responsitive_sw6":"0","delay":"6000","shuffle":"off","lazy_load":"off","use_wpml":"off","stop_slider":"off","stop_after_loops":0,"stop_at_slide":2,"load_googlefont":"false","google_font":["<link href=''http:\\/\\/fonts.googleapis.com\\/css?family=PT+Sans+Narrow:400,700'' rel=''stylesheet'' type=''text\\/css''>"],"position":"center","margin_top":0,"margin_bottom":0,"margin_left":0,"margin_right":0,"shadow_type":"0","show_timerbar":"hide","padding":0,"background_color":"","background_dotted_overlay":"none","show_background_image":"false","background_image":"","bg_fit":"cover","bg_repeat":"no-repeat","bg_position":"center top","touchenabled":"off","stop_on_hover":"on","navigaion_type":"none","navigation_arrows":"none","navigation_style":"round","navigaion_always_on":"false","hide_thumbs":200,"navigaion_align_hor":"center","navigaion_align_vert":"bottom","navigaion_offset_hor":"0","navigaion_offset_vert":20,"leftarrow_align_hor":"left","leftarrow_align_vert":"center","leftarrow_offset_hor":20,"leftarrow_offset_vert":0,"rightarrow_align_hor":"right","rightarrow_align_vert":"center","rightarrow_offset_hor":20,"rightarrow_offset_vert":0,"thumb_width":100,"thumb_height":50,"thumb_amount":5,"hide_slider_under":0,"hide_defined_layers_under":0,"hide_all_layers_under":0,"hide_thumbs_under_resolution":0,"start_with_slide":"1","first_transition_type":"fade","first_transition_duration":300,"first_transition_slot_amount":7,"reset_transitions":"","reset_transition_duration":0,"0":"Execute settings on all slides","template":"false"}');

-- --------------------------------------------------------

--
-- Table structure for table `#__revslider_slides`
--

DROP TABLE IF EXISTS `#__revslider_slides`;
CREATE TABLE IF NOT EXISTS `#__revslider_slides` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slider_id` int(10) unsigned NOT NULL DEFAULT '0',
  `slide_order` int(11) NOT NULL,
  `params` text NOT NULL,
  `layers` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `#__revslider_slides`
--

INSERT INTO `#__revslider_slides` (`id`, `slider_id`, `slide_order`, `params`, `layers`) VALUES
(1, 1, 1, '{"background_type":"trans","title":"Slide 1","state":"published","date_from":"","date_to":"","slide_transition":"random","0":"Remove","slot_amount":7,"transition_rotation":0,"transition_duration":300,"delay":"","enable_link":"false","link_type":"regular","link":"","link_open_in":"same","slide_link":"nothing","link_pos":"front","slide_thumb":"","image_id":"","slide_bg_color":"#E7E7E7","slide_bg_external":"","bg_fit":"cover","bg_fit_x":"100","bg_fit_y":"100","bg_repeat":"no-repeat","bg_position":"center top","bg_position_x":"0","bg_position_y":"0","kenburn_effect":"off","kb_start_fit":"100","kb_end_fit":"100","bg_end_position":"center top","kb_duration":"9000","kb_easing":"Linear.easeNone","image":"","bg_end_position_x":"0","bg_end_position_y":"0","save_performance":"off","class_attr":"","id_attr":"","attr_attr":"","data_attr":"","0":"Remove"}', '[{"text":"Brilliant Design balanced with Cutting Edge Architecture","type":"text","left":25,"top":100,"animation":"tp-fade","easing":"Power4.easeInOut","speed":1000,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"caption_heading","time":100,"endtime":"5000","endspeed":700,"endanimation":"fadeout","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":373,"height":64,"serial":"0","endTimeFinal":5300,"endSpeedFinal":700,"realEndTime":6000,"timeLast":5900,"alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","max_height":"auto","max_width":"auto","whitespace":"nowrap","loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","static_start":"1","static_end":"2","endWithSlide":true,"link_id":"","link_class":"","link_title":"","link_rel":""},{"text":"We bring together world class design skills, Search Engine Optimization, Social Media campaigns and an easy to use Content Management System for the very best results. Take your web presence to the next level.","type":"text","left":25,"top":200,"animation":"tp-fade","easing":"Power3.easeInOut","speed":1000,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"caption_text","time":200,"endtime":"5300","endspeed":700,"endanimation":"fadeout","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":1500,"height":20,"serial":"1","endTimeFinal":5300,"endSpeedFinal":700,"realEndTime":6000,"timeLast":5800,"alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","max_height":"auto","max_width":"auto","whitespace":"nowrap","loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","static_start":"1","static_end":"1","endWithSlide":true},{"style":"","text":"Image 1","type":"image","image_url":"images\\/sampledata\\/as002048\\/slider\\/slider4.png","left":460,"top":35,"animation":"lfr","easing":"Power4.easeOut","speed":1000,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","time":300,"endtime":"","endspeed":1000,"endanimation":"ltl","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":655,"height":350,"serial":"2","endTimeFinal":5000,"endSpeedFinal":1000,"realEndTime":6000,"timeLast":5700,"alt":"","scaleX":"655","scaleY":"350","scaleProportional":true,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","max_height":"auto","max_width":"auto","whitespace":"nowrap","loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","static_start":"1","static_end":"1","endWithSlide":true}]'),
(3, 1, 2, '{"background_type":"trans","title":"Slide 2","state":"published","date_from":"","date_to":"","slide_transition":"random","0":"Choose Image","slot_amount":7,"transition_rotation":0,"transition_duration":300,"delay":"","enable_link":"false","link_type":"regular","link":"","link_open_in":"same","slide_link":"nothing","link_pos":"front","slide_thumb":"","image_id":"","slide_bg_color":"#E7E7E7","slide_bg_external":"","bg_fit":"cover","bg_fit_x":"100","bg_fit_y":"100","bg_repeat":"no-repeat","bg_position":"center top","bg_position_x":"0","bg_position_y":"0","kenburn_effect":"off","kb_start_fit":"100","kb_end_fit":"100","bg_end_position":"center top","kb_duration":"9000","kb_easing":"Linear.easeNone","image":"","0":"Remove","save_performance":"off","class_attr":"","id_attr":"","attr_attr":"","data_attr":"","bg_end_position_x":"0","bg_end_position_y":"0"}', '[{"text":"Whatever your message, we can bring it to life","type":"text","left":25,"top":100,"animation":"tp-fade","easing":"Power4.easeInOut","speed":1000,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"caption_heading","time":1100,"endtime":"5300","endspeed":700,"endanimation":"fadeout","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":373,"height":64,"serial":"0","endTimeFinal":5300,"endSpeedFinal":700,"realEndTime":6000,"timeLast":4900,"alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","max_height":"auto","max_width":"auto","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"1","endWithSlide":true},{"text":"Our team can take the essence of who you are and turn it into the images that will represent your business. Every pixel communicates your message and your value, we ensure those pixels are communicating as effectively as possible","type":"text","left":25,"top":200,"animation":"tp-fade","easing":"Power3.easeInOut","speed":1000,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"caption_text","time":1200,"endtime":"5300","endspeed":700,"endanimation":"fadeout","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":1500,"height":20,"serial":"1","endTimeFinal":5300,"endSpeedFinal":700,"realEndTime":6000,"timeLast":4800,"alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","max_height":"auto","max_width":"auto","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"1","endWithSlide":true},{"style":"","text":"Image 2","type":"image","image_url":"images\\/sampledata\\/as002048\\/slider\\/slider5.png","left":460,"top":35,"animation":"lfl","easing":"Power4.easeOut","speed":1000,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","time":1000,"endtime":"","endspeed":1000,"endanimation":"ltr","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":655,"height":350,"serial":"2","endTimeFinal":5000,"endSpeedFinal":1000,"realEndTime":6000,"timeLast":5000,"alt":"","scaleX":"655","scaleY":"350","scaleProportional":true,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","max_height":"auto","max_width":"auto","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"1","endWithSlide":true}]'),
(4, 1, 3, '{"background_type":"trans","title":"Slide 3","state":"published","date_from":"","date_to":"","slide_transition":"random","0":"Choose Image","slot_amount":7,"transition_rotation":0,"transition_duration":300,"delay":"","enable_link":"false","link_type":"regular","link":"","link_open_in":"same","slide_link":"nothing","link_pos":"front","slide_thumb":"","image_id":"","slide_bg_color":"#E7E7E7","slide_bg_external":"","bg_fit":"cover","bg_fit_x":"100","bg_fit_y":"100","bg_repeat":"no-repeat","bg_position":"center top","bg_position_x":"0","bg_position_y":"0","kenburn_effect":"off","kb_start_fit":"100","kb_end_fit":"100","bg_end_position":"center top","kb_duration":"9000","kb_easing":"Linear.easeNone","image":"","0":"Remove","save_performance":"off","class_attr":"","id_attr":"","attr_attr":"","data_attr":"","bg_end_position_x":"0","bg_end_position_y":"0"}', '[{"text":"Your Brand is the Lifeblood of Your Business.","type":"text","left":690,"top":100,"animation":"tp-fade","easing":"Power4.easeInOut","speed":1000,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"caption_heading","time":1100,"endtime":"5200","endspeed":700,"endanimation":"fadeout","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":373,"height":64,"serial":"0","endTimeFinal":5200,"endSpeedFinal":700,"realEndTime":5900,"timeLast":4800,"alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","max_height":"auto","max_width":"auto","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"1","endWithSlide":false},{"text":"Take off the gloves and get tough. Our crew has some moves to get you fight ready! We will help you keep your brand strong so you can stand tall and proud.","type":"text","left":690,"top":200,"animation":"tp-fade","easing":"Power3.easeInOut","speed":1000,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"caption_text","time":1200,"endtime":"5200","endspeed":700,"endanimation":"fadeout","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":1500,"height":20,"serial":"1","endTimeFinal":5200,"endSpeedFinal":700,"realEndTime":5900,"timeLast":4700,"alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","max_height":"auto","max_width":"auto","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"1","endWithSlide":false},{"style":"","text":"Image 3","type":"image","image_url":"images\\/sampledata\\/as002048\\/slider\\/slider6.png","left":0,"top":35,"animation":"tp-fade","easing":"Power4.easeOut","speed":1000,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","time":1000,"endtime":"5200","endspeed":700,"endanimation":"fadeout","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":655,"height":350,"serial":"2","endTimeFinal":5200,"endSpeedFinal":700,"realEndTime":5900,"timeLast":4900,"alt":"","scaleX":"655","scaleY":"350","scaleProportional":true,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","max_height":"auto","max_width":"auto","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"1","endWithSlide":false}]');

-- --------------------------------------------------------

--
-- Table structure for table `#__revslider_static_slides`
--

DROP TABLE IF EXISTS `#__revslider_static_slides`;
CREATE TABLE IF NOT EXISTS `#__revslider_static_slides` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slider_id` int(9) NOT NULL,
  `params` text NOT NULL,
  `layers` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__schemas`
--

DROP TABLE IF EXISTS `#__schemas`;
CREATE TABLE IF NOT EXISTS `#__schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `#__schemas`
--

INSERT INTO `#__schemas` (`extension_id`, `version_id`) VALUES
(21, '3.4.0'),
(700, '3.6.3-2016-08-16');

-- --------------------------------------------------------

--
-- Table structure for table `#__tags`
--

DROP TABLE IF EXISTS `#__tags`;
CREATE TABLE IF NOT EXISTS `#__tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_language` (`language`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_alias` (`alias`(100))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#__tags`
--

INSERT INTO `#__tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 518, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `#__template_styles`
--

DROP TABLE IF EXISTS `#__template_styles`;
CREATE TABLE IF NOT EXISTS `#__template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `#__template_styles`
--

INSERT INTO `#__template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(10, 'as002048', 0, '1', 'AS002048 - Default', '{"tmpl_style":"style.default.css","body_font_family":"''Trebuchet MS'', Arial, Helvetica, sans-serif","body_font_size":"12","body_font_color":"","hfont_family":"''Trebuchet MS'', Arial, Helvetica, sans-serif","h1_font_size":"","h2_font_size":"","h3_font_size":"","h4_font_size":"","h5_font_size":"","link_font_color":"","hlink_font_color":"","btn_font_color":"","btn_hfont_color":"","btn_gradient_topcolor":"","btn_gradient_bottomcolor":"","logo_size":"3","logo_type":"1","logo_img":"","logo_txt":"Kreative","logo_font_family":"''Trebuchet MS'', Arial, Helvetica, sans-serif","logo_font_size":"36","logo_font_style":"normal","logo_font_weight":"normal","logo_font_color":"","slogan_txt":"creative solutions","slogan_font_family":"''Trebuchet MS'', Arial, Helvetica, sans-serif","slogan_font_size":"12","slogan_font_style":"normal","slogan_font_weight":"normal","slogan_font_color":"","sliderrow_topcolor":"","sliderrow_bottomcolor":"","sliderrow_bgimg":"","aside_left_width":"3","aside_right_width":"4","feature_totop":"1","feature_totop_text":""}');

-- --------------------------------------------------------

--
-- Table structure for table `#__ucm_base`
--

DROP TABLE IF EXISTS `#__ucm_base`;
CREATE TABLE IF NOT EXISTS `#__ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `#__ucm_content`
--

DROP TABLE IF EXISTS `#__ucm_content`;
CREATE TABLE IF NOT EXISTS `#__ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_language` (`core_language`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`),
  KEY `idx_alias` (`core_alias`(100)),
  KEY `idx_title` (`core_title`(100)),
  KEY `idx_content_type` (`core_type_alias`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__ucm_history`
--

DROP TABLE IF EXISTS `#__ucm_history`;
CREATE TABLE IF NOT EXISTS `#__ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__updates`
--

DROP TABLE IF EXISTS `#__updates`;
CREATE TABLE IF NOT EXISTS `#__updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates' AUTO_INCREMENT=50 ;

--
-- Dumping data for table `#__updates`
--

INSERT INTO `#__updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 3, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/km-KH_details.xml', '', ''),
(2, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(3, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.6.2.2', '', 'https://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(4, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(5, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(6, 3, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(7, 3, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(8, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(9, 3, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.6.4.3', '', 'https://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(10, 3, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.6.2.2', '', 'https://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(11, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(12, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(13, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(14, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(15, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(16, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(17, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(18, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(19, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(20, 3, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.3.0.1', '', 'https://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(21, 3, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.1', '', 'https://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(22, 3, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/eu-ES_details.xml', '', ''),
(23, 3, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.2', '', 'https://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(24, 3, 0, 'German DE', '', 'pkg_de-DE', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
(25, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(26, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(27, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(28, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(29, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(30, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.1', '', 'https://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(31, 3, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(32, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(33, 3, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(34, 3, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.1', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(35, 3, 0, 'English CA', '', 'pkg_en-CA', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(36, 3, 0, 'French CA', '', 'pkg_fr-CA', 'package', '', 0, '3.5.1.2', '', 'https://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(37, 3, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.3.0.2', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(38, 3, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.1', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(39, 3, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', ''),
(40, 3, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.2', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', ''),
(41, 3, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', ''),
(42, 3, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', ''),
(43, 3, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', ''),
(44, 3, 0, 'Spanish CO', '', 'pkg_es-CO', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/es-CO_details.xml', '', ''),
(45, 3, 0, 'German CH', '', 'pkg_de-CH', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/de-CH_details.xml', '', ''),
(46, 3, 0, 'German AT', '', 'pkg_de-AT', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/de-AT_details.xml', '', ''),
(47, 3, 0, 'German LI', '', 'pkg_de-LI', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/de-LI_details.xml', '', ''),
(48, 3, 0, 'German LU', '', 'pkg_de-LU', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/de-LU_details.xml', '', ''),
(49, 3, 0, 'English NZ', '', 'pkg_en-NZ', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/en-NZ_details.xml', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__update_sites`
--

DROP TABLE IF EXISTS `#__update_sites`;
CREATE TABLE IF NOT EXISTS `#__update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites' AUTO_INCREMENT=9 ;

--
-- Dumping data for table `#__update_sites`
--

INSERT INTO `#__update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1479958158, ''),
(2, 'Joomla! Extension Directory', 'collection', 'https://update.joomla.org/jed/list.xml', 1, 1479958158, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 1479958160, ''),
(4, 'AcyMailing', 'extension', 'http://www.acyba.com/component/updateme/updatexml/component-acymailing/level-Starter/file-extension.xml', 1, 1479958160, ''),
(6, 'Plugin Googlemap Update Site', 'extension', 'http://tech.reumer.net/update/plugin_googlemap3/extension.xml', 1, 1479958161, ''),
(7, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1479958161, ''),
(8, 'Weblinks Update Site', 'extension', 'https://raw.githubusercontent.com/joomla-extensions/weblinks/master/manifest.xml', 1, 1479958162, '');

-- --------------------------------------------------------

--
-- Table structure for table `#__update_sites_extensions`
--

DROP TABLE IF EXISTS `#__update_sites_extensions`;
CREATE TABLE IF NOT EXISTS `#__update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Dumping data for table `#__update_sites_extensions`
--

INSERT INTO `#__update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 802),
(4, 10009),
(6, 10035),
(7, 28),
(8, 801);

-- --------------------------------------------------------

--
-- Table structure for table `#__usergroups`
--

DROP TABLE IF EXISTS `#__usergroups`;
CREATE TABLE IF NOT EXISTS `#__usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `#__usergroups`
--

INSERT INTO `#__usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `#__user_keys`
--

DROP TABLE IF EXISTS `#__user_keys`;
CREATE TABLE IF NOT EXISTS `#__user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__user_notes`
--

DROP TABLE IF EXISTS `#__user_notes`;
CREATE TABLE IF NOT EXISTS `#__user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__user_profiles`
--

DROP TABLE IF EXISTS `#__user_profiles`;
CREATE TABLE IF NOT EXISTS `#__user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `#__user_usergroup_map`
--

DROP TABLE IF EXISTS `#__user_usergroup_map`;
CREATE TABLE IF NOT EXISTS `#__user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `#__user_usergroup_map`
--

INSERT INTO `#__user_usergroup_map` (`user_id`, `group_id`) VALUES
(455, 8),
(518, 8),
(647, 8);

-- --------------------------------------------------------

--
-- Table structure for table `#__utf8_conversion`
--

DROP TABLE IF EXISTS `#__utf8_conversion`;
CREATE TABLE IF NOT EXISTS `#__utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `#__utf8_conversion`
--

INSERT INTO `#__utf8_conversion` (`converted`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `#__viewlevels`
--

DROP TABLE IF EXISTS `#__viewlevels`;
CREATE TABLE IF NOT EXISTS `#__viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `#__viewlevels`
--

INSERT INTO `#__viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]'),
(5, 'Guest', 0, '[9]');

-- --------------------------------------------------------

--
-- Table structure for table `#__weblinks`
--

DROP TABLE IF EXISTS `#__weblinks`;
CREATE TABLE IF NOT EXISTS `#__weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

