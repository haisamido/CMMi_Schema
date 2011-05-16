-- -----------------------------------------------------
-- Data for table `cmmi`.`cmmi_maturity_levels`
-- -----------------------------------------------------
SET AUTOCOMMIT=0;
USE `cmmi`;

INSERT INTO  `cmmi`.`cmmi_maturity_levels` ( `id`, `version_id`, `maturity_level_number`, `maturity_level_name`) VALUES (1,1,'1','Initial') ;
INSERT INTO  `cmmi`.`cmmi_maturity_levels` ( `id`, `version_id`, `maturity_level_number`, `maturity_level_name`) VALUES (2,1,'2','Managed') ;
INSERT INTO  `cmmi`.`cmmi_maturity_levels` ( `id`, `version_id`, `maturity_level_number`, `maturity_level_name`) VALUES (3,1,'3','Defined') ;
INSERT INTO  `cmmi`.`cmmi_maturity_levels` ( `id`, `version_id`, `maturity_level_number`, `maturity_level_name`) VALUES (4,1,'4','Quantitatively Managed') ;
INSERT INTO  `cmmi`.`cmmi_maturity_levels` ( `id`, `version_id`, `maturity_level_number`, `maturity_level_name`) VALUES (5,1,'5','Optimizing') ;

commit;
