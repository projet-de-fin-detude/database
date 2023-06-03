-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2023 at 01:55 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `family`
--

CREATE TABLE `family` (
  `id` int(255) NOT NULL,
  `title` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `family`
--

INSERT INTO `family` (`id`, `title`) VALUES
(1, 'Anti-inflammatoires'),
(2, 'Antalgiques'),
(3, 'Phytothérapie'),
(4, 'Antiseptiques'),
(5, 'Rhumathologie');

-- --------------------------------------------------------

--
-- Table structure for table `medecines`
--

CREATE TABLE `medecines` (
  `id` int(255) NOT NULL,
  `title` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `quantity` int(255) NOT NULL,
  `image_name` varchar(256) NOT NULL,
  `family_id` int(255) NOT NULL,
  `need_presecription` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medecines`
--

INSERT INTO `medecines` (`id`, `title`, `description`, `price`, `quantity`, `image_name`, `family_id`, `need_presecription`) VALUES
(1, 'Actisoufre', 'Le médicament Actisoufre est un traitement à effet anti-inflammatoire utilisé pour traiter les rhumes, rhinites et rhinopharyngites, de l\'adulte et de l\'enfant.\r\n\r\n\r\nActisoufre peut se présenter sous forme d\'un flacon préssurisé, permettant un usage nasal ou buccal (embout court pour le nez ou long pour la bouche), ou de solution en ampoules.', '350', 200, 'FBma0U6YmBTIvs4GlWUhSyd1K8feD7YT1U7qlHH7.jpg', 1, 0),
(2, 'Advil', 'Advil est un médicament anti-inflammatoire non stéroïdien (AINS) utilisé pour lutter contre la douleur, les maux de tête et/ou la fièvre, dont le principe actif est l’ibuprofène.\r\n\r\nDans le cas du gel, Advil est destiné au traitement des entorses, contusions et/ou tendinites.\r\n\r\nD’efficacité rapide, il peut être utilisé à la fois chez les adultes et chez les enfants, toutefois, son utilisation est à proscrire chez la femme enceinte, particulièrement à partir du 3ème trimestre.', '450', 200, 'Product_image_1.jpg', 1, 0),
(3, 'Antalyre ', 'Le médicament Antalyre est un collyre dont le principe actif est l\'acide salicylique. Il est utilisé pour soulager les conjonctivites d\'origine non infectieuse.\r\n\r\n', '200', 5, 'Product_image_20.jpg', 1, 1),
(4, 'Actifed ', 'L\'Actifed Etats grippaux est un médicament utilisé pour soulager les principaux signes de l\'état grippal de l\'adulte, les rhinites, rhinopharyngites. Il peut être utilisé à partir de l\'âge de 15 ans.\r\n\r\nL\'association de principes actifs qui le constituent sont le paracétamol, la chlorphénamine et l\'acide ascorbique (autre nom de la vitamine C). Ceux-ci vont à la fois permettre de soulager  la fièvre, les maux de tête, les écoulements nasaux clairs, ainsi que les éternuements (en revanche, il n\'est pas utile en cas de nez bouché).', '600', 200, 'Product_image_19.jpg', 2, 0),
(5, 'Actron', 'Le médicament Actron associe à la fois de l\'aspirine, du paracétamol et de la caféine, afin de soulager les douleurs et la fièvre.\r\n\r\n', '500', 200, 'Product_image_42-600x600.jpg', 3, 0),
(6, 'Algodol', 'Algodol 500mg est un médicament contenant du paracétamol. Le paracétamol est une molécule antalgique (c\'est-à-dire qui permet de soulager la douleur) et antipyrétique (permettant de faire baisser la fièvre).\r\n\r\nCe médicament peut être utilisé chez l\'adulte et chez l\'enfant de plus de 27kg. Il existe donc différentes posologies en fonction du sujet.', '350', 150, 'Product_image_43-600x600.jpg', 4, 0),
(7, 'Aspégic', 'Aspégic est un médicament à base d\'acétyl-salicylate de lysine, dérivé de salicylé, à visée analgésique.\r\n\r\nEn pratique, il est utilisé dans le traitement des affections fébriles, de la douleur, ou encore dans le domaine des rhumatismes, à posologie élevée.\r\n\r\nAspégic permet donc de traiter à la fois la douleur, la fièvre et l\'inflammation.\r\n\r\nCe médicament est disponible sur le marché à différents dosages : 100mg, 250mg, 500mg ou encore 1000mg, en boîtes de 20 ou de 30 sachets.\r\n\r\nLe dosage ', '250', 300, 'Product_image_48.jpg', 5, 0),
(8, 'Aspro', 'Le principe actif contenu dans ce médicament est l\'aspirine, également appelée \"acide acétylsalicylique\". Cette molécule présente à la fois des propriétés antalgiques (c\'est-à-dire permettant de lutter contre la douleur)et antipyrétiques (permettant d\'abaisser la fièvre). A posologie élevée, Aspro présente même une action anti-inflammatoire et entraîne un effet fluidifiant sur le sang.\r\n\r\n', '200', 50, 'Product_image_46-600x600.jpg', 5, 0),
(9, 'DAFALGAN ', 'Traitement symptomatique des douleurs d\'intensité légère à modérée et/ou des états fébriles.\r\n\r\nCette présentation est RÉSERVÉE À L\'ADULTE et À L\'ENFANT à partir de 27 kg (à partir d\'environ 8 ans).', '200', 200, 'Product_image_4-600x600.jpg', 4, 0),
(10, 'IMODIUM ', 'Traitement symptomatique des diarrhées aiguës et chroniques.\r\nLe traitement ne dispense pas de mesures diététiques et d\'une réhydratation si elle est nécessaire.', '350', 120, 'Product_image_10.jpg', 5, 0),
(11, 'ELUDRIL', 'Traitement local d\'appoint antibactérien et antalgique des affections limitées à la muqueuse buccale et à l\'oropharynx (mal de gorge peu intense et sans fièvre, aphtes et petites plaies de la bouche).\r\n\r\n', '120', 15, 'Product_image_40.jpg', 3, 0),
(12, 'FORLAX ', 'Traitement symptomatique de la constipation chez l\'adulte et chez l\'enfant à partir de 8 ans.\r\n\r\n', '260', 300, 'Product_image_49-600x600.jpg', 4, 0),
(13, 'LAMALINE', 'Traitement symptomatique des douleurs d\'intensité modérée à intense et/ou ne répondant pas à l\'utilisation d\'antalgiques périphériques utilisés seuls.\r\n\r\n', '450', 200, 'Product_image_44-600x600.jpg', 3, 0),
(14, 'GAVISCON ', '2 cuillères à café (10 ml) 3 fois par jour après les 3 principaux repas et éventuellement le soir au coucher.\r\n\r\n', '600', 12, 'Product_image_32.jpg', 2, 0),
(15, 'MOPRAL ', 'Les gélules de MOPRAL sont indiquées dans          Traitement des ulcères duodénaux, ·         Prévention des récidives d\'ulcères duodénaux ...etc', '500', 200, 'Product_image_15.jpg', 3, 0),
(16, 'TOPLEXIL ', 'Traitement symptomatique des toux non productives gênantes en particulier à prédominance nocturne.\r\n\r\n', '350', 150, 'Product_image_10.jpg', 4, 0),
(19, 'testing again', 'dfdsfsdf', '259', 256, 'kcxC3H2EJfbn3vZiWBPU0flvjHDl28iKofdagTU9.jpg', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `medecines_orders`
--

CREATE TABLE `medecines_orders` (
  `id` int(11) NOT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`items`)),
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `address` varchar(256) NOT NULL,
  `prescription_path` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medecines_orders`
--

INSERT INTO `medecines_orders` (`id`, `items`, `date`, `user_id`, `amount`, `address`, `prescription_path`) VALUES
(1, '[{\"id\":4,\"title\":\"Actifed \",\"description\":\"L\'Actifed Etats grippaux est un médicament utilisé pour soulager les principaux signes de létat grippal de l\'adulte, les rhinites, rhinopharyngites. Il peut être utilisé à partir de l\'âge de 15 ans.\\r\\n\\r\\nL\'association de principes actifs qui le constituent sont le paracétamol, la chlorphénamine et l\'acide ascorbique (autre nom de la vitamine C). Ceux-ci vont à la fois permettre de soulager  la fièvre, les maux de tête, les écoulements nasaux clairs, ainsi que les éternuements (en revanche, il n\'est pas utile en cas de nez bouché).\",\"price\":\"600\",\"quantity\":200,\"image_name\":\"Product_image_19.jpg\",\"family_id\":2,\"need_presecription\":0,\"prescription\":\"\",\"qnt\":1},{\"id\":1,\"title\":\"Actisoufre\",\"description\":\"Le médicament Actisoufre est un traitement à effet anti-inflammatoire utilisé pour traiter les rhumes, rhinites et rhinopharyngites, de l\'adulte et de l\'enfant.\\r\\n\\r\\nActisoufre peut se présenter sous forme d\'un flacon préssurisé, permettant un usage nasal ou buccal (embout court pour le nez ou long pour la bouche), ou de solution en ampoules.\",\"price\":\"350\",\"quantity\":200,\"image_name\":\"Product_image_13.jpg\",\"family_id\":1,\"need_presecription\":0,\"prescription\":\"\",\"qnt\":1}]', '2023-05-20 22:03:23', 1, '0', 'Allée, Voie de Paris 195 Rousseau Delesseux	', ''),
(2, '[{\"id\":4,\"title\":\"Actifed \",\"price\":\"600\",\"quantity\":200,\"image_name\":\"Product_image_19.jpg\",\"family_id\":2,\"need_presecription\":0,\"prescription\":\"\",\"qnt\":1},{\"id\":1,\"title\":\"Actisoufre\",\"price\":\"350\",\"quantity\":200,\"image_name\":\"Product_image_13.jpg\",\"family_id\":1,\"need_presecription\":0,\"prescription\":\"\",\"qnt\":1}]', '2023-05-20 22:03:23', 1, '0', 'Allée, Voie de Paris 195 Rousseau Delesseux	', ''),
(3, '[{\"id\":\"4\",\"title\":\"Actifed\",\"description\":null,\"price\":\"600\",\"quantity\":\"200\",\"image_name\":\"Product_image_19.jpg\",\"family_id\":\"2\",\"need_presecription\":\"0\",\"prescription\":null,\"qnt\":\"1\",\"sub_total\":\"600\"},{\"id\":\"1\",\"title\":\"Actisoufre\",\"description\":null,\"price\":\"350\",\"quantity\":\"200\",\"image_name\":\"Product_image_13.jpg\",\"family_id\":\"1\",\"need_presecription\":\"0\",\"prescription\":null,\"qnt\":\"1\",\"sub_total\":\"350\"}]', '2023-05-20 22:03:23', 1, '0', 'Allée, Voie de Paris 195 Rousseau Delesseux	', ''),
(4, '[{\"id\":\"4\",\"title\":\"Actifed\",\"description\":null,\"price\":\"600\",\"quantity\":\"200\",\"image_name\":\"Product_image_19.jpg\",\"family_id\":\"2\",\"need_presecription\":\"0\",\"prescription\":null,\"qnt\":\"1\",\"sub_total\":\"600\"},{\"id\":\"1\",\"title\":\"Actisoufre\",\"description\":null,\"price\":\"350\",\"quantity\":\"200\",\"image_name\":\"Product_image_13.jpg\",\"family_id\":\"1\",\"need_presecription\":\"0\",\"prescription\":null,\"qnt\":\"1\",\"sub_total\":\"350\"}]', '2023-05-20 22:03:23', 1, '0', 'Allée, Voie de Paris 195 Rousseau Delesseux	', ''),
(5, '[{\"id\":\"3\",\"title\":\"Antalyre\",\"description\":null,\"price\":\"200\",\"quantity\":\"5\",\"image_name\":\"Product_image_20.jpg\",\"family_id\":\"1\",\"need_presecription\":\"0\",\"prescription\":null,\"qnt\":\"1\",\"sub_total\":\"200\"}]', '2023-05-20 20:46:16', 1, '600', 'Allée, Voie de Paris 195 Rousseau Delesseux', ''),
(6, '[{\"id\":\"1\",\"title\":\"Actisoufre\",\"description\":null,\"price\":\"350\",\"quantity\":\"200\",\"image_name\":\"Product_image_13.jpg\",\"family_id\":\"1\",\"need_presecription\":\"0\",\"prescription\":null,\"qnt\":\"1\",\"sub_total\":\"350\"}]', '2023-05-21 08:19:47', 1, '750', 'Allée, Voie de Paris 195 Rousseau Delesseux', ''),
(7, '[{\"id\":3,\"title\":\"Antalyre \",\"description\":\"\",\"price\":\"200\",\"quantity\":5,\"image_name\":\"Product_image_20.jpg\",\"family_id\":1,\"need_presecription\":0,\"prescription\":\"\",\"qnt\":1,\"sub_total\":200},{\"id\":12,\"title\":\"FORLAX \",\"description\":\"\",\"price\":\"260\",\"quantity\":300,\"image_name\":\"Product_image_49-600x600.jpg\",\"family_id\":4,\"need_presecription\":0,\"prescription\":\"\",\"qnt\":3,\"sub_total\":780}]', '2023-06-02 21:59:53', 1, '1380', 'Allée, Voie de Paris 195 Rousseau Delesseux', ''),
(8, '[{\"id\":1,\"title\":\"Actisoufre\",\"description\":\"\",\"price\":\"350\",\"quantity\":200,\"image_name\":\"Product_image_13.jpg\",\"family_id\":1,\"need_presecription\":0,\"prescription\":\"\",\"qnt\":1,\"sub_total\":350}]', '2023-06-02 22:01:13', 1, '750', 'Allée, Voie de Paris 195 Rousseau Delesseux', '74U9482LGdUjCV1ey12SPkPBhLtkK1tvNCSQ07Fd.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `name` varchar(256) NOT NULL,
  `family_name` varchar(256) NOT NULL,
  `phone_number` varchar(256) NOT NULL,
  `address` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `family_name`, `phone_number`, `address`, `email`, `password`, `role_id`) VALUES
(1, 'Ferdaous', 'Benrouba', '+213699256432', 'Allée, Voie de Paris 195 Rousseau Delesseux', 'benrouba@gmail.com', '$2y$10$AWTtuczP4t0YUuk5Z3QaQOwoPlJdZGKwG/f/u/4t8kjBCkREr9R/K', 1),
(2, 'gh', 'gh', '+213699256432', 'Birds lake -Bouteldja-ElTaref', 'ghgh@gmail.com', '$2y$10$BnINikaS6JcaoLPg0/51iufPU3dsbuZDUM3U/wcAwZN9x3v.4/w3q', 2),
(3, 'r', 'r', '+213699256432', 'rr', 'rr@gmail.com', '$2y$10$l9MN3FVzOmhx3JT0E2Dyuuxc0.O14Z.6VLbdCScEhB6iTYVVuieuq', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `family`
--
ALTER TABLE `family`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medecines`
--
ALTER TABLE `medecines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medecines_orders`
--
ALTER TABLE `medecines_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `family`
--
ALTER TABLE `family`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `medecines`
--
ALTER TABLE `medecines`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `medecines_orders`
--
ALTER TABLE `medecines_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
