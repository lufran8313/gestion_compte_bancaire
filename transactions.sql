-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 13 nov. 2023 à 10:04
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestion_compte_bancaire`
--

-- --------------------------------------------------------

--
-- Structure de la table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `montant` decimal(10,2) DEFAULT NULL,
  `date_transaction` date DEFAULT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `transactions`
--

INSERT INTO `transactions` (`id`, `description`, `montant`, `date_transaction`, `type`) VALUES
(1, 'Chèque de la fondation ', 9000.00, '2023-11-11', ''),
(2, 'virement ', 2000.00, '2023-11-11', ''),
(3, 'virement ', 2000.00, '2023-11-11', ''),
(4, 'virement ', 2000.00, '2023-11-11', ''),
(5, 'virement ', 2000.00, '2023-11-11', ''),
(6, 'virement ', 3000.00, '2023-11-11', ''),
(7, 'virement ', 3000.00, '2023-11-11', ''),
(8, 'virement ', 1000.00, '2023-11-12', ''),
(9, 'facture Cheque Cinéma ', -1000.00, '2023-11-11', ''),
(10, 'cheque 50', -50.00, '2023-11-11', ''),
(11, 'cheque 50', -50.00, '2023-11-11', ''),
(12, 'cheque 50', -50.00, '2023-11-11', ''),
(13, 'cheque 50', -50.00, '2023-11-11', ''),
(14, 'cheque 50', -50.00, '2023-11-11', ''),
(15, 'cheque 50', -50.00, '2023-11-11', ''),
(16, 'cheque 50', -50.00, '2023-11-11', ''),
(17, 'cheque 50', -50.00, '2023-11-11', ''),
(18, 'cheque 50', -50.00, '2023-11-11', ''),
(19, 'cheque 50', -50.00, '2023-11-11', ''),
(20, 'cheque 50', -50.00, '2023-11-11', ''),
(21, 'cheque 50', -50.00, '2023-11-11', ''),
(22, 'Cheque cadeau', -25.00, '2023-11-11', ''),
(23, 'Cheque cadeau', -25.00, '2023-11-11', ''),
(24, 'Cheque cadeau', -25.00, '2023-11-11', ''),
(25, 'virement ', 100.00, '2023-11-12', ''),
(26, 'virement ', 100.00, '2023-11-12', ''),
(27, 'virement ', 100.00, '2023-11-11', ''),
(28, 'virement', 50.00, '2023-11-11', ''),
(29, 'virement ', 66.00, '2023-11-11', ''),
(30, 'virement ', 66.00, '2023-11-11', ''),
(31, 'virement ', 66.00, '2023-11-11', ''),
(32, 'virement ', 66.00, '2023-11-11', ''),
(33, 'virement ', 66.00, '2023-11-11', ''),
(34, 'virement ', 66.00, '2023-11-11', ''),
(35, 'virement ', 66.00, '2023-11-11', ''),
(36, 'virement ', 66.00, '2023-11-11', ''),
(37, NULL, 75.00, '2023-11-12', 'entree'),
(38, NULL, 10000.00, '2023-11-12', 'sortie'),
(39, NULL, 20000.00, '2023-11-12', 'sortie'),
(40, NULL, 50000.00, '2023-11-12', 'sortie'),
(41, NULL, -50000.00, '2023-11-12', 'entree'),
(42, NULL, -50000.00, '2023-11-12', 'sortie'),
(43, NULL, 50000.00, '2023-11-12', 'entree'),
(44, NULL, 50000.00, '2023-11-12', 'entree'),
(45, NULL, 36.00, '2023-11-12', 'entree'),
(46, NULL, 66.00, '2023-11-12', 'entree'),
(47, NULL, 25.00, '2023-11-12', 'entree'),
(48, NULL, 150000.00, '2023-11-12', 'entree'),
(49, NULL, 66.00, '2023-11-13', 'entree'),
(50, NULL, 9.00, '2023-11-13', 'entree'),
(51, NULL, 150.00, '2023-11-11', 'entree'),
(52, NULL, 5888.00, '2023-11-01', 'entree'),
(53, NULL, 36.00, '2023-11-04', 'entree'),
(54, NULL, 66.00, '2023-11-11', 'entree'),
(55, NULL, 36.00, '2023-11-04', 'entree');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
