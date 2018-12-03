-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2018 at 04:03 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iplin`
--
CREATE DATABASE IF NOT EXISTS `iplin` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `iplin`;

-- --------------------------------------------------------

--
-- Table structure for table `copyright`
--

DROP TABLE IF EXISTS `copyright`;
CREATE TABLE IF NOT EXISTS `copyright` (
  `id` int(11) UNSIGNED NOT NULL,
  `registrationNum` varchar(20) DEFAULT NULL,
  `registrationDate` date DEFAULT NULL,
  `publicationDate` date DEFAULT NULL,
  `type` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `copyright`
--

INSERT INTO `copyright` (`id`, `registrationNum`, `registrationDate`, `publicationDate`, `type`) VALUES
(1, 'PAu001571187', '1991-10-16', NULL, 'Motion Picture'),
(2, 'TX0003543468', '1992-10-19', '1992-01-29', 'Computer File'),
(3, 'SRu001305711', '2017-07-27', NULL, 'Sound Recording'),
(4, 'TX0005851829', '2004-04-30', '2004-04-07', 'Text'),
(5, 'TX0000165403', '1978-12-26', '1978-12-12', 'Text'),
(6, 'PA0002130260', '2018-07-27', '2018-05-30', 'Motion Picture'),
(7, 'TX0005788467 ', '2003-09-10', '2003-05-27', 'Computer File'),
(8, 'VA0001392238', '2006-12-19', '2006-07-01', 'Visual Material'),
(9, 'PAu003912612', '2018-02-21', NULL, 'Dramatic Work and Music'),
(10, 'PAu000144879', '1979-10-12', NULL, 'Music'),
(11, 'PA0000158771', '1982-12-27', '1982-11-22', 'Music'),
(12, 'VA0001745267', '2010-08-02', '2010-05-10', 'Visual Material'),
(13, 'VAu001212121', '2015-05-12', NULL, 'Visual Material'),
(14, 'TX0004871053', '1999-05-07', '1998-04-06', 'Computer File'),
(15, 'VA0001985098', '2016-01-15', '2015-04-24', 'Visual Material'),
(16, 'PAu003753076', '2014-04-04', NULL, 'Music'),
(17, 'TX0007364532', '2011-03-18', '2011-03-10', 'Text'),
(18, 'SRu001171975', '2014-06-05', NULL, 'Sound Recording and Music'),
(19, 'VA0001801889', '2012-01-16', '2011-01-01', 'Visual Material'),
(20, 'SRu001318350', '2017-07-04', NULL, 'Sound Recording'),
(21, 'PA0001265054 ', '2005-02-07', '2004-06-07', 'Computer File'),
(22, 'SRu000980163 ', '2010-08-24', NULL, 'Sound Recording and Music'),
(23, 'VA0001270064 ', '2004-02-02', '2002-11-17', 'Visual Material'),
(24, 'VA0000541304 ', '1993-01-19', '1987-04-10', 'Visual Material'),
(25, 'SR0000783676 ', '2016-04-21', '2016-01-15', 'Sound Recording'),
(26, 'SR0000238202', '1998-01-06', '1997-11-13', 'Sound Recording'),
(27, 'PA0001658740', '2009-11-02', '2009-06-18', 'Motion Picture'),
(28, 'PA0000922578 ', '1998-12-09', '1998-09-27', 'Motion Picture'),
(29, 'PA0002035126', '2017-05-30', '2017-01-27', 'Motion Picture'),
(30, 'TX0005186861', '2000-04-03', '1999-12-31', 'Computer File');

-- --------------------------------------------------------

--
-- Table structure for table `ip`
--

DROP TABLE IF EXISTS `ip`;
CREATE TABLE IF NOT EXISTS `ip` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(400) NOT NULL,
  `IP_ownerName` varchar(130) NOT NULL,
  `Title` varchar(200) NOT NULL,
  PRIMARY KEY (`id`,`IP_ownerName`),
  KEY `IP_ownerName` (`IP_ownerName`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip`
--

