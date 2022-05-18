/*Añadimos ahora las instancias a las tablas d enuestra base de datos */

USE master_database;

INSERT IGNORE INTO EMPRESA (Nombre, Correo, Fundado, País, Página_Web)
VALUES  ('Insquii', 'Insquiserver@gmail.com', 2918, 'Alemania', 'www.insquiitime.com'),
		('NeoAttack', 'nanouveau@gmail.com', 2019, 'España', 'www.neoat.es'),
        ('AtréveT', 'atrevido@gmail.com', 2009, 'México', 'www.atrevet.com'), 
        ('Millensium', 'millensium@gmail.com', 2010, 'Italia', 'www.millensium.it'),
        ('MSecuoyas', 'secuoya@gmail.com', 2000, 'USA', 'www.secuoyanow.com');
        
INSERT IGNORE INTO EMPLEADO (DNI, Tlfn, Correo, Calle, Número, Cod_Postal)
VALUES  ('45118836N', '687108511', 'Fernandoxd@gmail.com', 'Raimundo Fernández Villaverde', 33, 52116),
		('02647181J', '650472590', 'margableu@hotmail.com', 'Teniente Ruíz', 36, 28003),
        ('56881266P', '696239261', 'cólinsexton@gmail.com', 'Real', 98, 51004), 
        ('59872231U', '680806430', 'regisspp@gmail.com', 'San Antonio', 10, 51003),
        ('11112222A', '671456623', 'agmverdún@gmail.com', 'Días Porlier', 21, 97443),
        ('45128836N', '689108511', 'pablosierra@gmail.com', 'Raimundo Fernández Villaverde', 33, 63441),
		('01647181J', '650472590', 'tulatin7@hotmail.com', 'Oriol', 50, 28001),
        ('56781266S', '696277261', 'flortega@gmail.com', 'Serrano', 97, 51324), 
        ('19278231U', '680426430', 'regissqq@gmail.com', 'Albuquerque', 53, 74003),
        ('11112223B', '674356623', 'villegasm@gmail.com', 'Atlántico', 21, 31493);
        
INSERT IGNORE INTO TIENDA (Nombre, Gestor, Página_Web)
VALUES  ('App Store', 'Apple', 'www.apple.com'),
		('Google Play Store', 'Google Android', 'www.googlea.com'),
        ('App World', 'Blackberry', 'www.blackberry.com'),
        ('Marketplace', 'Windows Phone', 'www.wp.com'),
        ('Ovitienda', 'Nokia', 'www.nokia.com'),
        ('App Catalog', 'HP', 'www.hp.com'),
        ('AppStore', 'Amazon', 'www.amazon.com');
        
INSERT IGNORE INTO APLICACIONES (Código, Nombre, Fecha_inicio, Fecha_fin, Precio, Memoria, Nombre_empresa, Director) #Todos los directores deberían aparecer en la tabla HACE
VALUES  ('Qrst65999', 'Eat&Drink', '2016-02-13', '2017-10-23', 5, 300, 'MSecuoyas', '59872231U'),
		('W5nkk32', 'Trouveamour', '2017-04-21', '2019-04-23', 5, 600, 'MSecuoyas', '59872231U'),
        ('Tp2256q', 'FastClash', '2015-06-06', '2017-08-20', 0, 1000, 'MSecuoyas', '59872231U'),
        ('Ltnd726f', 'Banca Móvil', '2017-05-13', '2018-05-13', 0, 800, 'Insquii', '45128836N'),
        ('Qspt64244', 'TradeNow', '2018-05-14', '2019-05-14', 10, 650, 'Insquii', '45128836N'),
        ('Abct65939', 'MyFitness', '2016-02-13', '2017-10-23', 5, 800, 'AtréveT', '11112223B'),
        ('Eftt65970', 'Findmyburger', '2016-10-10', '2017-10-25', 5, 300, 'Millensium', '45118836N');
        
INSERT INTO CATEGORÍA(Nombre_app, Categoría)
VALUES  ('Eat&Drink', 'Comida'),
		('Eat&Drink', 'Ocio'),
		('Trouveamour', "Citas"),
        ('FastClash', 'Juegos'),
        ('Banca Móvil', 'Finanzas'),
        ('TradeNow', 'Finanzas'),
        ('MyFitness', 'Estilo de Vida'),
        ('MyFitness', 'Ocio'),
        ('Findmyburger', 'Comida');
        
        


