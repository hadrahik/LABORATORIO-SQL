create database laboratorioSQL

use laboratorioSQL;

create table profesor(
doc_prof varchar(20) primary key,
nom_prof varchar(30),
ape_prof varchar (30),
cate_prof int,
sal_prof int
);

create table curso(
cod_cur int primary key,
nom_cur varchar (100),
horas_cur int,
valor_cur int
);

create table estudiante(
doc_est varchar(30) primary key,
nom_est varchar(30),
ape_est varchar (30),
edad_est int
);

create table estudianteExcurso(
cod_cur_estcur int,
doc_est_estcur varchar(30),
fec_ini_estcur date
foreign key (doc_est_estcur) references estudiante (doc_est),
foreign key (cod_cur_estcur) references curso (cod_cur),
);

create table cliente(
id_cli varchar(30) primary key,
nom_cli varchar(30),
ape_cli varchar(30),
dir_cli varchar(100),
dep_cli varchar(20),
mes_cum_cli varchar(10)
);

create table articulo(
id_art int identity primary key,
tit_art varchar(100),
aut_art varchar(100),
edi_art varchar(300),
prec_art int
);

create table pedido(
id_ped int identity primary key,
id_cli_ped varchar(30),
fec_ped date,
val_ped int
foreign key (id_cli_ped) references cliente (id_cli),
);

set dateformat dmy;

create table articuloXpedido(
id_ped_artped int,
foreign key (id_ped_artped) references pedido (id_ped),
id_art_artped int,
foreign key (id_art_artped) references articulo (id_art),
cant_art_artped int,
val_ven_art_artped int
);

create table compañia(
comnit varchar(11) primary key,
comnombre varchar(30),
comañofun int,
comreplegal varchar(100)
);

create table tiposAutomotores(
auttipo int primary key,
nombre varchar(30)
);

create table automotores(
autoplaca varchar(6) primary key,
automarca varchar(30),
autotipo int,
foreign key (autotipo) references tiposAutomotores(auttipo),
automodelo int,
autopasajeros int,
autocilindraje int,
autonumchasis varchar(20)
);

create table aseguramientos(
asecodigo int identity primary key,
asefechainicio date,
asefechaexpiracion date,
asevalorasegurado int,
aseestado varchar(30),
asecosto int,
aseplaca varchar(6),
foreign key (aseplaca) references automotores (autoplaca)
);

create table incidentes(
incicodigo int identity primary key,
incifecha date,
inciplaca varchar(6),
foreign key (inciplaca) references automotores (autoplaca),
incilugar varchar(40),
inciantheridos int,
incicanfatalidades int,
incicanautosinvolucrados int
);

insert into profesor values
('63.502.720', 'Martha', 'Rojas', 2, 690000),
('91.216.904', 'Carlos', 'Pérez', 3, 950000),
('13.826.789', 'Maritza', 'Angarita', 1, 550000),
('1.098.765.789', 'Alejandra', 'Torres', 4, 1100000),
('63.502.721', 'Eduardo', 'López', 5, 710000),
('91.216.905', 'Sandra', 'Gómez', 6, 960000),
('13.826.790', 'Luis', 'Martínez', 7, 560000),
('1.098.765.790', 'Ana', 'Ramírez', 8, 1120000),
('72.304.567', 'Pedro', 'Díaz', 9, 720000),
('51.987.654', 'María', 'Hernández', 10, 970000),
('36.786.231', 'Juan', 'Gutiérrez', 11, 570000),
('2.345.678.901', 'Laura', 'Sánchez', 12, 1130000),
('84.123.456', 'Fernando', 'Pardo', 13, 730000),
('45.672.109', 'Andrea', 'García', 14, 980000),
('67.890.123', 'Miguel', 'Fuentes', 15, 580000),
('3.456.789.012', 'Paula', 'Luna', 16, 1150000),
('98.765.432', 'Ricardo', 'Vargas', 17, 740000),
('10.987.654', 'Carolina', 'Rojas', 18, 990000),
('21.234.567', 'Gabriel', 'Pérez', 19, 590000),
('4.567.890.123', 'Marta', 'Angarita', 20, 1180000),
('9.876.543', 'Diego', 'Torres', 21, 750000),
('32.109.876', 'Natalia', 'Gómez', 22, 1000000),
('5.432.109.876', 'Alejandro', 'Martínez', 23, 600000),
('6.543.210.987', 'Camila', 'Ramírez', 24, 1200000),
('7.654.321.098', 'Jorge', 'López', 25, 760000),
('8.765.432.109', 'Isabel', 'Hernández', 26, 1050000),
('9.876.543.210', 'Roberto', 'Gutiérrez', 27, 610000),
('10.987.654.321', 'Patricia', 'Sánchez', 28, 1250000),
('11.098.765.432', 'Sebastián', 'Pardo', 29, 770000),
('12.109.876.543', 'Valentina', 'García', 30, 1100000),
('13.210.987.654', 'Lorenzo', 'Fuentes', 31, 620000),
('14.321.098.765', 'Lucía', 'Luna', 32, 1300000),
('15.432.109.876', 'Andrés', 'Vargas', 33, 780000),
('16.543.210.987', 'Sofía', 'Rojas', 34, 1150000),
('17.654.321.098', 'Pablo', 'Pérez', 35, 630000),
('18.765.432.109', 'Valeria', 'Angarita', 36, 1350000),
('19.876.543.210', 'Gustavo', 'Torres', 37, 790000),
('20.987.654.321', 'Julia', 'Gómez', 38, 1200000),
('21.098.765.432', 'Javier', 'Martínez', 39, 640000),
('22.109.876.543', 'Catalina', 'Ramírez', 40, 1400000),
('23.210.987.654', 'Daniel', 'López', 41, 800000),
('24.321.098.765', 'Alejandra', 'Hernández', 42, 1250000),
('25.432.109.876', 'Andrés', 'Gutiérrez', 43, 650000),
('26.543.210.987', 'Mariana', 'Sánchez', 44, 1450000),
('27.654.321.098', 'Rafael', 'Pardo', 45, 850000),
('28.765.432.109', 'Isabella', 'García', 46, 1550000),
('11.111.111', 'Luisa', 'Gómez', 3, 850000),
('22.222.222', 'Javier', 'Pérez', 1, 600000),
('33.333.333', 'Carla', 'Martínez', 2, 720000),
('44.444.444', 'Roberto', 'Ramírez', 4, 1100000);

select * from profesor

insert into curso values
(149842, 'Fundamentos de bases de datos', 40, 500000),
(250067, 'Fundamentos de SQL', 20, 700000),
(289011, 'Manejo de Mysql', 45, 550000),
(345671, 'Findamentos of Oraacle', 60, 1100000),
(149843, 'Introducción a la Programación', 30, 450000),
(250068, 'Programación Avanzada', 25, 750000),
(289012, 'Desarrollo Web', 50, 600000),
(345672, 'Diseño de Bases de Datos', 70, 1150000),
(149844, 'Inglés Básico', 35, 480000),
(250069, 'Inglés Intermedio', 30, 760000),
(289013, 'Inglés Avanzado', 40, 580000),
(345673, 'Francés Básico', 55, 1200000),
(149845, 'Francés Intermedio', 60, 460000),
(250070, 'Francés Avanzado', 65, 780000),
(289014, 'Matemáticas Básicas', 20, 420000),
(345674, 'Cálculo Avanzado', 25, 800000),
(149846, 'Estadísticas', 30, 440000),
(250071, 'Física I', 45, 820000),
(289015, 'Física II', 50, 620000),
(345675, 'Química General', 60, 1250000),
(149847, 'Biología Molecular', 35, 470000),
(250072, 'Genética Avanzada', 40, 840000),
(289016, 'Ecología', 30, 640000),
(345676, 'Psicología General', 55, 1300000),
(149848, 'Psicología Clínica', 65, 490000),
(250073, 'Sociología', 70, 860000),
(289017, 'Historia del Arte', 20, 660000),
(345677, 'Historia Mundial', 25, 1350000),
(149849, 'Filosofía', 30, 510000),
(250074, 'Filosofía Política', 45, 880000),
(289018, 'Economía Básica', 60, 680000),
(345678, 'Economía Avanzada', 70, 1400000),
(149850, 'Derecho Constitucional', 35, 530000),
(250075, 'Derecho Internacional', 40, 900000),
(289019, 'Derecho Penal', 50, 700000),
(345679, 'Medicina Básica', 65, 1450000),
(149851, 'Medicina Interna', 70, 540000),
(250076, 'Cirugía Avanzada', 30, 920000),
(289020, 'Pediatría', 25, 720000),
(345680, 'Ginecología', 60, 1500000),
(149852, 'Literatura Universal', 55, 560000),
(250077, 'Poesía Contemporánea', 65, 940000),
(289021, 'Teatro y Dramaturgia', 70, 740000),
(345681, 'Cine y Audiovisuales', 20, 1550000),
(149853, 'Música Clásica', 25, 580000),
(250078, 'Música Contemporánea', 30, 960000),
(149854, 'Historia Antigua', 35, 600000),
(250079, 'Historia Medieval', 40, 980000),
(289022, 'Historia Moderna', 50, 760000),
(345682, 'Historia Contemporánea', 70, 1550000);

