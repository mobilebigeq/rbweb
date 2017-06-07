CREATE TABLE `group_section` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(191) NOT NULL,
  `description` TEXT NULL,
  `page` VARCHAR(45) NOT NULL,
   created_at timestamp NULL DEFAULT NULL,
   updated_at timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`));


CREATE TABLE `question_section` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `question` VARCHAR(191) NULL,
  `answer` TEXT NULL,
  `page` VARCHAR(191) NULL,
   created_at timestamp NULL DEFAULT NULL,
   updated_at timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`));


ALTER TABLE `question_section` 
ADD COLUMN `group_section_id` INT(11) NOT NULL AFTER `id`;