INSERT IGNORE INTO USUARIOS (Nombre, Dirección, País, Num_cuenta) /*El tlfn asociado a los usuarios será NULL por defecto cuando los insertemos, sólo aparecerá a través de los triggers cuando hagan descargas*/
VALUES  ('Alberto Ruíz Buenaire', 'Calle teniente Ruíz, num33, Caracas', 'Venezuela', '7542642373'),
		('Matías Sánchez Pizones', 'Calle Orio Gomera, num10, Buenos Aires', 'Argentina', '6324543432'),
        ('Sofia Puig Merlín', 'Calle Rafael Nadal, num1, Barcelona', 'España', '5482619573'),
        ('Álvaro García Verdún', 'Urbanización de San Anotnio, Bloque B, 1ºB, Ceuta', 'Argentina', '6546534524'),
        ('María Martín Miranda', 'Calle Palomar Antiguo, num 84, Mexico DF', 'Mexico', '7542532543'),
        ('Helena Fuentes Alarcón', 'Calle  Playa de la Concha, num2, Madrid', 'España', '963532642373'),
        ('Ignacio Millán Queijo', 'Calle Del Nido, num10, La Paz', 'Bolivia', '54342642373'),
        ('Carlos Tizón Martínez', 'Calle del viento, num22, Santiago', 'Chile', '54356642373'),
        ('Ignacio Jiménez Morales', 'Calle del Hierro, num31, Zaragoza', 'España', '1237543345'),
        ('Mar Muñoz Velasco', 'Calle teniente Jacinto, num33, Madrid', 'España', '7354623454'),
        ('Carmen Fernández Perez', 'Calle teniente Jacinto, num34, Madrid', 'España', '54326565433'),
        ('Alberto Villas Pons', 'Calle General Díaz Porlier, num70, Madrid', 'España', '987687608645');
        
INSERT INTO DESCARGA (Nombre_App, Cuenta_usuario, Comentario, Num_móvil, Nota, Fecha)             
VALUES  ('Trouveamour', '7542642373', "No he encontrado el amor ni nada que se le parezca", '687108511', 2, '2020-01-01'),
		('FastClash', '7542642373', 'Muy divertido', '687108511', 8, '2020-01-01'),
        ('Eat&Drink', '6324543432', 'Ahora siempre sé dónde comer', '696239261', 8, '2020-01-02'), 
        ('Banca Móvil', '5482619573', 'Cumple su misión, pero no es muy intuitiva', '680806430', 6, '2020-01-03'),
        ('TradeNow', '6546534524', 'La mejor decisión que he tomado este mes!', '650472590', 9, '2020-01-04'),
        ('MyFitness', '963532642373', 'Podría haber más variedad', '650443287', 4, '2020-01-05'),
		('Findmyburger', '963532642373', 'Excelente', '650443287', 9, '2020-01-06'),
        ('Trouveamour', '1237543345', 'Una pérdida de tiempo', '611926492', 1, '2020-01-07'), 
        ('Trouveamour', '54326565433', 'Encontré a mi pareja gracias a vosotros!', '673994411', 7, '2020-01-08'),
        ('MyFitness', '54342642373', 'Ya puedo subir a mi piso sin usar el ascensor', '699887766', 7, '2020-01-09');
        
INSERT INTO HACE (Nombre_App, DNI_empleado)
VALUES  ('Trouveamour', '45118836N'),
		('Trouveamour', '56881266P'),
        ('Trouveamour', '02647181J'),
        ('Trouveamour', '59872231U'),
        ('TradeNow', '11112223B'),
        ('TradeNow', '45128836N'),
        ('MyFitness', '19278231U'),
        ('MyFitness', '11112223B'),
        ('Eat&Drink', '19278231U'),
        ('Eat&Drink', '11112222A'),
        ('Eat&Drink', '59872231U'),
        ('Eat&Drink', '02647181J'),
        ('Findmyburger', '45128836N'),
        ('Banca Móvil', '19278231U'),
        ('Banca Móvil', '45128836N'),
        ('Banca Móvil', '11112222A'),
        ('Banca Móvil', '02647181J'),
        ('FastClash', '59872231U'),
        ('FastClash', '02647181J');
        
