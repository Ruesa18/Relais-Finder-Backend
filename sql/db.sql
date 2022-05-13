-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Erstellungszeit: 13. Mai 2022 um 07:56
-- Server-Version: 5.7.34
-- PHP-Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `relais-finder-backend`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `modulation`
--

CREATE TABLE `modulation` (
  `ID` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `modulation`
--

INSERT INTO `modulation` (`ID`, `name`) VALUES
(5, 'AM/FM'),
(7, 'C4FM'),
(6, 'DMR'),
(10, 'DSTAR'),
(1, 'FM'),
(14, 'FM DSTAR'),
(4, 'FM DSTAR EchoLink'),
(2, 'FM EchoLink'),
(3, 'FM Fusion'),
(17, 'FM P-25'),
(18, 'FM WIRES-X'),
(13, 'Fusion WIRES-X'),
(9, 'NXDN');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `relais`
--

CREATE TABLE `relais` (
  `ID` bigint(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `callsign` varchar(10) NOT NULL,
  `frequencyIn` double NOT NULL,
  `frequencyOut` double NOT NULL,
  `offset` double NOT NULL DEFAULT '0',
  `coordinateX` decimal(10,0) NOT NULL,
  `coordinateY` decimal(10,0) NOT NULL,
  `FK_Modulation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `modulation`
--
ALTER TABLE `modulation`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indizes für die Tabelle `relais`
--
ALTER TABLE `relais`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_Modulation` (`FK_Modulation`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `modulation`
--
ALTER TABLE `modulation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT für Tabelle `relais`
--
ALTER TABLE `relais`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `relais`
--
ALTER TABLE `relais`
  ADD CONSTRAINT `relais_ibfk_1` FOREIGN KEY (`FK_Modulation`) REFERENCES `modulation` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
