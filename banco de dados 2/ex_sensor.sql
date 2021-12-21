create database bd_sensor;

use bd_sensor;

create table sensor (
idsensor int primary key auto_increment, 
nomeSensor varchar (50),
localSensor varchar(50),
temperatura double not null,
dtTemp datetime default current_timestamp,
statusSensor varchar (40),
constraint check_genero check (statusSensor = 'ativo' or statusSensor = 'inativo')
);

insert into sensor (nomeSensor, localSensor, temperatura, statusSensor) values 
('SensorA','Estufa Alfa',21.8,'ativo');

insert into sensor (nomeSensor, localSensor, temperatura, statusSensor) values 
('SensorB','Estufa beta',25.7,'inativo');

insert into sensor (nomeSensor, localSensor, temperatura, statusSensor) values 
('SensorC','Estufa charlie',27.1,'ativo');

select * from sensor;

SELECT COUNT(idsensor) FROM sensor;

-- mostra a 'temperatura' minima
select min(temperatura) from sensor;

-- mostra a 'temperatura' maxima
select max (temperatura) from sensor;

-- round com avg arredonda a media
select round(avg(temperatura),2) from sensor group by temperatura;

-- truncate
select truncate(avg(temperatura),2) from sensor;

-- media das temperaturas
select sum(temperatura) from sensor;

