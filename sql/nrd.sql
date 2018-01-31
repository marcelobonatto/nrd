-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 31-Jan-2018 às 20:31
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
('bd443f65-06bf-11e8-86c8-0a002700000e', '666d980c-d69f-11e7-b2c2-0a002700000d', 112017, 58257, '2017-10-01', '2017-10-31'),
('bd48d4c0-06bf-11e8-86c8-0a002700000e', '6671e957-d69f-11e7-b2c2-0a002700000d', 112017, 390411, '2017-10-01', '2017-10-31'),
('bd4b1c4c-06bf-11e8-86c8-0a002700000e', '66737da9-d69f-11e7-b2c2-0a002700000d', 112017, 152010, '2017-10-01', '2017-10-31'),
('bd4d7c83-06bf-11e8-86c8-0a002700000e', '6676aae9-d69f-11e7-b2c2-0a002700000d', 112017, 8000, '2017-10-01', '2017-10-31'),
('bd5006cc-06bf-11e8-86c8-0a002700000e', '6679f11d-d69f-11e7-b2c2-0a002700000d', 112017, -81929, '2017-10-01', '2017-10-31'),
('bd525abf-06bf-11e8-86c8-0a002700000e', '667bcb3c-d69f-11e7-b2c2-0a002700000d', 112017, -38068, '2017-10-01', '2017-10-31'),
('bd54b6f3-06bf-11e8-86c8-0a002700000e', '667f41bd-d69f-11e7-b2c2-0a002700000d', 112017, 378256, '2017-10-01', '2017-10-31'),
('bd5709d8-06bf-11e8-86c8-0a002700000e', '6680dee8-d69f-11e7-b2c2-0a002700000d', 112017, 2794, '2017-10-01', '2017-10-31'),
('bd598da0-06bf-11e8-86c8-0a002700000e', '6682c593-d69f-11e7-b2c2-0a002700000d', 112017, -58703, '2017-10-01', '2017-10-31'),
('bd5bf7ce-06bf-11e8-86c8-0a002700000e', '66849f15-d69f-11e7-b2c2-0a002700000d', 112017, -17671, '2017-10-01', '2017-10-31'),
('bd5e4993-06bf-11e8-86c8-0a002700000e', '66873779-d69f-11e7-b2c2-0a002700000d', 112017, 337937, '2017-10-01', '2017-10-31'),
('bd60bd5b-06bf-11e8-86c8-0a002700000e', '6689e615-d69f-11e7-b2c2-0a002700000d', 112017, 928187, '2017-10-01', '2017-10-31'),
('bd63106a-06bf-11e8-86c8-0a002700000e', '668ca1fa-d69f-11e7-b2c2-0a002700000d', 112017, 890096, '2017-10-01', '2017-10-31'),
('bd657044-06bf-11e8-86c8-0a002700000e', '668df208-d69f-11e7-b2c2-0a002700000d', 112017, -82764, '2017-10-01', '2017-10-31'),
('bd67cbe8-06bf-11e8-86c8-0a002700000e', '6690ad09-d69f-11e7-b2c2-0a002700000d', 112017, 49074, '2017-10-01', '2017-10-31'),
('bd6a1fbd-06bf-11e8-86c8-0a002700000e', '669367c7-d69f-11e7-b2c2-0a002700000d', 112017, 46984, '2017-10-01', '2017-10-31');

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
('a9f39b8d-06bc-11e8-86c8-0a002700000e', '6690ad09-d69f-11e7-b2c2-0a002700000d', '2017-10-31', 'Máquina da Celepar', 'Chocolate', -375, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
