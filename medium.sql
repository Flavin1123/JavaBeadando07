-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2021. Már 09. 11:48
-- Kiszolgáló verziója: 10.4.17-MariaDB
-- PHP verzió: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `beadando`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `medium`
--

CREATE TABLE `medium` (
  `id` int(11) NOT NULL,
  `elnevezes` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `musorido` int(11) NOT NULL,
  `kozszolgalati` varchar(4) COLLATE utf8_hungarian_ci NOT NULL,
  `elofizeteses` varchar(4) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `medium`
--

INSERT INTO `medium` (`id`, `elnevezes`, `musorido`, `kozszolgalati`, `elofizeteses`) VALUES
(1, 'KirályiEgyes', 1440, 'igen', 'nem'),
(2, 'ReklámTv', 1000, 'nem', 'nem'),
(3, 'AmásikOldal', 1200, 'igen', 'igen'),
(4, 'PróbaTV', 9999, 'nem', 'igen'),
(5, 'TénylegMűködikTv', 1234, 'igen', 'nem');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `medium`
--
ALTER TABLE `medium`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `medium`
--
ALTER TABLE `medium`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
