-- ---PROCEDURES-----
USE ciberimpacto;

-- USUAEIO
DELIMITER $$
create procedure sp_insertar_registro_usuario
	(
	   codUsuario						VARCHAR(5),
       email						    VARCHAR(100), 
       contraseña				        VARCHAR(16), 
       nombreUsuario					VARCHAR(45),
	   apellidoUsuario					VARCHAR(45)
)
BEGIN
	INSERT INTO tb_usuarios
	(	
		codUsuario,
		email,
		contraseña,
		nombreCompleto,
		apellidoCompleto
	)
	VALUES
	(
		codUsuario,                
		email,                   
		contraseña,				
		nombreUsuario,
		apellidoUsuario
	);
END$$

DELIMITER $$
CREATE PROCEDURE sp_update_registro_usuario
	(
		codUsuario						VARCHAR(5),
		codTipoDocumento			 	INT,
		numeroDocumento			 		VARCHAR(9),
		numeroTelefonico			 	VARCHAR(9),
		codPais			 			    VARCHAR(2),
		codCiudad			 			VARCHAR(3),
		numeroRUC			 			VARCHAR(11),
		direccion			 			VARCHAR(45)
	)
BEGIN
	UPDATE tb_usuarios	
	SET 	codTipoDocumento	= codTipoDocumento,
			numeroDocumento		= numeroDocumento,
			numeroTelefonico	= numeroTelefonico,
			codPais				= codPais,
			codCiudad			= codCiudad,
			numeroRUC			= numeroRUC,
			direccion			= direccion
	WHERE codUsuario = codUsuario;
END$$


-- PRODUCTO
DELIMITER $$
create procedure sp_insertar_producto
	(
		codProducto				VARCHAR(5)  ,
		modeloProducto			VARCHAR(45) ,
		codCategoria		 	INT         ,
		codMarca		 		INT         ,
		descripcionPantalla		VARCHAR(15) ,
		codCPU		 			INT         ,
		codGPU		 			INT         ,
		codDiscoDuro		 	INT         ,
		codSistemaOperativo		INT         ,
		precioVenta		 		DECIMAL(7,2),
        codimagen				int			,
        imagen					LONGBLOB
)
BEGIN
	INSERT INTO tb_producto
	(
		codProducto,
		modeloProducto,
		codCategoria,
		codMarca,
		descripcionPantalla,
		codCPU,
		codGPU,
		codDiscoDuro,
		codSistemaOperativo,
		precioVenta
	)
	VALUES
	(
		codProducto,
		modeloProducto,
		codCategoria,
		codMarca,
		descripcionPantalla,
		codCPU,
		codGPU,
		codDiscoDuro,
		codSistemaOperativo,
		precioVenta
	);
    INSERT INTO imagenesProducto
    (
		codProducto,
        codImagen,
        imagen
    )
    VALUES
    (
		codProducto,
        codimagen,
        imagen
    );
END$$

DELIMITER $$
CREATE PROCEDURE sp_listarProducto()
BEGIN
	SELECT 
			prod.codProducto						 AS `Codigo`,
            prod.modeloProducto						 AS `Modelo`,
            cat.nombreCategoria						 AS `Categoria`,
            mar.nombreMarca							 AS `Marca`,
            CONCAT(cp.nombreCPU,' ',cp.modeloCPU)	 AS `Procesador`,
            CONCAT(gpu.nombre,' ',gpu.capacidad)	 AS `Tarjeta Grafica`,
            CONCAT(tds.nombreTipo,' ',dsc.capacidad) AS `Almacenamiento`,
            stm.nombre								 AS `Sistema operativo`,
            img.imagen								 AS `imagen`
    FROM tb_producto prod
    INNER JOIN tb_categoria 		cat ON prod.codCategoria=cat.codCategoria
    INNER JOIN tb_marca				mar ON prod.codMarca=mar.codMarca
    INNER JOIN tb_CPU				cp  ON prod.codCPU=cp.codCPU
    INNER JOIN tb_GPU				gpu ON prod.codGPU=gpu.codGPU
    INNER JOIN tb_discoDuro			dsc	ON prod.codDiscoDuro=dsc.codDiscoDuro
    INNER JOIN tb_tipoDiscoDuro 	tds ON dsc.codTipoDiscoDuro=tds.codTipoDiscoDuro
    INNER JOIN tb_SistemaOperativo 	stm ON prod.codSistemaOperativo=stm.codSistemaOperativo
    INNER JOIN imagenesProducto		img ON prod.codProducto=img.codProducto;
END$$

-- EJECUTAMOS USP_INSERTAPRODUCTO
call usp_insertaproducto('PRO01','Laptop LENOVO-RAYO','MAR02','Gamer','CPU01','Pantalla Gorila Glass','DIS01','GPU01','CAT01','SIS01',900);
call usp_insertaproducto('PRO02','Laptop HP-PAVILION','MAR03','Gamer X4','CPU02','Pantalla Gorila Glass','DIS01','GPU01','CAT01','SIS01',789);
call usp_insertaproducto('PRO03','Laptop SONY','MAR04','Gamer X904','CPU01','PANTALLA TACTIL','DIS01','GPU02','CAT03','SIS01',989);
select * from tb_produtcto;



-- PROCEDUR QUE VALIDA ACCESO
DELIMiTER $$
create  procedure usp_validaAcceso (usr char(45), pas char(20))
begin
select * from tb_usuarios where email = usr and contraseña = pas;
end$$
DELIMiTER ;


-- PROCEDURE  PARA COMBOX
show tables;

-- CPU
DELIMiTER $$
create procedure listacpu()
begin
select codCPU,nombreCPU
from tb_cpu;
end$$
DELIMiTER ;

call listacpu

-- GPU
DELIMiTER $$
create procedure listagpu()
begin
select codGPU,nombre
from tb_gpu;
end$$
DELIMiTER ;

call listacpu;

-- SISTEMA OPERATTIVO
DELIMiTER $$
create procedure listaSistemaOperativo()
begin
select codSistemaOperativo,nombre
from tb_sistemaoperativo;
end$$
DELIMiTER ;

-- DISCO DURO
DELIMiTER $$
create procedure listaDiscoDuro()
begin
select codDiscoDuro,capacidad
from tb_discoduro;
end$$
DELIMiTER ;

call listaDiscoDuro


-- CATEGORIA
DELIMiTER $$
create procedure listaCategoria()
begin
select codCategoria,nombreCategoria
from tb_categoria;
end$$
DELIMiTER ;

call listacategoria

nombre , codigo marca , capacidad
-- MARCA
DELIMiTER $$
create procedure listaMARCAXCAPACIDAD()
begin
select   d.codMarca,nombreMarca , capacidad
from tb_marca t
inner join tb_discoduro d
on t.codMarca = d.codMarca;
end$$
DELIMiTER ;

call  listaMARCAXCAPACIDAD
