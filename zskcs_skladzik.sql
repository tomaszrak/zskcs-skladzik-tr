-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 18 Sty 2016, 10:39
-- Wersja serwera: 10.1.9-MariaDB
-- Wersja PHP: 7.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `zskcs_skladzik`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `skladzik`
--

CREATE TABLE `skladzik` (
  `id_przedmiotu` int(3) NOT NULL,
  `nazwa` varchar(255) COLLATE utf8_bin NOT NULL,
  `stan` varchar(255) COLLATE utf8_bin NOT NULL,
  `typ` varchar(255) COLLATE utf8_bin NOT NULL,
  `autor` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `kod` varchar(255) COLLATE utf8_bin NOT NULL,
  `uwagi` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `skladzik`
--

INSERT INTO `skladzik` (`id_przedmiotu`, `nazwa`, `stan`, `typ`, `autor`, `kod`, `uwagi`) VALUES
(1, 'Abalone', 'Jest', 'Gra', '', 'BG001', 'Brak czarnej kulki, zastąpiona innym elementem'),
(2, 'Actvity', 'Jest', 'Gra', NULL, 'BG002', 'OK'),
(3, 'Anty-monopoly', 'Jest', 'Gra', NULL, 'BG003', 'Brak banknotów: 50x100, 50x10'),
(4, 'Bang', 'Jest', 'Gra', NULL, 'BG004', 'OK'),
(6, 'Battlestar Galactica', 'Jest', 'Gra', NULL, 'BG005', 'Brak Vipera'),
(7, 'Battlestar Galactica:Pegasus', 'Jest', 'Gra', NULL, 'BG005A', 'OK'),
(8, 'Boomerang', 'Jest', 'Gra', NULL, 'BG006', 'OK'),
(9, 'Boomerang', 'Jest', 'Gra', NULL, 'BG007', 'OK'),
(10, 'Callisto', 'Jest', 'Gra', NULL, 'BG008', 'OK'),
(11, 'Carcassonne\r\n', 'Jest', 'Gra', NULL, 'BG009\r\n', 'brak czerwonego pionka\r\n'),
(12, 'Carcassonne: Ksiezniczka i Smok', 'Jest', 'Gra', NULL, 'BG009A\r\n', 'OK'),
(13, 'Cluedo\r\n', 'Jest', 'Gra', NULL, 'BG010\r\n', 'brak instrukcji i innych elementow\r\n'),
(14, 'Corsari\r\n', 'Jest', 'Gra', NULL, 'BG011\r\n', 'OK'),
(15, 'Cytadela', 'Jest', 'Gra', '', 'BG012', 'OK'),
(16, 'Dixit', 'Jest', 'Gra', '', 'BG013', 'OK'),
(17, 'Dobble\r\n', 'Jest', 'Gra', NULL, 'BG014\r\n', 'ok\r\n'),
(18, 'Dread Pirate: Buccaneer''s Revenge', 'Jest', 'Gra', NULL, 'BG015\r\n', 'ok\r\n'),
(19, 'Dziedzictwo: Testament Diuka de Crecy\r\n', 'Jest', 'Gra', NULL, 'BG016\r\n', 'ok\r\n'),
(20, 'Fasolki: Bohnanza\r\n', 'Jest', 'Gra', NULL, 'BG017\r\n', 'ok\r\n'),
(21, 'Formula 1\r\n', 'Jest', 'Gra', NULL, 'BG018\r\n', 'ok\r\n'),
(22, 'Formula 1\r\n', 'Jest', 'Gra', NULL, 'BG019\r\n', 'ok\r\n'),
(23, 'Gringo\r\n', 'Jest', 'Gra', NULL, 'BG020\r\n', 'ok\r\n'),
(24, 'Hobbit\r\n', 'Jest', 'Gra', NULL, 'BG021\r\n', 'ok\r\n'),
(25, 'Hoop!\r\n', 'Jest', 'Gra', NULL, 'BG022\r\n', 'ok\r\n'),
(26, 'Wieza (Jenga)\r\n', 'Jest', 'Gra', NULL, 'BG023\r\n', 'ok\r\n'),
(27, 'Kamien Gromu (Thunderstone)\r\n', 'Jest', 'Gra', NULL, 'BG024\r\n', 'ok\r\n'),
(28, 'Kocham Cie, Polsko!\r\n', 'Jest', 'Gra', NULL, 'BG025\r\n', 'ok\r\n'),
(29, 'Kraby\r\n', 'Jest', 'Gra', NULL, 'BG026\r\n', 'ok\r\n'),
(30, 'Kraghmorta\r\n', 'Jest', 'Gra', NULL, 'BG027\r\n', 'ok\r\n'),
(31, 'Labirynth: The Path of Destiny\r\n', 'Jest', 'Gra', NULL, 'BG028\r\n', 'brak karty postaci: Pani Golemow\r\n'),
(32, 'Loch Ness\r\n', 'Jest', 'Gra', NULL, 'BG029\r\n', 'ok\r\n'),
(33, 'Mafia\r\n', 'Jest', 'Gra', NULL, 'BG030\r\n', 'ok\r\n'),
(34, 'Magnum Sal\r\n', 'Jest', 'Gra', NULL, 'BG031\r\n', 'ok\r\n'),
(35, 'Mare Balticum\r\n', 'Jest', 'Gra', NULL, 'BG032\r\n', 'ok\r\n'),
(36, 'Melanzeria\r\n', 'Jest', 'Gra', NULL, 'BG033\r\n', 'ok\r\n'),
(37, 'Mozaika\r\n', 'Jest', 'Gra', NULL, 'BG034\r\n', 'zetony zastapione groszowkami\r\n'),
(38, 'Munchkin\r\n', 'Jest', 'Gra', NULL, 'BG035\r\n', 'zetony zastapione groszowkami\r\n'),
(39, 'Super Muchkin 2: The Narrow S-cape\r\n', 'Jest', 'Gra', NULL, 'BG035A\r\n', 'ok\r\n'),
(40, 'Neuroshima Hex!\r\n', 'Jest', 'Gra', NULL, 'BG036\r\n', 'brak zetonu Hegemonii\r\n'),
(41, 'Orzel i Gwiazda\r\n', 'Jest', 'Gra', NULL, 'BG037\r\n', '???\r\n'),
(42, 'Osadnicy z Catanu\r\n', 'Jest', 'Gra', NULL, 'BG038\r\n', 'ok\r\n'),
(43, 'Palce w pralce\r\n', 'Jest', 'Gra', NULL, 'BG039\r\n', 'ok\r\n'),
(44, 'Karty\r\n', 'Jest', 'Gra', NULL, 'BG040\r\n', 'ok\r\n'),
(45, 'Pioniersi: Gra Obywatelska\r\n', 'Jest', 'Gra', NULL, 'BG041\r\n', 'ok\r\n'),
(46, 'Pioniersi: Gra Obywatelska\r\n', 'Jest', 'Gra', NULL, 'BG042\r\n', 'ok\r\n'),
(47, 'Rice Wars: Wojny Ryzowe\r\n', 'Jest', 'Gra', NULL, 'BG043\r\n', 'ok\r\n'),
(48, 'Sabotazysta\r\n', 'Jest', 'Gra', NULL, 'BG044\r\n', 'brak 6 kart drogi\r\n'),
(49, 'Sabotazysta: Rozszerzenie\r\n', 'Jest', 'Gra', NULL, 'BG044A\r\n', 'brak instrukcji\r\n'),
(50, 'Scrabble: Karty\r\n', 'Jest', 'Gra', NULL, 'BG045\r\n', 'ok\r\n'),
(51, 'Slavika\r\n', 'Jest', 'Gra', NULL, 'BG046\r\n', 'ok\r\n'),
(52, 'Sudoku\r\n', 'Jest', 'Gra', NULL, 'BG047\r\n', 'ok\r\n'),
(53, 'Super Farmer\r\n', 'Jest', 'Gra', NULL, 'BG048\r\n', 'wlasnosc UetS?!\r\n'),
(54, 'Super Farmer\r\n', 'Jest', 'Gra', NULL, 'BG049\r\n', 'ok\r\n'),
(55, 'Super Farmer\r\n', 'Jest', 'Gra', NULL, 'BG050\r\n', 'ok\r\n'),
(56, 'Swing\r\n', 'Jest', 'Gra', NULL, 'BG051\r\n', 'ok\r\n'),
(57, 'Ticket to Ride: Europa (Wsiasc do pociagu: Europa)', 'Jest', 'Gra', NULL, 'BG052\r\n', 'ok\r\n'),
(58, 'Ticket to Ride: Europa 1912 (Wsiasc do pociagu: Europa 1921)', 'Jest', 'Gra', NULL, 'BG052A\r\n', 'ok\r\n'),
(59, 'Trivial Pursuit\r\n', 'Jest', 'Gra', NULL, 'BG053\r\n', 'ok\r\n'),
(60, 'Veto! Konfrontacja\r\n', 'Jest', 'Gra', NULL, 'BG054\r\n', 'ok\r\n'),
(61, 'Go\r\n', 'Jest', 'Gra', NULL, 'BG055\r\n', 'ok\r\n'),
(62, 'Wiedzmin: Przygodowa Gra Karciana\r\n', 'Jest', 'Gra', NULL, 'BG056\r\n', 'ok\r\n'),
(63, 'Wikingowie: Wojownicy Polnocy\r\n', 'Jest', 'Gra', NULL, 'BG057\r\n', 'ok\r\n'),
(64, 'Wilki i owce\r\n', 'Jest', 'Gra', NULL, 'BG058\r\n', 'ok\r\n'),
(65, 'Wilki i owce\r\n', 'Jest', 'Gra', NULL, 'BG059\r\n', 'ok\r\n'),
(66, 'Wolsung\r\n', 'Jest', 'Gra', NULL, 'BG060\r\n', 'ok\r\n'),
(67, 'Wypas\r\n', 'Jest', 'Gra', NULL, 'BG061\r\n', 'ok\r\n'),
(68, 'Wyprawa\r\n', 'Jest', 'Gra', NULL, 'BG062\r\n', 'ok\r\n'),
(69, 'Zombiaki II\r\n', 'Jest', 'Gra', NULL, 'BG063\r\n', 'ok\r\n'),
(70, 'Zombiaki II\r\n', 'Jest', 'Gra', NULL, 'BG064\r\n', 'brak 4 kart ludzi\r\n'),
(71, '7 Smokow\r\n', 'Jest', 'Gra', NULL, 'BG065\r\n', 'ok\r\n'),
(72, '51. Stan\r\n', 'Jest', 'Gra', NULL, 'BG066\r\n', 'ok\r\n'),
(73, 'Racial Wars\r\n', 'Jest', 'Gra', NULL, 'BG067\r\n', 'ok\r\n'),
(74, 'Avalon: Rycerze Krola Artura\r\n', 'Jest', 'Gra', NULL, 'BG068\r\n', 'ok\r\n'),
(75, 'Pandemic\r\n', 'Jest', 'Gra', NULL, 'BG069\r\n', 'ok\r\n'),
(76, 'Jungle Speed\r\n', 'Jest', 'Gra', NULL, 'BG070\r\n', 'ok\r\n'),
(77, 'Dixit 2: Przygody\r\n', 'Jest', 'Gra', NULL, 'BG071\r\n', 'ok\r\n'),
(78, 'Splendor\r\n', 'Jest', 'Gra', NULL, 'BG072\r\n', 'ok\r\n'),
(79, 'Battlestar Galactica: Exodus\r\n', 'Jest', 'Gra', NULL, 'BG073\r\n', 'ok\r\n'),
(80, 'Smallworld\r\n', 'Jest', 'Gra', NULL, 'BG074\r\n', 'ok\r\n'),
(81, 'Guillotine\r\n', 'Jest', 'Gra', NULL, 'BG075\r\n', 'ok\r\n'),
(82, 'Ticket to Ride Heart of Africa\r\n', 'Jest', 'Gra', NULL, 'BG076\r\n', 'ok\r\n'),
(83, 'Potwory w Tokio\r\n', 'Jest', 'Gra', NULL, 'BG077\r\n', 'ok\r\n'),
(84, 'Betrayal at the House on Hill\r\n', 'Jest', 'Gra', NULL, 'BG078\r\n', 'ok\r\n'),
(85, 'Shadows over Camelot\r\n', 'Jest', 'Gra', NULL, 'BG079\r\n', 'ok\r\n'),
(86, 'Talizman: Miasto\r\n', 'Jest', 'Gra', NULL, 'BG080\r\n', 'ok\r\n'),
(87, 'Talizman Magia i Miecz\r\n', 'Jest', 'Gra', NULL, 'BG081\r\n', 'ok\r\n'),
(88, 'Spadamy\r\n', 'Jest', 'Gra', NULL, 'BG082\r\n', 'ok\r\n'),
(89, 'Qubix\r\n', 'Jest', 'Gra', NULL, 'BG083\r\n', 'ok\r\n'),
(91, '47 na odlew', 'Jest', 'Książka', 'Natasza Goerke', 'B01', 'brak pieczštki'),
(92, 'Ale kosmos! Jak jeć, kochać i korzystać z WC w stanie nieważkoci?\r\n', 'Jest', 'Książka', 'Mary Roach\r\n', 'B02\r\n', 'pieczštka\r\n'),
(93, 'Amerykańska gejsza\r\n', 'Jest', 'Książka', 'Lea Jacobson\r\n', 'B03\r\n', 'pieczštka\r\n'),
(94, 'Artemis Fowl: Arktyczna przygoda\r\n', 'Jest', 'Książka', 'Eoin Colfer\r\n', 'B04\r\n', 'pieczštka\r\n'),
(95, 'Assassin''s Creed: Renesans\r\n', 'Jest', 'Książka', 'Oliver Bowden\r\n', 'B05\r\n', 'pieczštka\r\n'),
(96, 'Atlas ródziemia\r\n', 'Jest', 'Książka', 'Karen Wynn\r\n', 'B06\r\n', 'brak pieczštki\r\n'),
(97, 'Awatarzy: A więc tak to się kończy\r\n', 'Jest', 'Książka', 'Tui T. Sutherland\r\n', 'B07\r\n', 'brak pieczštki\r\n'),
(98, 'Banie polskie\r\n', 'Jest', 'Książka', '-\r\n', 'B08\r\n', 'pieczštka\r\n'),
(99, 'Batalista\r\n', 'Jest', 'Książka', 'Arturo Perez-Reverte\r\n', 'B09\r\n', 'pieczštka\r\n'),
(100, 'Bazyliszek\r\n', 'Jest', 'Książka', 'Graham Masterton\r\n', 'B010\r\n', 'jeszcze ofoliowana (stan na 18.11.2015)\r\n'),
(101, 'Beksińscy - Potret podwójny\r\n', 'Jest', 'Książka', 'Magdalena Grzebałkowska\r\n', 'B011\r\n', 'brak pieczštki\r\n'),
(102, 'Bracia Kramer\r\n', 'Jest', 'Książka', 'Bartek widerski\r\n', 'B012\r\n', 'brak pieczštki\r\n'),
(103, 'Century: Ognisty Piercień\r\n', 'Jest', 'Książka', 'P. D. Baccalario\r\n', 'B013\r\n', 'pieczštka\r\n'),
(104, 'Ceo Slayer\r\n', 'Jest', 'Książka', 'Marcin Przybyłek\r\n', 'B014\r\n', 'pieczštka\r\n'),
(105, 'Chłopcy\r\n', 'Jest', 'Książka', 'Jakub Ćwiek\r\n', 'B015\r\n', 'pieczštka\r\n'),
(106, 'Chłopcy: Bangarang\r\n', 'Jest', 'Książka', 'Jakub Ćwiek\r\n', 'B016\r\n', 'pieczštka\r\n'),
(107, 'Czerwień na czerwieni\r\n', 'Jest', 'Książka', 'Wiera Kamsza\r\n', 'B017\r\n', 'pieczštka\r\n'),
(108, 'Dar Wilka\r\n', 'Jest', 'Książka', 'Anne Rice\r\n', 'B018\r\n', 'brak pieczštki\r\n'),
(109, 'Dzika energia\r\n', 'Jest', 'Książka', 'Marina i Siergiej Diaczenko\r\n', 'B019\r\n', 'brak pieczštki\r\n'),
(110, 'Głupcy\r\n', 'Jest', 'Książka', 'Pat Cadigan\r\n', 'B020\r\n', 'brak pieczštki\r\n'),
(111, 'Godot i jego cień\r\n', 'Jest', 'Książka', 'Antoni Libera\r\n', 'B021\r\n', 'pieczštka\r\n'),
(112, 'Grim Tuesday\r\n', 'Jest', 'Książka', 'Garth Nix\r\n', 'B022\r\n', 'pieczštka\r\n'),
(113, 'Harry Potter i Zakon Feniksa\r\n', 'Jest', 'Książka', 'Joanne K. Rowling\r\n', 'B023\r\n', 'brak pieczštki\r\n'),
(114, 'Homo divisus\r\n', 'Jest', 'Książka', 'Konrad Fiałkowski\r\n', 'B024\r\n', 'brak pieczštki\r\n'),
(115, 'Japonia - cudo wiata\r\n', 'Jest', 'Książka', '-\r\n', 'B025\r\n', 'pieczštka\r\n'),
(116, 'Joga dla każdego\r\n', 'Jest', 'Książka', 'Kareen Zebroff\r\n', 'B026\r\n', 'brak pieczštki\r\n'),
(117, 'Katalog stworzeń fantastycznych \r\n', 'Jest', 'Książka', 'A. Ramirez, A. Celis, A. Barra', 'B027\r\n', 'brak pieczštki\r\n'),
(118, 'Klštwa Edgara\r\n', 'Jest', 'Książka', 'Marc Dugain\r\n', 'B028\r\n', 'pieczštka\r\n'),
(119, 'Krawęd żelaza (Tom 1)\r\n', 'Jest', 'Książka', 'Miroslav Zamboch\r\n', 'B029\r\n', 'brak pieczštki\r\n'),
(120, 'Księga Tysišca i Jednej Nocy\r\n', 'Jest', 'Książka', '-\r\n', 'B030\r\n', 'pieczštka\r\n'),
(121, 'Limes Inferior\r\n', 'Jest', 'Książka', 'Janusz Zajdel\r\n', 'B031\r\n', 'pieczštka\r\n'),
(122, 'Lot nocnycn jastrzębi\r\n', 'Jest', 'Książka', 'Raymond E. Feist\r\n', 'B032\r\n', 'jeszcze ofoliowana (stan na 18.11.2015)\r\n'),
(123, 'Lot nocnycn jastrzębi\r\n', 'Jest', 'Książka', 'Raymond E. Feist\r\n', 'B033\r\n', 'jeszcze ofoliowana (stan na 18.11.2015)\r\n'),
(124, 'Metro 2033\r\n', 'Jest', 'Książka', 'Dmitry Glukhovsky\r\n', 'B034\r\n', 'pieczštka\r\n'),
(125, 'Metro 2033\r\n', 'Jest', 'Książka', 'Dmitry Glukhovsky\r\n', 'B035\r\n', 'pieczštka\r\n'),
(126, 'Miasto Złudzeń\r\n', 'Jest', 'Książka', 'Ursula K. Le Guin\r\n', 'B036\r\n', 'brak pieczštki\r\n'),
(127, 'Mister Monday\r\n', 'Jest', 'Książka', 'Garth Nix\r\n', 'B037\r\n', 'pieczštka\r\n'),
(128, 'Mitologia indyjska\r\n', 'Jest', 'Książka', 'Marta Jakimowicz-Shah,Andrzej ', 'B038\r\n', 'pieczštka\r\n'),
(129, 'Mitologia starożytnej Grecji\r\n', 'Jest', 'Książka', 'Michał Pietrzykowski\r\n', 'B039\r\n', 'pieczštka\r\n'),
(130, 'Mitologie wiata: Ludy starożytnej Japonii\r\n', 'Jest', 'Książka', '-\r\n', 'B040\r\n', 'brak pieczštki\r\n'),
(131, 'Mitologie wiata: Ludy starożytnej Korei\r\n', 'Jest', 'Książka', '-\r\n', 'B041\r\n', 'brak pieczštki\r\n'),
(132, 'Mitologie wiata: Ludy starożytnych Chin\r\n', 'Jest', 'Książka', '-\r\n', 'B042\r\n', 'brak pieczštki\r\n'),
(133, 'Moralitety\r\n', 'Jest', 'Książka', 'Andrzej Grzegorczyk\r\n', 'B043\r\n', 'brak pieczštki\r\n'),
(134, 'Morderstwo Wron\r\n', 'Jest', 'Książka', 'Anne Bishop\r\n', 'B044\r\n', 'pieczštka\r\n'),
(135, 'Na ostrzu noża\r\n', 'Jest', 'Książka', 'Miroslav Zamboch\r\n', 'B045\r\n', 'brak pieczštki\r\n'),
(136, 'Ofiara\r\n', 'Jest', 'Książka', 'John Everson\r\n', 'B046\r\n', 'pieczštka\r\n'),
(137, 'Ofiara\r\n', 'Jest', 'Książka', 'John Everson\r\n', 'B047\r\n', 'pieczštka\r\n'),
(138, 'Oko Jelenia: Sfera armiralna\r\n', 'Jest', 'Książka', 'Andrzej Pilipiuk\r\n', 'B048\r\n', 'pieczštka\r\n'),
(139, 'Oko Jelenia: Triumf lisa Reinicke\r\n', 'Jest', 'Książka', 'Andrzej Pilipiuk\r\n', 'B049\r\n', 'pieczštka\r\n'),
(140, 'Ostatni dokument Hessa\r\n', 'Jest', 'Książka', '-\r\n', 'B050\r\n', 'brak pieczštki\r\n'),
(141, 'Ostatnie dni dyktatorów\r\n', 'Jest', 'Książka', 'Diane Ducret, Emmanuel Hecht\r\n', 'B051\r\n', 'pieczštka\r\n'),
(142, 'Powrót Wolanda\r\n', 'Jest', 'Książka', 'Witalij Ruczinski\r\n', 'B052\r\n', 'pieczštka\r\n'),
(143, 'Przewietny raport kapitana Dosa\r\n', 'Jest', 'Książka', 'Eduardo Mendoza\r\n', 'B053\r\n', 'pieczštka\r\n'),
(144, 'Przygody Don Kichota\r\n', 'Jest', 'Książka', 'Miguel de Cervantes\r\n', 'B054\r\n', 'pieczštka\r\n'),
(145, 'Przylšdek pozerów\r\n', 'Jest', 'Książka', 'Jarosław Klejnocki\r\n', 'B055\r\n', 'pieczštka\r\n'),
(146, 'Punkt Einsteina\r\n', 'Jest', 'Książka', 'Samuel R. Delany\r\n', 'B056\r\n', 'pieczštka\r\n'),
(147, 'Rytuał intuitywny\r\n', 'Jest', 'Książka', 'Paweł Dudziński\r\n', 'B057\r\n', 'brak pieczštki\r\n'),
(148, 'Srebrzyste Wizje\r\n', 'Jest', 'Książka', 'Anne Bishop\r\n', 'B058\r\n', 'pieczštka\r\n'),
(149, 'Srebrzyste Wizje\r\n', 'Jest', 'Książka', 'Anne Bishop\r\n', 'B059\r\n', 'pieczštka\r\n'),
(150, 'Star Carrier: Pierwsze uderzenie\r\n', 'Jest', 'Książka', 'Ian Douglas\r\n', 'B060\r\n', 'pieczštka\r\n'),
(151, 'Star Risk\r\n', 'Jest', 'Książka', 'Chris Bunch\r\n', 'B061\r\n', 'pieczštka\r\n'),
(152, 'Szklane księgi porywaczy snów\r\n', 'Jest', 'Książka', 'Gordon Dahlguist\r\n', 'B062\r\n', 'pieczštka\r\n'),
(153, 'Szpiedzy i komisarze\r\n', 'Jest', 'Książka', 'Robert Service\r\n', 'B063\r\n', 'brak pieczštki\r\n'),
(154, 'wiat Czarownic\r\n', 'Jest', 'Książka', 'Andre Norton\r\n', 'B064\r\n', 'brak pieczštki\r\n'),
(155, 'wiat Czarownic w pułapce\r\n', 'Jest', 'Książka', 'Andre Norton\r\n', 'B065\r\n', 'brak pieczštki\r\n'),
(156, 'więtoszek\r\n', 'Jest', 'Książka', 'Molier\r\n', 'B066\r\n', 'brak pieczštki\r\n'),
(157, 'Talon of the Silver Hawk\r\n', 'Jest', 'Książka', 'Raymond E. Feist\r\n', 'B067\r\n', 'pieczštka\r\n'),
(158, 'Taltos (IV częć Vlad Taltos)\r\n', 'Jest', 'Książka', 'Steven Brust\r\n', 'B068\r\n', 'brak pieczštki\r\n'),
(159, 'The Rising Shadow\r\n', 'Jest', 'Książka', 'Robert Jordan\r\n', 'B069\r\n', 'pieczštka\r\n'),
(160, 'Transsyberyjska: Drogš żelaznš przez Rosję i dalej\r\n', 'Jest', 'Książka', 'Piotr Milewski\r\n', 'B070\r\n', 'pieczštka\r\n'),
(161, 'Troje przeciw wiatu Czarownic\r\n', 'Jest', 'Książka', 'Andre Norton\r\n', 'B071\r\n', 'brak pieczštki\r\n'),
(162, 'Trzecia wojna wiatowa\r\n', 'Jest', 'Książka', 'Jonathan Walker\r\n', 'B072\r\n', 'pieczštka\r\n'),
(163, 'U progu zagłady\r\n', 'Jest', 'Książka', 'Martin ZeLenay\r\n', 'B073\r\n', 'brak pieczštki\r\n'),
(164, 'Wpadka\r\n', 'Jest', 'Książka', 'Nick Hornby\r\n', 'B074\r\n', 'brak pieczštki\r\n'),
(165, 'Wrzosowiska\r\n', 'Jest', 'Książka', 'Monika Rebizant-Siwiło\r\n', 'B075\r\n', 'pieczštka\r\n'),
(166, 'Wskrzeszenie magii: Głód dotyku\r\n', 'Jest', 'Książka', 'Kathleen Duey\r\n', 'B076\r\n', 'pieczštka\r\n'),
(167, 'Wskrzeszenie magii: więte blizny\r\n', 'Jest', 'Książka', 'Kathleen Duey\r\n', 'B077\r\n', 'brak pieczštki\r\n'),
(168, 'Wyspa na Prerii\r\n', 'Jest', 'Książka', 'Wojciech Cejrowski\r\n', 'B078\r\n', 'pieczštka\r\n'),
(169, 'Zaginione Wrosta\r\n', 'Jest', 'Książka', 'Orson Scott Card\r\n', 'B079\r\n', 'pieczštka\r\n'),
(170, 'Zemsta Khai\r\n', 'Jest', 'Książka', 'Brian Lumley\r\n', 'B080\r\n', 'brak pieczštki\r\n'),
(171, 'Zmrok\r\n', 'Jest', 'Książka', 'Harvard Lampoon\r\n', 'B081\r\n', 'pieczštka\r\n'),
(172, 'Żałując za jutro', 'Jest', 'Książka', 'Sebastian Uznański\r\n', 'B082\r\n', 'brak pieczštki\r\n'),
(173, 'Żelazne wojny', 'Jest', 'Książka', 'Paul Kearney', 'B083', 'pieczątka'),
(174, 'aaA', 'AAA', 'Gra', 'AAA', 'BG100', 'aaA');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user_role_linker`
--

CREATE TABLE `user_role_linker` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownik`
--

CREATE TABLE `uzytkownik` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_bin NOT NULL,
  `display_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `state` varchar(255) COLLATE utf8_bin NOT NULL,
  `role_id` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `uzytkownik`
--

INSERT INTO `uzytkownik` (`user_id`, `username`, `display_name`, `password`, `email`, `state`, `role_id`) VALUES
(3, 'OS_Cypek', NULL, '$2y$14$3YTMujOMRBop5hGyFvUVJ.pCjLd3H6pk.akJfWh7aWyg4QAQ4UDF.', 'oscypek.za008@gmail.com', 'Tak', 'admin'),
(4, 'DDD', NULL, '$2y$14$MVDbBOw7MXK5W75qnOXSQeew8lnXPvQY9GERj8oSFUij7vq6Z8MK6', 'DDD@DDD.pl', 'Nie', 'user'),
(8, 'ALFA', NULL, '$2y$14$psgW6JwdgQIfXOXUIBby2O9DcbDmmG9VJgDQ2uaVaIN2oPyyXWB9m', 'ALFA@ALFA.pl', 'Tak', 'user');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id_zamowienia` int(5) NOT NULL,
  `id_uzytkownika` varchar(255) COLLATE utf8_bin NOT NULL,
  `id_przedmiotu` varchar(255) COLLATE utf8_bin NOT NULL,
  `data` date DEFAULT NULL,
  `informacje` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`id_zamowienia`, `id_uzytkownika`, `id_przedmiotu`, `data`, `informacje`, `status`) VALUES