INSERT INTO CONTRATO_EXP (Código_contrato, DNI_empleado, Nombre_empresa, Fecha_inicio, Fecha_fin) #Si los empleados han hecho aplicaciones, entonces deberían aparecer en los contratos con las empresas que han hecho dichas aplicaciones
VALUES  ('333324C', '45118836N', 'Insquii', '2004-12-12', '2010-12-12'),
		('543253H', '45118836N', 'Insquii', '2012-10-10', '2020-03-03'),
        ('532451P', '02647181J', 'NeoAttack', '2008-05-03', '2020-06-02'), 
        ('653242Q', '56881266P', 'AtréveT', '2009-09-09', '2019-04-18'),
        ('549425T', '11112223B', 'Insquii', '2010-05-03', '2019-04-02'),
        ('653243A', '19278231U', 'Insquii', '2010-05-03', '2010-05-03'),
		('000003Q', '59872231U', 'AtréveT', '2015-04-04', '2016-04-04'),
        ('125822Z', '02647181J', 'NeoAttack', '2020-06-03', '2021-06-03'), 
        ('752843D', '45128836N', 'MSecuoyas', '2018-06-03', '2019-06-03'),
        ('624325K', '11112222A', 'MSecuoyas', '2008-05-03', '2020-06-02');
        
INSERT INTO CONTRATO_ACT (Código_contrato, DNI_empleado, Nombre_empresa, Fecha_inicio)
VALUES  ('333324D', '45118836N', 'Insquii', '2020-03-04'),
		('543253T', '11112222A', 'Insquii', '2020-07-02'),
        ('532451C', '02647181J', 'NeoAttack', '2008-05-03'), 
        ('653242Z', '56881266P', 'AtréveT', '2019-04-19'),
        ('549425M', '11112223B', 'Millensium', '2019-04-02'),
        ('653243B', '19278231U', 'Millensium', '2010-05-05'),
		('000003S', '59872231U', 'NeoAttack', '2017-01-10'),
        ('125822W', '02647181J', 'Insquii', '2021-06-04'), 
        ('752843Y', '45128836N', 'MSecuoyas', '2019-06-04'),
        ('624325P', '56781266S', 'MSecuoyas', '2020-06-02');
        
INSERT INTO SUBIDAS (Nombre_App, Nombre_tienda)
VALUES  ('Trouveamour', 'App Store'),
        ('TradeNow', 'Google Play Store'),
        ('MyFitness', 'App World'),
        ('Eat&Drink', 'Marketplace'),
        ('Findmyburger', 'App Store'),
        ('Banca Móvil', 'App Catalog'),
        ('TradeNow', 'Marketplace'),
        ('Banca Móvil', 'Marketplace');
        
/*Comprobamos que funcionan las FOREIG KEYS
Para ello nos fijamos el el DNI del director de una de las aplicaciones
Después modificamos el DNI en la tabla EMPLEADOS y comprobamos que el cambio ha tenido también lugar en la tabla APLICACIONES */

SELECT NOMBRE, DIRECTOR FROM APLICACIONES WHERE NOMBRE = 'MyFitness';
UPDATE EMPLEADO SET DNI = '11112223C' WHERE DNI = '11112223B';
SELECT DNI FROM EMPLEADO WHERE TLFN = '674356623'; /*Comprobamos que la modificación ha tenido lugar en la tabla EMPLEADOS */ 
SELECT NOMBRE, DIRECTOR FROM APLICACIONES WHERE NOMBRE = 'MyFitness'; /*Efectivamente la actualización ha tenido lugar*/

#Comprobamos que está funcionando correctamente los TRIGGERS:
		
SELECT * FROM DESCARGA WHERE Nombre_App = 'FastClash'; #Seleccionamos las descargas de la aplicación "FastClash". Un único usuario la ha descargado.

SELECT Tlfn FROM USUARIOS WHERE Num_cuenta = '7542642373'; #Nos fijamos en que efectivamente aparece su número de teléfono como usuario, luego el trigger "INSERTAR_TELÉFONO_AI" funciona correctamente

DELETE FROM DESCARGA WHERE (Cuenta_usuario) = '7542642373'; #Eliminamos al usuario de la tabla de descargas

