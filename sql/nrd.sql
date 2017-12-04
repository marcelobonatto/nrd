-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 04-Dez-2017 às 19:31
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

-- --------------------------------------------------------

--
-- Estrutura da tabela `transacoes`
--

DROP TABLE IF EXISTS `transacoes`;
CREATE TABLE IF NOT EXISTS `transacoes` (
  `transacaoId` varchar(36) NOT NULL,
  `contaId` varchar(36) NOT NULL,
  `transacaoData` date NOT NULL,
  `transacaoQuem` varchar(500) NOT NULL,
  `transacaoOQue` varchar(500) NOT NULL,
  `transacaoValor` bigint(20) NOT NULL,
  `contaIdDestino` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`transacaoId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
