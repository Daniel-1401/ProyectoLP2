USE ciberimpacto;

-- TB_MARCA
insert into tb_marca values (01, 'SAMSUNG');
insert into tb_marca values (02, 'HP');
Insert into tb_marca values (03, 'DELL');
Insert into tb_marca values (04, 'MSI');
Insert into tb_marca values (05, 'HUAWEI');
Insert into tb_marca values (06, 'ACER');
Insert into tb_marca values (07, 'Kingston');
Insert into tb_marca values (08, 'Nvidia');
Insert into tb_marca values (09, 'AMD');
Insert into tb_marca values (10, 'Intel');
Insert into tb_marca values (11, 'ASUS');
Insert into tb_marca values (12, 'APPLE');

-- TB_CPU
Insert into tb_CPU values (01,10,'Intel Core'      ,'i7 10ma Gen.'  );
Insert into tb_CPU values (02,10,'Intel Core'      ,'i5 10ma Gen.'  );
Insert into tb_CPU values (03,10,'Intel Core'      ,'i9 11va Gen.'   );
Insert into tb_CPU values (04,09,'Procesador AMD'  ,'Ryzen 5 5900X' );
Insert into tb_CPU values (05,09,'Procesador AMD'  ,'Ryzen 7 5700X' );
Insert into tb_CPU values (06,09,'Procesador AMD'  ,'Ryzen 9 3600'  );
Insert into tb_CPU values (07,09,'Procesador AMD'  ,'Ryzen 9 5950X' );
Insert into tb_CPU values (09,09,'Procesador AMD'  ,'Ryzen 9 3900X ');
Insert into tb_CPU values (10,12,'Chip'            ,'M1'            );

-- TB_GPU
Insert into tb_GPU values (01,08, 'RTX 3090'         ,'24 GB');
Insert into tb_GPU values (02,08, 'RTX 3080'         ,'20 GB');
Insert into tb_GPU values (03,08, 'RTX 3070'         ,'8 GB' );
insert into tb_GPU values (04,09, 'RADEON RX Vega 56','2 GB' );
insert into tb_GPU values (05,09, 'RADEON RX Vega 56','6 GB' );
Insert into tb_GPU values (06,09, 'RADEON RX 6900 XT','16 GB');
Insert into tb_GPU values (07,09, 'RADEON RX 6800 XT','8 GB' );
Insert into tb_GPU values (08,09, 'RADEON RX 6800'   ,'16 GB');
Insert into tb_GPU values (09,12, 'APPLE'            ,'7 Nucleos');


-- TB_TIPODISCODURO
Insert into tb_tipoDiscoDuro values (1, 'SSD');
Insert into tb_tipoDiscoDuro values (2, 'HDD');

-- TB_DISCODURO
Insert into tb_discoDuro values (01,01,'512 GB',2);
insert into tb_discoDuro values (02,01,'512 GB',1);
insert into tb_discoDuro values (03,01,'1 TB'  ,1);
Insert into tb_discoDuro values (04,07,'256 GB',1);
Insert into tb_discoDuro values (05,07,'516 GB',1);
Insert into tb_discoDuro values (06,07,'1 TB'  ,1);
Insert into tb_discoDuro values (07,12,'512 GB',1);
Insert into tb_discoDuro values (08,12,'2 TB'  ,1);

-- TB_CATEGORIA
insert into tb_categoria values (01, 'LAPTOP GAMER');
insert into tb_categoria values (02, 'LAPTOP DISEÑO');
Insert into tb_categoria values (03, 'LAPTOP TRABAJO');
Insert into tb_categoria values (04, 'NOTEBOOKS');
Insert into tb_categoria values (05, 'PC GAMER');

-- TB_SISTEMAOPERATIVO
insert into tb_sistemaoperativo values (01,'WINDOWS 10');
Insert into tb_SistemaOperativo values (02,'MAC OS');

-- TB_PRODUCTO
Insert into tb_produtcto values ('P0001','GP65 LEOPARD 10SEK',01,04,'15.6 pulgadas',01,03,05,01,7699.59);
Insert into tb_produtcto values ('P0002','ZENBOOK DUO'       ,02,11,'14 pulgadas'  ,03,02,02,01,7999.99);
Insert into tb_produtcto values ('P0003','PAVILION GAMING'   ,01,02,'15.6 pulgadas',06,05,04,01,4199.29);
Insert into tb_produtcto values ('P0004','VOSTRO 3400'       ,03,03,'14 pulgadas'  ,02,04,02,01,3259.00);
Insert into tb_produtcto values ('P0005','MATEBOOK X PRO'    ,04,05,'13.9 pulgadas',01,03,06,01,5799.99);
Insert into tb_produtcto values ('P0006','AIR'               ,04,12,'13 pulgadas'  ,10,09,08,02,5199.79);

-- TB_PAIS
Insert into tb_pais values ('PE', 'Peru');
Insert into tb_pais values ('US', 'USA');
Insert into tb_pais values ('DE', 'Alemania');
Insert into tb_pais values ('CN', 'China');
Insert into tb_pais values ('CL', 'Chile');


-----------------------------------------------------------------------------
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
