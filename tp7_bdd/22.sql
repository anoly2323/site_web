-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Jeu 19 Décembre 2024 à 14:19
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `GestionCommandes`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `id_client` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `mail` varchar(20) NOT NULL,
  `date_inscription` date NOT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`id_client`, `nom`, `prenom`, `mail`, `date_inscription`) VALUES
(1, 'Dupont', 'Marie', 'mariedupont@example.', '2023-01-10'),
(2, 'Durand', 'Paul', 'paul.durand@example.', '2023-02-20'),
(3, 'Matin', 'Alice', 'alice.martin@example', '2023-03-15');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE IF NOT EXISTS `commandes` (
  `id_commande` int(11) NOT NULL AUTO_INCREMENT,
  `id_client` int(11) NOT NULL,
  `date_commande` date NOT NULL,
  `montant_total` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id_commande`),
  KEY `id_client` (`id_client`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `commandes`
--

INSERT INTO `commandes` (`id_commande`, `id_client`, `date_commande`, `montant_total`) VALUES
(1, 1, '2023-12-01', 1950),
(2, 2, '2023-12-03', 800);

-- --------------------------------------------------------

--
-- Structure de la table `detailscommandes`
--

CREATE TABLE IF NOT EXISTS `detailscommandes` (
  `id_detail` int(11) NOT NULL AUTO_INCREMENT,
  `id_commande` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  `prix_total` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id_detail`),
  KEY `id_commande` (`id_commande`,`id_produit`),
  KEY `id_produit` (`id_produit`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `detailscommandes`
--

INSERT INTO `detailscommandes` (`id_detail`, `id_commande`, `id_produit`, `quantite`, `prix_total`) VALUES
(1, 1, 1, 1, 1200),
(2, 1, 3, 5, 750),
(3, 2, 2, 1, 800);

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE IF NOT EXISTS `produits` (
  `id_produit` int(11) NOT NULL AUTO_INCREMENT,
  `nom_produit` varchar(100) NOT NULL,
  `prix` decimal(10,0) NOT NULL,
  `stock` int(11) NOT NULL,
  PRIMARY KEY (`id_produit`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `produits`
--

INSERT INTO `produits` (`id_produit`, `nom_produit`, `prix`, `stock`) VALUES
(1, 'ordinateur portable', 1200, 10),
(2, 'smartphone', 800, 15),
(3, 'casque audio', 150, 30),
(4, 'clavier', 50, 50);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD CONSTRAINT `commandes_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id_client`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `detailscommandes`
--
ALTER TABLE `detailscommandes`
  ADD CONSTRAINT `detailscommandes_ibfk_2` FOREIGN KEY (`id_produit`) REFERENCES `produits` (`id_produit`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detailscommandes_ibfk_3` FOREIGN KEY (`id_commande`) REFERENCES `commandes` (`id_commande`) ON DELETE CASCADE ON UPDATE CASCADE;
