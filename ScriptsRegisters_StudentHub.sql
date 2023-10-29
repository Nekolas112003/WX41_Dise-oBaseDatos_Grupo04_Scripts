insert into estudiantes(codigo,nombres,apellido_materno,dni,codigo_sede)
	values(1,'Juan Carlos','Merlin','23849532',1),
		(2,'Jesus Adrian','Martin','23849533',1),
		(3,'Carlos','Lopez','23849531',2),
		(4,'Carmen Isabel','Mejia','23849534',2),
		(5,'Samantha Rosa','Valencia','23849535',3),
		(6,'Omar','Benitez','23849536','3'),
		(7,'Madjori','Fernandez','23849537',4),
		(8,'Agnes','Montes','23849538',4),
		(9,'Marisol','Ordonez','23849539',1),
		(10,'Jose Maria','Palacios','23849540',2)
go

insert into sedes(codigo,nombre,direccion,telefono)
	values(1,'Monterrico','Cuadra 23 de la avenida Primavera','9823254'),
		(2,'San Isidro','Av. Gral. Salaverry 2255','9823455'),
		(3,'San Miguel','Av. la Marina 2810','9843457'),
		(4,'Villa','Av Alameda San Marcos 11','9825475')
go

INSERT INTO calificaciones (codigo, codigo_aspecto, codigo_docente, codigo_estudiante) 
VALUES
    (1, 1, 1, 1),
    (2, 2, 2, 2),
    (3, 3, 3, 3),
    (4, 4, 4, 4),
    (5, 5, 5, 5),
    (6, 6, 6, 6),
    (7, 7, 7, 7),
    (8, 8, 8, 8),
    (9, 9, 9, 9),
    (10, 10, 10, 10);
go

insert into criterios (codigo,titulo,valoracion)
	values(1,'Participación en clase',4),
		(2,'Exámenes parciales', 3),
		(3,'Proyectos individuales', 1),
		(4,'Proyectos en grupo', 2),
		(5,'Tareas y deberes', 2),
		(6,'Asistencia y puntualidad', 3),
		(7,'Investigación y análisis', 1),
		(8,'Presentaciones orales', 4),
		(9,'Discusiones en grupo', 4),
		(10,'Pruebas escritas', 2)
go

insert into docentes(codigo,nombres,apellido_paterno,apellido_materno,dni,telefono,correo_electronico)
	values(1,'Carlos','Huaman','Quispe','08823457','978323178','email1@gmail.com'),
		(2,'Juan','Lopez','Gutierres','08823456','978323177','email2@gmail.com'),
		(3,'Mireya','Gutierres','Sanchez','08823455','978323176','email3@gmail.com'),
		(4,'Lorena','Montes','Torrez','08823454','978323175','email4@gmail.com'),
		(5,'Amanda','Belasquez','Villanueva','08823453','978323174','email5@gmail.com'),
		(6,'Mathias','Palacios','Palacios','08823452','978323173','email6@gmail.com'),
		(7,'Kathy','Prado','Mendez','08823451','978323172','email7@gmail.com'),
		(8,'Pedro','Guimaraes','Guimaraes','08823450','978323171','email8@gmail.com'),
		(9,'Oscar','Fernandez','Carrion','08823458','978323170','email9@gmail.com'),
		(10,'Gabriel','Velasquez','Cruces','08823459','978323179','email10@gmail.com')
go

insert into carreras(codigo,nombre,descripcion,ciclos)
	values(1,'Ingenieria de Software','En esta carrera veras todo lo del Software',10),
		(2,'Ingenieria de Sistemas de la Información','En esta carrear veras todo lo de Sistemas',10),
		(3,'Medicina','En esta carrera veras todo lo de Medicina Humana',14),
		(4,'Medicina Veterinaria','En esta carrera veras todo lo de Medcina Veterinaria',10),
		(5,'Arquitectura','En esta carrera veras todo lo de Arquitectura',10),
		(6,'Gastronomia y Gestion Culinaria','En esta carrera veras todo lo de Gastronomia y Gestion Culinaria',10),
		(7,'Musica','En esta carrera veras todo lo de Musica',10),
		(8,'Comunicacion y Marketing','En esta carrera veras todo lo de Comunicacion y Marketing',10),
		(9,'Economia y Negocios Internacionales','En esta carrera veras todo lo de Economia y Negocios Internacionales',10),
		(10,'Administracion y Marketing','En esta carrera veras todo lo de Administracion y Marketing',10)
go


INSERT INTO trabajos (codigo_docente, codigo_empresa, fecha_inicio, fecha_fin, cargo) 
VALUES
    (1, 1, '2010-03-04', '2014-03-04', 'Profesor'),
    (2, 2, '2010-03-04', '2014-03-04', 'Profesor'),
    (3, 3, '2010-03-04', '2014-03-04', 'Coordinador'),
    (4, 4, '2010-03-04', '2014-03-04', 'Profesor'),
    (5, 5, '2010-03-04', '2014-03-04', 'Profesor'),
    (6, 6, '2010-03-04', '2014-03-04', 'Coordinador'),
    (7, 7, '2010-03-04', '2014-03-04', 'Profesor'),
    (8, 8, '2010-03-04', '2014-03-04', 'Coordinador'),
    (9, 9, '2010-03-04', '2014-03-04', 'Secretario'),
    (10, 10, '2010-03-04', '2014-03-04', 'Profesor');
