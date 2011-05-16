
-- -----------------------------------------------------
-- Data for table `cmmi`.`cmmi_versions`
-- -----------------------------------------------------
INSERT INTO  `cmmi`.`cmmi_versions` ( `id`, `version`, `comment` ) VALUES (1, '1.3', 'CMMi version 1.3');

-- -----------------------------------------------------
-- Data for table `cmmi`.`cmmi_types`
-- -----------------------------------------------------
INSERT INTO  `cmmi`.`cmmi_types` ( `id`, `version_id`, `type`, `abbreviation`, `comment` ) VALUES (1, 1, 'Acquisition', 'ACQ', 'Acquisition (ACQ)');
INSERT INTO  `cmmi`.`cmmi_types` ( `id`, `version_id`, `type`, `abbreviation`, `comment` ) VALUES (2, 1, 'Development', 'DEV', 'Development (DEV)');
INSERT INTO  `cmmi`.`cmmi_types` ( `id`, `version_id`, `type`, `abbreviation`, `comment` ) VALUES (3, 1, 'Services', 'SVC', 'Services (SVC)');

-- -----------------------------------------------------
-- Data for table `cmmi`.`cmmi_categories`
-- -----------------------------------------------------
INSERT INTO  `cmmi`.`cmmi_categories` ( `id`, `version_id`, `category` ) VALUES (1,1,'Acquisition Engineering');
INSERT INTO  `cmmi`.`cmmi_categories` ( `id`, `version_id`, `category` ) VALUES (2,1,'Engineering');
INSERT INTO  `cmmi`.`cmmi_categories` ( `id`, `version_id`, `category` ) VALUES (3,1,'Process Management');
INSERT INTO  `cmmi`.`cmmi_categories` ( `id`, `version_id`, `category` ) VALUES (4,1,'Project and Work Management');
INSERT INTO  `cmmi`.`cmmi_categories` ( `id`, `version_id`, `category` ) VALUES (5,1,'Project Management');
INSERT INTO  `cmmi`.`cmmi_categories` ( `id`, `version_id`, `category` ) VALUES (6,1,'Service Establishment and Delivery');
INSERT INTO  `cmmi`.`cmmi_categories` ( `id`, `version_id`, `category` ) VALUES (7,1,'Support');

-- -----------------------------------------------------
-- Data for table `cmmi`.`cmmi_maturity_levels`
-- -----------------------------------------------------
INSERT INTO  `cmmi`.`cmmi_maturity_levels` ( `id`, `version_id`, `maturity_level_number`, `maturity_level_name`) VALUES (1,1,'1','Initial') ;
INSERT INTO  `cmmi`.`cmmi_maturity_levels` ( `id`, `version_id`, `maturity_level_number`, `maturity_level_name`) VALUES (2,1,'2','Managed') ;
INSERT INTO  `cmmi`.`cmmi_maturity_levels` ( `id`, `version_id`, `maturity_level_number`, `maturity_level_name`) VALUES (3,1,'3','Defined') ;
INSERT INTO  `cmmi`.`cmmi_maturity_levels` ( `id`, `version_id`, `maturity_level_number`, `maturity_level_name`) VALUES (4,1,'4','Quantitatively Managed') ;
INSERT INTO  `cmmi`.`cmmi_maturity_levels` ( `id`, `version_id`, `maturity_level_number`, `maturity_level_name`) VALUES (5,1,'5','Optimizing') ;

-- -----------------------------------------------------
-- Data for table `cmmi`.`cmmi_capability_levels`
-- -----------------------------------------------------
INSERT INTO  `cmmi`.`cmmi_capability_levels` ( `id`, `version_id`, `capability_level_number`, `capability_level_name`) VALUES (1,1,'0','Incomplete') ;
INSERT INTO  `cmmi`.`cmmi_capability_levels` ( `id`, `version_id`, `capability_level_number`, `capability_level_name`) VALUES (2,1,'1','Performed') ;
INSERT INTO  `cmmi`.`cmmi_capability_levels` ( `id`, `version_id`, `capability_level_number`, `capability_level_name`) VALUES (3,1,'2','Managed') ;
INSERT INTO  `cmmi`.`cmmi_capability_levels` ( `id`, `version_id`, `capability_level_number`, `capability_level_name`) VALUES (4,1,'3','Defined') ;

