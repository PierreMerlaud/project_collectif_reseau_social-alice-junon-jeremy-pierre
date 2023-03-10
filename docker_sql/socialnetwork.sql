-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 28, 2023 at 05:52 PM
-- Server version: 8.0.32-0ubuntu0.22.04.2
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `socialnetwork`
--

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `id` int UNSIGNED NOT NULL,
  `followed_user_id` int UNSIGNED NOT NULL,
  `following_user_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `followers`
--

INSERT INTO `followers` (`id`, `followed_user_id`, `following_user_id`) VALUES
(3, 2, 7),
(4, 2, 5),
(6, 1, 5),
(7, 7, 5),
(9, 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `post_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `post_id`) VALUES
(34, 1, 8),
(35, 1, 9),
(21, 3, 8),
(25, 5, 2),
(31, 5, 6),
(24, 5, 7),
(17, 5, 9),
(27, 5, 11),
(12, 7, 10);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `created` datetime NOT NULL,
  `parent_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `content`, `created`, `parent_id`) VALUES
(1, 5, '#politique ??trang??re Joe Biden, le pr??sident des Am??ricains \r\n\r\n', '2020-02-05 18:19:12', NULL),
(2, 5, 'Le gouvernement a lanc??, le 3 septembre, un plan de relance historique de 100 milliards d???euros pour redresser l???#??conomie.', '2020-04-06 18:19:12', NULL),
(3, 5, 'Dans une d??finition large de la notion du #social, on peut l\'entendre comme l\'expression de l\'existence de relations et de communication entre les ??tres vivants.', '2020-07-12 18:21:49', NULL),
(4, 5, 'La #soci??t?? (du latin socius : compagnon, associ??) est un groupe d\'individus unifi??s par un r??seau de relations, de traditions et d\'institutions. ', '2020-08-04 18:21:49', NULL),
(5, 5, 'La #technologie est l\'??tude des outils et des techniques. Le terme d??signe les observations sur l\'??tat de l\'art aux diverses p??riodes historiques, en mati??re d\'outils et de savoir-faire. Il comprend l\'art, l\'artisanat, les m??tiers, les sciences appliqu??es et ??ventuellement les connaissances.', '2020-09-25 18:24:30', NULL),
(6, 5, 'En sociologie, comme en ??thologie, la #culture est d??finie de fa??on plus ??troite comme ?? ce qui est commun ?? un groupe d\'individus ?? et comme ?? ce qui le soude ??, c\'est-??-dire ce qui est appris, transmis, produit et invent??. Ainsi, pour une organisation internationale comme l\'UNESCO : ?? Dans son sens le plus large, la culture peut aujourd???hui ??tre consid??r??e comme l\'ensemble des traits distinctifs, spirituels, mat??riels, intellectuels et affectifs, qui caract??risent une soci??t?? ou un groupe social. Elle englobe, outre les arts, les lettres et les sciences, les modes de vie, les lois, les syst??mes de valeurs, les traditions et les croyances ??. Ce ?? r??servoir commun ?? ??volue dans le temps par et dans les formes des ??changes. Il se constitue en de multiples mani??res distinctes d\'??tre, de penser, d\'agir et de communiquer en soci??t??.', '2020-10-15 00:35:42', NULL),
(7, 5, 'On peut d??finir le jeu comme une activit?? d\'ordre psychique ou bien physique pens??e pour divertir et improductive ?? court terme. Le jeu entra??ne des d??penses d\'??nergie et de moyens mat??riels, sans cr??er aucune richesse nouvelle. La plupart des individus qui s\'y engagent n\'en retirent que du plaisir, bien que certains puissent en obtenir des avantages mat??riels. De ce fait, Johan Huizinga remarque que de tr??s nombreuses activit??s humaines peuvent s\'assimiler ?? des jeux. La difficult?? de circonscrire la d??finition du jeu pr??sente un int??r??t pour la philosophie. ', '2020-10-25 00:35:39', NULL),
(8, 5, 'Un #jeu de r??le est une technique ou activit??, par laquelle une personne interpr??te le r??le d\'un personnage (r??el ou imaginaire) dans un environnement fictif. Le participant agit ?? travers ce r??le par des actions physiques ou imaginaires, par des actions narratives (dialogues improvis??s, descriptions, jeu) et par des prises de d??cision sur le d??veloppement du personnage et de son histoire.', '2020-11-10 18:26:12', NULL),
(9, 1, 'Le #f??minisme est un ensemble de mouvements et d\'id??es philosophiques qui partagent un but commun : d??finir, promouvoir et atteindre l\'??galit?? #politique, ??conomique, culturelle, sociale et juridique entre les femmes et les hommes. Le f??minisme a donc pour objectif d\'abolir, dans ces diff??rents domaines, les in??galit??s homme-femme dont les femmes sont les principales victimes, et ainsi de promouvoir les droits des femmes dans la soci??t?? civile et dans la vie priv??e. ', '2020-11-20 18:26:50', NULL),
(10, 7, 'Le #sport est un ensemble d\'exercices physiques se pratiquant sous forme de jeux individuels ou collectifs pouvant donner lieu ?? des comp??titions. Le sport est un ph??nom??ne presque universel dans le temps et dans l\'espace humain. La Gr??ce antique, la Rome antique, Byzance, l\'Occident m??di??val puis moderne, mais aussi l\'Am??rique pr??colombienne ou l\'Asie, sont tous marqu??s par l\'importance du sport. Certaines p??riodes sont surtout marqu??es par des interdits. ', '2020-11-30 18:31:16', NULL),
(11, 5, 'Bonjour, j\'aime #AdaTechSchool.', '2023-02-24 11:23:45', NULL),
(12, 5, 'Salut je suis #Mehmet', '2023-02-24 17:36:46', NULL),
(13, 2, 'J\'adore le #sport ! Que ce soit la course ?? pied, le football ou la natation, j\'aime me mettre au d??fi et repousser mes limites. Le sport me permet de me vider la t??te et de me sentir bien dans mon corps.', '2023-02-28 14:36:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts_tags`
--

