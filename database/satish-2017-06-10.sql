CREATE TABLE `frtstwed_rhadmin`.`inpatient_feedback` ( `id` INT NOT NULL AUTO_INCREMENT ,  `city` VARCHAR(100) NOT NULL ,  `health_card_no` VARCHAR(100) NOT NULL ,  `uhid_no` VARCHAR(100) NOT NULL ,  `name` VARCHAR(100) NOT NULL ,  `age` INT NOT NULL ,  `mobile` VARCHAR(15) NOT NULL ,  `email` VARCHAR(100) NOT NULL ,  `company` VARCHAR(100) NOT NULL ,  `area` VARCHAR(100) NOT NULL ,  `zip` INT NOT NULL ,  `category` INT NOT NULL ,  `created_at` TIMESTAMP NOT NULL ,  `updated_at` TIMESTAMP NOT NULL ,    PRIMARY KEY  (`id`)) ENGINE = InnoDB;

ALTER TABLE `inpatient_feedback` CHANGE `category` `category` VARCHAR(100) NOT NULL;

CREATE TABLE `frtstwed_rhadmin`.`inpatient_family_members` ( `member_id` INT NOT NULL AUTO_INCREMENT ,  `feedback_id` INT NOT NULL ,  `spouse` VARCHAR(20) NOT NULL ,  `name` VARCHAR(50) NOT NULL ,  `age` INT NOT NULL ,  `gender` VARCHAR(100) NOT NULL ,  `uhid` VARCHAR(50) NOT NULL ,  `created_at` TIMESTAMP NOT NULL ,  `updated_at` TIMESTAMP NOT NULL ,    PRIMARY KEY  (`member_id`)) ENGINE = InnoDB;

ALTER TABLE `inpatient_family_members` CHANGE `age` `age` VARCHAR(3) NULL;

