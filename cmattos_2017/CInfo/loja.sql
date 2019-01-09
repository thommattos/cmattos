-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 20-Set-2015 às 01:37
-- Versão do servidor: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loja`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `id` int(5) NOT NULL,
  `nome` text NOT NULL,
  `pessoa` enum('Fisica','Juridica') DEFAULT NULL,
  `telefone` text NOT NULL,
  `telefonesec` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Contato dos clientes';

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id`, `nome`, `pessoa`, `telefone`, `telefonesec`) VALUES
(1, 'Fulano Machado da Silva', 'Fisica', '555-001', '555-002'),
(3, 'Jardinagens Canteiro Lmtd.', 'Juridica', '555-101', '555-102');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE IF NOT EXISTS `produto` (
  `id` int(5) NOT NULL,
  `nome` text NOT NULL,
  `quantidade` int(5) DEFAULT NULL,
  `tipo` text
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Produtos no estoque';

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id`, `nome`, `quantidade`, `tipo`) VALUES
(6, 'Markvision 1 GB', 10, '1'),
(7, 'Maxprint', 10, '2'),
(8, 'Wisecase Teste 1', 5, '6');

-- --------------------------------------------------------

--
-- Estrutura da tabela `servico`
--

CREATE TABLE IF NOT EXISTS `servico` (
  `id` int(5) NOT NULL,
  `cliente` int(5) DEFAULT NULL,
  `tipo` int(5) NOT NULL,
  `descricao` text,
  `ocorrencia` text NOT NULL,
  `data` date NOT NULL,
  `status` enum('Aguardando','Entregue','Resolvido') DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Ordens de Servico';

--
-- Extraindo dados da tabela `servico`
--

INSERT INTO `servico` (`id`, `cliente`, `tipo`, `descricao`, `ocorrencia`, `data`, `status`) VALUES
(1, 1, 6, 'PC com todas as peças', 'Não liga', '2015-09-09', 'Aguardando'),
(2, NULL, 1, 'Markvision 2GB', 'Não funciona no PC de trabalho', '2015-09-12', 'Entregue'),
(3, 3, 6, 'PC Dell ', 'Cooler queimado', '2015-09-12', 'Resolvido'),
(4, 1, 3, 'MSI ZX-32', 'Não apita ao ligar', '2015-09-14', 'Aguardando'),
(5, NULL, 3, 'BIOSTAR 1ª Geração Core i3,i5', 'Testar para verificar autenticidade da placa ', '2015-09-18', 'Aguardando'),
(6, NULL, 4, 'AMD Athlon X2 2.5GHz', 'Pino entortado', '2015-09-11', 'Entregue');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipoproduto`
--

CREATE TABLE IF NOT EXISTS `tipoproduto` (
  `id` int(5) NOT NULL,
  `nome` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Tipos de Produtos a serem cadastrados';

--
-- Extraindo dados da tabela `tipoproduto`
--

INSERT INTO `tipoproduto` (`id`, `nome`) VALUES
(1, 'Memória'),
(2, 'Mouse'),
(3, 'Placa-mãe'),
(4, 'Processador'),
(5, 'Teclado'),
(6, 'Gabinete');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipovenda`
--

CREATE TABLE IF NOT EXISTS `tipovenda` (
  `id` int(5) NOT NULL,
  `venda` int(5) NOT NULL,
  `tipo` int(5) NOT NULL,
  `preco` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda`
--

CREATE TABLE IF NOT EXISTS `venda` (
  `id` int(5) NOT NULL,
  `cliente` int(5) DEFAULT NULL,
  `preco` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipoproduto`
--
ALTER TABLE `tipoproduto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipovenda`
--
ALTER TABLE `tipovenda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venda`
--
ALTER TABLE `venda`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `produto`
--
ALTER TABLE `produto`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `servico`
--
ALTER TABLE `servico`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tipoproduto`
--
ALTER TABLE `tipoproduto`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tipovenda`
--
ALTER TABLE `tipovenda`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `venda`
--
ALTER TABLE `venda`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
