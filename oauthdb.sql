-- MySQL dump 10.13  Distrib 5.5.19, for osx10.6 (i386)
--
-- Host: localhost    Database: oauthdb
-- ------------------------------------------------------
-- Server version	5.5.19-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ClientDetails`
--

DROP TABLE IF EXISTS `ClientDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ClientDetails` (
  `appId` varchar(256) NOT NULL,
  `resourceIds` varchar(256) DEFAULT NULL,
  `appSecret` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `grantTypes` varchar(256) DEFAULT NULL,
  `redirectUrl` varchar(256) DEFAULT NULL,
  `authorities` varchar(256) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additionalInformation` varchar(4096) DEFAULT NULL,
  PRIMARY KEY (`appId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClientDetails`
--

LOCK TABLES `ClientDetails` WRITE;
/*!40000 ALTER TABLE `ClientDetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `ClientDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authorities`
--

DROP TABLE IF EXISTS `authorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authorities` (
  `username` varchar(50) NOT NULL,
  `authority` varchar(50) NOT NULL,
  UNIQUE KEY `ix_auth_username` (`username`,`authority`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authorities`
--

LOCK TABLES `authorities` WRITE;
/*!40000 ALTER TABLE `authorities` DISABLE KEYS */;
INSERT INTO `authorities` VALUES ('marissa','ROLE_USER'),('paul','ROLE_USER');
/*!40000 ALTER TABLE `authorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_token`
--

DROP TABLE IF EXISTS `oauth_access_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication_id` varchar(256) DEFAULT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `client_id` varchar(256) DEFAULT NULL,
  `authentication` blob,
  `refresh_token` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_token`
--

LOCK TABLES `oauth_access_token` WRITE;
/*!40000 ALTER TABLE `oauth_access_token` DISABLE KEYS */;
INSERT INTO `oauth_access_token` VALUES ('4f46758de9f1ef86de81b84a7fd2da5d','¨Ì\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken≤û6$˙Œ\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.Collections$EmptyMapY6ÖZ‹Á–\0\0xpsr\0java.util.DatehjÅKYt\0\0xpw\0\0@d„ÿxsr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/ﬂGcù–…∑\0L\0\nexpirationq\0~\0xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens·\ncT‘^\0L\0valueq\0~\0xpt\0$eade950e-f450-4ae2-94d7-0f5db0d91f1fsq\0~\0	w\0\0@˜?Îçxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0ÄÀ^˜\0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSetÿl◊Zï›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writext\0bearert\0$16d526eb-8e45-444d-9d4c-22687397afc8','b89aa445d5d87962acf9f91f152c22a8','marissa','tonr','¨Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0clientAuthenticationt\0CLorg/springframework/security/oauth2/provider/AuthorizationRequest;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µÏé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0ÄÀ^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\06\0L\0rolet\0Ljava/lang/String;xpt\0	ROLE_USERxq\0~\0psr\0Horg.springframework.security.oauth2.provider.DefaultAuthorizationRequest∂õü¸>òÿ\0Z\0approvedL\0approvalParameterst\0Ljava/util/Map;L\0authoritiesq\0~\0L\0authorizationParametersq\0~\0L\0resolvedRedirectUriq\0~\0L\0resourceIdst\0Ljava/util/Set;L\0scopeq\0~\0xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0	authorizet\0	Authorizet\0user_oauth_approvalt\0truexsr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0sq\0~\0\rt\0ROLE_TRUSTED_CLIENTsq\0~\0\rt\0ROLE_CLIENTxsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0t\0scopet\0\0t\0\rresponse_typet\0codet\0\ngrant_typet\0authorization_codet\0redirect_urit\0)http://localhost:8080/tonr/sparklr/photost\0statet\0EZGsBit\0codet\0gzlHnpt\0	client_idt\0tonrxt\0)http://localhost:8080/tonr/sparklr/photossq\0~\0w\0\0\0?@\0\0\0\0\0t\0sparklrxsr\0java.util.LinkedHashSetÿl◊Zï›*\0\0xq\0~\0w\0\0\0?@\0\0\0\0\0t\0readt\0writexsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\06\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0xq\0~\0:sr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\06\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\0	127.0.0.1t\0\Z1fkdq7fuw3a9d1u4b3t1ep2jmopsr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\06\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiesq\0~\0L\0passwordq\0~\0L\0usernameq\0~\0xpsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.TreeSet›òPìïÌá[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\06\0\0xpw\0\0\0q\0~\0xpt\0marissa','ba0a752dda2eee8fa1fd70211c30bacf');
/*!40000 ALTER TABLE `oauth_access_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_client_details`
--

DROP TABLE IF EXISTS `oauth_client_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_client_details` (
  `client_id` varchar(256) NOT NULL,
  `resource_ids` varchar(256) DEFAULT NULL,
  `client_secret` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `authorized_grant_types` varchar(256) DEFAULT NULL,
  `web_server_redirect_uri` varchar(256) DEFAULT NULL,
  `authorities` varchar(256) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_client_details`
--

LOCK TABLES `oauth_client_details` WRITE;
/*!40000 ALTER TABLE `oauth_client_details` DISABLE KEYS */;
INSERT INTO `oauth_client_details` VALUES ('my-client-with-registered-redirect',NULL,NULL,'read,trust','authorization_code,client_credentials','http://anywhere?key=value','ROLE_CLIENT',NULL,NULL,NULL),('my-client-with-secret',NULL,'secret','read','client_credentials',NULL,'ROLE_CLIENT',NULL,NULL,NULL),('my-less-trusted-autoapprove-client',NULL,NULL,'read,write,trust','implicit',NULL,'ROLE_CLIENT',NULL,NULL,NULL),('my-less-trusted-client',NULL,NULL,NULL,'authorization_code,implicit',NULL,'ROLE_CLIENT',NULL,NULL,NULL),('my-trusted-client',NULL,NULL,'read,write,trust','password,authorization_code,refresh_token,implicit',NULL,'ROLE_CLIENT, ROLE_TRUSTED_CLIENT',60,NULL,NULL),('my-trusted-client-with-secret',NULL,'somesecret',NULL,'password,authorization_code,refresh_token,implicit',NULL,'ROLE_CLIENT, ROLE_TRUSTED_CLIENT',NULL,NULL,NULL),('my-untrusted-client-with-registered-redirect',NULL,NULL,'read','authorization_code','http://anywhere','ROLE_CLIENT',NULL,NULL,NULL),('tonr','sparklr','secret','read,write','authorization_code,implicit,refresh_token',NULL,'ROLE_CLIENT, ROLE_TRUSTED_CLIENT',NULL,NULL,NULL);
/*!40000 ALTER TABLE `oauth_client_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_code`
--

DROP TABLE IF EXISTS `oauth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_code` (
  `code` varchar(256) DEFAULT NULL,
  `authentication` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_code`
--

LOCK TABLES `oauth_code` WRITE;
/*!40000 ALTER TABLE `oauth_code` DISABLE KEYS */;
INSERT INTO `oauth_code` VALUES ('k4va8S','¨Ì\0sr\0Lorg.springframework.security.oauth2.provider.code.AuthorizationRequestHolder≤û6$˙Œ\0L\0authorizationRequestt\0CLorg/springframework/security/oauth2/provider/AuthorizationRequest;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xpsr\0Horg.springframework.security.oauth2.provider.DefaultAuthorizationRequest∂õü¸>òÿ\0Z\0approvedL\0approvalParameterst\0Ljava/util/Map;L\0authoritiest\0Ljava/util/Collection;L\0authorizationParametersq\0~\0L\0resolvedRedirectUrit\0Ljava/lang/String;L\0resourceIdst\0Ljava/util/Set;L\0scopeq\0~\0xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0xsr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\06\0L\0roleq\0~\0xpt\0ROLE_TRUSTED_CLIENTsq\0~\0t\0ROLE_CLIENTxsq\0~\0\n?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rresponse_typet\0codet\0scopet\0\nread writet\0redirect_urit\0)http://localhost:8080/tonr/sparklr/photost\0statet\0cMjE05t\0	client_idt\0tonrxq\0~\0sq\0~\0w\0\0\0?@\0\0\0\0\0t\0sparklrxsr\0java.util.LinkedHashSetÿl◊Zï›*\0\0xq\0~\0w\0\0\0?@\0\0\0\0\0t\0readt\0writexsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\06\0L\0credentialst\0Ljava/lang/Object;L\0	principalq\0~\0%xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiesq\0~\0L\0detailsq\0~\0%xpsr\0&java.util.Collections$UnmodifiableList¸%1µÏé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0ÄÀ^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0w\0\0\0sq\0~\0t\0	ROLE_USERxq\0~\0-sr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\06\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1%0t\0uonqm8gs3jhgq9y6b5wauomxpsr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\06\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiesq\0~\0L\0passwordq\0~\0L\0usernameq\0~\0xpsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0*sr\0java.util.TreeSet›òPìïÌá[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\06\0\0xpw\0\0\0q\0~\0.xpt\0marissa'),('gfsXt6','¨Ì\0sr\0Lorg.springframework.security.oauth2.provider.code.AuthorizationRequestHolder≤û6$˙Œ\0L\0authorizationRequestt\0CLorg/springframework/security/oauth2/provider/AuthorizationRequest;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xpsr\0Horg.springframework.security.oauth2.provider.DefaultAuthorizationRequest∂õü¸>òÿ\0Z\0approvedL\0approvalParameterst\0Ljava/util/Map;L\0authoritiest\0Ljava/util/Collection;L\0authorizationParametersq\0~\0L\0resolvedRedirectUrit\0Ljava/lang/String;L\0resourceIdst\0Ljava/util/Set;L\0scopeq\0~\0xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0xsr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\06\0L\0roleq\0~\0xpt\0ROLE_TRUSTED_CLIENTsq\0~\0t\0ROLE_CLIENTxsq\0~\0\n?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rresponse_typet\0codet\0scopet\0\nread writet\0redirect_urit\0)http://localhost:8080/tonr/sparklr/photost\0statet\0cMjE05t\0	client_idt\0tonrxq\0~\0sq\0~\0w\0\0\0?@\0\0\0\0\0t\0sparklrxsr\0java.util.LinkedHashSetÿl◊Zï›*\0\0xq\0~\0w\0\0\0?@\0\0\0\0\0t\0readt\0writexsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\06\0L\0credentialst\0Ljava/lang/Object;L\0	principalq\0~\0%xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiesq\0~\0L\0detailsq\0~\0%xpsr\0&java.util.Collections$UnmodifiableList¸%1µÏé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0ÄÀ^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0w\0\0\0sq\0~\0t\0	ROLE_USERxq\0~\0-sr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\06\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1%0t\0uonqm8gs3jhgq9y6b5wauomxpsr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\06\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiesq\0~\0L\0passwordq\0~\0L\0usernameq\0~\0xpsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0*sr\0java.util.TreeSet›òPìïÌá[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\06\0\0xpw\0\0\0q\0~\0.xpt\0marissa');
/*!40000 ALTER TABLE `oauth_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_token`
--

DROP TABLE IF EXISTS `oauth_refresh_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_token`
--

LOCK TABLES `oauth_refresh_token` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_token` DISABLE KEYS */;
INSERT INTO `oauth_refresh_token` VALUES ('ba0a752dda2eee8fa1fd70211c30bacf','¨Ì\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/ﬂGcù–…∑\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens·\ncT‘^\0L\0valuet\0Ljava/lang/String;xpt\0$eade950e-f450-4ae2-94d7-0f5db0d91f1fsr\0java.util.DatehjÅKYt\0\0xpw\0\0@˜?Îçx','¨Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0clientAuthenticationt\0CLorg/springframework/security/oauth2/provider/AuthorizationRequest;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µÏé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0ÄÀ^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\06\0L\0rolet\0Ljava/lang/String;xpt\0	ROLE_USERxq\0~\0psr\0Horg.springframework.security.oauth2.provider.DefaultAuthorizationRequest∂õü¸>òÿ\0Z\0approvedL\0approvalParameterst\0Ljava/util/Map;L\0authoritiesq\0~\0L\0authorizationParametersq\0~\0L\0resolvedRedirectUriq\0~\0L\0resourceIdst\0Ljava/util/Set;L\0scopeq\0~\0xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0	authorizet\0	Authorizet\0user_oauth_approvalt\0truexsr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0sq\0~\0\rt\0ROLE_TRUSTED_CLIENTsq\0~\0\rt\0ROLE_CLIENTxsq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rresponse_typet\0codet\0scopet\0\0t\0\ngrant_typet\0authorization_codet\0redirect_urit\0)http://localhost:8080/tonr/sparklr/photost\0statet\0EZGsBit\0	client_idt\0tonrt\0codet\0gzlHnpxt\0)http://localhost:8080/tonr/sparklr/photossq\0~\0w\0\0\0?@\0\0\0\0\0t\0sparklrxsr\0java.util.LinkedHashSetÿl◊Zï›*\0\0xq\0~\0w\0\0\0?@\0\0\0\0\0t\0readt\0writexsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\06\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0xq\0~\0:sr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\06\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\0	127.0.0.1t\0\Z1fkdq7fuw3a9d1u4b3t1ep2jmopsr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\06\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiesq\0~\0L\0passwordq\0~\0L\0usernameq\0~\0xpsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.TreeSet›òPìïÌá[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\06\0\0xpw\0\0\0q\0~\0xpt\0marissa');
/*!40000 ALTER TABLE `oauth_refresh_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('marissa','koala',1),('paul','kangaroo',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-08-09 14:36:50
