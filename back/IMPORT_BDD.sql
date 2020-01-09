-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 19 Décembre 2019 à 10:14
-- Version du serveur :  5.7.24-0ubuntu0.16.04.1
-- Version de PHP :  7.2.11-4+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projet-ocoop`
--

-- --------------------------------------------------------

--
-- Structure de la table `favorite_game`
--

CREATE TABLE `favorite_game` (
  `game_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rank_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `favorite_game`
--

INSERT INTO `favorite_game` (`game_id`, `user_id`, `rank_id`) VALUES
(1, 55, 1),
(1, 62, 5),
(1, 56, 7),
(1, 54, 9),
(1, 61, 11),
(2, 61, 25),
(5, 61, 25),
(2, 56, 27),
(2, 54, 28),
(3, 56, 29),
(3, 54, 30),
(3, 55, 31),
(3, 61, 31),
(4, 54, 39),
(4, 55, 40),
(4, 56, 40),
(4, 61, 40),
(4, 62, 41),
(5, 54, 46),
(5, 55, 46),
(5, 56, 46);

-- --------------------------------------------------------

--
-- Structure de la table `frequency`
--

CREATE TABLE `frequency` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `frequency`
--

INSERT INTO `frequency` (`id`, `name`) VALUES
(1, 'Débutant'),
(2, 'Intermédiaire'),
(3, 'Compétitif'),
(4, 'Chill'),
(5, 'Tryhard');

-- --------------------------------------------------------

--
-- Structure de la table `game`
--

CREATE TABLE `game` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `poster` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `game`
--

