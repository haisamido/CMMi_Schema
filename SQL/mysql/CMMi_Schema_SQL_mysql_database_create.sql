SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

DROP SCHEMA IF EXISTS `cmmi` ;
CREATE SCHEMA IF NOT EXISTS `cmmi` DEFAULT CHARACTER SET latin1 ;
USE `cmmi` ;

-- -----------------------------------------------------
-- Table `cmmi`.`cmmi_versions`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cmmi`.`cmmi_versions` ;

CREATE  TABLE IF NOT EXISTS `cmmi`.`cmmi_versions` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `version` VARCHAR(128) NOT NULL ,
  `comment` VARCHAR(128) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COMMENT = 'CMMi Versions';


-- -----------------------------------------------------
-- Table `cmmi`.`cmmi_capability_levels`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cmmi`.`cmmi_capability_levels` ;

CREATE  TABLE IF NOT EXISTS `cmmi`.`cmmi_capability_levels` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `version_id` INT NOT NULL ,
  `capability_level_number` INT NOT NULL ,
  `capability_level_name` VARCHAR(128) NOT NULL ,
  `comment` VARCHAR(128) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_capability_levels_versions_id` (`version_id` ASC) ,
  CONSTRAINT `fk_capability_levels_versions_id`
    FOREIGN KEY (`version_id` )
    REFERENCES `cmmi`.`cmmi_versions` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COMMENT = 'CMMi Capability Levels';


-- -----------------------------------------------------
-- Table `cmmi`.`cmmi_categories`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cmmi`.`cmmi_categories` ;

CREATE  TABLE IF NOT EXISTS `cmmi`.`cmmi_categories` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `version_id` INT(11) NOT NULL ,
  `category` VARCHAR(128) NOT NULL ,
  `comment` VARCHAR(128) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_categories_versions_id` (`version_id` ASC) ,
  CONSTRAINT `fk_categories_versions_id`
    FOREIGN KEY (`version_id` )
    REFERENCES `cmmi`.`cmmi_versions` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COMMENT = 'CMMi Categories';


-- -----------------------------------------------------
-- Table `cmmi`.`cmmi_general_goals`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cmmi`.`cmmi_general_goals` ;