(6, 'DDD', 'BG002', '2016-01-07', NULL, 'Oczekujące'),
(7, 'DDD', 'BG002', '2016-01-07', NULL, 'Zaakceptowane'),
(9, 'OS_Cypek', 'BG005', '2016-01-07', NULL, 'Zaakceptowane');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `skladzik`
--
ALTER TABLE `skladzik`
  ADD PRIMARY KEY (`id_przedmiotu`),
  ADD UNIQUE KEY `kod` (`kod`),
  ADD UNIQUE KEY `kod_2` (`kod`),
  ADD KEY `typ` (`typ`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_role` (`role_id`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `user_role_linker`
--
ALTER TABLE `user_role_linker`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `idx_role_id` (`role_id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Indexes for table `uzytkownik`
--
ALTER TABLE `uzytkownik`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `uzytkowik` (`username`);

--
-- Indexes for table `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id_zamowienia`),
  ADD KEY `id_uzytkownika` (`id_uzytkownika`),
  ADD KEY `id_przedmiotu` (`id_przedmiotu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `skladzik`
--
ALTER TABLE `skladzik`
  MODIFY `id_przedmiotu` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;
--
-- AUTO_INCREMENT dla tabeli `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `uzytkownik`
--
ALTER TABLE `uzytkownik`
  MODIFY `user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id_zamowienia` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `fk_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `user_role` (`id`) ON DELETE SET NULL;

--
-- Ograniczenia dla tabeli `user_role_linker`
--
ALTER TABLE `user_role_linker`
  ADD CONSTRAINT `fk_role_id` FOREIGN KEY (`role_id`) REFERENCES `user_role` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD CONSTRAINT `zamowienia_ibfk_1` FOREIGN KEY (`id_uzytkownika`) REFERENCES `uzytkownik` (`username`),
  ADD CONSTRAINT `zamowienia_ibfk_2` FOREIGN KEY (`id_przedmiotu`) REFERENCES `skladzik` (`kod`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
