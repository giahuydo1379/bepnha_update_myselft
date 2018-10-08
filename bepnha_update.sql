-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.34-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for bepnha_update
CREATE DATABASE IF NOT EXISTS `bepnha_update` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bepnha_update`;

-- Dumping structure for table bepnha_update.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL,
  `name` varchar(250) NOT NULL,
  `icon_location` varchar(250) NOT NULL,
  `parent_cate` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `disable` tinyint(4) NOT NULL,
  `style` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- Dumping data for table bepnha_update.categories: ~10 rows (approximately)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `type`, `name`, `icon_location`, `parent_cate`, `created_by`, `modified_by`, `created_at`, `updated_at`, `disable`, `style`) VALUES
	(1, 1, 'Prof. Lillie Rempel', 'category/2018/12/30/Hildegard Baumbach Jr.', 0, 1, NULL, '2018-10-08 10:14:16', '2018-10-08 10:14:16', 1, 2),
	(2, 1, 'Dr. Marcos Stroman', 'category/2018/1/1/Prof. Britney Prohaska', 0, 1, NULL, '2018-10-08 10:14:16', '2018-10-08 10:14:16', 0, 1),
	(3, 2, 'Jamie Donnelly PhD', 'category/2018/12/30/Ms. Laurie Douglas', 0, 1, NULL, '2018-10-08 10:14:16', '2018-10-08 10:14:16', 1, 2),
	(4, 1, 'Prof. Lorenz Altenwerth', 'category/2018/12/30/Rashad White', 0, 1, NULL, '2018-10-08 10:14:16', '2018-10-08 10:14:16', 0, 1),
	(5, 1, 'Penelope Boyer', 'category/2018/12/1/Timmothy Schiller', 0, 1, NULL, '2018-10-08 10:14:16', '2018-10-08 10:14:16', 0, 1),
	(6, 2, 'Grady Beatty PhD', 'category/2018/1/1/Lolita Schumm', 0, 1, NULL, '2018-10-08 10:14:16', '2018-10-08 10:14:16', 1, 1),
	(7, 2, 'Dr. Durward Schroeder Sr.', 'category/2018/12/30/Dalton Glover III', 0, 1, NULL, '2018-10-08 10:14:16', '2018-10-08 10:14:16', 1, 2),
	(8, 1, 'Mr. Milford Leannon', 'category/2018/1/1/Francesca Blick', 0, 1, NULL, '2018-10-08 10:14:16', '2018-10-08 10:14:16', 0, 2),
	(9, 1, 'London Monahan', 'category/2018/1/30/Zackery Barton', 0, 1, NULL, '2018-10-08 10:14:16', '2018-10-08 10:14:16', 0, 1),
	(10, 2, 'Nikita Hudson', 'category/2018/12/1/Mr. Dante Brown IV', 0, 1, NULL, '2018-10-08 10:14:16', '2018-10-08 10:14:16', 1, 1),
	(11, 2, 'Wilhelm Grady', 'category/2018/1/30/Wendell Kilback', 0, 1, NULL, '2018-10-08 10:14:16', '2018-10-08 10:14:16', 1, 2),
	(12, 2, 'Toy Weimann DDS', 'category/2018/1/30/Martin Christiansen', 0, 1, NULL, '2018-10-08 10:14:16', '2018-10-08 10:14:16', 0, 1),
	(13, 1, 'Antwon Feeney', 'category/2018/1/30/Meghan O\'Keefe', 0, 1, NULL, '2018-10-08 10:14:16', '2018-10-08 10:14:16', 0, 1),
	(14, 1, 'Adelia Wintheiser', 'category/2018/12/30/Aiden Heller', 0, 1, NULL, '2018-10-08 10:14:16', '2018-10-08 10:14:16', 1, 2),
	(15, 2, 'Chad Pfeffer', 'category/2018/12/1/Ray Borer', 0, 1, NULL, '2018-10-08 10:14:16', '2018-10-08 10:14:16', 0, 1),
	(16, 1, 'Elda Johnson', 'category/2018/1/1/Sid Herzog', 0, 1, NULL, '2018-10-08 10:14:16', '2018-10-08 10:14:16', 1, 1),
	(17, 1, 'Gregorio Casper', 'category/2018/1/1/Dr. Verda Pouros MD', 0, 1, NULL, '2018-10-08 10:14:16', '2018-10-08 10:14:16', 0, 1),
	(18, 2, 'Marguerite Dietrich', 'category/2018/12/30/Estevan Hyatt Sr.', 0, 1, NULL, '2018-10-08 10:14:16', '2018-10-08 10:14:16', 1, 1),
	(19, 2, 'Prof. Geovanny Pfeffer II', 'category/2018/12/1/Soledad Ankunding', 0, 1, NULL, '2018-10-08 10:14:16', '2018-10-08 10:14:16', 1, 2),
	(20, 2, 'Prof. Alvina Keebler DVM', 'category/2018/1/30/Mr. Jovani Bartell', 0, 1, NULL, '2018-10-08 10:14:16', '2018-10-08 10:14:16', 0, 1);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table bepnha_update.items
CREATE TABLE IF NOT EXISTS `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `cheft` varchar(250) DEFAULT NULL,
  `description` longtext NOT NULL,
  `video_location` varchar(250) NOT NULL,
  `image_location` varchar(250) NOT NULL,
  `background_location` varchar(250) DEFAULT NULL,
  `duration` varchar(20) DEFAULT NULL,
  `time_to_done` varchar(20) DEFAULT NULL,
  `ingredients` varchar(250) DEFAULT NULL,
  `ingredients_2` varchar(250) DEFAULT NULL,
  `steps` text,
  `level` int(11) DEFAULT NULL,
  `note` text,
  `pcategory_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `view_count` int(11) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `is_featured` tinyint(3) DEFAULT NULL,
  `is_new` tinyint(3) DEFAULT NULL,
  `is_for_you` tinyint(3) DEFAULT NULL,
  `is_like` tinyint(3) DEFAULT NULL,
  `is_home` tinyint(3) DEFAULT NULL,
  `disable` tinyint(3) DEFAULT NULL,
  `session_in_day` tinyint(4) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- Dumping data for table bepnha_update.items: ~0 rows (approximately)
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` (`id`, `name`, `cheft`, `description`, `video_location`, `image_location`, `background_location`, `duration`, `time_to_done`, `ingredients`, `ingredients_2`, `steps`, `level`, `note`, `pcategory_id`, `category_id`, `created_by`, `modified_by`, `created_at`, `updated_at`, `view_count`, `ordering`, `is_featured`, `is_new`, `is_for_you`, `is_like`, `is_home`, `disable`, `session_in_day`, `type`) VALUES
	(1, 'Dr. Aubree Kihn', 'Prof. Malcolm Bergnaum V', 'Hic aut ad in tenetur saepe. Nemo sit aut qui accusamus. Sed et sit ipsam tempore sapiente. Debitis impedit culpa soluta neque.', '2018/1/1/Ms. Ruby Hegmann', 'videos/2018/1/1/Rogelio Nader', NULL, '24:60', '24:1', 'Est iusto cumque eius facilis natus et. Illum blanditiis saepe non cupiditate. Quia sit sequi cupiditate ea.', 'Assumenda tempore a vel dicta ex consequatur consequuntur voluptatum. Aspernatur ipsa aut ab harum quam. Est eum voluptatum voluptatem dolorem molestiae.', 'Ut nemo rerum dignissimos ipsam consectetur animi. Libero quis qui necessitatibus quia temporibus dolorum earum.', 1, 'Aut eum beatae quasi recusandae est aut quas. Ea maxime sunt suscipit. Dolorem sequi est enim eum dolorem maiores qui debitis. Doloremque aut nihil est voluptatem.', 10, 1, 1, NULL, '2018-10-08 10:28:19', '2018-10-08 10:28:19', 200, 0, 0, 0, 0, 1, 0, 0, 3, 1),
	(2, 'Jannie Fadel DDS', 'Neil Bergnaum', 'Optio accusantium commodi deleniti blanditiis fugiat. Deserunt eveniet perspiciatis qui officia ut quia quo. In expedita facere laudantium.', '2018/1/1/Wiley Considine', 'videos/2018/1/1/Mercedes Weber Jr.', NULL, '0:1', '0:60', 'Numquam veniam eligendi porro sint. Labore ex delectus qui ut. Tempora quia id esse aut.', 'Consequatur eum numquam dolor non vel dignissimos ex. Ut cumque et dolor libero ex corporis et. Laboriosam commodi et accusamus eveniet at quaerat.', 'Id commodi architecto voluptas quas deleniti. Velit maxime est labore hic rerum. Dignissimos aperiam expedita molestiae nihil vero repudiandae molestiae. Molestias molestiae doloribus veniam autem.', 1, 'Itaque mollitia exercitationem sint adipisci ea est excepturi. Cupiditate odio et in eveniet nemo tempore vitae.', 1, 1, 1, NULL, '2018-10-08 10:28:19', '2018-10-08 10:28:19', 200, 0, 1, 0, 1, 0, 0, 1, 3, 2),
	(3, 'Dr. Theo Willms', 'Hugh Terry', 'Et esse libero aut qui adipisci consequatur minima quia. Eligendi cum assumenda iste qui qui similique. Est ut fugiat minima.', '2018/1/1/Shaniya Blick', 'videos/2018/12/1/Estevan Schaefer', NULL, '24:60', '24:60', 'Atque omnis velit sint voluptas dicta minus sint. Dolorum assumenda maiores quo rerum fugit. Dolorem aut nisi voluptatem rerum et voluptas. Repellat corporis tempora quo voluptas explicabo a ea.', 'Ipsa est delectus qui voluptatem. Laboriosam non perferendis alias quia ut veniam illo. Doloremque odit reprehenderit rerum in dicta eum est aut. Eos non aut eum nesciunt natus.', 'Eos a inventore magni et non quis. Libero nemo omnis ut non. Architecto velit perferendis commodi harum labore.', 5, 'Aut voluptates omnis quos omnis esse. Quos non temporibus ducimus aut quia quae. Ducimus occaecati maxime consequatur omnis praesentium quis neque.', 10, 1, 1, NULL, '2018-10-08 10:28:19', '2018-10-08 10:28:19', 200, 0, 0, 0, 1, 0, 0, 0, 0, 2),
	(4, 'Miss Duane Feest', 'Lavinia Kuvalis', 'Ut dignissimos fugiat suscipit. Optio dolor perspiciatis voluptatem hic eveniet doloremque. Vel reprehenderit qui et natus. A nihil et labore asperiores.', '2018/12/30/Ms. Mylene Jacobson III', 'videos/2018/12/30/Leone Collier', NULL, '0:60', '24:60', 'Ducimus nesciunt qui distinctio minima ut. Pariatur temporibus veritatis asperiores dolor. Delectus enim ea accusamus voluptatem dolor tempore. Id doloremque quasi eius molestias at sapiente.', 'Ut nemo est tempora ad placeat totam labore. Tenetur vel et ratione ab molestiae porro. Voluptas et labore repudiandae earum enim dolorem voluptas. Repellendus et et recusandae ipsa quae.', 'Saepe quo reprehenderit necessitatibus quia eos porro quo. Ratione dolor consequatur voluptas nostrum quos. Eligendi perferendis earum nesciunt est iusto. Corporis autem rem aut.', 1, 'Corrupti magnam quis qui voluptatibus omnis. Commodi unde dignissimos odit in nihil ut eaque. Ut minima voluptatibus veritatis et. Et qui laudantium corrupti non et. Dicta rerum odio non non.', 10, 1, 1, NULL, '2018-10-08 10:28:19', '2018-10-08 10:28:19', 200, 0, 0, 0, 1, 0, 0, 1, 3, 2),
	(5, 'Jed Hahn', 'Elaina Jast', 'Deserunt est ipsam velit quia ea. Ut in modi non at sapiente qui. Quia minima dolores architecto dolorem. Illum officia pariatur nesciunt veniam.', '2018/12/30/Prof. Willa Breitenberg', 'videos/2018/12/1/Ashlynn Gutkowski', NULL, '24:1', '24:1', 'Vel amet aut est illum. Voluptatem quas dolorem maiores sit eaque voluptatem. Voluptatem at eos consequatur et commodi animi ipsum enim.', 'Eius nostrum delectus quaerat maiores. Odio id optio aspernatur molestiae corporis.', 'Eos omnis omnis tempora ut explicabo enim quos. Quo maiores nihil nihil velit dolores at. Optio quidem aspernatur aut rerum quis et optio. Et eum ducimus amet eius deserunt quidem aut.', 1, 'Tempore nostrum fuga aperiam in doloribus. Recusandae nulla voluptatem porro. Ut occaecati reiciendis quia voluptas optio cumque. Ipsum facere culpa consequuntur molestiae asperiores eligendi ipsa.', 10, 10, 1, NULL, '2018-10-08 10:28:19', '2018-10-08 10:28:19', 200, 0, 0, 0, 1, 1, 1, 0, 3, 2),
	(6, 'Kayden Rath', 'Corbin Lakin', 'Corrupti similique qui voluptate autem numquam provident provident. Est voluptatem facilis vel necessitatibus est. Voluptatum velit possimus blanditiis quam eius voluptatem quia.', '2018/1/30/Mrs. Sallie Haley', 'videos/2018/12/1/Consuelo Langworth', NULL, '24:1', '24:1', 'Aliquam est tenetur consequatur ut consequatur totam rerum. Nemo aut iusto sit totam porro. Quisquam at officiis tempore. Assumenda facilis non facere id voluptas.', 'Nulla voluptates qui impedit sit reprehenderit. Alias velit sed voluptas magni quo nulla. Temporibus et natus sunt aut consectetur dolorem voluptas. Ratione odit eos ullam consequatur quia voluptas.', 'Occaecati debitis dolores eum. In dolorum suscipit cumque dolor voluptatem. Hic expedita quo ab. Magnam magnam officia ea est dolores et.', 5, 'Rem itaque consequatur molestiae vel alias. Qui consequatur quis dolor eos aspernatur quo. Eum aut sit eum natus. Dolorum quis ullam dolor aut ex.', 1, 1, 1, NULL, '2018-10-08 10:28:19', '2018-10-08 10:28:19', 200, 0, 0, 1, 1, 1, 0, 1, 3, 1),
	(7, 'Joyce Corwin', 'Alfonzo Satterfield', 'Quos cupiditate totam et ab tempora qui. Reprehenderit vero quia in aperiam. Eum eos aut aut laborum.', '2018/12/1/Mr. Mekhi Littel II', 'videos/2018/1/30/Chadrick Leannon', NULL, '0:60', '0:60', 'Necessitatibus accusantium est voluptatum minima sed minima quis eos. Aut dolorem omnis odio eos eligendi.', 'Laboriosam non non nobis illo qui omnis. Vel rerum saepe ab facere et nemo dolorum. Dolores non numquam ut possimus sunt rerum.', 'Nihil in molestiae nisi eligendi. Qui consequuntur eum sint tenetur ad dolorum incidunt.', 1, 'Maxime qui quia soluta dolore. Earum laborum soluta corporis maiores laboriosam veritatis dolor. Commodi repellendus laudantium odit in perspiciatis sequi.', 1, 1, 1, NULL, '2018-10-08 10:28:19', '2018-10-08 10:28:19', 100, 0, 1, 1, 0, 0, 1, 0, 0, 2),
	(8, 'Desiree Thompson', 'Adelle Daugherty', 'Illo excepturi accusamus facere placeat saepe modi asperiores. Est ut vitae nesciunt saepe aut. Natus illo ea quia impedit.', '2018/12/30/Mr. Erling Brown', 'videos/2018/12/30/Aryanna Lindgren', NULL, '0:1', '0:60', 'Ut quasi modi dignissimos sit dolor est. Est doloribus et quis autem suscipit architecto. Dolorem nam sed mollitia libero doloremque eum. Beatae assumenda quasi veritatis et ut.', 'Autem ut quia porro nesciunt sapiente. Beatae necessitatibus dolor quisquam provident. Aliquid consequatur quos sint expedita aut vel.', 'Consectetur ut quia voluptates consequatur officia sint. Nostrum odit expedita et minus. Cumque omnis inventore provident corrupti quibusdam et.', 5, 'Optio necessitatibus est quas. Nihil nisi eveniet et. Tenetur nisi doloremque sit soluta. Aperiam et soluta ut repudiandae quas vel officia corporis.', 10, 10, 1, NULL, '2018-10-08 10:28:19', '2018-10-08 10:28:19', 200, 0, 1, 1, 0, 0, 0, 0, 3, 2),
	(9, 'Buddy Halvorson', 'Virginia Dietrich Jr.', 'Corrupti quia rerum modi est. Voluptatem non id omnis praesentium. Sunt molestiae consectetur molestiae illo.', '2018/12/1/Elna Reichert DVM', 'videos/2018/12/30/Karlie Steuber', NULL, '24:60', '24:60', 'Asperiores dignissimos ducimus exercitationem provident fuga eum. Incidunt ut sunt corrupti et maiores. Quam quod vero libero vero vitae est neque. Corporis sequi eaque odio et voluptatem corrupti.', 'Vitae odit error eius officia. Officiis ut dolorem nulla nobis est. Omnis consequatur eveniet corporis eum ea enim.', 'Dolore qui ad veritatis voluptatum. Cum a soluta pariatur tempora nihil architecto esse eius. Mollitia fugiat enim et repellat fuga minus quia.', 1, 'Quo consectetur sint fugit neque nihil. Veniam facilis iusto quidem dolorem voluptas eum. Eius aut provident id.', 1, 10, 1, NULL, '2018-10-08 10:28:19', '2018-10-08 10:28:19', 200, 0, 0, 1, 1, 1, 0, 0, 3, 2),
	(10, 'Brooke Wilkinson', 'Carol Waters', 'Ut nesciunt adipisci voluptas quae exercitationem vel. Sit dolor iusto reprehenderit eaque eum est. Tempore ut harum occaecati voluptates ea sunt.', '2018/12/1/Mr. Berry Hayes', 'videos/2018/12/30/Prof. Miguel Durgan', NULL, '24:60', '24:1', 'Fugiat omnis ducimus autem nemo. Ab unde cum et. Reiciendis repudiandae iure vero et. Et veniam vero et similique.', 'In illo asperiores vel in. Voluptatem quas itaque perferendis laboriosam iste vero. Molestiae quaerat nihil repellendus quo magnam architecto ipsum ut.', 'Maiores quod mollitia omnis magni est ut et et. Consequatur quis aut magni cupiditate qui omnis. Explicabo earum officia quo perspiciatis. Quia soluta ratione totam et perspiciatis.', 5, 'Dicta ea accusantium est est. Sed qui earum dolor sunt. Et ea suscipit et qui dignissimos sunt porro. Et perferendis quae perspiciatis unde quia enim.', 10, 1, 1, NULL, '2018-10-08 10:28:19', '2018-10-08 10:28:19', 100, 0, 1, 0, 0, 1, 0, 1, 0, 1),
	(11, 'Mr. Bryce Abbott V', 'Francis Dare', 'Ea odit repellendus asperiores dolor sit. Est modi porro magni dolor minima. Nihil eum dolores itaque distinctio. Culpa occaecati ipsam voluptas illum ea quia facere. Molestiae sit enim et quia.', '2018/1/1/Prof. Liza Weimann', 'videos/2018/1/1/Dr. Christian Lowe', NULL, '24:1', '0:60', 'Nemo nulla quia quia odit. Sit rerum sapiente placeat consequatur. Ea veritatis tempore dolores rerum illo ea.', 'Aspernatur laudantium nobis ut dolorem facilis animi cumque. Autem voluptas architecto qui ex eum. Deleniti quas ad aliquam pariatur velit quia necessitatibus. Sit blanditiis numquam odio vitae sed.', 'Et nulla libero quis non harum molestias. Ipsam expedita id fuga iusto sint. Ipsam voluptatem enim vitae voluptatem velit porro.', 1, 'Voluptas eos voluptas perferendis et occaecati animi repellat. Ut libero at amet autem. Vel iure quia quia perspiciatis quo eum. Laborum quas eum sed alias cum architecto velit.', 1, 1, 1, NULL, '2018-10-08 10:28:19', '2018-10-08 10:28:19', 100, 0, 0, 1, 1, 0, 0, 0, 3, 1),
	(12, 'Hester Rogahn PhD', 'Callie Braun', 'Aspernatur velit dignissimos qui nihil aliquid. Fuga repellendus deleniti quasi quia. Architecto quia nam sequi corrupti. Dignissimos non numquam aut error vel aut adipisci cupiditate.', '2018/1/1/Prof. Mckenna Kertzmann', 'videos/2018/1/30/Helena Wilkinson', NULL, '0:1', '0:60', 'Fugit sunt recusandae delectus necessitatibus sed nesciunt sint. Dolores est quis et quaerat nemo voluptas. Consequatur aut quaerat delectus illum.', 'Occaecati qui ut molestias aliquam exercitationem dolores dolorem. Voluptates non necessitatibus et est adipisci. Non voluptatem aut et quam fugiat. Est odit quasi temporibus assumenda.', 'Ea autem expedita et exercitationem ratione consectetur. Ratione dolor praesentium omnis accusantium quam optio autem. Enim consequatur expedita sed.', 5, 'Molestiae numquam qui suscipit commodi quis. Rerum et velit consequatur ut et. Ab accusamus voluptatum soluta nisi sed aliquam qui. Earum tempore cupiditate omnis saepe asperiores.', 1, 10, 1, NULL, '2018-10-08 10:28:19', '2018-10-08 10:28:19', 200, 0, 0, 1, 0, 0, 0, 0, 0, 2),
	(13, 'Leone Hane', 'Prof. Hector Funk', 'Non assumenda eos ipsa dolore. Deleniti asperiores saepe hic nisi molestiae laudantium. Quaerat maiores debitis et. Earum et expedita sunt minima. Est sit qui provident iusto.', '2018/12/1/Devon Larkin DVM', 'videos/2018/12/1/Jeremie Wuckert', NULL, '24:1', '24:1', 'Rerum sit sit et beatae quidem ipsam. Debitis nemo non cupiditate suscipit. Mollitia tenetur qui consequatur velit qui. Sit qui aliquam laborum est.', 'Nobis delectus in cumque. Officiis sint voluptas et aut aspernatur quos necessitatibus. Animi quibusdam id excepturi sit ut ut. Dolorem pariatur mollitia delectus et omnis.', 'Rem adipisci qui aut praesentium et. Aut consequatur reiciendis voluptatem laboriosam. Quia nam dolor aliquid et at aut non.', 1, 'Minus numquam qui ea eum et quidem. Sequi consequatur blanditiis tempore ut. Similique qui omnis repellat rerum laboriosam iste aut.', 10, 10, 1, NULL, '2018-10-08 10:28:19', '2018-10-08 10:28:19', 200, 0, 0, 1, 1, 0, 1, 0, 3, 1),
	(14, 'Michale Larkin', 'Mr. Justyn Jacobi III', 'Ex fuga aut harum. Eligendi mollitia qui vel quidem explicabo rem. Beatae corrupti cumque qui voluptas.', '2018/12/30/Romaine Mueller', 'videos/2018/12/1/Heber Kozey', NULL, '0:1', '24:1', 'Omnis voluptatem at pariatur placeat qui. Architecto rerum nihil rerum sit quaerat maxime aut. Sunt vero ratione eveniet qui.', 'Adipisci in rerum dolorem vitae magnam facere perspiciatis sed. Earum nemo voluptatem ut aliquam et. Veniam dicta quam quae quo excepturi quia fugiat debitis.', 'Ad sed minus sint ea aut totam quia. Nisi sed et molestiae mollitia officiis maxime. Voluptate necessitatibus aut nemo officiis non eos. Quia laboriosam et autem quasi.', 5, 'Labore numquam et nobis vel. Quidem consectetur et deserunt aliquid. Enim suscipit ea esse sit mollitia.', 10, 1, 1, NULL, '2018-10-08 10:28:19', '2018-10-08 10:28:19', 200, 0, 0, 1, 1, 0, 1, 0, 3, 2),
	(15, 'Crystal Mosciski', 'Eva Ledner DVM', 'Esse alias optio itaque mollitia aliquam ipsam. Hic dolorem ea voluptatum numquam occaecati et delectus. Cumque distinctio temporibus tempore.', '2018/12/30/Jaiden Lindgren', 'videos/2018/1/1/Yoshiko Gutkowski', NULL, '0:60', '0:1', 'Nam vero error aspernatur quae magnam iure et inventore. Aut incidunt qui reiciendis dolores voluptatem. Impedit eaque magni ea fuga sapiente. Quaerat sint ut perferendis odio quod.', 'Est et quisquam incidunt dolor cupiditate et sunt. Non officia assumenda praesentium. Quos excepturi qui tempore repellendus distinctio sit.', 'Vel incidunt sit animi. Totam in similique dolorem reiciendis voluptatum. Eligendi asperiores enim voluptatibus accusamus vel esse.', 1, 'Enim occaecati dolor commodi et cumque quasi. Eius sit dolor mollitia dignissimos at omnis quia. Magnam et suscipit et maxime sed. Omnis dolorem dolore praesentium in.', 10, 1, 1, NULL, '2018-10-08 10:28:19', '2018-10-08 10:28:19', 200, 0, 1, 0, 0, 1, 1, 1, 3, 1),
	(16, 'Dr. Luisa Maggio', 'Roosevelt Homenick', 'Autem cupiditate odit consequatur ut magni ipsa consectetur voluptas. Voluptatem et voluptate laboriosam aut. Occaecati iusto voluptate quos porro earum eum iure.', '2018/1/30/Gideon Crist', 'videos/2018/1/1/Marion Russel', NULL, '24:1', '24:1', 'Facere natus ex sint nisi odit omnis. A placeat ex itaque pariatur. Ea at nostrum esse totam. Molestiae blanditiis illo consequatur ducimus quaerat ut doloremque.', 'Doloribus nihil iure aperiam maxime eum itaque non nemo. Est ab deserunt nesciunt et sit quidem. Harum eos distinctio odio voluptates natus quae. Eius quo ipsum non aliquam et.', 'Odio non laboriosam in molestiae veritatis non harum. Dolores distinctio sed est qui doloribus occaecati dolore. Omnis non ex vero veniam deserunt. Velit sed dolorum doloremque maiores minus.', 1, 'Officiis laboriosam veritatis quia velit sed fugit laudantium. Velit aut quo quia voluptatum sint dicta. Dolor ea pariatur iure magni autem ducimus. Porro eos et amet iure culpa est aut.', 10, 10, 1, NULL, '2018-10-08 10:28:19', '2018-10-08 10:28:19', 100, 0, 0, 0, 0, 0, 1, 1, 3, 2),
	(17, 'Mrs. Harmony Schiller', 'Sarina Breitenberg V', 'Et eaque ad eius fuga nobis. Corrupti vel qui at quam. Et et vero consequatur alias. Eius dolor quia eveniet aut non.', '2018/1/30/Evans Schultz', 'videos/2018/1/1/Jocelyn Zboncak PhD', NULL, '24:1', '0:60', 'Corrupti voluptas laudantium rerum aut est assumenda. Autem atque natus dolorem.', 'Ipsum quia commodi illo neque. Nesciunt occaecati ut occaecati eos illo unde sunt. Vero sunt delectus quia. Ea aut repudiandae aut molestiae error.', 'Amet maxime blanditiis a assumenda. Et explicabo totam voluptatem nihil qui maxime nihil. Consequatur magni omnis est culpa.', 5, 'Laborum asperiores officia non ipsum error eos. Enim est dignissimos dolore dolor. Omnis vel est itaque consequatur saepe. Provident tempore iste nam ea explicabo ratione.', 10, 1, 1, NULL, '2018-10-08 10:28:19', '2018-10-08 10:28:19', 100, 0, 1, 1, 1, 1, 1, 1, 3, 1),
	(18, 'Harmon Ledner Jr.', 'Reilly Prohaska', 'Eos voluptas fugit architecto ea voluptatem. Aut quod quis qui est esse qui iure. Similique exercitationem voluptatem enim sapiente.', '2018/12/1/Dr. Mireya Harris', 'videos/2018/1/1/Mr. Hipolito Zboncak', NULL, '24:1', '0:60', 'Sed repellat tenetur quis quos. Voluptas accusamus dolorum tempore.', 'Sit corporis odio in ad ipsam. Voluptatem aperiam omnis rerum quam optio. Iste velit dolorem et cum amet ut cum. Autem aut velit sed repellat quo ad. Suscipit est in sint maiores explicabo.', 'Pariatur rerum temporibus enim quam blanditiis incidunt. Perferendis officiis recusandae velit eum. Accusamus nisi alias et quos molestias iure repellendus voluptate.', 5, 'Dicta earum eius omnis deleniti voluptas. Accusantium sint et vitae. Voluptas laborum sunt autem voluptates quod. Nisi nesciunt nostrum molestias voluptas.', 10, 1, 1, NULL, '2018-10-08 10:28:19', '2018-10-08 10:28:19', 100, 0, 1, 0, 1, 0, 1, 1, 0, 1),
	(19, 'Kaley Zieme', 'Gino Beahan', 'Illo quibusdam at voluptas ut numquam quis aut. Quasi voluptatem ducimus beatae. Qui quia quisquam voluptatum repudiandae doloribus ut expedita id.', '2018/12/1/Herminia Conn', 'videos/2018/1/30/Justice Dickinson', NULL, '0:60', '0:60', 'Saepe iusto maiores aut sit dignissimos a ipsa. Iste esse molestiae nisi nihil veniam voluptas voluptatem.', 'Non vitae quae facilis debitis et. Laborum neque impedit quas sapiente adipisci amet iure. Tenetur id dolores ullam vel. Dolor ipsam nihil minima et ullam est velit.', 'Asperiores esse nulla cupiditate nulla dicta rerum molestiae. Alias et est repudiandae occaecati occaecati voluptas. Quia quos dolor qui earum debitis. Libero vel laboriosam voluptas.', 5, 'Dolorum qui quibusdam dolorem numquam modi. Quis officiis quidem soluta quas inventore dolorem. Molestias laborum porro cupiditate numquam ut.', 10, 10, 1, NULL, '2018-10-08 10:28:19', '2018-10-08 10:28:19', 200, 0, 1, 0, 0, 0, 0, 0, 3, 1),
	(20, 'Allan Quitzon', 'Mrs. Aileen Harber Sr.', 'Sint dolores est nihil delectus recusandae. Totam est saepe qui mollitia omnis id ut.', '2018/12/1/Kylie Goldner', 'videos/2018/12/30/Mr. Peter Reynolds IV', NULL, '24:60', '0:60', 'Et dolor voluptatibus omnis quia doloremque. Unde quia atque a qui libero odit dolorum accusantium. Enim quod tenetur et et. Similique sint ea eveniet nam.', 'Quidem dolores eos asperiores accusamus modi est. Et aliquam impedit rerum labore.', 'Ipsum consequatur eveniet pariatur aspernatur vel. Qui voluptas ea occaecati necessitatibus. Aut earum eum ut ratione. Deleniti deleniti facilis et esse totam.', 5, 'Aliquid et deserunt ut alias debitis qui. Illo qui voluptate totam et. Consequuntur quia molestias dolore quae. Similique nesciunt optio non et et.', 10, 1, 1, NULL, '2018-10-08 10:28:19', '2018-10-08 10:28:19', 100, 0, 0, 1, 1, 1, 0, 1, 0, 1),
	(21, 'Jose Gleichner', 'Lacey Carroll', 'Odio maiores minus aut et quisquam. Minus blanditiis odit aliquam aut.', '2018/12/1/Gerda Christiansen', 'videos/2018/12/30/Mr. Gerhard Oberbrunner Jr.', NULL, '0:60', '0:1', 'Voluptas omnis magni enim consectetur eum id ullam. Nostrum voluptates veritatis omnis magnam culpa. Eligendi corrupti distinctio mollitia rerum dolor veniam qui.', 'Magnam a voluptatem quia officia eius nostrum. Quasi est consequatur consequatur. Temporibus provident quos et natus animi non pariatur. Voluptatum reprehenderit et nihil eos illo exercitationem ut.', 'Beatae cupiditate tenetur similique. Deleniti nostrum temporibus molestiae distinctio voluptatem. Incidunt quasi dolores maxime. Libero nemo maiores nihil magnam.', 5, 'Eum et dolor quia quam est. Sunt hic quo qui quis provident animi.', 10, 1, 1, NULL, '2018-10-08 10:28:19', '2018-10-08 10:28:19', 200, 0, 1, 1, 0, 1, 1, 1, 3, 2),
	(22, 'Dr. Tess Goodwin DVM', 'Prof. Dessie Dickinson Jr.', 'Fugit cumque sunt sed error itaque. Quae est nisi nostrum ut culpa. Quas consequuntur ut ut architecto quia corrupti. Voluptates ipsum harum ipsam culpa.', '2018/12/30/Chad Crona', 'videos/2018/1/30/Britney Smitham', NULL, '0:60', '0:1', 'Et in optio corrupti a. Facere aliquid voluptas eos autem odit unde exercitationem. Culpa cupiditate hic labore voluptate sunt velit. Ex beatae sint labore omnis iusto omnis.', 'Dignissimos dolores eos autem ut ut perspiciatis. Dolore quibusdam voluptatem perspiciatis autem. Distinctio accusantium iste aperiam iure quia dolorem aspernatur.', 'Voluptatem consequatur quis dicta quos ex labore. Occaecati aut explicabo quasi minus vel. Incidunt commodi enim animi culpa cupiditate rerum.', 1, 'Ut soluta explicabo laudantium incidunt fugit. Dolorum quas similique cum illum. Deleniti sit nostrum et iste inventore consequuntur.', 10, 10, 1, NULL, '2018-10-08 10:28:19', '2018-10-08 10:28:19', 200, 0, 1, 1, 1, 1, 0, 0, 3, 2),
	(23, 'Petra Witting', 'Prof. Broderick Mosciski', 'Quia itaque autem sed id. Iure aut aut animi consequatur necessitatibus et. Ad quae quam illo rerum. Eligendi possimus cum earum.', '2018/1/1/Delphia Schumm III', 'videos/2018/1/1/Dr. Elmo Towne DVM', NULL, '0:1', '0:60', 'Nobis non ad hic sit occaecati quia. Nihil id consequatur alias ratione libero quisquam libero. Autem ut pariatur fuga et. Culpa veritatis consequatur et voluptatibus aperiam.', 'Sed quibusdam consequatur delectus occaecati. Et unde ea accusantium veniam rerum eaque. Magnam aut et amet praesentium. Totam id iusto sed sequi repudiandae enim voluptatem.', 'Voluptatibus temporibus qui eaque eos dolorum enim suscipit asperiores. Eos quae molestiae aliquid. Corporis maxime commodi eveniet ut ipsum dignissimos et.', 5, 'Saepe provident nobis sed. Consequuntur delectus quasi sequi sit voluptas. Consequatur aspernatur tempore ex enim est neque.', 1, 1, 1, NULL, '2018-10-08 10:28:19', '2018-10-08 10:28:19', 100, 0, 1, 1, 1, 0, 1, 1, 0, 1),
	(24, 'Mr. Nathan Larkin PhD', 'Norberto Wilkinson', 'Suscipit quas est quo itaque blanditiis ratione itaque qui. Quo quaerat aut et est reiciendis libero. Quis cumque enim id error eum sed alias. Maiores eos sint molestiae et occaecati quasi.', '2018/12/30/Reva Buckridge', 'videos/2018/12/1/Mylene Rolfson', NULL, '24:1', '24:1', 'Quis animi libero adipisci consequatur optio id. Et vel accusamus maxime dolorem. Fugiat facilis ut omnis. Labore debitis et qui ea vel.', 'Qui tempora sit provident velit et nemo. A qui esse minus illo sequi. Magnam qui nulla est sit quos autem.', 'Aliquid ut veritatis id et earum id. Voluptatibus totam quia distinctio voluptatum. Voluptatem blanditiis fugiat sit esse nisi. Debitis omnis et rerum. Similique est repellat eum quis commodi nisi.', 5, 'Tempora iure ad aspernatur molestiae. Ipsa ut et et cupiditate velit porro sit. Repellendus ut necessitatibus dolorem dolorum exercitationem iste.', 1, 10, 1, NULL, '2018-10-08 10:28:19', '2018-10-08 10:28:19', 200, 0, 1, 0, 0, 1, 1, 1, 3, 2),
	(25, 'Dr. Patrick Gislason Sr.', 'Mr. Stuart Conn', 'Est ab ad sit deleniti. Reiciendis ab distinctio modi explicabo. Alias et distinctio pariatur perferendis.', '2018/1/30/Mrs. Pink Erdman V', 'videos/2018/1/30/Mr. Hermann Rutherford', NULL, '0:60', '24:60', 'Id delectus sit sed in. Et dolor qui reprehenderit laboriosam architecto repellendus corporis. Quia aperiam perferendis aut quibusdam. Debitis neque adipisci itaque sit est impedit sit.', 'Sit quis distinctio rerum fugiat. Perferendis assumenda unde quibusdam rerum beatae enim qui. Labore nostrum est rerum fuga.', 'Asperiores adipisci repudiandae dolorum quos a. Quaerat expedita a adipisci sint earum consequatur aut. Fugit ipsam voluptatem cum et porro et nostrum.', 1, 'Eius in deleniti illum omnis vel quasi. Pariatur assumenda repellat adipisci eum nisi excepturi. Eligendi explicabo accusamus sit rerum.', 10, 10, 1, NULL, '2018-10-08 10:28:19', '2018-10-08 10:28:19', 100, 0, 0, 1, 1, 1, 0, 0, 0, 1),
	(26, 'Baron Reynolds II', 'Mrs. Dianna Wintheiser MD', 'Vel ut dolores voluptas. Quis in sit maxime sapiente. Aut facere voluptatibus porro quia sit sapiente dolores.', '2018/12/30/Vickie Hodkiewicz', 'videos/2018/1/1/Gracie Rogahn', NULL, '0:1', '24:60', 'Eos consequuntur et deleniti labore assumenda quo saepe. Eos harum quo cumque ut labore et. Similique quasi omnis nam nesciunt porro consequatur. Eveniet sapiente nemo molestiae in ut velit.', 'Nam nemo et ipsa dolore culpa error libero. Iste dolorem est hic deserunt vero cumque fugit. Eveniet nostrum velit et temporibus. Voluptates nihil officiis quo sed unde ut aliquam.', 'Sint tempore omnis nisi ratione vero et voluptas. Et exercitationem atque possimus voluptates nulla. Porro cumque et deserunt at fugit vel.', 5, 'Accusantium quidem molestias quidem. Dolorem quidem delectus est odit impedit quia. Expedita architecto facilis animi. Aut dolor nam et harum quam aperiam commodi.', 1, 1, 1, NULL, '2018-10-08 10:28:19', '2018-10-08 10:28:19', 200, 0, 0, 0, 0, 0, 1, 1, 3, 1),
	(27, 'Alene Daugherty IV', 'Dimitri Wiza', 'Praesentium aut ut sit accusantium ipsum facere. Veniam accusantium et voluptatem nam et iure. Ut inventore possimus consequuntur.', '2018/12/1/Raul Wisoky', 'videos/2018/1/30/Dr. Bill Reinger I', NULL, '0:1', '0:60', 'Est ut accusamus quo enim. Eius perspiciatis consequuntur est vero magni.', 'Dolorum facere vel facilis soluta. Quod sed fugiat veritatis consectetur ut aut. Tempore mollitia neque eligendi amet sit earum quis in.', 'Quidem animi magni aut rerum. Molestiae at saepe sint accusamus sit reprehenderit aut sequi. Quisquam maiores beatae dignissimos quod accusantium autem. Dolores et alias dignissimos sed quia.', 1, 'Consequatur eaque quis delectus aspernatur. Dolore non optio qui hic voluptas dignissimos. Magni consequatur enim explicabo deleniti quaerat.', 1, 1, 1, NULL, '2018-10-08 10:28:19', '2018-10-08 10:28:19', 100, 0, 1, 0, 0, 1, 0, 1, 3, 1),
	(28, 'Antonio Grimes', 'Alverta Turner', 'Harum maxime deleniti sed. Aliquam eius voluptatem fugit omnis. Ut ad quis omnis eligendi. Repellendus quo a ad aut.', '2018/12/1/Prof. Deondre Feeney II', 'videos/2018/12/1/Jeremy Gutmann', NULL, '24:60', '24:1', 'Quis nostrum ab officiis optio. Et dolorem necessitatibus omnis nisi.', 'Ipsam minus labore cum ut. Impedit esse quia iste est cupiditate odit. Eligendi enim quae distinctio nulla dolorem repellat.', 'Aut soluta dolor sit consequatur pariatur. Officiis quidem aut sit provident ut. Impedit ut inventore dolorem id necessitatibus fugiat perferendis voluptas.', 1, 'Eligendi id autem facere maxime omnis iste. Vel omnis est aspernatur. Esse unde in tempora. Est rem est est laborum voluptates ut.', 1, 10, 1, NULL, '2018-10-08 10:28:19', '2018-10-08 10:28:19', 100, 0, 0, 1, 0, 1, 0, 1, 3, 2),
	(29, 'Imelda Hegmann V', 'Oswaldo White', 'Et et aliquam eum asperiores quia tempora ut. Qui neque odio non suscipit. Explicabo aut vel facere officiis id ut suscipit. Hic consequuntur ad accusantium modi culpa qui.', '2018/12/30/Virgil Bergnaum V', 'videos/2018/12/30/Mr. Marlon Green V', NULL, '0:60', '0:1', 'In repellat fugiat voluptas id. Rerum dolorum officiis veritatis iusto vel ut. Similique aspernatur ut aliquid quis. Alias at ex est dolore aut voluptatem.', 'Est minus dolores quas modi aliquam. Cumque neque harum quasi omnis deserunt eos. Qui quae blanditiis minus nesciunt. Pariatur assumenda esse qui minima beatae quo.', 'Saepe dolores vel perferendis facilis ut illo. Tenetur voluptatibus ut quia eos. Cupiditate officiis nemo rerum aut eligendi iure nesciunt. Sed rerum deserunt sit adipisci cum.', 5, 'Recusandae ipsa cum rerum et aspernatur voluptas optio. Voluptas consequatur corrupti quasi maiores et. Nesciunt tenetur doloribus ad itaque reprehenderit labore.', 10, 1, 1, NULL, '2018-10-08 10:28:19', '2018-10-08 10:28:19', 200, 0, 1, 0, 0, 0, 1, 0, 0, 2),
	(30, 'Deangelo Murray', 'Dr. Alanna Predovic V', 'Ut ipsa quos similique omnis occaecati veritatis consequatur. Eos quas quam fuga sint non incidunt. Ab ut soluta quasi et. Nihil provident maiores aut.', '2018/1/1/Gaetano Leffler', 'videos/2018/12/1/Molly Stoltenberg', NULL, '0:60', '0:1', 'Magnam molestiae laboriosam ut quos facilis. Quo voluptatibus temporibus nesciunt provident. Accusamus distinctio et voluptatem exercitationem suscipit.', 'Sed expedita ea suscipit minima et quia. Alias molestias ipsum dolorum voluptatem molestias accusantium quam. Ut incidunt enim ea est in. Reiciendis dolores animi iure sed omnis aspernatur.', 'Ipsa ut fugiat vel ducimus quidem quibusdam consectetur. Doloribus et et delectus ut velit at. Enim et debitis numquam ut consectetur dolorem. Enim placeat quia inventore vel ipsa in.', 5, 'Sint voluptatem eum eum nam. Vitae illum commodi veritatis occaecati. Itaque iure ut cupiditate ad dolore hic.', 1, 10, 1, NULL, '2018-10-08 10:28:19', '2018-10-08 10:28:19', 200, 0, 0, 0, 1, 0, 0, 1, 3, 2);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;

