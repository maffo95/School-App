-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Machine: 127.0.0.1
-- Genereertijd: 15 jun 2015 om 12:23
-- Serverversie: 5.5.27
-- PHP-versie: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databank: `school app`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `leerlingen`
--

CREATE TABLE IF NOT EXISTS `leerlingen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Leerlingnummer` int(11) NOT NULL,
  `Naam` varchar(100) NOT NULL,
  `Klas` varchar(25) NOT NULL,
  `Opleiding` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Leerlingnummer` (`Leerlingnummer`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Gegevens worden uitgevoerd voor tabel `leerlingen`
--

INSERT INTO `leerlingen` (`id`, `Leerlingnummer`, `Naam`, `Klas`, `Opleiding`) VALUES
(1, 400004575, 'Marvin Arts', 'VCIT2G4', 'Game Development');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
