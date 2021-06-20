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

Select * from tb_marca;

Insert into tb_marca values ('M0001', 'Dell');
Insert into tb_marca values ('M0002', 'LG');
Insert into tb_marca values ('M0003', 'MSI');
Insert into tb_marca values ('M0004', 'Alienware');
Insert into tb_marca values ('M0005', 'HP');
Insert into tb_marca values ('M0006', 'Logitech');
Insert into tb_marca values ('M0007', 'Acer');
Insert into tb_marca values ('M0008', 'BenQ');
Insert into tb_marca values ('M0009', 'Nvidia');
Insert into tb_marca values ('M0010', 'AMD');
Insert into tb_marca values ('M0011', 'Intel');
Insert into tb_marca values ('M0012', 'Seagate');
Insert into tb_marca values ('M0013', 'Western Digital');



-- -----------------------------------------------------
-- Table `ciberimpacto`.`tb_CPU`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciberimpacto`.`tb_CPU` (
  `codCPU` VARCHAR(5) NOT NULL,
  `codMarca` VARCHAR(5) NOT NULL,
  `nombreCPU` VARCHAR(45) NOT NULL,
  `modeloCPU` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`codCPU`),
  INDEX `fk_tbCPU_tbMarca:codMarca_idx` (`codMarca` ASC) ,
  CONSTRAINT `fk_tbCPU_tbMarca:codMarca`
    FOREIGN KEY (`codMarca`)
    REFERENCES `ciberimpacto`.`tb_marca` (`codMarca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

Select * from tb_CPU;
Insert into tb_CPU values ('C0001','M0011','Procesador Intel','i9 11va Gen.');
Insert into tb_CPU values ('C0002','M0010','Procesador AMD','Ryzen 9 5900X');
Insert into tb_CPU values ('C0003','M0011','Procesador Intel','i5 10ma Gen.');
Insert into tb_CPU values ('C0004','M0010','Procesador AMD','Ryzen 7 5700X');
Insert into tb_CPU values ('C0005','M0011','Procesador Intel','i9 8va Gen.');
Insert into tb_CPU values ('C0006','M0010','Procesador AMD','Ryzen 5 3600');
Insert into tb_CPU values ('C0007','M0011','Procesador Intel','i9 10ma Gen.');
Insert into tb_CPU values ('C0008','M0010','Procesador AMD','Ryzen 9 5950X');
Insert into tb_CPU values ('C0009','M0011','Procesador Intel','i5 10va Gen.');
Insert into tb_CPU values ('C0010','M0010','Procesador AMD','Ryzen 9 3900X ');
-- -----------------------------------------------------
-- Table `ciberimpacto`.`tb_GPU`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciberimpacto`.`tb_GPU` (
  `codGPU` VARCHAR(5) NOT NULL,
  `codMarca` VARCHAR(5) NULL,
  `nombre` VARCHAR(45) NULL,
  `capacidad` VARCHAR(5) NULL,
  PRIMARY KEY (`codGPU`),
  INDEX `fk_tbGPU_tbMarca:codMarca_idx` (`codMarca` ASC),
  CONSTRAINT `fk_tbGPU_tbMarca:codMarca`
    FOREIGN KEY (`codMarca`)
    REFERENCES `ciberimpacto`.`tb_marca` (`codMarca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

Select * from tb_GPU;

Insert into tb_GPU values ('G0001','M0009','NVIDIA RTX 3090','24 GB');
Insert into tb_GPU values ('G0002','M0010','AMD RADEON RX 6900 XT','16 GB');
Insert into tb_GPU values ('G0003','M0009','NVIDIA RTX 3080','20 GB');
Insert into tb_GPU values ('G0004','M0010','AMD RADEON RX 6800','16 GB');
Insert into tb_GPU values ('G0005','M0009','NVIDIA RTX 3070','8 GB');
Insert into tb_GPU values ('G0006','M0010','AMD RADEON RX 6800 XT','8 GB');


