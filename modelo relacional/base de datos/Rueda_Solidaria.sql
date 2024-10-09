CREATE TABLE Alumnos (
    alumno_ID NUMBER(4) NOT NULL,
    nombre_alum  VARCHAR2(50) NOT NULL,
    apaterno_alum  VARCHAR2(50) NOT NULL,
    inst_ID NUMBER(5)NOT NULL
);

CREATE TABLE Conductor  (
    conductor_ID NUMBER(4) NOT NULL,
    nombre_cond  VARCHAR2(50) NOT NULL,
    apellido_cond  VARCHAR2(50) NULL,
    inst_ID NUMBER(5)NOT NULL
);

CREATE TABLE Establecimiento  (
    est_ID INT NOT NULL,
    nombre_ins VARCHAR2(50) NOT NULL,
    direccion VARCHAR2(50) NOT NULL,
    alumno_ID NUMBER(4) NOT NULL
);

CREATE TABLE Administrador (
    admin_ID NUMBER(5) PRIMARY KEY,
    nombre_admin VARCHAR2(50) NOT NULL,
    apellido_admin VARCHAR(50)NOT NULL,
    email VARCHAR2(100) NOT NULL,
    contraseña VARCHAR2(255) NOT NULL,
    telefono VARCHAR2(20),
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    estado CHAR(1) DEFAULT 'A',
    ultimo_inicio_sesion TIMESTAMP,
    rol VARCHAR2(50) DEFAULT 'Admin'
);


CREATE TABLE Vehiculo  (
    vehi_ID INT NOT NULL,
    nombre_vehi VARCHAR2(50) NOT NULL,
    color VARCHAR2(50) NOT NULL,
    patente VARCHAR(50)NOT NULL,
    conductor_ID NUMBER(4) NOT NULL
);

CREATE TABLE Viaje  (
    viaje_ID INT NOT NULL,
    ID_ruta INT NOT NULL,
    alumno_ID NUMBER(4) NOT NULL,
    fecha VARCHAR(50) NOT NULL,
    Hora VARCHAR(50) NOT NULL,
    calficacion NUMBER(6) NOT NULL
);

CREATE TABLE Ruta  (
    ID_ruta INT NOT NULL,
    Origen VARCHAR(50) NOT NULL,
    Destino VARCHAR(50) NOT NULL,
    est_ID INT NOT NULL,
    conductor_ID NUMBER(4) NOT NULL
);

-- Tabla Alumnos
INSERT INTO Alumnos (alumno_ID, nombre_alum, apaterno_alum, inst_ID)
VALUES (1004, 'Lucía', 'Fernández', 2001);

-- Tabla Viaje
INSERT INTO viaje (conductor_ID, ID_ruta, alumno_ID, fecha, hora, calficacion)
VALUES (1004, 1002, 1004, '02-10-2024', '13:30', 5);

-- Tabla Conductor
INSERT INTO Conductor (conductor_ID, nombre_cond, apellido_cond, inst_ID)
VALUES (2004, 'Bárbara', 'Rodríguez', 556);

-- Tabla Establecimiento
INSERT INTO Establecimiento (est_ID, nombre_ins, direccion, alumno_ID)
VALUES (4004, 'Colegio Nacional', 'Calle Principal 124', 1004);

-- Tabla Administrador
INSERT INTO Administrador (admin_ID, nombre_admin, apellido_admin, email, contraseña, telefono)
VALUES (5003, 'Sergio', 'Romero', 'sergio.romero@correo.com', 'contraseña789', '555-8765');

-- Tabla Vehículo
INSERT INTO Vehiculo (vehi_ID, nombre_vehi, color, patente, conductor_ID)
VALUES (6004, 'Nissan Sentra', 'Blanco', 'JKL-3456', 3004);

-- Tabla Ruta
INSERT INTO Ruta (ID_ruta, Origen, Destino, est_ID, conductor_ID)
VALUES (7001, 'Calle Los Álamos', 'Plaza Central', 4004, 2004);

INSERT INTO Ruta (ID_ruta, Origen, Destino, est_ID, conductor_ID)
VALUES (7002, 'Avenida Libertad', 'Parque Industrial', 4005, 2005);

INSERT INTO Ruta (ID_ruta, Origen, Destino, est_ID, conductor_ID)
VALUES (7003, 'Barrio El Sol', 'Estación de Tren', 4006, 2006);

INSERT INTO Ruta (ID_ruta, Origen, Destino, est_ID, conductor_ID)
VALUES (7004, 'Calle Principal', 'Centro Comercial', 4007, 2007);

INSERT INTO Ruta (ID_ruta, Origen, Destino, est_ID, conductor_ID)
VALUES (7005, 'Avenida Norte', 'Universidad Nacional', 4008, 2008);

INSERT INTO Ruta (ID_ruta, Origen, Destino, est_ID, conductor_ID)
VALUES (7006, 'Calle Sur', 'Hospital General', 4009, 2009);

INSERT INTO Ruta (ID_ruta, Origen, Destino, est_ID, conductor_ID)
VALUES (7007, 'Barrio La Esperanza', 'Museo de Arte', 4010, 2010);

INSERT INTO Ruta (ID_ruta, Origen, Destino, est_ID, conductor_ID)
VALUES (7008, 'Calle 10 de Mayo', 'Estadio Municipal', 4011, 2011);

INSERT INTO Ruta (ID_ruta, Origen, Destino, est_ID, conductor_ID)
VALUES (7009, 'Avenida Independencia', 'Terminal de Buses', 4012, 2012);

INSERT INTO Ruta (ID_ruta, Origen, Destino, est_ID, conductor_ID)
VALUES (7010, 'Calle Los Pinos', 'Teatro Principal', 4013, 2013);


SELECT * FROM alumnos;

SELECT * FROM conductor;

SELECT * FROM establecimiento;

SELECT * FROM vehiculo;

SELECT * FROM Administrador;

SELECT * FROM Viaje;

SELECT * FROM Ruta;

DELETE FROM alumnos
WHERE alumno_ID = 20;

DROP TABLE vehiculo;

