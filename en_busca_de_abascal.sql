-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 04, 2022 at 07:07 AM
-- Server version: 10.5.17-MariaDB-1:10.5.17+maria~deb11
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `en_busca_de_abascal`
--

-- --------------------------------------------------------

--
-- Table structure for table `armors`
--

CREATE TABLE `armors` (
  `id_armor` int(10) UNSIGNED NOT NULL,
  `armor` varchar(24) DEFAULT NULL,
  `type` char(2) DEFAULT NULL,
  `durability` int(11) DEFAULT NULL,
  `quality` varchar(16) DEFAULT NULL,
  `rarity` varchar(16) DEFAULT NULL,
  `defense` float DEFAULT NULL,
  `magic_defense` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `body_type` char(2) DEFAULT NULL,
  `mobility` int(11) DEFAULT NULL,
  `crit_resistance` float DEFAULT NULL,
  `vitality` int(11) DEFAULT NULL,
  `dmg_negation` tinyint(1) DEFAULT NULL,
  `class` varchar(16) DEFAULT NULL,
  `armor_level` int(11) DEFAULT NULL,
  `min_armor_level` int(11) DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `stealth` int(11) DEFAULT NULL,
  `notoriety` float DEFAULT NULL,
  `description` text DEFAULT NULL,
  `id_armor_type` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `armors`
--

INSERT INTO `armors` (`id_armor`, `armor`, `type`, `durability`, `quality`, `rarity`, `defense`, `magic_defense`, `weight`, `body_type`, `mobility`, `crit_resistance`, `vitality`, `dmg_negation`, `class`, `armor_level`, `min_armor_level`, `cost`, `stealth`, `notoriety`, `description`, `id_armor_type`) VALUES
(1, 'Thonar\'s sealed Helmet', 'HE', 890, 'legendary', 'legendary', 999, 999, 80, 'HE', 20, 50, 30, 1, 'Berserk', 500, 250, -1, 50, 89, 'Thonar\'s Precious Helmet', 1);

-- --------------------------------------------------------

--
-- Table structure for table `armor_type`
--

CREATE TABLE `armor_type` (
  `id_armor_type` int(10) UNSIGNED NOT NULL,
  `type` varchar(24) NOT NULL,
  `description` int(11) NOT NULL,
  `icon` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `armor_type`
--

INSERT INTO `armor_type` (`id_armor_type`, `type`, `description`, `icon`) VALUES
(1, 'Helmet', 1, 'helmet.png');

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE `characters` (
  `id_character` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) NOT NULL,
  `age` int(11) NOT NULL,
  `race` varchar(16) NOT NULL,
  `gender` char(1) NOT NULL,
  `class` varchar(16) NOT NULL,
  `height` float NOT NULL,
  `weight` float NOT NULL,
  `country` char(3) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`id_character`, `name`, `age`, `race`, `gender`, `class`, `height`, `weight`, `country`, `description`) VALUES
(1, 'Payoh', 67, 'Changeling', 'L', 'Dictator', 1.57, 80, 'RUM', 'RUM = RUMANO\r\nL = LIQUID'),
(2, 'Yuka', 27, 'Mermaid', 'F', 'Cryptobro', 1, 80, 'PUR', 'PUR = PUERTO RICO\r\nF = FEMALE'),
(3, 'Yulen', 104, 'Undead', 'A', 'Miner', 0.8, 25, 'NDE', 'U = UNKNOWN\r\nNDE = NEDERLANDS'),
(4, 'Josema', 3000, 'Deity', 'A', 'Procastinator', 3.14, 0, 'PER', 'A = ALL/NOTHING\r\nPER = PERUANO'),
(5, 'Miren', 21, 'Demon', 'F', 'Ranger', 1.65, 60, 'ST', 'F = FEMALE\r\nST= STEEL');

-- --------------------------------------------------------

--
-- Table structure for table `characters_weapons`
--

CREATE TABLE `characters_weapons` (
  `id_character_weapon` int(10) UNSIGNED NOT NULL,
  `id_character` int(10) UNSIGNED DEFAULT NULL,
  `id_weapon` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `characters_weapons`
--

INSERT INTO `characters_weapons` (`id_character_weapon`, `id_character`, `id_weapon`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id_item` int(10) UNSIGNED NOT NULL,
  `item` varchar(24) DEFAULT NULL,
  `type` char(2) DEFAULT NULL,
  `element` varchar(16) DEFAULT NULL,
  `uses` int(11) DEFAULT NULL,
  `cooldown` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `effect` varchar(64) DEFAULT NULL,
  `material` varchar(32) DEFAULT NULL,
  `consumable` tinyint(1) DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `key_item` tinyint(1) DEFAULT NULL,
  `rarity` varchar(16) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `id_item_type` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id_item`, `item`, `type`, `element`, `uses`, `cooldown`, `weight`, `effect`, `material`, `consumable`, `cost`, `key_item`, `rarity`, `description`, `id_item_type`) VALUES
(1, 'Star Dust', 'TE', 'Cosmic', 1, -1, 0.1, 'Area Healing', 'Stars', 1, 100, 0, 'common', 'Some dust belonging to a meteor', 1);

-- --------------------------------------------------------

--
-- Table structure for table `item_type`
--

CREATE TABLE `item_type` (
  `id_item_type` int(10) UNSIGNED NOT NULL,
  `type` varchar(24) NOT NULL,
  `description` int(11) NOT NULL,
  `icon` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_type`
--

INSERT INTO `item_type` (`id_item_type`, `type`, `description`, `icon`) VALUES
(1, 'Elemental', 10, 'Elemental.exe');

-- --------------------------------------------------------

--
-- Table structure for table `stats`
--

CREATE TABLE `stats` (
  `id_stats` int(10) UNSIGNED NOT NULL,
  `stealth` int(11) NOT NULL,
  `faith` int(11) NOT NULL,
  `sleep` float NOT NULL,
  `dexterity` int(11) NOT NULL,
  `stregth` float NOT NULL,
  `charisma` int(11) NOT NULL,
  `vigor` int(11) NOT NULL,
  `tenacity` int(11) NOT NULL,
  `cooldown` float NOT NULL,
  `speed` float NOT NULL,
  `crit_rate` float NOT NULL,
  `crit_dmg` int(11) NOT NULL,
  `agility` float NOT NULL,
  `max_hp` int(11) NOT NULL,
  `hp` float NOT NULL,
  `max_xp` int(11) NOT NULL,
  `xp` float NOT NULL,
  `max_mp` int(11) NOT NULL,
  `mp` float NOT NULL,
  `level` int(11) NOT NULL,
  `magic_atk` float NOT NULL,
  `magic_def` float NOT NULL,
  `physic_atk` float NOT NULL,
  `physic_def` float NOT NULL,
  `intel` int(11) NOT NULL,
  `stamina` float NOT NULL,
  `mana` int(11) NOT NULL,
  `balance` float NOT NULL,
  `id_characters` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stats`
--

INSERT INTO `stats` (`id_stats`, `stealth`, `faith`, `sleep`, `dexterity`, `stregth`, `charisma`, `vigor`, `tenacity`, `cooldown`, `speed`, `crit_rate`, `crit_dmg`, `agility`, `max_hp`, `hp`, `max_xp`, `xp`, `max_mp`, `mp`, `level`, `magic_atk`, `magic_def`, `physic_atk`, `physic_def`, `intel`, `stamina`, `mana`, `balance`, `id_characters`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 950, 0, 950, 0, 820, 0, 300, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 0, 0, 0, 500, 0, 700, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2),
(3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 1000, 0, 999, 0, 1000, 69, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200, 0, 600, 0, 150, 0, 750, 2, 0, 0, 0, 0, 0, 0, 0, 0, 4),
(5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 450, 0, 500, 0, 300, 0, 100, 18, 0, 0, 0, 0, 0, 0, 0, 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `weapons`
--

CREATE TABLE `weapons` (
  `id_weapon` int(10) UNSIGNED NOT NULL,
  `weapon` varchar(24) DEFAULT NULL,
  `grip` int(11) DEFAULT NULL,
  `durability` int(11) DEFAULT NULL,
  `quality` varchar(16) DEFAULT NULL,
  `crit_rate` float DEFAULT NULL,
  `rarity` varchar(16) DEFAULT NULL,
  `range` float DEFAULT NULL,
  `rate_of_fire` float DEFAULT NULL,
  `notoriety` float DEFAULT NULL,
  `stealth` int(11) DEFAULT NULL,
  `defense` float DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `recoil` int(11) DEFAULT NULL,
  `attack` float DEFAULT NULL,
  `weapon_level` int(11) DEFAULT NULL,
  `min_weapon_level` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `id_weapon_type` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `weapons`
--

INSERT INTO `weapons` (`id_weapon`, `weapon`, `grip`, `durability`, `quality`, `crit_rate`, `rarity`, `range`, `rate_of_fire`, `notoriety`, `stealth`, `defense`, `weight`, `recoil`, `attack`, `weapon_level`, `min_weapon_level`, `description`, `id_weapon_type`) VALUES
(1, 'Chastiefol', 1, 999, 'legendary', 60, 'legendary', 999, -1, 20, 60, 30, 10, 10, 320, 300, 290, 'legendary Spear Chastiefol', 2);

-- --------------------------------------------------------

--
-- Table structure for table `weapon_type`
--

CREATE TABLE `weapon_type` (
  `id_weapons_type` int(10) UNSIGNED NOT NULL,
  `type` varchar(24) NOT NULL,
  `description` text DEFAULT NULL,
  `icon` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `weapon_type`
--

INSERT INTO `weapon_type` (`id_weapons_type`, `type`, `description`, `icon`) VALUES
(1, 'Melee', NULL, NULL),
(2, 'Ranged', NULL, NULL),
(3, 'Spell', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `armors`
--
ALTER TABLE `armors`
  ADD PRIMARY KEY (`id_armor`),
  ADD KEY `id_armor_type` (`id_armor_type`);

--
-- Indexes for table `armor_type`
--
ALTER TABLE `armor_type`
  ADD PRIMARY KEY (`id_armor_type`);

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id_character`);

--
-- Indexes for table `characters_weapons`
--
ALTER TABLE `characters_weapons`
  ADD PRIMARY KEY (`id_character_weapon`),
  ADD KEY `id_character` (`id_character`),
  ADD KEY `id_weapon` (`id_weapon`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id_item`),
  ADD KEY `id_item_type` (`id_item_type`);

--
-- Indexes for table `item_type`
--
ALTER TABLE `item_type`
  ADD PRIMARY KEY (`id_item_type`);

--
-- Indexes for table `stats`
--
ALTER TABLE `stats`
  ADD PRIMARY KEY (`id_stats`);

--
-- Indexes for table `weapons`
--
ALTER TABLE `weapons`
  ADD PRIMARY KEY (`id_weapon`),
  ADD KEY `id_weapon_type` (`id_weapon_type`);

--
-- Indexes for table `weapon_type`
--
ALTER TABLE `weapon_type`
  ADD PRIMARY KEY (`id_weapons_type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `armors`
--
ALTER TABLE `armors`
  MODIFY `id_armor` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `armor_type`
--
ALTER TABLE `armor_type`
  MODIFY `id_armor_type` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `characters`
--
ALTER TABLE `characters`
  MODIFY `id_character` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `characters_weapons`
--
ALTER TABLE `characters_weapons`
  MODIFY `id_character_weapon` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id_item` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `item_type`
--
ALTER TABLE `item_type`
  MODIFY `id_item_type` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stats`
--
ALTER TABLE `stats`
  MODIFY `id_stats` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `weapons`
--
ALTER TABLE `weapons`
  MODIFY `id_weapon` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `weapon_type`
--
ALTER TABLE `weapon_type`
  MODIFY `id_weapons_type` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `armors`
--
ALTER TABLE `armors`
  ADD CONSTRAINT `armors_ibfk_1` FOREIGN KEY (`id_armor_type`) REFERENCES `armor_type` (`id_armor_type`);

--
-- Constraints for table `characters_weapons`
--
ALTER TABLE `characters_weapons`
  ADD CONSTRAINT `characters_weapons_ibfk_1` FOREIGN KEY (`id_character`) REFERENCES `characters` (`id_character`),
  ADD CONSTRAINT `characters_weapons_ibfk_2` FOREIGN KEY (`id_weapon`) REFERENCES `weapons` (`id_weapon`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`id_item_type`) REFERENCES `item_type` (`id_item_type`);

--
-- Constraints for table `weapons`
--
ALTER TABLE `weapons`
  ADD CONSTRAINT `weapons_ibfk_1` FOREIGN KEY (`id_weapon_type`) REFERENCES `weapon_type` (`id_weapons_type`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