select * from curso

insert into estudiante values
('63.502.720', 'Maria', 'Peréz', 22),
('91.245.678', 'Carlos Jóse', 'López', 31),
('1.098.098.097', 'Jonatan', 'Ardila', 21),
('1.098.765.679', 'Carlos', 'Martínez', 24),
('63.502.721', 'Ana', 'González', 45),
('91.245.679', 'Laura', 'Pérez', 36),
('1.098.098.098', 'Diego', 'López', 17),
('1.098.765.680', 'Sofía', 'Ardila', 28),
('72.345.678', 'Andrés', 'Ramírez', 39),
('51.876.543', 'Camila', 'Hernández', 51),
('36.654.321', 'Manuel', 'Sánchez', 23),
('2.345.678.902', 'Isabella', 'Díaz', 52),
('84.123.457', 'Gabriel', 'Gómez', 43),
('45.987.654', 'Valentina', 'Martínez', 24),
('67.890.124', 'Felipe', 'Gutiérrez', 35),
('3.456.789.013', 'Mariana', 'Torres', 26),
('98.765.433', 'Rafael', 'Angarita', 37),
('10.987.655', 'Elena', 'Luna', 18),
('21.234.568', 'Javier', 'Pardo', 19),
('4.567.890.124', 'Natalia', 'García', 20),
('9.876.544', 'Luis', 'Rojas', 21),
('32.109.877', 'Diana', 'Vargas', 22),
('5.432.109.877', 'Esteban', 'Pérez', 23),
('6.543.211.001', 'Carolina', 'Hernández', 24),
('7.654.322.001', 'Juan', 'Gutiérrez', 25),
('8.765.433.001', 'Sara', 'Sánchez', 26),
('9.876.544.001', 'Andrea', 'Díaz', 27),
('10.987.655.001', 'Felipe', 'Gómez', 28),
('11.098.766.001', 'Valeria', 'Ramírez', 29),
('12.109.877.001', 'Santiago', 'Torres', 30),
('13.210.988.001', 'Lucía', 'Angarita', 31),
('14.321.099.001', 'Mateo', 'Luna', 32),
('15.432.110.001', 'Valentín', 'Pardo', 33),
('16.543.221.001', 'Eva', 'García', 34),
('17.654.332.001', 'Hugo', 'Rojas', 35),
('18.765.443.001', 'Marcela', 'Vargas', 36),
('19.876.554.001', 'Pablo', 'Pérez', 37),
('20.987.665.001', 'Catalina', 'Hernández', 38),
('21.098.776.001', 'Ricardo', 'Gutiérrez', 39),
('22.109.887.001', 'Natalia', 'Sánchez', 40),
('23.210.999.001', 'Joaquín', 'Díaz', 41),
('24.322.110.001', 'Elena', 'Gómez', 42),
('25.433.221.001', 'Juan Pablo', 'Martínez', 43),
('26.544.332.001', 'Isabel', 'López', 44),
('27.655.443.001', 'Andrés Felipe', 'Ramírez', 45),
('28.766.554.001', 'Marta', 'Torres', 46),
('11.111.111', 'Diego', 'Gómez', 47),
('22.222.222', 'Mariana', 'Pérez', 48),
('33.333.333', 'Julián', 'López', 49),
('44.444.444', 'Laura', 'Ramírez', 50);

select * from estudiante

insert into estudianteExcurso values 
(289011, '1.098.765.679', '01/02/2011'),
(250067, '63.502.720', '01/03/2011'),
(289011, '1.098.098.097', '01/02/2011'),
(345671, '63.502.720', '01/04/2011'),
(250067, '1.098.765.679', '01/05/2011'),
(345671, '91.245.678', '01/06/2011'),
(149842, '1.098.765.679', '01/07/2011'),
(250067, '1.098.098.097', '01/08/2011'),
(289011, '91.245.678', '01/09/2011'),
(149842, '63.502.720', '01/10/2011'),
(345671, '91.245.678', '01/11/2011'),
(149842, '1.098.098.097', '01/12/2011'),
(289011, '63.502.720', '01/01/2012'),
(250067, '91.245.678', '01/02/2012'),
(345671, '1.098.098.097', '01/03/2012'),
(149842, '63.502.720', '01/04/2012'),
(250067, '1.098.765.679', '01/05/2012'),
(289011, '1.098.765.679', '01/06/2012'),
(149842, '91.245.678', '01/07/2012'),
(345671, '1.098.098.097', '01/08/2012'),
(149842, '91.245.678', '01/09/2012'),
(250067, '1.098.765.679', '01/10/2012'),
(289011, '1.098.765.679', '01/11/2012'),
(149842, '1.098.098.097', '01/12/2012'),
(345671, '1.098.098.097', '01/01/2013'),
(149842, '1.098.765.679', '01/02/2013'),
(250067, '91.245.678', '01/03/2013'),
(345671, '63.502.720', '01/04/2013'),
(149842, '91.245.678', '01/05/2013'),
(289011, '63.502.720', '01/06/2013'),
(250067, '1.098.765.679', '01/07/2013'),
(345671, '1.098.098.097', '01/08/2013'),
(149842, '1.098.765.679', '01/09/2013'),
(250067, '91.245.678', '01/10/2013'),
(345671, '1.098.098.097', '01/11/2013'),
(149842, '63.502.720', '01/12/2013'),
(289011, '1.098.765.679', '01/01/2014'),
(250067, '1.098.765.679', '01/02/2014'),
(345671, '91.245.678', '01/03/2014'),
(149842, '91.245.678', '01/04/2014'),
(250067, '63.502.720', '01/05/2014'),
(289011, '63.502.720', '01/06/2014'),
(149842, '1.098.098.097', '01/07/2014'),
(345671, '1.098.765.679', '01/08/2014'),
(149842, '1.098.098.097', '01/09/2014'),
(250067, '1.098.765.679', '01/10/2014'),
(345671, '91.245.678', '01/11/2014'),
(149842, '63.502.720', '01/12/2014'),
(289011, '1.098.765.679', '01/01/2015'),
(250067, '1.098.765.679', '01/02/2015');

select * from estudianteExcurso

