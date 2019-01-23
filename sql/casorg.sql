-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 23-Jan-2019 às 18:39
-- Versão do servidor: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `casorg`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `contas`
--

DROP TABLE IF EXISTS `contas`;
CREATE TABLE IF NOT EXISTS `contas` (
  `conta_id` varchar(36) NOT NULL,
  `usuario_id` varchar(36) NOT NULL,
  `conta_nome` varchar(150) NOT NULL,
  `conta_tipo` int(11) NOT NULL,
  `conta_inicio` bigint(20) NOT NULL,
  `conta_ativo` tinyint(1) NOT NULL,
  PRIMARY KEY (`conta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `contas`
--

INSERT INTO `contas` (`conta_id`, `usuario_id`, `conta_nome`, `conta_tipo`, `conta_inicio`, `conta_ativo`) VALUES
('c4b76225-e82d-11e8-88ee-00155d1bc7c0', '5e619cc2-02ed-49dc-9f65-01b9046c88d2', 'Poupança BB Última Parcela', 3, 1670658, 1),
('c4b8d34c-e82d-11e8-88ee-00155d1bc7c0', '5e619cc2-02ed-49dc-9f65-01b9046c88d2', 'Saraiva Visa', 4, 0, 1),
('c4b8d3eb-e82d-11e8-88ee-00155d1bc7c0', '5e619cc2-02ed-49dc-9f65-01b9046c88d2', 'Petrobras Visa', 4, 0, 1),
('c4b8d41e-e82d-11e8-88ee-00155d1bc7c0', '5e619cc2-02ed-49dc-9f65-01b9046c88d2', 'Itaú Uniclass', 2, 1750, 1),
('c4b8d442-e82d-11e8-88ee-00155d1bc7c0', '5e619cc2-02ed-49dc-9f65-01b9046c88d2', 'Poupança Itaú', 3, 99041, 1),
('c4b8d469-e82d-11e8-88ee-00155d1bc7c0', '5e619cc2-02ed-49dc-9f65-01b9046c88d2', 'NuBank MasterCard', 4, 0, 1),
('c4b8d48d-e82d-11e8-88ee-00155d1bc7c0', '5e619cc2-02ed-49dc-9f65-01b9046c88d2', 'NuConta', 2, 550, 1),
('c4b8d4af-e82d-11e8-88ee-00155d1bc7c0', '5e619cc2-02ed-49dc-9f65-01b9046c88d2', 'Conta Next', 2, 56, 1),
('c4b8d4cd-e82d-11e8-88ee-00155d1bc7c0', '5e619cc2-02ed-49dc-9f65-01b9046c88d2', 'Poupança Next', 3, 26578, 1),
('c4b8d4ee-e82d-11e8-88ee-00155d1bc7c0', '5e619cc2-02ed-49dc-9f65-01b9046c88d2', 'Next Visa', 4, 0, 1),
('c4b8d50f-e82d-11e8-88ee-00155d1bc7c0', '5e619cc2-02ed-49dc-9f65-01b9046c88d2', 'Sodexo Refeição', 2, 23959, 1),
('c4b8d533-e82d-11e8-88ee-00155d1bc7c0', '5e619cc2-02ed-49dc-9f65-01b9046c88d2', 'Sodexo Alimentação', 2, 19909, 1),
('d41224a9-e81a-11e8-88ee-00155d1bc7c0', '5e619cc2-02ed-49dc-9f65-01b9046c88d2', 'Dinheiro', 1, 6200, 1),
('d412368f-e81a-11e8-88ee-00155d1bc7c0', '5e619cc2-02ed-49dc-9f65-01b9046c88d2', 'Moedas', 1, 1324, 1),
('d4124616-e81a-11e8-88ee-00155d1bc7c0', '5e619cc2-02ed-49dc-9f65-01b9046c88d2', 'Distribuição', 1, 14500, 1),
('d41254c8-e81a-11e8-88ee-00155d1bc7c0', '5e619cc2-02ed-49dc-9f65-01b9046c88d2', 'Dízimo', 4, 0, 1),
('d4125f8e-e81a-11e8-88ee-00155d1bc7c0', '5e619cc2-02ed-49dc-9f65-01b9046c88d2', 'Conta Digital Inter', 2, 25764, 1),
('d4126bc0-e81a-11e8-88ee-00155d1bc7c0', '5e619cc2-02ed-49dc-9f65-01b9046c88d2', 'Conta BB', 2, 370, 1),
('d4127373-e81a-11e8-88ee-00155d1bc7c0', '5e619cc2-02ed-49dc-9f65-01b9046c88d2', 'Poupança BB', 3, 985438, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `saldos`
--

DROP TABLE IF EXISTS `saldos`;
CREATE TABLE IF NOT EXISTS `saldos` (
  `saldo_id` varchar(36) NOT NULL,
  `conta_id` varchar(36) NOT NULL,
  `saldo_mes` tinyint(4) NOT NULL,
  `saldo_ano` smallint(6) NOT NULL,
  `saldo_valor` bigint(20) NOT NULL,
  `saldo_atualizacao` datetime NOT NULL,
  PRIMARY KEY (`saldo_id`),
  UNIQUE KEY `UN_saldo_mes_ano` (`conta_id`,`saldo_mes`,`saldo_ano`),
  KEY `conta_id` (`conta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `saldos`
--

INSERT INTO `saldos` (`saldo_id`, `conta_id`, `saldo_mes`, `saldo_ano`, `saldo_valor`, `saldo_atualizacao`) VALUES
('3fa24914-fa5a-11e8-af49-00155d1bc7c0', 'c4b8d34c-e82d-11e8-88ee-00155d1bc7c0', 12, 2018, 23564, '2018-12-07 17:56:36'),
('3fab24f0-fa5a-11e8-af49-00155d1bc7c0', 'c4b8d3eb-e82d-11e8-88ee-00155d1bc7c0', 12, 2018, 10790, '2018-12-07 17:56:36'),
('3fb51388-fa5a-11e8-af49-00155d1bc7c0', 'c4b8d41e-e82d-11e8-88ee-00155d1bc7c0', 11, 2018, -73250, '2018-12-07 17:56:36'),
('3fbb316d-fa5a-11e8-af49-00155d1bc7c0', 'c4b8d41e-e82d-11e8-88ee-00155d1bc7c0', 12, 2018, -244250, '2018-12-07 17:56:36'),
('3fc37b03-fa5a-11e8-af49-00155d1bc7c0', 'c4b8d4af-e82d-11e8-88ee-00155d1bc7c0', 12, 2018, 7056, '2018-12-07 17:56:36'),
('3fcc9278-fa5a-11e8-af49-00155d1bc7c0', 'd41224a9-e81a-11e8-88ee-00155d1bc7c0', 11, 2018, 7700, '2018-12-07 17:56:36'),
('3fd0d5f2-fa5a-11e8-af49-00155d1bc7c0', 'd41224a9-e81a-11e8-88ee-00155d1bc7c0', 12, 2018, 3930, '2018-12-07 17:56:36'),
('3fda1b71-fa5a-11e8-af49-00155d1bc7c0', 'd412368f-e81a-11e8-88ee-00155d1bc7c0', 12, 2018, 1339, '2018-12-07 17:56:36'),
('3fe31d07-fa5a-11e8-af49-00155d1bc7c0', 'd4124616-e81a-11e8-88ee-00155d1bc7c0', 12, 2018, 4500, '2018-12-07 17:56:37'),
('3fe7d18c-fa5a-11e8-af49-00155d1bc7c0', 'd41254c8-e81a-11e8-88ee-00155d1bc7c0', 11, 2018, -8139, '2018-12-07 17:56:37'),
('3fef9651-fa5a-11e8-af49-00155d1bc7c0', 'd41254c8-e81a-11e8-88ee-00155d1bc7c0', 12, 2018, -1360, '2018-12-07 17:56:37'),
('3ff71116-fa5a-11e8-af49-00155d1bc7c0', 'd4125f8e-e81a-11e8-88ee-00155d1bc7c0', 12, 2018, 26565, '2018-12-07 17:56:37'),
('3ffc805a-fa5a-11e8-af49-00155d1bc7c0', 'd4126bc0-e81a-11e8-88ee-00155d1bc7c0', 11, 2018, 2870, '2018-12-07 17:56:37'),
('40011f8c-fa5a-11e8-af49-00155d1bc7c0', 'd4126bc0-e81a-11e8-88ee-00155d1bc7c0', 12, 2018, 0, '2018-12-07 17:56:37'),
('4007f0e4-fa5a-11e8-af49-00155d1bc7c0', 'd4127373-e81a-11e8-88ee-00155d1bc7c0', 12, 2018, 990365, '2018-12-07 17:56:37');

-- --------------------------------------------------------

--
-- Estrutura da tabela `transacoes`
--

DROP TABLE IF EXISTS `transacoes`;
CREATE TABLE IF NOT EXISTS `transacoes` (
  `transacao_id` varchar(36) NOT NULL,
  `conta_id` varchar(36) NOT NULL,
  `transacao_data` date NOT NULL,
  `transacao_quem` varchar(250) NOT NULL,
  `transacao_descricao` varchar(1000) NOT NULL,
  `transacao_valor` bigint(20) NOT NULL,
  `transacao_tags` varchar(150) NOT NULL,
  `transacao_status` int(11) NOT NULL,
  `conta_para` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`transacao_id`),
  KEY `conta_id` (`conta_id`),
  KEY `conta_para` (`conta_para`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `transacoes`
--

INSERT INTO `transacoes` (`transacao_id`, `conta_id`, `transacao_data`, `transacao_quem`, `transacao_descricao`, `transacao_valor`, `transacao_tags`, `transacao_status`, `conta_para`) VALUES
('2fb9116c-f732-11e8-af49-00155d1bc7c0', 'c4b8d41e-e82d-11e8-88ee-00155d1bc7c0', '2018-10-31', '', '', -75000, 'Saque', 1, 'd41224a9-e81a-11e8-88ee-00155d1bc7c0'),
('2fbab3cc-f732-11e8-af49-00155d1bc7c0', 'd41224a9-e81a-11e8-88ee-00155d1bc7c0', '2018-10-31', '', '', -75000, 'Dízimo', 1, 'd41254c8-e81a-11e8-88ee-00155d1bc7c0'),
('2fbab4e6-f732-11e8-af49-00155d1bc7c0', 'd41224a9-e81a-11e8-88ee-00155d1bc7c0', '2018-10-31', 'Cláudia Igreja', 'Dinheiro para pagar cachorro-quente', 1500, 'Ganhos', 1, NULL),
('2fbab572-f732-11e8-af49-00155d1bc7c0', 'd41224a9-e81a-11e8-88ee-00155d1bc7c0', '2018-11-01', 'Mãe', 'Parte da máquina de cortar grama (2/4)', -5000, 'Parcelado', 1, NULL),
('2fbab680-f732-11e8-af49-00155d1bc7c0', 'd4125f8e-e81a-11e8-88ee-00155d1bc7c0', '2018-11-01', '', '', -9000, 'Saque', 1, 'd41224a9-e81a-11e8-88ee-00155d1bc7c0'),
('2fbab718-f732-11e8-af49-00155d1bc7c0', 'd41224a9-e81a-11e8-88ee-00155d1bc7c0', '2018-11-04', '', '', -8139, 'Dízimo', 1, 'd41254c8-e81a-11e8-88ee-00155d1bc7c0'),
('2fbab7ab-f732-11e8-af49-00155d1bc7c0', 'd41224a9-e81a-11e8-88ee-00155d1bc7c0', '2018-11-04', 'ISJC Curitiba', 'Ofertas', -861, 'Ofertas', 1, NULL),
('2fbab87d-f732-11e8-af49-00155d1bc7c0', 'd41224a9-e81a-11e8-88ee-00155d1bc7c0', '2018-11-05', 'Pop House', 'Castanhas', -935, 'Supermercado', 1, NULL),
('2fbab9b0-f732-11e8-af49-00155d1bc7c0', 'd41224a9-e81a-11e8-88ee-00155d1bc7c0', '2018-11-07', '', '', -40, 'Dízimo', 1, 'd41254c8-e81a-11e8-88ee-00155d1bc7c0'),
('2fd40e14-f732-11e8-af49-00155d1bc7c0', 'd41224a9-e81a-11e8-88ee-00155d1bc7c0', '2018-11-07', 'ISJC Curitiba', 'Ofertas', -10, 'Ofertas', 1, NULL),
('2fd40fea-f732-11e8-af49-00155d1bc7c0', 'd41224a9-e81a-11e8-88ee-00155d1bc7c0', '2018-11-08', '', '', -15, 'Transferência', 1, 'd412368f-e81a-11e8-88ee-00155d1bc7c0'),
('2fd4106d-f732-11e8-af49-00155d1bc7c0', 'd41224a9-e81a-11e8-88ee-00155d1bc7c0', '2018-11-08', 'Mãe', 'Pagamento da água', 6600, 'Ganhos', 1, NULL),
('2fd410ec-f732-11e8-af49-00155d1bc7c0', 'c4b8d41e-e82d-11e8-88ee-00155d1bc7c0', '2018-11-09', '', '', -9000, 'Saque', 1, 'd41224a9-e81a-11e8-88ee-00155d1bc7c0'),
('2fd41166-f732-11e8-af49-00155d1bc7c0', 'd41224a9-e81a-11e8-88ee-00155d1bc7c0', '2018-11-10', 'ISJC Curitiba', 'Viagem para Florianópolis', -8000, 'Gastos', 1, NULL),
('2fd411e6-f732-11e8-af49-00155d1bc7c0', 'd41224a9-e81a-11e8-88ee-00155d1bc7c0', '2018-11-11', 'Livraria do Marlon', 'A Cura da Lepra', -2100, 'Gastos', 1, NULL),
('2fd41266-f732-11e8-af49-00155d1bc7c0', 'd41224a9-e81a-11e8-88ee-00155d1bc7c0', '2018-11-09', '', '', -100, 'Transferência', 1, 'd412368f-e81a-11e8-88ee-00155d1bc7c0'),
('2fd412f5-f732-11e8-af49-00155d1bc7c0', 'd41224a9-e81a-11e8-88ee-00155d1bc7c0', '2018-11-11', '', '', -100, 'Transferência', 1, 'd412368f-e81a-11e8-88ee-00155d1bc7c0'),
('2fd4137a-f732-11e8-af49-00155d1bc7c0', 'd41224a9-e81a-11e8-88ee-00155d1bc7c0', '2018-11-12', 'Estacionamento Lysimaco', 'Lavagem do carro', -5000, 'Carro', 1, NULL),
('2fd41493-f732-11e8-af49-00155d1bc7c0', 'd41224a9-e81a-11e8-88ee-00155d1bc7c0', '2018-11-14', 'Compueletrom', 'Cabo SATA III', -500, 'Gastos', 1, NULL),
('2fd41588-f732-11e8-af49-00155d1bc7c0', 'd41224a9-e81a-11e8-88ee-00155d1bc7c0', '2018-11-14', '', '', -660, 'Dízimo', 1, 'd41254c8-e81a-11e8-88ee-00155d1bc7c0'),
('2fd415fa-f732-11e8-af49-00155d1bc7c0', 'd41224a9-e81a-11e8-88ee-00155d1bc7c0', '2018-11-14', 'ISJC Curitiba', 'Ofertas', -340, 'Ofertas', 1, NULL),
('2fd4165d-f732-11e8-af49-00155d1bc7c0', 'd41224a9-e81a-11e8-88ee-00155d1bc7c0', '2018-11-15', 'Rafael Kanheski', 'Divisão do refri', 1000, 'Ganhos', 1, NULL),
('2fd4174b-f732-11e8-af49-00155d1bc7c0', 'd412368f-e81a-11e8-88ee-00155d1bc7c0', '2018-11-17', '', '', -200, 'Transferência', 1, 'd41224a9-e81a-11e8-88ee-00155d1bc7c0'),
('2fd4183b-f732-11e8-af49-00155d1bc7c0', 'd41224a9-e81a-11e8-88ee-00155d1bc7c0', '2018-11-17', '', '', -100, 'Dízimo', 1, 'd41254c8-e81a-11e8-88ee-00155d1bc7c0'),
('2fd418c1-f732-11e8-af49-00155d1bc7c0', 'd41224a9-e81a-11e8-88ee-00155d1bc7c0', '2018-11-17', 'ISJC Curitiba', 'Ofertas', -100, 'Ofertas', 1, NULL),
('2fd4193f-f732-11e8-af49-00155d1bc7c0', 'd41224a9-e81a-11e8-88ee-00155d1bc7c0', '2018-11-21', 'Kafee Café e Arte', 'Lanche', -1350, 'Comer Fora', 1, NULL),
('2fd419b3-f732-11e8-af49-00155d1bc7c0', 'd41224a9-e81a-11e8-88ee-00155d1bc7c0', '2018-11-21', '', '', -150, 'Dízimo', 1, 'd41254c8-e81a-11e8-88ee-00155d1bc7c0'),
('2fd41a3c-f732-11e8-af49-00155d1bc7c0', 'd4124616-e81a-11e8-88ee-00155d1bc7c0', '2018-11-23', '', '', -10000, 'Transferência', 1, 'd41224a9-e81a-11e8-88ee-00155d1bc7c0'),
('2fd41aac-f732-11e8-af49-00155d1bc7c0', 'd41224a9-e81a-11e8-88ee-00155d1bc7c0', '2018-11-24', 'Lancheria do Encontro (Cachoeira do Sul-RS)', 'Almoço', -2900, 'Comer Fora', 1, NULL),
('2fd41b37-f732-11e8-af49-00155d1bc7c0', 'd41224a9-e81a-11e8-88ee-00155d1bc7c0', '2018-11-25', '', '', -2100, 'Dízimo', 1, 'd41254c8-e81a-11e8-88ee-00155d1bc7c0'),
('2fd41bb9-f732-11e8-af49-00155d1bc7c0', 'd41224a9-e81a-11e8-88ee-00155d1bc7c0', '2018-11-26', 'Pop House', 'Castanhas', -1070, 'Supermercado', 1, NULL),
('743c8461-fa51-11e8-af49-00155d1bc7c0', 'd4126bc0-e81a-11e8-88ee-00155d1bc7c0', '2018-10-30', 'Nota Paraná', 'Resgate dos valores', 2500, 'Ganhos', 1, NULL),
('743e7e48-fa51-11e8-af49-00155d1bc7c0', 'd4126bc0-e81a-11e8-88ee-00155d1bc7c0', '2018-11-07', '', '', -23564, 'Pagamento Cartão', 1, 'c4b8d34c-e82d-11e8-88ee-00155d1bc7c0'),
('743e7f25-fa51-11e8-af49-00155d1bc7c0', 'd4126bc0-e81a-11e8-88ee-00155d1bc7c0', '2018-11-14', '', '', -10790, 'Pagamento Cartão', 1, 'c4b8d3eb-e82d-11e8-88ee-00155d1bc7c0'),
('743e7fb0-fa51-11e8-af49-00155d1bc7c0', 'd4126bc0-e81a-11e8-88ee-00155d1bc7c0', '2018-11-19', 'Marlon Volz', 'Parcela do Clio (42/100) e Wii U (11/12)', 31102, 'Ganhos', 1, NULL),
('743e8059-fa51-11e8-af49-00155d1bc7c0', 'd4126bc0-e81a-11e8-88ee-00155d1bc7c0', '2018-11-24', 'Restaurante Papagaio (Cachoeira do Sul-RS)', 'Lanche', -2000, 'Comer Fora', 1, NULL),
('743e819a-fa51-11e8-af49-00155d1bc7c0', 'd4126bc0-e81a-11e8-88ee-00155d1bc7c0', '2018-11-24', 'Livraria da Igreja em Cachoeira do Sul-RS', 'Placa da agenda do grupo familiar', -1500, 'Gastos', 1, NULL),
('743e829a-fa51-11e8-af49-00155d1bc7c0', 'd4126bc0-e81a-11e8-88ee-00155d1bc7c0', '2018-11-24', 'Livreiro Sião (Cachoeira do Sul-RS)', 'Calendário', -2500, 'Gastos', 1, NULL),
('743e83a4-fa51-11e8-af49-00155d1bc7c0', 'd4126bc0-e81a-11e8-88ee-00155d1bc7c0', '2018-11-24', 'Restaurante Papagaio (Cachoeira do Sul-RS)', 'Lanche', -2400, 'Comer Fora', 1, NULL),
('743e841d-fa51-11e8-af49-00155d1bc7c0', 'd4126bc0-e81a-11e8-88ee-00155d1bc7c0', '2018-11-25', 'Carrefour', 'Coisas para Almoço, Doces e Régua Elétrica', -1238, 'Supermercado', 1, NULL),
('743e8640-fa51-11e8-af49-00155d1bc7c0', 'd4126bc0-e81a-11e8-88ee-00155d1bc7c0', '2018-11-26', 'Funcel', 'Almoço', -2800, 'Comer Fora', 1, NULL),
('743e8742-fa51-11e8-af49-00155d1bc7c0', 'd4126bc0-e81a-11e8-88ee-00155d1bc7c0', '2018-11-26', 'Funcel', 'Lanche', -550, 'Comer Fora', 1, NULL),
('7450f43d-fa51-11e8-af49-00155d1bc7c0', 'd4126bc0-e81a-11e8-88ee-00155d1bc7c0', '2018-11-27', 'Funcel', 'Lanche', -1990, 'Comer Fora', 1, NULL),
('7450f563-fa51-11e8-af49-00155d1bc7c0', 'd4126bc0-e81a-11e8-88ee-00155d1bc7c0', '2018-11-27', 'Posto Presidente', 'Álcool', -10000, 'Carro', 1, NULL),
('7450f750-fa51-11e8-af49-00155d1bc7c0', 'd4126bc0-e81a-11e8-88ee-00155d1bc7c0', '2018-11-27', 'McDonalds', 'Sorvete', -1940, 'Comer Fora', 1, NULL),
('8cccc4ec-f998-11e8-af49-00155d1bc7c0', 'c4b8d41e-e82d-11e8-88ee-00155d1bc7c0', '2018-11-05', '', '', -160000, 'Transferência', 1, 'd4125f8e-e81a-11e8-88ee-00155d1bc7c0'),
('8ccedf6b-f998-11e8-af49-00155d1bc7c0', 'd4125f8e-e81a-11e8-88ee-00155d1bc7c0', '2018-11-07', '', '', -32000, 'Transferência', 1, 'd4126bc0-e81a-11e8-88ee-00155d1bc7c0'),
('8ccee18e-f998-11e8-af49-00155d1bc7c0', 'd4125f8e-e81a-11e8-88ee-00155d1bc7c0', '2018-11-07', '', '', -7000, 'Transferência', 1, 'c4b8d4af-e82d-11e8-88ee-00155d1bc7c0'),
('8ccee22b-f998-11e8-af49-00155d1bc7c0', 'd4125f8e-e81a-11e8-88ee-00155d1bc7c0', '2018-11-07', 'Prefeitura Municipal de Curitiba', 'IPTU 2018 (10/10)', -14146, 'Parcelado', 1, NULL),
('8ccee36e-f998-11e8-af49-00155d1bc7c0', 'd4125f8e-e81a-11e8-88ee-00155d1bc7c0', '2018-11-07', 'Ministério Menorah', 'Oferta Apostólica', -42905, 'Ofertas', 1, NULL),
('8ccee42a-f998-11e8-af49-00155d1bc7c0', 'd4125f8e-e81a-11e8-88ee-00155d1bc7c0', '2018-11-07', 'Oi', 'Telefone fixo', -3989, 'Fixos', 1, NULL),
('8ccee4f5-f998-11e8-af49-00155d1bc7c0', 'd4125f8e-e81a-11e8-88ee-00155d1bc7c0', '2018-11-07', 'Claro', 'Internet móvel', -12997, 'Fixos', 1, NULL),
('8ccee581-f998-11e8-af49-00155d1bc7c0', 'd4125f8e-e81a-11e8-88ee-00155d1bc7c0', '2018-11-07', 'Vivo', 'Telefone móvel pós', -12329, 'Fixos', 1, NULL),
('8ccee6a7-f998-11e8-af49-00155d1bc7c0', 'd4125f8e-e81a-11e8-88ee-00155d1bc7c0', '2018-11-07', 'Kafee Café e Arte', 'Lanche', -2300, 'Comer Fora', 1, NULL),
('8ccee73b-f998-11e8-af49-00155d1bc7c0', 'd4125f8e-e81a-11e8-88ee-00155d1bc7c0', '2018-11-08', 'Sanepar', 'Água', -6595, 'Gastos', 1, NULL),
('8ccee872-f998-11e8-af49-00155d1bc7c0', 'd4125f8e-e81a-11e8-88ee-00155d1bc7c0', '2018-11-12', 'Restaurante Rudnick', 'Lanche', -1958, 'Comer Fora', 1, NULL),
('8ccee9aa-f998-11e8-af49-00155d1bc7c0', 'd4125f8e-e81a-11e8-88ee-00155d1bc7c0', '2018-11-12', 'Toca das Ostras (São José-SC)', 'Almoço', -2090, 'Comer Fora', 1, NULL),
('8cceeb5f-f998-11e8-af49-00155d1bc7c0', 'd4125f8e-e81a-11e8-88ee-00155d1bc7c0', '2018-11-12', 'Toca das Ostras (São José-SC)', 'Jantar', -1490, 'Comer Fora', 1, NULL),
('8cceec04-f998-11e8-af49-00155d1bc7c0', 'd4125f8e-e81a-11e8-88ee-00155d1bc7c0', '2018-11-20', 'Posto Presidente', 'Álcool', -10000, 'Carro', 1, NULL),
('8cceec82-f998-11e8-af49-00155d1bc7c0', 'd4126bc0-e81a-11e8-88ee-00155d1bc7c0', '2018-11-28', '', '', -4700, 'Transferência', 1, 'd4125f8e-e81a-11e8-88ee-00155d1bc7c0'),
('8ce0264e-f998-11e8-af49-00155d1bc7c0', 'c4b8d41e-e82d-11e8-88ee-00155d1bc7c0', '2018-11-28', '', '', -2000, 'Transferência', 1, 'd4125f8e-e81a-11e8-88ee-00155d1bc7c0'),
('8ce02a24-f998-11e8-af49-00155d1bc7c0', 'd4125f8e-e81a-11e8-88ee-00155d1bc7c0', '2018-11-29', 'Ministério Menorah', 'Oferta Apostólica', -7100, 'Ofertas', 1, NULL),
('e1673318-fa59-11e8-af49-00155d1bc7c0', 'd4127373-e81a-11e8-88ee-00155d1bc7c0', '2018-11-13', 'Banco do Brasil', 'Rendimentos', 2806, 'Rendimentos', 1, NULL),
('e168c4b2-fa59-11e8-af49-00155d1bc7c0', 'd4127373-e81a-11e8-88ee-00155d1bc7c0', '2018-11-26', 'Banco do Brasil', 'Rendimentos', 2121, 'Rendimentos', 1, NULL),
('f770ab34-f7f2-11e8-af49-00155d1bc7c0', 'd41254c8-e81a-11e8-88ee-00155d1bc7c0', '2018-10-30', '', 'Parte do salário', -66865, 'Gerador Dízimo', 1, NULL),
('f772e9fc-f7f2-11e8-af49-00155d1bc7c0', 'd41254c8-e81a-11e8-88ee-00155d1bc7c0', '2018-10-30', '', 'Parte do vale-refeição', -4933, 'Gerador Dízimo', 1, NULL),
('f772eb10-f7f2-11e8-af49-00155d1bc7c0', 'd41254c8-e81a-11e8-88ee-00155d1bc7c0', '2018-10-30', '', 'Parte do vale-alimentação', -4933, 'Gerador Dízimo', 1, NULL),
('f772eb9f-f7f2-11e8-af49-00155d1bc7c0', 'd41254c8-e81a-11e8-88ee-00155d1bc7c0', '2018-10-30', '', 'Parte do resto dos benefícios', -5000, 'Gerador Dízimo', 1, NULL),
('f772ec30-f7f2-11e8-af49-00155d1bc7c0', 'd41254c8-e81a-11e8-88ee-00155d1bc7c0', '2018-10-30', '', 'Parte dos rendimentos Itaú Uniclass', -3, 'Gerador Dízimo', 1, NULL),
('f772ecad-f7f2-11e8-af49-00155d1bc7c0', 'd41254c8-e81a-11e8-88ee-00155d1bc7c0', '2018-10-30', '', 'Parte dos rendimentos Poupança Itaú', -37, 'Gerador Dízimo', 1, NULL),
('f772ed16-f7f2-11e8-af49-00155d1bc7c0', 'd41254c8-e81a-11e8-88ee-00155d1bc7c0', '2018-10-30', '', 'Parte dos rendimentos Poupança BB', -490, 'Gerador Dízimo', 1, NULL),
('f772ed7a-f7f2-11e8-af49-00155d1bc7c0', 'd41254c8-e81a-11e8-88ee-00155d1bc7c0', '2018-10-30', '', 'Parte dos rendimentos Poupança BB Ult. Parc.', -609, 'Gerador Dízimo', 1, NULL),
('f772ee7a-f7f2-11e8-af49-00155d1bc7c0', 'd41254c8-e81a-11e8-88ee-00155d1bc7c0', '2018-10-30', '', 'Parte dos rendimentos NuConta', -11, 'Gerador Dízimo', 1, NULL),
('f772efce-f7f2-11e8-af49-00155d1bc7c0', 'd41254c8-e81a-11e8-88ee-00155d1bc7c0', '2018-10-30', '', 'Parte dos rendimentos Poupança Next', -8, 'Gerador Dízimo', 1, NULL),
('f772f130-f7f2-11e8-af49-00155d1bc7c0', 'd41254c8-e81a-11e8-88ee-00155d1bc7c0', '2018-10-30', '', 'Parte do dinheiro resgatado da Nota Paraná', -250, 'Gerador Dízimo', 1, NULL),
('f7894a3e-f7f2-11e8-af49-00155d1bc7c0', 'd41254c8-e81a-11e8-88ee-00155d1bc7c0', '2018-11-06', '', 'Parte da sfiha paga pela Eliane', -40, 'Gerador Dízimo', 1, NULL),
('f7894b82-f7f2-11e8-af49-00155d1bc7c0', 'd41254c8-e81a-11e8-88ee-00155d1bc7c0', '2018-11-08', '', 'Parte do dinheiro do pagamento da água', -660, 'Gerador Dízimo', 1, NULL),
('f7894d02-f7f2-11e8-af49-00155d1bc7c0', 'd41254c8-e81a-11e8-88ee-00155d1bc7c0', '2018-11-15', '', 'Parte do dinheiro que o Rafael deu pelo refri', -100, 'Gerador Dízimo', 1, NULL),
('f7894e37-f7f2-11e8-af49-00155d1bc7c0', 'd41254c8-e81a-11e8-88ee-00155d1bc7c0', '2018-11-19', '', 'Parte do dinheiro do Clio e do Wii U que o Marlon pagou', -3110, 'Gerador Dízimo', 1, NULL),
('f7894ed7-f7f2-11e8-af49-00155d1bc7c0', 'd41254c8-e81a-11e8-88ee-00155d1bc7c0', '2018-11-21', '', 'Parte do IPTU do Marcel', -500, 'Gerador Dízimo', 1, NULL);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `saldos`
--
ALTER TABLE `saldos`
  ADD CONSTRAINT `FK_saldo_conta` FOREIGN KEY (`conta_id`) REFERENCES `contas` (`conta_id`);

--
-- Limitadores para a tabela `transacoes`
--
ALTER TABLE `transacoes`
  ADD CONSTRAINT `FK_conta_transacao` FOREIGN KEY (`conta_id`) REFERENCES `contas` (`conta_id`),
  ADD CONSTRAINT `FK_transf_transacao` FOREIGN KEY (`conta_id`) REFERENCES `contas` (`conta_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
