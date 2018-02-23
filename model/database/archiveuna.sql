-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2018 at 09:56 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `archiveuna`
--

-- --------------------------------------------------------

--
-- Table structure for table `contien`
--

CREATE TABLE IF NOT EXISTS `contien` (
  `nomf` varchar(30) NOT NULL,
  `nomm` varchar(100) NOT NULL,
  PRIMARY KEY (`nomf`,`nomm`),
  KEY `nomm` (`nomm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cours`
--

CREATE TABLE IF NOT EXISTS `cours` (
  `annee` varchar(10) NOT NULL,
  `numero` tinyint(10) NOT NULL,
  `cours` varchar(100) NOT NULL,
  `nomm` varchar(100) NOT NULL,
  PRIMARY KEY (`annee`,`numero`),
  KEY `nomm` (`nomm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `examen`
--

CREATE TABLE IF NOT EXISTS `examen` (
  `annee` varchar(10) NOT NULL,
  `numero` tinyint(10) NOT NULL,
  `session` tinyint(1) NOT NULL,
  `sujet` varchar(30) NOT NULL,
  `correction` varchar(100) DEFAULT NULL,
  `nomm` varchar(100) NOT NULL,
  PRIMARY KEY (`annee`,`numero`,`session`),
  KEY `nomm` (`nomm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `filiere`
--

CREATE TABLE IF NOT EXISTS `filiere` (
  `nomf` varchar(30) NOT NULL,
  PRIMARY KEY (`nomf`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `matiere`
--

CREATE TABLE IF NOT EXISTS `matiere` (
  `nomm` varchar(100) NOT NULL,
  `credits` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`nomm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `td`
--

CREATE TABLE IF NOT EXISTS `td` (
  `annee` varchar(10) NOT NULL,
  `numero` tinyint(10) NOT NULL,
  `sujet` varchar(30) NOT NULL,
  `correction` varchar(100) DEFAULT NULL,
  `nomm` varchar(100) NOT NULL,
  PRIMARY KEY (`annee`,`numero`),
  KEY `nomm` (`nomm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `annee` varchar(10) NOT NULL,
  `numero` tinyint(10) NOT NULL,
  `sujet` varchar(30) NOT NULL,
  `correction` varchar(100) DEFAULT NULL,
  `nomm` varchar(100) NOT NULL,
  PRIMARY KEY (`annee`,`numero`),
  KEY `nomm` (`nomm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tp`
--

CREATE TABLE IF NOT EXISTS `tp` (
  `annee` varchar(10) NOT NULL,
  `numero` tinyint(10) NOT NULL,
  `sujet` varchar(30) NOT NULL,
  `correction` varchar(100) DEFAULT NULL,
  `nomm` varchar(100) NOT NULL,
  PRIMARY KEY (`annee`,`numero`),
  KEY `nomm` (`nomm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contien`
--
ALTER TABLE `contien`
  ADD CONSTRAINT `contien_ibfk_1` FOREIGN KEY (`nomf`) REFERENCES `filiere` (`nomf`),
  ADD CONSTRAINT `contien_ibfk_2` FOREIGN KEY (`nomm`) REFERENCES `matiere` (`nomm`);

--
-- Constraints for table `cours`
--
ALTER TABLE `cours`
  ADD CONSTRAINT `cours_ibfk_1` FOREIGN KEY (`nomm`) REFERENCES `matiere` (`nomm`);

--
-- Constraints for table `examen`
--
ALTER TABLE `examen`
  ADD CONSTRAINT `examen_ibfk_1` FOREIGN KEY (`nomm`) REFERENCES `matiere` (`nomm`);

--
-- Constraints for table `td`
--
ALTER TABLE `td`
  ADD CONSTRAINT `td_ibfk_1` FOREIGN KEY (`nomm`) REFERENCES `matiere` (`nomm`);

--
-- Constraints for table `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `test_ibfk_1` FOREIGN KEY (`nomm`) REFERENCES `matiere` (`nomm`);

--
-- Constraints for table `tp`
--
ALTER TABLE `tp`
  ADD CONSTRAINT `tp_ibfk_1` FOREIGN KEY (`nomm`) REFERENCES `matiere` (`nomm`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
