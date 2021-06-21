USE ciberimpacto;

-- TB_MARCA
insert into tb_marca values (01, 'SAMSUNG');
insert into tb_marca values (02, 'HP');
insert into tb_marca values (03, 'DELL');
insert into tb_marca values (04, 'SONY');
Insert into tb_marca values (05, 'Dell');
Insert into tb_marca values (06, 'LG');
Insert into tb_marca values (07, 'MSI');
Insert into tb_marca values (08, 'Alienware');
Insert into tb_marca values (10, 'Logitech');
Insert into tb_marca values (11, 'Acer');
Insert into tb_marca values (12, 'BenQ');
Insert into tb_marca values (13, 'Nvidia');
Insert into tb_marca values (14, 'AMD');
Insert into tb_marca values (15, 'Intel');
Insert into tb_marca values (16, 'Asus');

-- TB_CPU
Insert into tb_CPU values (01,15,'Procesador Intel','i9 11va Gen.'  );
Insert into tb_CPU values (02,14,'Procesador AMD'  ,'Ryzen 9 5900X' );
Insert into tb_CPU values (03,15,'Procesador Intel','i5 10ma Gen.'  );
Insert into tb_CPU values (04,14,'Procesador AMD'  ,'Ryzen 7 5700X' );
Insert into tb_CPU values (05,15,'Procesador Intel','i9 8va Gen.'   );
Insert into tb_CPU values (06,14,'Procesador AMD'  ,'Ryzen 5 3600'  );
Insert into tb_CPU values (07,15,'Procesador Intel','i9 10ma Gen.'  );
Insert into tb_CPU values (08,14,'Procesador AMD'  ,'Ryzen 9 5950X' );
Insert into tb_CPU values (09,15,'Procesador Intel','i5 10va Gen.'  );
Insert into tb_CPU values (10,14,'Procesador AMD'  ,'Ryzen 9 3900X ');

-- TB_GPU
insert into tb_GPU values (01,14, 'Radeon RX Vega 56'    ,'2 GB' );
insert into tb_GPU values (02,14, 'Radeon RX Vega 56'    ,'6 GB' );
Insert into tb_GPU values (03,13, 'NVIDIA RTX 3090'      ,'24 GB');
Insert into tb_GPU values (04,14, 'AMD RADEON RX 6900 XT','16 GB');
Insert into tb_GPU values (05,13, 'NVIDIA RTX 3080'      ,'20 GB');
Insert into tb_GPU values (06,14, 'AMD RADEON RX 6800'   ,'16 GB');
Insert into tb_GPU values (07,13, 'NVIDIA RTX 3070'      ,'8 GB' );
Insert into tb_GPU values (08,14, 'AMD RADEON RX 6800 XT','8 GB' );

-- TB_TIPODISCODURO
insert into tb_tipoDiscoDuro values('DIS01','Disco duro SAS');
Insert into tb_tipoDiscoDuro values ('TD001', 'SSD');
Insert into tb_tipoDiscoDuro values ('TD002', 'HDD');

-- TB_DISCODURO
insert into tb_discoDuro values ('DIS01','MAR01','600MB','DIS01');
insert into tb_discoDuro values ('DIS02','MAR02','1 TB','DIS01');
Insert into tb_discoDuro values ('DD001', 'M0012','500GB','TD002');
Insert into tb_discoDuro values ('DD002', 'M0013','1TBGB', 'TD001');
Insert into tb_discoDuro values ('DD003', 'M0012','1TBGB','TD002');
Insert into tb_discoDuro values ('DD004', 'M0013','250GB', 'TD001');
Insert into tb_discoDuro values ('DD005', 'M0012','250GB', 'TD002');
Insert into tb_discoDuro values ('DD006', 'M0013','500GB', 'TD001');