INSERT INTO `game` (`id`, `title`, `description`, `poster`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'CS:GO', 'Counter-Strike: Global Offensive est un jeu de tir à la première personne multijoueur en ligne basé sur le jeu d\'équipe développé par Valve Corporation. Il est sorti le 21 août 2012 sur PC et consoles. En 2017, Microsoft annonce que le jeu sur Xbox 360 sera compatible avec la Xbox One.', 'cs-go2.png', '', '2019-12-13 15:21:37', '2019-12-16 00:00:00'),
(2, 'Overwatch', 'Overwatch est un jeu vidéo de tir en vue subjective, en équipes, en ligne, développé et publié par Blizzard Entertainment. Le jeu est annoncé le 7 novembre 2014 à la BlizzCon, et est commercialisé le 24 mai 2016 sur Windows, PlayStation 4 et Xbox One et le 15 octobre 2019 sur Nintendo Switch.', 'overwatch2.jpg', '', '2019-12-13 15:21:37', NULL),
(3, 'PUBG', 'PlayerUnknown\'s Battlegrounds est un jeu vidéo multijoueur en ligne de type battle royale développé et édité par PUBG Corporation, une filiale de l\'éditeur Krafton Game Union. Il est disponible en accès anticipé sur Microsoft Windows à partir du 23 mars 2017, et la version 1.0 du jeu est sortie le 20 décembre 2017.', 'pubg.png', '', '2019-12-13 15:21:37', NULL),
(4, 'Apex Legends', 'Apex Legends est un jeu vidéo de type battle royale développé par Respawn Entertainment et édité par Electronic Arts. Il est publié en accès gratuit le 4 février 2019 sur Microsoft Windows, PlayStation 4 et Xbox One.', 'apex.jpg', '', '2019-12-13 15:21:37', NULL),
(5, 'League of Legends', 'League of Legends, anciennement nommé League of Legends: Clash of Fates est un jeu vidéo de type arène de bataille en ligne gratuit développé et édité par Riot Games sur Windows et Mac OS X.', 'league-of-legends.jpg', '', '2019-12-13 15:21:37', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `game_platform`
--

CREATE TABLE `game_platform` (
  `game_id` int(11) NOT NULL,
  `platform_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `guild`
--

CREATE TABLE `guild` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20191217143216', '2019-12-17 14:32:25');

-- --------------------------------------------------------

--
-- Structure de la table `platform`
--

CREATE TABLE `platform` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `platform`
--

INSERT INTO `platform` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'PC', '2019-12-13 15:21:37', NULL),
(2, 'Xbox', '2019-12-25 00:00:00', NULL),
(3, 'Playstation', '2019-12-13 15:21:37', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `rank`
--

CREATE TABLE `rank` (
  `id` int(11) NOT NULL,
  `games_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `rank`
--

INSERT INTO `rank` (`id`, `games_id`, `name`, `logo`, `created_at`, `updated_at`) VALUES
(1, 1, 'Silver I', 'csgo-silver-1.jpg', '2019-12-16 00:00:00', NULL),
(2, 1, 'Silver II', 'csgo-silver-2.jpg', '2019-12-13 15:21:37', NULL),
(3, 1, 'Silver III', 'csgo-silver-3.jpg', '2019-12-13 15:21:37', NULL),
(4, 1, 'Silver IV', 'csgo-silver-4.jpg', '2019-12-16 00:00:00', NULL),
(5, 1, 'Silver Elite', 'csgo-silver-5.jpg', '2019-12-13 15:21:37', NULL),
(6, 1, 'Silver Elite Master', 'csgo-silver-6.jpg', '2019-12-23 00:00:00', NULL),
(7, 1, 'Gold Nova I', 'csgo-gold-1.jpg', '2019-12-13 15:21:37', NULL),
(8, 1, 'Gold Nova II', 'csgo-gold-2.jpg', '2019-12-25 00:00:00', NULL),
(9, 1, 'Gold Nova III', 'csgo-gold-3.jpg', '2019-12-13 15:21:37', NULL),
(10, 1, 'Gold Nova Master', 'csgo-gold-4.jpg', '2019-12-25 00:00:00', NULL),
(11, 1, 'Master Guardian I', 'csgo-master-guardian-1.jpg\r\n', '2019-12-13 15:21:37', NULL),
(12, 1, 'Master Guardian II', 'csgo-master-guardian-2.jpg', '2019-12-25 00:00:00', NULL),
(13, 1, 'Master Guardian Elite', 'csgo-master-guardian-elite.jpg', '2019-12-13 15:21:37', NULL),
(14, 1, 'Distinguished Master Guardian', 'csgo-distinguished-master-guardian.jpg', '2019-12-25 00:00:00', NULL),
(15, 1, 'Legendary Eagle', 'csgo-legendary-eagle.jpg', '2019-12-13 15:21:37', NULL),
(16, 1, 'Legendary Eagle Master', 'csgo-legendary-eagle-master.jpg', '2019-12-25 00:00:00', NULL),
(17, 1, 'Master Guardian I', 'csgo-master-guardian-1.jpg', '2019-12-25 00:00:00', NULL),
(18, 1, 'Master Guardian II', 'csgo-master-guardian-1.jpg', '2019-12-25 00:00:00', NULL),
(19, 1, 'Supreme Master First Class', 'csgo-supreme-master-first.jpg', '2019-12-13 15:21:37', NULL),
(20, 1, 'Global Elite', 'csgo-global-elite.jpg', '2019-12-25 00:00:00', NULL),
(21, 2, 'Bronze', 'overwatch-bronze.png', '2019-12-13 15:21:37', NULL),
(22, 2, 'Silver', 'overwatch-silver.png', '2019-12-25 00:00:00', NULL),
(23, 2, 'Gold', 'overwatch-gold.png', '2019-12-25 00:00:00', NULL),
(24, 2, 'Platinium', 'overwatch-platinium.png', '2019-12-25 00:00:00', NULL),
(25, 2, 'Diamond', 'overwatch-diamond.png', '2019-12-25 00:00:00', NULL),
(26, 2, 'Master', 'overwatch-master.png', '2019-12-25 00:00:00', NULL),
(27, 2, 'Grand Master', 'overwatch-grandmaster.png', '2019-12-25 00:00:00', NULL),
(28, 2, 'Top 500', 'overwatch-top500.png', '2019-12-25 00:00:00', NULL),
(29, 3, 'Bronze', 'pubg-bronze.png', '2019-12-25 00:00:00', NULL),
(30, 3, 'Silver', 'pubg-silver.png', '2019-12-25 00:00:00', NULL),
(31, 3, 'Gold', 'pubg-gold.png', '2019-12-13 15:21:37', NULL),
(32, 3, 'Platinium', 'pubg-platinium.png', '2019-12-25 00:00:00', NULL),
(33, 3, 'Diamond', 'pubg-diamond.png', '2019-12-13 15:21:37', NULL),
(34, 3, 'Elite', 'pubg-elite.png', '2019-12-25 00:00:00', NULL),
(35, 3, 'Master', 'pubg-master.png', '2019-12-25 00:00:00', NULL),
(36, 3, 'Grand Master', 'pubg-grandmaster.png', '2019-12-25 00:00:00', NULL),
(37, 4, 'Bronze', 'apex-bronze.png', '2019-12-25 00:00:00', NULL),
(38, 4, 'Silver', 'apex-silver.png', '2019-12-25 00:00:00', NULL),
(39, 4, 'Gold', 'apex-gold.png', '2019-12-13 15:21:37', NULL),
(40, 4, 'Platinium', 'apex-platinium.png', '2019-12-25 00:00:00', NULL),
(41, 4, 'Diamond', 'apex-diamond.png', '2019-12-25 00:00:00', NULL),
(42, 5, 'Bronze', 'lol-bronze.png', '2019-12-25 00:00:00', NULL),
(43, 5, 'Silver', 'lol-silver.png', '2019-12-25 00:00:00', NULL),
(44, 4, 'Predator', 'apex-predator.png', '2019-12-25 00:00:00', NULL),
(45, 5, 'Iron', 'lol-iron.png', '2019-12-25 00:00:00', NULL),
(46, 5, 'Gold', 'lol-gold.png', '2019-12-25 00:00:00', NULL),
(47, 5, 'Platinium', 'lol-platinium.png', '2019-12-25 00:00:00', NULL),
(48, 5, 'Diamond', 'lol-diamond.png', '2019-12-25 00:00:00', NULL),
(49, 5, 'Grand Master', 'lol-grandmaster.png', '2019-12-13 15:21:37', NULL),
(50, 5, 'Challenger', 'lol-challenger.png', '2019-12-25 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `guild_id` int(11) DEFAULT NULL,
  `frequency_id` int(11) DEFAULT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth` datetime NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `guild_id`, `frequency_id`, `username`, `roles`, `password`, `description`, `firstname`, `lastname`, `birth`, `email`, `city`, `longitude`, `latitude`, `mobile`, `avatar`, `created_at`, `updated_at`, `status`) VALUES
(54, NULL, 1, 'Jihel', '["ROLE_USER"]', '$argon2id$v=19$m=65536,t=4,p=1$Ex3CV/lMBZUtk5yqTTNNqg$XsQYOsKp/qpi60R2FQUHLuyNjIN9SYcpFRx6PG7jIXA', 'Je suis débutant aider moi', NULL, NULL, '1998-01-28 00:00:00', 'Julian@gmail.com', NULL, NULL, NULL, NULL, NULL, '2019-12-18 11:15:40', '2019-12-18 18:35:59', 1),
(55, NULL, 4, 'Damien', '["ROLE_USER"]', '$argon2id$v=19$m=65536,t=4,p=1$KkvD9un2KOgEOwLpqoV8mw$a//+W9TKKPQSkLvnedq4ZWrRkyc72f9X7dIwh9qaBJ4', 'Ici pour carry ', NULL, NULL, '2019-12-03 00:00:00', 'damiendescroizette@gmail.com', NULL, NULL, NULL, NULL, NULL, '2019-12-18 11:16:23', '2019-12-18 17:01:05', 1),
(56, NULL, 5, 'Brice', '["ROLE_USER"]', '$argon2id$v=19$m=65536,t=4,p=1$BkinObQTocBlz+js1a1mKQ$d8fRuav35RIddSNamcbE+ZRccPa2EYhRmqs8w/tv8I0', 'Road to Diamond.', NULL, NULL, '1990-08-13 00:00:00', 'brice@gmail.com', NULL, NULL, NULL, NULL, NULL, '2019-12-18 11:17:48', '2019-12-18 15:46:05', 1),
(57, NULL, NULL, 'Jean', '["ROLE_USER"]', '$argon2id$v=19$m=65536,t=4,p=1$ceksDVQiL3N62B+5oRkn7Q$4ed+0LwI472HWYaZBZItRkM8PnLrTVkLbvWstwGw0qc', NULL, NULL, NULL, '2019-11-25 00:00:00', 'jean@jean.fr', NULL, NULL, NULL, NULL, NULL, '2019-12-18 11:39:57', NULL, 0),
(61, NULL, NULL, 'jeanot', '["ROLE_USER"]', '$argon2id$v=19$m=65536,t=4,p=1$NHvrzB8GweZfPdnvpZdPRg$3/iqyEg2SAh34kpTKRWPTKGaKZ7GZ+liLvQHbb1kHlw', NULL, NULL, NULL, '2019-12-10 00:00:00', 'jeanot@jean.fr', NULL, NULL, NULL, NULL, NULL, '2019-12-18 12:01:09', NULL, 1),
(62, NULL, 5, 'John', '["ROLE_USER"]', '$argon2id$v=19$m=65536,t=4,p=1$njB3yB4wPRbmO/HQYsL+lw$ioquMzQJpwG9WQHWZITBYfze87c6VefDtPsuRBTffKM', 'Hello la Team! Je suis là pour tryhard, pas l\'temps de niaiser.', NULL, NULL, '1990-01-01 00:00:00', 'john@gmail.com', NULL, NULL, NULL, NULL, NULL, '2019-12-19 10:06:48', '2019-12-19 10:10:45', 1),
(63, NULL, NULL, 'Tony', '["ROLE_USER"]', '$argon2id$v=19$m=65536,t=4,p=1$R08TOw9S/GdVhT0hBzpjtQ$0cl1U+CohQ/DN36LViJMS5BKCRPa0xrUr/nY/vmo2gA', NULL, NULL, NULL, '2019-12-04 00:00:00', 'tony@tony.tony', NULL, NULL, NULL, NULL, NULL, '2019-12-19 10:08:01', NULL, 0);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `favorite_game`
--
ALTER TABLE `favorite_game`
  ADD PRIMARY KEY (`game_id`,`user_id`),
  ADD KEY `IDX_CD2D28B37616678F` (`rank_id`),
  ADD KEY `IDX_CD2D28B3E48FD905` (`game_id`),
  ADD KEY `IDX_CD2D28B3A76ED395` (`user_id`);

--
-- Index pour la table `frequency`
--
ALTER TABLE `frequency`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `game_platform`
--
ALTER TABLE `game_platform`
  ADD PRIMARY KEY (`game_id`,`platform_id`),
  ADD KEY `IDX_92162FEDE48FD905` (`game_id`),
  ADD KEY `IDX_92162FEDFFE6496F` (`platform_id`);

--
-- Index pour la table `guild`
--
ALTER TABLE `guild`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `platform`
--
ALTER TABLE `platform`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8879E8E597FFC673` (`games_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`),
  ADD KEY `IDX_8D93D6495F2131EF` (`guild_id`),
  ADD KEY `IDX_8D93D64994879022` (`frequency_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `frequency`
--
ALTER TABLE `frequency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `game`
--
ALTER TABLE `game`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `guild`
--
ALTER TABLE `guild`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `platform`
--
ALTER TABLE `platform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `rank`
--
ALTER TABLE `rank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `favorite_game`
--
ALTER TABLE `favorite_game`
  ADD CONSTRAINT `FK_CD2D28B37616678F` FOREIGN KEY (`rank_id`) REFERENCES `rank` (`id`),
  ADD CONSTRAINT `FK_CD2D28B3A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_CD2D28B3E48FD905` FOREIGN KEY (`game_id`) REFERENCES `game` (`id`);

--
-- Contraintes pour la table `game_platform`
--
ALTER TABLE `game_platform`
  ADD CONSTRAINT `FK_92162FEDE48FD905` FOREIGN KEY (`game_id`) REFERENCES `game` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_92162FEDFFE6496F` FOREIGN KEY (`platform_id`) REFERENCES `platform` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `rank`
--
ALTER TABLE `rank`
  ADD CONSTRAINT `FK_8879E8E597FFC673` FOREIGN KEY (`games_id`) REFERENCES `game` (`id`);

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D6495F2131EF` FOREIGN KEY (`guild_id`) REFERENCES `guild` (`id`),
  ADD CONSTRAINT `FK_8D93D64994879022` FOREIGN KEY (`frequency_id`) REFERENCES `frequency` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;