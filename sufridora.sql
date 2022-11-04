DROP TABLE IF EXISTS `weapons_materials`;

DROP TABLE IF EXISTS `materials`;
DROP TABLE IF EXISTS `weapons`;

DROP TABLE IF EXISTS `weapons_types`;



CREATE TABLE `weapons_types` (
	id_weapon_type INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT
);


CREATE TABLE `materials`(
    id_material INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
    material VARCHAR(16)
    );


CREATE TABLE `weapons`(
    id_weapon INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
    weapon VARCHAR(24),
    grip INT,
    durability INT,
    quality VARCHAR(16),
    crit_rate FLOAT,
    rarity VARCHAR(16),
    `range` FLOAT,
    rate_of_fire FLOAT,
    notoriety FLOAT,
    stealth INT,
    defense FLOAT,
    weight INT,
    recoil INT,
    attack FLOAT,
    weapon_level INT,
    min_weapon_level INT,
    description TEXT,
    id_weapon_type INT UNSIGNED,
    FOREIGN KEY (id_weapon_type) REFERENCES weapons_types (id_weapon_type)
    );



CREATE TABLE `weapons_materials` (
    id_weapon_material INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
    id_material INT UNSIGNED,
    id_weapon INT UNSIGNED,
    FOREIGN KEY (id_material) REFERENCES materials (id_material),
    FOREIGN KEY (id_weapon) REFERENCES weapons (id_weapon)
);
