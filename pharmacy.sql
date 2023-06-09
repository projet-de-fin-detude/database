-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2023 at 03:23 PM
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
(1, 'Actisoufre', 'Le médicament Actisoufre est un traitement à effet anti-inflammatoire utilisé pour traiter les rhumes, rhinites et rhinopharyngites, de l\'adulte et de l\'enfant.\r\n\r\n\r\nActisoufre peut se présenter sous forme d\'un flacon préssurisé, permettant un usage nasal ou buccal (embout court pour le nez ou long pour la bouche), ou de solution en ampoules.', '350', 199, 'FBma0U6YmBTIvs4GlWUhSyd1K8feD7YT1U7qlHH7.jpg', 1, 0),
(2, 'Advil', 'Advil est un médicament anti-inflammatoire non stéroïdien (AINS) utilisé pour lutter contre la douleur, les maux de tête et/ou la fièvre, dont le principe actif est l’ibuprofène.\r\n\r\nDans le cas du gel, Advil est destiné au traitement des entorses, contusions et/ou tendinites.\r\n\r\nD’efficacité rapide, il peut être utilisé à la fois chez les adultes et chez les enfants, toutefois, son utilisation est à proscrire chez la femme enceinte, particulièrement à partir du 3ème trimestre.', '450', 198, 'Product_image_1.jpg', 1, 0),
(3, 'Antalyre ', 'Le médicament Antalyre est un collyre dont le principe actif est l\'acide salicylique. Il est utilisé pour soulager les conjonctivites d\'origine non infectieuse.\r\n\r\n', '200', 3, 'Product_image_20.jpg', 1, 1),
(4, 'Actifed ', 'L\'Actifed Etats grippaux est un médicament utilisé pour soulager les principaux signes de l\'état grippal de l\'adulte, les rhinites, rhinopharyngites. Il peut être utilisé à partir de l\'âge de 15 ans.\r\n\r\nL\'association de principes actifs qui le constituent sont le paracétamol, la chlorphénamine et l\'acide ascorbique (autre nom de la vitamine C). Ceux-ci vont à la fois permettre de soulager  la fièvre, les maux de tête, les écoulements nasaux clairs, ainsi que les éternuements (en revanche, il n\'est pas utile en cas de nez bouché).', '600', 199, 'Product_image_19.jpg', 2, 0),
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
  `prescription_path` varchar(256) DEFAULT NULL,
  `status` varchar(256) DEFAULT 'en attente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medecines_orders`
--