INSERT INTO `ip` (`id`, `url`, `IP_ownerName`, `Title`) VALUES
(1, 'https://cocatalog.loc.gov/cgi-bin/Pwebrecon.cgi?v1=1&ti=1,1&Search_Arg=Walt%20Disney%20Company&Search_Code=NALL&CNT=25&PID=zPCnwaaQzn4-WK5mDJyOQ_0oB_MJ6&SEQ=20181115114945&SID=1', 'Walt Disney Company', 'The 100 lives of Black Jack Savage : episode 3, Deals are made to be broken / directed by David Nutter'),
(2, 'https://cocatalog.loc.gov/cgi-bin/Pwebrecon.cgi?v1=9&ti=1,9&Search_Arg=Mastercard&Search_Code=TALL&CNT=25&PID=_U7f5Hc_fG8g-96BIgXlrR2M1W2tO&SEQ=20181115115845&SID=1', 'MasterCard International, Inc.', 'MasterCard card processing system'),
(3, 'https://cocatalog.loc.gov/cgi-bin/Pwebrecon.cgi?v1=1&ti=1,1&Search_Arg=Toyota&Search_Code=TALL&CNT=25&PID=9puaVhh2je2gWKQ1qfko80pOAOM7_&SEQ=20181115120143&SID=5', 'Humallah Chapman', 'CaSh LiFe'),
(4, 'https://cocatalog.loc.gov/cgi-bin/Pwebrecon.cgi?v1=2&ti=1,2&SEQ=20181115122721&Search_Arg=Alibaba&Search_Code=NALL&CNT=25&PID=GunIgqqPhcjuBcYKU2kaEBIoL66gE&SID=19', 'Halil Zafer Alibaba', 'An expert system for the selection of building elements during architectural design'),
(5, 'https://cocatalog.loc.gov/cgi-bin/Pwebrecon.cgi?v1=5&ti=1,5&Search_Arg=Bank%20of%20America&Search_Code=NALL&CNT=25&PID=Tp0gRgOZikBVfm9WYMeHmd0nDUixd&SEQ=20181115121048&SID=13', 'Bank of America N T & S A ', 'Balancing your interest/checking plan'),
(6, 'https://cocatalog.loc.gov/cgi-bin/Pwebrecon.cgi?v1=2&ti=1,2&Search_Arg=Facebook&Search_Code=NALL&CNT=25&PID=e5Qz3UVuOWXSpyaM5icuUDvXaRc9s&SEQ=20181115121415&SID=15', 'Facebook Entertainment', 'Ask Jada LIVE: Rebuilding Friendships'),
(7, 'https://cocatalog.loc.gov/cgi-bin/Pwebrecon.cgi?v1=6&ti=1,6&Search_Arg=Microsoft&Search_Code=NALL&CNT=25&PID=0J8g-dm0g37f5Pnkhf4TVzeoYqeDZ&SEQ=20181115121548&SID=16', 'Microsoft Corporation', 'Brute force'),
(8, 'https://cocatalog.loc.gov/cgi-bin/Pwebrecon.cgi?v1=2&ti=1,2&Search_Arg=Alphabet&Search_Code=NALL&CNT=25&PID=-2WOxot8W_UrCLAwmtTVfquwLwXgW&SEQ=20181115121711&SID=17', 'Alphabet Alley Kids', 'A child is born'),
(9, 'https://cocatalog.loc.gov/cgi-bin/Pwebrecon.cgi?v1=4&ti=1,4&Search_Arg=Alibaba&Search_Code=NALL&CNT=25&PID=e5QzBARsNlgQK4oeaR0vJbXe4euUN&SEQ=20181115121828&SID=19', 'Alibaba Pictures International', 'Thundrin’ 13'),
(10, 'https://cocatalog.loc.gov/cgi-bin/Pwebrecon.cgi?v1=20&ti=1,20&Search_Arg=Orlando&Search_Code=NALL&CNT=25&PID=FUVBazzuMJwP6tvITowOBENt68faC&SEQ=20181115122923&SID=20', 'Demerris Music', 'The Real thing / R. Pennington ; arr. Orlando'),
(11, 'https://cocatalog.loc.gov/cgi-bin/Pwebrecon.cgi?v1=11&ti=1,11&Search_Arg=Thriller&Search_Code=TALL&CNT=25&PID=mkOv98IVsZi4VnWfXypZXmc_X&SEQ=20181118153218&SID=1', 'Mijac Music', 'Beat it / M. Jackson.'),
(12, 'https://cocatalog.loc.gov/cgi-bin/Pwebrecon.cgi?v1=12&ti=1,12&SAB1=Inception&BOOL1=all%20of%20these&FLD1=Title%20%28TKEY%29%20%28TKEY%29&GRP1=AND%20with%20next%20set&SAB2=2010&BOOL2=as%20a%20phrase&FLD2=Keyword%20Anywhere%20%28GKEY%29%20%28GKEY%29&CNT=25&PID=NueHj_wmPZNdGEH5xgc4hisRh&SEQ=20181118154154&SID=9', 'Warner Bros. Entertainment Inc.', 'INCEPTION'),
(13, 'https://cocatalog.loc.gov/cgi-bin/Pwebrecon.cgi?v1=18&ti=1,18&SAB1=Tallahassee&BOOL1=all%20of%20these&FLD1=Keyword%20Anywhere%20%28GKEY%29%20%28GKEY%29&GRP1=OR%20with%20next%20set&SAB2=&BOOL2=as%20a%20phrase&FLD2=Keyword%20Anywhere%20%28GKEY%29%20%28GKEY%29&CNT=25&PID=-8BPNAiho7Xsh6HXZp9NwbMod&SEQ=20181118154415&SID=10', 'Scott Holstein', '110 Unpublished Photographs by Scott Holstein, Photographer, from April & May 2015'),
(14, 'https://cocatalog.loc.gov/cgi-bin/Pwebrecon.cgi?v1=7&ti=1,7&Search_Arg=Might%20and%20Magic&Search_Code=TALL&CNT=25&PID=N_1Awndo-Y5So8azKlQYKNbkK&SEQ=20181118155103&SID=17', '3DO Company', 'Might and Magic VI'),
(15, 'https://cocatalog.loc.gov/cgi-bin/Pwebrecon.cgi?Search_Arg=Hamilton+Broadway&Search_Code=TALL&PID=pXDbvqsTIuNdGplFqVeYZEtuG&SEQ=20181118155236&CNT=25&HIST=1', 'Hamilton Uptown Limited Liability Company', 'Hamilton Broadway Website'),
(16, 'https://cocatalog.loc.gov/cgi-bin/Pwebrecon.cgi?v1=11&ti=1,11&Search_Arg=Lightning&Search_Code=TALL&CNT=25&PID=LZf9i99nOg2TrcjMrgkbcxA-X&SEQ=20181118155622&SID=21', 'Scott Raymond DeLuca', 'Blue Acid, et al.'),
(17, 'https://cocatalog.loc.gov/cgi-bin/Pwebrecon.cgi?v1=8&ti=1,8&Search_Arg=Minesweeper&Search_Code=TALL&CNT=25&PID=EAWC1oobShIouVS5HbUupAsIF&SEQ=20181118155815&SID=22', 'Jay Dorie Arbetter', 'Minesweeper Unlocked'),
(18, 'https://cocatalog.loc.gov/cgi-bin/Pwebrecon.cgi?v1=22&ti=1,22&Search_Arg=Matrix&Search_Code=TALL&CNT=25&PID=NuqhSWnM7IXoh8azKq6o7MbNU&SEQ=20181118160012&SID=23', 'Randall Anthony Garraud', 'COMPLICATED (INSTRUMENTAL), et al.'),
(19, 'https://cocatalog.loc.gov/cgi-bin/Pwebrecon.cgi?PID=zWHsGer8oV2dLBDxzdSpQCNP4', 'David Lozeau', 'David Lozeau Lowbrow Art Volume 2'),
(20, 'https://cocatalog.loc.gov/cgi-bin/Pwebrecon.cgi?v1=21&ti=1,21&Search_Arg=NASA&Search_Code=TALL&CNT=25&PID=VZL0yhkFOuFfEGImXdQ_zndBi&SEQ=20181118160913&SID=28', 'David Mckithen', 'The Phantom Of The Opera'),
(21, 'https://cocatalog.loc.gov/cgi-bin/Pwebrecon.cgi?v1=2&ti=1,2&Search_Arg=Electronic%20Arts&Search_Code=TALL&CNT=25&PID=MGSbYAJyMkXotYSgXFT4cD3SGfSrJ3l&SEQ=20181120120728&SID=1', 'Electronic Arts, Inc.', 'Tiger Woods PGA Tour 2004'),
(22, 'https://cocatalog.loc.gov/cgi-bin/Pwebrecon.cgi?v1=5&ti=1,5&Search_Arg=Quiznos&Search_Code=TALL&CNT=25&PID=-dmCiBKyWK_qyCB6rqesIF4dQAOn2c&SEQ=20181120121049&SID=3', 'John Deighton Clarke', 'Quiznos Rap, et al.'),
(23, 'https://cocatalog.loc.gov/cgi-bin/Pwebrecon.cgi?v1=2&ti=1,2&Search_Arg=Nvidia&Search_Code=TALL&CNT=25&PID=pOT2aKcpsBkrh7UbIV2zSGtcDe2gWH5&SEQ=20181120121317&SID=4', 'NVIDIA Corporation', 'NVIDIA-Dawn-A03.'),
(24, 'https://cocatalog.loc.gov/cgi-bin/Pwebrecon.cgi?v1=8&ti=1,8&Search_Arg=Six%20Flags&Search_Code=TALL&CNT=25&PID=81WXrOUHPN4HKQj0GDALzpiyauJcSnO&SEQ=20181120121539&SID=5', 'Citigraph, Inc.', 'Souvenir map of AstroWorld, Houston’s Six Flags Theme Park / designed & produced by Citigraph, Inc., International Theme Park Graphics'),
(25, 'https://cocatalog.loc.gov/cgi-bin/Pwebrecon.cgi?v1=1&ti=1,1&Search_Arg=Google&Search_Code=TALL&CNT=25&PID=ihbL-_4TF4BaTL_8oa35HWKhAQY7GN&SEQ=20181120121834&SID=6', 'Uproar Entertainment', 'Broke Therapy, et al.'),
(26, 'https://cocatalog.loc.gov/cgi-bin/Pwebrecon.cgi?v1=1&ti=1,1&Search_Arg=the%20lion%20king&Search_Code=TALL&CNT=25&PID=-YnXR2VKeWLtmJ2onTZwNRRWlVUHE&SEQ=20181126083824&SID=3', 'Walt Disney Records', 'Disney presents The Lion King : original Broadway cast recording / music & lyrics by Elton John & Tim Rice.'),
(27, 'https://cocatalog.loc.gov/cgi-bin/Pwebrecon.cgi?v1=18&ti=1,18&Search_Arg=pittsburgh%20steelers&Search_Code=TALL&CNT=25&PID=fk3DfZNd5aWxjgXsUi2tTBDDMLpYO&SEQ=20181126084118&SID=4', 'NFL Productions LLC', 'Pittsburgh Steelers 2008 Season Highlight \"Brothers and Champions\"'),
(28, 'https://cocatalog.loc.gov/cgi-bin/Pwebrecon.cgi?v1=8&ti=1,8&Search_Arg=CNN&Search_Code=NALL&CNT=25&PID=YLsHDsL719TsKc1Zf5j4vaZ6K6QzI&SEQ=20181126084905&SID=15', 'CNN Productions', 'Cold War : vol. 1, no. 1, Comrades, 1917-1945 / a Jeremy Isaacs production for Turner Original Productions.'),
(29, 'https://cocatalog.loc.gov/cgi-bin/Pwebrecon.cgi?v1=1&ti=1,1&Search_Arg=Netflix&Search_Code=NALL&CNT=25&PID=ZsHFqFCvZXKAxH_wumih4SmcDvnCN&SEQ=20181126085117&SID=16', 'Netflix', 'iBoy'),
(30, 'https://cocatalog.loc.gov/cgi-bin/Pwebrecon.cgi?v1=11&ti=1,11&Search_Arg=Amazon&Search_Code=NALL&CNT=25&PID=z_2JesL71S4Qm45Y9He0cKihaL6Ph&SEQ=20181126085507&SID=17', 'Amazon.com Holdings, Inc.', 'Amazon.com--earth’s biggest selection'),
(32, 'http://tsdr.uspto.gov/#caseNumber=87978938&caseSearchType=US_APPLICATION&caseType=DEFAULT&searchType=statusSearch', 'Disney Enterprises, Inc. CORPORATION DELAWARE IP Department', 'DISNEY PIXAR INCREDIBLES 2'),
(33, 'http://tsdr.uspto.gov/#caseNumber=87581293&caseSearchType=US_APPLICATION&caseType=DEFAULT&searchType=statusSearch', 'Microsoft Corporation CORPORATION WASHINGTON', 'XBOX ONE X'),
(34, 'http://tsdr.uspto.gov/#caseNumber=88120045&caseSearchType=US_APPLICATION&caseType=DEFAULT&searchType=statusSearch', 'Magic Leap, Inc. CORPORATION DELAWARE', 'WORKS WITH MAGIC LEAP'),
(35, 'http://tsdr.uspto.gov/#caseNumber=87275464&caseSearchType=US_APPLICATION&caseType=DEFAULT&searchType=statusSearch', 'Intel Corporation CORPORATION DELAWARE', 'INTEL INSIDE'),
(36, 'http://tsdr.uspto.gov/#caseNumber=86411394&caseSearchType=US_APPLICATION&caseType=DEFAULT&searchType=statusSearch', 'U.S. Marine Corps, a component of the U.S. Department of the Navy n/a agency of the united states government UNITED STATES', 'USMC FIRE TEAM'),
(37, 'http://tsdr.uspto.gov/#caseNumber=85180116&caseSearchType=US_APPLICATION&caseType=DEFAULT&searchType=statusSearch', 'New York State Department of Economic Development STATE AGENCY NEW YORK', 'I NY'),
(38, 'http://tsdr.uspto.gov/#caseNumber=87860019&caseSearchType=US_APPLICATION&caseType=DEFAULT&searchType=statusSearch', 'Microsoft Corporation CORPORATION WASHINGTON', 'WINDOWS 10 TEAMS'),
(39, 'http://tsdr.uspto.gov/#caseNumber=86304253&caseSearchType=US_APPLICATION&caseType=DEFAULT&searchType=statusSearch', 'Monsanto Technology LLC LIMITED LIABILITY COMPANY DELAWARE', 'MONSANTO BIOAG'),
(40, 'http://tsdr.uspto.gov/#caseNumber=78355920&caseSearchType=US_APPLICATION&caseType=DEFAULT&searchType=statusSearch', 'Seabottom Productions Limited CORPORATION', 'HARRY POTTER AND THE SHADOW OF THE SERPENT'),
(41, 'http://tsdr.uspto.gov/#caseNumber=74038323&caseSearchType=US_APPLICATION&caseType=DEFAULT&searchType=statusSearch', 'Adobe Systems Incorporated CORPORATION CALIFORNIA', 'ADOBE PHOTOSHOP'),
(42, 'http://tsdr.uspto.gov/#caseNumber=88100504&caseSearchType=US_APPLICATION&caseType=DEFAULT&searchType=statusSearch', 'Viance, LLC', '	PRO PREFERRED SELECTION YOU CAN TRUST'),
(43, 'http://tsdr.uspto.gov/#caseNumber=88072772&caseSearchType=US_APPLICATION&caseType=DEFAULT&searchType=statusSearch', 'Sony Interactive Entertainment LLC', 'ASTRO BOT RESCUE MISSION'),
(44, 'http://tsdr.uspto.gov/#caseNumber=88196013&caseSearchType=US_APPLICATION&caseType=DEFAULT&searchType=statusSearch', 'Texas Oilwell Partners, LLC', '	DELTA-PULSE II'),
(45, 'http://tsdr.uspto.gov/#caseNumber=87897086&caseSearchType=US_APPLICATION&caseType=DEFAULT&searchType=statusSearch', 'Kimberly-Clark Worldwide, Inc.', 'KLEENEX'),
(46, 'http://tsdr.uspto.gov/#caseNumber=88195104&caseSearchType=US_APPLICATION&caseType=DEFAULT&searchType=statusSearch', 'Phillips & Jacobs, LLC', 'TRANSFORMATIVE WORKPLACE SOLUTIONS'),
(47, 'http://tsdr.uspto.gov/#caseNumber=88078973&caseSearchType=US_APPLICATION&caseType=DEFAULT&searchType=statusSearch', 'Walmart Apollo, LLC', 'CRITTER COATS'),
(49, 'http://tsdr.uspto.gov/#caseNumber=88195665&caseSearchType=US_APPLICATION&caseType=DEFAULT&searchType=statusSearch', 'CMG Partners, Inc.', 'BAD APPLE'),
(50, 'http://tsdr.uspto.gov/#caseNumber=88196069&caseSearchType=US_APPLICATION&caseType=DEFAULT&searchType=statusSearch', 'Nicole Michelle Durio', 'COMMON WEALTH BOOT CAMP'),
(51, 'http://tsdr.uspto.gov/#caseNumber=88175187&caseSearchType=US_APPLICATION&caseType=DEFAULT&searchType=statusSearch', 'Misny & Associates Co.', 'MAKE \'EM PAY!'),
(63, 'http://pdfpiw.uspto.gov/.piw?Docid=D0832849', 'Samsung Electronics Co., Ltd.', 'Cable for electronic device'),
(64, 'http://pdfpiw.uspto.gov/.piw?Docid=10123232', 'Parallel Wireless, Inc. ', 'Signaling storm reduction from radio networks'),
(65, 'http://pdfpiw.uspto.gov/.piw?Docid=10128705', 'Tesla,Inc. ', 'Electric motor heating/cooling system '),
(66, 'http://pdfpiw.uspto.gov/.piw?Docid=RE047124', 'GE Healthcare Bio-Sciences AB', 'Automated fluid handling system'),
(67, 'http://pdfpiw.uspto.gov/.piw?Docid=10129705', 'Facebook, Inc.', 'Location prediction using wireless signals on online social networks '),
(68, 'http://pdfpiw.uspto.gov/.piw?Docid=10129733', 'Google LLC', 'Remote alarm hushing '),
(69, 'http://pdfpiw.uspto.gov/.piw?Docid=10128530', 'Colorado State University Research Foundation', 'Multi-functional electrolyte for thermal management of lithium-ion batteries '),
(70, 'http://pdfpiw.uspto.gov/.piw?Docid=10129360', 'The Boeing Company', 'Unified data networking across heterogeneous networks '),
(71, 'http://pdfpiw.uspto.gov/.piw?Docid=10128949', 'Massachusetts Institute of Technology', 'Methods, systems, and apparatus for global multiple-access optical communications '),
(72, 'http://pdfpiw.uspto.gov/.piw?Docid=10084806', 'DAMBALLA, INC.', 'Traffic simulation to identify malicious activity '),
(73, 'http://pdfpiw.uspto.gov/.piw?Docid=D0672510', 'Takumi Import Co., Ltd.', 'False eyelash'),
(74, 'http://pdfpiw.uspto.gov/.piw?Docid=RE035968', 'Duty; Carl', 'Card game'),
(75, 'http://pdfpiw.uspto.gov/.piw?Docid=RE028826', 'Ladney, Jr.; Michael', 'Method of constructing mold for forming plastic foam'),
(76, 'http://pdfpiw.uspto.gov/.piw?Docid=07476844', 'Seiko Epson Corporation', 'Encoder and driving device incorporating the same'),
(77, 'http://pdfpiw.uspto.gov/.piw?Docid=05487765', 'Ormat Turbines (1965) Ltd.', 'Apparatus for purging non-condensable gases from condensers'),
(78, 'http://pdfpiw.uspto.gov/.piw?Docid=RE045831', 'HUAWEI TECHNOLOGIES CO., LTD', 'Rear board of blade server, blade server and subrack'),
(79, 'http://pdfpiw.uspto.gov/.piw?Docid=PP011725', 'Pieters; Dirk', 'Chrysanthemum plant named `GEDI YT8`'),
(80, 'http://pdfpiw.uspto.gov/.piw?Docid=04842267', 'Kastner; Helmut', 'Amusement park device'),
(81, 'http://pdfpiw.uspto.gov/.piw?Docid=D0749287', 'Thompson, Sr.; Dennis T.', 'Hydraulic jack extension'),
(82, 'http://pdfpiw.uspto.gov/.piw?Docid=05487765', 'Huynh; Chi', 'Jewelry with security bezel for regulating near field communication with an embedded near field communication chip'),
(94, 'https://www.youtube.com/watch?v=gy1B3agGNxw', 'Kristoffer', 'Epic Sax Guy [Original] [HD]'),
(95, 'https://www.youtube.com/watch?v=CMNry4PE93Y', '3mediapro', 'Zombie Kid Likes Turtles'),
(96, 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', 'Official Rick Astley', 'Rick Astley - Never Gonna Give You Up (Video)'),
(97, 'https://www.youtube.com/watch?v=ZZ5LpwO-An4', 'ProtoOfSnagem', 'HEYYEYAAEYAAAEYAEYAA'),
(98, 'https://www.youtube.com/watch?v=EzNhaLUT520', 'CrazyLaughAction', 'Antoine Dodson ‘Hide Yo Kids, Hide Yo Wife’ Interview (Original)'),
(99, 'https://www.youtube.com/watch?v=ee925OTFBCA', 'danike567', 'Best Cry Ever'),
(100, 'https://www.youtube.com/watch?v=L_jWHffIx5E', 'SmashMouthVEVO ', 'Smash Mouth - All Star'),
(101, 'https://www.youtube.com/watch?v=G7RgN9ijwE4', 'mrblueangeldood', 'Have you ever had a dream like this?'),
(102, 'https://www.youtube.com/watch?v=v4IC7qaNr7I', 'KXVO 10:00 News', 'KXVO \"Pumpkin Dance\"'),
(103, 'https://www.youtube.com/watch?v=oaYtFLGELB8', 'GoodNeighborStuff', 'toast');

-- --------------------------------------------------------

--
-- Table structure for table `license`
--

DROP TABLE IF EXISTS `license`;
CREATE TABLE IF NOT EXISTS `license` (
  `licenseeName` varchar(50) NOT NULL,
  `License_id` int(11) UNSIGNED NOT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `payment` double DEFAULT NULL,
  PRIMARY KEY (`licenseeName`,`License_id`),
  KEY `License__id` (`License_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

DROP TABLE IF EXISTS `owner`;
CREATE TABLE IF NOT EXISTS `owner` (
  `name` varchar(130) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`name`, `address`) VALUES
('3DO Company', ''),
('3mediapro', 'https://www.youtube.com/channel/UCPlpJXGoNKFYAGgqse4mQ2g'),
('Adobe Systems Incorporated CORPORATION CALIFORNIA', 'P.O. Box 7900 1585 Charleston Road Mountain View CALIFORNIA 940397900'),
('Alibaba Pictures International', '680 East Colorado Boulevard - Suite 500, Pasadena, CA, 91101, United States'),
('Alphabet Alley Kids', '9356 Old Bustleton Ave, Philadelphia, PA 19115, United States'),
('Amazon.com Holdings, Inc.', ''),
('Bank of America N T & S A ', '100 North Tryon Street, Charlotte, NC 28255, United States'),
('Citigraph, Inc.', ''),
('CMG Partners, Inc.', '214 Dupont Street, 2nd Floor San Jose CALIFORNIA 95126'),
('CNN Productions', ''),
('Colorado State University Research Foundation', 'Fort Collins, CO, US'),
('CrazyLaughAction', 'https://www.youtube.com/channel/UC182iDNytd-wAAHHtxzn5Gw'),
('DAMBALLA, INC.', 'Atlanta, GA, US'),
('danike567', 'https://www.youtube.com/channel/UC02W4ThRkw5zRuloPu96IMA'),
('David Lozeau', '1768 Kings Road, Vista, CA, 92084, United States'),
('David Mckithen', 'c/o Vincent Bowers, 3840 E. Robinson Rd. Ste. 184, Amherst, NY, 14228, United States'),
('Demerris Music', ''),
('Disney Enterprises, Inc. CORPORATION DELAWARE IP Department', 'Trademark Group 500 South Buena Vista Street Burbank CALIFORNIA 91521'),
('Duty; Carl', 'Las Vegas, NV'),
('Electronic Arts, Inc.', ''),
('Facebook Entertainment', '1 Hacker Way, Menlo Park, CA, 94025, United States'),
('Facebook, Inc.', 'Menlo Park, CA, US'),
('GE Healthcare Bio-Sciences AB', 'Uppsala, SE'),
('GoodNeighborStuff', 'https://www.youtube.com/channel/UC0vSB46MmHTwwxQrAo62Dgg'),
('Google LLC', 'Mountain View, CA, US'),
('Halil Zafer Alibaba', ''),
('Hamilton Uptown Limited Liability Company', '145 West 45th Street, New York, NY, 10036, United States'),
('HUAWEI TECHNOLOGIES CO., LTD', 'Shenzhen, CN'),
('Humallah Chapman', '731 Madison street, Jackson, MS, 39202, United States.'),
('Huynh; Chi', 'San Dimas, CA, US'),
('Intel Corporation CORPORATION DELAWARE', '2200 Mission College Boulevard Santa Clara CALIFORNIA 95052'),
('Jay Dorie Arbetter', '4140 Rainsong, Dallas, TX, 75287, US'),
('John Deighton Clarke', '2267 Derby Road, Baldwin, NY, 11510, United States'),
('Kastner; Helmut', '2800 Bremen 41, DE'),
('Kimberly-Clark Worldwide, Inc.', '2300 Winchester Road Neenah WISCONSIN 54956'),
('Kristoffer', 'https://www.youtube.com/channel/UCrc9LOgud439KSjZhM1szlQ'),
('KXVO 10:00 News', 'https://www.youtube.com/channel/UCcphEkq6biE3n7wzfMJzz4g'),
('Ladney, Jr.; Michael', 'East Detroit, MI'),
('Magic Leap, Inc. CORPORATION DELAWARE', '7500 W. Sunrise Blvd. Plantation FLORIDA 33322'),
('Massachusetts Institute of Technology', 'Cambridge, MA, US'),
('MasterCard International, Inc.', '2000 Purchase Street, Purchase, NY, 10577, United States'),
('Microsoft Corporation', '4695 Blountstown Hwy, Tallahassee, FL 32310, United States'),
('Microsoft Corporation CORPORATION WASHINGTON', 'One Microsoft Way Redmond WASHINGTON 980526399'),
('Mijac Music', ''),
('Misny & Associates Co.', '1300 Fifth Third Building 600 Superior Avenue East Cleveland OHIO 44114'),
('Monsanto Technology LLC LIMITED LIABILITY COMPANY DELAWARE', '800 N. Lindbergh Blvd. E2NA St. Louis MISSOURI 63167'),
('mrblueangeldood', 'https://www.youtube.com/channel/UCTsNmF6VPzGT78ns-dZtfhA'),
('Netflix', '335 N Maple Drive, Suite 353, Beverly Hills, CA, 90210, United States'),
('New York State Department of Economic Development STATE AGENCY NEW YORK', '30 South Pearl Street Albany NEW YORK 12245'),
('NFL Productions LLC', '1 NFL Plaza, Mt. Laurel, NJ 08054 United States'),
('Nicole Michelle Durio', '75 Flamingo Bay Drive Missouri City TEXAS 77459'),
('NVIDIA Corporation', ''),
('Official Rick Astley', 'https://www.youtube.com/channel/UCuAXFkgsw1L7xaCfnd5JJOw'),
('Ormat Turbines (1965) Ltd.', 'Yavne, IL'),
('Parallel Wireless, Inc. ', 'Nashua, NH, US'),
('Phillips & Jacobs, LLC', '1539 Meadowlane Avenue Ames IOWA 50010'),
('Pieters; Dirk', '8840 Staden, BE'),
('ProtoOfSnagem', 'https://www.youtube.com/channel/UCJeFpHh_GaNzEGvneb3XNkQ'),
('Randall Anthony Garraud', '109 w yaphank rd, coram, NY, 11727, United States'),
('Samsung Electronics Co., Ltd.', 'Suwon-si, KR'),
('Scott Holstein', '1619 Coombs Dr, Unit 2, Tallahassee, FL, 32308, United States'),
('Scott Raymond DeLuca', '210 birch ave, farmingdale, NY, 11735, United States'),
('Seabottom Productions Limited CORPORATION', '35 Vine Street London UNITED KINGDOM EC3N 2AA'),
('Seiko Epson Corporation', 'Tokyo, JP'),
('SmashMouthVEVO ', 'https://www.youtube.com/channel/UCgGEU8jHmCNtFI7n_AG-03g'),
('Sony Interactive Entertainment LLC', 'Bridgepointe Parkway San Mateo CALIFORNIA 94404'),
('Takumi Import Co., Ltd.', 'Tokyo, JP'),
('Tesla,Inc. ', 'Palo Alto, CA, US'),
('Texas Oilwell Partners, LLC', '21621 Rhodes Rd Sring TEXAS 773883026'),
('The Boeing Company', 'Huntington Beach, CA, US'),
('Thompson, Sr.; Dennis T.', 'Shoshoni, WY, US'),
('U.S. Marine Corps, a component of the U.S. Department of the Navy n/a agency of the united states government UNITED STATES', 'Room 4B548 Pentagon Washington D.C. 20350'),
('Uproar Entertainment', '3663 Twin Lake Ridge, Westlake Village, CA, 91361, United States'),
('Viance, LLC', '8001 IBM Drive Charlotte NORTH CAROLINA 28262'),
('Walmart Apollo, LLC', '702 SW 8th Street Bentonville ARKANSAS 727160215'),
('Walt Disney Company', '500 South Buena Vista Street, Burbank, CA, 91521, United States'),
('Walt Disney Records', ''),
('Warner Bros. Entertainment Inc.', '4000 Warner Boulevard, Burbank, California, 91522');

-- --------------------------------------------------------

--
-- Table structure for table `patent`
--

DROP TABLE IF EXISTS `patent`;
CREATE TABLE IF NOT EXISTS `patent` (
  `id` int(11) UNSIGNED NOT NULL,
  `appNum` varchar(20) DEFAULT NULL,
  `patentNum` varchar(20) DEFAULT NULL,
  `filingDate` date DEFAULT NULL,
  `issueDate` date DEFAULT NULL,
  `abstract` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patent`
--

INSERT INTO `patent` (`id`, `appNum`, `patentNum`, `filingDate`, `issueDate`, `abstract`) VALUES
(63, 'D617332', 'D832849', '2017-09-13', '2018-11-06', ''),
(64, '14806594', '10123232', '2015-07-22', '2018-11-06', ''),
(65, '15/827,435', '10,128,705', '2017-11-30', '2018-11-13', 'An electric motor includes a case, a stator that includes a stator laminaiton and end-windings, a rotor coupled to the case via at least one rotor bearing. The rotor includes a hollow cylindrical body, a first shaft portion, and a second shaft portion. The hollow cylindrical body includes an inner wall, an outer wall, a first distal end, and a second distal end. The first shaft portions couples to the first distal end and the second shaft portion couples to the second distal end. The second shaft portion includes a fluid feed tube formed therewith having a fluid receive end and a fluid feed end, the fluid feed end extending to a central inner portion of the hollow cylindrical body. A plurality of fluid exit ports adjacent the first distal end and the second distal end of the hollow cylindrical body spray fluid onto components of the stator.'),
(66, '15/008,155', 'RE47,124', '2017-11-30', '2018-11-13', 'Automated fluid handling system comprising a housing (20) and two or more fluid handling units (26) arranged as interchangeable modular components with an external fluidics section (30) and an internal non fluidics section (32), and wherein the housing (20) comprises a liquid handling panel (22) with two or more of component positions for receiving said interchangeable modular components (26) such that the external fluidics section (30) is separated from the non fluidics section (32) by the liquid handling panel (22).'),
(67, '15/838,289', '10,129,705', '2017-12-11', '2018-11-13', 'In one embodiment, a method includes receiving, from a first software application of a client system associated with a user of an online social network, background signal-information identifying one or more first wireless signals; storing the signal-information and a client identifier for the client system in a signal-information database; receiving, from a second software application of the client system via a places-API of the online social network, a places-API call indicating that the client system is located at a geographic location corresponding to a first place-entity; recording the places-API call in an API-call log, wherein the API-call log records the first place-entity and the client identifier; determining a correlation between the signal-information and the first place-entity; and updating a place-entity database to indicate that the first place-entity corresponds to the one or more first wireless signals identified by the signal-information.'),
(68, '15/807,408', '10,129,733', '2017-11-08', '2018-11-13', 'Methods and devices may be used to remotely hushing alarms by receiving an indication of an alarm event occurring at a remote device and presenting a visual indicator of the alarm event including a hush option to alter an audible and/or visual alarm notification of the remote device. A user selection of the hush option is received. In response to receiving the user selection of the hush option, communicating, from the electronic device to the remote device via a point-to-point low power wireless connection between the electronic device and the remote device, a hush request requests that the remote device alter its audible and/or visual alarm notification and causes an adjustment of the visual indicator to reflect a status of the hush request.'),
(69, '15/953,965', '10,128,530', '2018-04-16', '2018-11-13', 'The high thermal conduction resistances of a lithium-ion battery (LIB) severely limit the effectiveness of a conventional external thermal management system (TMS). A method for a new thermal management system for lithium-ion batteries that utilizes a multi-functional electrolyte (MFE) to remove heat locally inside the cell by evaporating a volatile component of the MFE is disclosed. These new electrolyte mixtures comprise a high vapor pressure co-solvent. The characteristics of a previously unstudied high vapor pressure co-solvent HFE-7000 (65 kPa at 25.degree. C.) in an MFE (1 M LiTFSI in 1:1 HFE-7000/EMC), and other possible MFE compositions that can be utilized in a custom electrolyte boiling facility, are disclosed.'),
(70, '15/083,009', '10,129,360', '2016-03-28', '2018-11-13', 'A system is provided for unified data networking across a plurality of heterogeneous networks different ones of which include a source network node and a querying network node. The system may receive a data packet having a payload and a tag that includes a unified identity code (UIC) for a category of information. Content of the payload may be stored in a cache memory based at least in part on the UIC. In at least one instance, a query including the UIC may be received from the querying network node, and the system may retrieve the content from the cache memory based on the UIC. The system may then generate and transmit, to the querying network node, a reply data packet having a payload with the content and a tag that includes the UIC.'),
(71, '15/054,546', '10,128,949', '2016-02-26', '2018-11-13', 'A wide-field telescope and focal plane array (FPA) that look at Earth and satellites in low- and medium-Earth orbit (LEO and MEO) from a satellite in higher orbit, such as geostationary Earth orbit (GEO), can serve as a node in an on-demand, optical multiple access (OMA) communications network. The FPA receives asynchronous low-rate signals from LEO and MEO satellites and ground stations at a signal rate determined in part by the FPA frame rate (e.g., kHz to MHz). A controller tracks the low-rate signals across the FPA as the signal sources orbit Earth. The node also includes one or more transmitters that relay the received information to other nodes via wavelength-division multiplexed (WDM) free-space optical signals. These other signals may include low-rate telemetry communications, burst transmissions, and continuous data relay links.'),
(72, '14/015,663', '10,084,806', '2013-08-30', '2018-09-25', 'Systems and methods may simulate traffic to identify malicious activity. A dynamic analysis system comprising a processor in communication with a network may receive a copy of a malware program and load the copy of the malware program into a simulated endpoint. The system may monitor simulated endpoint network traffic to or from the simulated endpoint, assess the simulated endpoint network traffic to determine a source and/or destination for the simulated endpoint network traffic and/or content of the simulated endpoint network traffic, and capture and store metadata associated with the simulated endpoint network traffic. A comparison system may compare simulated network traffic metadata to observed network traffic metadata to determine whether the metadata are statistically similar. When the metadata are not statistically similar, the system may generate a low infection confidence score. When the metadata are statistically similar, the system may generate a high infection confidence score.'),
(73, 'D/424,379', 'D672,510', '2012-06-12', '2012-12-11', ''),
(74, '08/833,852', 'RE35,968', '1997-04-10', '1998-11-24', 'An improved card game is provided. In particular, the present invention relates to a modification and improvement to .Iadd.card games where a player tries to reach one or more specified card count target values without exceeding the stated target value, such as .Iaddend.the well-known card game of blackjack or 21. A player is dealt first and second cards after placing an original bet, and then elects to stand or take an additional third card. If a third card is taken, the player is given the option of keeping the card, or replacing the card. If the third card is replaced, an additional wager is placed by the player, and a replacement to the third card is given. The player then elects to stand or take additional cards. After the player has taken all desired cards, the dealer\'s hand and player\'s hand are compared to determine a winner.'),
(75, '05/571,794', 'RE28,826', '1975-04-25', '1976-05-25', 'A mold for forming plastic foam parts in which an injection-molded plastic member forms a molding surface of the foam molding cavity against which foam plastic is adapted to be molded. The plastic member is preferably injection molded in a metal molding die from either polyethylene or polypropylene so that its molding surface is the reverse of the exterior surface of the plastic part to be foam molded therein. Vent passages and sealing beads may be integrally formed with the injection-molded member.'),
(76, '11/485,453', '7,476,844', '2006-07-13', '2009-01-13', 'An encoder is adapted to be opposed to a scale provided with a plurality of marks or slits arranged in a first direction such that a distance between centers of adjacent marks or slits in the first direction assumes a first length. Each of photo detectors has a light receiving region adapted to receive light emitted from a photo emitter and transmitted by way of the marks or slits, and is operable to output a detection signal in accordance with a quantity of the light received by the light receiving region. The photo detectors are arranged in a second direction perpendicular to the first direction while being shifted in the first direction by a second length which is one-sixteenth of the first length. Each of signal generators is operable to generate an output signal based on at least the detection signal outputted from one of the photo detectors. Each of exclusive-OR logic circuits is operable to perform a logical exclusive-OR calculation with respect to the output signals from two of the signal generators to generate an exclusive-OR signal. Some of the output signals and the exclusive-OR signals are output from the encoder. The level of the detection signal is changed in accordance with a relative movement between the marks or slits and the photo detectors, so as to have a first frequency. Each of the output signals has a second frequency which is double of the first frequency.'),
(77, '08/274,577', '5,487,765', '1994-07-13', '1996-01-30', 'Apparatus for purging non-condensable gases from a condenser containing vaporized, condensable working fluid, includes an enclosed chamber located above the condenser, a movable diaphragm in the chamber for dividing the latter into upper and lower portions, two flow control valves serially connected together and located between the condenser and the lower portion of the chamber, and a venting valve connected to the lower portion. Each of the valves are selectively operable and have an open and a closed state. A mechanism is provided for moving the diaphragm for changing the volume of the lower portion; and a mechanism is provided for synchronizing the states of the valves with changes in the volume of the lower portion.'),
(78, '13/963,951', 'RE45,831', '2013-08-09', '2015-12-29', 'A rear board of a blade server, a blade server and a subrack are provided. The blade server includes a front board and a back board, the rear board includes a standard ATCA interface, and the rear board is connected to the front board by the standard ATCA interface. The blade server also includes a connector configured to connect hard disks which is set on the rear board, and a portion of the rear board on which the connector is set is extended outward so as to accommodate at least two hard disks, and the at least two hard disks are connected to the connector. The blade server increases the ability of the heat dissipation ability of the front board, and the rear board supports data backup between the two hard disks and hot plug.'),
(79, '09/236,686', 'PP11,725', '1999-01-25', '2000-12-26', 'A new plant variety of chrysanthemum producing yellow daisy-type flowers.'),
(80, '07/188,276', '4,842,267', '1988-04-29', '1989-06-27', 'The invention relates to a device usable in an amusement park in association with a rotatable carousel having a support arm which supports a cylindrical bearing for a car which is used to accommodate one or more persons. The cylindrical bearing is held substantially vertically so that it defines a rotatable horizontal axis which rotatably supports the car. The car is suspended so that the center of gravity of the car holds in a position so that it accommodates the passengers in an upright position. Means are provided to bias the car into an upright position, but to permit it to rotate about its horizontal axis. A feature of the construction is that the car is provided with a control which may be manipulated by a passenger to orient wings of the device so that the device has a tendency to effect a roll about its horizontal axis. In addition it is provided with a similar control, or the same control which effects the driving rotation of the car about its central horizontal axis so that it begins a roll against the biasing action to which it is mounted. The ring mounting the car to the carousel support is constructed so that it may be centrally suspended from the support along with the front end thereof which permits the rotation about the horizontal axis.'),
(81, 'D/474,579', 'D749,287', '2014-11-10', '2016-02-09', ''),
(82, '08/274,577', '5,487,765', '1994-07-13', '1996-01-30', 'Apparatus for purging non-condensable gases from a condenser containing vaporized, condensable working fluid, includes an enclosed chamber located above the condenser, a movable diaphragm in the chamber for dividing the latter into upper and lower portions, two flow control valves serially connected together and located between the condenser and the lower portion of the chamber, and a venting valve connected to the lower portion. Each of the valves are selectively operable and have an open and a closed state. A mechanism is provided for moving the diaphragm for changing the volume of the lower portion; and a mechanism is provided for synchronizing the states of the valves with changes in the volume of the lower portion.');

-- --------------------------------------------------------

--
-- Table structure for table `trademark`
--

DROP TABLE IF EXISTS `trademark`;
CREATE TABLE IF NOT EXISTS `trademark` (
  `id` int(11) UNSIGNED NOT NULL,
  `serialNum` int(11) DEFAULT NULL,
  `registNum` int(11) DEFAULT NULL,
  `status` char(4) DEFAULT NULL,
  `filingDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trademark`
--

INSERT INTO `trademark` (`id`, `serialNum`, `registNum`, `status`, `filingDate`) VALUES
(32, 87978938, NULL, 'LIVE', '2017-05-19'),
(33, 87581293, 1369059, 'LIVE', '2017-08-23'),
(34, 88120045, NULL, 'LIVE', '2018-09-17'),
(35, 87275464, 1361992, 'LIVE', '2016-12-20'),
(36, 86411394, 4708394, 'LIVE', '2014-10-01'),
(37, 85180116, 4094533, 'DEAD', '2010-11-18'),
(38, 87860019, 1409633, 'LIVE', '2018-04-02'),
(39, 86304253, NULL, 'DEAD', '2014-06-09'),
(40, 78355920, NULL, 'DEAD', '2004-01-22'),
(41, 74038323, 1642647, 'DEAD', '1990-03-14'),
(42, 88100504, NULL, 'LIVE', '2018-08-31'),
(43, 88072772, NULL, 'LIVE', '2018-08-09'),
(44, 88196013, NULL, 'LIVE', '2018-11-15'),
(45, 87897086, NULL, 'LIVE', '2018-04-27'),
(46, 88195104, NULL, 'LIVE', '2018-11-15'),
(47, 88078973, NULL, 'LIVE', '2018-08-15'),
(49, 88195665, NULL, 'LIVE', '2018-11-15'),
(50, 88196069, NULL, 'LIVE', '2018-11-15'),
(51, 88175187, NULL, 'LIVE', '2018-10-30');

-- --------------------------------------------------------

--
-- Table structure for table `youtubevideo`
--

DROP TABLE IF EXISTS `youtubevideo`;
CREATE TABLE IF NOT EXISTS `youtubevideo` (
  `id` int(11) UNSIGNED NOT NULL,
  `publicationDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `youtubevideo`
--

INSERT INTO `youtubevideo` (`id`, `publicationDate`) VALUES
(94, '2012-01-20'),
(95, '2007-06-11'),
(96, '2009-10-24'),
(97, '2010-11-07'),
(98, '2012-04-11'),
(99, '2010-04-16'),
(100, '2009-12-25'),
(101, '2011-06-02'),
(102, '2006-11-02'),
(103, '2011-01-30');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `copyright`
--
ALTER TABLE `copyright`
  ADD CONSTRAINT `Copyright__id` FOREIGN KEY (`id`) REFERENCES `ip` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ip`
--
ALTER TABLE `ip`
  ADD CONSTRAINT `IP__OwnerName` FOREIGN KEY (`IP_ownerName`) REFERENCES `owner` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `license`
--
ALTER TABLE `license`
  ADD CONSTRAINT `License__id` FOREIGN KEY (`License_id`) REFERENCES `ip` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `patent`
--
ALTER TABLE `patent`
  ADD CONSTRAINT `Patent__id` FOREIGN KEY (`id`) REFERENCES `ip` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trademark`
--
ALTER TABLE `trademark`
  ADD CONSTRAINT `Trademark_id` FOREIGN KEY (`id`) REFERENCES `ip` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `youtubevideo`
--
ALTER TABLE `youtubevideo`
  ADD CONSTRAINT `YTVideo__id` FOREIGN KEY (`id`) REFERENCES `ip` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
