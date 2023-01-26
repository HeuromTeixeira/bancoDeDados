-- MySQL Script generated by MySQL Workbench
-- Thu Jan 26 11:05:18 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_loja_games
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_loja_games
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_loja_games` DEFAULT CHARACTER SET utf8 ;
USE `db_loja_games` ;

-- -----------------------------------------------------
-- Table `db_loja_games`.`tb_categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_loja_games`.`tb_categoria` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `tipo` VARCHAR(255) GENERATED ALWAYS AS () VIRTUAL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_loja_games`.`tb_usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_loja_games`.`tb_usuarios` (
  `id` BIGINT NOT NULL,
  `usuarios` VARCHAR(255) NOT NULL,
  `nome` VARCHAR(255) NOT NULL,
  `senha` VARCHAR(255) NOT NULL,
  `foto` VARCHAR(255) NULL,
  `data_nascimento` DATE NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_loja_games`.`tb_produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_loja_games`.`tb_produtos` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `usuario` VARCHAR(255) NOT NULL,
  `descricao` VARCHAR(500) NULL,
  `console` VARCHAR(255) NOT NULL,
  `quantidade` INT NULL,
  `preco` DECIMAL(8,2) NOT NULL,
  `foto` VARCHAR(255) NULL,
  `tb_categoria_id` BIGINT NOT NULL,
  `tb_usuarios_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tb_produtos_tb_categoria_idx` (`tb_categoria_id` ASC) VISIBLE,
  INDEX `fk_tb_produtos_tb_usuarios1_idx` (`tb_usuarios_id` ASC) VISIBLE,
  CONSTRAINT `fk_tb_produtos_tb_categoria`
    FOREIGN KEY (`tb_categoria_id`)
    REFERENCES `db_loja_games`.`tb_categoria` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_produtos_tb_usuarios1`
    FOREIGN KEY (`tb_usuarios_id`)
    REFERENCES `db_loja_games`.`tb_usuarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
