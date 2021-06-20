USE ciberimpacto;
-- TB_MARCA
insert into tb_marca values('MAR01', 'SAMSUNG');
insert into tb_marca values('MAR02', 'HP');
insert into tb_marca values('MAR03', 'DELL');
insert into tb_marca values('MAR04', 'SONY');
select * from tb_marca;

-- TB_CPU
insert into tb_CPU values('CPU01','MAR03','CPU RAPIDA','Barabone');
insert into tb_CPU values('CPU02','MAR02','CPU A PRUEBA DE VIRUS','Minitorre');
select * from tb_CPU;

-- TB_GPU
insert into tb_GPU values('GPU01','MAR01', 'Radeon RX Vega 56','2GB');
insert into tb_GPU values('GPU02','MAR04', 'Radeon RX Vega 56','6GB');
select * from tb_GPU;

-- TB_TIPODISCODURO
insert into tb_tipoDiscoDuro values('DIS01','Disco duro SAS');
select * from tb_tipodiscoduro;

-- TB_DISCODURO
insert into tb_discoDuro values ('DIS01','MAR01','600MB','DIS01');
insert into tb_discoDuro values ('DIS02','MAR02','1 TB','DIS01');
select* from tb_discoduro;

-- TB_CATEGORIA
insert into tb_categoria values('CAT01', 'LAPTOP GAMER');
insert into tb_categoria values('CAT02', 'LAPTOP DISEÑO');
insert into tb_categoria values('CAT03', 'LAPTOP DESARROLLO SOFTWARE');
select * from tb_categoria;

-- TB_SISTEMAOPERATIVO
 insert into tb_sistemaoperativo values ('SIS01','WINDOWS 10');
  insert into tb_sistemaoperativo values ('SIS02','WINDOWS 7');
  select * from tb_sistemaoperativo;