insert into cliente values
('63502718', 'Maritza', 'Rojas', 'Calle 34 No. 14-45', 'Santander', 'Abril'),
('13890234', 'Roger', 'Ariza', 'Cra 30 No. 13-45', 'Antioquia', 'Junio'),
('77191956', 'Juan Carlos', 'Arenas', 'Diagonal 23 No. 12-34 apto 101', 'Valle', 'Marzo'),
('1098765789', 'Catalina', 'Zapata', 'Av. El libertador No. 30-14', 'Cauca', 'Marzo'),
('123456789', 'Luisa', 'Gómez', 'Calle 20 No. 15-30', 'Santander', 'Mayo'),
('234567890', 'Javier', 'López', 'Cra 10 No. 5-25', 'Antioquia', 'Julio'),
('345678901', 'Camila', 'Martínez', 'Diagonal 15 No. 18-10 apto 202', 'Valle', 'Agosto'),
('456789012', 'Andrés', 'Gómez', 'Av. El Progreso No. 25-5', 'Cauca', 'Octubre'),
('567890123', 'Ana', 'Pérez', 'Calle 12 No. 7-14', 'Santander', 'Enero'),
('678901234', 'Sandra', 'Torres', 'Cra 5 No. 8-12', 'Antioquia', 'Febrero'),
('789012345', 'Felipe', 'Ramírez', 'Diagonal 17 No. 20-15 apto 303', 'Valle', 'Abril'),
('890123456', 'Mariana', 'Hernández', 'Av. La Libertad No. 22-8', 'Cauca', 'Mayo'),
('901234567', 'Diego', 'Luna', 'Calle 25 No. 10-5', 'Santander', 'Junio'),
('123456790', 'Valentina', 'Pardo', 'Cra 7 No. 9-18', 'Antioquia', 'Agosto'),
('234567891', 'Andrea', 'Gutiérrez', 'Diagonal 10 No. 13-20 apto 404', 'Valle', 'Septiembre'),
('345678902', 'Joaquín', 'Zapata', 'Av. Las Palmas No. 18-12', 'Cauca', 'Noviembre'),
('456789013', 'Ricardo', 'Ariza', 'Calle 18 No. 21-15', 'Santander', 'Enero'),
('567890124', 'Sofía', 'Arenas', 'Cra 12 No. 8-7', 'Antioquia', 'Marzo'),
('678901235', 'Lucía', 'López', 'Diagonal 13 No. 16-25 apto 505', 'Valle', 'Mayo'),
('789012346', 'Miguel', 'Martínez', 'Av. Las Acacias No. 20-30', 'Cauca', 'Junio'),
('890123457', 'Elena', 'Gómez', 'Calle 22 No. 24-18', 'Santander', 'Agosto'),
('901234568', 'Isabella', 'Pérez', 'Cra 15 No. 14-9', 'Antioquia', 'Octubre'),
('123456791', 'Andrés', 'Torres', 'Diagonal 11 No. 22-10 apto 606', 'Valle', 'Diciembre'),
('234567892', 'Julia', 'Ramírez', 'Av. Los Pinos No. 25-15', 'Cauca', 'Febrero'),
('345678903', 'Hernando', 'Hernández', 'Calle 19 No. 11-20', 'Santander', 'Abril'),
('456789014', 'Lorenzo', 'Luna', 'Cra 9 No. 12-7', 'Antioquia', 'Junio'),
('567890125', 'Santiago', 'Pardo', 'Diagonal 12 No. 16-30 apto 707', 'Valle', 'Agosto'),
('678901236', 'Valeria', 'Gutiérrez', 'Av. Los Laureles No. 20-25', 'Cauca', 'Octubre'),
('789012347', 'Pablo', 'Zapata', 'Calle 16 No. 17-12', 'Santander', 'Diciembre'),
('890123458', 'Natalia', 'Ariza', 'Cra 10 No. 15-18', 'Antioquia', 'Febrero'),
('901234569', 'Carolina', 'Arenas', 'Diagonal 9 No. 14-20 apto 808', 'Valle', 'Abril'),
('123456792', 'Sebastián', 'López', 'Av. El Bosque No. 22-10', 'Cauca', 'Junio'),
('234567893', 'Paula', 'Martínez', 'Calle 24 No. 9-15', 'Santander', 'Agosto'),
('345678904', 'Juan Pablo', 'Gómez', 'Cra 8 No. 11-25', 'Antioquia', 'Octubre'),
('456789015', 'Isabel', 'Gómez', 'Diagonal 14 No. 19-30 apto 909', 'Valle', 'Diciembre'),
('567890126', 'Mateo', 'Martínez', 'Av. La Esperanza No. 24-20', 'Cauca', 'Febrero'),
('678901237', 'Luis', 'Gómez', 'Calle 26 No. 13-10', 'Santander', 'Abril'),
('789012348', 'Valentín', 'Gómez', 'Cra 11 No. 12-18', 'Antioquia', 'Junio'),
('890123459', 'Eva', 'Torres', 'Diagonal 16 No. 17-25 apto 1010', 'Valle', 'Agosto'),
('901234570', 'Manuel', 'López', 'Av. Los Pájaros No. 23-12', 'Cauca', 'Octubre'),
('123456793', 'Catalina', 'Ramírez', 'Calle 28 No. 15-20', 'Santander', 'Diciembre'),
('234567894', 'Diana', 'Ariza', 'Cra 13 No. 10-30', 'Antioquia', 'Febrero'),
('345678905', 'Esteban', 'Arenas', 'Diagonal 20 No. 21-25 apto 1111', 'Valle', 'Abril'),
('456789016', 'Hugo', 'Luna', 'Av. Los Puentes No. 24-15', 'Cauca', 'Junio'),
('567890127', 'Marcela', 'Pardo', 'Calle 30 No. 14-18', 'Santander', 'Agosto'),
('678901238', 'Marta', 'Gutiérrez', 'Cra 15 No. 12-20', 'Antioquia', 'Octubre'),
('789012349', 'Joaquín', 'Zapata', 'Diagonal 18 No. 19-30 apto 1212', 'Valle', 'Diciembre'),
('890123460', 'Ricardo', 'Ariza', 'Av. El Progreso No. 26-12', 'Cauca', 'Febrero'),
('901234571', 'Isabella', 'Gómez', 'Calle 22 No. 16-15', 'Santander', 'Abril'),
('123456794', 'Andrés Felipe', 'López', 'Cra 14 No. 13-25', 'Antioquia', 'Junio');
select * from cliente

insert into articulo values
('Redes cisco', 'Ernesto Arigasello', 'Alfaomega-Rama', 60.000),
('Facebook y Twitter para adultos', 'Veloso Claudio', 'Alfaomega', 52.000),
('Creación de un portal con php y mysql', 'Jacob Pavón Puertas', 'Alfaomega - Rama', 40.000),
('Administración de sistemas operativos', 'Julio Gómez López', 'Alfaomega - Rama', 55.000);
INSERT INTO articulo VALUES
('Diseño de Redes Corporativas', 'Alejandra Torres', 'Editorial Aprendizaje', 62.000),
('Marketing en Redes Sociales', 'María Pérez', 'Editorial Digital', 50.000),
('Desarrollo Web con PHP y MySQL', 'Carlos Pérez', 'Editorial Web', 42.000),
('Seguridad Informática', 'Luis Martínez', 'Editorial Seguridad', 58.000),
('Programación en C++', 'Miguel Fuentes', 'Editorial Programación', 65.000),
('Introducción a la Inteligencia Artificial', 'Sofía Rojas', 'Editorial IA', 48.000),
('Diseño Gráfico Avanzado', 'Diego Torres', 'Editorial Diseño', 55.000),
('Análisis de Datos con Python', 'Lorenzo Gutiérrez', 'Editorial Datos', 70.000),
('Historia del Arte', 'Laura Sánchez', 'Editorial Historia', 40.000),
('Literatura Universal', 'Andrea García', 'Editorial Literatura', 52.000),
('Biología Molecular', 'Pablo Pardo', 'Editorial Biología', 45.000),
('Psicología General', 'Valeria Angarita', 'Editorial Psicología', 58.000),
('Matemáticas Avanzadas', 'Gustavo Zapata', 'Editorial Matemáticas', 62.000),
('Derecho Penal', 'Julia Gómez', 'Editorial Derecho', 70.000),
('Medicina Interna', 'Javier Martínez', 'Editorial Medicina', 75.000),
('Economía y Finanzas', 'Catalina Ramírez', 'Editorial Economía', 55.000),
('Marketing Digital', 'Daniel López', 'Editorial Marketing', 50.000),
('Cine y Audiovisuales', 'Rafael Pardo', 'Editorial Cine', 45.000),
('Música Clásica', 'Mariana Sánchez', 'Editorial Música', 40.000),
('Filosofía Contemporánea', 'Isabella García', 'Editorial Filosofía', 60.000),
('Sociología Moderna', 'Andrés López', 'Editorial Sociología', 48.000),
('Arquitectura Sostenible', 'Natalia Gómez', 'Editorial Arquitectura', 70.000),
('Física Cuántica', 'Luis Ramírez', 'Editorial Física', 58.000),
('Gestión de Proyectos', 'Santiago Torres', 'Editorial Proyectos', 55.000),
('Historia Mundial', 'Joaquín Ariza', 'Editorial Historia', 62.000),
('Ecología y Medio Ambiente', 'Isabel López', 'Editorial Ecología', 50.000),
('Nutrición y Salud', 'Andrés Felipe Ramírez', 'Editorial Salud', 45.000),
('Programación en Java', 'Marta Torres', 'Editorial Programación', 70.000),
('Geografía del Mundo', 'Diego Gutiérrez', 'Editorial Geografía', 58.000),
('Química General', 'Laura Martínez', 'Editorial Química', 55.000),
('Ciencias Políticas', 'Roberto Ariza', 'Editorial Política', 60.000),
('Gestión Empresarial', 'Catalina López', 'Editorial Empresarial', 52.000),
('Psicología Clínica', 'Mariana Ramírez', 'Editorial Psicología', 45.000),
('Filosofía Política', 'Santiago García', 'Editorial Filosofía', 58.000),
('Diseño de Moda', 'Valentina Angarita', 'Editorial Moda', 62.000),
('Historia del Cine', 'Hugo Torres', 'Editorial Cine', 50.000),
('Literatura Infantil', 'Marcela Ramírez', 'Editorial Literatura', 45.000),
('Música Contemporánea', 'Marta Gutiérrez', 'Editorial Música', 70.000),
('Arquitectura Moderna', 'Diego Zapata', 'Editorial Arquitectura', 58.000),
('Psicología Infantil', 'Isabella Ariza', 'Editorial Psicología', 55.000),
('Fotografía Digital', 'Andrés Ramírez', 'Editorial Fotografía', 62.000),
('Gastronomía y Cocina', 'Ricardo García', 'Editorial Gastronomía', 50.000),
('Historia del Arte Contemporáneo', 'Valeria Ramírez', 'Editorial Arte', 45.000),
('Diseño de Interiores', 'Natalia Martínez', 'Editorial Diseño', 70.000),
('Criminología', 'Joaquín López', 'Editorial Criminología', 58.000),
('Arte Urbano', 'Sofía Martínez', 'Editorial Arte', 55.000);
select * from articulo

