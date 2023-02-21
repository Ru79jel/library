-- MySQL Script generated by MySQL Workbench
-- Tue Feb 21 09:01:06 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Library
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Library
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Library` DEFAULT CHARACTER SET utf8 ;
USE `Library` ;

-- -----------------------------------------------------
-- Table `Library`.`book`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Library`.`book` (
  `idbook` INT NOT NULL,
  `title` VARCHAR(45) NOT NULL,
  `author` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idbook`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Library`.`Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Library`.`Customer` (
  `idCustomer` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCustomer`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Library`.`Transaction`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Library`.`Transaction` (
  `idTransaction` INT NOT NULL,
  `TransactionType` ENUM("ausleihen","zurückgeben") NOT NULL,
  `Date` DATE NULL,
  `book_idbook` INT NOT NULL,
  `Customer_idCustomer` INT NOT NULL,
  PRIMARY KEY (`idTransaction`),
  INDEX `fk_Transaction_book1_idx` (`book_idbook` ASC) VISIBLE,
  INDEX `fk_Transaction_Customer1_idx` (`Customer_idCustomer` ASC) VISIBLE,
  CONSTRAINT `fk_Transaction_book1`
    FOREIGN KEY (`book_idbook`)
    REFERENCES `Library`.`book` (`idbook`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Transaction_Customer1`
    FOREIGN KEY (`Customer_idCustomer`)
    REFERENCES `Library`.`Customer` (`idCustomer`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- ALTER TRANSACTIONTYPE - just for practicing MODIFY Keyword
-- -----------------------------------------------------
ALTER TABLE book MODIFY COLUMN idbook INT auto_increment;
ALTER TABLE customer MODIFY COLUMN idcustomer INT auto_increment;
ALTER TABLE transaction MODIFY COLUMN idTransaction INT auto_increment;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
