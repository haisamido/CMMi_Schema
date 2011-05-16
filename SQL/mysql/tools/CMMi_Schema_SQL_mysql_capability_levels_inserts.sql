-- -----------------------------------------------------
-- Data for table `cmmi`.`cmmi_capability_levels`
-- -----------------------------------------------------
SET AUTOCOMMIT=0;
USE `cmmi`;

INSERT INTO  `cmmi`.`cmmi_capability_levels` ( `id`, `version_id`, `capability_level_number`, `capability_level_name`) VALUES (1,1,'0','Incomplete') ;
INSERT INTO  `cmmi`.`cmmi_capability_levels` ( `id`, `version_id`, `capability_level_number`, `capability_level_name`) VALUES (2,1,'1','Performed') ;
INSERT INTO  `cmmi`.`cmmi_capability_levels` ( `id`, `version_id`, `capability_level_number`, `capability_level_name`) VALUES (3,1,'2','Managed') ;
INSERT INTO  `cmmi`.`cmmi_capability_levels` ( `id`, `version_id`, `capability_level_number`, `capability_level_name`) VALUES (4,1,'3','Defined') ;

commit;
