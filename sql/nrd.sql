-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 01-Dez-2017 às 19:01
-- Versão do servidor: 5.7.19
-- PHP Version: 7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nrd`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `contas`
--

DROP TABLE IF EXISTS `contas`;
CREATE TABLE IF NOT EXISTS `contas` (
  `contaId` varchar(36) NOT NULL,
  `usuarioId` varchar(36) NOT NULL,
  `contaNome` varchar(100) NOT NULL,
  `contaTipo` varchar(2) NOT NULL,
  `contaInicial` bigint(20) NOT NULL,
  `contaAtiva` tinyint(1) NOT NULL,
  PRIMARY KEY (`contaId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
