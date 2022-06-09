-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 09 juin 2022 à 12:41
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `autocode`
--

-- --------------------------------------------------------

--
-- Structure de la table `eleve`
--

CREATE TABLE `eleve` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `datenaiss` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `ville` varchar(255) NOT NULL,
  `codeP` int(255) NOT NULL,
  `mdp` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `eleve`
--

INSERT INTO `eleve` (`id`, `nom`, `prenom`, `datenaiss`, `email`, `phone`, `adresse`, `ville`, `codeP`, `mdp`, `img`) VALUES
(1, 'kaye', 'hubert', '2022-04-06', 'kayeromy@gmail.com', '07 82 81 86 24', '5 rue henri barbusse', 'clichy', 92110, 'azert', '1649056757advertisement.png');

-- --------------------------------------------------------

--
-- Structure de la table `examp`
--

CREATE TABLE `examp` (
  `IdP` int(3) NOT NULL,
  `dateP` date DEFAULT NULL,
  `HeureDP` date DEFAULT NULL,
  `HeureFP` date DEFAULT NULL,
  `ResultatP` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `logs`
--

CREATE TABLE `logs` (
  `ide` int(10) NOT NULL,
  `DateDebut` datetime NOT NULL,
  `DateFin` datetime DEFAULT NULL,
  `Login` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `moniteurs`
--

CREATE TABLE `moniteurs` (
  `idM` int(3) NOT NULL,
  `nomM` varchar(25) NOT NULL,
  `prenomM` varchar(25) NOT NULL,
  `numM` char(10) NOT NULL,
  `dateE` date DEFAULT NULL,
  `mailM` varchar(25) NOT NULL,
  `diplome` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `plannig`
--

CREATE TABLE `plannig` (
  `IdCond` int(3) NOT NULL,
  `IdM` int(3) NOT NULL,
  `IdCode` int(3) NOT NULL,
  `IdE` int(3) NOT NULL,
  `Etatp` varchar(25) DEFAULT NULL,
  `DateHF` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `resultat`
--

CREATE TABLE `resultat` (
  `IdE` int(3) NOT NULL,
  `IdSC` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `resultat2`
--

CREATE TABLE `resultat2` (
  `IdE` int(3) NOT NULL,
  `IdP` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `salles`
--

CREATE TABLE `salles` (
  `idS` int(3) NOT NULL,
  `nomS` varchar(25) DEFAULT NULL,
  `nbP` int(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `sessioncode`
--

CREATE TABLE `sessioncode` (
  `IdSC` int(3) NOT NULL,
  `dateSC` date DEFAULT NULL,
  `HeureDSC` date DEFAULT NULL,
  `HeureFSC` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `suit`
--

CREATE TABLE `suit` (
  `IdE` int(3) NOT NULL,
  `IdCond` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `suit2`
--

CREATE TABLE `suit2` (
  `IdE` int(3) NOT NULL,
  `IdCode` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `idu` int(10) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `mail` varchar(25) NOT NULL,
  `login` varchar(25) NOT NULL,
  `mdp` varchar(25) NOT NULL,
  `niveau` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`idu`, `nom`, `prenom`, `mail`, `login`, `mdp`, `niveau`) VALUES
(1, 'Panini', 'Henri', '', 'admin', 'admin', 0),
(2, 'admin', 'admin', 'admin@mail.com', 'admin', 'admin', 1),
(3, 'Ponpon', 'Fleure', 'fleure@mail.com', 'Ponce', 'azertyuiop', 0),
(4, 'kaye', 'hubert', 'kayeromy@gmail.com', 'KAYE', '1234', 0),
(5, 'killiane', 'kaye', 'killiane@gmail.com', 'killiane', '1234', 0),
(6, 'pato', 'erik', 'erik@gmail.com', 'pato', '1234', 0);

-- --------------------------------------------------------

--
-- Structure de la table `voiture`
--

CREATE TABLE `voiture` (
  `idV` int(3) NOT NULL,
  `nomV` varchar(25) DEFAULT NULL,
  `carburant` varchar(25) DEFAULT NULL,
  `immatriculation` varchar(9) DEFAULT NULL,
  `dateMiseEnCirculation` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `eleve`
--
ALTER TABLE `eleve`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `examp`
--
ALTER TABLE `examp`
  ADD PRIMARY KEY (`IdP`);

--
-- Index pour la table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`ide`);

--
-- Index pour la table `moniteurs`
--
ALTER TABLE `moniteurs`
  ADD PRIMARY KEY (`idM`);

--
-- Index pour la table `plannig`
--
ALTER TABLE `plannig`
  ADD PRIMARY KEY (`IdCond`,`IdM`,`IdCode`,`IdE`);

--
-- Index pour la table `resultat`
--
ALTER TABLE `resultat`
  ADD PRIMARY KEY (`IdE`,`IdSC`);

--
-- Index pour la table `resultat2`
--
ALTER TABLE `resultat2`
  ADD PRIMARY KEY (`IdE`,`IdP`);

--
-- Index pour la table `salles`
--
ALTER TABLE `salles`
  ADD PRIMARY KEY (`idS`);

--
-- Index pour la table `sessioncode`
--
ALTER TABLE `sessioncode`
  ADD PRIMARY KEY (`IdSC`);

--
-- Index pour la table `suit`
--
ALTER TABLE `suit`
  ADD PRIMARY KEY (`IdE`,`IdCond`);

--
-- Index pour la table `suit2`
--
ALTER TABLE `suit2`
  ADD PRIMARY KEY (`IdE`,`IdCode`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idu`);

--
-- Index pour la table `voiture`
--
ALTER TABLE `voiture`
  ADD PRIMARY KEY (`idV`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `eleve`
--
ALTER TABLE `eleve`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `logs`
--
ALTER TABLE `logs`
  MODIFY `ide` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `idu` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
