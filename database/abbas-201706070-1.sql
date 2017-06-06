CREATE TABLE `video_section` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(191) NOT NULL,
  `description` LONGTEXT NOT NULL,
  `image` VARCHAR(191) NULL,
  `youtube_url` VARCHAR(191) NOT NULL,
  `page` VARCHAR(191) NOT NULL,
   created_at timestamp NULL DEFAULT NULL,
   updated_at timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);



ALTER TABLE `centers` ADD COLUMN `lat_long` VARCHAR(100) NULL AFTER `telephone`;
ALTER TABLE `testimonial_details` ADD COLUMN `page` VARCHAR(191) NULL AFTER `type`;
