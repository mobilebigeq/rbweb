drop table `doctor_quality_accreditation_mapping`;

CREATE TABLE `doctors_quality_accreditation_mapping` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `doctors_id` INT(11) NOT NULL,
  `page` varchar(191) not null,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
  
);