CREATE TABLE `posts_tags` (
  `id` int UNSIGNED NOT NULL,
  `post_id` int UNSIGNED NOT NULL,
  `tag_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts_tags`
--

INSERT INTO `posts_tags` (`id`, `post_id`, `tag_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 6),
(6, 6, 7),
(7, 7, 8),
(8, 8, 8),
(9, 9, 9),
(10, 10, 5),
(11, 9, 1),
(12, 1, 1),
(13, 1, 8),
(14, 11, 10),
(15, 12, 11),
(16, 13, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int UNSIGNED NOT NULL,
  `label` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `label`) VALUES
(10, 'AdaTechSchool'),
(7, 'culture'),
(2, '??conomie'),
(9, 'f??minisme'),
(8, 'jeux'),
(11, 'Mehmet'),
(1, 'politique'),
(3, 'social'),
(4, 'soci??t??'),
(5, 'sport'),
(6, 'technologie');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `alias`, `avatar`) VALUES
(1, 'ada@test.org', '6384e2b2184bcbf58eccf10ca7a6563c', 'ada', './avatars/avatar1.png'),
(2, 'alex@test.org', '6384e2b2184bcbf58eccf10ca7a6563c', 'Alexandra', './avatars/avatar2.png'),
(3, 'bea@test.org', '6384e2b2184bcbf58eccf10ca7a6563c', 'B??atrice', './avatars/avatar3.png'),
(4, 'zoe@test.org', '6384e2b2184bcbf58eccf10ca7a6563c', 'Zo??', './avatars/avatar4.png'),
(5, 'felicie@test.org', '6384e2b2184bcbf58eccf10ca7a6563c', 'F??licie', './avatars/avatar5.png'),
(7, 'jeremyzynger@gmail.com', '6384e2b2184bcbf58eccf10ca7a6563c', 'Jeremy', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_users_has_users_users2_idx` (`following_user_id`),
  ADD KEY `fk_users_has_users_users1_idx` (`followed_user_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`post_id`),
  ADD KEY `fk_users_has_posts_posts1_idx` (`post_id`),
  ADD KEY `fk_users_has_posts_users1_idx` (`user_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_posts_users_idx` (`user_id`),
  ADD KEY `fk_posts_posts1_idx` (`parent_id`);

--
-- Indexes for table `posts_tags`
--
ALTER TABLE `posts_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_posts_has_tags_tags1_idx` (`tag_id`),
  ADD KEY `fk_posts_has_tags_posts1_idx` (`post_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `label_UNIQUE` (`label`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD UNIQUE KEY `alias_UNIQUE` (`alias`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `followers`
--
ALTER TABLE `followers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `posts_tags`
--
ALTER TABLE `posts_tags`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `followers`
--
ALTER TABLE `followers`
  ADD CONSTRAINT `fk_users_has_users_users1` FOREIGN KEY (`followed_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_users_has_users_users2` FOREIGN KEY (`following_user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `fk_users_has_posts_posts1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `fk_users_has_posts_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `fk_posts_posts1` FOREIGN KEY (`parent_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `fk_posts_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `posts_tags`
--
ALTER TABLE `posts_tags`
  ADD CONSTRAINT `fk_posts_has_tags_posts1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `fk_posts_has_tags_tags1` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
