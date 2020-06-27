-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 27 Cze 2020, 19:54
-- Wersja serwera: 10.4.8-MariaDB
-- Wersja PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `badania_kliniczne`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pacjenci_programu`
--

CREATE TABLE `pacjenci_programu` (
  `PROG_ID` int(11) NOT NULL,
  `PAC_NR` int(11) NOT NULL,
  `PAC_ID` int(11) NOT NULL,
  `PLACEBO` varchar(3) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `pacjenci_programu`
--

INSERT INTO `pacjenci_programu` (`PROG_ID`, `PAC_NR`, `PAC_ID`, `PLACEBO`) VALUES
(2, 1, 1, 'TAK'),
(3, 1, 2, 'NIE'),
(3, 2, 3, 'NIE'),
(3, 3, 4, 'TAK'),
(2, 2, 2, 'NIE'),
(4, 1, 4, 'NIE'),
(4, 2, 1, 'NIE'),
(4, 3, 2, 'NIE'),
(4, 4, 3, 'TAK'),
(4, 5, 5, 'TAK'),
(4, 6, 6, 'NIE'),
(4, 7, 7, 'TAK'),
(4, 8, 8, 'NIE'),
(4, 9, 9, 'NIE'),
(4, 10, 10, 'NIE'),
(4, 11, 11, 'NIE'),
(4, 12, 12, 'NIE'),
(2, 3, 4, 'NIE'),
(2, 4, 13, 'TAK'),
(5, 1, 14, 'NIE'),
(5, 2, 13, 'TAK'),
(5, 3, 9, 'NIE'),
(5, 4, 7, 'TAK'),
(5, 5, 15, 'NIE');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pacjent`
--

