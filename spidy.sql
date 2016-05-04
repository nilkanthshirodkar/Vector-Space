-- phpMyAdmin SQL Dump
-- version 2.8.0.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Mar 28, 2013 at 02:25 AM
-- Server version: 5.0.20
-- PHP Version: 5.1.2
-- 
-- Database: `spidy`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `conten`
-- 

CREATE TABLE `conten` (
  `url` varchar(75) collate latin1_general_ci NOT NULL,
  `content` longtext collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`url`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Dumping data for table `conten`
-- 

INSERT INTO `conten` VALUES ('www.goolgle.co.in', 'This is a test case. This will test the document for vector space');
INSERT INTO `conten` VALUES ('http://phpir.com/alternative-term-weighting', 'THis is test case 2. Hope it works fine');

-- --------------------------------------------------------

-- 
-- Table structure for table `idfi`
-- 

CREATE TABLE `idfi` (
  `term` varchar(20) collate latin1_general_ci NOT NULL,
  `value` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Dumping data for table `idfi`
-- 

INSERT INTO `idfi` VALUES ('This', 0.301029995664);
INSERT INTO `idfi` VALUES ('is', 0);
INSERT INTO `idfi` VALUES ('a', 0.301029995664);
INSERT INTO `idfi` VALUES ('test', 0);
INSERT INTO `idfi` VALUES ('case.', 0.301029995664);
INSERT INTO `idfi` VALUES ('will', 0.301029995664);
INSERT INTO `idfi` VALUES ('the', 0.301029995664);
INSERT INTO `idfi` VALUES ('document', 0.301029995664);
INSERT INTO `idfi` VALUES ('for', 0.301029995664);
INSERT INTO `idfi` VALUES ('vector', 0.301029995664);
INSERT INTO `idfi` VALUES ('space', 0.301029995664);
INSERT INTO `idfi` VALUES ('THis', 0.301029995664);
INSERT INTO `idfi` VALUES ('case', 0.301029995664);
INSERT INTO `idfi` VALUES ('2.', 0.301029995664);
INSERT INTO `idfi` VALUES ('Hope', 0.301029995664);
INSERT INTO `idfi` VALUES ('it', 0.301029995664);
INSERT INTO `idfi` VALUES ('works', 0.301029995664);
INSERT INTO `idfi` VALUES ('fine', 0.301029995664);

-- --------------------------------------------------------

-- 
-- Table structure for table `link`
-- 

CREATE TABLE `link` (
  `url` varchar(75) collate latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Dumping data for table `link`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `pagerank`
-- 

CREATE TABLE `pagerank` (
  `url` varchar(125) collate latin1_general_ci NOT NULL,
  `value` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Dumping data for table `pagerank`
-- 

INSERT INTO `pagerank` VALUES ('c', 1.78071107584);
INSERT INTO `pagerank` VALUES ('b', 1.91848361863);
INSERT INTO `pagerank` VALUES ('a', 0.243012790147);
INSERT INTO `pagerank` VALUES ('d', 0.218853623875);
INSERT INTO `pagerank` VALUES ('f', 0.218853623875);
INSERT INTO `pagerank` VALUES ('e', 0.243012790147);

-- --------------------------------------------------------

-- 
-- Table structure for table `webpage`
-- 

CREATE TABLE `webpage` (
  `url` varchar(75) collate latin1_general_ci NOT NULL,
  `link` varchar(75) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`url`,`link`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Dumping data for table `webpage`
-- 

INSERT INTO `webpage` VALUES ('b', 'c');
INSERT INTO `webpage` VALUES ('c', 'b');
INSERT INTO `webpage` VALUES ('d', 'a');
INSERT INTO `webpage` VALUES ('d', 'b');
INSERT INTO `webpage` VALUES ('e', 'b');
INSERT INTO `webpage` VALUES ('e', 'd');
INSERT INTO `webpage` VALUES ('e', 'f');
INSERT INTO `webpage` VALUES ('f', 'b');
INSERT INTO `webpage` VALUES ('f', 'e');

-- --------------------------------------------------------

-- 
-- Table structure for table `wgt`
-- 

CREATE TABLE `wgt` (
  `url` varchar(100) collate latin1_general_ci NOT NULL,
  `term` varchar(20) collate latin1_general_ci NOT NULL,
  `value` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Dumping data for table `wgt`
-- 

INSERT INTO `wgt` VALUES ('www.goolgle.co.in', 'This', 0.602059991328);
INSERT INTO `wgt` VALUES ('http://phpir.com/alternative-term-weighting', 'This', 0);
INSERT INTO `wgt` VALUES ('www.goolgle.co.in', 'is', 0);
INSERT INTO `wgt` VALUES ('http://phpir.com/alternative-term-weighting', 'is', 0);
INSERT INTO `wgt` VALUES ('www.goolgle.co.in', 'a', 0.301029995664);
INSERT INTO `wgt` VALUES ('http://phpir.com/alternative-term-weighting', 'a', 0);
INSERT INTO `wgt` VALUES ('www.goolgle.co.in', 'test', 0);
INSERT INTO `wgt` VALUES ('http://phpir.com/alternative-term-weighting', 'test', 0);
INSERT INTO `wgt` VALUES ('www.goolgle.co.in', 'case.', 0.301029995664);
INSERT INTO `wgt` VALUES ('http://phpir.com/alternative-term-weighting', 'case.', 0);
INSERT INTO `wgt` VALUES ('www.goolgle.co.in', 'will', 0.301029995664);
INSERT INTO `wgt` VALUES ('http://phpir.com/alternative-term-weighting', 'will', 0);
INSERT INTO `wgt` VALUES ('www.goolgle.co.in', 'the', 0.301029995664);
INSERT INTO `wgt` VALUES ('http://phpir.com/alternative-term-weighting', 'the', 0);
INSERT INTO `wgt` VALUES ('www.goolgle.co.in', 'document', 0.301029995664);
INSERT INTO `wgt` VALUES ('http://phpir.com/alternative-term-weighting', 'document', 0);
INSERT INTO `wgt` VALUES ('www.goolgle.co.in', 'for', 0.301029995664);
INSERT INTO `wgt` VALUES ('http://phpir.com/alternative-term-weighting', 'for', 0);
INSERT INTO `wgt` VALUES ('www.goolgle.co.in', 'vector', 0.301029995664);
INSERT INTO `wgt` VALUES ('http://phpir.com/alternative-term-weighting', 'vector', 0);
INSERT INTO `wgt` VALUES ('www.goolgle.co.in', 'space', 0.301029995664);
INSERT INTO `wgt` VALUES ('http://phpir.com/alternative-term-weighting', 'space', 0);
INSERT INTO `wgt` VALUES ('www.goolgle.co.in', 'THis', 0);
INSERT INTO `wgt` VALUES ('http://phpir.com/alternative-term-weighting', 'THis', 0.301029995664);
INSERT INTO `wgt` VALUES ('www.goolgle.co.in', 'case', 0);
INSERT INTO `wgt` VALUES ('http://phpir.com/alternative-term-weighting', 'case', 0.301029995664);
INSERT INTO `wgt` VALUES ('www.goolgle.co.in', '2.', 0);
INSERT INTO `wgt` VALUES ('http://phpir.com/alternative-term-weighting', '2.', 0.301029995664);
INSERT INTO `wgt` VALUES ('www.goolgle.co.in', 'Hope', 0);
INSERT INTO `wgt` VALUES ('http://phpir.com/alternative-term-weighting', 'Hope', 0.301029995664);
INSERT INTO `wgt` VALUES ('www.goolgle.co.in', 'it', 0);
INSERT INTO `wgt` VALUES ('http://phpir.com/alternative-term-weighting', 'it', 0.301029995664);
INSERT INTO `wgt` VALUES ('www.goolgle.co.in', 'works', 0);
INSERT INTO `wgt` VALUES ('http://phpir.com/alternative-term-weighting', 'works', 0.301029995664);
INSERT INTO `wgt` VALUES ('www.goolgle.co.in', 'fine', 0);
INSERT INTO `wgt` VALUES ('http://phpir.com/alternative-term-weighting', 'fine', 0.301029995664);