CREATE  TABLE IF NOT EXISTS `cmmi`.`cmmi_general_goals` (
  `id` INT(11) NOT NULL ,
  `version_id` INT(11) NOT NULL ,
  `specific_goal` VARCHAR(128) NULL DEFAULT NULL ,
  `comment` VARCHAR(128) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_general_goals_versions_id` (`version_id` ASC) ,
  CONSTRAINT `fk_general_goals_versions_id`
    FOREIGN KEY (`version_id` )
    REFERENCES `cmmi`.`cmmi_versions` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COMMENT = 'CMMi General Goals (GG)';


-- -----------------------------------------------------
-- Table `cmmi`.`cmmi_general_practices`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cmmi`.`cmmi_general_practices` ;

CREATE  TABLE IF NOT EXISTS `cmmi`.`cmmi_general_practices` (
  `id` INT(11) NOT NULL ,
  `version_id` INT(11) NOT NULL ,
  `general_practice` VARCHAR(128) NULL DEFAULT NULL ,
  `comment` VARCHAR(128) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_general_practices_version_id` (`version_id` ASC) ,
  CONSTRAINT `fk_general_practices_version_id`
    FOREIGN KEY (`version_id` )
    REFERENCES `cmmi`.`cmmi_versions` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COMMENT = 'CMMi General Practices (GP)';


-- -----------------------------------------------------
-- Table `cmmi`.`cmmi_maturity_levels`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cmmi`.`cmmi_maturity_levels` ;

CREATE  TABLE IF NOT EXISTS `cmmi`.`cmmi_maturity_levels` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `version_id` INT(11) NOT NULL ,
  `maturity_level_number` INT(11) NOT NULL ,
  `maturity_level_name` VARCHAR(128) NOT NULL ,
  `comment` VARCHAR(128) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_maturity_levels_versions_id` (`version_id` ASC) ,
  CONSTRAINT `fk_maturity_levels_versions_id`
    FOREIGN KEY (`version_id` )
    REFERENCES `cmmi`.`cmmi_versions` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COMMENT = 'CMMi Maturity Levels';


-- -----------------------------------------------------
-- Table `cmmi`.`cmmi_process_areas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cmmi`.`cmmi_process_areas` ;

CREATE  TABLE IF NOT EXISTS `cmmi`.`cmmi_process_areas` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `version_id` INT(11) NOT NULL ,
  `process_area` VARCHAR(128) NOT NULL ,
  `abbreviation` VARCHAR(128) NOT NULL ,
  `comment` VARCHAR(128) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_process_areas_versions_id` (`version_id` ASC) ,
  CONSTRAINT `fk_process_areas_versions_id`
    FOREIGN KEY (`version_id` )
    REFERENCES `cmmi`.`cmmi_versions` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COMMENT = 'CMMi Process Areas';


-- -----------------------------------------------------
-- Table `cmmi`.`cmmi_types`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cmmi`.`cmmi_types` ;

CREATE  TABLE IF NOT EXISTS `cmmi`.`cmmi_types` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `version_id` INT(11) NOT NULL ,
  `type` VARCHAR(128) NOT NULL ,
  `abbreviation` VARCHAR(128) NOT NULL ,
  `comment` VARCHAR(128) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_types_versions_id` (`version_id` ASC) ,
  CONSTRAINT `fk_types_versions_id`
    FOREIGN KEY (`version_id` )
    REFERENCES `cmmi`.`cmmi_versions` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COMMENT = 'CMMi Types (ACQ, DEV, SVC)';


-- -----------------------------------------------------
-- Table `cmmi`.`cmmi_pacamls`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cmmi`.`cmmi_pacamls` ;

CREATE  TABLE IF NOT EXISTS `cmmi`.`cmmi_pacamls` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `type_id` INT(11) NOT NULL ,
  `process_area_id` INT(11) NOT NULL ,
  `category_id` INT(11) NOT NULL ,
  `maturity_level_id` INT(11) NOT NULL ,
  `comment` VARCHAR(512) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_pacamls_maturity_levels_id` (`maturity_level_id` ASC) ,
  INDEX `fk_pacamls_process_areas_id` (`process_area_id` ASC) ,
  INDEX `fk_pacamls_categories_id` (`category_id` ASC) ,
  INDEX `fk_pacamls_types_id` (`type_id` ASC) ,
  CONSTRAINT `fk_pacamls_maturity_levels_id`
    FOREIGN KEY (`maturity_level_id` )
    REFERENCES `cmmi`.`cmmi_maturity_levels` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_pacamls_process_areas_id`
    FOREIGN KEY (`process_area_id` )
    REFERENCES `cmmi`.`cmmi_process_areas` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_pacamls_categories_id`
    FOREIGN KEY (`category_id` )
    REFERENCES `cmmi`.`cmmi_categories` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_pacamls_types_id`
    FOREIGN KEY (`type_id` )
    REFERENCES `cmmi`.`cmmi_types` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COMMENT = 'Process Areas, Categories, and Maturity Levels = pacamls';


-- -----------------------------------------------------
-- Table `cmmi`.`cmmi_specific_goals`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cmmi`.`cmmi_specific_goals` ;

CREATE  TABLE IF NOT EXISTS `cmmi`.`cmmi_specific_goals` (
  `id` INT(11) NOT NULL ,
  `version_id` INT(11) NOT NULL ,
  `specific_goal` VARCHAR(128) NULL DEFAULT NULL ,
  `comment` VARCHAR(128) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_specific_goals_versions_id` (`version_id` ASC) ,
  CONSTRAINT `fk_specific_goals_versions_id`
    FOREIGN KEY (`version_id` )
    REFERENCES `cmmi`.`cmmi_versions` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COMMENT = 'CMMi Specific Goals (SG)';


-- -----------------------------------------------------
-- Table `cmmi`.`cmmi_specific_practices`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cmmi`.`cmmi_specific_practices` ;

CREATE  TABLE IF NOT EXISTS `cmmi`.`cmmi_specific_practices` (
  `id` INT(11) NOT NULL ,
  `version_id` INT(11) NOT NULL ,
  `specific_practice` VARCHAR(128) NULL DEFAULT NULL ,
  `comment` VARCHAR(128) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_specific_practices_versions_id` (`version_id` ASC) ,
  CONSTRAINT `fk_specific_practices_versions_id`
    FOREIGN KEY (`version_id` )
    REFERENCES `cmmi`.`cmmi_versions` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COMMENT = 'CMMi Specific Practices (SP)';


-- -----------------------------------------------------
-- Placeholder table for view `cmmi`.`cmmi_pacamls_view`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cmmi`.`cmmi_pacamls_view` (`'Type Name'` INT, `'Type Abbreviation'` INT, `'Process Area'` INT, `'Category'` INT, `'Maturity Level No.'` INT, `'Maturity Level Name'` INT);

-- -----------------------------------------------------
-- View `cmmi`.`cmmi_pacamls_view`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `cmmi`.`cmmi_pacamls_view` ;
DROP TABLE IF EXISTS `cmmi`.`cmmi_pacamls_view`;
USE `cmmi`;
CREATE  OR REPLACE VIEW `cmmi`.`cmmi_pacamls_view` AS 
SELECT
 cmmi_types.type 'Type Name',
 cmmi_types.abbreviation 'Type Abbreviation',
 cmmi_process_areas.process_area 'Process Area',
 cmmi_categories.category 'Category',
 cmmi_maturity_levels.maturity_level_number 'Maturity Level No.',
 cmmi_maturity_levels.maturity_level_name 'Maturity Level Name'
FROM
 cmmi_pacamls,
 cmmi_types,
 cmmi_process_areas,
 cmmi_categories,
 cmmi_maturity_levels
WHERE 
 cmmi_pacamls.type_id = cmmi_types.id
AND
 cmmi_pacamls.process_area_id= cmmi_process_areas.id
AND
 cmmi_pacamls.category_id = cmmi_categories.id
AND
 cmmi_pacamls.maturity_level_id = cmmi_maturity_levels.maturity_level_number
ORDER BY 
 cmmi_types.type,
 cmmi_process_areas.process_area
;


;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