insert into pedido values 
('63502718', '25/02/2012', 120000),
('77191956', '30/04/2012', 55000),
('63502718', '10/12/2011', 260000),
('1098765789', '25/02/2012', 1800000),
('13890234', '2012-03-15', 75000),
('77191956', '2012-05-05', 42000),
('63502718', '2012-01-20', 98000),
('1098765789', '2012-03-10', 2100000),
('123456789', '2012-04-21', 86000),
('234567890', '2012-06-10', 55000),
('345678901', '2012-08-15', 72000),
('456789012', '2012-09-30', 140000),
('567890123', '2012-11-05', 95000),
('678901234', '2013-01-20', 62000),
('789012345', '2013-03-15', 110000),
('890123456', '2013-05-10', 80000),
('901234567', '2013-07-05', 105000),
('123456790', '2013-09-10', 130000),
('234567891', '2013-11-15', 67000),
('345678902', '2014-01-20', 92000),
('456789013', '2014-03-15', 78000),
('567890124', '2014-05-10', 115000),
('678901235', '2014-07-05', 165000),
('789012346', '2014-09-10', 112000),
('890123457', '2014-11-15', 135000),
('901234568', '2015-01-20', 79000),
('123456791', '2015-03-15', 108000),
('234567892', '2015-05-10', 87000),
('345678903', '2015-07-05', 112000),
('456789014', '2015-09-10', 145000),
('567890125', '2015-11-15', 98000),
('678901236', '2016-01-20', 122000),
('789012347', '2016-03-15', 80000),
('890123458', '2016-05-10', 135000),
('901234569', '2016-07-05', 115000),
('123456792', '2016-09-10', 152000),
('234567893', '2016-11-15', 95000),
('345678904', '2017-01-20', 112000),
('456789015', '2017-03-15', 118000),
('567890126', '2017-05-10', 98000),
('678901237', '2017-07-05', 134000),
('789012348', '2017-09-10', 126000),
('890123459', '2017-11-15', 108000),
('901234570', '2018-01-20', 115000),
('123456793', '2018-03-15', 122000),
('234567894', '2018-05-10', 95000),
('345678905', '2018-07-05', 118000),
('456789016', '2018-09-10', 132000),
('567890127', '2018-11-15', 98000),
('678901238', '2019-01-20', 124000);
select * from pedido

insert into articuloXpedido values
(1,3,5,40000),
(1,4,12,55000),
(2,1,5,65000),
(3,2,10,55000),
(3,3,12,45000),
(4,1,10,65000),
(2,2,5,45000),
(2,3,12,62000),
(1,1,10,70000),
(4,4,10,52000),
(3,1,12,68000),
(1,3,5,55000),
(2,2,10,48000),
(3,4,12,62000),
(4,3,10,60000),
(2,1,5,50000),
(1,4,12,67000),
(3,3,10,46000),
(4,2,12,60000),
(1,2,5,42000),
(2,4,10,58000),
(3,1,12,70000),
(4,3,10,65000),
(2,3,5,46000),
(1,2,12,72000),
(4,1,10,68000),
(1,3,5,44000),
(3,4,12,55000),
(4,2,10,60000),
(2,1,5,49000),
(3,3,10,48000),
(4,4,12,54000),
(1,1,10,72000),
(2,2,5,52000),
(3,4,12,67000),
(1,3,10,70000),
(4,1,5,46000),
(2,3,12,60000),
(4,2,10,62000),
(1,4,5,48000),
(3,2,12,65000),
(2,1,10,72000),
(4,4,5,45000),
(1,2,12,67000),
(3,1,10,55000),
(2,4,5,48000),
(4,3,12,70000),
(1,1,10,62000),
(3,3,5,55000),
(4,2,12,46000);
select * from articuloXpedido

insert into compañia values
('800890890-2', 'Seguros Atlantida' ,1998 ,'Carlos López'),
('899999999-1',' Aseguradora Rojas', 1991,' Luis Fernando Rojas' ),
('899999999-5', 'Seguros delEstado', 2001 ,'María Margarita Pérez'),
('123456789-1', 'Seguros Universal', 1995, 'Alejandra Torres'),
('234567890-2', 'Aseguradora García', 1999, 'Carlos Pérez'),
('345678901-3', 'Seguros del Sol', 2005, 'Luis Martínez'),
('458789512-4', 'Aseguradora del Norte', 1990, 'María Sánchez'),
('567890123-5', 'Seguros ABC', 1998, 'Andrea Gómez'),
('678901234-6', 'Aseguradora XYZ', 2003, 'Joaquín Ramírez'),
('789012345-7', 'Seguros del Futuro', 1993, 'Miguel Torres'),
('890123456-8', 'Aseguradora Innovadora', 1997, 'Laura Pérez'),
('901234567-9', 'Seguros de Confianza', 2000, 'Sofía Rojas'),
('123456789-0', 'Aseguradora Segura', 1994, 'Diego López'),
('234567890-1', 'Aseguradora de Vida', 1996, 'Carlos Torres'),
('345678901-2', 'Aseguradora Futurista', 2002, 'Andrés Martínez'),
('456789012-3', 'Seguros del Hogar', 1992, 'Catalina Gómez'),
('567890123-4', 'Aseguradora Total', 1997, 'Luis Pérez'),
('678901234-5', 'Seguros para Autos', 1999, 'María García'),
('789012345-6', 'Aseguradora Confiable', 2001, 'Joaquín Torres'),
('890123456-7', 'Seguros del Mar', 1998, 'Isabella Martínez'),
('901234567-8', 'Aseguradora Internacional', 2000, 'Miguel López'),
('123456789-9', 'Seguros del Cielo', 1996, 'Valentina Rojas'),
('234567890-0', 'Aseguradora Moderna', 1995, 'Andrés Ramírez'),
('345678901-1', 'Seguros de Salud', 2003, 'Joaquín Torres'),
('456789012-2', 'Aseguradora del Sur', 1991, 'Luis García'),
('567890123-3', 'Seguros Plus', 1994, 'María Pérez'),
('678901234-4', 'Aseguradora Negocios', 2000, 'Carlos Martínez'),
('789012345-5', 'Seguros del Bosque', 1997, 'Sofía López'),
('890123456-6', 'Aseguradora Pro', 2001, 'Andrea Torres'),
('901234567-7', 'Seguros Internacionales', 1993, 'Diego Gómez'),
('123456789-8', 'Aseguradora Global', 1998, 'Laura Martínez'),
('234567890-9', 'Seguros del Norte', 2002, 'Miguel García'),
('345678901-0', 'Aseguradora Universal', 1995, 'Joaquín López'),
('456789012-1', 'Seguros de Viaje', 1999, 'Catalina Torres'),
('567890123-2', 'Aseguradora de Vida', 1990, 'Luis Ramírez'),
('678901234-3', 'Seguros Seguros', 1996, 'María Sánchez'),
('789012345-4', 'Aseguradora Futuro', 1994, 'Andrés López'),
('890123456-5', 'Seguros del Pasado', 2001, 'Sofía Torres'),
('901234567-6', 'Aseguradora Moderna', 2003, 'Carlos Ramírez'),
('123456789-7', 'Seguros Presente', 1997, 'Isabella Pérez'),
('234567890-8', 'Aseguradora Pasado', 2002, 'Marta Torres'),
('345678901-9', 'Seguros Coches', 1998, 'Valentina Martínez'),
('456789012-4', 'Aseguradora Hogar', 1995, 'Andrés López'),
('567890123-1', 'Seguros Total', 2000, 'Diego García'),
('678901234-2', 'Aseguradora Vida', 1999, 'Luis Pérez'),
('789012345-3', 'Seguros Salud Int.', 1993, 'Carlos Torres'),
('890123456-4', 'Aseguradora Futuro', 1996, 'Laura García'),
('901234567-5', 'Seguros Modernos', 2001, 'María Ramírez'),
('892324456-4', 'Aseguradora Futuro', 1996, 'Laura García'),
('900244267-5', 'Seguros Modernos', 2001, 'María Ramírez');
select * from compañia

