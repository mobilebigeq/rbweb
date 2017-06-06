CREATE TABLE description_section (
  `id` int(11) NOT NULL,
  title varchar(191) NOT NULL,
  description longtext NOT NULL,
  image varchar(191) NOT NULL,
  `page` varchar(191) NOT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE press_clips (
  `id` int(10) unsigned NOT NULL,
  image varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  author varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  publish_in varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  short_description text COLLATE utf8mb4_unicode_ci,
  description longtext COLLATE utf8mb4_unicode_ci,
  `page` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);