-- TB_CATEGORIA
insert into tb_categoria values('CAT01', 'LAPTOP GAMER');
insert into tb_categoria values('CAT02', 'LAPTOP DISEÑO');
insert into tb_categoria values('CAT03', 'LAPTOP DESARROLLO SOFTWARE');
Insert into tb_categoria values ('CT001', 'Laptop trabajo');
Insert into tb_categoria values ('CT002', 'Laptop gamer');
Insert into tb_categoria values ('CT003', 'PC trabajo');
Insert into tb_categoria values ('CT004', 'PC gamer');

-- TB_SISTEMAOPERATIVO
insert into tb_sistemaoperativo values ('SIS01','WINDOWS 10');
insert into tb_sistemaoperativo values ('SIS02','WINDOWS 7');
Insert into tb_SistemaOperativo values ('SO001','Windows');
Insert into tb_SistemaOperativo values ('SO002','MAC OS');
Insert into tb_SistemaOperativo values ('SO003','Linux');
Insert into tb_SistemaOperativo values ('SO004','Google Chrome OS');

-- TB_PRODUCTO
Insert into tb_produtcto values ('PD001','Laptop Swift',			'M0007','Swift',	'C0002','14 pulgadas','DD002','G0001','CT001','SO001','15000.00');
Insert into tb_produtcto values ('PD002','Laptop Vostro',			'M0008','Vostro',	'C0003','15 pulgadas','DD003','G0002','CT002','SO001','10000.00');
Insert into tb_produtcto values ('PD003','Laptop Thinkbook',		'M0009','Thinkbook','C0005','14 pulgadas','DD001','G0003','CT002','SO001','9000.00');
Insert into tb_produtcto values ('PD004','Laptop Thinkpad',			'M0004','Thinkpad',	'C0007','16 pulgadas','DD005','G0004','CT002','SO001','8000.00');
Insert into tb_produtcto values ('PD005','Laptop ASUS ROG ZEPHYRUS','M0003','Asus ROG',	'C0008','17 pulgadas','DD006','G0005','CT002','SO001','5000.00');
Insert into tb_produtcto values ('PD006','Laptop HP15',				'M0004','HP15',		'C0003','18 pulgadas','DD004','G0006','CT002','SO001','4000.00');

-- TB_PAIS
Insert into tb_pais values ('0001', 'Peru');
Insert into tb_pais values ('0002', 'USA');
Insert into tb_pais values ('0003', 'Alemania');
Insert into tb_pais values ('0004', 'China');
Insert into tb_pais values ('0005', 'Taiwan');

-- TB_CIUDAD
Insert into tb_ciudad values ('Cty01','Lima');
Insert into tb_ciudad values ('Cty02','Arequipa');
Insert into tb_ciudad values ('Cty03','Piura');
Insert into tb_ciudad values ('Cty04','Ica');
Insert into tb_ciudad values ('Cty05','Puno');

-- TB_ TIPODOCUMENTO
Insert into tb_TipoDocumento values ('TDOC1','DNI');
Insert into tb_TipoDocumento values ('TDOC2','Pasaporte');

-- TB_TIPOUSUARIO
Insert into tb_TipoUsuario values (1,'Administrador');
Insert into tb_TipoUsuario values (2,'Cliente');

-- TB_USUARIOS
Insert into tb_usuarios values ('admin',1,'admin1@hotmail.com','12345','Bad','Bunny');
Insert into tb_usuarios values ('usu01',2,'usuario1@hotmail.com','54321','J','Balvin');

-- TB_CLIENTES
Insert into tb_clientes values (2,'usu01',null,'Av. Javier Prado 666','0001','Cty01','TDOC1','75548952','987654321');

-- TB_ADMINISTRADORES
Insert into tb_administradores values ('adm01', 'admin', 'Bad','Bunny', 'Brrrr', 'TDOC1', '78854152', '987654654', '0001','Cty01');

-- TB_FACTURA
Insert into tb_Factura values ('FAC01','2','2020-01-01','15000.00','20');

-- TB_CARRITO
Insert into tbCarrito values (1,'usu01','FAC01','PD001',5,'75000.00');
