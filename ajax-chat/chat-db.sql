-- --------------------------------------------------------
-- Hôte :                        127.0.0.1
-- Version du serveur:           5.7.11 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             9.2.0.4961
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Export de la structure de la base pour chat
CREATE DATABASE IF NOT EXISTS `chat` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `chat`;


-- Export de la structure de table chat. messages
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(50) DEFAULT NULL,
  `content` text,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COMMENT='La table qui va contenir tous les messages voyons !';

-- Export de données de la table chat.messages : 46 rows
DELETE FROM `messages`;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` (`id`, `author`, `content`, `created_at`) VALUES
	(14, 'Tiara Wiza', 'Est odio animi et voluptatem voluptas et et nobis beatae laborum tempora quia aliquid cum aut aperiam exercitationem.', '2017-07-24 16:03:27'),
	(15, 'Tiara Wiza', 'Praesentium molestiae ut repudiandae et nihil ut at consectetur aut itaque sit.', '2017-07-24 09:38:48'),
	(16, 'Wilford Quitzon', 'Culpa perferendis tenetur corporis deserunt fugit rem nihil aut sunt id fugit ut.', '2017-07-24 08:13:35'),
	(17, 'Wilford Quitzon', 'Aspernatur molestiae impedit consequatur aut quia debitis molestiae ratione veniam dolorem molestiae optio debitis neque aut maiores aut quasi atque.', '2017-07-24 10:05:02'),
	(18, 'Amelie Ullrich', 'Iusto dolor sunt vel excepturi molestiae et aut voluptatem sint eos quasi.', '2017-07-24 21:00:36'),
	(19, 'Amelie Ullrich', 'Provident eos iure accusamus aut deserunt molestiae officiis eligendi quo laboriosam odio non unde rerum neque et ipsum non.', '2017-07-24 06:29:11'),
	(20, 'Prof. Einar Beer', 'Rerum nihil expedita sed corrupti consequuntur soluta quisquam qui accusamus animi quasi natus error expedita ratione odit voluptatem iure consequuntur quia non.', '2017-07-24 19:11:28'),
	(21, 'Prof. Einar Beer', 'Quasi consectetur nisi sequi cupiditate et amet quia sed et adipisci et non voluptatibus iusto voluptate et sit quo consequuntur dignissimos.', '2017-07-24 06:40:54'),
	(22, 'Cielo Feest', 'Impedit quas fugit est suscipit harum velit facere itaque placeat maiores nesciunt et ad ipsa atque.', '2017-07-24 19:09:23'),
	(23, 'Cielo Feest', 'Minus minus odit autem dolorem nihil sit aut provident corporis earum libero nihil placeat.', '2017-07-24 04:17:50'),
	(24, 'Cielo Feest', 'Rem similique eum nobis qui velit expedita omnis natus rem excepturi ex quisquam nobis nobis.', '2017-07-24 17:21:48'),
	(25, 'Ms. Ora Rohan Sr.', 'Ratione occaecati dolores ducimus nesciunt quae quae fugit nemo explicabo.', '2017-07-24 17:41:03'),
	(26, 'Ms. Ora Rohan Sr.', 'Earum nihil blanditiis quia nihil ut vel dolor dicta qui vel quidem sapiente consectetur explicabo est numquam doloremque quis.', '2017-07-23 23:44:11'),
	(27, 'Ms. Ora Rohan Sr.', 'Dicta ea quos tempore vel repellat officia voluptas eos rerum aut cumque dolore.', '2017-07-24 02:17:06'),
	(28, 'Ms. Ora Rohan Sr.', 'Voluptas quisquam cumque ipsum consectetur eius eius possimus pariatur delectus ducimus accusantium error ut quia.', '2017-07-24 06:52:03'),
	(29, 'Randall Schamberger V', 'Aliquid laudantium sint officiis corporis minus ut aut rerum voluptatem voluptatem nihil est quisquam.', '2017-07-24 20:46:52'),
	(30, 'Randall Schamberger V', 'At quaerat at tenetur voluptatum enim voluptates totam voluptas aut cupiditate.', '2017-07-24 00:08:39'),
	(31, 'Randall Schamberger V', 'Cum sapiente non et laboriosam laudantium quod ea temporibus saepe omnis incidunt aut ut cum velit dolorem non in iste.', '2017-07-24 14:49:47'),
	(32, 'Dr. Vicenta Sawayn', 'Aliquid commodi temporibus illum et quibusdam molestiae voluptatem deserunt suscipit.', '2017-07-24 21:45:58'),
	(33, 'Dr. Vicenta Sawayn', 'Qui eos vel debitis unde porro quaerat exercitationem harum dolores est laborum temporibus.', '2017-07-24 16:45:25'),
	(34, 'Dr. Vicenta Sawayn', 'Et assumenda aut delectus laboriosam fuga veniam aut iure repudiandae quo suscipit.', '2017-07-24 03:29:29'),
	(35, 'Dr. Vicenta Sawayn', 'Non quidem maiores earum voluptatem ipsam esse rerum repudiandae et maxime.', '2017-07-24 10:42:56'),
	(36, 'Fermin Anderson DVM', 'Molestiae id pariatur nemo minima harum minus voluptatem repudiandae atque nihil veritatis.', '2017-07-24 21:59:42'),
	(37, 'Fermin Anderson DVM', 'Sit est saepe dolorem sed culpa cum doloribus voluptatem dignissimos voluptates maiores voluptas deserunt aut iusto non autem.', '2017-07-24 22:10:17'),
	(38, 'Fermin Anderson DVM', 'Vero iste quod voluptas non ratione expedita unde dolorem est eveniet ut voluptatem impedit et eum dolor rem quia.', '2017-07-24 12:49:28'),
	(39, 'Destini Ortiz', 'Consequatur et dolorem ab quidem quam maiores voluptas corporis assumenda unde voluptas sint dolores eos sapiente suscipit commodi accusantium exercitationem.', '2017-07-23 23:28:31'),
	(40, 'Destini Ortiz', 'Itaque vel molestiae aut aut ut esse necessitatibus voluptatum assumenda vel eaque ad neque quisquam ipsam.', '2017-07-24 04:59:15'),
	(41, 'Destini Ortiz', 'Aut velit libero sequi qui dignissimos sit omnis beatae omnis temporibus ut aut similique officia est autem suscipit consectetur.', '2017-07-24 13:20:52'),
	(42, 'Isidro Hilpert', 'Et sed sed aut amet molestias repellendus inventore ipsa ut earum incidunt beatae voluptas voluptate magnam.', '2017-07-24 01:20:52'),
	(43, 'Isidro Hilpert', 'Voluptas voluptas eos ullam similique quis architecto laboriosam mollitia laboriosam nostrum a voluptatibus molestiae.', '2017-07-24 04:29:34'),
	(44, 'Isidro Hilpert', 'Odio porro ex molestias et sed velit qui ducimus maiores totam non atque nihil iure pariatur voluptas eligendi nisi.', '2017-07-24 15:48:05'),
	(45, 'Mr. Chandler Reinger', 'Voluptatem quisquam dolor impedit nihil possimus iure eum qui suscipit.', '2017-07-24 01:24:46'),
	(46, 'Mr. Chandler Reinger', 'Sint quis autem aut voluptas temporibus eos velit fuga facere porro est dolorum quam quos quo enim.', '2017-07-24 21:13:49'),
	(47, 'Mr. Chandler Reinger', 'Officiis porro labore consectetur ratione et qui amet asperiores voluptatem dolorem.', '2017-07-24 12:48:06'),
	(50, 'Joseph', 'Bonjour à tous !', '2017-07-25 01:23:55'),
	(49, 'Lior', 'Mon message trop bien !', '2017-07-25 01:01:28'),
	(51, 'Jeanne', 'Salut les amis !', '2017-07-25 01:24:54'),
	(52, 'Lior', 'Est-ce que ça marche ?', '2017-07-25 01:41:13'),
	(53, 'Lior', 'nouveau test', '2017-07-25 01:42:04'),
	(54, 'Lior', 'Nouveau test encore', '2017-07-25 01:42:15'),
	(55, 'Lior', 'et encore', '2017-07-25 01:42:16'),
	(56, 'Lior', 'et encore !', '2017-07-25 01:42:18'),
	(57, 'Joseph', 'Bonjour à tous !', '2017-07-25 01:42:47'),
	(58, 'Jeanne', 'Bien salut mon Joseph !', '2017-07-25 01:44:00'),
	(59, 'Lior', 'Bonjour à tous !', '2017-07-25 01:44:13'),
	(60, 'Jeanne', 'Salut Lior, comment vas-tu ?', '2017-07-25 01:44:19');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