-- -----------------------------------------------------
-- Table `ciberimpacto`.`tb_tipoDiscoDuro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciberimpacto`.`tb_tipoDiscoDuro` (
  `codTipoDiscoDuro` VARCHAR(5) NOT NULL,
  `nombreTipo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`codTipoDiscoDuro`))
ENGINE = InnoDB;

Select * from tb_tipoDiscoDuro;

Insert into tb_tipoDiscoDuro values ('TD001', 'SSD');
Insert into tb_tipoDiscoDuro values ('TD002', 'HDD');

-- -----------------------------------------------------
-- Table `ciberimpacto`.`tb_discoDuro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciberimpacto`.`tb_discoDuro` (
  `codDiscoDuro` VARCHAR(5) NOT NULL,
  `codMarca` VARCHAR(5) NOT NULL,
  `capacidad` VARCHAR(5) NOT NULL,
  `codTipoDiscoDuro` VARCHAR(5) NOT NULL,
  PRIMARY KEY (`codDiscoDuro`),
  INDEX `fk_tbDiscoDuro_tbTipoDIscoDuro:codTipoDiscoDuro_idx` (`codTipoDiscoDuro` ASC),
  INDEX `fk_tbDiscoDuro_tbMarca_idx` (`codMarca` ASC),
  CONSTRAINT `fk_tbDiscoDuro_tbTipoDIscoDuro:codTipoDiscoDuro`
    FOREIGN KEY (`codTipoDiscoDuro`)
    REFERENCES `ciberimpacto`.`tb_tipoDiscoDuro` (`codTipoDiscoDuro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbDiscoDuro_tbMarca`
    FOREIGN KEY (`codMarca`)
    REFERENCES `ciberimpacto`.`tb_marca` (`codMarca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

Select * from tb_discoDuro;
Insert into tb_discoDuro values ('DD001', 'M0012','500GB','TD002');
Insert into tb_discoDuro values ('DD002', 'M0013','1TBGB', 'TD001');
Insert into tb_discoDuro values ('DD003', 'M0012','1TBGB','TD002');
Insert into tb_discoDuro values ('DD004', 'M0013','250GB', 'TD001');
Insert into tb_discoDuro values ('DD005', 'M0012','250GB', 'TD002');
Insert into tb_discoDuro values ('DD006', 'M0013','500GB', 'TD001');

-- -----------------------------------------------------
-- Table `ciberimpacto`.`tb_categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciberimpacto`.`tb_categoria` (
  `codCategoria` VARCHAR(5) NOT NULL,
  `nombreCategoria` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`codCategoria`))
ENGINE = InnoDB;

Select * from tb_categoria;

Insert into tb_categoria values ('CT001', 'Laptop trabajo');
Insert into tb_categoria values ('CT002', 'Laptop gamer');
Insert into tb_categoria values ('CT003', 'PC trabajo');
Insert into tb_categoria values ('CT004', 'PC gamer');

-- -----------------------------------------------------
-- Table `ciberimpacto`.`tb_SistemaOperativo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciberimpacto`.`tb_SistemaOperativo` (
  `codSistemaOperativo` VARCHAR(5) NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`codSistemaOperativo`))
ENGINE = InnoDB;

Select * from tb_SistemaOperativo;

