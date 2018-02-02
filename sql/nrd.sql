-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 02-Fev-2018 às 18:53
-- Versão do servidor: 5.7.19
-- PHP Version: 5.6.31

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

--
-- Extraindo dados da tabela `contas`
--

INSERT INTO `contas` (`contaId`, `usuarioId`, `contaNome`, `contaTipo`, `contaInicial`, `contaAtiva`) VALUES
('666d980c-d69f-11e7-b2c2-0a002700000d', 'd2f98274-d69e-11e7-b2c2-0a002700000d', 'BB Exclusive', 'CC', 58257, 1),
('6671e957-d69f-11e7-b2c2-0a002700000d', 'd2f98274-d69e-11e7-b2c2-0a002700000d', 'Conta Digital Inter', 'CC', 411, 1),
('66737da9-d69f-11e7-b2c2-0a002700000d', 'd2f98274-d69e-11e7-b2c2-0a002700000d', 'Dinheiro', 'DN', 84000, 1),
('6676aae9-d69f-11e7-b2c2-0a002700000d', 'd2f98274-d69e-11e7-b2c2-0a002700000d', 'Distribuição', 'DN', 8000, 1),
('6679f11d-d69f-11e7-b2c2-0a002700000d', 'd2f98274-d69e-11e7-b2c2-0a002700000d', 'Dízimo', 'CR', 0, 1),
('667bcb3c-d69f-11e7-b2c2-0a002700000d', 'd2f98274-d69e-11e7-b2c2-0a002700000d', 'Hipercard', 'CR', -38068, 1),
('667f41bd-d69f-11e7-b2c2-0a002700000d', 'd2f98274-d69e-11e7-b2c2-0a002700000d', 'Itaú Uniclass', 'CC', 716497, 1),
('6680dee8-d69f-11e7-b2c2-0a002700000d', 'd2f98274-d69e-11e7-b2c2-0a002700000d', 'Moedas', 'DN', 2794, 1),
('6682c593-d69f-11e7-b2c2-0a002700000d', 'd2f98274-d69e-11e7-b2c2-0a002700000d', 'NuBank MasterCard', 'CR', -58703, 1),
('66849f15-d69f-11e7-b2c2-0a002700000d', 'd2f98274-d69e-11e7-b2c2-0a002700000d', 'Petrobras Visa', 'CR', -17671, 1),
('66873779-d69f-11e7-b2c2-0a002700000d', 'd2f98274-d69e-11e7-b2c2-0a002700000d', 'Poupança BB 81', 'PP', 0, 1),
('6689e615-d69f-11e7-b2c2-0a002700000d', 'd2f98274-d69e-11e7-b2c2-0a002700000d', 'Poupança BB 01', 'PP', 928187, 1),
('668ca1fa-d69f-11e7-b2c2-0a002700000d', 'd2f98274-d69e-11e7-b2c2-0a002700000d', 'Poupança Itaú', 'PP', 890096, 1),
('668df208-d69f-11e7-b2c2-0a002700000d', 'd2f98274-d69e-11e7-b2c2-0a002700000d', 'Saraiva Visa', 'CR', -53774, 1),
('6690ad09-d69f-11e7-b2c2-0a002700000d', 'd2f98274-d69e-11e7-b2c2-0a002700000d', 'Sodexo Alimentação', 'CC', 3187, 1),
('669367c7-d69f-11e7-b2c2-0a002700000d', 'd2f98274-d69e-11e7-b2c2-0a002700000d', 'Sodexo Refeição', 'CC', 112, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `saldos`
--

DROP TABLE IF EXISTS `saldos`;
CREATE TABLE IF NOT EXISTS `saldos` (
  `saldoId` varchar(36) NOT NULL,
  `contaId` varchar(36) NOT NULL,
  `saldoMesAno` int(11) NOT NULL,
  `saldoValor` bigint(20) NOT NULL,
  `saldoDataInicio` date NOT NULL,
  `saldoDataFim` date NOT NULL,
  PRIMARY KEY (`saldoId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `saldos`
--

INSERT INTO `saldos` (`saldoId`, `contaId`, `saldoMesAno`, `saldoValor`, `saldoDataInicio`, `saldoDataFim`) VALUES
('bd443f65-06bf-11e8-86c8-0a002700000e', '666d980c-d69f-11e7-b2c2-0a002700000d', 201711, 58257, '2017-10-01', '2017-10-31'),
('bd48d4c0-06bf-11e8-86c8-0a002700000e', '6671e957-d69f-11e7-b2c2-0a002700000d', 201711, 390411, '2017-10-01', '2017-10-31'),
('bd4b1c4c-06bf-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', 201711, 152010, '2017-10-01', '2017-10-31'),
('bd4d7c83-06bf-11e8-86c8-0a002700000e', '6676aae9-d69f-11e7-b2c2-0a002700000d', 201711, 8000, '2017-10-01', '2017-10-31'),
('bd5006cc-06bf-11e8-86c8-0a002700000e', '6679f11d-d69f-11e7-b2c2-0a002700000d', 201711, -81929, '2017-10-01', '2017-10-31'),
('bd525abf-06bf-11e8-86c8-0a002700000e', '667bcb3c-d69f-11e7-b2c2-0a002700000d', 201711, -38068, '2017-10-01', '2017-10-31'),
('bd54b6f3-06bf-11e8-86c8-0a002700000e', '667f41bd-d69f-11e7-b2c2-0a002700000d', 201711, 378256, '2017-10-01', '2017-10-31'),
('bd5709d8-06bf-11e8-86c8-0a002700000e', '6680dee8-d69f-11e7-b2c2-0a002700000d', 201711, 2794, '2017-10-01', '2017-10-31'),
('bd598da0-06bf-11e8-86c8-0a002700000e', '6682c593-d69f-11e7-b2c2-0a002700000d', 201711, -58703, '2017-10-01', '2017-10-31'),
('bd5bf7ce-06bf-11e8-86c8-0a002700000e', '66849f15-d69f-11e7-b2c2-0a002700000d', 201711, -17671, '2017-10-01', '2017-10-31'),
('bd5e4993-06bf-11e8-86c8-0a002700000e', '66873779-d69f-11e7-b2c2-0a002700000d', 201711, 337937, '2017-10-01', '2017-10-31'),
('bd60bd5b-06bf-11e8-86c8-0a002700000e', '6689e615-d69f-11e7-b2c2-0a002700000d', 201711, 928187, '2017-10-01', '2017-10-31'),
('bd63106a-06bf-11e8-86c8-0a002700000e', '668ca1fa-d69f-11e7-b2c2-0a002700000d', 201711, 890096, '2017-10-01', '2017-10-31'),
('bd657044-06bf-11e8-86c8-0a002700000e', '668df208-d69f-11e7-b2c2-0a002700000d', 201711, -82764, '2017-10-01', '2017-10-31'),
('bd67cbe8-06bf-11e8-86c8-0a002700000e', '6690ad09-d69f-11e7-b2c2-0a002700000d', 201711, 49074, '2017-10-01', '2017-10-31'),
('bd6a1fbd-06bf-11e8-86c8-0a002700000e', '669367c7-d69f-11e7-b2c2-0a002700000d', 201711, 46984, '2017-10-01', '2017-10-31');

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

--
-- Extraindo dados da tabela `transacoes`
--

INSERT INTO `transacoes` (`transacaoId`, `contaId`, `transacaoData`, `transacaoQuem`, `transacaoOQue`, `transacaoValor`, `contaIdDestino`) VALUES
('82c9bd24-06b4-11e8-86c8-0a002700000e', '667f41bd-d69f-11e7-b2c2-0a002700000d', '2017-10-31', 'Itaú Uniclass → Dinheiro', '', -75000, '66737da9-d69f-11e7-b2c2-0a002700000d'),
('82c16160-06b4-11e8-86c8-0a002700000e', '667f41bd-d69f-11e7-b2c2-0a002700000d', '2017-10-31', 'Celepar', 'Salário', 478039, NULL),
('82b72ab9-06b4-11e8-86c8-0a002700000e', '667f41bd-d69f-11e7-b2c2-0a002700000d', '2017-10-30', 'Itaú', 'Rendimento', 296, NULL),
('23e7a75d-06b4-11e8-86c8-0a002700000e', '667f41bd-d69f-11e7-b2c2-0a002700000d', '2017-10-30', 'Itaú Uniclass → Conta Digital Inter', '', -337937, '6671e957-d69f-11e7-b2c2-0a002700000d'),
('23ddd010-06b4-11e8-86c8-0a002700000e', '667f41bd-d69f-11e7-b2c2-0a002700000d', '2017-10-30', 'Estacionamento Shopping São José', 'Estacionamento', -800, NULL),
('23d42052-06b4-11e8-86c8-0a002700000e', '667f41bd-d69f-11e7-b2c2-0a002700000d', '2017-10-30', 'Tropical Banana', 'Almoço', -2290, NULL),
('23c854c9-06b4-11e8-86c8-0a002700000e', '667f41bd-d69f-11e7-b2c2-0a002700000d', '2017-10-28', 'Posto Petro Pimpa', 'Gasolina comum', -10549, NULL),
('b0b258f4-06b3-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-10-30', 'Caixinha da Celepar', 'Caixinha do café', -2000, NULL),
('09bf85ae-06b3-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-10-30', 'Burguer King', 'Comida', -2990, NULL),
('09b773db-06b3-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-10-29', 'ISJC Curitiba', 'Oferta', -2000, NULL),
('82d23ecf-06b4-11e8-86c8-0a002700000e', '667f41bd-d69f-11e7-b2c2-0a002700000d', '2017-10-31', 'Itaú Uniclass → Conta Digital Inter', '', -390000, '6671e957-d69f-11e7-b2c2-0a002700000d'),
('a97b4875-06b7-11e8-86c8-0a002700000e', '6679f11d-d69f-11e7-b2c2-0a002700000d', '2017-10-31', '', 'Parte do salário', -66157, NULL),
('a9866d3d-06b7-11e8-86c8-0a002700000e', '6679f11d-d69f-11e7-b2c2-0a002700000d', '2017-10-31', '', 'Parte do vale-refeição', -4851, NULL),
('a98ef319-06b7-11e8-86c8-0a002700000e', '6679f11d-d69f-11e7-b2c2-0a002700000d', '2017-10-31', '', 'Parte do vale-alimentação', -4851, NULL),
('a997bfc6-06b7-11e8-86c8-0a002700000e', '6679f11d-d69f-11e7-b2c2-0a002700000d', '2017-10-31', '', 'Parte do resto dos benefícios', -5000, NULL),
('a9a07657-06b7-11e8-86c8-0a002700000e', '6679f11d-d69f-11e7-b2c2-0a002700000d', '2017-10-31', '', 'Parte dos rendimentos Itaú Uniclass', -83, NULL),
('a9a9611d-06b7-11e8-86c8-0a002700000e', '6679f11d-d69f-11e7-b2c2-0a002700000d', '2017-10-31', '', 'Parte dos rendimentos Poupança Itaú', -443, NULL),
('a9b2173b-06b7-11e8-86c8-0a002700000e', '6679f11d-d69f-11e7-b2c2-0a002700000d', '2017-10-31', '', 'Parte dos rendimentos Poupança BB', -544, NULL),
('fbef3283-06b7-11e8-86c8-0a002700000e', '6671e957-d69f-11e7-b2c2-0a002700000d', '2017-10-31', 'Conta Digital Inter → Conta BB', '', -337937, '666d980c-d69f-11e7-b2c2-0a002700000d'),
('c0340af2-06b8-11e8-86c8-0a002700000e', '666d980c-d69f-11e7-b2c2-0a002700000d', '2017-10-31', 'BB Exclusive → Poup. BB Ult. Parc.', '', -337937, '66873779-d69f-11e7-b2c2-0a002700000d'),
('f6f0e21f-06bb-11e8-86c8-0a002700000e', '668df208-d69f-11e7-b2c2-0a002700000d', '2017-10-28', 'Amazon', 'Kindle (12/12)', -3158, NULL),
('f6f600e5-06bb-11e8-86c8-0a002700000e', '668df208-d69f-11e7-b2c2-0a002700000d', '2017-10-30', 'Mercado Livre', 'MacMini (5/12)', -25832, NULL),
('74209dbf-06bc-11e8-86c8-0a002700000e', '669367c7-d69f-11e7-b2c2-0a002700000d', '2017-10-31', 'Celepar', 'Vale-refeição', 48512, NULL),
('742b1dd3-06bc-11e8-86c8-0a002700000e', '669367c7-d69f-11e7-b2c2-0a002700000d', '2017-10-31', 'Funcel', 'Saída do Jejum', -1640, NULL),
('a9cf6f2e-06bc-11e8-86c8-0a002700000e', '6690ad09-d69f-11e7-b2c2-0a002700000d', '2017-10-29', 'Pão da Vovó', 'Pão e chocolate', -1375, NULL),
('a9da30a8-06bc-11e8-86c8-0a002700000e', '6690ad09-d69f-11e7-b2c2-0a002700000d', '2017-10-30', 'Máquina da Celepar', 'Doce', -475, NULL),
('a9e2eb87-06bc-11e8-86c8-0a002700000e', '6690ad09-d69f-11e7-b2c2-0a002700000d', '2017-10-30', 'Máquina da Celepar', 'Doce', -400, NULL),
('a9eb6221-06bc-11e8-86c8-0a002700000e', '6690ad09-d69f-11e7-b2c2-0a002700000d', '2017-10-31', 'Celepar', 'Vale-alimentação', 48512, NULL),
('a9f39b8d-06bc-11e8-86c8-0a002700000e', '6690ad09-d69f-11e7-b2c2-0a002700000d', '2017-10-31', 'Máquina da Celepar', 'Chocolate', -375, NULL),
('367814dc-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-01', 'Transf → Dízimo', '', -75000, '6679f11d-d69f-11e7-b2c2-0a002700000d'),
('36786e1e-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-02', 'Transf → Moedas', '', -10, '6680dee8-d69f-11e7-b2c2-0a002700000d'),
('3678a4e5-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-04', 'ISJC Florianópolis', 'Oferta', -10000, NULL),
('3678d4ec-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-04', 'Shopping Via Catarina', 'Estacionamento', -900, NULL),
('367903a9-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-05', 'Transf → Dízimo', '', -6929, '6679f11d-d69f-11e7-b2c2-0a002700000d'),
('36792b2e-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-05', 'ISJC Curitiba', 'Oferta', -71, NULL),
('36795394-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-05', 'Transf → Moedas', '', -100, '6680dee8-d69f-11e7-b2c2-0a002700000d'),
('36797b34-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-05', 'Transf → Distribuição', '', -11000, '6676aae9-d69f-11e7-b2c2-0a002700000d'),
('3679a3f4-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-07', 'Adriano Despachante', 'Baixa de Gravame', -9000, NULL),
('3679cae9-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-08', 'Rafael Kanheski', 'Oferta', 5000, NULL),
('3679f4fd-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-08', 'Transf → Dízimo', '', -500, '6679f11d-d69f-11e7-b2c2-0a002700000d'),
('367a2525-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-08', 'Márcia Alves', 'Oferta', 3500, NULL),
('367a50da-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-08', 'Transf → Dízimo', '', -350, '6679f11d-d69f-11e7-b2c2-0a002700000d'),
('367a789b-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-08', 'ISJC Curitiba', 'Oferta', -1150, NULL),
('367ab224-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-09', 'Adriano Despachante', '1º Emplacamento', -78000, NULL),
('367adaf7-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-09', 'Transf → Moedas', '', -50, '6680dee8-d69f-11e7-b2c2-0a002700000d'),
('367b022d-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-11', '>> Contagem <<', '', -6050, NULL),
('367b2925-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-11', 'Transf → Distribuição', '', -5500, '6676aae9-d69f-11e7-b2c2-0a002700000d'),
('367b4f5c-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-12', 'Rafael Kanheski', 'Oferta', 2000, NULL),
('367b75be-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-12', 'Transf → Dízimo', '', -9000, '6679f11d-d69f-11e7-b2c2-0a002700000d'),
('367b9bfe-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-13', 'Conta BB → Saque', '', 49000, NULL),
('367bc2f3-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-13', 'Transf → Distribuição', '', -1800, '6676aae9-d69f-11e7-b2c2-0a002700000d'),
('367bea05-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-15', 'Transf → Dízimo', '', -38174, '6679f11d-d69f-11e7-b2c2-0a002700000d'),
('367c10b5-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-15', 'ISJC Curitiba', 'Oferta', -826, NULL),
('367c371c-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-15', 'Márcia Alves', 'Oferta', 1000, NULL),
('367c62bd-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-19', 'Transf → Dízimo', '', -100, '6679f11d-d69f-11e7-b2c2-0a002700000d'),
('367c8951-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-19', 'ISJC Curitiba', 'Oferta', -400, NULL),
('367cb892-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-19', '>> Contagem <<', '', 100, NULL),
('367cf49e-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-22', 'Funcel', 'Lanche', -1400, NULL),
('367d27fb-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-22', 'Funcel', 'Lanche', -750, NULL),
('367d5055-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-22', 'Michelle Volz', 'Bolo', -800, NULL),
('367d772b-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-22', 'Restaurante Família Casanova', 'Lanche', -2150, NULL),
('367d9ff5-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-24', 'Transf → Moedas', '', -30, '6680dee8-d69f-11e7-b2c2-0a002700000d'),
('367dc6ec-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-24', 'Ben\'dito Tempero', 'Almoço', -2600, NULL),
('367dee68-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-27', 'Kharina', 'Almoço', -3740, NULL),
('367e14de-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-27', 'Transf → Moedas', '', -60, '6680dee8-d69f-11e7-b2c2-0a002700000d'),
('367e3b58-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-28', 'Posto Bom Retiro', '', -1790, NULL),
('367e6195-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-28', 'Funcel', 'Lanche', -1120, NULL),
('367e89da-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-28', 'Michelle Volz', 'Bolo', -500, NULL),
('367eb1ad-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-28', 'Transf → Moedas', '', -90, '6680dee8-d69f-11e7-b2c2-0a002700000d'),
('367edb13-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-29', 'Conta BB → Saque', '', 34000, NULL),
('367f01bf-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-29', 'Posto Bom Retiro', 'Almoço', -1960, NULL),
('367f2a10-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-29', 'Albino', 'Lc 6:34-35', -1500, NULL),
('367f6abc-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-29', 'Funcel', 'Lanche', -1100, NULL),
('367faacc-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-29', 'Transf → Dízimo', '', -33880, '6679f11d-d69f-11e7-b2c2-0a002700000d'),
('367fe3e3-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-30', '>> Contagem <<', '', -2970, NULL),
('95e94a8b-0821-11e8-97ec-0a002700000e', '6676aae9-d69f-11e7-b2c2-0a002700000d', '2017-11-30', '>> Contagem <<', '', -5000, NULL),
('3680430d-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-30', 'Albino', 'Devolução', 1500, NULL),
('368078bf-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-30', 'Posto Bom Retiro', 'Refri e Chocolate', -980, NULL),
('3680a6b9-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-30', 'Transf → Moedas', '', -20, '6680dee8-d69f-11e7-b2c2-0a002700000d'),
('3680d34c-0817-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', '2017-11-30', 'Transf → Distribuição', '', -5000, '6676aae9-d69f-11e7-b2c2-0a002700000d'),
('27ed0b61-0839-11e8-97ec-0a002700000e', '6679f11d-d69f-11e7-b2c2-0a002700000d', '2017-11-08', '', 'Parte da oferta de viagem', -500, NULL),
('c1599e59-0820-11e8-97ec-0a002700000e', '6680dee8-d69f-11e7-b2c2-0a002700000d', '2017-11-30', '>> Contagem <<', '', 10, NULL),
('27ed520c-0839-11e8-97ec-0a002700000e', '6679f11d-d69f-11e7-b2c2-0a002700000d', '2017-11-09', '', 'Parte do pagamento do jogo do SESI', -40000, NULL),
('27ed82fe-0839-11e8-97ec-0a002700000e', '6679f11d-d69f-11e7-b2c2-0a002700000d', '2017-11-09', '', 'Parte da oferta de viagem', -350, NULL),
('27edcac7-0839-11e8-97ec-0a002700000e', '6679f11d-d69f-11e7-b2c2-0a002700000d', '2017-11-12', '', 'Parte da oferta de viagem', -200, NULL),
('27edfc6d-0839-11e8-97ec-0a002700000e', '6679f11d-d69f-11e7-b2c2-0a002700000d', '2017-11-13', '', 'Parte dos dinheiros pagos pelo Marlon', -6974, NULL),
('27ee2ad2-0839-11e8-97ec-0a002700000e', '6679f11d-d69f-11e7-b2c2-0a002700000d', '2017-11-15', '', 'Parte da oferta de viagem', -100, NULL),
('27ee5dea-0839-11e8-97ec-0a002700000e', '6679f11d-d69f-11e7-b2c2-0a002700000d', '2017-11-27', '', 'Parte do pagamento do jogo do SESI', -33880, NULL),
('ac0c9fdf-0839-11e8-97ec-0a002700000e', '6679f11d-d69f-11e7-b2c2-0a002700000d', '2017-11-30', '', 'Parte do salário', -64072, NULL),
('ac0cdc5a-0839-11e8-97ec-0a002700000e', '6679f11d-d69f-11e7-b2c2-0a002700000d', '2017-11-30', '', 'Parte do vale-refeição', -9702, NULL),
('ac0d153b-0839-11e8-97ec-0a002700000e', '6679f11d-d69f-11e7-b2c2-0a002700000d', '2017-11-30', '', 'Parte do vale-alimentação', -9702, NULL),
('ac0d5704-0839-11e8-97ec-0a002700000e', '6679f11d-d69f-11e7-b2c2-0a002700000d', '2017-11-30', '', 'Parte do resto dos benefícios', -5000, NULL),
('ac0d85d0-0839-11e8-97ec-0a002700000e', '6679f11d-d69f-11e7-b2c2-0a002700000d', '2017-11-30', '', 'Parte dos rendimentos Itaú Uniclass', -3, NULL),
('ac0dbf95-0839-11e8-97ec-0a002700000e', '6679f11d-d69f-11e7-b2c2-0a002700000d', '2017-11-30', '', 'Parte dos rendimentos Poupança Itaú', -418, NULL),
('ac0df484-0839-11e8-97ec-0a002700000e', '6679f11d-d69f-11e7-b2c2-0a002700000d', '2017-11-30', '', 'Parte dos rendimentos Poupança BB', -464, NULL),
('ac0e22b7-0839-11e8-97ec-0a002700000e', '6679f11d-d69f-11e7-b2c2-0a002700000d', '2017-11-30', '', 'Parte dos rendimentos Poupança BB Ult. Parc.', -144, NULL),
('ac0e4da0-0839-11e8-97ec-0a002700000e', '6679f11d-d69f-11e7-b2c2-0a002700000d', '2017-11-30', '', 'Parte da devolução de empréstimo', -150, NULL),
('0a236b4e-083e-11e8-97ec-0a002700000e', '6671e957-d69f-11e7-b2c2-0a002700000d', '2017-11-01', 'Transf → Conta BB', '', -86000, '666d980c-d69f-11e7-b2c2-0a002700000d'),
('0a23b0d9-083e-11e8-97ec-0a002700000e', '6671e957-d69f-11e7-b2c2-0a002700000d', '2017-11-01', 'Posto Bom Retiro', 'Gasolina comum e refri', -10590, NULL),
('0a23e74e-083e-11e8-97ec-0a002700000e', '6671e957-d69f-11e7-b2c2-0a002700000d', '2017-11-04', 'Posto Petro Chile', 'Gasolina aditivada e chocolate', -10826, NULL),
('0a241cc8-083e-11e8-97ec-0a002700000e', '6671e957-d69f-11e7-b2c2-0a002700000d', '2017-11-06', 'Vivo', 'Telefone móvel e internet', -10098, NULL),
('0a24500c-083e-11e8-97ec-0a002700000e', '6671e957-d69f-11e7-b2c2-0a002700000d', '2017-11-07', 'Posto XV', 'Gasolina comum', -10000, NULL),
('0a24879a-083e-11e8-97ec-0a002700000e', '6671e957-d69f-11e7-b2c2-0a002700000d', '2017-11-09', 'Cold Stone', 'Sorvete', -2400, NULL),
('0a24c51a-083e-11e8-97ec-0a002700000e', '6671e957-d69f-11e7-b2c2-0a002700000d', '2017-11-10', 'Claro', 'Internet Móvel', -10998, NULL),
('0a250c3e-083e-11e8-97ec-0a002700000e', '6671e957-d69f-11e7-b2c2-0a002700000d', '2017-11-10', 'Farmácia das Nações', 'Puran e Dprev', -10656, NULL),
('0a254895-083e-11e8-97ec-0a002700000e', '6671e957-d69f-11e7-b2c2-0a002700000d', '2017-11-10', 'Droga Raia', 'Genfibrozila', -3905, NULL),
('0a257926-083e-11e8-97ec-0a002700000e', '6671e957-d69f-11e7-b2c2-0a002700000d', '2017-11-10', 'Auto Posto Colossal Batel', 'Gasolina comum e chocolate', -10350, NULL),
('0a25b111-083e-11e8-97ec-0a002700000e', '6671e957-d69f-11e7-b2c2-0a002700000d', '2017-11-11', 'Farmácia Carrefour', 'Multi Grip', -790, NULL),
('0a25dc7e-083e-11e8-97ec-0a002700000e', '6671e957-d69f-11e7-b2c2-0a002700000d', '2017-11-14', 'Posto Bom Retiro', 'Biscoito e Suco', -1480, NULL),
('0a260861-083e-11e8-97ec-0a002700000e', '6671e957-d69f-11e7-b2c2-0a002700000d', '2017-11-14', 'Posto Bom Retiro', 'Salgados e Refri', -2160, NULL),
('0a2630f1-083e-11e8-97ec-0a002700000e', '6671e957-d69f-11e7-b2c2-0a002700000d', '2017-11-14', 'Posto Doha', 'Gasolina aditivada e chocolate', -18656, NULL),
('0a265927-083e-11e8-97ec-0a002700000e', '6671e957-d69f-11e7-b2c2-0a002700000d', '2017-11-15', 'PMC', 'IPTU 2017 10/10', -13590, NULL),
('0a268326-083e-11e8-97ec-0a002700000e', '6671e957-d69f-11e7-b2c2-0a002700000d', '2017-11-16', 'Transf → NuBank MasterCard', '', -61963, '6682c593-d69f-11e7-b2c2-0a002700000d'),
('0a26b1ca-083e-11e8-97ec-0a002700000e', '6671e957-d69f-11e7-b2c2-0a002700000d', '2017-11-17', 'Posto Bom Retiro', 'Biscoito e Suco', -1240, NULL),
('0a26eac6-083e-11e8-97ec-0a002700000e', '6671e957-d69f-11e7-b2c2-0a002700000d', '2017-11-20', 'Transf → Hipercard', '', -38068, '667bcb3c-d69f-11e7-b2c2-0a002700000d'),
('0a27389a-083e-11e8-97ec-0a002700000e', '6671e957-d69f-11e7-b2c2-0a002700000d', '2017-11-20', 'Posto Bom Retiro', 'Biscoito e Suco', -1380, NULL),
('0a278150-083e-11e8-97ec-0a002700000e', '6671e957-d69f-11e7-b2c2-0a002700000d', '2017-11-21', 'Posto XP', 'Gasolina comum e chocolate', -10400, NULL),
('0a27bd05-083e-11e8-97ec-0a002700000e', '6671e957-d69f-11e7-b2c2-0a002700000d', '2017-11-22', 'SEFA', 'IPVA 2017 EcoSport', -72077, NULL),
('0a27ee3f-083e-11e8-97ec-0a002700000e', '6671e957-d69f-11e7-b2c2-0a002700000d', '2017-11-22', 'Seguradora Líder', 'DPVAT 2017 EcoSport', -2015, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
