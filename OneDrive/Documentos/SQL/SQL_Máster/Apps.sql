/*Creamos el dataset master_database*/

DROP DATABASE IF EXISTS master_database;
CREATE DATABASE master_database; 
USE master_database;

CREATE TABLE EMPRESA(
Nombre VARCHAR(30) PRIMARY KEY,
Correo VARCHAR(50),
Fundado INT,
País VARCHAR(20),
Página_Web VARCHAR(50));

CREATE TABLE EMPLEADO(
DNI CHAR(9) PRIMARY KEY,
Tlfn VARCHAR(15),
Correo VARCHAR(50),
Calle VARCHAR (50),
Número SMALLINT,
Cod_Postal INT);

CREATE TABLE APLICACIONES(
Nombre VARCHAR(30) PRIMARY KEY,
Código VARCHAR(20),
Fecha_inicio DATE,
Fecha_fin DATE,
Precio INT,
Memoria DOUBLE,
Nombre_empresa VARCHAR(30) NOT NULL,
Director CHAR(9) NOT NULL,
FOREIGN KEY (Nombre_empresa) REFERENCES EMPRESA(Nombre)
ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (Director) REFERENCES EMPLEADO(DNI)
ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE USUARIOS(
Nombre VARCHAR(50),
Dirección VARCHAR(100),
País VARCHAR(50),                    #Separamos el país de la dirección para facilitar una consulta que se nos pide hacer en el ejercicio.
Num_cuenta VARCHAR(50) PRIMARY KEY,
Tlfn VARCHAR(15) DEFAULT NULL);    /*Solo tenemos el teléfono de aquellas personas que descarguen aplicaciones, es decir, que aparezcan en la tabla DESCARGA??? CREO QUE HAY QUE USAR UN TRIGGER*/


CREATE TABLE TIENDA(
Nombre VARCHAR(30) PRIMARY KEY,
Gestor VARCHAR(30),
Página_Web VARCHAR(50));

CREATE TABLE HACE(
Nombre_app VARCHAR(30),
DNI_empleado CHAR(9),
PRIMARY KEY (Nombre_app, DNI_empleado),
FOREIGN KEY(Nombre_app) REFERENCES APLICACIONES(Nombre)
ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY(DNI_empleado) REFERENCES EMPLEADO(DNI)
ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE CONTRATO_EXP(
Código_contrato VARCHAR(10),
DNI_empleado CHAR(9),
Nombre_empresa VARCHAR(30),
Fecha_inicio DATE,
Fecha_fin DATE,
PRIMARY KEY(Código_contrato),
FOREIGN KEY (Nombre_empresa) REFERENCES EMPRESA(Nombre)
ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY(DNI_empleado) REFERENCES EMPLEADO(DNI)
ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE CONTRATO_ACT(
Código_contrato VARCHAR(10),
DNI_empleado CHAR(9),
Nombre_empresa VARCHAR(30),
Fecha_inicio DATE,
PRIMARY KEY(Código_contrato),
FOREIGN KEY (Nombre_empresa) REFERENCES EMPRESA(Nombre)
ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY(DNI_empleado) REFERENCES EMPLEADO(DNI)
ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE SUBIDAS(
Nombre_app VARCHAR(20),
Nombre_tienda VARCHAR(30),
PRIMARY KEY (Nombre_app, Nombre_tienda),
FOREIGN KEY(Nombre_app) REFERENCES APLICACIONES(Nombre)
ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY(Nombre_tienda) REFERENCES TIENDA(Nombre)
ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE DESCARGA(
Nombre_app VARCHAR(20),
Cuenta_usuario VARCHAR(50),
Comentario VARCHAR(500),
Num_móvil VARCHAR(15),
Nota SMALLINT,
Fecha DATE,                                               #Añadimos la fecha en la que se realiza la descarga como atributo debido a una de las consultas que se nos pide hacer.
PRIMARY KEY(Nombre_app, Cuenta_usuario),
FOREIGN KEY(Nombre_app) REFERENCES APLICACIONES(Nombre)
ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY(Cuenta_usuario) REFERENCES USUARIOS(Num_cuenta)
ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE CATEGORÍA(                                 #Creamos una tabla para el atributo "categoría de la app" por ser multivalorado
Nombre_app VARCHAR(20),
Categoría VARCHAR(30),
PRIMARY KEY(Nombre_app, Categoría),
FOREIGN KEY(Nombre_app) REFERENCES APLICACIONES(Nombre)
ON DELETE CASCADE ON UPDATE CASCADE);

/*Creamos el TRIGGER que introduzca los números de teléfono de los usuarios que hayan hecho descargas*/


DELIMITER //
DROP TRIGGER IF EXISTS INSERTAR_TELÉFONO_AI//
CREATE TRIGGER INSERTAR_TELÉFONO_AI  
AFTER INSERT ON DESCARGA FOR EACH ROW
BEGIN

UPDATE USUARIOS SET Tlfn = NEW.Num_Móvil
WHERE USUARIOS.Num_Cuenta = NEW.Cuenta_usuario;

END//

/*Podemos también programar un TRIGGER que elimine los números de teléfono de los usuarios cuando estos sean eliminados de la tabla "DESCARGA" */

DELIMITER //
DROP TRIGGER IF EXISTS ELIMINA_TELÉFONO_AD//
CREATE TRIGGER ELIMINA_TELÉFONO_AD  
AFTER DELETE ON DESCARGA FOR EACH ROW
BEGIN

UPDATE USUARIOS SET Tlfn = NULL
WHERE USUARIOS.Num_Cuenta = OLD.Cuenta_usuario;

END//

        