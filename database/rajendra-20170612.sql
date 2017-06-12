CREATE TABLE `knowledge_category` ( `id` INT(11) NOT NULL AUTO_INCREMENT , `category` VARCHAR(191) NOT NULL , `created_at` TIMESTAMP NULL DEFAULT NULL , `updated_at` TIMESTAMP NULL DEFAULT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;

CREATE TABLE `knowledge_center` ( `id` INT(11) NOT NULL AUTO_INCREMENT ,  `speciality_masters_id` INT(11) NOT NULL , `knowledge_category_id` INT(11) NOT NULL , `title` VARCHAR(191) NOT NULL , `sub_title` VARCHAR(191) NULL DEFAULT NULL , `short_description` TEXT NOT NULL , `long_description` LONGTEXT NOT NULL , `image` VARCHAR(191) NULL DEFAULT NULL , `created_at` TIMESTAMP NULL DEFAULT NULL , `updated_at` TIMESTAMP NULL DEFAULT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;

