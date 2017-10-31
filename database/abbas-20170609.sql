CREATE TABLE `academic_program_mapping` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(191) NOT NULL,
  `description` VARCHAR(191) NULL,
  `image` VARCHAR(191) NOT NULL,
  `academic_programs_id` INT(11) NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


CREATE TABLE `academic_programs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `program_name` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `sub_title` varchar(191) NOT NULL,
  `description` longtext NOT NULL,
  `specialities` varchar(191) NOT NULL,
  `number_of_seats` varchar(20) DEFAULT NULL,
  `duration` varchar(191) DEFAULT NULL,
  `eligibility` varchar(191) DEFAULT NULL,
  `session` varchar(191) DEFAULT NULL,
  `group_section_id` int(11) NOT NULL,
  `sub_group_section_id` int(11) NOT NULL,
  `page` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


CREATE TABLE `doctor_programs_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctors_id` int(11) unsigned NOT NULL,
  `academic_programs_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `doctor_mapping_fk` (`doctors_id`),
  KEY `programs_mapping_fk` (`academic_programs_id`),
  CONSTRAINT `doctor_mapping_fk` FOREIGN KEY (`doctors_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `programs_mapping_fk` FOREIGN KEY (`academic_programs_id`) REFERENCES `academic_programs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;



CREATE TABLE `sub_group_section` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `title` varchar(191) NOT NULL,
 `description` text NOT NULL,
 `page` varchar(191) NOT NULL,
 `created_at` timestamp NULL DEFAULT NULL,
 `updated_at` timestamp NULL DEFAULT NULL,
 PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;