ALTER TABLE `page_description` 
CHANGE COLUMN `image` `image` VARCHAR(191) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NULL ;

ALTER TABLE `press_clips` 
CHANGE COLUMN `id` `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT ;

ALTER TABLE `description_section` 
CHANGE COLUMN `id` `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT ;

CREATE TABLE `doctors_quality_accreditation_mapping` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `doctors_id` INT(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`));
