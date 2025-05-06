-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema itim130-ns-2025
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema itim130-ns-2025
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `itim130-ns-2025` DEFAULT CHARACTER SET utf8 ;
USE `itim130-ns-2025` ;

-- -----------------------------------------------------
-- Table `itim130-ns-2025`.`courses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `itim130-ns-2025`.`courses` (
  `course_id` INT NOT NULL AUTO_INCREMENT,
  `course_name` VARCHAR(255) NOT NULL,
  `description` MEDIUMTEXT NULL,
  PRIMARY KEY (`course_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `itim130-ns-2025`.`subjects`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `itim130-ns-2025`.`subjects` (
  `subject_id` INT NOT NULL AUTO_INCREMENT,
  `subject_name` VARCHAR(45) NOT NULL,
  `description` VARCHAR(45) NULL,
  `units` INT NOT NULL,
  `courses_course_id` INT NOT NULL,
  PRIMARY KEY (`subject_id`),
  INDEX `fk_subjects_courses_idx` (`courses_course_id`),
  CONSTRAINT `fk_subjects_courses`
    FOREIGN KEY (`courses_course_id`)
    REFERENCES `itim130-ns-2025`.`courses` (`course_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `itim130-ns-2025`.`students`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `itim130-ns-2025`.`students` (
  `student_id` INT NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `first_name` VARCHAR(45) NULL,
  `address` VARCHAR(45) NOT NULL,
  `town` VARCHAR(45) NOT NULL,
  `phone` VARCHAR(45) NULL,
  `email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`student_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `itim130-ns-2025`.`subjects_students`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `itim130-ns-2025`.`subjects_students` (
  `subject_id` INT NOT NULL,
  `student_id` INT NOT NULL,
  `grade` DECIMAL(3,2) NULL,
  `status` ENUM('Passed', 'Failed') NULL,
  PRIMARY KEY (`subject_id`, `student_id`),
  INDEX `fk_subjects_has_students_students1_idx` (`student_id`),
  INDEX `fk_subjects_has_students_subjects1_idx` (`subject_id`) ,
  CONSTRAINT `fk_subjects_has_students_subjects1`
    FOREIGN KEY (`subject_id`)
    REFERENCES `itim130-ns-2025`.`subjects` (`subject_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_subjects_has_students_students1`
    FOREIGN KEY (`student_id`)
    REFERENCES `itim130-ns-2025`.`students` (`student_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
