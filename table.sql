-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema claserepaso
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema claserepaso
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `claserepaso` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `claserepaso` ;

-- -----------------------------------------------------
-- Table `claserepaso`.`alumnos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `claserepaso`.`alumnos` (
  `birth_date` DATE NULL DEFAULT NULL,
  `alumno_id` BIGINT NOT NULL AUTO_INCREMENT,
  `alumno_email` VARCHAR(45) NULL DEFAULT NULL,
  `alumno_name` VARCHAR(45) NOT NULL,
  `alumno_surname` VARCHAR(90) NOT NULL,
  PRIMARY KEY (`alumno_id`),
  UNIQUE INDEX `UKj4k3k2x98vow3dacpyhpl314t` (`alumno_email` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `claserepaso`.`documentos_identidad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `claserepaso`.`documentos_identidad` (
  `alumno_alumno_id` BIGINT NULL DEFAULT NULL,
  `documento_id` BIGINT NOT NULL AUTO_INCREMENT,
  `document_letter` VARCHAR(255) NULL DEFAULT NULL,
  `document_number` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`documento_id`),
  UNIQUE INDEX `UKpltuk4wuc6bxkvag1h9ng2vvp` (`alumno_alumno_id` ASC) VISIBLE,
  CONSTRAINT `FKqlnj981qvhpak0vmmirn1xvd0`
    FOREIGN KEY (`alumno_alumno_id`)
    REFERENCES `claserepaso`.`alumnos` (`alumno_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


INSERT INTO alumnos VALUES ("1994-01-01", 0, "diana.pascual@a.vedrunasevillasj.es", "Diana", "Pascual García");
INSERT INTO documentos_identidad VALUES (1,0, "A", "12345678");

INSERT INTO alumnos VALUES ("1998-01-01", 0, "david.cuevas@a.vedrunasevillasj.es", "David", "Cuevas Gil");
INSERT INTO documentos_identidad VALUES (2,0, "B", "12345679");

