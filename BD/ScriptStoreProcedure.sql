-- ---PROCEDURES-----
USE ciberimpacto;
DELIMITER $$
create procedure sp_insertar_registro_usuario
	(
	   codUsuario						VARCHAR(5),
       codTipoUsuario				    INT, 
       email						    VARCHAR(100), 
       contraseña				        VARCHAR(16), 
       nombreUsuario					VARCHAR(45),
	   apellidoUsuario					VARCHAR(45)
)
BEGIN
	INSERT INTO tb_usuarios
	(
		codUsuario,
		codTipoUsuario,
		email,
		contraseña,
		nombreUsuario,
		apellidoUsuario
	)
	VALUES
		(
			codUsuario,                
			codTipoUsuario,                  
			email,                   
			contraseña,				
			nombreUsuario,
			apellidoUsuario
		);
END$$

DELIMITER $$
create procedure sp_insertar_registro_producto
	(
	   codProducto						VARCHAR(5),
	   nombreProducto					VARCHAR(45),
	   codMarca							VARCHAR(5),
	   modeloProducto					VARCHAR(45),
	   codCPU							VARCHAR(5),
	   descripcionPantalla				VARCHAR(150),
	   codDiscoDuro						VARCHAR(5),
	   codGPU							VARCHAR(5),
	   codCategoria						VARCHAR(5),
	   codSistemaOperativo				VARCHAR(5),
	   precioVenta						DECIMAL(5,2)
)
BEGIN
	INSERT INTO tb_producto
	(
		codProducto,
		nombreProducto,
		codMarca,
		modeloProducto,
		codCPU,
		descripcionPantalla,
		codDiscoDuro,
		codGPU,
		codCategoria,
		codSistemaOperativo,
		precioVenta
	)
	VALUES
	(
	   codProducto,
	   nombreProducto,
	   codMarca,
	   modeloProducto,
	   codCPU,
	   descripcionPantalla,
	   codDiscoDuro,
	   codGPU,
	   codCategoria,
	   codSistemaOperativo,
	   precioVenta
	);
END$$

DELIMiTER $$
create procedure usp_insertaproducto(cod varchar(5), nom varchar(50), codmarca varchar(5), modelo varchar(50), 
codcpu varchar(5), descripcion varchar(50), coddisco varchar(5), codgpu varchar(5), codcategoria varchar(5),
 codsistema varchar(5),precio DECIMAL(5,2)) 
begin
insert into tb_produtcto values(cod, nom, codmarca, modelo, codcpu, descripcion, 
coddisco, codgpu, codcategoria, codsistema, precio);
end$$
DELIMiTER ;

-- EJECUTAMOS USP_INSERTAPRODUCTO
call usp_insertaproducto('PRO01','Laptop LENOVO-RAYO','MAR02','Gamer','CPU01','Pantalla Gorila Glass','DIS01','GPU01','CAT01','SIS01',900);
call usp_insertaproducto('PRO02','Laptop HP-PAVILION','MAR03','Gamer X4','CPU02','Pantalla Gorila Glass','DIS01','GPU01','CAT01','SIS01',789);
call usp_insertaproducto('PRO03','Laptop SONY','MAR04','Gamer X904','CPU01','PANTALLA TACTIL','DIS01','GPU02','CAT03','SIS01',989);
select * from tb_produtcto;