-- -----------------------------------------------------
-- Data for table `cmmi`.`cmmi_process_areas`
-- -----------------------------------------------------
INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES (1,1,'Acquisition Requirements Development','ARD','Acquisition Requirements Development (ARD)') ;
INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES (2,1,'Acquisition Technical Management','ATM','Acquisition Technical Management (ATM)') ;
INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES (3,1,'Acquisition Validation','AVAL','Acquisition Validation (AVAL)') ;
INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES (4,1,'Acquisition Verification','AVER','Acquisition Verification (AVER)') ;
INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES (5,1,'Agreement Management','AM','Agreement Management (AM)') ;
INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES (6,1,'Capacity and Availability Management','CAM','Capacity and Availability Management (CAM)') ;
INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES (7,1,'Causal Analysis and Resolution','CAR','Causal Analysis and Resolution (CAR)') ;
INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES (8,1,'Configuration Management','CM','Configuration Management (CM)') ;
INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES (9,1,'Decision Analysis and Resolution','DAR','Decision Analysis and Resolution (DAR)') ;
INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES (10,1,'Incident Resolution and Prevention','IRP','Incident Resolution and Prevention (IRP)') ;
INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES (11,1,'Integrated Project Management','IPM','Integrated Project Management (IPM)') ;
INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES (12,1,'Integrated Work Management','IWM','Integrated Work Management (IWM)') ;
INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES (13,1,'Measurement and Analysis','MA','Measurement and Analysis (MA)') ;
INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES (14,1,'Organizational Performance Management','OPM','Organizational Performance Management (OPM)') ;
INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES (15,1,'Organizational Process Definition','OPD','Organizational Process Definition (OPD)') ;
INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES (16,1,'Organizational Process Focus','OPF','Organizational Process Focus (OPF)') ;
INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES (17,1,'Organizational Process Performance','OPP','Organizational Process Performance (OPP)') ;
INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES (18,1,'Organizational Training','OT','Organizational Training (OT)') ;
INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES (19,1,'Process and Product Quality Assurance','PPQA','Process and Product Quality Assurance (PPQA)') ;
INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES (20,1,'Product Integration','PI','Product Integration (PI)') ;
INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES (21,1,'Project Monitoring and Control','PMC','Project Monitoring and Control (PMC)') ;
INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES (22,1,'Project Planning','PP','Project Planning (PP)') ;
INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES (23,1,'Quantitative Project Management','QPM','Quantitative Project Management (QPM)') ;
INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES (24,1,'Quantitative Work Management','QWM','Quantitative Work Management (QWM)') ;
INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES (25,1,'Requirements Development','RD','Requirements Development (RD)') ;
INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES (26,1,'Requirements Management','REQM','Requirements Management (REQM)') ;
INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES (27,1,'Risk Management','RSKM','Risk Management (RSKM)') ;
INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES (28,1,'Service Continuity','SCON','Service Continuity (SCON)') ;
INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES (29,1,'Service Delivery','SD','Service Delivery (SD)') ;
INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES (30,1,'Service System Development','SSD','Service System Development (SSD)') ;
INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES (31,1,'Service System Transition','SST','Service System Transition (SST)') ;
INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES (32,1,'Solicitation and Supplier Agreement Development','SSAD','Solicitation and Supplier Agreement Development (SSAD)') ;
INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES (33,1,'Strategic Service Management','STSM','Strategic Service Management (STSM)') ;
INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES (34,1,'Supplier Agreement Management','SAM','Supplier Agreement Management (SAM)') ;
INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES (35,1,'Technical Solution','TS','Technical Solution (TS)') ;
INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES (36,1,'Validation','VAL','Validation (VAL)') ;
INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES (37,1,'Verification','VER','Verification (VER)') ;
INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES (38,1,'Work Monitoring and Control','WMC','Work Monitoring and Control (WMC)') ;
INSERT INTO  `cmmi`.`cmmi_process_areas` ( `id`, `version_id`, `process_area`, `abbreviation`, `comment`) VALUES (39,1,'Work Planning','WP','Work Planning (WP)') ;

-- -----------------------------------------------------
-- Data for table `cmmi`.`cmmi_pacamls`
-- -----------------------------------------------------
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (1,1,1,1,2) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (2,1,2,1,3) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (3,1,3,1,3) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (4,1,4,1,3) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (5,1,5,5,2) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (6,3,6,4,3) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (7,3,7,7,5) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (8,1,7,7,5) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (9,2,7,7,5) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (10,3,8,7,2) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (11,1,8,7,2) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (12,2,8,7,2) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (13,3,9,7,3) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (14,1,9,7,3) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (15,2,9,7,3) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (16,3,10,6,3) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (17,1,11,5,3) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (18,2,11,5,3) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (19,3,12,4,3) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (20,3,13,7,2) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (21,1,13,7,2) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (22,2,13,7,2) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (23,3,14,3,5) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (24,1,14,3,5) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (25,2,14,3,5) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (26,3,15,3,3) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (27,1,15,3,3) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (28,2,15,3,3) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (29,3,16,3,3) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (30,1,16,3,3) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (31,2,16,3,3) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (32,3,17,3,4) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (33,1,17,3,4) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (34,2,17,3,4) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (35,3,18,3,3) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (36,1,18,3,3) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (37,2,18,3,3) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (38,2,19,7,2) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (39,3,19,7,2) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (40,1,19,7,2) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (41,2,20,2,3) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (42,1,21,5,2) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (43,2,21,5,2) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (44,1,22,5,2) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (45,2,22,5,2) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (46,2,23,5,4) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (47,1,23,5,4) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (48,3,24,4,4) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (49,2,25,2,3) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (50,2,26,5,2) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (51,3,26,4,2) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (52,1,26,5,2) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (53,3,27,4,3) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (54,2,27,5,3) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (55,1,27,5,3) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (56,3,28,4,3) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (57,3,29,6,2) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (58,3,30,6,3) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (59,3,31,6,3) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (60,1,32,5,2) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (61,3,33,6,3) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (62,2,34,5,2) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (63,3,34,4,2) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (64,2,35,2,3) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (65,2,36,2,3) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (66,2,37,2,3) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (67,3,38,4,2) ;
INSERT INTO  `cmmi`.`cmmi_pacamls` ( `id`, `type_id`, `process_area_id`, `category_id`, `maturity_level_id`) VALUES (68,3,39,4,2) ;


