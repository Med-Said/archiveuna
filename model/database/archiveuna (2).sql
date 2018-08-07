-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2018 at 08:35 AM
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
  `nomf` varchar(30) CHARACTER SET latin1 NOT NULL,
  `niveau` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nomm` varchar(100) CHARACTER SET latin1 NOT NULL,
  `s` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`nomf`,`niveau`,`nomm`,`s`),
  KEY `nomm` (`nomm`),
  KEY `nomm_2` (`nomm`,`s`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contien`
--

INSERT INTO `contien` (`nomf`, `niveau`, `nomm`, `s`) VALUES
('DA2I', 'L3', 'Administration Base de donnees', 5),
('MIAGE', 'L3', 'Administration Base de donnees', 5),
('DA2I', 'L3', 'Administration systeme', 6),
('MPI', 'L1', 'Algebre generale', 1),
('MPI', 'L1', 'Algebre lineaire 1', 2),
('BG', 'L1', 'Algebre lineaire et probabilites', 1),
('BG', 'L1', 'Algebre lineaire et Probabilites', 2),
('MAI', 'L2', 'Algebre lineaires 2', 3),
('MAI', 'L2', 'Algorithmique et approche fonctionnel', 3),
('INFO', 'L2', 'Algorithmique et approche fonctionnelle', 3),
('MPI', 'L1', 'Algorithmique et Programmation', 2),
('INFO', 'L2', 'Analyse des donnees', 4),
('MI', 'L3', 'Analyse numerique', 6),
('MAI', 'L2', 'Analyse Vectorielle', 4),
('BG', 'L1', 'Anglais', 2),
('BIO', 'L2', 'Anglais', 3),
('BIO', 'L2', 'Anglais', 4),
('DA2I', 'L3', 'Anglais', 5),
('GEOMIN', 'L3', 'Anglais', 5),
('GIO', 'L2', 'Anglais', 4),
('INFO', 'L2', 'Anglais', 3),
('INFO', 'L2', 'Anglais', 4),
('MAI', 'L2', 'Anglais', 4),
('MIAGE', 'L3', 'Anglais', 5),
('GIO', 'L2', 'Anglais 1', 3),
('MAI', 'L2', 'Anglais 1', 3),
('MPI', 'L1', 'Anglais 1', 2),
('PC', 'L1', 'Anglais 2', 2),
('MI', 'L3', 'Anglais 3', 5),
('BG', 'L1', 'Arabe pour francophones 1', 1),
('MPI', 'L1', 'Arabe pour francophones 1', 1),
('PC', 'L1', 'Arabe pour francophones 1', 1),
('BG', 'L1', 'Arabe pour francophones 2', 2),
('MPI', 'L1', 'Arabe pour francophones 2', 2),
('PC', 'L1', 'Arabe pour francophones 2', 2),
('INFO', 'L2', 'Architectures des ordinateurs', 3),
('INFO', 'L2', 'Base de donnees', 3),
('MI', 'L3', 'Base de donnees', 5),
('BIO', 'L2', 'Bases d''ecologie', 4),
('MPI', 'L1', 'Bases de l''info et de programmation', 1),
('BIO', 'L2', 'Biochimie 1', 3),
('BG', 'L1', 'Biologie Cellulaire', 2),
('BIO', 'L2', 'Biologie cellulaire', 4),
('BIO', 'L2', 'Biologie moleculaire', 4),
('MI', 'L3', 'Calcul differentiel et elements d''equations differe', 5),
('GIO', 'L2', 'Cartographie', 4),
('BG', 'L1', 'Certificat Informatique et Internet', 1),
('MPI', 'L1', 'Certificat Informatique et Internet', 1),
('PC', 'L1', 'Certificat Informatique et Internet', 1),
('MAI', 'L2', 'Chimie', 4),
('BG', 'L1', 'Chimie Generale', 1),
('BG', 'L1', 'Chimie Inorganique', 2),
('BG', 'L1', 'Chimie Organique', 2),
('PC', 'L1', 'Chimie Organique', 2),
('INFO', 'L2', 'Compilation', 3),
('MAI', 'L2', 'Composantes logique', 4),
('MIAGE', 'L3', 'Comptabilite analytique', 6),
('MIAGE', 'L3', 'Comptabilite Generale', 5),
('DA2I', 'L3', 'Conception application distribuees', 5),
('DA2I', 'L3', 'Conception de Systemes d''Information', 5),
('MIAGE', 'L3', 'Conception de Systemes d''information', 5),
('DA2I', 'L3', 'Controle de Qualite', 5),
('GEOMIN', 'L3', 'Contrôle de Qualite', 5),
('MI', 'L3', 'Controle de qualite', 5),
('MIAGE', 'L3', 'Controle de qualite', 5),
('BG', 'L1', 'Decouverte de la Biologie', 1),
('BIO', 'L2', 'Diversite animale 1', 3),
('BIO', 'L2', 'Diversite vegetale 1', 3),
('MI', 'L3', 'Droit', 6),
('INFO', 'L2', 'Droit TICs', 4),
('GEOMIN', 'L3', 'Ecole de Terrain', 6),
('BIO', 'L2', 'Economie', 3),
('MIAGE', 'L3', 'Economie d''entreprise', 5),
('MPI', 'L1', 'Electromagnetisme', 2),
('PC', 'L1', 'Electromagnetisme', 2),
('MPI', 'L1', 'Electrostatique', 1),
('PC', 'L1', 'Electrostatique', 1),
('BG', 'L1', 'Embriologie et Histologie', 2),
('DA2I', 'L3', 'Entreprenariat', 6),
('MIAGE', 'L3', 'Entreprenariat', 6),
('GEOMIN', 'L3', 'Environnement Minier', 5),
('GIO', 'L2', 'Etudes des Mineraux', 3),
('GEOMIN', 'L3', 'Exploitation I', 5),
('MPI', 'L1', 'Fonction d''une variable reelle', 2),
('MAI', 'L2', 'Fonctions de plusieurs variables', 3),
('GIO', 'L2', 'Francais', 3),
('GIO', 'L2', 'Francais', 4),
('INFO', 'L2', 'Francais', 3),
('INFO', 'L2', 'Francais', 4),
('BIO', 'L2', 'Genetique 1', 3),
('INFO', 'L2', 'Genie Logiciel', 4),
('GIO', 'L2', 'Geologie de l''environnement', 4),
('GEOMIN', 'L3', 'Geologie de la Mauritanie', 6),
('GIO', 'L2', 'Geophysique', 4),
('GEOMIN', 'L3', 'Geostatique', 5),
('GEOMIN', 'L3', 'Geotechnique', 5),
('MI', 'L3', 'Gestion', 5),
('MAI', 'L2', 'Graphes et applications', 4),
('GEOMIN', 'L3', 'Hydrologie et Hydrogeologie', 5),
('MIAGE', 'L3', 'Indroduction a l''intelligence Artificielle', 6),
('MI', 'L3', 'Informatique theorique', 6),
('MAI', 'L2', 'Initialion aux logiciels de calcul scientifique', 3),
('PC', 'L1', 'Intro a la thermodynamique', 2),
('GIO', 'L2', 'Introduction a la Geologie', 3),
('PC', 'L1', 'Liaisons Chimiques', 2),
('INFO', 'L2', 'Marketing', 4),
('GIO', 'L2', 'Mathematiques', 3),
('PC', 'L1', 'Mathematiques', 2),
('PC', 'L1', 'Mathematiques 1', 1),
('MPI', 'L1', 'Mecanique du point', 1),
('PC', 'L1', 'Mecanique du point', 1),
('MI', 'L3', 'Mesure et integration', 6),
('GEOMIN', 'L3', 'Metallogenie', 5),
('BIO', 'L2', 'Microbiologie', 3),
('DA2I', 'L3', 'Multimedia', 5),
('BG', 'L1', 'Optique et Mecanique', 1),
('MPI', 'L1', 'Optique geometrique', 2),
('PC', 'L1', 'Optique Geometrique', 2),
('GIO', 'L2', 'Orogenie et Toctonique', 4),
('DA2I', 'L3', 'Outils Web', 6),
('GIO', 'L2', 'Paleontologie', 3),
('GIO', 'L2', 'Petrographie Ignee', 3),
('BIO', 'L2', 'Physiologie animale', 4),
('BIO', 'L2', 'Physiologie vegetale', 4),
('BG', 'L1', 'Physique atomique et Electromagnetisme', 2),
('MAI', 'L2', 'Probabilite et statistique', 4),
('INFO', 'L2', 'Programmation internet', 3),
('MAI', 'L2', 'Programmation internet', 3),
('INFO', 'L2', 'programmation Objet', 4),
('MI', 'L3', 'Programmation objet', 5),
('MI', 'L3', 'Programmation, algorithme et complexite', 5),
('MIAGE', 'L3', 'Programmation, Algorithme et complexite', 5),
('INFO', 'L2', 'Projet', 3),
('DA2I', 'L3', 'Projet de fin d''etudes', 6),
('MI', 'L3', 'Projet de fin d''etudes', 6),
('MIAGE', 'L3', 'Projet de fin d''etudes', 6),
('BIO', 'L2', 'Projet Personnel de l''Etudiant', 4),
('MAI', 'L2', 'Projet Personnel de l''Etudiant', 4),
('INFO', 'L2', 'Projet UNIX', 4),
('MI', 'L3', 'Projet Unix', 6),
('PC', 'L1', 'Reactions chimiques en milieu aqueux', 1),
('INFO', 'L2', 'Recherche Operationnelle', 4),
('DA2I', 'L3', 'Redaction Scientifique', 6),
('GEOMIN', 'L3', 'Redaction Scientifique', 6),
('MI', 'L3', 'Redaction Scientifique', 6),
('MIAGE', 'L3', 'Redaction Scientifique', 6),
('MIAGE', 'L3', 'Resaux', 5),
('DA2I', 'L3', 'Reseaux', 5),
('GEOMIN', 'L3', 'Ressources Energetiques', 5),
('DA2I', 'L3', 'Securite des systemes', 6),
('GIO', 'L2', 'Sedimentologie et R', 4),
('GEOMIN', 'L3', 'Stage en Entreprise', 6),
('GIO', 'L2', 'Stratigraphie', 3),
('PC', 'L1', 'Structure de la matiere', 1),
('MPI', 'L1', 'Suite et Series', 1),
('INFO', 'L2', 'Systeme d''exploitation', 3),
('BG', 'L1', 'Systeme Terre 1', 1),
('BG', 'L1', 'Systeme Terre 2', 2),
('MAI', 'L2', 'systemes d''exploitations', 3),
('MAI', 'L2', 'Topologie', 4),
('GIO', 'L2', 'Utilisation des SIG', 4),
('GEOMIN', 'L3', 'Valorisation des Minerais', 5),
('DA2I', 'L3', 'Web dynamique', 5);

