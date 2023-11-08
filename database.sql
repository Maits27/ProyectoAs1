-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 15-10-2022 a las 16:38:48
-- Versión del servidor: 10.8.2-MariaDB-1:10.8.2+maria~focal
-- Versión de PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `database`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `liburua`
--

-- Crear la tabla de usuarios
-- id INT AUTO_INCREMENT PRIMARY KEY,
CREATE TABLE usuarios (
    id CHAR(32) PRIMARY KEY,
    nombre VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    contrasena VARCHAR(255)
);

-- Crear la tabla de grupos
CREATE TABLE grupo (
    id CHAR(32) PRIMARY KEY,
    nombre VARCHAR(255) UNIQUE,
    contrasena VARCHAR(255)
);

CREATE TABLE gruposUsuario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    IdUsuario CHAR(32),
    IdGrupo CHAR(32),
    FOREIGN KEY (IdUsuario) REFERENCES usuarios(id),
    FOREIGN KEY (IdGrupo) REFERENCES grupo(id)
);