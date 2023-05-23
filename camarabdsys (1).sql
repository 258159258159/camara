-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 28-Out-2022 às 11:25
-- Versão do servidor: 8.0.27
-- versão do PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `camarabdsys`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `anexos`
--

DROP TABLE IF EXISTS `anexos`;
CREATE TABLE IF NOT EXISTS `anexos` (
  `idAnexos` int NOT NULL AUTO_INCREMENT,
  `anexo` varchar(45) DEFAULT NULL,
  `thumb` varchar(45) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `path` varchar(300) DEFAULT NULL,
  `os_id` int NOT NULL,
  PRIMARY KEY (`idAnexos`),
  KEY `fk_anexos_os1` (`os_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `anotacoes_os`
--

DROP TABLE IF EXISTS `anotacoes_os`;
CREATE TABLE IF NOT EXISTS `anotacoes_os` (
  `idAnotacoes` int NOT NULL AUTO_INCREMENT,
  `anotacao` varchar(255) NOT NULL,
  `data_hora` datetime NOT NULL,
  `os_id` int NOT NULL,
  PRIMARY KEY (`idAnotacoes`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

DROP TABLE IF EXISTS `categorias`;
CREATE TABLE IF NOT EXISTS `categorias` (
  `idCategorias` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(80) DEFAULT NULL,
  `cadastro` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `tipo` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idCategorias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('2e4des04iq1u89f32iru8tljm9umk902', '::1', 1653519394, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333531393336343b6e6f6d657c733a31333a2241646d696e6973747261646f72223b656d61696c7c733a31393a227368656c746f6e407368656c746f6e2e636f6d223b75726c5f696d6167655f757365727c4e3b69647c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('hpjamtd9afvaakl062hii5rc6vtp4jtl', '::1', 1666703438, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636363730333433383b6e6f6d657c733a31333a2241646d696e6973747261646f72223b656d61696c7c733a31393a227368656c746f6e407368656c746f6e2e636f6d223b75726c5f696d6167655f757365727c4e3b69647c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('rloit66rv8fu9djkcn1hfa8l8icdai8u', '::1', 1666703815, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636363730333831353b6e6f6d657c733a31333a2241646d696e6973747261646f72223b656d61696c7c733a31393a227368656c746f6e407368656c746f6e2e636f6d223b75726c5f696d6167655f757365727c4e3b69647c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('o4mmi4b6ihccdjjrnpvsild5jqd7qkqu', '::1', 1666704207, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636363730343230373b6e6f6d657c733a31333a2241646d696e6973747261646f72223b656d61696c7c733a31393a227368656c746f6e407368656c746f6e2e636f6d223b75726c5f696d6167655f757365727c4e3b69647c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('ama5458jc97icnq14hb88tr4gbcodj1k', '::1', 1642599142, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323539393134323b6e6f6d657c733a31333a2241646d696e6973747261646f72223b656d61696c7c733a31393a227368656c746f6e407368656c746f6e2e636f6d223b75726c5f696d6167655f757365727c4e3b69647c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('49s333ep0gn2looo49cu052ccscc46in', '::1', 1642599173, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323539393134323b6e6f6d657c733a31333a2241646d696e6973747261646f72223b656d61696c7c733a31393a227368656c746f6e407368656c746f6e2e636f6d223b75726c5f696d6167655f757365727c4e3b69647c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('drsg0p5pnomilsbikktp0d5e814gi1ma', '::1', 1642685966, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323638353936363b6e6f6d657c733a31393a22416e647265696120416c7665732053696c7661223b656d61696c7c733a31393a22616e647265696140616e64726569612e636f6d223b75726c5f696d6167655f757365727c4e3b69647c733a313a2232223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('biik65euuuctu204f73ls807o3mi90tq', '::1', 1642685973, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323638353936363b6e6f6d657c733a31393a22416e647265696120416c7665732053696c7661223b656d61696c7c733a31393a22616e647265696140616e64726569612e636f6d223b75726c5f696d6167655f757365727c4e3b69647c733a313a2232223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('b4h3m0kom8jlajc0ip914qnkmrjsr8qs', '::1', 1642772599, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323737323539393b6e6f6d657c733a31393a22416e647265696120416c7665732053696c7661223b656d61696c7c733a31393a22616e647265696140616e64726569612e636f6d223b75726c5f696d6167655f757365727c4e3b69647c733a313a2232223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('ob9tbgvq2dqgoq25devev03n0kgu17s3', '::1', 1642772616, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323737323539393b6e6f6d657c733a31393a22416e647265696120416c7665732053696c7661223b656d61696c7c733a31393a22616e647265696140616e64726569612e636f6d223b75726c5f696d6167655f757365727c4e3b69647c733a313a2232223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('09ddbds3vdsad3g97tk9ou4i453hnpcp', '::1', 1642772829, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323737323832393b),
('6o113jt8bo7c12ssrevrrjckvbcgp0i2', '::1', 1642519986, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323531393938363b6e6f6d657c733a31393a22416e647265696120416c7665732053696c7661223b656d61696c7c733a31393a22616e647265696140616e64726569612e636f6d223b75726c5f696d6167655f757365727c4e3b69647c733a313a2232223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('g1r0mijv7drfvalvpmjabijpg3kulrcl', '::1', 1642520298, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323532303239383b6e6f6d657c733a31393a22416e647265696120416c7665732053696c7661223b656d61696c7c733a31393a22616e647265696140616e64726569612e636f6d223b75726c5f696d6167655f757365727c4e3b69647c733a313a2232223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('4ssuqs6u12ovluq9ck8a06929q2ebl8j', '::1', 1642520631, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323532303633313b6e6f6d657c733a31393a22416e647265696120416c7665732053696c7661223b656d61696c7c733a31393a22616e647265696140616e64726569612e636f6d223b75726c5f696d6167655f757365727c4e3b69647c733a313a2232223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('egkoe8141usdnn0hif4b6a7f51vdu3g1', '::1', 1642520772, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323532303737323b),
('nhmio0d39v9l5gsf2v66fun76md27lcc', '::1', 1642594860, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323539343836303b6e6f6d657c733a31393a22416e647265696120416c7665732053696c7661223b656d61696c7c733a31393a22616e647265696140616e64726569612e636f6d223b75726c5f696d6167655f757365727c4e3b69647c733a313a2232223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('t80m21hikj8fer0lnj4899veuct9mgjp', '::1', 1642594902, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323539343836303b6e6f6d657c733a31393a22416e647265696120416c7665732053696c7661223b656d61696c7c733a31393a22616e647265696140616e64726569612e636f6d223b75726c5f696d6167655f757365727c4e3b69647c733a313a2232223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('jvku7e06mnvrl1e8dllsiiurkle50lko', '::1', 1666873361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636363837333336313b6e6f6d657c733a31393a22416e647265696120416c7665732053696c7661223b656d61696c7c733a31393a22616e647265696140616e64726569612e636f6d223b75726c5f696d6167655f757365727c4e3b69647c733a313a2232223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('2vakih0luac8gjaqttpo8oram51m7g71', '::1', 1666873379, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636363837333337393b),
('f1ueaur5odevomfcrs6fnc2pufjbclv3', '::1', 1643115411, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634333131353431313b6e6f6d657c733a31393a22416e647265696120416c7665732053696c7661223b656d61696c7c733a31393a22616e647265696140616e64726569612e636f6d223b75726c5f696d6167655f757365727c4e3b69647c733a313a2232223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('gf4fij23iuoiethclm97tv9pk9k3f30o', '::1', 1643115411, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634333131353431313b),
('ofnsj9fo9kl8as1ssdfcfs77gfljbjbs', '::1', 1643115776, 0x6e6f6d657c733a31393a22416e647265696120416c7665732053696c7661223b656d61696c7c733a31393a22616e647265696140616e64726569612e636f6d223b75726c5f696d6167655f757365727c4e3b69647c733a313a2232223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b5f5f63695f6c6173745f726567656e65726174657c693a313634333131353737363b),
('nutkaelg0ul5n0dp5lojnl1squhqf4va', '::1', 1643202188, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634333230323138383b6e6f6d657c733a31393a22416e647265696120416c7665732053696c7661223b656d61696c7c733a31393a22616e647265696140616e64726569612e636f6d223b75726c5f696d6167655f757365727c4e3b69647c733a313a2232223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('lo17ebj2jgmhmcmaji45f4aasrm1t2pq', '::1', 1643202220, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634333230323138383b6e6f6d657c733a31393a22416e647265696120416c7665732053696c7661223b656d61696c7c733a31393a22616e647265696140616e64726569612e636f6d223b75726c5f696d6167655f757365727c4e3b69647c733a313a2232223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('vq2ii07cokl0ik2s6vo7lhvotrlm117u', '::1', 1643288832, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634333238383833323b6e6f6d657c733a31393a22416e647265696120416c7665732053696c7661223b656d61696c7c733a31393a22616e647265696140616e64726569612e636f6d223b75726c5f696d6167655f757365727c4e3b69647c733a313a2232223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('uf6mf72ksb2ja4f9b8kc98odkbaqiqtb', '::1', 1643289189, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634333238393138393b6e6f6d657c733a31393a22416e647265696120416c7665732053696c7661223b656d61696c7c733a31393a22616e647265696140616e64726569612e636f6d223b75726c5f696d6167655f757365727c4e3b69647c733a313a2232223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('90hb1ikmssemcudom3ov8h8cmolj1srp', '::1', 1643288876, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634333238383833323b6e6f6d657c733a31393a22416e647265696120416c7665732053696c7661223b656d61696c7c733a31393a22616e647265696140616e64726569612e636f6d223b75726c5f696d6167655f757365727c4e3b69647c733a313a2232223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('g18erlqds2efa4br3silcltjvkvjihc3', '::1', 1666877071, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636363837373037313b6e6f6d657c733a31393a22416e647265696120416c7665732053696c7661223b656d61696c7c733a31393a22616e647265696140616e64726569612e636f6d223b75726c5f696d6167655f757365727c4e3b69647c733a313a2232223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('9iujl8b0m3d9qs04om2tp117evr3ltqv', '::1', 1666877071, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636363837373037313b),
('b86rlcd6b5v0uiptvg5gpsbf6uoh5lth', '::1', 1666956341, 0x5f5f63695f6c6173745f726567656e65726174657c693a313636363935363334313b);

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `idClientes` int NOT NULL AUTO_INCREMENT,
  `nomeCliente` varchar(255) NOT NULL,
  `sexo` varchar(20) DEFAULT NULL,
  `pessoa_fisica` tinyint(1) NOT NULL DEFAULT '1',
  `documento` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(200) NOT NULL,
  `dataCadastro` date DEFAULT NULL,
  `rua` varchar(70) DEFAULT NULL,
  `numero` varchar(15) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `cep` varchar(20) DEFAULT NULL,
  `contato` varchar(45) DEFAULT NULL,
  `complemento` varchar(45) DEFAULT NULL,
  `fornecedor` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idClientes`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `senha`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`, `contato`, `complemento`, `fornecedor`) VALUES
(1, 'Acai Midia Assessoria E Markting Ltda', NULL, 1, '05.768.493/0001-28', '(99)3538-2064', '(99)99144-0728', 'jonasleitesousa@hotmail.com', '$2y$10$kolpYasmbjellVUGbqLKB.SiBKdGnFJYSXSYPm9.rHU.6/0OYHkQu', '2022-10-25', 'R 10 De Outubro', '815', 'Laranjeiras', 'Acailandia', 'MA', '65930-000', 'Jonas Leite', '', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cobrancas`
--

DROP TABLE IF EXISTS `cobrancas`;
CREATE TABLE IF NOT EXISTS `cobrancas` (
  `idCobranca` int NOT NULL AUTO_INCREMENT,
  `charge_id` varchar(255) DEFAULT NULL,
  `conditional_discount_date` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `custom_id` int DEFAULT NULL,
  `expire_at` date NOT NULL,
  `message` varchar(255) NOT NULL,
  `payment_method` varchar(11) DEFAULT NULL,
  `payment_url` varchar(255) DEFAULT NULL,
  `request_delivery_address` varchar(64) DEFAULT NULL,
  `status` varchar(36) NOT NULL,
  `total` varchar(15) DEFAULT NULL,
  `barcode` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `payment_gateway` varchar(255) DEFAULT NULL,
  `payment` varchar(64) NOT NULL,
  `pdf` varchar(255) DEFAULT NULL,
  `vendas_id` int DEFAULT NULL,
  `os_id` int DEFAULT NULL,
  `clientes_id` int DEFAULT NULL,
  PRIMARY KEY (`idCobranca`),
  KEY `fk_cobrancas_os1` (`os_id`),
  KEY `fk_cobrancas_vendas1` (`vendas_id`),
  KEY `fk_cobrancas_clientes1` (`clientes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estrutura da tabela `configuracoes`
--

DROP TABLE IF EXISTS `configuracoes`;
CREATE TABLE IF NOT EXISTS `configuracoes` (
  `idConfig` int NOT NULL AUTO_INCREMENT,
  `config` varchar(20) NOT NULL,
  `valor` text,
  PRIMARY KEY (`idConfig`),
  UNIQUE KEY `config` (`config`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `configuracoes`
--

INSERT INTO `configuracoes` (`idConfig`, `config`, `valor`) VALUES
(2, 'app_name', 'Map-OS'),
(3, 'app_theme', 'white'),
(4, 'per_page', '10'),
(5, 'os_notification', 'cliente'),
(6, 'control_estoque', '1'),
(7, 'notifica_whats', 'Prezado(a), {CLIENTE_NOME} a OS de nº {NUMERO_OS} teve o status alterado para :{STATUS_OS} segue a descrição {DESCRI_PRODUTOS} com valor total de {VALOR_OS}!\r\n Para mais informações entre em contato conosco.\r\n Atenciosamente, {EMITENTE} {TELEFONE_EMITENTE}.'),
(8, 'control_baixa', '0'),
(9, 'control_editos', '1'),
(10, 'control_datatable', '1'),
(11, 'pix_key', ''),
(12, 'os_status_list', '[\"Aberto\",\"Faturado\",\"Negocia\\u00e7\\u00e3o\",\"Em Andamento\",\"Or\\u00e7amento\",\"Finalizado\",\"Cancelado\",\"Aguardando Pe\\u00e7as\",\"Aprovado\"]'),
(13, 'control_edit_vendas', '1'),
(14, 'email_automatico', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contas`
--

DROP TABLE IF EXISTS `contas`;
CREATE TABLE IF NOT EXISTS `contas` (
  `idContas` int NOT NULL AUTO_INCREMENT,
  `conta` varchar(45) DEFAULT NULL,
  `banco` varchar(45) DEFAULT NULL,
  `numero` varchar(45) DEFAULT NULL,
  `saldo` decimal(10,2) DEFAULT NULL,
  `cadastro` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `tipo` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`idContas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `documentos`
--

DROP TABLE IF EXISTS `documentos`;
CREATE TABLE IF NOT EXISTS `documentos` (
  `idDocumentos` int NOT NULL AUTO_INCREMENT,
  `documento` varchar(70) DEFAULT NULL,
  `descricao` text,
  `file` varchar(100) DEFAULT NULL,
  `path` varchar(300) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `cadastro` date DEFAULT NULL,
  `categoria` varchar(80) DEFAULT NULL,
  `tipo` varchar(15) DEFAULT NULL,
  `tamanho` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idDocumentos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `email_queue`
--

DROP TABLE IF EXISTS `email_queue`;
CREATE TABLE IF NOT EXISTS `email_queue` (
  `id` int NOT NULL AUTO_INCREMENT,
  `to` varchar(255) NOT NULL,
  `cc` varchar(255) DEFAULT NULL,
  `bcc` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `status` enum('pending','sending','sent','failed') DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `headers` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `email_queue`
--

INSERT INTO `email_queue` (`id`, `to`, `cc`, `bcc`, `message`, `status`, `date`, `headers`) VALUES
(1, 'jonasleitesousa@hotmail.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost/CamaraAcailandia/assets/uploads/f72fc24a2f0f0c4fd69e522372ec1c1a.jpg\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 140<br>\n                                Data Inicial: 18/01/2022 <br>\n                                Data Final: 18/01/2022                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Acai Midia Assessoria E Markting Ltda<br>\n                                R 10 De Outubro, 815, Laranjeiras<br>\n                                Acailandia - MA <br>\n                                jonasleitesousa@hotmail.com <br>\n                                (99)99144-0728                            </td>\n\n                            <td style=\"text-align: right\">\n                                Municipio De Acailandia - Camara Municipal <br>\n                                Rua Comercio, 858, Centro<br>\n                                Acailandia - MA CEP: 65930-000 <br>\n                                Responsável: Andreia Alves Silva<br>\n                                andreia@andreia.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Finalizado                </td>\n            </tr>\n\n            \n            \n            \n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2022-01-18 13:25:00', 'a:3:{s:4:\"From\";s:24:\"cmacailandia@hotmail.com\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}'),
(2, 'jonasleitesousa@hotmail.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost/CamaraAcailandia/assets/uploads/f72fc24a2f0f0c4fd69e522372ec1c1a.jpg\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 141<br>\n                                Data Inicial: 19/01/2022 <br>\n                                Data Final: 19/01/2022                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Acai Midia Assessoria E Markting Ltda<br>\n                                R 10 De Outubro, 815, Laranjeiras<br>\n                                Acailandia - MA <br>\n                                jonasleitesousa@hotmail.com <br>\n                                (99)99144-0728                            </td>\n\n                            <td style=\"text-align: right\">\n                                Municipio De Acailandia - Camara Municipal <br>\n                                Rua Comercio, 858, Centro<br>\n                                Acailandia - MA CEP: 65930-000 <br>\n                                Responsável: Administrador<br>\n                                shelton@shelton.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Finalizado                </td>\n            </tr>\n\n            \n            \n            \n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2022-01-19 13:32:40', 'a:3:{s:4:\"From\";s:24:\"cmacailandia@hotmail.com\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}'),
(3, 'jonasleitesousa@hotmail.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost/CamaraAcailandia/assets/uploads/f72fc24a2f0f0c4fd69e522372ec1c1a.jpg\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 142<br>\n                                Data Inicial: 18/01/2022 <br>\n                                Data Final: 18/01/2022                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Acai Midia Assessoria E Markting Ltda<br>\n                                R 10 De Outubro, 815, Laranjeiras<br>\n                                Acailandia - MA <br>\n                                jonasleitesousa@hotmail.com <br>\n                                (99)99144-0728                            </td>\n\n                            <td style=\"text-align: right\">\n                                Municipio De Acailandia - Camara Municipal <br>\n                                Rua Comercio, 858, Centro<br>\n                                Acailandia - MA CEP: 65930-000 <br>\n                                Responsável: Andreia Alves Silva<br>\n                                andreia@andreia.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Finalizado                </td>\n            </tr>\n\n            \n            \n            \n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2022-01-18 13:37:26', 'a:3:{s:4:\"From\";s:24:\"cmacailandia@hotmail.com\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}'),
(4, 'jonasleitesousa@hotmail.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost/CamaraAcailandia/assets/uploads/f72fc24a2f0f0c4fd69e522372ec1c1a.jpg\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 143<br>\n                                Data Inicial: 20/01/2022 <br>\n                                Data Final: 20/01/2022                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Acai Midia Assessoria E Markting Ltda<br>\n                                R 10 De Outubro, 815, Laranjeiras<br>\n                                Acailandia - MA <br>\n                                jonasleitesousa@hotmail.com <br>\n                                (99)99144-0728                            </td>\n\n                            <td style=\"text-align: right\">\n                                Municipio De Acailandia - Camara Municipal <br>\n                                Rua Comercio, 858, Centro<br>\n                                Acailandia - MA CEP: 65930-000 <br>\n                                Responsável: Andreia Alves Silva<br>\n                                andreia@andreia.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Finalizado                </td>\n            </tr>\n\n            \n            \n            \n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2022-01-20 13:41:28', 'a:3:{s:4:\"From\";s:24:\"cmacailandia@hotmail.com\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}'),
(5, 'jonasleitesousa@hotmail.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost/CamaraAcailandia/assets/uploads/f72fc24a2f0f0c4fd69e522372ec1c1a.jpg\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 144<br>\n                                Data Inicial: 21/01/2022 <br>\n                                Data Final: 21/01/2022                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Acai Midia Assessoria E Markting Ltda<br>\n                                R 10 De Outubro, 815, Laranjeiras<br>\n                                Acailandia - MA <br>\n                                jonasleitesousa@hotmail.com <br>\n                                (99)99144-0728                            </td>\n\n                            <td style=\"text-align: right\">\n                                Municipio De Acailandia - Camara Municipal <br>\n                                Rua Comercio, 858, Centro<br>\n                                Acailandia - MA CEP: 65930-000 <br>\n                                Responsável: Andreia Alves Silva<br>\n                                andreia@andreia.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Finalizado                </td>\n            </tr>\n\n            \n            \n            \n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2022-01-21 13:45:07', 'a:3:{s:4:\"From\";s:24:\"cmacailandia@hotmail.com\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}'),
(6, 'jonasleitesousa@hotmail.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost/CamaraAcailandia/assets/uploads/f72fc24a2f0f0c4fd69e522372ec1c1a.jpg\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 145<br>\n                                Data Inicial: 18/01/2022 <br>\n                                Data Final: 18/01/2022                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Acai Midia Assessoria E Markting Ltda<br>\n                                R 10 De Outubro, 815, Laranjeiras<br>\n                                Acailandia - MA <br>\n                                jonasleitesousa@hotmail.com <br>\n                                (99)99144-0728                            </td>\n\n                            <td style=\"text-align: right\">\n                                Municipio De Acailandia - Camara Municipal <br>\n                                Rua Comercio, 858, Centro<br>\n                                Acailandia - MA CEP: 65930-000 <br>\n                                Responsável: Andreia Alves Silva<br>\n                                andreia@andreia.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Finalizado                </td>\n            </tr>\n\n            \n            \n            \n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2022-01-18 15:29:38', 'a:3:{s:4:\"From\";s:24:\"cmacailandia@hotmail.com\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}'),
(7, 'jonasleitesousa@hotmail.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost/CamaraAcailandia/assets/uploads/f72fc24a2f0f0c4fd69e522372ec1c1a.jpg\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 146<br>\n                                Data Inicial: 18/01/2022 <br>\n                                Data Final: 18/01/2022                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Acai Midia Assessoria E Markting Ltda<br>\n                                R 10 De Outubro, 815, Laranjeiras<br>\n                                Acailandia - MA <br>\n                                jonasleitesousa@hotmail.com <br>\n                                (99)99144-0728                            </td>\n\n                            <td style=\"text-align: right\">\n                                Municipio De Acailandia - Camara Municipal <br>\n                                Rua Comercio, 858, Centro<br>\n                                Acailandia - MA CEP: 65930-000 <br>\n                                Responsável: Andreia Alves Silva<br>\n                                andreia@andreia.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Finalizado                </td>\n            </tr>\n\n            \n            \n            \n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2022-01-18 15:32:44', 'a:3:{s:4:\"From\";s:24:\"cmacailandia@hotmail.com\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}'),
(8, 'jonasleitesousa@hotmail.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost/CamaraAcailandia/assets/uploads/f72fc24a2f0f0c4fd69e522372ec1c1a.jpg\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 147<br>\n                                Data Inicial: 18/01/2022 <br>\n                                Data Final: 18/01/2022                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Acai Midia Assessoria E Markting Ltda<br>\n                                R 10 De Outubro, 815, Laranjeiras<br>\n                                Acailandia - MA <br>\n                                jonasleitesousa@hotmail.com <br>\n                                (99)99144-0728                            </td>\n\n                            <td style=\"text-align: right\">\n                                Municipio De Acailandia - Camara Municipal <br>\n                                Rua Comercio, 858, Centro<br>\n                                Acailandia - MA CEP: 65930-000 <br>\n                                Responsável: Andreia Alves Silva<br>\n                                andreia@andreia.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Finalizado                </td>\n            </tr>\n\n            \n            \n            \n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2022-01-18 15:35:42', 'a:3:{s:4:\"From\";s:24:\"cmacailandia@hotmail.com\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}'),
(9, 'jonasleitesousa@hotmail.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost/CamaraAcailandia/assets/uploads/f72fc24a2f0f0c4fd69e522372ec1c1a.jpg\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 148<br>\n                                Data Inicial: 18/01/2022 <br>\n                                Data Final: 18/01/2022                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Acai Midia Assessoria E Markting Ltda<br>\n                                R 10 De Outubro, 815, Laranjeiras<br>\n                                Acailandia - MA <br>\n                                jonasleitesousa@hotmail.com <br>\n                                (99)99144-0728                            </td>\n\n                            <td style=\"text-align: right\">\n                                Municipio De Acailandia - Camara Municipal <br>\n                                Rua Comercio, 858, Centro<br>\n                                Acailandia - MA CEP: 65930-000 <br>\n                                Responsável: Andreia Alves Silva<br>\n                                andreia@andreia.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Finalizado                </td>\n            </tr>\n\n            \n            \n            \n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2022-01-18 15:38:33', 'a:3:{s:4:\"From\";s:24:\"cmacailandia@hotmail.com\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}');
INSERT INTO `email_queue` (`id`, `to`, `cc`, `bcc`, `message`, `status`, `date`, `headers`) VALUES
(10, 'jonasleitesousa@hotmail.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost/CamaraAcailandia/assets/uploads/f72fc24a2f0f0c4fd69e522372ec1c1a.jpg\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 149<br>\n                                Data Inicial: 18/01/2022 <br>\n                                Data Final: 18/01/2022                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Acai Midia Assessoria E Markting Ltda<br>\n                                R 10 De Outubro, 815, Laranjeiras<br>\n                                Acailandia - MA <br>\n                                jonasleitesousa@hotmail.com <br>\n                                (99)99144-0728                            </td>\n\n                            <td style=\"text-align: right\">\n                                Municipio De Acailandia - Camara Municipal <br>\n                                Rua Comercio, 858, Centro<br>\n                                Acailandia - MA CEP: 65930-000 <br>\n                                Responsável: Andreia Alves Silva<br>\n                                andreia@andreia.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Finalizado                </td>\n            </tr>\n\n            \n            \n            \n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2022-01-18 15:41:39', 'a:3:{s:4:\"From\";s:24:\"cmacailandia@hotmail.com\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}'),
(11, 'jonasleitesousa@hotmail.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost/CamaraAcailandia/assets/uploads/f72fc24a2f0f0c4fd69e522372ec1c1a.jpg\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 150<br>\n                                Data Inicial: 18/01/2022 <br>\n                                Data Final: 18/01/2022                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Acai Midia Assessoria E Markting Ltda<br>\n                                R 10 De Outubro, 815, Laranjeiras<br>\n                                Acailandia - MA <br>\n                                jonasleitesousa@hotmail.com <br>\n                                (99)99144-0728                            </td>\n\n                            <td style=\"text-align: right\">\n                                Municipio De Acailandia - Camara Municipal <br>\n                                Rua Comercio, 858, Centro<br>\n                                Acailandia - MA CEP: 65930-000 <br>\n                                Responsável: Andreia Alves Silva<br>\n                                andreia@andreia.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Finalizado                </td>\n            </tr>\n\n            \n            \n            \n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2022-01-18 15:44:09', 'a:3:{s:4:\"From\";s:24:\"cmacailandia@hotmail.com\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}'),
(12, 'jonasleitesousa@hotmail.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost/CamaraAcailandia/assets/uploads/f72fc24a2f0f0c4fd69e522372ec1c1a.jpg\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 151<br>\n                                Data Inicial: 17/01/2022 <br>\n                                Data Final: 17/01/2022                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Acai Midia Assessoria E Markting Ltda<br>\n                                R 10 De Outubro, 815, Laranjeiras<br>\n                                Acailandia - MA <br>\n                                jonasleitesousa@hotmail.com <br>\n                                (99)99144-0728                            </td>\n\n                            <td style=\"text-align: right\">\n                                Municipio De Acailandia - Camara Municipal <br>\n                                Rua Comercio, 858, Centro<br>\n                                Acailandia - MA CEP: 65930-000 <br>\n                                Responsável: Andreia Alves Silva<br>\n                                andreia@andreia.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Finalizado                </td>\n            </tr>\n\n            \n            \n            \n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2022-01-17 12:15:34', 'a:3:{s:4:\"From\";s:24:\"cmacailandia@hotmail.com\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}'),
(13, 'jonasleitesousa@hotmail.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost/CamaraAcailandia/assets/uploads/f72fc24a2f0f0c4fd69e522372ec1c1a.jpg\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 152<br>\n                                Data Inicial: 19/01/2022 <br>\n                                Data Final: 19/01/2022                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Acai Midia Assessoria E Markting Ltda<br>\n                                R 10 De Outubro, 815, Laranjeiras<br>\n                                Acailandia - MA <br>\n                                jonasleitesousa@hotmail.com <br>\n                                (99)99144-0728                            </td>\n\n                            <td style=\"text-align: right\">\n                                Municipio De Acailandia - Camara Municipal <br>\n                                Rua Comercio, 858, Centro<br>\n                                Acailandia - MA CEP: 65930-000 <br>\n                                Responsável: Andreia Alves Silva<br>\n                                andreia@andreia.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Finalizado                </td>\n            </tr>\n\n            \n            \n            \n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2022-01-19 12:21:34', 'a:3:{s:4:\"From\";s:24:\"cmacailandia@hotmail.com\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}'),
(14, 'jonasleitesousa@hotmail.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost/CamaraAcailandia/assets/uploads/f72fc24a2f0f0c4fd69e522372ec1c1a.jpg\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 153<br>\n                                Data Inicial: 20/01/2022 <br>\n                                Data Final: 20/01/2022                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Acai Midia Assessoria E Markting Ltda<br>\n                                R 10 De Outubro, 815, Laranjeiras<br>\n                                Acailandia - MA <br>\n                                jonasleitesousa@hotmail.com <br>\n                                (99)99144-0728                            </td>\n\n                            <td style=\"text-align: right\">\n                                Municipio De Acailandia - Camara Municipal <br>\n                                Rua Comercio, 858, Centro<br>\n                                Acailandia - MA CEP: 65930-000 <br>\n                                Responsável: Andreia Alves Silva<br>\n                                andreia@andreia.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Finalizado                </td>\n            </tr>\n\n            \n            \n            \n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2022-01-20 12:29:25', 'a:3:{s:4:\"From\";s:24:\"cmacailandia@hotmail.com\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}'),
(15, 'jonasleitesousa@hotmail.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost/CamaraAcailandia/assets/uploads/f72fc24a2f0f0c4fd69e522372ec1c1a.jpg\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 154<br>\n                                Data Inicial: 20/01/2022 <br>\n                                Data Final: 20/01/2022                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Acai Midia Assessoria E Markting Ltda<br>\n                                R 10 De Outubro, 815, Laranjeiras<br>\n                                Acailandia - MA <br>\n                                jonasleitesousa@hotmail.com <br>\n                                (99)99144-0728                            </td>\n\n                            <td style=\"text-align: right\">\n                                Municipio De Acailandia - Camara Municipal <br>\n                                Rua Comercio, 858, Centro<br>\n                                Acailandia - MA CEP: 65930-000 <br>\n                                Responsável: Andreia Alves Silva<br>\n                                andreia@andreia.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Finalizado                </td>\n            </tr>\n\n            \n            \n            \n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2022-01-20 12:59:41', 'a:3:{s:4:\"From\";s:24:\"cmacailandia@hotmail.com\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}'),
(16, 'jonasleitesousa@hotmail.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost/CamaraAcailandia/assets/uploads/f72fc24a2f0f0c4fd69e522372ec1c1a.jpg\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 155<br>\n                                Data Inicial: 25/01/2022 <br>\n                                Data Final: 25/01/2022                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Acai Midia Assessoria E Markting Ltda<br>\n                                R 10 De Outubro, 815, Laranjeiras<br>\n                                Acailandia - MA <br>\n                                jonasleitesousa@hotmail.com <br>\n                                (99)99144-0728                            </td>\n\n                            <td style=\"text-align: right\">\n                                Municipio De Acailandia - Camara Municipal <br>\n                                Rua Comercio, 858, Centro<br>\n                                Acailandia - MA CEP: 65930-000 <br>\n                                Responsável: Andreia Alves Silva<br>\n                                andreia@andreia.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Finalizado                </td>\n            </tr>\n\n            \n            \n            \n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2022-01-25 12:58:08', 'a:3:{s:4:\"From\";s:24:\"cmacailandia@hotmail.com\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}'),
(17, 'jonasleitesousa@hotmail.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost/CamaraAcailandia/assets/uploads/f72fc24a2f0f0c4fd69e522372ec1c1a.jpg\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 156<br>\n                                Data Inicial: 25/01/2022 <br>\n                                Data Final: 25/01/2022                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Acai Midia Assessoria E Markting Ltda<br>\n                                R 10 De Outubro, 815, Laranjeiras<br>\n                                Acailandia - MA <br>\n                                jonasleitesousa@hotmail.com <br>\n                                (99)99144-0728                            </td>\n\n                            <td style=\"text-align: right\">\n                                Municipio De Acailandia - Camara Municipal <br>\n                                Rua Comercio, 858, Centro<br>\n                                Acailandia - MA CEP: 65930-000 <br>\n                                Responsável: Andreia Alves Silva<br>\n                                andreia@andreia.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Finalizado                </td>\n            </tr>\n\n            \n            \n            \n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2022-01-25 13:01:11', 'a:3:{s:4:\"From\";s:24:\"cmacailandia@hotmail.com\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}'),
(18, 'jonasleitesousa@hotmail.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost/CamaraAcailandia/assets/uploads/f72fc24a2f0f0c4fd69e522372ec1c1a.jpg\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 157<br>\n                                Data Inicial: 26/01/2022 <br>\n                                Data Final: 26/01/2022                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Acai Midia Assessoria E Markting Ltda<br>\n                                R 10 De Outubro, 815, Laranjeiras<br>\n                                Acailandia - MA <br>\n                                jonasleitesousa@hotmail.com <br>\n                                (99)99144-0728                            </td>\n\n                            <td style=\"text-align: right\">\n                                Municipio De Acailandia - Camara Municipal <br>\n                                Rua Comercio, 858, Centro<br>\n                                Acailandia - MA CEP: 65930-000 <br>\n                                Responsável: Andreia Alves Silva<br>\n                                andreia@andreia.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Finalizado                </td>\n            </tr>\n\n            \n            \n            \n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2022-01-26 13:05:16', 'a:3:{s:4:\"From\";s:24:\"cmacailandia@hotmail.com\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}');
INSERT INTO `email_queue` (`id`, `to`, `cc`, `bcc`, `message`, `status`, `date`, `headers`) VALUES
(19, 'jonasleitesousa@hotmail.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost/CamaraAcailandia/assets/uploads/f72fc24a2f0f0c4fd69e522372ec1c1a.jpg\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 158<br>\n                                Data Inicial: 27/01/2022 <br>\n                                Data Final: 27/01/2022                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Acai Midia Assessoria E Markting Ltda<br>\n                                R 10 De Outubro, 815, Laranjeiras<br>\n                                Acailandia - MA <br>\n                                jonasleitesousa@hotmail.com <br>\n                                (99)99144-0728                            </td>\n\n                            <td style=\"text-align: right\">\n                                Municipio De Acailandia - Camara Municipal <br>\n                                Rua Comercio, 858, Centro<br>\n                                Acailandia - MA CEP: 65930-000 <br>\n                                Responsável: Andreia Alves Silva<br>\n                                andreia@andreia.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Finalizado                </td>\n            </tr>\n\n            \n            \n            \n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2022-01-27 13:08:26', 'a:3:{s:4:\"From\";s:24:\"cmacailandia@hotmail.com\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}'),
(20, 'jonasleitesousa@hotmail.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost/CamaraAcailandia/assets/uploads/f72fc24a2f0f0c4fd69e522372ec1c1a.jpg\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 159<br>\n                                Data Inicial: 27/01/2022 <br>\n                                Data Final: 27/01/2022                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Acai Midia Assessoria E Markting Ltda<br>\n                                R 10 De Outubro, 815, Laranjeiras<br>\n                                Acailandia - MA <br>\n                                jonasleitesousa@hotmail.com <br>\n                                (99)99144-0728                            </td>\n\n                            <td style=\"text-align: right\">\n                                Municipio De Acailandia - Camara Municipal <br>\n                                Rua Comercio, 858, Centro<br>\n                                Acailandia - MA CEP: 65930-000 <br>\n                                Responsável: Andreia Alves Silva<br>\n                                andreia@andreia.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Finalizado                </td>\n            </tr>\n\n            \n            \n            \n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2022-01-27 13:13:09', 'a:3:{s:4:\"From\";s:24:\"cmacailandia@hotmail.com\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}'),
(21, 'jonasleitesousa@hotmail.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost/CamaraAcailandia/assets/uploads/f72fc24a2f0f0c4fd69e522372ec1c1a.jpg\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 160<br>\n                                Data Inicial: 27/01/2022 <br>\n                                Data Final: 27/01/2022                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Acai Midia Assessoria E Markting Ltda<br>\n                                R 10 De Outubro, 815, Laranjeiras<br>\n                                Acailandia - MA <br>\n                                jonasleitesousa@hotmail.com <br>\n                                (99)99144-0728                            </td>\n\n                            <td style=\"text-align: right\">\n                                Municipio De Acailandia - Camara Municipal <br>\n                                Rua Comercio, 858, Centro<br>\n                                Acailandia - MA CEP: 65930-000 <br>\n                                Responsável: Andreia Alves Silva<br>\n                                andreia@andreia.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Finalizado                </td>\n            </tr>\n\n            \n            \n            \n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n                    </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2022-01-27 13:15:11', 'a:3:{s:4:\"From\";s:24:\"cmacailandia@hotmail.com\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `emitente`
--

DROP TABLE IF EXISTS `emitente`;
CREATE TABLE IF NOT EXISTS `emitente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `cnpj` varchar(45) DEFAULT NULL,
  `ie` varchar(50) DEFAULT NULL,
  `rua` varchar(70) DEFAULT NULL,
  `numero` varchar(15) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `uf` varchar(20) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `url_logo` varchar(225) DEFAULT NULL,
  `cep` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `emitente`
--

INSERT INTO `emitente` (`id`, `nome`, `cnpj`, `ie`, `rua`, `numero`, `bairro`, `cidade`, `uf`, `telefone`, `email`, `url_logo`, `cep`) VALUES
(1, 'Municipio De Acailandia - Camara Municipal', '12.143.442/0001-76', '0', 'Rua Comercio', '858', 'Centro', 'Acailandia', 'MA', '(35)3818-47', 'cmacailandia@hotmail.com', 'http://localhost/CamaraAcailandia/assets/uploads/f72fc24a2f0f0c4fd69e522372ec1c1a.jpg', '65930-000');

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipamentos`
--

DROP TABLE IF EXISTS `equipamentos`;
CREATE TABLE IF NOT EXISTS `equipamentos` (
  `idEquipamentos` int NOT NULL AUTO_INCREMENT,
  `equipamento` varchar(150) NOT NULL,
  `num_serie` varchar(80) DEFAULT NULL,
  `modelo` varchar(80) DEFAULT NULL,
  `cor` varchar(45) DEFAULT NULL,
  `descricao` varchar(150) DEFAULT NULL,
  `tensao` varchar(45) DEFAULT NULL,
  `potencia` varchar(45) DEFAULT NULL,
  `voltagem` varchar(45) DEFAULT NULL,
  `data_fabricacao` date DEFAULT NULL,
  `marcas_id` int DEFAULT NULL,
  `clientes_id` int DEFAULT NULL,
  PRIMARY KEY (`idEquipamentos`),
  KEY `fk_equipanentos_marcas1_idx` (`marcas_id`),
  KEY `fk_equipanentos_clientes1_idx` (`clientes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipamentos_os`
--

DROP TABLE IF EXISTS `equipamentos_os`;
CREATE TABLE IF NOT EXISTS `equipamentos_os` (
  `idEquipamentos_os` int NOT NULL AUTO_INCREMENT,
  `defeito_declarado` varchar(200) DEFAULT NULL,
  `defeito_encontrado` varchar(200) DEFAULT NULL,
  `solucao` varchar(45) DEFAULT NULL,
  `equipamentos_id` int DEFAULT NULL,
  `os_id` int DEFAULT NULL,
  PRIMARY KEY (`idEquipamentos_os`),
  KEY `fk_equipamentos_os_equipanentos1_idx` (`equipamentos_id`),
  KEY `fk_equipamentos_os_os1_idx` (`os_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `garantias`
--

DROP TABLE IF EXISTS `garantias`;
CREATE TABLE IF NOT EXISTS `garantias` (
  `idGarantias` int NOT NULL AUTO_INCREMENT,
  `dataGarantia` date DEFAULT NULL,
  `refGarantia` varchar(15) DEFAULT NULL,
  `textoGarantia` text,
  `usuarios_id` int DEFAULT NULL,
  PRIMARY KEY (`idGarantias`),
  KEY `fk_garantias_usuarios1` (`usuarios_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens_de_vendas`
--

DROP TABLE IF EXISTS `itens_de_vendas`;
CREATE TABLE IF NOT EXISTS `itens_de_vendas` (
  `idItens` int NOT NULL AUTO_INCREMENT,
  `subTotal` decimal(10,2) DEFAULT '0.00',
  `quantidade` int DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT '0.00',
  `vendas_id` int NOT NULL,
  `produtos_id` int NOT NULL,
  PRIMARY KEY (`idItens`),
  KEY `fk_itens_de_vendas_vendas1` (`vendas_id`),
  KEY `fk_itens_de_vendas_produtos1` (`produtos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `lancamentos`
--

DROP TABLE IF EXISTS `lancamentos`;
CREATE TABLE IF NOT EXISTS `lancamentos` (
  `idLancamentos` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT '0.00',
  `desconto` decimal(10,2) DEFAULT '0.00',
  `valor_desconto` decimal(10,2) DEFAULT '0.00',
  `data_vencimento` date NOT NULL,
  `data_pagamento` date DEFAULT NULL,
  `baixado` tinyint(1) DEFAULT '0',
  `cliente_fornecedor` varchar(255) DEFAULT NULL,
  `forma_pgto` varchar(100) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `anexo` varchar(250) DEFAULT NULL,
  `observacoes` text,
  `clientes_id` int DEFAULT NULL,
  `categorias_id` int DEFAULT NULL,
  `contas_id` int DEFAULT NULL,
  `vendas_id` int DEFAULT NULL,
  `usuarios_id` int NOT NULL,
  PRIMARY KEY (`idLancamentos`),
  KEY `fk_lancamentos_clientes1` (`clientes_id`),
  KEY `fk_lancamentos_categorias1_idx` (`categorias_id`),
  KEY `fk_lancamentos_contas1_idx` (`contas_id`),
  KEY `fk_lancamentos_usuarios1` (`usuarios_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `logs`
--

DROP TABLE IF EXISTS `logs`;
CREATE TABLE IF NOT EXISTS `logs` (
  `idLogs` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(80) DEFAULT NULL,
  `tarefa` varchar(100) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idLogs`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `logs`
--

INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES
(1, 'Administrador', 'Efetuou login no sistema', '2022-05-25', '22:56:34', '::1'),
(2, 'Administrador', 'Efetuou login no sistema', '2022-10-25', '13:03:56', '::1'),
(3, 'Administrador', 'Adicionou um cliente.', '2022-10-25', '13:08:02', '::1'),
(4, 'Administrador', 'Adicionou uma OS', '2022-10-25', '13:08:47', '::1'),
(5, 'Administrador', 'Adicionou produto a uma OS. ID (OS): 1', '2022-10-25', '13:09:13', '::1'),
(6, 'Administrador', 'Adicionou um desconto na OS. ID: 1', '2022-10-25', '13:10:36', '::1'),
(7, 'Administrador', 'Adicionou um desconto na OS. ID: 1', '2022-10-25', '13:11:29', '::1'),
(8, 'Administrador', 'Adicionou informações de emitente.', '2022-10-25', '13:12:53', '::1'),
(9, 'Administrador', 'Adicionou um produto', '2022-10-25', '13:15:00', '::1'),
(10, 'Administrador', 'Alterou um cliente. ID1', '2022-10-25', '13:21:05', '::1'),
(11, 'Administrador', 'Removeu um produto. ID: 2', '2022-10-25', '13:21:25', '::1'),
(12, 'Administrador', 'Adicionou um usuário.', '2022-10-25', '13:23:27', '::1'),
(13, 'Andreia Alves Silva', 'Efetuou login no sistema', '2022-10-25', '13:23:46', '::1'),
(14, 'Andreia Alves Silva', 'Efetuou login no sistema', '2022-01-18', '13:24:39', '::1'),
(15, 'Andreia Alves Silva', 'Adicionou uma OS', '2022-01-18', '13:25:00', '::1'),
(16, 'Andreia Alves Silva', 'Atualizou estoque de um produto. ID: 1', '2022-01-18', '13:25:26', '::1'),
(17, 'Andreia Alves Silva', 'Adicionou produto a uma OS. ID (OS): 140', '2022-01-18', '13:25:38', '::1'),
(18, 'Andreia Alves Silva', 'Adicionou um desconto na OS. ID: 140', '2022-01-18', '13:25:43', '::1'),
(19, 'Andreia Alves Silva', 'Alterou um produto. ID: 1', '2022-01-18', '13:30:10', '::1'),
(20, 'Andreia Alves Silva', 'Adicionou um produto', '2022-01-18', '13:31:46', '::1'),
(21, 'Administrador', 'Efetuou login no sistema', '2022-01-19', '13:32:22', '::1'),
(22, 'Administrador', 'Adicionou uma OS', '2022-01-19', '13:32:40', '::1'),
(23, 'Andreia Alves Silva', 'Efetuou login no sistema', '2022-01-19', '13:33:34', '::1'),
(24, 'Andreia Alves Silva', 'Adicionou produto a uma OS. ID (OS): 141', '2022-01-19', '13:33:47', '::1'),
(25, 'Andreia Alves Silva', 'Adicionou um desconto na OS. ID: 141', '2022-01-19', '13:33:52', '::1'),
(26, 'Andreia Alves Silva', 'Efetuou login no sistema', '2022-01-18', '13:35:49', '::1'),
(27, 'Andreia Alves Silva', 'Adicionou um produto', '2022-01-18', '13:37:05', '::1'),
(28, 'Andreia Alves Silva', 'Adicionou uma OS', '2022-01-18', '13:37:26', '::1'),
(29, 'Andreia Alves Silva', 'Adicionou produto a uma OS. ID (OS): 142', '2022-01-18', '13:37:43', '::1'),
(30, 'Andreia Alves Silva', 'Adicionou um desconto na OS. ID: 142', '2022-01-18', '13:37:49', '::1'),
(31, 'Andreia Alves Silva', 'Efetuou login no sistema', '2022-01-20', '13:39:26', '::1'),
(32, 'Andreia Alves Silva', 'Efetuou login no sistema', '2022-01-20', '13:40:34', '::1'),
(33, 'Andreia Alves Silva', 'Adicionou um produto', '2022-01-20', '13:41:14', '::1'),
(34, 'Andreia Alves Silva', 'Adicionou uma OS', '2022-01-20', '13:41:28', '::1'),
(35, 'Andreia Alves Silva', 'Adicionou produto a uma OS. ID (OS): 143', '2022-01-20', '13:41:39', '::1'),
(36, 'Andreia Alves Silva', 'Adicionou um desconto na OS. ID: 143', '2022-01-20', '13:41:48', '::1'),
(37, 'Andreia Alves Silva', 'Efetuou login no sistema', '2022-01-21', '13:43:19', '::1'),
(38, 'Andreia Alves Silva', 'Efetuou login no sistema', '2022-01-21', '13:44:20', '::1'),
(39, 'Andreia Alves Silva', 'Adicionou um produto', '2022-01-21', '13:44:55', '::1'),
(40, 'Andreia Alves Silva', 'Adicionou uma OS', '2022-01-21', '13:45:07', '::1'),
(41, 'Andreia Alves Silva', 'Adicionou produto a uma OS. ID (OS): 144', '2022-01-21', '13:45:25', '::1'),
(42, 'Andreia Alves Silva', 'Adicionou um desconto na OS. ID: 144', '2022-01-21', '13:45:31', '::1'),
(43, 'Andreia Alves Silva', 'Efetuou login no sistema', '2022-10-25', '15:27:24', '::1'),
(44, 'Andreia Alves Silva', 'Efetuou login no sistema', '2022-01-18', '15:28:00', '::1'),
(45, 'Andreia Alves Silva', 'Adicionou um produto', '2022-01-18', '15:29:21', '::1'),
(46, 'Andreia Alves Silva', 'Adicionou uma OS', '2022-01-18', '15:29:38', '::1'),
(47, 'Andreia Alves Silva', 'Adicionou produto a uma OS. ID (OS): 145', '2022-01-18', '15:29:48', '::1'),
(48, 'Andreia Alves Silva', 'Adicionou um desconto na OS. ID: 145', '2022-01-18', '15:29:55', '::1'),
(49, 'Andreia Alves Silva', 'Adicionou um produto', '2022-01-18', '15:32:30', '::1'),
(50, 'Andreia Alves Silva', 'Adicionou uma OS', '2022-01-18', '15:32:44', '::1'),
(51, 'Andreia Alves Silva', 'Adicionou produto a uma OS. ID (OS): 146', '2022-01-18', '15:32:55', '::1'),
(52, 'Andreia Alves Silva', 'Adicionou um desconto na OS. ID: 146', '2022-01-18', '15:33:04', '::1'),
(53, 'Andreia Alves Silva', 'Adicionou um produto', '2022-01-18', '15:35:30', '::1'),
(54, 'Andreia Alves Silva', 'Adicionou uma OS', '2022-01-18', '15:35:42', '::1'),
(55, 'Andreia Alves Silva', 'Adicionou produto a uma OS. ID (OS): 147', '2022-01-18', '15:35:57', '::1'),
(56, 'Andreia Alves Silva', 'Adicionou um desconto na OS. ID: 147', '2022-01-18', '15:36:05', '::1'),
(57, 'Andreia Alves Silva', 'Adicionou um produto', '2022-01-18', '15:38:18', '::1'),
(58, 'Andreia Alves Silva', 'Adicionou uma OS', '2022-01-18', '15:38:33', '::1'),
(59, 'Andreia Alves Silva', 'Adicionou produto a uma OS. ID (OS): 148', '2022-01-18', '15:38:49', '::1'),
(60, 'Andreia Alves Silva', 'Adicionou um desconto na OS. ID: 148', '2022-01-18', '15:38:58', '::1'),
(61, 'Andreia Alves Silva', 'Adicionou um produto', '2022-01-18', '15:40:35', '::1'),
(62, 'Andreia Alves Silva', 'Adicionou uma OS', '2022-01-18', '15:41:39', '::1'),
(63, 'Andreia Alves Silva', 'Adicionou produto a uma OS. ID (OS): 149', '2022-01-18', '15:41:50', '::1'),
(64, 'Andreia Alves Silva', 'Adicionou um desconto na OS. ID: 149', '2022-01-18', '15:41:56', '::1'),
(65, 'Andreia Alves Silva', 'Adicionou um produto', '2022-01-18', '15:43:51', '::1'),
(66, 'Andreia Alves Silva', 'Adicionou uma OS', '2022-01-18', '15:44:09', '::1'),
(67, 'Andreia Alves Silva', 'Adicionou produto a uma OS. ID (OS): 150', '2022-01-18', '15:45:03', '::1'),
(68, 'Andreia Alves Silva', 'Adicionou um desconto na OS. ID: 150', '2022-01-18', '15:45:10', '::1'),
(69, 'Andreia Alves Silva', 'Efetuou login no sistema', '2022-01-17', '12:07:03', '::1'),
(70, 'Andreia Alves Silva', 'Adicionou um produto', '2022-01-17', '12:15:14', '::1'),
(71, 'Andreia Alves Silva', 'Adicionou uma OS', '2022-01-17', '12:15:34', '::1'),
(72, 'Andreia Alves Silva', 'Adicionou produto a uma OS. ID (OS): 151', '2022-01-17', '12:15:52', '::1'),
(73, 'Andreia Alves Silva', 'Adicionou um desconto na OS. ID: 151', '2022-01-17', '12:15:58', '::1'),
(74, 'Andreia Alves Silva', 'Efetuou login no sistema', '2022-01-17', '12:18:47', '::1'),
(75, 'Andreia Alves Silva', 'Adicionou um produto', '2022-01-17', '12:20:34', '::1'),
(76, 'Andreia Alves Silva', 'Efetuou login no sistema', '2022-01-19', '12:21:00', '::1'),
(77, 'Andreia Alves Silva', 'Adicionou uma OS', '2022-01-19', '12:21:34', '::1'),
(78, 'Andreia Alves Silva', 'Efetuou login no sistema', '2022-01-19', '12:22:01', '::1'),
(79, 'Andreia Alves Silva', 'Efetuou login no sistema', '2022-10-27', '12:22:48', '::1'),
(80, 'Administrador', 'Efetuou login no sistema', '2022-10-27', '12:23:12', '::1'),
(81, 'Administrador', 'Adicionou produto a uma OS. ID (OS): 152', '2022-10-27', '12:23:43', '::1'),
(82, 'Administrador', 'Adicionou um desconto na OS. ID: 152', '2022-10-27', '12:23:50', '::1'),
(83, 'Andreia Alves Silva', 'Efetuou login no sistema', '2022-10-27', '12:27:17', '::1'),
(84, 'Andreia Alves Silva', 'Efetuou login no sistema', '2022-01-20', '12:27:45', '::1'),
(85, 'Andreia Alves Silva', 'Adicionou um produto', '2022-01-20', '12:28:56', '::1'),
(86, 'Andreia Alves Silva', 'Adicionou uma OS', '2022-01-20', '12:29:25', '::1'),
(87, 'Andreia Alves Silva', 'Adicionou produto a uma OS. ID (OS): 153', '2022-01-20', '12:29:35', '::1'),
(88, 'Andreia Alves Silva', 'Adicionou um desconto na OS. ID: 153', '2022-01-20', '12:29:41', '::1'),
(89, 'Andreia Alves Silva', 'Efetuou login no sistema', '2022-01-20', '12:56:59', '::1'),
(90, 'Andreia Alves Silva', 'Alterou um produto. ID: 12', '2022-01-20', '12:57:28', '::1'),
(91, 'Andreia Alves Silva', 'Alterou um produto. ID: 12', '2022-01-20', '12:57:39', '::1'),
(92, 'Andreia Alves Silva', 'Alterou um produto. ID: 11', '2022-01-20', '12:57:50', '::1'),
(93, 'Andreia Alves Silva', 'Alterou um produto. ID: 10', '2022-01-20', '12:57:59', '::1'),
(94, 'Andreia Alves Silva', 'Alterou um produto. ID: 9', '2022-01-20', '12:58:08', '::1'),
(95, 'Andreia Alves Silva', 'Alterou um produto. ID: 8', '2022-01-20', '12:58:17', '::1'),
(96, 'Andreia Alves Silva', 'Alterou um produto. ID: 7', '2022-01-20', '12:58:24', '::1'),
(97, 'Andreia Alves Silva', 'Alterou um produto. ID: 6', '2022-01-20', '12:58:33', '::1'),
(98, 'Andreia Alves Silva', 'Adicionou um produto', '2022-01-20', '12:59:26', '::1'),
(99, 'Andreia Alves Silva', 'Adicionou uma OS', '2022-01-20', '12:59:41', '::1'),
(100, 'Andreia Alves Silva', 'Adicionou produto a uma OS. ID (OS): 154', '2022-01-20', '13:00:01', '::1'),
(101, 'Andreia Alves Silva', 'Adicionou um desconto na OS. ID: 154', '2022-01-20', '13:00:05', '::1'),
(102, 'Andreia Alves Silva', 'Efetuou login no sistema', '2022-01-25', '12:57:01', '::1'),
(103, 'Andreia Alves Silva', 'Adicionou um produto', '2022-01-25', '12:57:56', '::1'),
(104, 'Andreia Alves Silva', 'Adicionou uma OS', '2022-01-25', '12:58:08', '::1'),
(105, 'Andreia Alves Silva', 'Adicionou produto a uma OS. ID (OS): 155', '2022-01-25', '12:58:18', '::1'),
(106, 'Andreia Alves Silva', 'Adicionou um desconto na OS. ID: 155', '2022-01-25', '12:58:23', '::1'),
(107, 'Andreia Alves Silva', 'Adicionou um produto', '2022-01-25', '13:00:55', '::1'),
(108, 'Andreia Alves Silva', 'Adicionou uma OS', '2022-01-25', '13:01:11', '::1'),
(109, 'Andreia Alves Silva', 'Adicionou produto a uma OS. ID (OS): 156', '2022-01-25', '13:01:23', '::1'),
(110, 'Andreia Alves Silva', 'Adicionou um desconto na OS. ID: 156', '2022-01-25', '13:01:28', '::1'),
(111, 'Andreia Alves Silva', 'Efetuou login no sistema', '2022-01-26', '13:03:08', '::1'),
(112, 'Andreia Alves Silva', 'Efetuou login no sistema', '2022-01-26', '13:04:10', '::1'),
(113, 'Andreia Alves Silva', 'Adicionou um produto', '2022-01-26', '13:05:00', '::1'),
(114, 'Andreia Alves Silva', 'Adicionou uma OS', '2022-01-26', '13:05:16', '::1'),
(115, 'Andreia Alves Silva', 'Adicionou produto a uma OS. ID (OS): 157', '2022-01-26', '13:05:25', '::1'),
(116, 'Andreia Alves Silva', 'Adicionou um desconto na OS. ID: 157', '2022-01-26', '13:05:31', '::1'),
(117, 'Andreia Alves Silva', 'Efetuou login no sistema', '2022-01-27', '13:07:23', '::1'),
(118, 'Andreia Alves Silva', 'Efetuou login no sistema', '2022-01-27', '13:08:13', '::1'),
(119, 'Andreia Alves Silva', 'Adicionou uma OS', '2022-01-27', '13:08:26', '::1'),
(120, 'Andreia Alves Silva', 'Adicionou um produto', '2022-01-27', '13:10:00', '::1'),
(121, 'Andreia Alves Silva', 'Adicionou produto a uma OS. ID (OS): 158', '2022-01-27', '13:10:28', '::1'),
(122, 'Andreia Alves Silva', 'Adicionou um desconto na OS. ID: 158', '2022-01-27', '13:10:46', '::1'),
(123, 'Andreia Alves Silva', 'Adicionou um produto', '2022-01-27', '13:12:56', '::1'),
(124, 'Andreia Alves Silva', 'Adicionou uma OS', '2022-01-27', '13:13:09', '::1'),
(125, 'Andreia Alves Silva', 'Adicionou produto a uma OS. ID (OS): 159', '2022-01-27', '13:13:21', '::1'),
(126, 'Andreia Alves Silva', 'Adicionou um desconto na OS. ID: 159', '2022-01-27', '13:13:30', '::1'),
(127, 'Andreia Alves Silva', 'Adicionou uma OS', '2022-01-27', '13:15:11', '::1'),
(128, 'Andreia Alves Silva', 'Adicionou produto a uma OS. ID (OS): 160', '2022-01-27', '13:15:22', '::1'),
(129, 'Andreia Alves Silva', 'Adicionou um desconto na OS. ID: 160', '2022-01-27', '13:15:50', '::1'),
(130, 'Administrador', 'Efetuou login no sistema', '2022-10-28', '11:22:31', '::1'),
(131, 'Administrador', 'Adicionou uma permissão', '2022-10-28', '11:24:16', '::1'),
(132, 'Administrador', 'Alterou um usuário. ID: 2', '2022-10-28', '11:24:35', '::1'),
(133, 'Andreia Alves Silva', 'Efetuou login no sistema', '2022-10-28', '11:24:50', '::1'),
(134, 'Andreia Alves Silva', 'Efetuou backup do banco de dados.', '2022-10-28', '11:25:28', '::1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `marcas`
--

DROP TABLE IF EXISTS `marcas`;
CREATE TABLE IF NOT EXISTS `marcas` (
  `idMarcas` int NOT NULL AUTO_INCREMENT,
  `marca` varchar(100) DEFAULT NULL,
  `cadastro` date DEFAULT NULL,
  `situacao` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idMarcas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `version` bigint NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(20210125173741);

-- --------------------------------------------------------

--
-- Estrutura da tabela `os`
--

DROP TABLE IF EXISTS `os`;
CREATE TABLE IF NOT EXISTS `os` (
  `idOs` int NOT NULL AUTO_INCREMENT,
  `dataInicial` date DEFAULT NULL,
  `dataFinal` date DEFAULT NULL,
  `garantia` varchar(45) DEFAULT NULL,
  `descricaoProduto` text,
  `defeito` text,
  `status` varchar(45) DEFAULT NULL,
  `observacoes` text,
  `laudoTecnico` text,
  `valorTotal` decimal(10,2) DEFAULT '0.00',
  `desconto` decimal(10,2) DEFAULT '0.00',
  `valor_desconto` decimal(10,2) DEFAULT '0.00',
  `clientes_id` int NOT NULL,
  `usuarios_id` int NOT NULL,
  `lancamento` int DEFAULT NULL,
  `faturado` tinyint(1) NOT NULL,
  `garantias_id` int DEFAULT NULL,
  PRIMARY KEY (`idOs`),
  KEY `fk_os_clientes1` (`clientes_id`),
  KEY `fk_os_usuarios1` (`usuarios_id`),
  KEY `fk_os_lancamentos1` (`lancamento`),
  KEY `fk_os_garantias1` (`garantias_id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `os`
--

INSERT INTO `os` (`idOs`, `dataInicial`, `dataFinal`, `garantia`, `descricaoProduto`, `defeito`, `status`, `observacoes`, `laudoTecnico`, `valorTotal`, `desconto`, `valor_desconto`, `clientes_id`, `usuarios_id`, `lancamento`, `faturado`, `garantias_id`) VALUES
(140, '2022-01-18', '2022-01-18', '', '', '', 'Finalizado', '', '', '0.00', '20.00', '2000.00', 1, 2, NULL, 0, NULL),
(141, '2022-01-19', '2022-01-19', '', '', '', 'Finalizado', '', '', '0.00', '20.00', '2000.00', 1, 1, NULL, 0, NULL),
(142, '2022-01-18', '2022-01-18', '', '', '', 'Finalizado', '', '', '0.00', '20.00', '3040.00', 1, 2, NULL, 0, NULL),
(143, '2022-01-20', '2022-01-20', '', '', '', 'Finalizado', '', '', '0.00', '20.00', '1000.00', 1, 2, NULL, 0, NULL),
(144, '2022-01-21', '2022-01-21', '', '', '', 'Finalizado', '', '', '0.00', '20.00', '2000.00', 1, 2, NULL, 0, NULL),
(145, '2022-01-18', '2022-01-18', '', '', '', 'Finalizado', '', '', '0.00', '20.00', '1000.00', 1, 2, NULL, 0, NULL),
(146, '2022-01-18', '2022-01-18', '', '', '', 'Finalizado', '', '', '0.00', '20.00', '560.00', 1, 2, NULL, 0, NULL),
(147, '2022-01-18', '2022-01-18', '', '', '', 'Finalizado', '', '', '0.00', '20.00', '500.00', 1, 2, NULL, 0, NULL),
(148, '2022-01-18', '2022-01-18', '', '', '', 'Finalizado', '', '', '0.00', '20.00', '500.00', 1, 2, NULL, 0, NULL),
(149, '2022-01-18', '2022-01-18', '', '', '', 'Finalizado', '', '', '0.00', '20.00', '1000.00', 1, 2, NULL, 0, NULL),
(150, '2022-01-18', '2022-01-18', '', '', '', 'Finalizado', '', '', '0.00', '20.00', '500.00', 1, 2, NULL, 0, NULL),
(151, '2022-01-17', '2022-01-17', '', '', '', 'Finalizado', '', '', '0.00', '20.00', '1000.00', 1, 2, NULL, 0, NULL),
(152, '2022-01-19', '2022-01-19', '', '', '', 'Finalizado', '', '', '0.00', '20.00', '1500.00', 1, 2, NULL, 0, NULL),
(153, '2022-01-20', '2022-01-20', '', '', '', 'Finalizado', '', '', '0.00', '20.00', '1000.00', 1, 2, NULL, 0, NULL),
(154, '2022-01-20', '2022-01-20', '', '', '', 'Finalizado', '', '', '0.00', '20.00', '1000.00', 1, 2, NULL, 0, NULL),
(155, '2022-01-25', '2022-01-25', '', '', '', 'Finalizado', '', '', '0.00', '20.00', '500.00', 1, 2, NULL, 0, NULL),
(156, '2022-01-25', '2022-01-25', '', '', '', 'Finalizado', '', '', '0.00', '20.00', '640.00', 1, 2, NULL, 0, NULL),
(157, '2022-01-26', '2022-01-26', '', '', '', 'Finalizado', '', '', '0.00', '20.00', '500.00', 1, 2, NULL, 0, NULL),
(158, '2022-01-27', '2022-01-27', '', '', '', 'Finalizado', '', '', '0.00', '52.00', '3401.28', 1, 2, NULL, 0, NULL),
(159, '2022-01-27', '2022-01-27', '', '', '', 'Finalizado', '', '', '0.00', '52.00', '4485.00', 1, 2, NULL, 0, NULL),
(160, '2022-01-27', '2022-01-27', '', '', '', 'Finalizado', '', '', '0.00', '52.00', '6727.51', 1, 2, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `permissoes`
--

DROP TABLE IF EXISTS `permissoes`;
CREATE TABLE IF NOT EXISTS `permissoes` (
  `idPermissao` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `permissoes` text,
  `situacao` tinyint(1) DEFAULT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`idPermissao`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `permissoes`
--

INSERT INTO `permissoes` (`idPermissao`, `nome`, `permissoes`, `situacao`, `data`) VALUES
(1, 'Administrador', 'a:53:{s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:8:\"aProduto\";s:1:\"1\";s:8:\"eProduto\";s:1:\"1\";s:8:\"dProduto\";s:1:\"1\";s:8:\"vProduto\";s:1:\"1\";s:8:\"aServico\";s:1:\"1\";s:8:\"eServico\";s:1:\"1\";s:8:\"dServico\";s:1:\"1\";s:8:\"vServico\";s:1:\"1\";s:3:\"aOs\";s:1:\"1\";s:3:\"eOs\";s:1:\"1\";s:3:\"dOs\";s:1:\"1\";s:3:\"vOs\";s:1:\"1\";s:6:\"aVenda\";s:1:\"1\";s:6:\"eVenda\";s:1:\"1\";s:6:\"dVenda\";s:1:\"1\";s:6:\"vVenda\";s:1:\"1\";s:9:\"aGarantia\";s:1:\"1\";s:9:\"eGarantia\";s:1:\"1\";s:9:\"dGarantia\";s:1:\"1\";s:9:\"vGarantia\";s:1:\"1\";s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:10:\"aPagamento\";N;s:10:\"ePagamento\";N;s:10:\"dPagamento\";N;s:10:\"vPagamento\";N;s:11:\"aLancamento\";s:1:\"1\";s:11:\"eLancamento\";s:1:\"1\";s:11:\"dLancamento\";s:1:\"1\";s:11:\"vLancamento\";s:1:\"1\";s:8:\"cUsuario\";s:1:\"1\";s:9:\"cEmitente\";s:1:\"1\";s:10:\"cPermissao\";s:1:\"1\";s:7:\"cBackup\";s:1:\"1\";s:10:\"cAuditoria\";s:1:\"1\";s:6:\"cEmail\";s:1:\"1\";s:8:\"cSistema\";s:1:\"1\";s:8:\"rCliente\";s:1:\"1\";s:8:\"rProduto\";s:1:\"1\";s:8:\"rServico\";s:1:\"1\";s:3:\"rOs\";s:1:\"1\";s:6:\"rVenda\";s:1:\"1\";s:11:\"rFinanceiro\";s:1:\"1\";s:9:\"aCobranca\";s:1:\"1\";s:9:\"eCobranca\";s:1:\"1\";s:9:\"dCobranca\";s:1:\"1\";s:9:\"vCobranca\";s:1:\"1\";}', 1, '2022-05-25'),
(2, 'Estoque', 'a:53:{s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";N;s:8:\"vCliente\";s:1:\"1\";s:8:\"aProduto\";s:1:\"1\";s:8:\"eProduto\";s:1:\"1\";s:8:\"dProduto\";N;s:8:\"vProduto\";s:1:\"1\";s:8:\"aServico\";s:1:\"1\";s:8:\"eServico\";s:1:\"1\";s:8:\"dServico\";N;s:8:\"vServico\";s:1:\"1\";s:3:\"aOs\";s:1:\"1\";s:3:\"eOs\";s:1:\"1\";s:3:\"dOs\";N;s:3:\"vOs\";s:1:\"1\";s:6:\"aVenda\";s:1:\"1\";s:6:\"eVenda\";s:1:\"1\";s:6:\"dVenda\";N;s:6:\"vVenda\";s:1:\"1\";s:9:\"aGarantia\";s:1:\"1\";s:9:\"eGarantia\";s:1:\"1\";s:9:\"dGarantia\";N;s:9:\"vGarantia\";s:1:\"1\";s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";N;s:8:\"vArquivo\";s:1:\"1\";s:10:\"aPagamento\";s:1:\"1\";s:10:\"ePagamento\";s:1:\"1\";s:10:\"dPagamento\";N;s:10:\"vPagamento\";s:1:\"1\";s:11:\"aLancamento\";s:1:\"1\";s:11:\"eLancamento\";s:1:\"1\";s:11:\"dLancamento\";N;s:11:\"vLancamento\";s:1:\"1\";s:8:\"cUsuario\";N;s:9:\"cEmitente\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";s:1:\"1\";s:10:\"cAuditoria\";N;s:6:\"cEmail\";N;s:8:\"cSistema\";N;s:8:\"rCliente\";s:1:\"1\";s:8:\"rProduto\";s:1:\"1\";s:8:\"rServico\";s:1:\"1\";s:3:\"rOs\";s:1:\"1\";s:6:\"rVenda\";s:1:\"1\";s:11:\"rFinanceiro\";s:1:\"1\";s:9:\"aCobranca\";s:1:\"1\";s:9:\"eCobranca\";s:1:\"1\";s:9:\"dCobranca\";N;s:9:\"vCobranca\";s:1:\"1\";}', 1, '2022-10-28');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

DROP TABLE IF EXISTS `produtos`;
CREATE TABLE IF NOT EXISTS `produtos` (
  `idProdutos` int NOT NULL AUTO_INCREMENT,
  `codDeBarra` varchar(70) NOT NULL,
  `descricao` varchar(80) NOT NULL,
  `contrato` varchar(150) NOT NULL,
  `unidade` varchar(10) DEFAULT NULL,
  `precoCompra` decimal(10,2) DEFAULT NULL,
  `precoVenda` decimal(10,2) NOT NULL,
  `estoque` int NOT NULL,
  `estoqueMinimo` int DEFAULT NULL,
  `saida` tinyint(1) DEFAULT NULL,
  `entrada` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idProdutos`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`idProdutos`, `codDeBarra`, `descricao`, `contrato`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES
(1, '00001', 'Divulgação de cabal de rádio-FM sorriso', '001.001/2021', 'UNID', '2500.00', '2500.00', 19, 1, 0, 0),
(3, '00002', 'Veiculação de Publicidade - TV Difusora', '001.01/2021', 'CAPS', '2500.00', '2500.00', 19, 20, 1, 1),
(4, '00003', 'Veiculação de Publicidade - Rádio Clube FM', '001.01/2021', 'CAPS', '3800.00', '3800.00', 19, 20, 1, 1),
(5, '00004', 'Veiculação de Publicidade - Jornal a Tribuna', '001.01/2021', 'CAPS', '1250.00', '1250.00', 19, 20, 1, 1),
(6, '0000005', 'Veiculação de Publicidade - TV Tropical', '001.01/2021', 'CAPS', '2500.00', '2500.00', 19, 20, 1, 1),
(7, '0000006', 'Serviços de publicidade Blog-Jaziel Alves', '001.01/2021', 'CAPS', '1250.00', '1250.00', 19, 20, 1, 1),
(8, '0000007', 'Serviços de publicidade - I Noticia.com', '001.01/2021', 'CAPS', '700.00', '700.00', 19, 20, 1, 1),
(9, '0000008', 'Serviços de publicidade Blog - Folha de Cuxá', '001.01/2021', 'CAPS', '625.00', '625.00', 19, 5, 1, 1),
(10, '0000009', 'Serviços de publicidade Blog - Valber Best Comunicação', '001.01/2021', 'CAPS', '625.00', '625.00', 19, 5, 1, 1),
(11, '0000010', 'Serviços de publicidade Blog - Marrentinho', '001.01/2021', 'CAPS', '1250.00', '1250.00', 19, 5, 1, 1),
(12, '0000011', 'Serviços de publicidade Blog - Carlos Cristiano', '001.01/2021', 'CAPS', '625.00', '625.00', 19, 5, 1, 1),
(13, '0000012', 'Serviços de publicidade Blog-Wilian Rian', '01.001/2021', 'CAPS', '1250.00', '1250.00', 19, 5, 1, 1),
(14, '0000013', 'Divulgação de programa de TV - Tá na Mídia', '01.001/2021', 'CAPS', '1875.00', '1875.00', 19, 5, 1, 1),
(15, '0000014', 'Serviços de publicidade Blog-Marconi Soares', '01.001/2021', 'CAPS', '1250.00', '1250.00', 19, 5, 1, 1),
(16, '0000015', 'Serviços de publicidade Blog-Açaí Vip', '01.001/2021', 'CAPS', '1250.00', '1250.00', 19, 5, 1, 1),
(17, '0000016', 'Serviços de publicidade Blog-Maurício', '01.001/2021', 'CAPS', '625.00', '625.00', 19, 5, 1, 1),
(18, '0000017', 'Serviços de publicidade Blog-Antônio Marcos', '01.001/2021', 'CAPS', '800.00', '800.00', 19, 5, 1, 1),
(19, '0000018', 'Serviços de publicidade Blog-Maycon Sousa', '01.001/2021', 'CAPS', '625.00', '625.00', 19, 5, 1, 1),
(20, '0000019', 'Produção de peças e midias publicitárias(VT)', '01.001/2021', 'CAPS', '2362.00', '2362.00', 17, 5, 1, 1),
(21, '0000020', 'produção de peças e mídias publicitárias FLYER', '01.001/2021', 'CAPS', '1167.97', '1167.97', 0, 5, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos_os`
--

DROP TABLE IF EXISTS `produtos_os`;
CREATE TABLE IF NOT EXISTS `produtos_os` (
  `idProdutos_os` int NOT NULL AUTO_INCREMENT,
  `quantidade` int NOT NULL,
  `descricao` varchar(80) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT '0.00',
  `os_id` int NOT NULL,
  `produtos_id` int NOT NULL,
  `subTotal` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`idProdutos_os`),
  KEY `fk_produtos_os_os1` (`os_id`),
  KEY `fk_produtos_os_produtos1` (`produtos_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtos_os`
--

INSERT INTO `produtos_os` (`idProdutos_os`, `quantidade`, `descricao`, `preco`, `os_id`, `produtos_id`, `subTotal`) VALUES
(2, 1, NULL, '2500.00', 140, 1, '2500.00'),
(3, 1, NULL, '2500.00', 141, 3, '2500.00'),
(4, 1, NULL, '3800.00', 142, 4, '3800.00'),
(5, 1, NULL, '1250.00', 143, 5, '1250.00'),
(6, 1, NULL, '2500.00', 144, 6, '2500.00'),
(7, 1, NULL, '1250.00', 145, 7, '1250.00'),
(8, 1, NULL, '700.00', 146, 8, '700.00'),
(9, 1, NULL, '625.00', 147, 9, '625.00'),
(10, 1, NULL, '625.00', 148, 10, '625.00'),
(11, 1, NULL, '1250.00', 149, 11, '1250.00'),
(12, 1, NULL, '625.00', 150, 12, '625.00'),
(13, 1, NULL, '1250.00', 151, 13, '1250.00'),
(14, 1, NULL, '1875.00', 152, 14, '1875.00'),
(15, 1, NULL, '1250.00', 153, 15, '1250.00'),
(16, 1, NULL, '1250.00', 154, 16, '1250.00'),
(17, 1, NULL, '625.00', 155, 17, '625.00'),
(18, 1, NULL, '800.00', 156, 18, '800.00'),
(19, 1, NULL, '625.00', 157, 19, '625.00'),
(20, 3, NULL, '2362.00', 158, 20, '7086.00'),
(21, 8, NULL, '1167.97', 159, 21, '9343.76'),
(22, 12, NULL, '1167.97', 160, 21, '14015.64');

-- --------------------------------------------------------

--
-- Estrutura da tabela `resets_de_senha`
--

DROP TABLE IF EXISTS `resets_de_senha`;
CREATE TABLE IF NOT EXISTS `resets_de_senha` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `token` varchar(255) NOT NULL,
  `data_expiracao` datetime NOT NULL,
  `token_utilizado` tinyint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos`
--

DROP TABLE IF EXISTS `servicos`;
CREATE TABLE IF NOT EXISTS `servicos` (
  `idServicos` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `preco` decimal(10,2) NOT NULL,
  PRIMARY KEY (`idServicos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos_os`
--

DROP TABLE IF EXISTS `servicos_os`;
CREATE TABLE IF NOT EXISTS `servicos_os` (
  `idServicos_os` int NOT NULL AUTO_INCREMENT,
  `servico` varchar(80) DEFAULT NULL,
  `quantidade` double DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT '0.00',
  `os_id` int NOT NULL,
  `servicos_id` int NOT NULL,
  `subTotal` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`idServicos_os`),
  KEY `fk_servicos_os_os1` (`os_id`),
  KEY `fk_servicos_os_servicos1` (`servicos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `idUsuarios` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `rg` varchar(20) DEFAULT NULL,
  `cpf` varchar(20) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `rua` varchar(70) DEFAULT NULL,
  `numero` varchar(15) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `email` varchar(80) NOT NULL,
  `senha` varchar(200) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `situacao` tinyint(1) NOT NULL,
  `dataCadastro` date NOT NULL,
  `permissoes_id` int NOT NULL,
  `dataExpiracao` date DEFAULT NULL,
  `asaas_id` varchar(255) DEFAULT NULL,
  `url_image_user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idUsuarios`),
  KEY `fk_usuarios_permissoes1_idx` (`permissoes_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`idUsuarios`, `nome`, `rg`, `cpf`, `cep`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `email`, `senha`, `telefone`, `celular`, `situacao`, `dataCadastro`, `permissoes_id`, `dataExpiracao`, `asaas_id`, `url_image_user`) VALUES
(1, 'Administrador', 'MG-25.502.560', '600.021.520-87', '70005-115', 'Rua Acima', '12', 'Alvorada', 'Teste', 'MG', 'shelton@shelton.com', '$2y$10$Yaat1PCuHPgCh4Kk4VKbReXT5ewetMA14yiaY4pYbx8wWtt8HQsFG', '000000-0000', '', 1, '2022-05-25', 1, '3000-01-01', NULL, NULL),
(2, 'Andreia Alves Silva', '20174892002-9', '012.572.033-55', '65930-000', 'Bom Futuro', '0', 'Jacú', 'Açailândia', 'MA', 'andreia@andreia.com', '$2y$10$MaV2xnATbCZsA5ok7SfjEePPv15fM4sDhaVPVOooHKLja/rWzLZBi', '(99)99146-4794', '(99)99146-4794', 1, '2022-10-25', 2, '2022-12-31', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

DROP TABLE IF EXISTS `vendas`;
CREATE TABLE IF NOT EXISTS `vendas` (
  `idVendas` int NOT NULL AUTO_INCREMENT,
  `dataVenda` date DEFAULT NULL,
  `valorTotal` decimal(10,2) DEFAULT '0.00',
  `desconto` decimal(10,2) DEFAULT '0.00',
  `valor_desconto` decimal(10,2) DEFAULT '0.00',
  `faturado` tinyint(1) DEFAULT NULL,
  `observacoes` text,
  `observacoes_cliente` text,
  `clientes_id` int NOT NULL,
  `usuarios_id` int DEFAULT NULL,
  `lancamentos_id` int DEFAULT NULL,
  PRIMARY KEY (`idVendas`),
  KEY `fk_vendas_clientes1` (`clientes_id`),
  KEY `fk_vendas_usuarios1` (`usuarios_id`),
  KEY `fk_vendas_lancamentos1` (`lancamentos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `anexos`
--
ALTER TABLE `anexos`
  ADD CONSTRAINT `fk_anexos_os1` FOREIGN KEY (`os_id`) REFERENCES `os` (`idOs`);

--
-- Limitadores para a tabela `cobrancas`
--
ALTER TABLE `cobrancas`
  ADD CONSTRAINT `fk_cobrancas_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`idClientes`),
  ADD CONSTRAINT `fk_cobrancas_os1` FOREIGN KEY (`os_id`) REFERENCES `os` (`idOs`),
  ADD CONSTRAINT `fk_cobrancas_vendas1` FOREIGN KEY (`vendas_id`) REFERENCES `vendas` (`idVendas`);

--
-- Limitadores para a tabela `equipamentos`
--
ALTER TABLE `equipamentos`
  ADD CONSTRAINT `fk_equipanentos_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`idClientes`),
  ADD CONSTRAINT `fk_equipanentos_marcas1` FOREIGN KEY (`marcas_id`) REFERENCES `marcas` (`idMarcas`);

--
-- Limitadores para a tabela `equipamentos_os`
--
ALTER TABLE `equipamentos_os`
  ADD CONSTRAINT `fk_equipamentos_os_equipanentos1` FOREIGN KEY (`equipamentos_id`) REFERENCES `equipamentos` (`idEquipamentos`),
  ADD CONSTRAINT `fk_equipamentos_os_os1` FOREIGN KEY (`os_id`) REFERENCES `os` (`idOs`);

--
-- Limitadores para a tabela `garantias`
--
ALTER TABLE `garantias`
  ADD CONSTRAINT `fk_garantias_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`idUsuarios`);

--
-- Limitadores para a tabela `itens_de_vendas`
--
ALTER TABLE `itens_de_vendas`
  ADD CONSTRAINT `fk_itens_de_vendas_produtos1` FOREIGN KEY (`produtos_id`) REFERENCES `produtos` (`idProdutos`),
  ADD CONSTRAINT `fk_itens_de_vendas_vendas1` FOREIGN KEY (`vendas_id`) REFERENCES `vendas` (`idVendas`);

--
-- Limitadores para a tabela `lancamentos`
--
ALTER TABLE `lancamentos`
  ADD CONSTRAINT `fk_lancamentos_categorias1` FOREIGN KEY (`categorias_id`) REFERENCES `categorias` (`idCategorias`),
  ADD CONSTRAINT `fk_lancamentos_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`idClientes`),
  ADD CONSTRAINT `fk_lancamentos_contas1` FOREIGN KEY (`contas_id`) REFERENCES `contas` (`idContas`),
  ADD CONSTRAINT `fk_lancamentos_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`idUsuarios`);

--
-- Limitadores para a tabela `os`
--
ALTER TABLE `os`
  ADD CONSTRAINT `fk_os_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`idClientes`),
  ADD CONSTRAINT `fk_os_lancamentos1` FOREIGN KEY (`lancamento`) REFERENCES `lancamentos` (`idLancamentos`),
  ADD CONSTRAINT `fk_os_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`idUsuarios`);

--
-- Limitadores para a tabela `produtos_os`
--
ALTER TABLE `produtos_os`
  ADD CONSTRAINT `fk_produtos_os_os1` FOREIGN KEY (`os_id`) REFERENCES `os` (`idOs`),
  ADD CONSTRAINT `fk_produtos_os_produtos1` FOREIGN KEY (`produtos_id`) REFERENCES `produtos` (`idProdutos`);

--
-- Limitadores para a tabela `servicos_os`
--
ALTER TABLE `servicos_os`
  ADD CONSTRAINT `fk_servicos_os_os1` FOREIGN KEY (`os_id`) REFERENCES `os` (`idOs`),
  ADD CONSTRAINT `fk_servicos_os_servicos1` FOREIGN KEY (`servicos_id`) REFERENCES `servicos` (`idServicos`);

--
-- Limitadores para a tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_usuarios_permissoes1` FOREIGN KEY (`permissoes_id`) REFERENCES `permissoes` (`idPermissao`);

--
-- Limitadores para a tabela `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `fk_vendas_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`idClientes`),
  ADD CONSTRAINT `fk_vendas_lancamentos1` FOREIGN KEY (`lancamentos_id`) REFERENCES `lancamentos` (`idLancamentos`),
  ADD CONSTRAINT `fk_vendas_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`idUsuarios`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
