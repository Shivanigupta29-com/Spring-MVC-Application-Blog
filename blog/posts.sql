---- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
----
---- Host: localhost    Database: blog
---- ------------------------------------------------------
---- Server version	8.0.24
--
--/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
--/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
--/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
--/*!50503 SET NAMES utf8mb4 */;
--/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
--/*!40103 SET TIME_ZONE='+00:00' */;
--/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
--/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
--/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
--/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
--
----
---- Table structure for table `posts`
----
--
--DROP TABLE IF EXISTS `posts`;
--/*!40101 SET @saved_cs_client     = @@character_set_client */;
--/*!50503 SET character_set_client = utf8mb4 */;
--CREATE TABLE `posts` (
--  `id` int NOT NULL AUTO_INCREMENT,
--  `body` longtext NOT NULL,
--  `title` varchar(500) NOT NULL,
--  `date` datetime NOT NULL,
--  `author_id` int NOT NULL,
--  PRIMARY KEY (`id`)
--) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
--/*!40101 SET character_set_client = @saved_cs_client */;
--
----
---- Dumping data for table `posts`
----
--
--LOCK TABLES `posts` WRITE;
--/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
--INSERT INTO `posts` VALUES (1,'Facebook’s recent announcement that it’s readying a version of its social software for workplaces got me thinking about Enterprise 2.0, a topic I used to think a great deal about. Five years ago I published a book with that title, arguing that enterprise social software platforms would be valuable tools for businesses. The news from Facebook, along with rapid takeup of new tools like Slack, the continued success and growth of Salesforce’s Chatter and Yammer (now part of Microsoft), and evidence of a comeback at Jive, indicates that the business world might finally be coming around to Web-style communication and collaboration tools.','Jobs and Wages in January: Some Growth, Still Plenty of Slack','2015-02-10 00:00:00',2),(2,'A while back I set up autopayment on the Citi credit card I used for business expenses, and it’s been working fine. Recently, however, I ran up so many travel expenses in a month that I hit my credit limit (the clearest sign yet that I’ve been on the road too much). So in order to keep further charges from being declined, I went to the Citi credit cards site to make a manual payment. I wanted to use the same bank account for this manual payment that I use for my automatic one. But I couldn’t see how to do that, even after looking around the site for a while. The ‘MAKE A PAYMENT’ button was prominent enough, but clicking on it didn’t take me to a page where I could see and select the bank account I use for autopay. Instead, it took me to a form I’d use to enter bank account information from scratch','Why Is Customer Service Still So Lousy (Financial Services Web Design Edition)?','2014-11-10 00:00:00',14),(3,'Yesterday we got the good news that The Second Machine Age had been shortlisted for the FT and McKinsey Business Book of the Year Award. Erik and I are floored and very flattered, and looking forward to the award dinner in London in November. I’m pretty sure we’ll watch Thomas Piketty another author hoist the trophy, but it’ll be great fun to attend. In a nice coincidence, next week Erik and I are also giving our first joint public talk about the book since the initial book tour. It’s in Harvard’s gorgeous Sanders Theater on Wednesday October 1 at 4 pm. The event is sponsored by Harvard’s Institute for Learning in Retirement, and is free and open to the public. Please get a ticket in advance by stopping by HILR or the Harvard box office.','Business Book of the Year? Maybe. Public Talk Next Week? Definitely.','2014-09-26 00:00:00',9),(4,'I’ve been involved with the Boston Book Festival since Deborah Porter founded it in 2009, and it’s become one of my favorite events of the year. And since I had a for-real mainstream published book come out this year (as opposed to a self-published glorified pamphlet) I get to participate this year as a full-fledged author in the session titled “Technology: Promise and Peril”. What makes this especially exciting to me is the fact that I’ll share the stage with Nick Carr, who’s one of my favorite writers and thinkers about technology. I don’t praise Nick because I agree with him so often. Over the years, in fact, we’ve pretty reliably argued about some big questions, including whether IT matters for competitive differentiation and whether Google makes us stupid.','This Saturday: The Glass Cage Match at the Boston Book Festival','2014-10-20 00:00:00',2),(5,'I am sorry to brag, but this really is an all-star lineup. If you’re at all interested in technological progress and its implications for our businesses, economies, and societies, you should attend the 2014 Second Machine Age conference.  It’s being held on September 10 and 11 at the gorgeous MIT Media Lab building, and organized jointly by the Institute’s Industrial Liaison Program and the Initiative on the Digital Economy (which I cofounded with Erik Brynjolfsson). Erik and I are both speaking, but that’s not the the exciting part (sorry, Erik). What’s truly exciting is the group of people who have agreed to join us and share their latest work and thinking.','MIT’s Second Machine Age Conference in September: Sign up Now','2014-08-21 00:00:00',8),(6,'My last post here took on Zeynep Tufekci and, by extension, others who believe the current trend of using robots and other forms of advanced technology for caregiving is, as she put it, “an abdication of a desire to remain human, to be connected to each other through care, and to take care of each other.”  I wonder how these self-appointed guardians of our humanity feel about the new iPhone app that provides automated diagnoses of imminent mood swings for people with bipolar disorder. I love this technology, for the reasons nicely enumerated in this Slate article by Aimee Swartz. Bipolar disorder is common – it affects almost 6 million American adults — and can be very hard to live with, both for people with the condition and for those around them. None of my loved ones have it, thankfully, but I’ve watched families I know well suffer greatly as they try to help one of their members cope with the illness.','\'When Using Your Smartphone Can Be the Best Thing for Your Mental Health','2014-08-07 00:00:00',1);
--/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
--UNLOCK TABLES;
--
----
---- Table structure for table `users`
----
--
--DROP TABLE IF EXISTS `users`;
--/*!40101 SET @saved_cs_client     = @@character_set_client */;
--/*!50503 SET character_set_client = utf8mb4 */;
--CREATE TABLE `users` (
--  `id` int NOT NULL AUTO_INCREMENT,
--  `userName` varchar(100) NOT NULL,
--  `passwordHash` varchar(100) DEFAULT NULL,
--  `fullName` varchar(500) DEFAULT NULL,
--
--  PRIMARY KEY (`id`)
--) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
--/*!40101 SET character_set_client = @saved_cs_client */;
--
----
---- Dumping data for table `users`
----
--
--LOCK TABLES `users` WRITE;
--/*!40000 ALTER TABLE `users` DISABLE KEYS */;
--INSERT INTO `users` VALUES (1,'pesho','d2de3a6d8360140858016a2ded29b754','Petur Petrov',NULL,NULL,''),(2,'ivan','88c75c78bfd909aa3e85d341863b09b5','Ivan Ivanov',NULL,NULL,''),(3,'gosho','dea212cee54d411bae0bf792869c0468','Georgi Georgiev',NULL,NULL,''),(4,'mariika','f521a51d6472c38b14b9c4d855f658be','Maria Petrova',NULL,NULL,''),(5,'tengo','Teng Qingshan','1b25433efef6396f6b9cd8f37a5959ce',NULL,NULL,''),(6,'may','May Nuwa','3de885842c7c72e54192a00b9d8e896c',NULL,NULL,'');
--/*!40000 ALTER TABLE `users` ENABLE KEYS */;
--UNLOCK TABLES;
--/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
--
--/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
--/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
--/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
--/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
--/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
--/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
--/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
--
---- Dump completed on 2021-04-23 19:06:30
CREATE DATABASE `blog` /*!40100 DEFAULT CHARACTER SET utf8 */;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fullName` varchar(100) DEFAULT NULL,
  `passwordHash` varchar(60) DEFAULT NULL,
  `userName` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_k8d0f2n7n88w1a16yhua64onx` (`user_name`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


CREATE TABLE `posts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body` longtext NOT NULL,
  `date` datetime NOT NULL,
  `title` varchar(300) NOT NULL,
  `author_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6xvn0811tkyo3nfjk2xvqx6ns` (`author_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;