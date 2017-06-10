 ALTER TABLE doctor_hospitals DROP FOREIGN KEY  `doctor_hospitals_hospital_id_foreign`;

 ALTER TABLE doctor_hospitals ADD CONSTRAINT `doctor_hospitals_hospital_id_foreign` FOREIGN KEY  (`hospital_id`) REFERENCES `centers` (`id`);
