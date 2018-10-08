-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 15-Jul-2018 às 21:46
-- Versão do servidor: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tarefas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `anexos`
--

CREATE TABLE `anexos` (
  `id` int(11) NOT NULL,
  `tarefa_id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `arquivo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `anexos`
--

INSERT INTO `anexos` (`id`, `tarefa_id`, `nome`, `arquivo`) VALUES
(1, 1, 'AMeninadoVale-BelPesce.pdf', 'AMeninadoVale-BelPesce.pdf'),
(3, 1, 'Como-Usar-a-Internet-Para-Alavancar-Suas-Vendas-O-Guia-Definitivo.pdf', 'Como-Usar-a-Internet-Para-Alavancar-Suas-Vendas-O-Guia-Definitivo.pdf'),
(4, 1, 'AMeninadoVale-BelPesce.pdf', 'AMeninadoVale-BelPesce.pdf'),
(5, 2, 'Desenvolvimento web com PHP e MySQL - Casa do Codigo.pdf', 'Desenvolvimento web com PHP e MySQL - Casa do Codigo.pdf'),
(6, 1, 'Apresenta1aula.pdf', 'Apresenta1aula.pdf'),
(7, 1, 'Apresenta1aula.pdf', 'Apresenta1aula.pdf'),
(8, 1, 'Apresenta2aula.pdf', 'Apresenta2aula.pdf'),
(9, 1, 'Apresenta2aula.pdf', 'Apresenta2aula.pdf'),
(10, 1, 'Apresenta3aula.pdf', 'Apresenta3aula.pdf'),
(11, 2, 'Apresenta6aulaDW.pdf', 'Apresenta6aulaDW.pdf');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tarefas`
--

CREATE TABLE `tarefas` (
  `idtarefas` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `descricao` varchar(60) DEFAULT NULL,
  `prazo` date DEFAULT NULL,
  `prioridade` int(11) DEFAULT '1',
  `concluida` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tarefas`
--

INSERT INTO `tarefas` (`idtarefas`, `nome`, `descricao`, `prazo`, `prioridade`, `concluida`) VALUES
(1, 'TAREFA 1', 'TAREFA 1.', '2018-05-03', 3, 1),
(2, 'TAREFA 2', 'Esta Ã© a tarefa 2', '1992-12-12', 1, 0),
(3, 'TAREFA 3', 'TAREFA 3', '1992-12-12', 1, 1),
(4, 'TAREFA 4', 'TAREFA 4', '1992-12-12', 1, 1),
(5, 'TAREFA 5', 'TAREFA 5', '1992-12-12', 1, 1),
(6, 'TAREFA 6', 'TAREFA 6', '1994-04-29', 3, 1),
(7, 'Tarefa 7', 'esta Ã© a tarefa 7', '2018-05-14', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anexos`
--
ALTER TABLE `anexos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tarefas`
--
ALTER TABLE `tarefas`
  ADD PRIMARY KEY (`idtarefas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anexos`
--
ALTER TABLE `anexos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tarefas`
--
ALTER TABLE `tarefas`
  MODIFY `idtarefas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
