-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 02 Décembre 2021 à 21:58
-- Version du serveur :  5.7.11
-- Version de PHP :  7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mediateq`
--

-- --------------------------------------------------------

--
-- Structure de la table `abonnement`
--

CREATE TABLE `abonnement` (
  `idAbonnement` int(11) NOT NULL,
  `dateD` datetime DEFAULT NULL,
  `dateF` date DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `abonnement`
--

INSERT INTO `abonnement` (`idAbonnement`, `dateD`, `dateF`, `type`) VALUES
(1, '2021-12-01 00:00:00', '2021-12-31', '1');

-- --------------------------------------------------------

--
-- Structure de la table `abonné`
--

CREATE TABLE `abonné` (
  `idA` int(11) NOT NULL,
  `adresse` varchar(50) DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prénom` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` text NOT NULL,
  `dateNaissance` varchar(100) DEFAULT NULL,
  `codepostal` int(11) DEFAULT NULL,
  `idAbonnement` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `abonné`
--

INSERT INTO `abonné` (`idA`, `adresse`, `nom`, `prénom`, `email`, `password`, `dateNaissance`, `codepostal`, `idAbonnement`) VALUES
(1, 'Lycee Icof', 'test1', 'test2', 'test@bts.sio', 'sio', '1/01/2000', 69003, 1);

-- --------------------------------------------------------

--
-- Structure de la table `administratif`
--

CREATE TABLE `administratif` (
  `idEmploye` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `amende`
--

CREATE TABLE `amende` (
  `idA` int(11) NOT NULL,
  `idAmende` int(11) NOT NULL,
  `Etat` tinyint(1) DEFAULT NULL,
  `prix` decimal(15,2) DEFAULT NULL,
  `nbJoursRetard` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `document`
--

CREATE TABLE `document` (
  `idDoc` int(11) NOT NULL,
  `titre` varchar(50) DEFAULT NULL,
  `idP` varchar(50) NOT NULL,
  `idG` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `domaine`
--

CREATE TABLE `domaine` (
  `idDomaine` varchar(50) NOT NULL,
  `libelle` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `dvd`
--

CREATE TABLE `dvd` (
  `idDoc` int(11) NOT NULL,
  `synopsis` text,
  `réalisateur` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `employé`
--

CREATE TABLE `employé` (
  `idEmploye` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `adresse` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `emprunt`
--

CREATE TABLE `emprunt` (
  `idA` int(11) NOT NULL,
  `IdEmprunt` int(11) NOT NULL,
  `dateD` date DEFAULT NULL,
  `dateF` date DEFAULT NULL,
  `etat` tinyint(1) DEFAULT NULL,
  `idDoc` int(11) NOT NULL,
  `idExemplaire` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `exemplaire`
--

CREATE TABLE `exemplaire` (
  `idDoc` int(11) NOT NULL,
  `idExemplaire` int(11) NOT NULL,
  `numE` int(11) DEFAULT NULL,
  `numRayon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `idG` varchar(50) NOT NULL,
  `libelle` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

