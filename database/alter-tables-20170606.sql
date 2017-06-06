
CREATE TABLE `doctor_speciality_features` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `doctors_id` int(10) unsigned NOT NULL,
  `our_speciality_features_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `doctor_speciality_features_doctors_id_foreign` (`doctors_id`),
  KEY `doctor_speciality_features_our_speciality_features_id_foreign` (`our_speciality_features_id`),
  CONSTRAINT `doctor_speciality_features_doctors_id_foreign` FOREIGN KEY (`doctors_id`) REFERENCES `doctors` (`id`),
  CONSTRAINT `doctor_speciality_features_our_speciality_features_id_foreign` FOREIGN KEY (`our_speciality_features_id`) REFERENCES `our_speciality_features` (`id`)
) ENGINE=InnoDB;
 

