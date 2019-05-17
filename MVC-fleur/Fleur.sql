-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Ven 10 Mai 2019 à 07:48
-- Version du serveur :  10.1.26-MariaDB-0+deb9u1
-- Version de PHP :  7.0.27-0+deb9u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `Fleur`
--

-- --------------------------------------------------------

--
-- Structure de la table `Administrateur`
--

CREATE TABLE `Administrateur` (
  `id` char(3) NOT NULL,
  `nom` char(32) NOT NULL,
  `mdp` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `Administrateur`
--

INSERT INTO `Administrateur` (`id`, `nom`, `mdp`) VALUES
('1', 'toto', 'toto'),
('2', 'titi', 'titi');

-- --------------------------------------------------------

--
-- Structure de la table `Categorie`
--

CREATE TABLE `Categorie` (
  `id` char(32) NOT NULL,
  `libelle` char(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `Categorie`
--

INSERT INTO `Categorie` (`id`, `libelle`) VALUES
('com', 'Composition'),
('fle', 'Fleurs'),
('pla', 'Plantes');

-- --------------------------------------------------------

--
-- Structure de la table `Commande`
--

CREATE TABLE `Commande` (
  `id` char(32) NOT NULL,
  `dateCommande` date DEFAULT NULL,
  `nomPrenomClient` char(32) DEFAULT NULL,
  `adresseRueClient` char(32) DEFAULT NULL,
  `cpClient` char(5) DEFAULT NULL,
  `villeClient` char(32) DEFAULT NULL,
  `mailClient` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `Commande`
--

INSERT INTO `Commande` (`id`, `dateCommande`, `nomPrenomClient`, `adresseRueClient`, `cpClient`, `villeClient`, `mailClient`) VALUES
('1101461660', '2011-07-12', 'Dupont Jacques', '12, rue haute', '75001', 'Paris', 'dupont@wanadoo.fr'),
('1101461665', '2011-07-20', 'Durant Yves', '23, rue des ombres', '75012', 'Paris', 'durant@free.fr'),
('1101461666', '2018-09-20', 'Julien Heles', '10 tbn tynnt', '55800', 'revig', 'berberb.zev@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `Contenir`
--

CREATE TABLE `Contenir` (
  `idCommande` char(32) NOT NULL,
  `idProduit` char(32) NOT NULL,
  `nbProduit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `Contenir`
--

INSERT INTO `Contenir` (`idCommande`, `idProduit`, `nbProduit`) VALUES
('1101461660', 'f03', 0),
('1101461660', 'p01', 0),
('1101461665', 'f05', 0),
('1101461665', 'p06', 0);

-- --------------------------------------------------------

--
-- Structure de la table `Produit`
--

CREATE TABLE `Produit` (
  `id` char(32) NOT NULL,
  `description` char(50) DEFAULT NULL,
  `prix` decimal(10,2) DEFAULT NULL,
  `image` char(32) DEFAULT NULL,
  `idCategorie` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `Produit`
--

INSERT INTO `Produit` (`id`, `description`, `prix`, `image`, `idCategorie`) VALUES
('c01', 'Panier de fleurs variées', '53.00', 'images/compo/aniwa.gif', 'com'),
('c02', 'Coup de charme jaune', '38.00', 'images/compo/kos.gif', 'com'),
('c03', 'Bel arrangement de fleurs de saison', '68.00', 'images/compo/loth.gif', 'com'),
('c04', 'Coup de charme vert', '41.00', 'images/compo/luzon.gif', 'com'),
('c05', 'Très beau panier de fleurs précieuses', '98.00', 'images/compo/makin.gif', 'com'),
('c06', 'Bel assemblage de fleurs précieuses', '68.00', 'images/compo/mosso.gif', 'com'),
('c07', 'Présentation prestigieuse', '128.00', 'images/compo/rawaki.gif', 'com'),
('f01', 'Bouquet de roses multicolores', '58.00', 'images/fleurs/comores.gif', 'fle'),
('f02', 'Bouquet de roses rouges', '50.00', 'images/fleurs/grenadines.gif', 'fle'),
('f03', 'Bouquet de roses jaunes', '78.00', 'images/fleurs/mariejaune.gif', 'fle'),
('f04', 'Bouquet de petites roses jaunes', '48.00', 'images/fleurs/mayotte.gif', 'fle'),
('f05', 'Fuseau de roses multicolores', '63.00', 'images/fleurs/philippines.gif', 'fle'),
('f06', 'Petit bouquet de roses roses', '43.00', 'images/fleurs/pakopoka.gif', 'fle'),
('f07', 'Panier de roses multicolores', '78.00', 'images/fleurs/seychelles.gif', 'fle'),
('p01', 'Plante fleurie', '43.00', 'images/plantes/antharium.gif', 'pla'),
('p02', 'Pot de phalaonopsis', '58.00', 'images/plantes/galante.gif', 'pla'),
('p03', 'Assemblage paysagé', '103.00', 'images/plantes/lifou.gif', 'pla'),
('p04', 'Belle coupe de plantes blanches', '128.00', 'images/plantes/losloque.gif', 'pla'),
('p05', 'Pot de mitonia mauve', '83.00', 'images/plantes/papouasi.gif', 'pla'),
('p06', 'Pot de phalaonopsis blanc', '58.00', 'images/plantes/pionosa.gif', 'pla'),
('p07', 'Pot de phalaonopsis rose mauve', '58.00', 'images/plantes/sabana.gif', 'pla');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Administrateur`
--
ALTER TABLE `Administrateur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Categorie`
--
ALTER TABLE `Categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Commande`
--
ALTER TABLE `Commande`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Contenir`
--
ALTER TABLE `Contenir`
  ADD PRIMARY KEY (`idCommande`,`idProduit`),
  ADD KEY `I_FK_CONTENIR_COMMANDE` (`idCommande`),
  ADD KEY `I_FK_CONTENIR_Produit` (`idProduit`);

--
-- Index pour la table `Produit`
--
ALTER TABLE `Produit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `I_FK_Produit_CATEGORIE` (`idCategorie`);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `Contenir`
--
ALTER TABLE `Contenir`
  ADD CONSTRAINT `FK_CONTENIR_COMMANDE` FOREIGN KEY (`idCommande`) REFERENCES `Commande` (`id`),
  ADD CONSTRAINT `FK_CONTENIR_Produit` FOREIGN KEY (`idProduit`) REFERENCES `Produit` (`id`);

--
-- Contraintes pour la table `Produit`
--
ALTER TABLE `Produit`
  ADD CONSTRAINT `FK_Produit_CATEGORIE` FOREIGN KEY (`idCategorie`) REFERENCES `Categorie` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
