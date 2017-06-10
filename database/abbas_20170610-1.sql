ALTER TABLE `sub_group_section` 
ADD COLUMN `group_section_id` INT(11) NOT NULL AFTER `id`;

ALTER TABLE `group_section` ADD `image` VARCHAR(191) NULL AFTER `description`;

ALTER TABLE `academic_programs` CHANGE `group_section_id` `group_section_id` INT(11) NULL;

CREATE TABLE `academic_contact` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `academic_programs_id` INT(11) NOT NULL,
  `name` VARCHAR(191) NOT NULL,
  `designation` VARCHAR(191) NOT NULL,
  `mobile` VARCHAR(20) NULL,
  `email` VARCHAR(100) NULL,
  `created_at` TIMESTAMP NULL,
  `updated_at` TIMESTAMP NULL,
  PRIMARY KEY (`id`));

  
ALTER TABLE `academic_contact` ADD CONSTRAINT `academic_program_contact_fk` FOREIGN KEY (`academic_programs_id`) REFERENCES `academic_programs`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