Insert into tb_SistemaOperativo values ('SO001','Windows');
Insert into tb_SistemaOperativo values ('SO002','MAC OS');
Insert into tb_SistemaOperativo values ('SO003','Linux');
Insert into tb_SistemaOperativo values ('SO004','Google Chrome OS');


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
  `precioVenta` DECIMAL(7,2) NOT NULL,
  PRIMARY KEY (`codProducto`),
  INDEX `fk_tbProducto_tbMarca:codMarca_idx` (`codMarca` ASC),
  INDEX `fk_tbProducto_tbGPU_idx` (`codCPU` ASC) VISIBLE,
  INDEX `fk_tbProducto_tbGPU_idx1` (`codGPU` ASC) VISIBLE,
  INDEX `fk_tbProducto_tbDiscoDuro:codDiscoDuro_idx` (`codDiscoDuro` ASC) VISIBLE,
  INDEX `fk_tbProducto_tbTipoProducto:codTipoProducto_idx` (`codCategoria` ASC) VISIBLE,
  INDEX `fk_tbProducto_tbSistemaOperativo:codSistemaOperativo_idx` (`codSistemaOperativo` ASC) VISIBLE,
  CONSTRAINT `fk_tbProducto_tbMarca:codMarca`
    FOREIGN KEY (`codMarca`)
    REFERENCES `ciberimpacto`.`tb_marca` (`codMarca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbProducto_tbCPU:codCPU`
    FOREIGN KEY (`codCPU`)
    REFERENCES `ciberimpacto`.`tb_CPU` (`codCPU`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbProducto_tbGPU:codGPU`
    FOREIGN KEY (`codGPU`)
    REFERENCES `ciberimpacto`.`tb_GPU` (`codGPU`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbProducto_tbDiscoDuro:codDiscoDuro`
    FOREIGN KEY (`codDiscoDuro`)
    REFERENCES `ciberimpacto`.`tb_discoDuro` (`codDiscoDuro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbProducto_tbCategoria:codCategoria`
    FOREIGN KEY (`codCategoria`)
    REFERENCES `ciberimpacto`.`tb_categoria` (`codCategoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbProducto_tbSistemaOperativo:codSistemaOperativo`
    FOREIGN KEY (`codSistemaOperativo`)
    REFERENCES `ciberimpacto`.`tb_SistemaOperativo` (`codSistemaOperativo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

Select * from tb_produtcto;

Insert into tb_produtcto values ('PD001','Laptop Swift',			'M0007','Swift',	'C0002','14 pulgadas','DD002','G0001','CT001','SO001','15000.00');
Insert into tb_produtcto values ('PD002','Laptop Vostro',			'M0008','Vostro',	'C0003','15 pulgadas','DD003','G0002','CT002','SO001','10000.00');
Insert into tb_produtcto values ('PD003','Laptop Thinkbook',		'M0009','Thinkbook','C0005','14 pulgadas','DD001','G0003','CT002','SO001','9000.00');
Insert into tb_produtcto values ('PD004','Laptop Thinkpad',			'M0004','Thinkpad',	'C0007','16 pulgadas','DD005','G0004','CT002','SO001','8000.00');
Insert into tb_produtcto values ('PD005','Laptop ASUS ROG ZEPHYRUS','M0003','Asus ROG',	'C0008','17 pulgadas','DD006','G0005','CT002','SO001','5000.00');
Insert into tb_produtcto values ('PD006','Laptop HP15',				'M0004','HP15',		'C0003','18 pulgadas','DD004','G0006','CT002','SO001','4000.00');

-- -----------------------------------------------------
-- Table `ciberimpacto`.`tb_TipoUsuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciberimpacto`.`tb_TipoUsuario` (
  `codTipoUsuario` INT NOT NULL,
  `nombreTipo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`codTipoUsuario`))
ENGINE = InnoDB;

Select * from tb_TipoUsuario;
Insert into tb_TipoUsuario values (1,'Administrador');
Insert into tb_TipoUsuario values (2,'Cliente');

-- -----------------------------------------------------
-- Table `ciberimpacto`.`tb_pais`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciberimpacto`.`tb_pais` (
  `codPais` VARCHAR(4) NOT NULL,
  `nombre` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`codPais`))
ENGINE = InnoDB;

Insert into tb_pais values ('0001', 'Peru');
Insert into tb_pais values ('0002', 'USA');
Insert into tb_pais values ('0003', 'Alemania');
Insert into tb_pais values ('0004', 'China');
Insert into tb_pais values ('0005', 'Taiwan');

-- -----------------------------------------------------
-- Table `ciberimpacto`.`tb_ciudad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciberimpacto`.`tb_ciudad` (
  `codCiudad` VARCHAR(5) NOT NULL,
  `NOMBRE` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`codCiudad`))
ENGINE = InnoDB;

Insert into tb_ciudad values ('Cty01','Lima');
Insert into tb_ciudad values ('Cty02','Arequipa');
Insert into tb_ciudad values ('Cty03','Piura');
Insert into tb_ciudad values ('Cty04','Ica');
Insert into tb_ciudad values ('Cty05','Puno');

-- -----------------------------------------------------
-- Table `ciberimpacto`.`tb_TipoDocumento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciberimpacto`.`tb_TipoDocumento` (
  `codTipoDocumento` VARCHAR(5) NOT NULL,
  `nombreTipo` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`codTipoDocumento`))
ENGINE = InnoDB;

Insert into tb_TipoDocumento values ('TDOC1','DNI');
Insert into tb_TipoDocumento values ('TDOC2','Pasaporte');

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
    REFERENCES `ciberimpacto`.`tb_TipoUsuario` (`codTipoUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

Insert into tb_usuarios values ('admin',1,'admin1@hotmail.com','12345','Bad','Bunny');
Insert into tb_usuarios values ('usu01',2,'usuario1@hotmail.com','54321','J','Balvin');

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
    REFERENCES `ciberimpacto`.`tb_pais` (`codPais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbCliente_tbCiudad:codCiudad`
    FOREIGN KEY (`codCiudad`)
    REFERENCES `ciberimpacto`.`tb_ciudad` (`codCiudad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbCliente_tbTipoDocumento:codTipoDocumento`
    FOREIGN KEY (`codTipoDocumento`)
    REFERENCES `ciberimpacto`.`tb_TipoDocumento` (`codTipoDocumento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbCliente_tbUsuario:codUsuario`
    FOREIGN KEY (`codUsuario`)
    REFERENCES `ciberimpacto`.`tb_usuarios` (`codUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

Select * from tb_clientes;
Insert into tb_clientes values (2,'usu01',null,'Av. Javier Prado 666','0001','Cty01','TDOC1','75548952','987654321');

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
    REFERENCES `ciberimpacto`.`tb_TipoDocumento` (`codTipoDocumento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbAdministrador_tbPais:codPais`
    FOREIGN KEY (`codPais`)
    REFERENCES `ciberimpacto`.`tb_pais` (`codPais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbAdministrador_tbCiudad:codCiudad`
    FOREIGN KEY (`codCiudad`)
    REFERENCES `ciberimpacto`.`tb_ciudad` (`codCiudad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbAdministrador_tbUsuario:codUsuario`
    FOREIGN KEY (`codUsuario`)
    REFERENCES `ciberimpacto`.`tb_usuarios` (`codUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

Select * from tb_administradores;
Insert into tb_administradores values ('adm01', 'admin', 'Bad','Bunny', 'Brrrr', 'TDOC1', '78854152', '987654654', '0001','Cty01');



-- -----------------------------------------------------
-- Table `ciberimpacto`.`tb_Factura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciberimpacto`.`tb_Factura` (
  `codFactura` VARCHAR(5) NOT NULL,
  `codCliente` INT NOT NULL,
  `fechaPedido` DATETIME NOT NULL,
  `total` DECIMAL(7,2) NOT NULL,
  `PrecioEnvio` DECIMAL(5,2) NOT NULL,
  PRIMARY KEY (`codFactura`),
  INDEX `fk_tbFactura_tbCliente:codCliente_idx` (`codCliente` ASC) VISIBLE,
  CONSTRAINT `fk_tbFactura_tbCliente:codCliente`
    FOREIGN KEY (`codCliente`)
    REFERENCES `ciberimpacto`.`tb_clientes` (`codCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

Select*from tb_Factura;

Insert into tb_Factura values ('FAC01','2','2020-01-01','15000.00','20');

-- -----------------------------------------------------
-- Table `ciberimpacto`.`tbCarrito`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciberimpacto`.`tbCarrito` (
  `codCarrito` INT NOT NULL AUTO_INCREMENT,
  `codUsuario` VARCHAR(5) NOT NULL,
  `codFactura` VARCHAR(5) NULL,
  `codProducto` VARCHAR(5) NOT NULL,
  `cantirad` INT NOT NULL,
  `SubTotal` DECIMAL(7,2) NOT NULL,
  PRIMARY KEY (`codCarrito`, `codUsuario`),
  INDEX `fk_tbCarrito_tbProducto:codProducto_idx` (`codProducto` ASC) VISIBLE,
  INDEX `fk_tbCarrito_tbUsuario:codUsuario_idx` (`codUsuario` ASC) VISIBLE,
  INDEX `fk_tbCarrito_tbFactura:codFactura:codFactura_idx` (`codFactura` ASC) VISIBLE,
  CONSTRAINT `fk_tbCarrito_tbProducto:codProducto`
    FOREIGN KEY (`codProducto`)
    REFERENCES `ciberimpacto`.`tb_produtcto` (`codProducto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbCarrito_tbUsuario:codUsuario`
    FOREIGN KEY (`codUsuario`)
    REFERENCES `ciberimpacto`.`tb_usuarios` (`codUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbCarrito_tbFactura:codFactura:codFactura`
    FOREIGN KEY (`codFactura`)
    REFERENCES `ciberimpacto`.`tb_Factura` (`codFactura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

Select * from tbCarrito;

Insert into tbCarrito values (1,'usu01','FAC01','PD001',5,'75000.00');


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