SELECT Tlfn FROM USUARIOS WHERE Num_cuenta = '7542642373'; #El número de tlfn ha sido eliminado (NULL), luego está también funcionando el trigger "ELIMINA_TELÉFONO_AD"

        
        
#Empezamos con las consultas:

#1- Seleccionamos el nombre, precio y espacio que ocupa en la memoria de las empresas que no sean gratuitas (precio>0) y las ordenamos por orden descendente de la memoria que ocupan.
SELECT Nombre, Precio, Memoria FROM APLICACIONES WHERE Precio>0 ORDER BY Memoria DESC;

#2- Sumamos el precio de las aplicaciones que ocupan la misma memoria.
SELECT Memoria, SUM(PRECIO) AS SUMA_PRECIO FROM APLICACIONES GROUP BY Memoria ORDER BY SUMA_PRECIO;

#3- Seleccionamos el nombre de todos los clientes que viven en Madrid.
SELECT Nombre FROM USUARIOS WHERE Dirección LIKE '%Madrid%';

#4- mostramos cuántos empleados están trabajando en cada aplicación.
SELECT Nombre_App, COUNT(DNI_Empleado) AS Nº_Personas_trabajando from HACE GROUP BY Nombre_App;

#5- Mostramos la peor nota de cada aplicación que tenga una peor nota menor que 8.
SELECT Nombre_App, MIN(Nota) AS Peor_Nota from DESCARGA GROUP BY Nombre_App HAVING Peor_Nota<8;

#6- Mostramos los clientes que tengan un contrato vigente y que no hayan participado en el desarrollo de una aplicación:
SELECT DISTINCT DNI_empleado FROM CONTRATO_ACT WHERE DNI_empleado NOT IN (SELECT DNI_empleado from HACE);

#7- Mostramos el número de aplicaciones en las que ha participado cada director:
SELECT DNI_empleado, COUNT(DNI_empleado) FROM HACE GROUP BY DNI_empleado HAVING DNI_empleado IN (SELECT Director FROM APLICACIONES);


#8- Obtener el DNI de los empleados que hayan participado en  aplicaciones y que no sean director:
SELECT DNI_empleado, COUNT(DNI_empleado) as Total
FROM HACE LEFT JOIN APLICACIONES ON HACE.Nombre_app = APLICACIONES.Nombre
GROUP BY DNI_empleado HAVING
	DNI_empleado NOT IN (SELECT Director FROM APLICACIONES);
    
#9- Fecha en la que se realizan más descargas:
SELECT D.FECHA, COUNT(D.FECHA) AS NUM_DESCARGAS
FROM DESCARGA AS D
GROUP BY D.FECHA ASC LIMIT 1;

#10- El país de los usuarios que más aplicaciones se han descargado:
SELECT U.País, COUNT(U.País) FROM USUARIOS AS U INNER JOIN DESCARGA ON U.Num_Cuenta = DESCARGA.Cuenta_usuario GROUP BY U.País DESC LIMIT 1;

#11- Puntuación media de cada una de las app's:
SELECT Nombre_app, AVG(Nota) AS Nota_media from DESCARGA GROUP BY Nombre_app ORDER BY Nota_media DESC;

#12- Obtener los empleados que hayan trabajado en más aplicaciones que un director:
SELECT DNI_empleado, COUNT(DNI_empleado) as Total
FROM HACE LEFT JOIN APLICACIONES ON HACE.Nombre_app = APLICACIONES.Nombre
GROUP BY DNI_empleado HAVING Total > all
										(SELECT COUNT(DNI_empleado)	
                                         FROM HACE LEFT JOIN APLICACIONES ON HACE.Nombre_app = APLICACIONES.Nombre GROUP BY DNI_empleado
                                         HAVING DNI_empleado IN (SELECT Director FROM APLICACIONES));


#Para finalizar, creamos una vista que nos muestre información sobre las descargas que han sido puntuadas con una nota mayor a 4.

CREATE VIEW DESCARGAS_APROBADAS AS
SELECT DISTINCT Nombre_app, Nota, Comentario, Precio, Memoria, Nombre_empresa FROM DESCARGA INNER JOIN APLICACIONES ON DESCARGA.Nombre_App = APLICACIONES.Nombre
WHERE Nota > 4;

SELECT * FROM master_database.descargas_aprobadas;
    

		

    

