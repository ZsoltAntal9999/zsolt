-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2021. Már 05. 20:29
-- Kiszolgáló verziója: 10.4.11-MariaDB
-- PHP verzió: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `quiz`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kontinensek`
--

CREATE TABLE `kontinensek` (
  `id` int(11) NOT NULL,
  `nev` varchar(60) COLLATE utf8_hungarian_ci NOT NULL,
  `foto` varchar(30) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `kontinensek`
--

INSERT INTO `kontinensek` (`id`, `nev`, `foto`) VALUES
(1, 'Europe', 'img/europe.jpg'),
(2, 'North America', 'img/namerica.jpg'),
(3, 'South America', 'img/samerica.jpg'),
(4, 'Africa', 'img/africa.jpg'),
(5, 'Asia', 'img/asia.jpg'),
(6, 'Oceania', 'img/oceania.jpg');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `orszagok`
--

CREATE TABLE `orszagok` (
  `id` int(11) NOT NULL,
  `nev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `kontinens_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `orszagok`
--

INSERT INTO `orszagok` (`id`, `nev`, `kontinens_id`) VALUES
(1, 'Albania', 1),
(3, 'Hungary', 1),
(4, 'Turkey', 1),
(5, 'Mexico', 2),
(6, 'Panama', 2),
(7, 'Austria', 1),
(8, 'Belarus', 1),
(9, 'Belgium', 1),
(10, 'Bosnia and Herzegovina', 1),
(11, 'Bulgaria', 1),
(12, 'Croatia', 1),
(13, 'Czech Republic', 1),
(14, 'Denmark', 1),
(15, 'Finland', 1),
(16, 'France', 1),
(17, 'Great Britain', 1),
(18, 'Germany', 1),
(19, 'Greece', 1),
(20, 'Iceland', 1),
(21, 'Italy', 1),
(22, 'Lithuania', 1),
(23, 'Malta', 1),
(24, 'Poland', 1),
(25, 'Portugal', 1),
(26, 'Serbia', 1),
(27, 'Spain', 1),
(28, 'Sweden', 1),
(29, 'Bahamas', 2),
(30, 'Barbados', 2),
(31, 'Belize', 2),
(32, 'Canada', 2),
(33, 'Cuba', 2),
(34, 'Dominican Republic', 2),
(35, 'Haiti', 2),
(36, 'Honduras', 2),
(37, 'Jamaica', 2),
(38, 'El Salvador', 2),
(39, 'USA', 2),
(40, 'Costa Rica', 2),
(41, 'Guatemala', 2);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `reszletek`
--

CREATE TABLE `reszletek` (
  `id` int(11) NOT NULL,
  `id_kontinensek` int(11) NOT NULL,
  `foto` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `orszag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `reszletek`
--

