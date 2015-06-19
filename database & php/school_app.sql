-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Machine: 127.0.0.1
-- Genereertijd: 19 jun 2015 om 14:23
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Gegevens worden uitgevoerd voor tabel `leerlingen`
--

INSERT INTO `leerlingen` (`id`, `Leerlingnummer`, `Naam`, `Klas`, `Opleiding`) VALUES
(1, 400004575, 'Marvin Arts', 'VCIT2G4', 'Game Development');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `stage`
--

CREATE TABLE IF NOT EXISTS `stage` (
  `Leerlingnummer` int(50) NOT NULL,
  `Bedrijfsnaam` varchar(50) NOT NULL,
  `Plaats` varchar(50) NOT NULL,
  `Postcode` varchar(50) NOT NULL,
  `Telefoonnummer` varchar(50) NOT NULL,
  `E-mail` varchar(50) NOT NULL,
  `Naam begeleider` varchar(50) NOT NULL,
  `Periode` varchar(50) NOT NULL,
  `Beoordeling` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden uitgevoerd voor tabel `stage`
--

INSERT INTO `stage` (`Leerlingnummer`, `Bedrijfsnaam`, `Plaats`, `Postcode`, `Telefoonnummer`, `E-mail`, `Naam begeleider`, `Periode`, `Beoordeling`) VALUES
(400004575, 'Movements Group', 'Beuningen', '6641 BK', '+31 88 345 66 00', 'info@movements.nl', 'Bjorn Thannhauser', '1 sept - 30 jan', 'goed');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
