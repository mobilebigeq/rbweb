ALTER TABLE centers
ADD COLUMN image varchar(255) after telephone, 
ADD COLUMN description text after telephone, 
ADD COLUMN visitor_information text 
after telephone;


ALTER TABLE page_description
CHANGE COLUMN subtitle subtitle varchar(255) null,
CHANGE COLUMN description description text null;


CREATE TABLE `doctors_specialization_mapping` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `doctors_id` int(10) unsigned NOT NULL,
  `doctor_specializations_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `doctors_specialization_mapping_doctors_id_foreign` (`doctors_id`),
  CONSTRAINT `doctors_specialization_mapping_doctors_id_foreign` FOREIGN KEY (`doctors_id`) REFERENCES `doctors` (`id`)
) ENGINE=InnoDB;

CREATE TABLE `doctor_speciality_masters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `doctors_id` int(10) unsigned NOT NULL,
  `doctor_specialization_masters_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;



CREATE TABLE `center_speciality_masters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `centers_id` int(10) unsigned NOT NULL,
  `speciality_masters_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;



CREATE TABLE `center_brief_facilities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `centers_id` int(10) unsigned NOT NULL,
  `brief_facilities_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `center_brief_facilities_centers_id_foreign` (`centers_id`),
  KEY `center_brief_facilities_brief_facilities_id_foreign` (`brief_facilities_id`),
  CONSTRAINT `center_brief_facilities_brief_facilities_id_foreign` FOREIGN KEY (`brief_facilities_id`) REFERENCES `brief_facilities` (`id`),
  CONSTRAINT `center_brief_facilities_centers_id_foreign` FOREIGN KEY (`centers_id`) REFERENCES `centers` (`id`)
) ENGINE=InnoDB;



 CREATE TABLE `center_speciality_features` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `centers_id` int(10) unsigned NOT NULL,
  `our_speciality_features_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `center_speciality_features_centers_id_foreign` (`centers_id`),
  KEY `center_speciality_features_our_speciality_features_id_foreign` (`our_speciality_features_id`),
  CONSTRAINT `center_speciality_features_centers_id_foreign` FOREIGN KEY (`centers_id`) REFERENCES `centers` (`id`),
  CONSTRAINT `center_speciality_features_our_speciality_features_id_foreign` FOREIGN KEY (`our_speciality_features_id`) REFERENCES `our_speciality_features` (`id`)
) ENGINE=InnoDB;



CREATE TABLE `center_doctors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `centers_id` int(10) unsigned NOT NULL,
  `doctors_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `center_doctors_centers_id_foreign` (`centers_id`),
  KEY `center_doctors_doctors_id_foreign` (`doctors_id`),
  CONSTRAINT `center_doctors_centers_id_foreign` FOREIGN KEY (`centers_id`) REFERENCES `centers` (`id`),
  CONSTRAINT `center_doctors_doctors_id_foreign` FOREIGN KEY (`doctors_id`) REFERENCES `doctors` (`id`)
) ENGINE=InnoDB;