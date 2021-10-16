-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 15 mai 2021 à 21:00
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mole`
--

-- --------------------------------------------------------

--
-- Structure de la table `boutiques`
--

CREATE TABLE `boutiques` (
  `id` int(11) NOT NULL,
  `title` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `boutiques`
--

INSERT INTO `boutiques` (`id`, `title`, `description`, `keywords`, `url`) VALUES
(1, 'zen', 'Anything you need you will find it here in our big shop.\r\nthe newest collection for any season with the coolest price', 'women \r\nmen \r\nchildren \r\ndress\r\nskirt\r\nleathers \r\nt-shirt\r\nsneakers\r\nzen', 'https://www.zen.com.tn/'),
(2, 'celio', 'Celio our shop is the biggest shop with the good quality of products.Don\'t forget to visit our site web to see the new collections.', 'celio\r\njeans\r\nmen \r\nwomen\r\ncool \r\nnew\r\nt-shirt', 'https://www.celio.com/'),
(4, 'CityWatch', 'City watch shop is the most luxerious shop in the world of internet.Where you can buy time with the cheapest price.', 'CityWatch\r\nwatches\r\nelegance \r\ntime\r\nmen\r\nwoman', 'https://citywatch.com.tn/'),
(5, 'MobileShop\r\n\r\n', 'fast cheap and good quality you will find all those rare things in our online shop', 'MobileShop\r\nphone\r\nsmartphone\r\nmobile \r\niphone\r\nsamsung \r\ncondor \r\nhuawei \r\nnokia\r\nLG', 'https://www.mobileshop.eu/fr/'),
(6, 'Incenza', 'Tendance of Parfums the right choice of all time.', 'incenza\r\noudeur \r\nroses\r\nflowers\r\nluxurious\r\nflacon\r\nfresh', 'https://www.incenza.com/');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `boutiques`
--
ALTER TABLE `boutiques`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `boutiques`
--
ALTER TABLE `boutiques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