INSERT INTO `reszletek` (`id`, `id_kontinensek`, `foto`, `orszag_id`) VALUES
(1, 1, 'img/Europe/albania.png', 1),
(2, 1, 'img/Europe/austria.png', 7),
(3, 1, 'img/Europe/belarus.png', 8),
(4, 1, 'img/Europe/belgium.png', 9),
(5, 1, 'img/Europe/bosnia.png', 10),
(6, 1, 'img/Europe/bulgaria.png', 11),
(7, 1, 'img/Europe/croatia.png', 12),
(8, 1, 'img/Europe/cz.png', 13),
(9, 1, 'img/Europe/denmark.png', 14),
(10, 1, 'img/Europe/finland.png', 15),
(11, 1, 'img/Europe/francia.png', 16),
(12, 1, 'img/Europe/gb.png', 17),
(13, 1, 'img/Europe/germany.png', 18),
(14, 1, 'img/Europe/greece.png', 19),
(15, 1, 'img/Europe/hungary.png', 3),
(16, 1, 'img/Europe/iceland.png', 20),
(17, 1, 'img/Europe/italy.png', 21),
(18, 1, 'img/Europe/litvania.png', 22),
(19, 1, 'img/Europe/malta.png', 23),
(20, 1, 'img/Europe/poland.png', 24),
(21, 1, 'img/Europe/portugal.png', 25),
(22, 1, 'img/Europe/serbia.png', 26),
(23, 1, 'img/Europe/spain.png', 27),
(24, 1, 'img/Europe/sweden.png', 28),
(25, 1, 'img/Europe/turkey.png', 4),
(26, 2, 'img/North_America/bahamas.png', 29),
(27, 2, 'img/North_America/barbados.png', 30),
(28, 2, 'img/North_America/belize.png', 31),
(29, 2, 'img/North_America/canada.png', 32),
(31, 2, 'img/North_America/cuba.png', 33),
(32, 2, 'img/North_America/dominika.png', 34),
(34, 2, 'img/North_America/haiti.png', 35),
(35, 2, 'img/North_America/honduras.png', 36),
(36, 2, 'img/North_America/jamaica.png', 37),
(37, 2, 'img/North_America/mexico.png', 5),
(38, 2, 'img/North_America/panama.png', 6),
(39, 2, 'img/North_America/salvador.png', 38),
(40, 2, 'img/North_America/usa.png', 39),
(46, 3, 'img/South_America/bolivia.png', 1),
(48, 3, 'img/South_America/brasil.png', 1),
(49, 3, 'img/South_America/chile.png', 1),
(50, 3, 'img/South_America/columbia.png', 1),
(51, 3, 'img/South_America/ecuador.png', 1),
(52, 3, 'img/South_America/paraguay.png', 1),
(53, 3, 'img/South_America/peru.png', 1),
(54, 3, 'img/South_America/uruguay.png', 1),
(56, 4, 'img/Africa/algeria.png', 1),
(57, 4, 'img/Africa/angola.png', 1),
(58, 4, 'img/Africa/botswana.png', 1),
(59, 4, 'img/Africa/burundi.png', 1),
(60, 4, 'img/Africa/cameroun.png', 1),
(61, 4, 'img/Africa/capeverde.png', 1),
(62, 4, 'img/Africa/chad.png', 1),
(63, 4, 'img/Africa/congodem.png', 1),
(64, 4, 'img/Africa/coteivore.png', 1),
(65, 4, 'img/Africa/egypt.png', 1),
(66, 4, 'img/Africa/ethiopia.png', 1),
(67, 4, 'img/Africa/ghana.png', 1),
(68, 4, 'img/Africa/guinea.png', 1),
(69, 4, 'img/Africa/kenya.png', 1),
(70, 4, 'img/Africa/lybia.png', 1),
(71, 4, 'img/Africa/madagascar.png', 1),
(72, 4, 'img/Africa/morocco.png', 1),
(73, 4, 'img/Africa/nigeria.png', 1),
(74, 4, 'img/Africa/safrica.png', 1),
(75, 4, 'img/Africa/seychelle.png', 1),
(76, 4, 'img/Africa/ssudan.png', 1),
(77, 4, 'img/Africa/sudan.png', 1),
(78, 4, 'img/Africa/tunis.png', 1),
(79, 5, 'img/Asia/afg.png', 1),
(80, 5, 'img/Asia/bangladesh.png', 1),
(81, 5, 'img/Asia/china.png', 1),
(82, 5, 'img/Asia/georgia.png', 1),
(83, 5, 'img/Asia/india.png', 1),
(84, 5, 'img/Asia/indonesia.png', 1),
(85, 5, 'img/Asia/iran.png', 1),
(86, 5, 'img/Asia/iraq.png', 1),
(87, 5, 'img/Asia/israel.png', 1),
(88, 5, 'img/Asia/japan.png', 1),
(89, 5, 'img/Asia/kazah.png', 1),
(90, 5, 'img/Asia/laos.png', 1),
(91, 5, 'img/Asia/malaysia.png', 1),
(92, 5, 'img/Asia/maldives.png', 1),
(93, 5, 'img/Asia/mongolia.png', 1),
(94, 5, 'img/Asia/nkorea.png', 1),
(95, 5, 'img/Asia/pakistan.png', 1),
(96, 5, 'img/Asia/philippines.png', 1),
(97, 5, 'img/Asia/qatar.png', 1),
(98, 5, 'img/Asia/saudiarabia.png', 1),
(99, 5, 'img/Asia/singapore.png', 1),
(100, 5, 'img/Asia/skorea.png', 1),
(101, 5, 'img/Asia/thailand.png', 1),
(102, 5, 'img/Asia/uae.png', 1),
(103, 5, 'img/Asia/uzbek.png', 1),
(104, 5, 'img/Asia/vietnam.png', 1),
(105, 6, 'img/Oceania/australia.png', 1),
(106, 6, 'img/Oceania/cook.png', 1),
(107, 6, 'img/Oceania/fiji.png', 1),
(108, 6, 'img/Oceania/marshall.png', 1),
(109, 6, 'img/Oceania/micronesia.png', 1),
(110, 6, 'img/Oceania/newzealand.png', 1),
(111, 6, 'img/Oceania/papua.png', 1),
(112, 6, 'img/Oceania/solomon.png', 1),
(113, 6, 'img/Oceania/tonga.png', 1),
(114, 2, 'img/North_America/corica.png', 40),
(115, 2, 'img/North_America/gua.png', 41),
(116, 3, 'img/South_America/arg.png', 1),
(117, 3, 'img/South_America/ven.png', 1);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `kontinensek`
--
ALTER TABLE `kontinensek`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `orszagok`
--
ALTER TABLE `orszagok`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kontinens_id` (`kontinens_id`);

--
-- A tábla indexei `reszletek`
--
ALTER TABLE `reszletek`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kontinensek` (`id_kontinensek`),
  ADD KEY `orszag_id` (`orszag_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `kontinensek`
--
ALTER TABLE `kontinensek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT a táblához `orszagok`
--
ALTER TABLE `orszagok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT a táblához `reszletek`
--
ALTER TABLE `reszletek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `orszagok`
--
ALTER TABLE `orszagok`
  ADD CONSTRAINT `orszagok_ibfk_1` FOREIGN KEY (`kontinens_id`) REFERENCES `kontinensek` (`id`);

--
-- Megkötések a táblához `reszletek`
--
ALTER TABLE `reszletek`
  ADD CONSTRAINT `reszletek_ibfk_1` FOREIGN KEY (`id_kontinensek`) REFERENCES `kontinensek` (`id`),
  ADD CONSTRAINT `reszletek_ibfk_2` FOREIGN KEY (`orszag_id`) REFERENCES `orszagok` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
