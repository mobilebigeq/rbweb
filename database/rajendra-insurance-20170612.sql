CREATE TABLE `rainbow_admin`.`insurance_category` ( `id` INT(11) NOT NULL AUTO_INCREMENT , `title` VARCHAR(191) NOT NULL , `description` TEXT NOT NULL , `image` VARCHAR(191) NOT NULL , `created_at` TIMESTAMP NULL DEFAULT NULL , `updated_at` TIMESTAMP NULL DEFAULT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;



CREATE TABLE `rainbow_admin`.`insurance` ( `id` INT(11) NOT NULL AUTO_INCREMENT , `centers_id` INT(11) NOT NULL , `insurance_category_id` INT(11) NOT NULL , `title` VARCHAR(191) NOT NULL , `description` LONGTEXT NOT NULL , `created_at` TIMESTAMP NULL DEFAULT NULL , `updated_at` TIMESTAMP NULL DEFAULT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;
