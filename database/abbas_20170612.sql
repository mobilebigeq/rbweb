ALTER TABLE `speciality_masters` 
ADD COLUMN `slug` VARCHAR(191) NOT NULL AFTER `speciality`,
ADD COLUMN `show_status` VARCHAR(50) NOT NULL AFTER `slug`;
