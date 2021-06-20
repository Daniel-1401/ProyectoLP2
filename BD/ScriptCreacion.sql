SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ciberimpacto
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `ciberimpacto` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ciberimpacto` DEFAULT CHARACTER SET utf8 ;
USE `ciberimpacto` ;

-- -----------------------------------------------------
-- Table `ciberimpacto`.`tb_marca`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciberimpacto`.`tb_marca` (
  `codMarca` VARCHAR(5) NOT NULL,
  `nombreMarca` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`codMarca`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ciberimpacto`.`tb_CPU`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciberimpacto`.`tb_CPU` (
  `codCPU` VARCHAR(5) NOT NULL,
  `codMarca` VARCHAR(5) NOT NULL,
  `nombreCPU` VARCHAR(45) NOT NULL,
  `modeloCPU` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`codCPU`),
  INDEX `fk_tbCPU_tbMarca:codMarca_idx` (`codMarca` ASC) VISIBLE,
  CONSTRAINT `fk_tbCPU_tbMarca:codMarca`
    FOREIGN KEY (`codMarca`)
    REFERENCES `mydb`.`tb_marca` (`codMarca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ciberimpacto`.`tb_GPU`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciberimpacto`.`tb_GPU` (
  `codGPU` VARCHAR(5) NOT NULL,
  `codMarca` VARCHAR(5) NULL,
  `nombre` VARCHAR(45) NULL,
  `capacidad` VARCHAR(5) NULL,
  PRIMARY KEY (`codGPU`),
  INDEX `fk_tbGPU_tbMarca:codMarca_idx` (`codMarca` ASC) VISIBLE,
  CONSTRAINT `fk_tbGPU_tbMarca:codMarca`
    FOREIGN KEY (`codMarca`)
    REFERENCES `mydb`.`tb_marca` (`codMarca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ciberimpacto`.`tb_tipoDiscoDuro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciberimpacto`.`tb_tipoDiscoDuro` (
  `codTipoDiscoDuro` VARCHAR(5) NOT NULL,
  `nombreTipo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`codTipoDiscoDuro`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ciberimpacto`.`tb_discoDuro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciberimpacto`.`tb_discoDuro` (
  `codDiscoDuro` VARCHAR(5) NOT NULL,
  `codMarca` VARCHAR(5) NOT NULL,
  `capacidad` VARCHAR(5) NOT NULL,
  `codTipoDiscoDuro` VARCHAR(5) NOT NULL,
  PRIMARY KEY (`codDiscoDuro`),
  INDEX `fk_tbDiscoDuro_tbTipoDIscoDuro:codTipoDiscoDuro_idx` (`codTipoDiscoDuro` ASC) VISIBLE,
  INDEX `fk_tbDiscoDuro_tbMarca_idx` (`codMarca` ASC) VISIBLE,
  CONSTRAINT `fk_tbDiscoDuro_tbTipoDIscoDuro:codTipoDiscoDuro`
    FOREIGN KEY (`codTipoDiscoDuro`)
    REFERENCES `mydb`.`tb_tipoDiscoDuro` (`codTipoDiscoDuro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbDiscoDuro_tbMarca`
    FOREIGN KEY (`codMarca`)
    REFERENCES `mydb`.`tb_marca` (`codMarca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ciberimpacto`.`tb_categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciberimpacto`.`tb_categoria` (
  `codCategoria` VARCHAR(5) NOT NULL,
  `nombreCategoria` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`codCategoria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ciberimpacto`.`tb_SistemaOperativo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciberimpacto`.`tb_SistemaOperativo` (
  `codSistemaOperativo` VARCHAR(5) NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`codSistemaOperativo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ciberimpacto`.`tb_produtcto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciberimpacto`.`tb_produtcto` (
  `codProducto` VARCHAR(5) NOT NULL,
  `nombreProducto` VARCHAR(45) NOT NULL,
  `codMarca` VARCHAR(5) NOT NULL,
  `modeloProducto` VARCHAR(45) NOT NULL,
  `codCPU` VARCHAR(5) NOT NULL,
  `descripcionPantalla` VARCHAR(150) NOT NULL,
  `codDiscoDuro` VARCHAR(5) NOT NULL,
  `codGPU` VARCHAR(5) NOT NULL,
  `codCategoria` VARCHAR(5) NOT NULL,
  `codSistemaOperativo` VARCHAR(5) NOT NULL,
  `precioVenta` DECIMAL(5,2) NOT NULL,
  PRIMARY KEY (`codProducto`),
  INDEX `fk_tbProducto_tbMarca:codMarca_idx` (`codMarca` ASC) VISIBLE,
  INDEX `fk_tbProducto_tbGPU_idx` (`codCPU` ASC) VISIBLE,
  INDEX `fk_tbProducto_tbGPU_idx1` (`codGPU` ASC) VISIBLE,
  INDEX `fk_tbProducto_tbDiscoDuro:codDiscoDuro_idx` (`codDiscoDuro` ASC) VISIBLE,
  INDEX `fk_tbProducto_tbTipoProducto:codTipoProducto_idx` (`codCategoria` ASC) VISIBLE,
  INDEX `fk_tbProducto_tbSistemaOperativo:codSistemaOperativo_idx` (`codSistemaOperativo` ASC) VISIBLE,
  CONSTRAINT `fk_tbProducto_tbMarca:codMarca`
    FOREIGN KEY (`codMarca`)
    REFERENCES `mydb`.`tb_marca` (`codMarca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbProducto_tbCPU:codCPU`
    FOREIGN KEY (`codCPU`)
    REFERENCES `mydb`.`tb_CPU` (`codCPU`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbProducto_tbGPU:codGPU`
    FOREIGN KEY (`codGPU`)
    REFERENCES `mydb`.`tb_GPU` (`codGPU`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbProducto_tbDiscoDuro:codDiscoDuro`
    FOREIGN KEY (`codDiscoDuro`)
    REFERENCES `mydb`.`tb_discoDuro` (`codDiscoDuro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbProducto_tbCategoria:codCategoria`
    FOREIGN KEY (`codCategoria`)
    REFERENCES `mydb`.`tb_categoria` (`codCategoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbProducto_tbSistemaOperativo:codSistemaOperativo`
    FOREIGN KEY (`codSistemaOperativo`)
    REFERENCES `mydb`.`tb_SistemaOperativo` (`codSistemaOperativo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ciberimpacto`.`tb_TipoUsuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciberimpacto`.`tb_TipoUsuario` (
  `codTipoUsuario` INT NOT NULL,
  `nombreTipo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`codTipoUsuario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ciberimpacto`.`tb_pais`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciberimpacto`.`tb_pais` (
  `codPais` VARCHAR(4) NOT NULL,
  `nombre` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`codPais`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ciberimpacto`.`tb_ciudad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciberimpacto`.`tb_ciudad` (
  `codCiudad` VARCHAR(5) NOT NULL,
  `NOMBRE` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`codCiudad`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ciberimpacto`.`tb_TipoDocumento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciberimpacto`.`tb_TipoDocumento` (
  `codTipoDocumento` VARCHAR(5) NOT NULL,
  `nombreTipo` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`codTipoDocumento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ciberimpacto`.`tb_usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciberimpacto`.`tb_usuarios` (
  `codUsuario` VARCHAR(5) NOT NULL,
  `codTipoUsuario` INT NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `contraseña` VARCHAR(16) NOT NULL,
  `nombreUsuario` VARCHAR(45) NOT NULL,
  `apellidoUsuario` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`codUsuario`),
  INDEX `fk_tbUsuarios_tbTipoUsuario:codTipoUsuario_idx` (`codTipoUsuario` ASC) VISIBLE,
  CONSTRAINT `fk_tbUsuarios_tbTipoUsuario:codTipoUsuario`
    FOREIGN KEY (`codTipoUsuario`)
    REFERENCES `mydb`.`tb_TipoUsuario` (`codTipoUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ciberimpacto`.`tb_clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciberimpacto`.`tb_clientes` (
  `codCliente` INT NOT NULL,
  `codUsuario` VARCHAR(5) NOT NULL,
  `numeroRUC` VARCHAR(45) NULL,
  `Direccion` VARCHAR(45) NOT NULL,
  `codPais` VARCHAR(5) NOT NULL,
  `codCiudad` VARCHAR(5) NOT NULL,
  `codTipoDocumento` VARCHAR(5) NOT NULL,
  `numeroDocumento` CHAR(8) NOT NULL,
  `telefono` VARCHAR(9) NOT NULL,
  PRIMARY KEY (`codCliente`),
  INDEX `fk_tbCliente_tbPais:codPais_idx` (`codPais` ASC) VISIBLE,
  INDEX `fk_tbCliente_tbCiudad:codCiudad_idx` (`codCiudad` ASC) VISIBLE,
  INDEX `fk_tbCliente_tbTipoDocumento:codTipoDocumento_idx` (`codTipoDocumento` ASC) VISIBLE,
  INDEX `fk_tbCliente_tbUsuario:codUsuario_idx` (`codUsuario` ASC) VISIBLE,
  CONSTRAINT `fk_tbCliente_tbPais:codPais`
    FOREIGN KEY (`codPais`)
    REFERENCES `mydb`.`tb_pais` (`codPais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbCliente_tbCiudad:codCiudad`
    FOREIGN KEY (`codCiudad`)
    REFERENCES `mydb`.`tb_ciudad` (`codCiudad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbCliente_tbTipoDocumento:codTipoDocumento`
    FOREIGN KEY (`codTipoDocumento`)
    REFERENCES `mydb`.`tb_TipoDocumento` (`codTipoDocumento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbCliente_tbUsuario:codUsuario`
    FOREIGN KEY (`codUsuario`)
    REFERENCES `mydb`.`tb_usuarios` (`codUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ciberimpacto`.`tb_administradores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciberimpacto`.`tb_administradores` (
  `codAdministrador` VARCHAR(5) NOT NULL,
  `codUsuario` VARCHAR(5) NOT NULL,
  `nombreCompleto` VARCHAR(45) NOT NULL,
  `apellidoPaterno` VARCHAR(20) NOT NULL,
  `apellidoMaterno` VARCHAR(20) NOT NULL,
  `codTipoDocumento` VARCHAR(5) NOT NULL,
  `numeroDocumento` CHAR(8) NOT NULL,
  `telefono` CHAR(9) NOT NULL,
  `codPais` VARCHAR(5) NOT NULL,
  `codCiudad` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`codAdministrador`),
  INDEX `fk_tbAdministrador_tbTipoDocumento:codTipoDocumento_idx` (`codTipoDocumento` ASC) VISIBLE,
  INDEX `fk_tbAdministrador_tbPais:codPais_idx` (`codPais` ASC) VISIBLE,
  INDEX `fk_tbAdministrador_tbCiudad:codCiudad_idx` (`codCiudad` ASC) VISIBLE,
  INDEX `fk_tbAdministrador_tbUsuario:codUsuario_idx` (`codUsuario` ASC) VISIBLE,
  CONSTRAINT `fk_tbAdministrador_tbTipoDocumento:codTipoDocumento`
    FOREIGN KEY (`codTipoDocumento`)
    REFERENCES `mydb`.`tb_TipoDocumento` (`codTipoDocumento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbAdministrador_tbPais:codPais`
    FOREIGN KEY (`codPais`)
    REFERENCES `mydb`.`tb_pais` (`codPais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbAdministrador_tbCiudad:codCiudad`
    FOREIGN KEY (`codCiudad`)
    REFERENCES `mydb`.`tb_ciudad` (`codCiudad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbAdministrador_tbUsuario:codUsuario`
    FOREIGN KEY (`codUsuario`)
    REFERENCES `mydb`.`tb_usuarios` (`codUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ciberimpacto`.`tb_Factura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciberimpacto`.`tb_Factura` (
  `codFactura` VARCHAR(5) NOT NULL,
  `codCliente` INT NOT NULL,
  `fechaPedido` DATETIME NOT NULL,
  `total` DECIMAL(5,2) NOT NULL,
  `PrecioEnvio` DECIMAL(5,2) NOT NULL,
  PRIMARY KEY (`codFactura`),
  INDEX `fk_tbFactura_tbCliente:codCliente_idx` (`codCliente` ASC) VISIBLE,
  CONSTRAINT `fk_tbFactura_tbCliente:codCliente`
    FOREIGN KEY (`codCliente`)
    REFERENCES `mydb`.`tb_clientes` (`codCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ciberimpacto`.`tbCarrito`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciberimpacto`.`tbCarrito` (
  `codCarrito` INT NOT NULL AUTO_INCREMENT,
  `codUsuario` VARCHAR(5) NOT NULL,
  `codFactura` VARCHAR(5) NULL,
  `codProducto` VARCHAR(5) NOT NULL,
  `cantirad` INT NOT NULL,
  `SubTotal` DECIMAL(5,2) NOT NULL,
  PRIMARY KEY (`codCarrito`, `codUsuario`),
  INDEX `fk_tbCarrito_tbProducto:codProducto_idx` (`codProducto` ASC) VISIBLE,
  INDEX `fk_tbCarrito_tbUsuario:codUsuario_idx` (`codUsuario` ASC) VISIBLE,
  INDEX `fk_tbCarrito_tbFactura:codFactura:codFactura_idx` (`codFactura` ASC) VISIBLE,
  CONSTRAINT `fk_tbCarrito_tbProducto:codProducto`
    FOREIGN KEY (`codProducto`)
    REFERENCES `mydb`.`tb_produtcto` (`codProducto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbCarrito_tbUsuario:codUsuario`
    FOREIGN KEY (`codUsuario`)
    REFERENCES `mydb`.`tb_usuarios` (`codUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbCarrito_tbFactura:codFactura:codFactura`
    FOREIGN KEY (`codFactura`)
    REFERENCES `mydb`.`tb_Factura` (`codFactura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
