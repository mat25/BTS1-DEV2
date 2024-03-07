-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 07 mars 2024 à 10:49
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
-- Base de données : `db_etudiants`
--
CREATE DATABASE IF NOT EXISTS `db_etudiants` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_etudiants`;

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `idContact` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(40) NOT NULL,
  `prenom` varchar(15) NOT NULL,
  `mailContact` varchar(50) NOT NULL,
  `sujet_message` varchar(30) NOT NULL,
  `messageContact` text NOT NULL,
  `datetimeContact` datetime NOT NULL DEFAULT current_timestamp(),
  `valider` int(1) NOT NULL DEFAULT 0,
  `loginUser` varchar(30) NOT NULL,
  PRIMARY KEY (`idContact`),
  KEY `FK_utilisateurs_contact` (`loginUser`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`idContact`, `nom`, `prenom`, `mailContact`, `sujet_message`, `messageContact`, `datetimeContact`, `valider`, `loginUser`) VALUES
(3, 'Testeur', 'Josh', 'josh.mail@gmail.com', 'Test liste', ' Bonjour,\r\nÉtant élèves dans votre structure je n\'ai pas pu accéder à mes données depuis un poste de la bibliothèque.\r\nPourrions nous convenir d\'un rendez-vous pour résoudre ce problème.\r\nCordialement.\r\nJosh Testeur', '2023-03-08 17:05:30', 0, 'higakus'),
(4, 'Chalant', 'Manon', 'manoon.chalant@gmail.com', 'Message via formulaire de cont', ' Bonjour,\r\nTous mes fichiers ont disparus, on dirait que mon compte a été réinitialisé.\r\nPourriez vous les retrouver ?\r\nCordialement\r\nManon Chalant', '2023-04-22 19:47:23', 1, 'higakus'),
(11, 'Racine', 'Esteban', 'esteban.racine2004@gmail.com', 'Test 24', 'Bonjour,\r\nTest 24 doit être traité ', '2023-04-22 23:50:30', 1, 'racinee'),
(12, 'Racine', 'Esteban', 'esteban.racine2004@gmail.com', 'Test 25', 'Bonjour,\r\nCe test n°25 ne doit pas être traité ', '2023-04-22 23:51:00', 0, 'racinee');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230918085839', '2023-09-18 11:20:31', 24),
('DoctrineMigrations\\Version20230920063049', '2023-09-20 08:34:50', 60);

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

DROP TABLE IF EXISTS `etudiant`;
CREATE TABLE IF NOT EXISTS `etudiant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prenom` varchar(80) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `date_naissance` date DEFAULT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_717E22E3139DF194` (`promotion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`id`, `prenom`, `nom`, `email`, `date_naissance`, `promotion_id`) VALUES
(2201, 'Josette', 'Chretien', 'blot.constance@live.com', '1999-04-29', 16),
(2202, 'Nathalie', 'Ruiz', 'wbenoit@laposte.net', '2005-05-15', 11),
(2203, 'Élodie', 'Ruiz', 'yhubert@dbmail.com', '2003-04-23', 13),
(2204, 'Louis', 'Couturier', 'hugues.lambert@club-internet.fr', '1994-07-14', 10),
(2205, 'Pierre', 'Philippe', 'tristan.klein@albert.net', '2004-01-22', 15),
(2206, 'Théophile', 'Garcia', 'laurence.marchand@fleury.net', '1995-06-26', 10),
(2207, 'Thibault', 'Rousset', 'bousquet.louis@royer.com', '1999-07-27', 17),
(2208, 'Daniel', 'Descamps', 'timothee32@wanadoo.fr', '2000-02-02', 15),
(2209, 'Gilles', 'Thibault', 'capucine45@live.com', '1998-04-03', 14),
(2210, 'Frédéric', 'Menard', 'laure79@free.fr', '2003-10-25', 10),
(2211, 'Laurence', 'Hardy', 'praymond@club-internet.fr', '2004-03-21', 16),
(2212, 'Virginie', 'Didier', 'riviere.andree@free.fr', '1995-09-08', 10),
(2213, 'Éric', 'Salmon', 'rraymond@dupont.fr', '2004-06-10', 16),
(2214, 'Joseph', 'Devaux', 'nicole64@guerin.com', '1994-05-17', 10),
(2215, 'Noémi', 'Roche', 'caron.antoine@sfr.fr', '1999-11-04', 18),
(2216, 'Georges', 'Faure', 'elise.letellier@tele2.fr', '1996-09-16', 19),
(2217, 'Marc', 'Caron', 'dominique.besnard@leger.com', '2005-07-17', 12),
(2218, 'Céline', 'Boucher', 'daniel.laurent@yahoo.fr', '1998-01-08', 19),
(2219, 'Matthieu', 'Guillet', 'oceane58@gmail.com', '2006-03-29', 12),
(2220, 'Christine', 'Julien', 'joseph.lemaire@durand.fr', '2001-01-25', 18),
(2221, 'Gabrielle', 'Jean', 'aurelie78@sfr.fr', '1998-07-22', 12),
(2222, 'Océane', 'Maillet', 'bonnin.timothee@wanadoo.fr', '2001-01-26', 15),
(2223, 'Inès', 'Pichon', 'ines00@orange.fr', '1994-08-23', 12),
(2224, 'Anastasie', 'Guerin', 'gaudin.emile@gauthier.org', '1995-02-24', 16),
(2225, 'Édith', 'Lefort', 'vaillant.alex@live.com', '2002-02-27', 11),
(2226, 'Dominique', 'Labbe', 'bfaivre@tele2.fr', '1995-09-13', 18),
(2227, 'Laurent', 'Benard', 'auguste20@orange.fr', '1995-01-14', 10),
(2228, 'Denise', 'Etienne', 'genevieve62@blanc.net', '1999-10-24', 13),
(2229, 'Anne', 'Leroux', 'seguin.margaret@sfr.fr', '2001-01-20', 10),
(2230, 'Noémi', 'Thierry', 'kberthelot@free.fr', '1995-06-29', 12),
(2231, 'Alexandria', 'Raynaud', 'vgay@hernandez.fr', '2002-04-04', 15),
(2232, 'Adrienne', 'Roux', 'mathilde94@dbmail.com', '2004-10-05', 19),
(2233, 'Claire', 'Guyot', 'olivie57@dbmail.com', '2006-07-08', 10),
(2234, 'Isaac', 'Costa', 'aurore01@club-internet.fr', '2006-04-22', 11),
(2235, 'Cécile', 'Bigot', 'nath.deoliveira@marty.com', '1998-06-03', 10),
(2236, 'Auguste', 'Thomas', 'egarnier@free.fr', '2000-09-18', 19),
(2237, 'Élisabeth', 'Lecoq', 'bourgeois.remy@peltier.com', '2005-03-20', 11),
(2238, 'Léon', 'Bonnin', 'metienne@hotmail.fr', '1995-11-25', 11),
(2239, 'Amélie', 'Hoarau', 'ramos.leon@hotmail.fr', '1995-05-04', 19),
(2240, 'René', 'Guillot', 'xtorres@peltier.org', '1995-07-15', 11),
(2241, 'Antoinette', 'Paris', 'paul.charpentier@wanadoo.fr', '2000-11-24', 14),
(2242, 'Charles', 'Charrier', 'pierre62@brunet.net', '1999-04-03', 14),
(2243, 'Colette', 'Da Silva', 'colette.langlois@morvan.fr', '2004-01-03', 18),
(2244, 'Chantal', 'Rodriguez', 'lebreton.alfred@gilles.fr', '2000-10-18', 19),
(2245, 'Noël', 'Lambert', 'ibarthelemy@wanadoo.fr', '2004-04-08', 18),
(2246, 'Grégoire', 'Brunel', 'isaac.marechal@raymond.fr', '1998-03-27', 10),
(2247, 'Georges', 'Gillet', 'colette.lacroix@girard.fr', '2001-03-30', 19),
(2248, 'Pierre', 'Baudry', 'jeanne25@laposte.net', '1999-11-11', 15),
(2249, 'Amélie', 'Gillet', 'clegoff@orange.fr', '2000-09-26', 18),
(2250, 'Philippine', 'Joly', 'foucher.claire@pasquier.org', '1996-05-28', 16),
(2251, 'Susanne', 'Jacques', 'paul.guilbert@royer.fr', '1998-07-05', 14),
(2252, 'Virginie', 'Garcia', 'julien44@laposte.net', '2001-07-03', 14),
(2253, 'Inès', 'Bonnet', 'emmanuelle31@roux.com', '2001-07-16', 19),
(2254, 'Guy', 'Renaud', 'eleonore13@duhamel.fr', '1997-07-18', 18),
(2255, 'Colette', 'Pottier', 'alfred15@schneider.net', '2005-02-06', 10),
(2256, 'Adèle', 'Noel', 'noel99@navarro.fr', '1998-12-19', 19),
(2257, 'Emmanuel', 'Huet', 'anastasie.morel@wanadoo.fr', '2004-11-04', 19),
(2258, 'Sylvie', 'Gerard', 'jacob.margaux@tele2.fr', '2001-11-01', 12),
(2259, 'Tristan', 'Grondin', 'ubreton@laposte.net', '1995-07-10', 11),
(2260, 'Laure', 'Guyon', 'josette30@tele2.fr', '1997-06-15', 18),
(2261, 'Louis', 'Laine', 'nathalie.roy@free.fr', '2003-09-10', 18),
(2262, 'Lucas', 'Evrard', 'bouchet.andree@sfr.fr', '2003-11-18', 17),
(2263, 'Sébastien', 'Benard', 'qbourdon@masson.fr', '1994-11-01', 16),
(2264, 'Geneviève', 'Camus', 'gblanc@berger.fr', '1996-07-03', 19),
(2265, 'Julie', 'Allain', 'payet.william@coulon.net', '2002-02-08', 11),
(2266, 'Hugues', 'Faure', 'dvallet@marion.fr', '2004-07-03', 12),
(2267, 'Andrée', 'Leclercq', 'patricia.dupuis@yahoo.fr', '2002-07-18', 15),
(2268, 'Victoire', 'Costa', 'corinne70@gaudin.org', '2006-08-30', 18),
(2269, 'Émilie', 'Charles', 'csamson@yahoo.fr', '2003-05-09', 14),
(2270, 'Noël', 'Voisin', 'jules27@morin.com', '2004-02-02', 19),
(2271, 'Thomas', 'Da Costa', 'xguyot@wanadoo.fr', '1997-05-30', 16),
(2272, 'Marc', 'Duhamel', 'wjourdan@rey.org', '2003-09-06', 10),
(2273, 'Michelle', 'Leveque', 'dorothee45@laposte.net', '1997-01-13', 16),
(2274, 'Martine', 'Aubry', 'zacharie.lacroix@free.fr', '1999-08-31', 10),
(2275, 'Auguste', 'Duhamel', 'tristan52@rodriguez.com', '1997-07-24', 11),
(2276, 'Andrée', 'Techer', 'margot57@wanadoo.fr', '1997-10-22', 11),
(2277, 'Suzanne', 'Chretien', 'pfernandez@dbmail.com', '2001-11-07', 16),
(2278, 'Éric', 'Maillard', 'fernandes.marguerite@sanchez.fr', '1998-05-23', 15),
(2279, 'Corinne', 'Couturier', 'lecomte.martin@sfr.fr', '1996-10-08', 16),
(2280, 'Jules', 'Wagner', 'gomez.edouard@hotmail.fr', '1993-10-27', 18),
(2281, 'Danielle', 'Lenoir', 'npetitjean@gauthier.org', '2001-02-19', 16),
(2282, 'Thérèse', 'Perrier', 'lucie14@robin.net', '1997-10-07', 15),
(2283, 'Thomas', 'Gauthier', 'jmercier@robert.org', '1996-11-20', 18),
(2284, 'Philippine', 'Martins', 'elisabeth47@sfr.fr', '1998-06-25', 17),
(2285, 'Victoire', 'Traore', 'aurore.jacquot@joly.org', '1995-02-16', 15),
(2286, 'Léon', 'Schneider', 'robert.vaillant@yahoo.fr', '1995-11-17', 13),
(2287, 'Frédéric', 'Thierry', 'duhamel.raymond@martel.com', '1998-05-22', 16),
(2288, 'Rémy', 'Hoarau', 'olivier.cohen@noos.fr', '1997-03-03', 11),
(2289, 'Pénélope', 'Lucas', 'blondel.david@poirier.com', '2001-07-31', 17),
(2290, 'Noël', 'Le Gall', 'elodie03@merle.com', '2002-07-17', 15),
(2291, 'Henriette', 'Gaillard', 'bernard.costa@free.fr', '1995-03-15', 19),
(2292, 'Célina', 'Barbe', 'joubert.adrienne@colas.org', '2005-04-08', 10),
(2293, 'Alain', 'Grondin', 'normand.susan@sfr.fr', '2003-10-16', 18),
(2294, 'François', 'Michel', 'guichard.laetitia@lefebvre.net', '1998-11-17', 12),
(2295, 'Camille', 'Poulain', 'leon.carre@klein.com', '1998-04-14', 11),
(2296, 'Nicole', 'Texier', 'vincent.michelle@live.com', '2000-08-01', 16),
(2297, 'Hortense', 'Valentin', 'colin.nath@tessier.fr', '2001-05-24', 18),
(2298, 'Michel', 'Durand', 'kblot@tele2.fr', '1999-06-23', 18),
(2299, 'Nath', 'Barbe', 'lesage.claudine@wanadoo.fr', '2006-04-26', 10),
(2300, 'Benjamin', 'Fernandez', 'marine.guillet@brunel.fr', '1998-06-08', 15);

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

DROP TABLE IF EXISTS `etudiants`;
CREATE TABLE IF NOT EXISTS `etudiants` (
  `id_etudiant` int(11) NOT NULL AUTO_INCREMENT,
  `prenom_etudiant` varchar(60) NOT NULL,
  `nom_etudiant` varchar(60) NOT NULL,
  `email_etudiant` varchar(80) NOT NULL,
  `date_naissance_etudiant` date NOT NULL,
  `adresse_etudiant` varchar(100) NOT NULL,
  `telephone_etudiant` varchar(12) NOT NULL,
  `photo_etudiant` varchar(200) NOT NULL,
  `ville` varchar(70) NOT NULL,
  `id_promotion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_etudiant`),
  KEY `FK_ETUDIANT_PROMOTION` (`id_promotion`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `etudiants`
--

INSERT INTO `etudiants` (`id_etudiant`, `prenom_etudiant`, `nom_etudiant`, `email_etudiant`, `date_naissance_etudiant`, `adresse_etudiant`, `telephone_etudiant`, `photo_etudiant`, `ville`, `id_promotion`) VALUES
(7, 'Jamy', 'Cose', 'champi.gnon@orange.fr', '2003-04-24', '45 rue Malcombe', '0632548952', '1.png', 'Champagnol', 2),
(8, 'Marcus', 'Tenssil', 'fourchette@couteau.com', '2002-06-15', '23 allée des matyrs', '0785965841', '2.jpg', 'Paris', 0),
(9, 'Jenny', 'Ouininon', 'jsp@gmail.com', '2005-05-05', '2 chemin des bouteilles', '0621547896', '3.jpg', 'Marseille', 3),
(10, 'Cassandra', 'Caufeu', 'team.bulbizarre@pokemon.jap', '2000-01-12', '9 rue Mew', '0725319423', '4.jpg', 'Gardevoir', 0),
(11, 'Odin', 'Don', 'zeus.first@god.uk', '2003-05-02', '8 allée Marchand', '0685252541', '5.jpg', 'Athenes', 0),
(12, 'Louis', 'Palodaura', 'good.listening@ouie.uk', '2005-06-09', '23 rue de la Musique', '0689651478', '6.jpg', 'Rome', 3),
(13, 'Cole', 'Uachu', 'cacollepour.moi@gmail.com', '2003-04-01', '15 avenue Scotch', '0798154437', '2.jpg', 'Toronto', 0),
(15, 'Elodie', 'Nosaure', 'raaaaaawr@boum.fr', '1845-02-13', '85 allée Stego', '0698747485', '3.jpg', 'Dinotown', 1),
(16, 'Pascal', 'Orie', 'giga.sportive@pompe.uk', '2004-02-27', '', '0631984525', '4.jpg', 'Boston', 2),
(17, 'Louis', 'Dupont', 'louis.dupont@gmail.com', '2003-01-08', '', '0698745412', '5.jpg', 'Paris', 1),
(18, 'Arthur', 'Ly', 'arthur.ly@gmail.com', '2004-01-04', '13 avenue des bouteilles', '0631680717', '6.jpg', 'Besançon', 1);

-- --------------------------------------------------------

--
-- Structure de la table `horaires`
--

DROP TABLE IF EXISTS `horaires`;
CREATE TABLE IF NOT EXISTS `horaires` (
  `id_jour` int(1) NOT NULL AUTO_INCREMENT,
  `horaire_debut_matin` varchar(5) DEFAULT NULL,
  `horaire_fin_matin` varchar(5) DEFAULT NULL,
  `horaire_debut_aprés_midi` varchar(5) DEFAULT NULL,
  `horaire_fin_apres_midi` varchar(5) DEFAULT NULL,
  `jour` varchar(8) NOT NULL,
  PRIMARY KEY (`id_jour`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `horaires`
--

INSERT INTO `horaires` (`id_jour`, `horaire_debut_matin`, `horaire_fin_matin`, `horaire_debut_aprés_midi`, `horaire_fin_apres_midi`, `jour`) VALUES
(1, '08h00', '12h00', '14h00', '17h30', 'Lundi'),
(2, '08h00', '12h00', '14h00', '17h30', 'Mardi'),
(3, '08h00', '12h00', NULL, NULL, 'Mercredi'),
(4, '08h00', '12h00', '14h00', '17h30', 'Jeudi'),
(5, '08h00', '12h00', '14h00', '17h30', 'Vendredi'),
(6, NULL, NULL, NULL, NULL, 'Samedi'),
(7, NULL, NULL, NULL, NULL, 'Dimanche');

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
CREATE TABLE IF NOT EXISTS `promotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(80) NOT NULL,
  `annee` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `promotion`
--

INSERT INTO `promotion` (`id`, `nom`, `annee`) VALUES
(10, 'cumque', '2023'),
(11, 'quo', '2023'),
(12, 'eveniet', '2023'),
(13, 'sapiente', '2023'),
(14, 'rerum', '2023'),
(15, 'reiciendis', '2023'),
(16, 'ratione', '2023'),
(17, 'quis', '2023'),
(18, 'asperiores', '2023'),
(19, 'qui', '2023');

-- --------------------------------------------------------

--
-- Structure de la table `promotions`
--

DROP TABLE IF EXISTS `promotions`;
CREATE TABLE IF NOT EXISTS `promotions` (
  `id_promotion` int(11) NOT NULL AUTO_INCREMENT,
  `intitule_promotion` varchar(30) NOT NULL,
  PRIMARY KEY (`id_promotion`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `promotions`
--

INSERT INTO `promotions` (`id_promotion`, `intitule_promotion`) VALUES
(1, 'SIO1'),
(2, '2nd4'),
(3, 'Term 3');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `nomUser` varchar(30) NOT NULL,
  `prenomUser` varchar(30) NOT NULL,
  `loginUser` varchar(30) NOT NULL,
  `mdpUser` varchar(60) NOT NULL,
  `accesAdmin` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`loginUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`nomUser`, `prenomUser`, `loginUser`, `mdpUser`, `accesAdmin`) VALUES
('Anonyme', 'Anonyme', 'ano', 'gbbdvnsuqbyivevbrybciecberionrvioqrjvoernjiovneio', 0),
('Shin', 'Higaku', 'higakus', '$2y$10$3JZ.FNiZIl4KGR/.qYhu1.8bzx7JdAUYonKANrFmf/Dc9cE494GkW', 1),
('Racine', 'Esteban', 'racinee', '$2y$10$gG/HNce9Y1GleiyLrddCEOFrBIeok6F7jAufdpfplMZoMe260FfoO', 0);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `FK_utilisateurs_contact` FOREIGN KEY (`loginUser`) REFERENCES `utilisateurs` (`loginUser`);

--
-- Contraintes pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD CONSTRAINT `FK_717E22E3139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `promotion` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