GO

INSERT INTO empresas (codigo, ruc, razon_social, direccion, telefono, correo_electronico) 
VALUES
    (1, '20123456789', 'Tech Solutions Inc.', 'Calle Principal 123', '123456789', 'info@techsolutions.com'),
    (2, '20345678901', 'Consultoría Estratégica S.A.', 'Avenida Central 456', '245678901', 'contacto@consultoriaestrategica.com'),
    (3, '20456789012', 'Industrias del Futuro S.A.', 'Carrera 7 89', '345678902', 'ventas@industriasdelfuturo.com'),
    (4, '20567890123', 'Transportes Veloz', 'Calle 10 234', '456789012', 'info@transportesveloz.com'),
    (5, '20678901234', 'Servicios Financieros Globales', 'Avenida Libertador 345', '567901234', 'info@serviciosfinancieros.com'),
    (6, '20789012345', 'Logística Inteligente S.A.', 'Carrera 5 678', '678901235', 'info@logisticainteligente.com'),
    (7, '20890123456', 'Industria Metálica S.A.', 'Calle 8 901', '789012345', 'contacto@industriametalica.com'),
    (8, '20901234567', 'Servicios Médicos Integrados', 'Avenida 6 789', '801234567', 'contacto@serviciosmedicos.com'),
    (9, '21012345678', 'Agencia de Publicidad Creativa', 'Carrera 3 012', '012345678', 'info@agenciapublicidad.com'),
    (10, '21123456789', 'Alimentos Sabrosos S.A.', 'Calle 4 567', '912345689', 'ventas@alimentossabrosos.com');
go

INSERT INTO instituciones_educativas (codigo, ruc, razon_social, direccion, telefono, correo_electronico) 
VALUES
    (1, '12345678901', 'Instituto Tecnológico Superior', 'Avenida Tecnológica 123', '123456790', 'info@institutotecnologico.com'),
    (2, '23456789012', 'Universidad Nacional', 'Calle Universitaria 456', '234568901', 'info@universidadnacional.edu'),
    (3, '34567890123', 'Instituto de Ciencias Aplicadas', 'Carrera de la Ciencia 789', '345678012', 'info@cienciasaplicadas.edu'),
    (4, '45678901234', 'Universidad Politécnica', 'Avenida Politécnica 234', '456790123', 'info@universidadpolitecnica.edu'),
    (5, '56789012345', 'Instituto de Tecnología Avanzada', 'Calle Avanzada 345', '567890234', 'info@institutotecnologia.com'),
    (6, '67890123456', 'Universidad de Investigación', 'Avenida de la Investigación 678', '678912345', 'info@universidaddeinvestigacion.edu'),
    (7, '78901234567', 'Instituto de Estudios Superiores', 'Carrera de Estudios Superiores 901', '789123456', 'info@institutoestudiossuperiores.com'),
    (8, '89012345678', 'Universidad de Ciencias Aplicadas', 'Calle de Ciencias Aplicadas 789', '891234567', 'info@universidadcienciasaplicadas.edu'),
    (9, '90123456789', 'Instituto de Tecnología y Ciencias', 'Avenida Tecnológica 012', '901345678', 'info@institutotecnologiayciencias.com'),
    (10, '01928374650', 'Universidad de Investigación Aplicada', 'Carrera de Investigación Aplicada 567', '019237465', 'info@universidadinvestigacionaplicada.edu');
go

INSERT INTO estudios (codigo_docente, codigo_institucion, fecha_inicio, fecha_fin) 
VALUES
    (1, 1, '2010-03-04', '2014-03-04'),
    (2, 2, '2010-03-04', '2014-03-04'),
    (3, 3, '2010-03-04', '2014-03-04'),
    (4, 4, '2010-03-04', '2014-03-04'),
    (5, 5, '2010-03-04', '2014-03-04'),
    (6, 6, '2010-03-04', '2014-03-04'),
    (7, 7, '2010-03-04', '2014-03-04'),
    (8, 8, '2010-03-04', '2014-03-04'),
    (9, 9, '2010-03-04', '2014-03-04'),
    (10, 10, '2010-03-04', '2014-03-04');
go

insert into certificaciones(codigo_institucion,codigo,titulo,descripcion)
	values(1,1,'Ingeniero','Certificación que acredita el título de Ingeniero'),
		(2,2,'Profesor','Certificación que acredita el título de Profesor'),
		(3,3,'Ingeniero','Certificación que acredita el título de Ingeniero'),
		(4,4,'Ingeniero','Certificación que acredita el título de Ingeniero'),
		(5,5,'Profesor','Certificación que acredita el título de Profesor'),
		(6,6,'Arquitecto','Certificación que acredita el título de Arquitecto'),
		(7,7,'Profesor','Certificación que acredita el título de Profesor'),
		(8,8,'Profesor','Certificación que acredita el título de Profesor'),
		(9,9,'Ingeniero','Certificación que acredita el título de Ingeniero'),
		(10,10,'Arquitecto','Certificación que acredita el título de Arquitecto')
