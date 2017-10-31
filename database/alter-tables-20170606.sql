
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
 


CREATE TABLE `vaccination_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age_display` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age_in_weeks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oral` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `injection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB


CREATE TABLE `doctor_awards_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `doctors_id` int(10) unsigned NOT NULL,
  `awards_history_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `doctor_awards_history_doctors_id_foreign` (`doctors_id`),
  KEY `doctor_awards_history_awards_history_id_foreign` (`awards_history_id`),
  CONSTRAINT `doctor_awards_history_awards_history_id_foreign` FOREIGN KEY (`awards_history_id`) REFERENCES `awards_history` (`id`),
  CONSTRAINT `doctor_awards_history_doctors_id_foreign` FOREIGN KEY (`doctors_id`) REFERENCES `doctors` (`id`)
) ENGINE=InnoDB;