-- Dumping structure for table bepnha_update.login_users
CREATE TABLE IF NOT EXISTS `login_users` (
  `uuid` varchar(16) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table bepnha_update.login_users: ~0 rows (approximately)
/*!40000 ALTER TABLE `login_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_users` ENABLE KEYS */;

-- Dumping structure for table bepnha_update.log_view
CREATE TABLE IF NOT EXISTS `log_view` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `view_time` date NOT NULL,
  `type` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_log_view_items` (`item_id`),
  CONSTRAINT `FK_log_view_items` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table bepnha_update.log_view: ~0 rows (approximately)
/*!40000 ALTER TABLE `log_view` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_view` ENABLE KEYS */;

-- Dumping structure for table bepnha_update.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bepnha_update.migrations: ~0 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table bepnha_update.notebook
CREATE TABLE IF NOT EXISTS `notebook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table bepnha_update.notebook: ~0 rows (approximately)
/*!40000 ALTER TABLE `notebook` DISABLE KEYS */;
/*!40000 ALTER TABLE `notebook` ENABLE KEYS */;

-- Dumping structure for table bepnha_update.session
CREATE TABLE IF NOT EXISTS `session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table bepnha_update.session: ~0 rows (approximately)
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
/*!40000 ALTER TABLE `session` ENABLE KEYS */;

-- Dumping structure for table bepnha_update.staffs
CREATE TABLE IF NOT EXISTS `staffs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(250) NOT NULL,
  `password` char(250) NOT NULL,
  `remember_token` varchar(250) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `group_id` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `disable` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_staffs_staff_group` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table bepnha_update.staffs: ~0 rows (approximately)
/*!40000 ALTER TABLE `staffs` DISABLE KEYS */;
/*!40000 ALTER TABLE `staffs` ENABLE KEYS */;

-- Dumping structure for table bepnha_update.staff_group
CREATE TABLE IF NOT EXISTS `staff_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `role` varchar(250) NOT NULL,
  `disable` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table bepnha_update.staff_group: ~0 rows (approximately)
/*!40000 ALTER TABLE `staff_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_group` ENABLE KEYS */;

-- Dumping structure for table bepnha_update.tags
CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `disable` tinyint(4) NOT NULL,
  `order_by` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Dumping data for table bepnha_update.tags: ~10 rows (approximately)
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` (`id`, `title`, `created_at`, `updated_at`, `created_by`, `updated_by`, `disable`, `order_by`, `type`) VALUES
	(1, 'Alvina Olson', '2018-10-08 08:44:21', '2018-10-08 08:44:21', 1, NULL, 1, 0, 2),
	(2, 'Johathan Mayert', '2018-10-08 08:44:21', '2018-10-08 08:44:21', 1, NULL, 1, 0, 1),
	(3, 'Aglae Spencer DVM', '2018-10-08 08:44:21', '2018-10-08 08:44:21', 1, NULL, 0, 0, 2),
	(4, 'Fae Braun II', '2018-10-08 08:44:21', '2018-10-08 08:44:21', 1, NULL, 0, 0, 1),
	(5, 'Arianna Prohaska DDS', '2018-10-08 08:44:21', '2018-10-08 08:44:21', 1, NULL, 1, 0, 1),
	(6, 'Ron O\'Keefe', '2018-10-08 08:44:21', '2018-10-08 08:44:21', 1, NULL, 1, 0, 2),
	(7, 'Juliet Mills MD', '2018-10-08 08:44:21', '2018-10-08 08:44:21', 1, NULL, 0, 0, 1),
	(8, 'Nelson Towne', '2018-10-08 08:44:21', '2018-10-08 08:44:21', 1, NULL, 0, 0, 2),
	(9, 'Carlo Bahringer', '2018-10-08 08:44:21', '2018-10-08 08:44:21', 1, NULL, 1, 0, 2),
	(10, 'Darren Brekke', '2018-10-08 08:44:21', '2018-10-08 08:44:21', 1, NULL, 1, 0, 1);
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;

-- Dumping structure for table bepnha_update.tag_grouped
CREATE TABLE IF NOT EXISTS `tag_grouped` (
  `tag_group_id` int(10) NOT NULL,
  `tag_id` int(10) NOT NULL,
  KEY `FK_tag_grouped_tag_groups` (`tag_group_id`),
  KEY `FK_tag_grouped_tags` (`tag_id`),
  CONSTRAINT `FK_tag_grouped_tag_groups` FOREIGN KEY (`tag_group_id`) REFERENCES `tag_groups` (`id`),
  CONSTRAINT `FK_tag_grouped_tags` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table bepnha_update.tag_grouped: ~0 rows (approximately)
/*!40000 ALTER TABLE `tag_grouped` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag_grouped` ENABLE KEYS */;

-- Dumping structure for table bepnha_update.tag_groups
CREATE TABLE IF NOT EXISTS `tag_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `disable` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table bepnha_update.tag_groups: ~0 rows (approximately)
/*!40000 ALTER TABLE `tag_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag_groups` ENABLE KEYS */;

-- Dumping structure for table bepnha_update.tag_items
CREATE TABLE IF NOT EXISTS `tag_items` (
  `id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tag_items_tags` (`tag_id`),
  KEY `FK_tag_items_items` (`item_id`),
  CONSTRAINT `FK_tag_items_items` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  CONSTRAINT `FK_tag_items_tags` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table bepnha_update.tag_items: ~0 rows (approximately)
/*!40000 ALTER TABLE `tag_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag_items` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