go

insert into ciclos(codigo,year,numero,fecha_inicio,fecha_fin)
	values(1,1,2015,0,2015-01-04,2015-03-04),
		(2,2,2015,1,2015-03-04,2015-07-04),
		(3,3,2015,2,2015-07-04,2015-12-04),
		(4,4,2016,0,2016-01-04,2016-03-04),
		(5,5,2016,1,2016-03-04,2016-07-04),
		(6,6,2016,2,2016-07-04,2016-12-04),
		(7,7,2017,0,2017-01-04,2017-03-04),
		(8,8,2017,1,2017-03-04,2017-07-04),
		(9,9,2017,2,2017-07-04,2017-12-04),
		(10,10,2018,0,2018-01-04,2018-03-04)
go

insert into cursos(codigo,nombre,descripcion,creditos)
	values(1,'Diseño de Base de Datos','En este curso veras todo lo del Diseño de Base de Datos',5),
		(2,'Diseño y Patrones de Software','En este curso veras todo lo del Diseño y Patrones de Software',5),
		(3,'Matemática Básica','En este curso veras todo lo de la Matemática Básica',4),
		(4,'Cálculo 1','En este curso veras todo lo del Cálculo 1',4),
		(5,'Física 1','En este curso veras todo lo de la Física 1',3),
		(6,'Cálculo 2','En este curso veras todo lo del Cálculo 2',4),
		(7,'Física 2','En este curso veras todo lo del Física 2',3),
		(8,'Organización y Dirección de Empresas','En este curso veras todo lo de la Organización y Dirección de Empresas',3),
		(9,'Especificación y Análisis de Requisitos','En este curso veras todo lo de la Especificación y Análisis de Requisitos',4),
		(10,'IHC y Tecnologías Móviles','En este curso veras todo lo del IHC y Tecnologías Móviles',4)
go


insert into cursos_carreras(codigo_curso,codigo_carrera,numero_ciclo)
	values(1,1,0),
		(2,2,0),
		(3,3,1),
		(4,4,2),
		(5,5,2),
		(6,6,0),
		(7,7,1),
		(8,8,1),
		(9,9,0),
		(10,10,2)
go

insert into cursos_requisitos(codigo_curso,codigo_curso_requisito)
	values(1,1),
		(2,2),
		(3,3),
		(4,4),
		(5,5),
		(6,6),
		(7,7),
		(8,8),
		(9,9),
		(10,10)
go

insert into estudiantes_secciones(codigo_seccion,codigo_alumno,actual,nota_final,aprobado)
	values
		(1, 1, 1, 15, 1),
		(2, 2, 1, 15, 1),
		(3, 3, 0, 17, 1),
		(4, 4, 1, 11, 0),
		(5, 5, 0, 14, 1),
		(6, 6, 0, 10, 0),
		(7, 7, 0, 20, 1),
		(8, 8, 0, 13, 1),
		(9, 9, 0, 18, 1),
		(10, 10, 1, 12, 0);
go

insert into modalidades(codigo,tipo)
	values(1,'Presencial'),
		(2,'Virtual'),
		(3,'SemiPresencial'),
		(4, 'Remota'),
		(5, 'Mixta'),
		(6, 'En línea'),
		(7, 'A distancia'),
		(8, 'Intensiva'),
		(9, 'Sincrónica'),
		(10, 'Asincrónica');
go

insert into resenas (codigo, numero_estrellas, descripcion, codigo_docente, codigo_estudiante) 
VALUES
    (1, '5', 'Muy bueno', 1, 1),
    (2, '3', 'Decente', 2, 2),
    (3, '4', 'Bueno', 3, 3),
    (4, '4', 'Excelente', 4, 4),
    (5, '5', 'Muy bueno', 5, 5),
    (6, '1', 'No recomiendo', 6, 6),
    (7, '2', 'Malo', 7, 7),
    (8, '3', 'Mediocre', 8, 8),
    (9, '2', 'Malo', 9, 9),
    (10, '4', 'Muy bueno', 10, 10);
go

insert into secciones(codigo,nombre,codigo_docente,codigo_curso,codigo_ciclo,codigo_sede,codigo_modalidad)
	values(1,'WX41',1,1,1,1,1),
		(2,'SX31',2,2,2,4,3),
		(3,'WX42',3,3,3,1,1),
		(4,'SX33',4,4,4,4,3),
		(5,'SX21',5,5,5,2,2),
		(6,'WX34',6,6,6,2,1),
		(7,'SX22',7,7,7,2,1),
		(8,'WX42',8,8,8,3,1),
		(9,'SX40',9,9,9,2,2),
		(10,'WX32',10,10,10,4,1)
go