insert into tiposAutomotores values
(1,'Automóviles'),
(2,'Camperos'),
(3,'Camiones'),
(4, 'Motocicletas'),
(5, 'Autobuses'),
(6, 'Vehículos Eléctricos'),
(7, 'Furgonetas'),
(8, 'Bicicletas'),
(9, 'Tractores'),
(10, 'Ciclomotores'),
(11, 'Vehículos de Carga'),
(12, 'Coches de Lujo'),
(13, 'Scooters'),
(14, 'Vehículos Pasajeros'),
(15, 'Vehículos Recreativos'),
(16, 'Vehículos Comerciales'),
(17, 'Vehículos de Emergencia'),
(18, 'Vehículos Construcción'),
(19, 'Motocarros'),
(20, 'Vehículos Agrícolas'),
(21, 'Carros de Golf'),
(22, 'Vehículos Servicio'),
(23, 'Monopatines'),
(24, 'Taxis'),
(25, 'Cuatrimotos'),
(26, 'Vehículos Rescate'),
(27, 'Minicarros'),
(28, 'Karts'),
(29, 'Caravanas'),
(30, 'Vehículos Carreras'),
(31, 'Transporte Público'),
(32, 'Vehículos Mensajería'),
(33, 'Autocaravanas'),
(34, 'Vehículos Reparto'),
(35, 'Vehículos Alquiler'),
(36, 'Buggies'),
(37, 'Vehículos Turismo'),
(38, 'Vehículos Limpieza'),
(39, 'Vehículos Bomberos'),
(40, 'Vehículos Policía'),
(41, 'Vehículos Ambulancia'),
(42, 'Rescate Médico'),
(43, 'Transporte Escolar'),
(44, 'Vehículos Blindados'),
(45, 'Vehículos Seguridad'),
(46, 'Transporte Valores'),
(47, 'Transporte Personal'),
(48, 'Transporte Carga Pesada'),
(49, 'Transporte Pasajeros'),
(50, 'Transporte Mercancías');
select * from tiposAutomotores

insert into automotores values
('FLL420','chevrolet corsa',1, 2003, 5, 1400, 'wywzzz167kk009d25'),
('DKZ820','renault stepway',1, 2008, 5, 1600, 'wywwzz157kk009d45'),
('KJQ920','kia sportage',2, 2009, 7, 2000, 'wywzzz167kk009d25'),
('XYZ123', 'ford fiesta', 3, 2010, 5, 1300, 'wywzzz167kk009d30'),
('ABC456', 'hyundai tucson', 2, 2012, 7, 1800, 'wywzzz167kk009d21'),
('LMN789', 'mazda 3', 1, 2015, 5, 1500, 'wywzzz167kk009d17'),
('QWE987', 'toyota camry', 3, 2011, 5, 2400, 'wywzzz167kk009d13'),
('UIO654', 'honda civic', 2, 2010, 5, 1800, 'wywzzz167kk009d29'),
('PQR321', 'nissan versa', 1, 2018, 5, 1600, 'wywzzz167kk009d24'),
('MNB765', 'volkswagen golf', 1, 2014, 5, 1600, 'wywzzz167kk009d14'),
('ZXC890', 'subaru outback', 2, 2013, 7, 2500, 'wywzzz167kk009d12'),
('ASD456', 'chevrolet cruze', 1, 2016, 5, 1600, 'wywzzz167kk009d16'),
('WER234', 'ford ranger', 2, 2017, 5, 3200, 'wywzzz167kk009d15'),
('MJU567', 'honda cr-v', 1, 2015, 7, 2200, 'wywzzz167kk009d11'),
('JDG789', 'toyota corolla', 1, 2012, 5, 1800, 'wywzzz167kk009d26'),
('CVB890', 'nissan altima', 2, 2014, 5, 2500, 'wywzzz167kk009d18'),
('BNM432', 'mazda cx-5', 1, 2016, 5, 2200, 'wywzzz167kk009d19'),
('POI098', 'subaru forester', 1, 2017, 7, 2500, 'wywzzz167kk009d20'),
('RTY567', 'kia soul', 2, 2013, 5, 1600, 'wywzzz167kk009d27'),
('XCV432', 'honda fit', 1, 2018, 5, 1500, 'wywzzz167kk009d22'),
('QAZ789', 'toyota rav4', 1, 2014, 7, 2400, 'wywzzz167kk009d28'),
('POI234', 'hyundai elantra', 2, 2019, 5, 2000, 'wywzzz167kk009d23'),
('VBN567', 'nissan rogue', 1, 2020, 5, 2500, 'wywzzz167kk009d31'),
('ASD890', 'ford explorer', 2, 2015, 7, 3500, 'wywzzz167kk009d32'),
('TYU123', 'chevrolet camaro', 1, 2018, 5, 2000, 'wywzzz167kk009d33'),
('UIO456', 'subaru impreza', 1, 2019, 5, 1600, 'wywzzz167kk009d34'),
('JKL789', 'honda accord', 2, 2016, 5, 2000, 'wywzzz167kk009d35'),
('CVB123', 'toyota sienna', 1, 2017, 7, 3500, 'wywzzz167kk009d36'),
('BNM456', 'mazda mx-5', 1, 2020, 2, 2000, 'wywzzz167kk009d37'),
('ZXC789', 'kia rio', 2, 2017, 5, 1400, 'wywzzz167kk009d38'),
('POI789', 'honda pilot', 2, 2019, 7, 3500, 'wywzzz167kk009d41'),
('TGU123', 'toyota 4runner', 1, 2022, 7, 4000, 'wywzzz167kk009d42'),
('AGD056', 'nissan sentra', 1, 2020, 5, 1800, 'wywzzz167kk009d43'),
('WER789', 'chevrolet equinox', 2, 2021, 5, 2000, 'wywzzz167kk009d44'),
('JKL123', 'mazda 6', 1, 2020, 5, 2500, 'wywzzz167kk009d45'),
('CVB456', 'honda hr-v', 1, 2019, 5, 1800, 'wywzzz167kk009d46'),
('BNM789', 'ford escape', 2, 2018, 5, 2000, 'wywzzz167kk009d47'),
('ERT123', 'nissan murano', 1, 2017, 7, 3500, 'wywzzz167kk009d48'),
('QWE456', 'toyota tundra', 1, 2021, 5, 4700, 'wywzzz167kk009d49'),
('POG089', 'chevrolet silverado', 2, 2022, 5, 5300, 'wywzzz167kk009d50'),
('JKL234', 'ford mustang', 1, 2021, 5, 2700, 'wywzzz167kk009d51'),
('TYU567', 'honda pilot', 2, 2019, 7, 3500, 'wywzzz167kk009d52'),
('UIO890', 'toyota 4runner', 1, 2022, 7, 4000, 'wywzzz167kk009d53'),
('POI123', 'nissan sentra', 1, 2020, 5, 1800, 'wywzzz167kk009d54'),
('TGU456', 'chevrolet equinox', 2, 2021, 5, 2000, 'wywzzz167kk009d55'),
('AGD789', 'mazda 6', 1, 2020, 5, 2500, 'wywzzz167kk009d56'),
('WWJ004', 'honda hr-v', 1, 2019, 5, 1800, 'wywzzz167kk009d57'),
('JKL567', 'ford escape', 2, 2018, 5, 2000, 'wywzzz167kk009d58'),
('CVB789', 'nissan murano', 1, 2017, 7, 3500, 'wywzzz167kk009d59'),
('BNM123', 'toyota tundra', 1, 2021, 5, 4700, 'wywzzz167kk009d60');
select * from automotores