CREATE TABLE `pacjent` (
  `PAC_ID` int(11) NOT NULL,
  `NAZWISKO` varchar(40) COLLATE utf8_polish_ci NOT NULL,
  `IMIONA` varchar(40) COLLATE utf8_polish_ci NOT NULL,
  `PESEL` varchar(11) COLLATE utf8_polish_ci NOT NULL,
  `MIASTO` varchar(40) COLLATE utf8_polish_ci NOT NULL,
  `KOD_POCZT` varchar(6) COLLATE utf8_polish_ci NOT NULL,
  `ULICA` varchar(40) COLLATE utf8_polish_ci NOT NULL,
  `NR_BUD` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `NR_LOK` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `NR_TELEFONU` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `ALERGIE` text COLLATE utf8_polish_ci NOT NULL,
  `PRZEBYTE_CHOROBY` text COLLATE utf8_polish_ci NOT NULL,
  `GRUPA_KRWI` varchar(2) COLLATE utf8_polish_ci NOT NULL,
  `CZYNNIK_RH` varchar(1) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `pacjent`
--

INSERT INTO `pacjent` (`PAC_ID`, `NAZWISKO`, `IMIONA`, `PESEL`, `MIASTO`, `KOD_POCZT`, `ULICA`, `NR_BUD`, `NR_LOK`, `NR_TELEFONU`, `ALERGIE`, `PRZEBYTE_CHOROBY`, `GRUPA_KRWI`, `CZYNNIK_RH`) VALUES
(1, 'SZYMURA', 'PAWEŁ', '97011307891', 'ZABRZE', '41-800', 'WOLNOŚCI', '108', '2', '796452341', 'PYŁKI DRZEW', 'OSPA, RÓŻYCZKA, ŚWINKA', '0', '+'),
(2, 'KULIK', 'KATARZYNA', '93050696421', 'KATOWICE', '40-000', 'CHORZOWSKA', '123', '3', '796453217', 'ALERGIA NA CZEKOLADĘ I POMARAŃCZE', 'ASTMA, PADACZKA', 'B', '-'),
(3, 'MALEC', 'KAROLINA', '58030874142', 'GLIWICE', '44-100', 'ZWYCIESTWA', '45', '1', '607034765', 'ALERGIA NA PYŁKI DRZEW I CYTRUSY', 'OTYŁOŚĆ', 'A', '+'),
(4, 'KOWALSKI', 'TOMASZ', '64042861313', 'RYBNIK', '44-200', '1 MAJA', '32', '1', '786142649', 'ALERGIA NA JAJKA I RYBY', 'OSPA, ROŻYCZKA', 'AB', '+'),
(5, 'ŚLIWKA', 'MIROSŁAW', '60090866638', 'ZABRZE', '41-809', 'ROGOŹNICKA', '50', '1', '765234956', 'BRAK', 'ŻÓŁTACZKA', 'AB', '-'),
(6, 'NOWAKOWSKA', 'BARBARA', '76070338987', 'PSZCZYNA', '43-200', 'SREBRNA', '23', '3', '723451937', 'ALERGIE NA PYŁKI DRZEW, NA LAKTOZĘ', 'OSPA, RÓŻYCZKA', 'A', '+'),
(7, 'ROŻEK', 'BOŻENA', '86030999464', 'KATOWICE', '40-854', 'ZARĘBSKIEGO', '13', '4', '756981657', 'ALERGIA NA SIERŚĆ, NA POMARAŃCZE', 'BOLERIOZA', 'B', '-'),
(8, 'KULA', 'KATARZYNA', '70030637585', 'ZABRZE', '41-800', 'CHROBREGO', '21', '3', '607894126', 'ALERGIA NA ORZECHY, NA LAKTOZĘ', 'OSPA WIETRZNA, PÓŁPASIEC', '0', '+'),
(9, 'WÓLTAŃSKI', 'BARTOSZ', '51092246117', 'TYCHY', '43-100', 'NIEPODLEGŁOŚCI', '100', '4', '608123657', 'ALERGIA NA SEZAM, SOJĘ', 'TĘŻEC, WIRUS ZIKA', 'AB', '+'),
(10, 'MILER', 'MARCIN', '62011734253', 'TCHY', '43-100', 'WYSZYŃSKIEGO', '12', '1', '675398108', 'BRAK', 'ODRA, RÓŻYCZKA', 'A', '-'),
(11, 'ZIĘTEK', 'GRZEGORZ', '46102164114', 'KATOWICE', '40-000', 'BIELSKA', '78', '6', '675930261', 'BRAK', 'WŚCIEKLIZNA', 'AB', '-'),
(12, 'DANIEL', 'POLA', '54112943522', 'ZABRZE', '41-803', 'SUDECKA', '10', '2', '756324914', 'ALERGIA NA ORZECHY', 'KRZTUSIEC', 'A', '+'),
(13, 'WĘGLIKOWSKI', 'DAWID', '95122847745', 'TYCHY', '43-100', 'KOPERNIKA', '12', '2', '659123073', 'BRAK', 'OSPA', 'B', '-'),
(14, 'WĄSIK', 'MARCEL', '97011307701', 'ZABRZE', '41-800', 'SIENKIEWICZA', '33', '2', '796458308', 'ALERGIA NA PYŁKI DRZEW, SIERŚĆ ZWIERZĄT', 'OSPA', 'B', '-'),
(15, 'BĄK', 'DOROTA', '97011307704', 'ZABRZE', '41-809', 'SUDECKA', '3', '1', '796234761', 'ALERGIA NA ORZECHY, CZEKOLADĘ I PYŁKI DRZEW', 'OSPA, RÓŻYCZKA, ASTMA, ODRA', 'AB', '+');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `podanie_leku`
--

CREATE TABLE `podanie_leku` (
  `POD_LEK_ID` int(11) NOT NULL,
  `PROG_ID` int(11) NOT NULL,
  `PAC_ID` int(11) NOT NULL,
  `LEK_ID` int(11) NOT NULL,
  `DAWKA_LEKU` varchar(20) COLLATE utf8mb4_polish_ci NOT NULL,
  `DATA_PODANIA` datetime NOT NULL,
  `OPIS_PODANIA` varchar(100) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `podanie_leku`
--

INSERT INTO `podanie_leku` (`POD_LEK_ID`, `PROG_ID`, `PAC_ID`, `LEK_ID`, `DAWKA_LEKU`, `DATA_PODANIA`, `OPIS_PODANIA`) VALUES
(1, 2, 1, 3, '1 TABLETKA', '2020-05-16 17:50:51', 'TABLETKA PRZYJĘTA BEZ PROBLEMU'),
(2, 2, 1, 4, '2 TABLETKI', '2020-05-16 17:51:01', 'PACJENT ŹLE SIĘ CZUŁ'),
(3, 4, 4, 6, '1 TABLETKA', '2020-05-08 19:04:35', ''),
(4, 2, 1, 3, '2 TABLETKI', '2020-05-21 09:25:16', 'tABLETKA ZOSTAŁA PRZYJETA PRAWIDŁOWO'),
(5, 2, 2, 3, '1 tabletka', '2020-05-04 08:42:41', 'Pacjent sprawnie przyjął tablekę'),
(6, 2, 2, 4, '2 tabletki', '2020-04-13 08:42:44', 'Pacjent źle się czuł'),
(7, 5, 14, 7, '1 TABLETKA', '2020-05-17 14:41:47', 'PACJENT PRZYJĄŁ TABLETKĘ BEZ PROBLEMU');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `program`
--

CREATE TABLE `program` (
  `PROG_ID` int(10) NOT NULL,
  `NAZWA_PROG` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL,
  `OPIS_PROGRAMU` text COLLATE utf8mb4_polish_ci NOT NULL,
  `DATA_ROZP` date NOT NULL,
  `DATA_ZAK` date NOT NULL,
  `IL_OSOB` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `program`
--

INSERT INTO `program` (`PROG_ID`, `NAZWA_PROG`, `OPIS_PROGRAMU`, `DATA_ROZP`, `DATA_ZAK`, `IL_OSOB`) VALUES
(1, 'PROGRAM DO WALKI Z ENDOMETRIOZĄ', 'BADANI KLINICZNE LEKU NA ENDOMETRIOZĘ', '2020-05-20', '2020-06-20', 8),
(2, 'PROGRAM DO BADAŃ TRAWIENIA', 'bADANIA KLINICZNE LEKU, KTÓRY WPŁYWA NA TRAWIENIE', '2020-07-14', '2020-10-22', 10),
(3, 'PROGRAM DO BADAŃ LEKU PRZECIWZAPALNEGO', 'PROGRAM DO BADAŃ LEKU NA STANY ZAPALNE, BÓL GŁOWY, BÓL BRZUCHA.', '2020-09-01', '2020-12-31', 3),
(4, 'PROGRAM DO BADAŃ LEKU NA INFEKCJE PĘCHER', 'PROGRAM DO BADAŃ LEKU NA INFEKCJE PĘCHERZA I DRÓG MOCZOWYCH. HAMUJE ROZWÓJ BAKTERII WYWOŁUJĄCYCH ZAKAŻENIA DRÓG MOCZOWYCH. ', '2021-01-01', '2021-06-30', 12),
(5, 'PROGRAM DO ZWALCZANIA FLEGMY', 'Program do zmniejszania wydzielania się flegmy', '2020-08-01', '2020-12-31', 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `program_leki`
--

CREATE TABLE `program_leki` (
  `PROG_ID` int(11) NOT NULL,
  `LEK_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `program_leki`
--

INSERT INTO `program_leki` (`PROG_ID`, `LEK_ID`) VALUES
(1, 1),
(2, 4),
(2, 3),
(3, 5),
(4, 6),
(5, 7),
(5, 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `program_pomiary`
--

CREATE TABLE `program_pomiary` (
  `PROG_ID` int(11) NOT NULL,
  `POM_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `program_pomiary`
--

INSERT INTO `program_pomiary` (`PROG_ID`, `POM_ID`) VALUES
(2, 1),
(2, 2),
(2, 3),
(1, 1),
(3, 4),
(3, 1),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(5, 1),
(5, 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sl_leki`
--

CREATE TABLE `sl_leki` (
  `LEK_ID` int(10) NOT NULL,
  `LEK_KOD` varchar(10) COLLATE utf8mb4_polish_ci NOT NULL,
  `NAZWA_LEK` varchar(40) COLLATE utf8mb4_polish_ci NOT NULL,
  `OPIS_LEK` text COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `sl_leki`
--

INSERT INTO `sl_leki` (`LEK_ID`, `LEK_KOD`, `NAZWA_LEK`, `OPIS_LEK`) VALUES
(1, 'ENDOM', 'ENDOMETRIUM', 'LEK NA ENDOMETRIOZE'),
(2, 'NOS', 'NOSPA', 'LEK NA BÓLE MENSTRUACYJNE'),
(3, 'IBUM', 'IBUMGAZ', 'LEK NA DOLEGLIWOŚCI TRAWIENNE'),
(4, 'TRAW', 'TRAWISTO', 'LEK NA WSPOMAGANIE TRAWIENIA'),
(5, 'APAPM', 'APAPMOC', 'LEK NA BÓLE GŁOWY, BRZUCHA'),
(6, 'URAL', 'URALINE', 'LEK NA ZAPALENIE PĘCHERZA'),
(7, 'FLEG', 'FLEGAMAX', 'LEK NA WYKRZTUSZANIE FLEGMY');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sl_pomiary`
--

CREATE TABLE `sl_pomiary` (
  `POM_ID` int(11) NOT NULL,
  `POM_KOD` varchar(10) COLLATE utf8mb4_polish_ci NOT NULL,
  `NAZWA_POM` varchar(40) COLLATE utf8mb4_polish_ci NOT NULL,
  `JEDNOSTKA_POM` varchar(10) COLLATE utf8mb4_polish_ci NOT NULL,
  `OPIS_POM` text COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `sl_pomiary`
--

INSERT INTO `sl_pomiary` (`POM_ID`, `POM_KOD`, `NAZWA_POM`, `JEDNOSTKA_POM`, `OPIS_POM`) VALUES
(1, 'TEMP', 'TEMPERATURA', 'C', 'BADANIE TEMPERATURY CIAŁA'),
(2, 'CIS_S', 'CISNIENIE SKURCZOWE', 'mmHg', 'POMIAR CIŚNIENIA SKURCZOWEGO'),
(3, 'CIS_R', 'CIŚNIENIE ROZKURCZOWE', 'mmHg', 'POMIAR CIŚNIENIA ROZKURCZOWEGO'),
(4, 'MASA', 'MASA CIAŁA', 'kg', 'MASA CIAŁA OSOBY BADANEJ');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zmierzone_pomiary`
--

CREATE TABLE `zmierzone_pomiary` (
  `ZM_POM_ID` int(11) NOT NULL,
  `PROG_ID` int(11) NOT NULL,
  `PAC_ID` int(11) NOT NULL,
  `POM_ID` int(11) NOT NULL,
  `WART_POMIARU` varchar(20) COLLATE utf8mb4_polish_ci NOT NULL,
  `DATA_POMIARU` datetime NOT NULL,
  `OPIS_POMIARU` varchar(100) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `zmierzone_pomiary`
--

INSERT INTO `zmierzone_pomiary` (`ZM_POM_ID`, `PROG_ID`, `PAC_ID`, `POM_ID`, `WART_POMIARU`, `DATA_POMIARU`, `OPIS_POMIARU`) VALUES
(1, 2, 1, 1, '36.6', '2020-05-17 17:47:48', ''),
(2, 2, 1, 1, '36.8', '2020-05-16 13:43:39', 'TEMPERATURA W NORMIE'),
(3, 2, 1, 2, '120', '2020-05-16 17:50:05', 'CISNIENIE W NORMIE'),
(4, 2, 1, 3, '80', '2020-05-16 17:50:10', 'CISNIENIE W NORMIE'),
(5, 4, 4, 1, '37', '2020-05-08 19:04:02', 'STAN PODGORĄCZKOWY'),
(6, 4, 1, 1, '36.5', '2020-05-07 19:34:53', ''),
(7, 2, 1, 2, '130', '2020-05-15 00:29:33', ''),
(8, 2, 1, 1, '36.6', '2020-05-13 09:17:03', ''),
(9, 2, 1, 1, '37', '2020-05-19 09:25:44', ''),
(10, 2, 1, 2, '135', '2020-05-11 09:25:52', ''),
(11, 2, 1, 1, '37,6', '2020-05-06 00:20:37', ''),
(12, 2, 1, 2, '100', '2020-06-03 00:20:41', ''),
(13, 2, 1, 3, '50', '2020-05-04 00:20:43', ''),
(14, 2, 2, 1, '37', '2020-05-04 08:42:10', ''),
(15, 2, 2, 2, '130', '2020-04-13 08:42:14', ''),
(16, 2, 2, 3, '80', '2020-06-01 08:42:18', ''),
(17, 2, 2, 1, '36,6', '2020-06-04 08:43:30', ''),
(18, 5, 14, 1, '36.6', '2020-05-17 14:40:31', 'TEMPERATURA W NORMIE'),
(19, 5, 14, 4, '60', '2020-05-17 14:40:47', 'WAGA W NORMIE'),
(20, 5, 13, 1, '36', '2020-06-18 21:18:17', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
