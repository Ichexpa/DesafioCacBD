use desafiocac;
select apellidos from empleados;
select DISTINCT  apellidos from empleados;
select apellidos from empleados where apellidos='Lopez';
select apellidos from empleados where apellidos='Lopez' or apellidos='perez';
select * from empleados e inner join departamento d on e.id_departamento=d.numero where id_departamento=14;
select * from empleados e inner join departamento d on e.id_departamento=d.numero where id_departamento=37 or id_departamento=77;
select * from empleados where apellidos like 'P%';
select sum(presupuesto) from departamento;
select * from empleados e inner join departamento d on e.id_departamento=d.numero;
select * from empleados e inner join departamento d on e.id_departamento=d.numero where d.presupuesto>60000;
insert into desafiocac.departamento(numero,nombre,presupuesto) value(11,'Calidad',40000);
insert into empleados(dni,nombre,apellidos,id_departamento) values('89267109','Esther','Vazquez',11);
update empleados set id_departamento=14 where id_departamento=77;
delete from empleados where id_departamento=14;
delete from empleados where id_departamento in(select id_departamento from empleados e inner join departamento d on e.id_departamento=d.numero where d.presupuesto<90000)