insert into aseguramientos values
('2012-09-30','2013-09-30', 30000000,'Vigente', 500000 ,'FLL420'),
('2012-09-27','2013-09-27', 35000000,'Vigente', 600000,'DKZ820'),
('2011-09-28','2013-09-28', 50000000,'Vigente', 800000 ,'KJQ920'),
('2012-10-15', '2013-10-15', 40000000, 'Vigente', 550000, 'XYZ123'),
('2013-05-12', '2014-05-12', 32000000, 'Vigente', 600000, 'ABC456'),
('2012-08-25', '2013-08-25', 45000000, 'Vigente', 750000, 'LMN789'),
('2011-06-20', '2013-06-20', 38000000, 'Vigente', 650000, 'QWE987'),
('2013-11-05', '2014-11-05', 60000000, 'Vigente', 900000, 'UIO654'),
('2012-07-03', '2013-07-03', 55000000, 'Vigente', 850000, 'PQR321'),
('2011-12-17', '2013-12-17', 42000000, 'Vigente', 700000, 'MNB765'),
('2012-02-14', '2013-02-14', 33000000, 'Vigente', 550000, 'ZXC890'),
('2012-06-28', '2013-06-28', 41000000, 'Vigente', 700000, 'ASD456'),
('2013-04-19', '2014-04-19', 34000000, 'Vigente', 600000, 'WER234'),
('2012-03-20', '2013-03-20', 48000000, 'Vigente', 800000, 'MJU567'),
('2012-05-11', '2013-05-11', 36000000, 'Vigente', 600000, 'JDG789'),
('2013-07-09', '2014-07-09', 56000000, 'Vigente', 950000, 'CVB890'),
('2012-09-01', '2013-09-01', 47000000, 'Vigente', 780000, 'BNM432'),
('2012-01-23', '2013-01-23', 39000000, 'Vigente', 650000, 'POI098'),
('2012-03-16', '2013-03-16', 54000000, 'Vigente', 880000, 'RTY567'),
('2012-04-25', '2013-04-25', 42000000, 'Vigente', 700000, 'XCV432'),
('2013-08-30', '2014-08-30', 65000000, 'Vigente', 950000, 'QAZ789'),
('2012-11-27', '2013-11-27', 50000000, 'Vigente', 800000, 'POI234'),
('2011-12-04', '2013-12-04', 52000000, 'Vigente', 900000, 'VBN567'),
('2012-10-30', '2013-10-30', 42000000, 'Vigente', 700000, 'ASD890'),
('2013-03-01', '2014-03-01', 47000000, 'Vigente', 780000, 'TYU123'),
('2012-02-15', '2013-02-15', 32000000, 'Vigente', 550000, 'UIO456'),
('2013-09-14', '2014-09-14', 49000000, 'Vigente', 850000, 'JKL789'),
('2011-07-23', '2013-07-23', 38000000, 'Vigente', 650000, 'CVB123'),
('2012-08-09', '2013-08-09', 43000000, 'Vigente', 720000, 'BNM456'),
('2013-02-28', '2014-02-28', 47000000, 'Vigente', 780000, 'ZXC789'),
('2012-05-21', '2013-05-21', 37000000, 'Vigente', 630000, 'ERT123'),
('2012-01-15', '2013-01-15', 52000000, 'Vigente', 900000, 'QWE456'),
('2012-06-19', '2013-06-19', 46000000, 'Vigente', 760000, 'POI789'),
('2013-07-12', '2014-07-12', 60000000, 'Vigente', 950000, 'TGU123'),
('2012-04-30', '2013-04-30', 54000000, 'Vigente', 880000, 'AGD056'),
('2012-11-22', '2013-11-22', 53000000, 'Vigente', 870000, 'WER789'),
('2013-05-08', '2014-05-08', 60000000, 'Vigente', 950000, 'JKL123'),
('2012-09-10', '2013-09-10', 44000000, 'Vigente', 730000, 'CVB456'),
('2012-04-05', '2013-04-05', 54000000, 'Vigente', 880000, 'BNM789'),
('2012-07-16', '2013-07-16', 58000000, 'Vigente', 960000, 'ERT123'),
('2013-08-11', '2014-08-11', 64000000, 'Vigente', 940000, 'QWE456'),
('2012-01-04', '2013-01-04', 42000000, 'Vigente', 700000, 'POI789'),
('2012-06-27', '2013-06-27', 48000000, 'Vigente', 800000, 'TGU123'),
('2011-12-30', '2013-12-30', 55000000, 'Vigente', 850000, 'AGD056'),
('2012-02-18', '2013-02-18', 46000000, 'Vigente', 760000, 'WER789'),
('2012-10-11', '2013-10-11', 58000000, 'Vigente', 960000, 'JKL123'),
('2013-03-26', '2014-03-26', 55000000, 'Vigente', 850000, 'CVB456'),
('2012-09-05', '2013-09-05', 49000000, 'Vigente', 850000, 'BNM789'),
('2012-08-03', '2013-08-03', 53000000, 'Vigente', 870000, 'ERT123'),
('2012-04-28', '2013-04-28', 52000000, 'Vigente', 900000, 'QWE456');
select * from aseguramientos 

insert into incidentes values
('2012-09-30', 'DKZ820', 'Bucaramanga', 0 ,0, 2),
('2012-09-27', 'FLL420', 'Girón', 1 ,0, 1),
('2011-09-28', 'FLL420', 'Bucaramanga', 1 ,0, 2),
('2013-05-15', 'XYZ123', 'Floridablanca', 0, 0, 1),
('2012-10-10', 'ABC456', 'Piedecuesta', 0, 0, 2),
('2011-11-20', 'LMN789', 'Girón', 1, 0, 1),
('2012-12-05', 'QWE987', 'Bucaramanga', 1, 0, 2),
('2012-06-18', 'UIO654', 'Floridablanca', 0, 0, 1),
('2013-04-03', 'PQR321', 'Piedecuesta', 0, 0, 2),
('2011-10-25', 'MNB765', 'Girón', 1, 0, 1),
('2012-11-30', 'ZXC890', 'Bucaramanga', 1, 0, 2),
('2012-08-14', 'ASD456', 'Floridablanca', 0, 0, 1),
('2013-07-01', 'WER234', 'Piedecuesta', 0, 0, 2),
('2012-03-10', 'MJU567', 'Girón', 1, 0, 1),
('2012-05-20', 'JDG789', 'Bucaramanga', 1, 0, 2),
('2013-06-02', 'CVB890', 'Floridablanca', 0, 0, 1),
('2012-09-22', 'BNM432', 'Piedecuesta', 0, 0, 2),
('2011-07-13', 'POI098', 'Girón', 1, 0, 1),
('2012-10-18', 'RTY567', 'Bucaramanga', 1, 0, 2),
('2012-04-08', 'XCV432', 'Floridablanca', 0, 0, 1),
('2013-03-05', 'QAZ789', 'Piedecuesta', 0, 0, 2),
('2012-08-25', 'POI234', 'Girón', 1, 0, 1),
('2011-06-15', 'VBN567', 'Bucaramanga', 1, 0, 2),
('2012-12-12', 'ASD890', 'Floridablanca', 0, 0, 1),
('2012-07-08', 'TYU123', 'Piedecuesta', 0, 0, 2),
('2013-02-04', 'UIO456', 'Girón', 1, 0, 1),
('2012-11-23', 'JKL789', 'Bucaramanga', 1, 0, 2),
('2012-05-11', 'CVB123', 'Floridablanca', 0, 0, 1),
('2013-01-03', 'BNM456', 'Piedecuesta', 0, 0, 2),
('2012-10-20', 'POI789', 'Girón', 1, 0, 1),
('2011-09-18', 'TGU123', 'Bucaramanga', 1, 0, 2),
('2012-12-05', 'AGD056', 'Floridablanca', 0, 0, 1),
('2012-06-22', 'WER789', 'Piedecuesta', 0, 0, 2),
('2013-07-10', 'JKL123', 'Girón', 1, 0, 1),
('2012-08-17', 'CVB456', 'Bucaramanga', 1, 0, 2),
('2012-09-29', 'BNM789', 'Floridablanca', 0, 0, 1),
('2011-10-15', 'ERT123', 'Piedecuesta', 0, 0, 2),
('2012-07-26', 'QWE456', 'Girón', 1, 0, 1),
('2013-03-08', 'POI789', 'Bucaramanga', 1, 0, 2),
('2012-05-27', 'TGU123', 'Floridablanca', 0, 0, 1),
('2012-01-12', 'AGD056', 'Piedecuesta', 0, 0, 2),
('2012-11-09', 'WER789', 'Girón', 1, 0, 1),
('2012-08-30', 'JKL123', 'Bucaramanga', 1, 0, 2),
('2013-06-12', 'CVB456', 'Floridablanca', 0, 0, 1),
('2012-04-04', 'BNM789', 'Piedecuesta', 0, 0, 2),
('2013-02-22', 'ERT123', 'Girón', 1, 0, 1),
('2011-09-05', 'QWE456', 'Bucaramanga', 1, 0, 2),
('2012-06-14', 'POI789', 'Floridablanca', 0, 0, 1),
('2010-02-02', 'CVB890', 'Piedecuesta', 1, 0, 2),
('2010-01-01', 'ERT123', 'San Gil', 0, 0, 1);
select * from incidentes