CREATE TABLE `livre` (
  `idDoc` int(11) NOT NULL,
  `ISBN` int(11) NOT NULL,
  `auteur` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `médiation`
--

CREATE TABLE `médiation` (
  `idEmploye` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `parution`
--

CREATE TABLE `parution` (
  `idTitre` varchar(50) NOT NULL,
  `numero` int(11) NOT NULL,
  `dateParution` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `pret`
--

CREATE TABLE `pret` (
  `idEmploye` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `public`
--

CREATE TABLE `public` (
  `idP` varchar(50) NOT NULL,
  `libelle` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `rayon`
--

CREATE TABLE `rayon` (
  `numRayon` int(11) NOT NULL,
  `typeRayon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `idA` int(11) NOT NULL,
  `idReservation` int(11) NOT NULL,
  `dateD` date DEFAULT NULL,
  `dateF` date DEFAULT NULL,
  `etat` tinyint(1) DEFAULT NULL,
  `idDoc` int(11) NOT NULL,
  `idExemplaire` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `titre`
--

CREATE TABLE `titre` (
  `idTitre` varchar(50) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `empruntable` tinyint(1) DEFAULT NULL,
  `idDomaine` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `idUtilisateur` int(11) NOT NULL,
  `adresse` varchar(50) DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `dateNaissance` date DEFAULT NULL,
  `codepostal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `abonnement`
--
ALTER TABLE `abonnement`
  ADD PRIMARY KEY (`idAbonnement`);

--
-- Index pour la table `abonné`
--
ALTER TABLE `abonné`
  ADD PRIMARY KEY (`idA`),
  ADD KEY `idAbonnement` (`idAbonnement`);

--
-- Index pour la table `administratif`
--
ALTER TABLE `administratif`
  ADD PRIMARY KEY (`idEmploye`);

--
-- Index pour la table `amende`
--
ALTER TABLE `amende`
  ADD PRIMARY KEY (`idA`,`idAmende`);

--
-- Index pour la table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`idDoc`),
  ADD KEY `idP` (`idP`),
  ADD KEY `idG` (`idG`);

--
-- Index pour la table `domaine`
--
ALTER TABLE `domaine`
  ADD PRIMARY KEY (`idDomaine`);

--
-- Index pour la table `dvd`
--
ALTER TABLE `dvd`
  ADD PRIMARY KEY (`idDoc`);

--
-- Index pour la table `employé`
--
ALTER TABLE `employé`
  ADD PRIMARY KEY (`idEmploye`);

--
-- Index pour la table `emprunt`
--
ALTER TABLE `emprunt`
  ADD PRIMARY KEY (`idA`,`IdEmprunt`),
  ADD KEY `idDoc` (`idDoc`,`idExemplaire`);

--
-- Index pour la table `exemplaire`
--
ALTER TABLE `exemplaire`
  ADD PRIMARY KEY (`idDoc`,`idExemplaire`),
  ADD KEY `numRayon` (`numRayon`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`idG`);

--
-- Index pour la table `livre`
--
ALTER TABLE `livre`
  ADD PRIMARY KEY (`idDoc`);

--
-- Index pour la table `médiation`
--
ALTER TABLE `médiation`
  ADD PRIMARY KEY (`idEmploye`);

--
-- Index pour la table `parution`
--
ALTER TABLE `parution`
  ADD PRIMARY KEY (`idTitre`,`numero`);

--
-- Index pour la table `pret`
--
ALTER TABLE `pret`
  ADD PRIMARY KEY (`idEmploye`);

--
-- Index pour la table `public`
--
ALTER TABLE `public`
  ADD PRIMARY KEY (`idP`);

--
-- Index pour la table `rayon`
--
ALTER TABLE `rayon`
  ADD PRIMARY KEY (`numRayon`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`idA`,`idReservation`),
  ADD KEY `idDoc` (`idDoc`,`idExemplaire`);

--
-- Index pour la table `titre`
--
ALTER TABLE `titre`
  ADD PRIMARY KEY (`idTitre`),
  ADD KEY `idDomaine` (`idDomaine`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`idUtilisateur`);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `abonné`
--
ALTER TABLE `abonné`
  ADD CONSTRAINT `abonné_ibfk_1` FOREIGN KEY (`idAbonnement`) REFERENCES `abonnement` (`idAbonnement`);

--
-- Contraintes pour la table `administratif`
--
ALTER TABLE `administratif`
  ADD CONSTRAINT `administratif_ibfk_1` FOREIGN KEY (`idEmploye`) REFERENCES `employé` (`idEmploye`);

--
-- Contraintes pour la table `amende`
--
ALTER TABLE `amende`
  ADD CONSTRAINT `amende_ibfk_1` FOREIGN KEY (`idA`) REFERENCES `abonné` (`idA`);

--
-- Contraintes pour la table `document`
--
ALTER TABLE `document`
  ADD CONSTRAINT `document_ibfk_1` FOREIGN KEY (`idP`) REFERENCES `public` (`idP`),
  ADD CONSTRAINT `document_ibfk_2` FOREIGN KEY (`idG`) REFERENCES `genre` (`idG`);

--
-- Contraintes pour la table `dvd`
--
ALTER TABLE `dvd`
  ADD CONSTRAINT `dvd_ibfk_1` FOREIGN KEY (`idDoc`) REFERENCES `document` (`idDoc`);

--
-- Contraintes pour la table `emprunt`
--
ALTER TABLE `emprunt`
  ADD CONSTRAINT `emprunt_ibfk_1` FOREIGN KEY (`idA`) REFERENCES `abonné` (`idA`),
  ADD CONSTRAINT `emprunt_ibfk_2` FOREIGN KEY (`idDoc`,`idExemplaire`) REFERENCES `exemplaire` (`idDoc`, `idExemplaire`);

--
-- Contraintes pour la table `exemplaire`
--
ALTER TABLE `exemplaire`
  ADD CONSTRAINT `exemplaire_ibfk_1` FOREIGN KEY (`idDoc`) REFERENCES `document` (`idDoc`),
  ADD CONSTRAINT `exemplaire_ibfk_2` FOREIGN KEY (`numRayon`) REFERENCES `rayon` (`numRayon`);

--
-- Contraintes pour la table `livre`
--
ALTER TABLE `livre`
  ADD CONSTRAINT `livre_ibfk_1` FOREIGN KEY (`idDoc`) REFERENCES `document` (`idDoc`);

--
-- Contraintes pour la table `médiation`
--
ALTER TABLE `médiation`
  ADD CONSTRAINT `médiation_ibfk_1` FOREIGN KEY (`idEmploye`) REFERENCES `employé` (`idEmploye`);

--
-- Contraintes pour la table `parution`
--
ALTER TABLE `parution`
  ADD CONSTRAINT `parution_ibfk_1` FOREIGN KEY (`idTitre`) REFERENCES `titre` (`idTitre`);

--
-- Contraintes pour la table `pret`
--
ALTER TABLE `pret`
  ADD CONSTRAINT `pret_ibfk_1` FOREIGN KEY (`idEmploye`) REFERENCES `employé` (`idEmploye`);

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`idA`) REFERENCES `abonné` (`idA`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`idDoc`,`idExemplaire`) REFERENCES `exemplaire` (`idDoc`, `idExemplaire`);

--
-- Contraintes pour la table `titre`
--
ALTER TABLE `titre`
  ADD CONSTRAINT `titre_ibfk_1` FOREIGN KEY (`idDomaine`) REFERENCES `domaine` (`idDomaine`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
