CREATE TABLE `cities` (
 `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
 `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
 `created_at` timestamp NULL DEFAULT NULL,
 `updated_at` timestamp NULL DEFAULT NULL,
 PRIMARY KEY (`id`)
) ENGINE=InnoDB;

CREATE TABLE `doctor_specializations` (
 `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `specialization` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
 `created_at` timestamp NULL DEFAULT NULL,
 `updated_at` timestamp NULL DEFAULT NULL,
 PRIMARY KEY (`id`)
) ENGINE=InnoDB;


