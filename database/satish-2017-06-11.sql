CREATE TABLE `submit_quiz` ( `id` INT NOT NULL AUTO_INCREMENT ,  `quiz_group_id` INT NOT NULL ,  `name` VARCHAR(50) NOT NULL ,  `email` VARCHAR(100) NOT NULL ,  `phone` VARCHAR(15) NOT NULL ,  `city` VARCHAR(50) NOT NULL ,  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,  `updated_at` TIMESTAMP NOT NULL DEFAULT '0000-00-00- 00:00:00' ,    PRIMARY KEY  (`id`)) ENGINE = InnoDB;

CREATE TABLE `submit_quiz_answers` ( `id` INT NOT NULL AUTO_INCREMENT ,  `submit_quiz_id` INT NOT NULL ,  `question_id` INT NOT NULL ,  `answer` INT NOT NULL ,  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,    PRIMARY KEY  (`id`)) ENGINE = InnoDB;

ALTER TABLE `feedback` ADD `doctor_id` INT NOT NULL AFTER `id`;