-- --------------------------------------------------------

--
-- Table structure for table `cours`
--

CREATE TABLE IF NOT EXISTS `cours` (
  `annee` varchar(10) NOT NULL,
  `cours` varchar(100) NOT NULL,
  `nombre` tinyint(3) DEFAULT NULL,
  `nomm` varchar(100) NOT NULL,
  `s` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`annee`,`cours`,`nomm`,`s`),
  KEY `nomm` (`nomm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `examen`
--

CREATE TABLE IF NOT EXISTS `examen` (
  `annee` varchar(10) NOT NULL,
  `examen` varchar(100) NOT NULL,
  `session` tinyint(1) NOT NULL,
  `pages` tinyint(2) DEFAULT NULL,
  `nomm` varchar(100) NOT NULL,
  `s` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`annee`,`examen`,`session`),
  KEY `nomm` (`nomm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examen`
--

INSERT INTO `examen` (`annee`, `examen`, `session`, `pages`, `nomm`, `s`) VALUES
('0', 'analyse des donnees-0-1-0.jpg', 2, 0, 'Analyse des donnees', 4),
('0', 'analyse des donnees-0-1-1.jpg', 1, 1, 'Analyse des donnees', 4),
('0', 'analyse des donnees-0-1-1.jpg', 2, 1, 'Analyse des donnees', 4),
('0', 'analyse des donnees-00-1-1.jpg', 1, 1, 'Analyse des donnees', 4),
('0', 'architectures des ordinateurs-0-1-1.jpg', 1, 1, 'Architectures des ordinateurs', 3),
('0', 'programmation, algorithme et complexite-0-1-1.jpg', 1, 1, 'Programmation, algorithme et complexite', 5),
('00', 'algorithmique et approche fonctionnelle-0-1-1.jpg', 1, 1, 'Algorithmique et approche fonctionnelle', 3),
('2009-2010', 'algorithmique et approche fonctionnelle-0910-1-1.jpg', 1, 1, 'Algorithmique et approche fonctionnelle', 3),
('2010-2011', 'genie logiciel-1011-1-1.jpg', 1, 1, 'Genie Logiciel', 4),
('2010-2011', 'programmation objet-1011-1-2.jpg', 1, 2, 'programmation Objet', 4),
('2010-2011', 'programmation objet-1011-2-2.jpg', 1, 2, 'programmation Objet', 4),
('2011-2012', 'algorithmique et approche fonctionnelle-1112-1-1.jpg', 1, 1, 'Algorithmique et approche fonctionnelle', 3),
('2012-2013', 'base de donnees-1213-1-1.jpg', 1, 1, 'Base de donnees', 3),
('2013-2014', 'architectures des ordinateurs-1314-1-1.jpg', 1, 1, 'Architectures des ordinateurs', 3),
('2013-2014', 'programmation objet-1314-1-2.jpg', 1, 2, 'programmation Objet', 4),
('2013-2014', 'programmation objet-1314-2-2.jpg', 1, 2, 'programmation Objet', 4),
('2013-2014', 'systeme d''exploitation-1314-1-1.jpg', 1, 1, 'Systeme d''exploitation', 3),
('2014-2015', 'architectures des ordinateurs-1415-1-1.jpg', 1, 1, 'Architectures des ordinateurs', 3),
('2014-2015', 'base de donnees-1415-1-2.jpg', 1, 2, 'Base de donnees', 3),
('2014-2015', 'base de donnees-1415-2-2.jpg', 1, 2, 'Base de donnees', 3),
('2014-2015', 'programmation internet-1415-1-0.jpg', 1, 0, 'Programmation internet', 3),
('2014-2015', 'programmation objet-1415-1-2.jpg', 1, 2, 'programmation Objet', 4),
('2014-2015', 'programmation objet-1415-2-2.jpg', 1, 2, 'programmation Objet', 4),
('2014-2015', 'systeme d''exploitation-1415-1-1.jpg', 1, 1, 'Systeme d''exploitation', 3),
('2015-1016', 'base de donnees--1516-1-1.jpg', 1, 1, 'Base de donnees', 5),
('2015-1016', 'base de donnees-1516-1-2.jpg', 1, 2, 'Base de donnees', 5),
('2015-1016', 'base de donnees-1516-2-2.jpg', 1, 2, 'Base de donnees', 5),
('2015-2016', 'algorithmique et approche fonctionnelle-1516-1-2.jpg', 1, 2, 'Algorithmique et approche fonctionnelle', 3),
('2015-2016', 'algorithmique et approche fonctionnelle-1516-2-2.jpg', 1, 2, 'Algorithmique et approche fonctionnelle', 3),
('2015-2016', 'analyse des donnees-1516-1-1.jpg', 1, 1, 'Analyse des donnees', 4),
('2015-2016', 'architectures des ordinateurs-1516-1-1.jpg', 1, 1, 'Architectures des ordinateurs', 3),
('2015-2016', 'base de donnees-1516-1-1.jpg', 1, 1, 'Base de donnees', 3),
('2015-2016', 'compilation-1516-1-1.jpg', 1, 1, 'Compilation', 3),
('2015-2016', 'droit tics-1516-1-1.jpg', 1, 1, 'Droit TICs', 4),
('2015-2016', 'genie logiciel-1516-1-0.jpg', 2, 0, 'Genie Logiciel', 4),
('2015-2016', 'marketin-1516-1-2.jpg', 1, 2, 'Marketing', 4),
('2015-2016', 'marketin-1516-2-2.jpg', 1, 2, 'Marketing', 4),
('2015-2016', 'programmation internet-1516-1-1.jpg', 1, 1, 'Programmation internet', 3),
('2015-2016', 'programmation objet-1516-1-2.jpg', 1, 2, 'programmation Objet', 4),
('2015-2016', 'programmation objet-1516-1-2.jpg', 2, 1, 'programmation Objet', 4),
('2015-2016', 'programmation objet-1516-2-2.jpg', 1, 2, 'programmation Objet', 4),
('2015-2016', 'programmation objet-1516-2-2.jpg', 2, 1, 'programmation Objet', 4),
('2015-2016', 'recherche operationnelle-1516-1-1.jpg', 1, 1, 'Recherche Operationnelle', 4),
('2015-2016', 'systeme d''exploitation-1516-1-2.jpg', 1, 2, 'Systeme d''exploitation', 3),
('2015-2016', 'systeme d''exploitation-1516-2-2.jpg', 1, 2, 'Systeme d''exploitation', 3),
('2016-2017', 'calcul differentiel et elements d''equations differe-1617-1-2.jpg', 1, 2, 'Calcul differentiel et elements d''equations differe', 5),
('2016-2017', 'calcul differentiel et elements d''equations differe-1617-2-2.jpg', 1, 2, 'Calcul differentiel et elements d''equations differe', 5),
('2016-2017', 'controle de qualite1617-1-1.jpg', 1, 1, 'Controle de qualite', 5),
('2017-2018', 'administration base de donnees-1718-1-2.jpg', 1, 2, 'Administration Base de donnees', 5),
('2017-2018', 'administration base de donnees-1718-2-2.jpg', 1, 2, 'Administration Base de donnees', 5),
('2017-2018', 'base de donnees-1718-1-1.jpg', 1, 1, 'Base de donnees', 5),
('2017-2018', 'base de donnees-1718-1-2.jpg', 1, 2, 'Base de donnees', 5),
('2017-2018', 'calcul differentiel et elements d''equations differe-1718-1-1.jpg', 1, 1, 'Calcul differentiel et elements d''equations differe', 5),
('2017-2018', 'conception application distribuees-1718-1-2.jpg', 1, 2, 'Conception application distribuees', 5),
('2017-2018', 'conception application distribuees-1718-2-2.jpg', 1, 2, 'Conception application distribuees', 5),
('2017-2018', 'conception de systemes d''information-1718-1-2.jpg', 1, 1, 'Conception de Systemes d''Information', 5),
('2017-2018', 'conception de systemes d''information-1718-2-2.jpg', 1, 2, 'Conception de Systemes d''Information', 5),
('2017-2018', 'controle de qualite-1718-1-1.jpg', 1, 1, 'Controle de Qualite', 5),
('2017-2018', 'gestion-1718-1-1.jpg', 1, 1, 'Gestion', 5),
('2017-2018', 'multimedia-1718-1-1.jpg', 1, 1, 'Multimedia', 5),
('2017-2018', 'programmation objet-1718-1-2.jpg', 1, 2, 'Programmation objet', 5),
('2017-2018', 'programmation objet-1718-2-2.jpg', 1, 2, 'Programmation objet', 5),
('2017-2018', 'programmation, algorithme et complexite-1718-1-1.jpg', 1, 1, 'Programmation, algorithme et complexite', 5),
('2017-2018', 'reseaux-1718-1-2.jpg', 1, 2, 'Reseaux', 5),
('2017-2018', 'reseaux-1718-2-2.jpg', 1, 2, 'Reseaux', 5),
('2017-2018', 'web dynamique-1718-1-1.jpg', 1, 1, 'Web dynamique', 5);

-- --------------------------------------------------------

--
-- Table structure for table `filiere`
--

CREATE TABLE IF NOT EXISTS `filiere` (
  `nomf` varchar(30) NOT NULL,
  `niveau` varchar(20) NOT NULL DEFAULT '',
  `nomcomplet` varchar(200) NOT NULL,
  PRIMARY KEY (`nomf`,`niveau`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `filiere`
--

INSERT INTO `filiere` (`nomf`, `niveau`, `nomcomplet`) VALUES
('BG', 'L1', ''),
('BIO', 'L2', ''),
('BMP', 'L3', ''),
('BOE', 'L3', ''),
('CHI', 'L2', ''),
('CHI', 'L3', ''),
('DA2I', 'L3', ''),
('EEA', 'L3', ''),
('EPA', 'L3', ''),
('GEO', 'L2', ''),
('GEOMIN', 'L3', ''),
('GEOS', 'L3', ''),
('GETA', 'L2', ''),
('GTE', 'L3', ''),
('INFO', 'L2', ''),
('MA', 'L3', ''),
('MAI', 'L2', ''),
('MI', 'L3', ''),
('MIAGE', 'L3', ''),
('MPI', 'L1', ''),
('NS', 'L2', ''),
('NSL3', 'L3', ''),
('PA', 'L2', ''),
('PC', 'L1', ''),
('PF', 'L2', ''),
('PFL3', 'L3', ''),
('SMO', 'L2', ''),
('SMOL3', 'L3', ''),
('SP', 'L2', ''),
('SPL3', 'L3', ''),
('STA', 'L2', ''),
('TA', 'L3', ''),
('TPGM', 'L3', ''),
('TSER', 'L3', '');

-- --------------------------------------------------------

--
-- Table structure for table `matiere`
--

CREATE TABLE IF NOT EXISTS `matiere` (
  `nomm` varchar(100) CHARACTER SET latin1 NOT NULL,
  `s` tinyint(1) NOT NULL,
  `credits` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`nomm`,`s`),
  UNIQUE KEY `nomm` (`nomm`,`s`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `matiere`
--

INSERT INTO `matiere` (`nomm`, `s`, `credits`) VALUES
('Administration Base de donnees', 5, 3),
('Administration systeme', 6, 3),
('Algebre generale', 1, 6),
('Algebre lineaire 1', 2, 6),
('Algebre lineaire et probabilites', 1, 3),
('Algebre lineaire et Probabilites', 2, 3),
('Algebre lineaires 2', 3, 6),
('Algorithmique et approche fonctionnel', 3, 3),
('Algorithmique et approche fonctionnelle', 3, 3),
('Algorithmique et Programmation', 2, 3),
('Analyse des donnees', 4, 3),
('Analyse numerique', 6, 6),
('Analyse Vectorielle', 4, 3),
('Anglais', 2, 3),
('Anglais', 3, 3),
('Anglais', 4, 3),
('Anglais', 5, 3),
('Anglais 1', 2, 3),
('Anglais 1', 3, 3),
('Anglais 2', 2, 3),
('Anglais 3', 5, 3),
('Arabe pour francophones 1', 1, 3),
('Arabe pour francophones 2', 2, 3),
('Architectures des ordinateurs', 3, 3),
('Base de donnees', 3, 6),
('Base de donnees', 5, 6),
('Bases d''ecologie', 4, 6),
('Bases de l''info et de programmation', 1, 6),
('Biochimie 1', 3, 6),
('Biologie Cellulaire', 2, 3),
('Biologie cellulaire', 4, 3),
('Biologie moleculaire', 4, 3),
('Calcul differentiel et elements d''equations differe', 5, 6),
('Cartographie', 4, 3),
('Certificat Informatique et Internet', 1, 3),
('Chimie', 4, 3),
('Chimie Generale', 1, 3),
('Chimie Inorganique', 2, 3),
('Chimie Organique', 2, 3),
('Compilation', 3, 3),
('Composantes logique', 4, 3),
('Comptabilite analytique', 6, 6),
('Comptabilite Generale', 5, 6),
('Conception application distribuees', 5, 6),
('Conception de Systemes d''Information', 5, 3),
('ContrÃ´le de Qualite', 5, 3),
('Controle de Qualite', 5, 3),
('Decouverte de la Biologie', 1, 6),
('Diversite animale 1', 3, 6),
('Diversite vegetale 1', 3, 6),
('Droit', 6, 3),
('Droit TICs', 4, 3),
('Ecole de Terrain', 6, 6),
('Economie', 3, 3),
('Economie d''entreprise', 5, 3),
('Electromagnetisme', 2, 6),
('Electrostatique', 1, 3),
('Embriologie et Histologie', 2, 3),
('Entreprenariat', 6, 3),
('Environnement Minier', 5, 3),
('Etudes des Mineraux', 3, 3),
('Exploitation I', 5, 3),
('Fonction d''une variable reelle', 2, 6),
('Fonctions de plusieurs variables', 3, 6),
('Francais', 3, 3),
('Francais', 4, 3),
('Genetique 1', 3, 3),
('Genie Logiciel', 4, 3),
('Geologie de l''environnement', 4, 3),
('Geologie de la Mauritanie', 6, 3),
('Geophysique', 4, 3),
('Geostatique', 5, 3),
('Geotechnique', 5, 3),
('Gestion', 5, 3),
('Graphes et applications', 4, 3),
('Hydrologie et Hydrogeologie', 5, 3),
('Indroduction a l''intelligence Artificielle', 6, 3),
('Indroduction a la bureautique', 1, 3),
('Informatique theorique', 6, 6),
('Initialion aux logiciels de calcul scientifique', 3, 3),
('Intro a la thermodynamique', 2, 3),
('Introduction a la Geologie', 3, 3),
('Liaisons Chimiques', 2, 3),
('Marketing', 4, 3),
('Mathematiques', 2, 6),
('Mathematiques', 3, 3),
('Mathematiques 1', 1, 6),
('Mecanique du point', 1, 6),
('Mesure et integration', 6, 6),
('Metallogenie', 5, 3),
('Microbiologie', 3, 3),
('Multimedia', 5, 3),
('Optique et Mecanique', 1, 6),
('Optique geometrique', 2, 3),
('Orogenie et Toctonique', 4, 6),
('Outils Web', 6, 3),
('Paleontologie', 3, 6),
('Petrographie Ignee', 3, 6),
('Physiologie animale', 4, 6),
('Physiologie vegetale', 4, 6),
('Physique atomique et Electromagnetisme', 2, 3),
('Probabilite et statistique', 4, 6),
('Programmation internet', 3, 3),
('programmation Objet', 4, 6),
('Programmation objet', 5, 6),
('Programmation, Algorithme et complexite', 5, 3),
('Projet', 3, 3),
('Projet de fin d''etudes', 6, 15),
('Projet Personnel de l''Etudiant', 4, 3),
('Projet UNIX', 4, 3),
('Projet Unix', 6, 3),
('Reactions chimiques en milieu aqueux', 1, 6),
('Recherche Operationnelle', 4, 3),
('Redaction Scientifique', 6, 3),
('Resaux', 5, 6),
('Reseaux', 5, 6),
('Ressources Energetiques', 5, 3),
('Securite des systemes', 6, 3),
('Sedimentologie et R', 4, 6),
('Stage en Entreprise', 6, 18),
('Stratigraphie', 3, 3),
('Structure de la matiere', 1, 3),
('Suite et Series', 1, 3),
('Systeme d''exploitation', 3, 3),
('Systeme Terre 1', 1, 6),
('Systeme Terre 2', 2, 6),
('systemes d''exploitations', 3, 3),
('Topologie', 4, 3),
('Utilisation des SIG', 4, 3),
('Valorisation des Minerais', 5, 3),
('Web dynamique', 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `td`
--

CREATE TABLE IF NOT EXISTS `td` (
  `annee` varchar(10) NOT NULL,
  `td` varchar(100) NOT NULL,
  `pages` tinyint(2) DEFAULT NULL,
  `nomm` varchar(100) NOT NULL,
  `s` tinyint(1) NOT NULL,
  PRIMARY KEY (`annee`,`td`,`nomm`,`s`),
  KEY `nomm` (`nomm`),
  KEY `nomm_2` (`nomm`,`s`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `annee` varchar(10) NOT NULL,
  `test` varchar(100) NOT NULL,
  `pages` tinyint(2) DEFAULT NULL,
  `nomm` varchar(100) NOT NULL,
  `s` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`annee`,`test`,`nomm`,`s`),
  KEY `nomm` (`nomm`),
  KEY `nomm_2` (`nomm`,`s`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`annee`, `test`, `pages`, `nomm`, `s`) VALUES
('0', 'algorithmique et approche fonctionnelle-0-1-1.jpg', 1, 'Algorithmique et approche fonctionnelle', 3),
('0', 'analyse des donnees-0-1-1.jpg', 1, 'Analyse des donnees', 4),
('0', 'conception de systemes d''information-0-1-1.jpg', 1, 'Conception de Systemes d''Information', 5),
('0', 'programmation internet-0-0-0.jpg', 0, 'Programmation internet', 3),
('0', 'programmation internet-0-1-1.jpg', 1, 'Programmation internet', 3),
('0', 'reseaux-0-1-1.jpg', 1, 'Reseaux', 5),
('0', 'systeme d''exploitation-0-1-1.jpg', 1, 'Systeme d''exploitation', 3),
('2011-2012', 'programmation objet-1112-1-2.jpg', 2, 'programmation Objet', 4),
('2012-2013', 'programmation objet-1213-1-2.jpg', 2, 'Programmation objet', 5),
('2012-2013', 'programmation objet-1213-2-2.jpg', 2, 'Programmation objet', 5),
('2013-2014', 'algorithmique et approche fonctionnelle-1314-1-1 (2).jpg', 1, 'Algorithmique et approche fonctionnelle', 3),
('2013-2014', 'algorithmique et approche fonctionnelle-1314-1-1.jpg', 1, 'Algorithmique et approche fonctionnelle', 3),
('2013-2014', 'programmation internet-1314-1-0.jpg', 0, 'Programmation internet', 3),
('2013-2014', 'programmation objet-1314-1-2.jpg', 2, 'programmation Objet', 4),
('2013-2014', 'programmation objet-1314-2-2.jpg', 2, 'programmation Objet', 4),
('2013-2014', 'programmation, algorithme et complexite-1314-1-1.jpg', 1, 'Programmation, algorithme et complexite', 5),
('2013-2014', 'reseaux-1314-1-1.jpg', 1, 'Reseaux', 5),
('2014-2015', 'base de donnees-1415-1-2.jpg', 2, 'Base de donnees', 3),
('2014-2015', 'base de donnees-1415-2-2.jpg', 2, 'Base de donnees', 3),
('2014-2015', 'genie logiciel-1415-1-2.jpg', 2, 'Genie Logiciel', 4),
('2014-2015', 'genie logiciel-1415-2-2.jpg', 2, 'Genie Logiciel', 4),
('2014-2015', 'programmation internet-1415-1-1.jpg', 1, 'Programmation internet', 3),
('2014-2015', 'reseaux-1415-1-1.jpg', 1, 'Reseaux', 5),
('2014-2015', 'systeme d''exploitation-1415-1-1.jpg', 1, 'Systeme d''exploitation', 3),
('2015-2016', 'administration base de donnees-1516-1-1.jpg', 1, 'Administration Base de donnees', 5),
('2015-2016', 'analyse des donnees-1516-1-1.jpg', 1, 'Analyse des donnees', 4),
('2015-2016', 'architectures des ordinateurs-1516-1-1.jpg', 1, 'Architectures des ordinateurs', 3),
('2015-2016', 'base de donnees-1516-1-1.jpg', 1, 'Base de donnees', 3),
('2015-2016', 'compilation-1516-1-1.jpg', 1, 'Compilation', 3),
('2015-2016', 'genie logiciel-1516-1-2.jpg', 2, 'Genie Logiciel', 4),
('2015-2016', 'genie logiciel-1516-2-2.jpg', 2, 'Genie Logiciel', 4),
('2015-2016', 'marketing-1516-1-1.jpg', 1, 'Marketing', 4),
('2015-2016', 'programmation internet-1516-1-3.jpg', 3, 'Programmation internet', 3),
('2015-2016', 'programmation internet-1516-2-3.jpg', 3, 'Programmation internet', 3),
('2015-2016', 'programmation internet-1516-3-3.jpg', 3, 'Programmation internet', 3),
('2015-2016', 'programmation objet-1516-1-2.jpg', 2, 'programmation Objet', 4),
('2015-2016', 'programmation objet-1516-2-2.jpg', 2, 'programmation Objet', 4),
('2015-2016', 'recherche operationnelle-1516-1-2.jpg', 2, 'Recherche Operationnelle', 4),
('2015-2016', 'recherche operationnelle-1516-2-2.jpg', 2, 'Recherche Operationnelle', 4),
('2016-2017', 'administration base de donnees-1617-1-1.jpg', 1, 'Administration Base de donnees', 5),
('2016-2017', 'base de donnees-1617-1-1.jpg', 1, 'Base de donnees', 5),
('2016-2017', 'calcul differentiel et elements d''equations differe-1617-1-1.jpg', 1, 'Calcul differentiel et elements d''equations differe', 5),
('2016-2017', 'calcul differentiel et elements d''equations differe-1617-1-2.jpg', 2, 'Calcul differentiel et elements d''equations differe', 5),
('2016-2017', 'calcul differentiel et elements d''equations differe-1617-2-2.jpg', 2, 'Calcul differentiel et elements d''equations differe', 5),
('2016-2017', 'conception application distribuees-1617-1-1.jpg', 1, 'Conception application distribuees', 5),
('2016-2017', 'conception de systemes d''information-1617-1-3.jpg', 3, 'Conception de Systemes d''Information', 5),
('2016-2017', 'conception de systemes d''information-1617-2-3.jpg', 3, 'Conception de Systemes d''Information', 5),
('2016-2017', 'conception de systemes d''information-1617-3-3.jpg', 3, 'Conception de Systemes d''Information', 5),
('2016-2017', 'reseaux-1617-1-2.jpg', 2, 'Reseaux', 5),
('2016-2017', 'reseaux-1617-2-2.jpg', 2, 'Reseaux', 5),
('2017-2018', 'administration base de donnees-1718-1-2.JPG', 2, 'Administration Base de donnees', 5),
('2017-2018', 'administration base de donnees-1718-2-2.JPG', 2, 'Administration Base de donnees', 5),
('2017-2018', 'base de donnees-1718-1-2.jpg', 2, 'Base de donnees', 5),
('2017-2018', 'base de donnees-1718-2-2.jpg', 2, 'Base de donnees', 5),
('2017-2018', 'conception application distribuees-1718-1-1.JPG', 1, 'Conception application distribuees', 5),
('2017-2018', 'conception de systemes d''information-1718-1-4.JPG', 4, 'Conception de Systemes d''Information', 5),
('2017-2018', 'conception de systemes d''information-1718-2-4.JPG', 4, 'Conception de Systemes d''Information', 5),
('2017-2018', 'conception de systemes d''information-1718-3-4.JPG', 4, 'Conception de Systemes d''Information', 5),
('2017-2018', 'conception de systemes d''information-1718-4-4.JPG', 4, 'Conception de Systemes d''Information', 5),
('2017-2018', 'controle de qualite-1718-1-1.JPG', 1, 'Controle de Qualite', 5),
('2017-2018', 'gestion-1718-1-1.jpg', 1, 'Gestion', 5),
('2017-2018', 'programmation objet-1718-1-1.jpg', 1, 'Programmation objet', 5),
('2017-2018', 'programmation, algorithme et complexite-1718-1-1.jpg', 1, 'Programmation, algorithme et complexite', 5),
('2017-2018', 'reseaux-1718-1-2.JPG', 2, 'Reseaux', 5),
('2017-2018', 'reseaux-1718-2-2.JPG', 2, 'Reseaux', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tp`
--

CREATE TABLE IF NOT EXISTS `tp` (
  `annee` varchar(10) NOT NULL,
  `tp` varchar(100) NOT NULL,
  `pages` tinyint(2) DEFAULT NULL,
  `nomm` varchar(100) NOT NULL,
  `s` tinyint(1) NOT NULL,
  PRIMARY KEY (`annee`,`tp`,`nomm`,`s`),
  KEY `nomm` (`nomm`),
  KEY `nomm_2` (`nomm`,`s`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contien`
--
ALTER TABLE `contien`
  ADD CONSTRAINT `contien_ibfk_1` FOREIGN KEY (`nomm`, `s`) REFERENCES `matiere` (`nomm`, `s`);

--
-- Constraints for table `cours`
--
ALTER TABLE `cours`
  ADD CONSTRAINT `cours_ibfk_1` FOREIGN KEY (`nomm`) REFERENCES `matiere` (`nomm`);

--
-- Constraints for table `td`
--
ALTER TABLE `td`
  ADD CONSTRAINT `td_ibfk_1` FOREIGN KEY (`nomm`) REFERENCES `matiere` (`nomm`),
  ADD CONSTRAINT `td_ibfk_2` FOREIGN KEY (`nomm`, `s`) REFERENCES `matiere` (`nomm`, `s`);

--
-- Constraints for table `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `test_ibfk_1` FOREIGN KEY (`nomm`, `s`) REFERENCES `matiere` (`nomm`, `s`),
  ADD CONSTRAINT `test_ibfk_2` FOREIGN KEY (`nomm`, `s`) REFERENCES `matiere` (`nomm`, `s`);

--
-- Constraints for table `tp`
--
ALTER TABLE `tp`
  ADD CONSTRAINT `tp_ibfk_1` FOREIGN KEY (`nomm`) REFERENCES `matiere` (`nomm`),
  ADD CONSTRAINT `tp_ibfk_2` FOREIGN KEY (`nomm`, `s`) REFERENCES `matiere` (`nomm`, `s`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
