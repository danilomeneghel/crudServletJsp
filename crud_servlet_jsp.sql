-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 28-Set-2018 às 04:57
-- Versão do servidor: 5.7.21
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud_servlet_jsp`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `lastname` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `genre` char(1) COLLATE utf8_bin DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`userid`, `firstname`, `lastname`, `genre`, `birthday`, `email`) VALUES
(1, 'João', 'Silva', 'm', '1980-09-12', 'joao@silva.com'),
(2, 'Pedro', 'Souza', 'm', '1980-09-20', 'pedro@souza.com'),
(3, 'Ana', 'Paula', 'f', '1985-02-21', 'ana@aaa.com'),
(4, 'Camila', 'Ferreira', 'f', '1981-03-05', 'camila@aaa.com'),
(5, 'Leiticia', 'Soares', 'f', '1982-05-06', 'leticia@soares.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