/*CONSULTAS

1.Mostrar los salarios de los profesores ordenados por categoría.*/
SELECT sal_prof
FROM profesor
ORDER BY cate_prof;

/*2.Mostrar los cursos cuyo valor sea mayor a $500.000.*/
SELECT *
FROM curso
WHERE valor_cur > 500000;

/*3.Contar el número de estudiantes cuya edad sea mayor a 22.*/
SELECT COUNT(*)
FROM estudiante
WHERE edad_est > 22;

/*4.Mostrar el nombre y la edad del estudiante más joven.*/
SELECT TOP 1 nom_est, edad_est
FROM estudiante
ORDER BY edad_est;

/*5.Calcular el valor promedio de los cursos cuyas horas sean mayores a 40.*/
SELECT AVG(valor_cur) as ValorPromedio
FROM curso
WHERE horas_cur > 40;

/*6.Obtener el sueldo promedio de los profesores de la categoría 1.*/
SELECT AVG(sal_prof) as SueldoPromedio
FROM profesor
WHERE cate_prof = 1;

/*7.Mostrar todos los campos de la tabla curso en orden ascendente según el valor.*/
SELECT *
FROM curso
ORDER BY valor_cur ASC;

/*8.Mostrar el nombre del profesor con menor sueldo.*/
SELECT TOP 1 nom_prof
FROM profesor
ORDER BY sal_prof ASC;

/*9.Visualizar los profesores cuyo sueldo este entre $500.000 y $700.000.*/
SELECT *
FROM profesor
WHERE sal_prof BETWEEN 500000 AND 700000;

/*10.Listar todos los pedidos realizados incluyendo el nombre del artículo*/
SELECT p.*, a.tit_art
FROM pedido p
INNER JOIN articuloXpedido ap ON p.id_ped = ap.id_ped_artped
INNER JOIN articulo a ON ap.id_art_artped = a.id_art;

/*11.Visualizar los clientes que cumplen años en marzo.*/
SELECT *
FROM cliente
WHERE mes_cum_cli = 'Marzo';

/*12.Visualizar los datos del pedido 1, incluyendo el nombre del cliente, la dirección del
mismo, el nombre y el valor de los artículos que tiene dicho pedido.*/
SELECT c.nom_cli, c.dir_cli, a.tit_art, ap.cant_art_artped, ap.val_ven_art_artped
FROM pedido p
INNER JOIN cliente c ON p.id_cli_ped = c.id_cli
INNER JOIN articuloXpedido ap ON p.id_ped = ap.id_ped_artped
INNER JOIN articulo a ON ap.id_art_artped = a.id_art
WHERE p.id_ped = 1;

/*13.Visualizar el nombre del cliente, la fecha y el valor del pedido más costoso.*/
SELECT TOP 1 c.nom_cli, p.fec_ped, p.val_ped
FROM pedido p
INNER JOIN cliente c ON p.id_cli_ped = c.id_cli
ORDER BY p.val_ped DESC;

/*14.Mostrar cuantos artículos se tienen de cada editorial.*/
SELECT edi_art, COUNT(*) as Cantidad
FROM articulo
GROUP BY edi_art;

/*15..Mostrar los pedidos con los respectivos artículos(código, nombre, valor y cantidad
pedida).*/
SELECT p.id_ped, a.tit_art, a.prec_art, ap.cant_art_artped
FROM pedido p
INNER JOIN articuloXpedido ap ON p.id_ped = ap.id_ped_artped
INNER JOIN articulo a ON ap.id_art_artped = a.id_art;

/*16.Visualizar todos los clientes organizados por apellido.*/
SELECT *
FROM cliente
ORDER BY ape_cli;

/*17.Visualizar todos los artículos organizados por autor.*/
SELECT *
FROM articulo
ORDER BY aut_art;

/*18.Visualizar los pedidos que se han realizado para el articulo con id 2, el listado debe
mostrar el nombre y dirección del cliente, el respectivo número de pedido y la cantidad
solicitada.*/
SELECT c.nom_cli, c.dir_cli, p.id_ped, ap.cant_art_artped
FROM pedido p
INNER JOIN cliente c ON p.id_cli_ped = c.id_cli
INNER JOIN articuloXpedido ap ON p.id_ped = ap.id_ped_artped
WHERE ap.id_art_artped = 2;

/*19.Visualizar los datos de las empresas fundadas entre el año 1991 y 1998.*/
SELECT *
FROM compañia
WHERE comañofun BETWEEN 1991 AND 1998;

/*20.Listar los todos datos de los automotores cuya póliza expira en octubre de 2013, este
reporte debe visualizar la placa, el modelo, la marca, número de pasajeros, cilindraje
nombre de automotor, el valor de la póliza y el valor asegurado.*/
SELECT a.autoplaca, a.automodelo, a.automarca, a.autopasajeros, a.autocilindraje, a.autotipo,
asf.asefechaexpiracion, asf.asecosto, asf.asevalorasegurado
FROM automotores a
INNER JOIN aseguramientos asf ON a.autoplaca = asf.aseplaca
WHERE MONTH(asf.asefechaexpiracion) = 10 AND YEAR(asf.asefechaexpiracion) = 2013;

/*21.Visualizar los datos de los incidentes ocurridos el 30 de septiembre de 2012, con su
respectivo número de póliza, fecha de inicio de la póliza, valor asegurado y valor de
la póliza.*/
SELECT i.incicodigo, i.incifecha, asf.asecodigo, asf.asefechainicio, asf.asevalorasegurado, asf.asecosto
FROM incidentes i
INNER JOIN aseguramientos asf ON i.inciplaca = asf.aseplaca
WHERE i.incifecha = '2012-09-30';


/*22.Visualizar los datos de los incidentes que han tenido un (1) herido, este reporte debe
visualizar la placa del automotor, con los respectivos datos de la póliza como son
fecha de inicio, valor, estado y valor asegurado.*/
SELECT i.inciplaca, asf.asefechainicio, asf.asecosto, asf.aseestado, asf.asevalorasegurado
FROM incidentes i
INNER JOIN aseguramientos asf ON i.inciplaca = asf.aseplaca
WHERE inciantheridos = 1;

/*23.Visualizar todos los datos de la póliza más costosa.*/
SELECT TOP 1 *
FROM aseguramientos
ORDER BY asecosto DESC;

/*24.Visualizar los incidentes con el mínimo número de autos involucrados, de este incidente*/
SELECT i.*, asf.aseestado, asf.asevalorasegurado
FROM incidentes i
INNER JOIN aseguramientos asf ON i.inciplaca = asf.aseplaca
WHERE incicanautosinvolucrados = (
    SELECT MIN(incicanautosinvolucrados)
    FROM incidentes
);

/*25.Visualizar el estado de la póliza y el valor asegurado.*/
SELECT asf.aseestado, asf.asevalorasegurado
FROM aseguramientos asf
WHERE asecodigo = (
    SELECT TOP 1 asecodigo
    FROM aseguramientos
    ORDER BY asecosto DESC
);

/*26.Visualizar los incidentes del vehículo con placas " FLL420", este reporte debe visualizar
la fecha, el lugar, la cantidad de heridos del incidente, la fecha de inicio la de expiración
de la póliza y el valor asegurado.*/
SELECT i.incifecha, i.incilugar, i.inciantheridos, asf.asefechainicio, asf.asefechaexpiracion, asf.asevalorasegurado
FROM incidentes i
INNER JOIN aseguramientos asf ON i.inciplaca = asf.aseplaca
WHERE i.inciplaca = 'FLL420';

/*27.Visualizar los datos de la empresa con nit 899999999-5.*/
SELECT *
FROM compañia
WHERE comnit = '899999999-5';

