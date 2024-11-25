-- Crear la base de datos y usarla
CREATE DATABASE Prueba1w;
USE Prueba1w;

-- Tabla Tipos
CREATE TABLE Tipos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(30) NOT NULL
);

-- Tabla Especialidad
CREATE TABLE Especialidad (
    id INT AUTO_INCREMENT PRIMARY KEY,
    NombreEspecialidad VARCHAR(30) NOT NULL
);

-- Tabla País
CREATE TABLE País (
    id INT AUTO_INCREMENT PRIMARY KEY,
    NombrePaís VARCHAR(50) NOT NULL
);

-- Tabla Programadores
CREATE TABLE Programadores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(30) NOT NULL,
    Descripciones VARCHAR(60),
    Ubicación INT,  -- Referencia a la tabla País
    Especialidad INT,  -- Referencia a la tabla Especialidad
    FOREIGN KEY (Ubicación) REFERENCES País(id),
    FOREIGN KEY (Especialidad) REFERENCES Especialidad(id)
);

-- Tabla CartasDeWeb
CREATE TABLE CartasDeWeb (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Titulo VARCHAR(20) NOT NULL,
    Descripciones VARCHAR(400),
    UrlDeImg VARCHAR(255),
    FechaDeCreación DATE,
    CreadorPrincipal INT,  -- Referencia a la tabla Programadores
    TipoDePrograma INT,  -- Referencia a la tabla Tipos
    FOREIGN KEY (CreadorPrincipal) REFERENCES Programadores(id),
    FOREIGN KEY (TipoDePrograma) REFERENCES Tipos(id)
);