INSERT INTO `medecines_orders` (`id`, `items`, `date`, `user_id`, `amount`, `address`, `prescription_path`, `status`) VALUES
(1, '[{\"id\":4,\"title\":\"Actifed \",\"description\":\"L\'Actifed Etats grippaux est un médicament utilisé pour soulager les principaux signes de létat grippal de l\'adulte, les rhinites, rhinopharyngites. Il peut être utilisé à partir de l\'âge de 15 ans.\\r\\n\\r\\nL\'association de principes actifs qui le constituent sont le paracétamol, la chlorphénamine et l\'acide ascorbique (autre nom de la vitamine C). Ceux-ci vont à la fois permettre de soulager  la fièvre, les maux de tête, les écoulements nasaux clairs, ainsi que les éternuements (en revanche, il n\'est pas utile en cas de nez bouché).\",\"price\":\"600\",\"quantity\":200,\"image_name\":\"Product_image_19.jpg\",\"family_id\":2,\"need_presecription\":0,\"prescription\":\"\",\"qnt\":1},{\"id\":1,\"title\":\"Actisoufre\",\"description\":\"Le médicament Actisoufre est un traitement à effet anti-inflammatoire utilisé pour traiter les rhumes, rhinites et rhinopharyngites, de l\'adulte et de l\'enfant.\\r\\n\\r\\nActisoufre peut se présenter sous forme d\'un flacon préssurisé, permettant un usage nasal ou buccal (embout court pour le nez ou long pour la bouche), ou de solution en ampoules.\",\"price\":\"350\",\"quantity\":200,\"image_name\":\"Product_image_13.jpg\",\"family_id\":1,\"need_presecription\":0,\"prescription\":\"\",\"qnt\":1}]', '2023-06-08 21:51:48', 1, '0', 'Allée, Voie de Paris 195 Rousseau Delesseux	', '', 'refusé'),
(2, '[{\"id\":4,\"title\":\"Actifed \",\"price\":\"600\",\"quantity\":200,\"image_name\":\"Product_image_19.jpg\",\"family_id\":2,\"need_presecription\":0,\"prescription\":\"\",\"qnt\":1},{\"id\":1,\"title\":\"Actisoufre\",\"price\":\"350\",\"quantity\":200,\"image_name\":\"Product_image_13.jpg\",\"family_id\":1,\"need_presecription\":0,\"prescription\":\"\",\"qnt\":1}]', '2023-06-09 12:47:49', 1, '0', 'Allée, Voie de Paris 195 Rousseau Delesseux	', '', 'accepté'),
(3, '[{\"id\":\"4\",\"title\":\"Actifed\",\"description\":null,\"price\":\"600\",\"quantity\":\"200\",\"image_name\":\"Product_image_19.jpg\",\"family_id\":\"2\",\"need_presecription\":\"0\",\"prescription\":null,\"qnt\":\"1\",\"sub_total\":\"600\"},{\"id\":\"1\",\"title\":\"Actisoufre\",\"description\":null,\"price\":\"350\",\"quantity\":\"200\",\"image_name\":\"Product_image_13.jpg\",\"family_id\":\"1\",\"need_presecription\":\"0\",\"prescription\":null,\"qnt\":\"1\",\"sub_total\":\"350\"}]', '2023-06-08 19:37:02', 1, '0', 'Allée, Voie de Paris 195 Rousseau Delesseux	', '', 'en-attente'),
(4, '[{\"id\":\"4\",\"title\":\"Actifed\",\"description\":null,\"price\":\"600\",\"quantity\":\"200\",\"image_name\":\"Product_image_19.jpg\",\"family_id\":\"2\",\"need_presecription\":\"0\",\"prescription\":null,\"qnt\":\"1\",\"sub_total\":\"600\"},{\"id\":\"1\",\"title\":\"Actisoufre\",\"description\":null,\"price\":\"350\",\"quantity\":\"200\",\"image_name\":\"Product_image_13.jpg\",\"family_id\":\"1\",\"need_presecription\":\"0\",\"prescription\":null,\"qnt\":\"1\",\"sub_total\":\"350\"}]', '2023-06-08 19:37:04', 1, '0', 'Allée, Voie de Paris 195 Rousseau Delesseux	', '', 'en-attente'),
(5, '[{\"id\":\"3\",\"title\":\"Antalyre\",\"description\":null,\"price\":\"200\",\"quantity\":\"5\",\"image_name\":\"Product_image_20.jpg\",\"family_id\":\"1\",\"need_presecription\":\"0\",\"prescription\":null,\"qnt\":\"1\",\"sub_total\":\"200\"}]', '2023-06-08 19:37:07', 1, '600', 'Allée, Voie de Paris 195 Rousseau Delesseux', '', 'en-attente'),
(6, '[{\"id\":\"1\",\"title\":\"Actisoufre\",\"description\":null,\"price\":\"350\",\"quantity\":\"200\",\"image_name\":\"Product_image_13.jpg\",\"family_id\":\"1\",\"need_presecription\":\"0\",\"prescription\":null,\"qnt\":\"1\",\"sub_total\":\"350\"}]', '2023-06-08 19:37:09', 1, '750', 'Allée, Voie de Paris 195 Rousseau Delesseux', '', 'en-attente'),
(7, '[{\"id\":3,\"title\":\"Antalyre \",\"description\":\"\",\"price\":\"200\",\"quantity\":5,\"image_name\":\"Product_image_20.jpg\",\"family_id\":1,\"need_presecription\":0,\"prescription\":\"\",\"qnt\":1,\"sub_total\":200},{\"id\":12,\"title\":\"FORLAX \",\"description\":\"\",\"price\":\"260\",\"quantity\":300,\"image_name\":\"Product_image_49-600x600.jpg\",\"family_id\":4,\"need_presecription\":0,\"prescription\":\"\",\"qnt\":3,\"sub_total\":780}]', '2023-06-02 21:59:53', 1, '1380', 'Allée, Voie de Paris 195 Rousseau Delesseux', '', NULL),
(8, '[{\"id\":1,\"title\":\"Actisoufre\",\"description\":\"\",\"price\":\"350\",\"quantity\":200,\"image_name\":\"Product_image_13.jpg\",\"family_id\":1,\"need_presecription\":0,\"prescription\":\"\",\"qnt\":1,\"sub_total\":350}]', '2023-06-02 22:01:13', 1, '750', 'Allée, Voie de Paris 195 Rousseau Delesseux', '74U9482LGdUjCV1ey12SPkPBhLtkK1tvNCSQ07Fd.pdf', NULL),
(9, '[{\"id\":1,\"title\":\"Actisoufre\",\"description\":\"\",\"price\":\"350\",\"quantity\":200,\"image_name\":\"FBma0U6YmBTIvs4GlWUhSyd1K8feD7YT1U7qlHH7.jpg\",\"family_id\":1,\"need_presecription\":0,\"qnt\":1,\"sub_total\":350},{\"id\":3,\"title\":\"Antalyre \",\"description\":\"\",\"price\":\"200\",\"quantity\":5,\"image_name\":\"Product_image_20.jpg\",\"family_id\":1,\"need_presecription\":1,\"qnt\":1,\"sub_total\":200}]', '2023-06-08 17:02:31', 1, '950', 'Allée, Voie de Paris 195 Rousseau Delesseux', '', NULL),
(10, '[{\"id\":3,\"title\":\"Antalyre \",\"description\":\"\",\"price\":\"200\",\"quantity\":5,\"image_name\":\"Product_image_20.jpg\",\"family_id\":1,\"need_presecription\":1,\"qnt\":1,\"sub_total\":200},{\"id\":1,\"title\":\"Actisoufre\",\"description\":\"\",\"price\":\"350\",\"quantity\":200,\"image_name\":\"FBma0U6YmBTIvs4GlWUhSyd1K8feD7YT1U7qlHH7.jpg\",\"family_id\":1,\"need_presecription\":0,\"qnt\":1,\"sub_total\":350}]', '2023-06-08 17:10:58', 1, '950', 'Allée, Voie de Paris 195 Rousseau Delesseux', 'Eq1cMDy9znKZRpzLATbWfUJ85wBe0ZSMbOmnTP1h.pdf', NULL),
(11, '[{\"id\":3,\"title\":\"Antalyre \",\"description\":\"\",\"price\":\"200\",\"quantity\":5,\"image_name\":\"Product_image_20.jpg\",\"family_id\":1,\"need_presecription\":1,\"qnt\":1,\"sub_total\":200},{\"id\":1,\"title\":\"Actisoufre\",\"description\":\"\",\"price\":\"350\",\"quantity\":200,\"image_name\":\"FBma0U6YmBTIvs4GlWUhSyd1K8feD7YT1U7qlHH7.jpg\",\"family_id\":1,\"need_presecription\":0,\"qnt\":1,\"sub_total\":350}]', '2023-06-08 17:10:59', 1, '950', 'Allée, Voie de Paris 195 Rousseau Delesseux', '2VP4w5gQNY8FcirlGIr6mDASlselMi22vDgiNiOt.pdf', NULL),
(12, '[{\"id\":1,\"title\":\"Actisoufre\",\"description\":\"\",\"price\":\"350\",\"quantity\":200,\"image_name\":\"FBma0U6YmBTIvs4GlWUhSyd1K8feD7YT1U7qlHH7.jpg\",\"family_id\":1,\"need_presecription\":0,\"qnt\":1,\"sub_total\":350},{\"id\":3,\"title\":\"Antalyre \",\"description\":\"\",\"price\":\"200\",\"quantity\":5,\"image_name\":\"Product_image_20.jpg\",\"family_id\":1,\"need_presecription\":1,\"qnt\":1,\"sub_total\":200}]', '2023-06-08 17:13:04', 1, '950', 'Allée, Voie de Paris 195 Rousseau Delesseux', '5hM8jgZfoypd74Ug5akIjzAauMXYyuvP9Nrip6hV.pdf', NULL),
(13, '[{\"id\":3,\"title\":\"Antalyre \",\"description\":\"\",\"price\":\"200\",\"quantity\":5,\"image_name\":\"Product_image_20.jpg\",\"family_id\":1,\"need_presecription\":1,\"qnt\":1,\"sub_total\":200}]', '2023-06-08 17:16:50', 1, '600', 'Allée, Voie de Paris 195 Rousseau Delesseux', 'qT5B5uWy3ACbdJR3PwBEt3JoR36ZVwzueatzDy5q.pdf', NULL),
(14, '[{\"id\":3,\"title\":\"Antalyre \",\"description\":\"\",\"price\":\"200\",\"quantity\":5,\"image_name\":\"Product_image_20.jpg\",\"family_id\":1,\"need_presecription\":1,\"qnt\":1,\"sub_total\":200}]', '2023-06-08 17:16:51', 1, '600', 'Allée, Voie de Paris 195 Rousseau Delesseux', '7zkdQWc2dSAzU3Py4lguxHh4LP8wIiVcWCiRT8eD.pdf', NULL),
(15, '[{\"id\":3,\"title\":\"Antalyre \",\"description\":\"\",\"price\":\"200\",\"quantity\":5,\"image_name\":\"Product_image_20.jpg\",\"family_id\":1,\"need_presecription\":1,\"qnt\":1,\"sub_total\":200}]', '2023-06-08 17:16:51', 1, '600', 'Allée, Voie de Paris 195 Rousseau Delesseux', 'T0C7b12gVPjOWxhHj0Vb8j7I4K46vZSGSag70rDu.pdf', NULL),
(16, '[{\"id\":3,\"title\":\"Antalyre \",\"description\":\"\",\"price\":\"200\",\"quantity\":5,\"image_name\":\"Product_image_20.jpg\",\"family_id\":1,\"need_presecription\":1,\"qnt\":1,\"sub_total\":200}]', '2023-06-08 17:16:51', 1, '600', 'Allée, Voie de Paris 195 Rousseau Delesseux', 'FK1uxqipbWRlDHlXhMzS7iqw3kd56L17xZdrziq2.pdf', NULL),
(17, '[{\"id\":3,\"title\":\"Antalyre \",\"description\":\"\",\"price\":\"200\",\"quantity\":5,\"image_name\":\"Product_image_20.jpg\",\"family_id\":1,\"need_presecription\":1,\"qnt\":1,\"sub_total\":200}]', '2023-06-08 17:16:52', 1, '600', 'Allée, Voie de Paris 195 Rousseau Delesseux', 'sq4bo6ZP4WF6hzODAEBiLvO5xunFLUgolWSgoKkp.pdf', NULL),
(18, '[{\"id\":3,\"title\":\"Antalyre \",\"description\":\"\",\"price\":\"200\",\"quantity\":5,\"image_name\":\"Product_image_20.jpg\",\"family_id\":1,\"need_presecription\":1,\"qnt\":1,\"sub_total\":200}]', '2023-06-08 17:16:52', 1, '600', 'Allée, Voie de Paris 195 Rousseau Delesseux', 'fbhcTKWq7iwUsoHhf7euMsDMEtO4yPowjPN3Ql86.pdf', NULL),
(19, '[{\"id\":3,\"title\":\"Antalyre \",\"description\":\"\",\"price\":\"200\",\"quantity\":5,\"image_name\":\"Product_image_20.jpg\",\"family_id\":1,\"need_presecription\":1,\"qnt\":1,\"sub_total\":200}]', '2023-06-08 17:16:53', 1, '600', 'Allée, Voie de Paris 195 Rousseau Delesseux', 'oSfnzl7NUp5e1zlCKzpoVt83ghSs5I76WkAgvzEj.pdf', NULL),
(20, '[{\"id\":3,\"title\":\"Antalyre \",\"description\":\"\",\"price\":\"200\",\"quantity\":5,\"image_name\":\"Product_image_20.jpg\",\"family_id\":1,\"need_presecription\":1,\"qnt\":1,\"sub_total\":200}]', '2023-06-08 17:16:54', 1, '600', 'Allée, Voie de Paris 195 Rousseau Delesseux', 'K77ZfaqK5BFcFZMMZo3RCvG8laiL6xK7A4jB4Bbj.pdf', NULL),
(21, '[{\"id\":3,\"title\":\"Antalyre \",\"description\":\"\",\"price\":\"200\",\"quantity\":5,\"image_name\":\"Product_image_20.jpg\",\"family_id\":1,\"need_presecription\":1,\"qnt\":1,\"sub_total\":200}]', '2023-06-08 17:16:54', 1, '600', 'Allée, Voie de Paris 195 Rousseau Delesseux', 'mr30HAJbekhKg3AzaPBp87mW9wpKhyxgtin3Ut6X.pdf', NULL),
(22, '[{\"id\":3,\"title\":\"Antalyre \",\"description\":\"\",\"price\":\"200\",\"quantity\":5,\"image_name\":\"Product_image_20.jpg\",\"family_id\":1,\"need_presecription\":1,\"qnt\":1,\"sub_total\":200}]', '2023-06-08 17:16:54', 1, '600', 'Allée, Voie de Paris 195 Rousseau Delesseux', 'aJ2wjyWbciDi17ZHwX1kVDoUutCBHS3VKjKdWOFW.pdf', NULL),
(23, '[{\"id\":3,\"title\":\"Antalyre \",\"description\":\"\",\"price\":\"200\",\"quantity\":5,\"image_name\":\"Product_image_20.jpg\",\"family_id\":1,\"need_presecription\":1,\"qnt\":1,\"sub_total\":200}]', '2023-06-08 17:16:55', 1, '600', 'Allée, Voie de Paris 195 Rousseau Delesseux', 'sQ0qCuqU4CaqO6kM7WVuek5tlEcqwQ6yclMPNHp8.pdf', NULL),
(24, '[{\"id\":3,\"title\":\"Antalyre \",\"description\":\"\",\"price\":\"200\",\"quantity\":5,\"image_name\":\"Product_image_20.jpg\",\"family_id\":1,\"need_presecription\":1,\"qnt\":1,\"sub_total\":200}]', '2023-06-08 17:16:55', 1, '600', 'Allée, Voie de Paris 195 Rousseau Delesseux', 'zqfocLAq4ZdJHpQz2nIDuhp3tGDHON7im3pjwB9C.pdf', NULL),
(25, '[{\"id\":3,\"title\":\"Antalyre \",\"description\":\"\",\"price\":\"200\",\"quantity\":5,\"image_name\":\"Product_image_20.jpg\",\"family_id\":1,\"need_presecription\":1,\"qnt\":1,\"sub_total\":200}]', '2023-06-08 17:16:56', 1, '600', 'Allée, Voie de Paris 195 Rousseau Delesseux', '0zMMymKes8hmUjCVFFoqJfMf3aw04EPgmGyZEsQj.pdf', NULL),
(26, '[{\"id\":2,\"title\":\"Advil\",\"description\":\"\",\"price\":\"450\",\"quantity\":200,\"image_name\":\"Product_image_1.jpg\",\"family_id\":1,\"need_presecription\":0,\"qnt\":1,\"sub_total\":450},{\"id\":3,\"title\":\"Antalyre \",\"description\":\"\",\"price\":\"200\",\"quantity\":5,\"image_name\":\"Product_image_20.jpg\",\"family_id\":1,\"need_presecription\":1,\"qnt\":4,\"sub_total\":800}]', '2023-06-09 12:58:48', 1, '1650', 'Allée, Voie de Paris 195 Rousseau Delesseux', 'BfP8S21AugXQzCAjYH2fS1nmWRy57MSnolxYeRow.pdf', 'en-attente'),
(27, '[{\"id\":5,\"title\":\"Actron\",\"description\":\"\",\"price\":\"500\",\"quantity\":197,\"image_name\":\"Product_image_42-600x600.jpg\",\"family_id\":3,\"need_presecription\":0,\"qnt\":3,\"sub_total\":1500},{\"id\":3,\"title\":\"Antalyre \",\"description\":\"\",\"price\":\"200\",\"quantity\":4,\"image_name\":\"Product_image_20.jpg\",\"family_id\":1,\"need_presecription\":1,\"qnt\":1,\"sub_total\":200}]', '2023-06-09 12:58:47', 1, '2100', 'Allée, Voie de Paris 195 Rousseau Delesseux', 'kPEdQSYbytIAMyMmNuxxAq8ZkdkVo42QTs8S2ZOE.pdf', 'en-attente'),
(28, '[{\"id\":2,\"title\":\"Advil\",\"description\":\"\",\"price\":\"450\",\"quantity\":200,\"image_name\":\"Product_image_1.jpg\",\"family_id\":1,\"need_presecription\":0,\"qnt\":1,\"sub_total\":450},{\"id\":1,\"title\":\"Actisoufre\",\"description\":\"\",\"price\":\"350\",\"quantity\":200,\"image_name\":\"FBma0U6YmBTIvs4GlWUhSyd1K8feD7YT1U7qlHH7.jpg\",\"family_id\":1,\"need_presecription\":0,\"qnt\":1,\"sub_total\":350}]', '2023-06-09 12:58:46', 1, '1200', 'Allée, Voie de Paris 195 Rousseau Delesseux', '', 'en-attente'),
(29, '[{\"id\":4,\"title\":\"Actifed \",\"description\":\"\",\"price\":\"600\",\"quantity\":200,\"image_name\":\"Product_image_19.jpg\",\"family_id\":2,\"need_presecription\":0,\"qnt\":1,\"sub_total\":600},{\"id\":3,\"title\":\"Antalyre \",\"description\":\"\",\"price\":\"200\",\"quantity\":5,\"image_name\":\"Product_image_20.jpg\",\"family_id\":1,\"need_presecription\":1,\"qnt\":1,\"sub_total\":200}]', '2023-06-09 12:58:44', 1, '1200', 'Allée, Voie de Paris 195 Rousseau Delesseux', 'pqwJv6tUEYKAl80zJPECOYZ4wv6tlh7VytvYhvte.pdf', 'en-attente'),
(30, '[{\"id\":3,\"title\":\"Antalyre \",\"description\":\"\",\"price\":\"200\",\"quantity\":4,\"image_name\":\"Product_image_20.jpg\",\"family_id\":1,\"need_presecription\":1,\"qnt\":1,\"sub_total\":200}]', '2023-06-09 12:58:43', 1, '600', 'Allée, Voie de Paris 195 Rousseau Delesseux', 'Su2BXtFdYojLhaSvP8mly3uAE5a0rYzlt0pl3oTy.pdf', 'en-attente'),
(31, '[{\"id\":2,\"title\":\"Advil\",\"description\":\"\",\"price\":\"450\",\"quantity\":199,\"image_name\":\"Product_image_1.jpg\",\"family_id\":1,\"need_presecription\":0,\"qnt\":1,\"sub_total\":450}]', '2023-06-09 11:56:51', 1, '850', 'Allée, Voie de Paris 195 Rousseau Delesseux', '', 'en attente');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