/*28.Visualizar los datos de la póliza cuyo valor asegurado es el más costoso, este reporte
además de visualizar todos los datos de la póliza, debe presentar todos los datos del
vehículo que tiene dicha póliza.*/
SELECT asf.*, a.*
FROM aseguramientos asf
INNER JOIN automotores a ON asf.aseplaca = a.autoplaca
WHERE asf.asevalorasegurado = (
    SELECT MAX(asevalorasegurado)
    FROM aseguramientos
);

/*29.Visualizar los datos de las pólizas de los automotores tipo 1, este reporte debe incluir
placa, marca, modelo, cilindraje del vehículo junto con la fecha de inicio, de finalización
y estado de la póliza.*/
SELECT a.autoplaca, a.automarca, a.automodelo, a.autocilindraje, asf.asefechainicio, asf.asefechaexpiracion, asf.aseestado
FROM aseguramientos asf
INNER JOIN automotores a ON asf.aseplaca = a.autoplaca
WHERE a.autotipo = 1;


/*PROCEDIMIENTOS ALMACENADOS*/

/*Crear un procedimiento almacenado para agregar un registro en la tabla Compañia:*/
CREATE PROCEDURE sp_InsertarCompañia
    @comnit VARCHAR(11),
    @comnombre VARCHAR(30),
    @comañofun INT,
    @comreplegal VARCHAR(100)
AS
BEGIN
    INSERT INTO compañia (comnit, comnombre, comañofun, comreplegal)
    VALUES (@comnit, @comnombre, @comañofun, @comreplegal);
END

EXEC sp_InsertarCompañia 'NuevaCompañia', 'NombreCompañia', 2000, 'RepresentanteLegal';


/*Crear un procedimiento almacenado para editar un registro en la tabla Compañia:*/
CREATE PROCEDURE sp_ActualizarCompañia
    @comnit VARCHAR(11),
    @comnombre VARCHAR(30),
    @comañofun INT,
    @comreplegal VARCHAR(100)
AS
BEGIN
    UPDATE compañia
    SET comnombre = @comnombre, comañofun = @comañofun, comreplegal = @comreplegal
    WHERE comnit = @comnit;
END

EXEC sp_ActualizarCompañia 'NuevaCompañia', 'NuevoNombre', 2022, 'NuevoRepresentanteLegal';


/*Crear un procedimiento almacenado para eliminar un registro en la tabla Compañia:*/
CREATE PROCEDURE sp_EliminarCompañia
    @comnit VARCHAR(11)
AS
BEGIN
    DELETE FROM compañia
    WHERE comnit = @comnit;
END

EXEC sp_EliminarCompañia 'NuevaCompañia';


/*Crear un procedimiento almacenado para agregar un registro en la tabla Cliente:*/
CREATE PROCEDURE sp_InsertarCliente
    @id_cli VARCHAR(30),
    @nom_cli VARCHAR(30),
    @ape_cli VARCHAR(30),
    @dir_cli VARCHAR(100),
    @dep_cli VARCHAR(20),
    @mes_cum_cli VARCHAR(10)
AS
BEGIN
    INSERT INTO cliente (id_cli, nom_cli, ape_cli, dir_cli, dep_cli, mes_cum_cli)
    VALUES (@id_cli, @nom_cli, @ape_cli, @dir_cli, @dep_cli, @mes_cum_cli);
END

EXEC sp_InsertarCliente 'NuevoCliente', 'NombreCliente', 'ApellidoCliente', 'DireccionCliente', 'Departamento', 'MesCumpleaños';


/*Crear un procedimiento almacenado para editar un registro en la tabla Cliente:*/
CREATE PROCEDURE sp_ActualizarCliente
    @id_cli VARCHAR(30),
    @nom_cli VARCHAR(30),
    @ape_cli VARCHAR(30),
    @dir_cli VARCHAR(100),
    @dep_cli VARCHAR(20),
    @mes_cum_cli VARCHAR(10)
AS
BEGIN
    UPDATE cliente
    SET nom_cli = @nom_cli, ape_cli = @ape_cli, dir_cli = @dir_cli, dep_cli = @dep_cli, mes_cum_cli = @mes_cum_cli
    WHERE id_cli = @id_cli;
END

EXEC sp_ActualizarCliente 'NuevoCliente', 'NuevoNombre', 'NuevoApellido', 'NuevaDireccion', 'NuevoDepartamento', 'NuevoMesCumpleaños';


/*Crear un procedimiento almacenado para eliminar un registro en la tabla Cliente:*/
CREATE PROCEDURE sp_EliminarCliente
    @id_cli VARCHAR(30)
AS
BEGIN
    DELETE FROM cliente
    WHERE id_cli = @id_cli;
END

EXEC sp_EliminarCliente 'NuevoCliente';


/*Crear un procedimiento almacenado para agregar un registro en la tabla curso*/
CREATE PROCEDURE sp_InsertarCurso
    @cod_cur INT,
    @nom_cur VARCHAR(100),
    @horas_cur INT,
    @valor_cur INT
AS
BEGIN
    INSERT INTO curso (cod_cur, nom_cur, horas_cur, valor_cur)
    VALUES (@cod_cur, @nom_cur, @horas_cur, @valor_cur);
END

EXEC sp_InsertarCurso 123456, 'NuevoCurso', 30, 100000;


/*Crear un procedimiento almacenado para editar un registro en la tabla curso:*/
CREATE PROCEDURE sp_ActualizarCurso
    @cod_cur INT,
    @nom_cur VARCHAR(100),
    @horas_cur INT,
    @valor_cur INT
AS
BEGIN
    UPDATE curso
    SET nom_cur = @nom_cur, horas_cur = @horas_cur, valor_cur = @valor_cur
    WHERE cod_cur = @cod_cur;
END

EXEC sp_ActualizarCurso 123456, 'NuevoNombreCurso', 40, 120000;


/*Crear un procedimiento almacenado para eliminar un registro en la tabla curso:*/
CREATE PROCEDURE sp_EliminarCurso
    @cod_cur INT
AS
BEGIN
    DELETE FROM curso
    WHERE cod_cur = @cod_cur;
END

EXEC sp_EliminarCurso 123456;



/*Visualizar los clientes que cumplen años según un mes ingresado por parámetros:*/
CREATE PROCEDURE SP_ClientesCumpleMes
    @mes_cum_cli VARCHAR(10)
AS
BEGIN
    SELECT nom_cli, mes_cum_cli
    FROM cliente
    WHERE mes_cum_cli = @mes_cum_cli;
END

EXEC SP_ClientesCumpleMes 'enero';


/*Visualizar el nombre del cliente, la fecha y el valor según id del cliente ingresado:*/
CREATE PROCEDURE SP_DatosPedidoCliente
    @id_cli_pedido VARCHAR(30)
AS
BEGIN
    SELECT c.nom_cli, p.fec_ped, p.val_ped
    FROM pedido p
    JOIN cliente c ON p.id_cli_ped = c.id_cli
    WHERE c.id_cli = @id_cli_pedido;
END

EXEC SP_DatosPedidoCliente '123456789';


/*Visualizar los datos de las empresas fundadas según año ingresado:*/
CREATE PROCEDURE SP_EmpresasPorAnio
    @comañofun INT
AS
BEGIN
    SELECT comnit, comnombre, comañofun, comreplegal
    FROM compañia
    WHERE comañofun = @comañofun;
END

EXEC SP_EmpresasPorAnio '1994';


/*Visualizar los datos de la empresa según nit ingresado:*/
CREATE PROCEDURE SP_DatosEmpresaPorNit
    @comnit VARCHAR(11)
AS
BEGIN
    SELECT comnit, comnombre, comañofun, comreplegal
    FROM compañia
    WHERE comnit = @comnit;
END

EXEC SP_DatosEmpresaPorNit '123456789-0'


/*Visualizar los pedidos que se han realizado según id de articulo ingresado,
el listado debe mostrar el nombre y dirección del cliente,
el respectivo número de pedido y la cantidad solicitada:*/
CREATE PROCEDURE SP_PedidosPorArticulo
    @id_articulo INT
AS
BEGIN
    SELECT c.nom_cli, c.dir_cli, p.id_ped, axp.cant_art_artped
    FROM cliente c
    JOIN pedido p ON c.id_cli = p.id_cli_ped
    JOIN articuloXpedido axp ON p.id_ped = axp.id_ped_artped
    WHERE axp.id_art_artped = @id_articulo;
END

EXEC SP_PedidosPorArticulo 2;