-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 24/07/2021 às 20:48
-- Versão do servidor: 10.6.3-MariaDB
-- Versão do PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `parking_management`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `parking`
--

CREATE TABLE IF NOT EXISTS `parking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `car` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `obs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `parking`
--

INSERT IGNORE INTO `parking` (`id`, `customer`, `car`, `date`, `dateCreated`, `status`, `obs`) VALUES
(1, 'Bob', 'Honda Civic', '2021-06-11 00:06:00', '2021-07-24 17:07:19', 'Parked', 'Not paid yet'),
(2, 'Lucas', 'Chevrolet Kadett', '2021-07-25 00:07:00', '2021-07-24 17:07:26', 'Paid', 'Paid on cash'),
(3, 'Vanessa', 'Volkswagen Beetle', '2021-07-29 00:07:00', '2021-07-24 17:07:54', 'Paid', 'Paid on cash'),
(4, 'Larissa', 'Ford Focus', '2021-06-02 00:06:00', '2021-07-24 17:07:49', 'Paid', 'Rental customer'),
(5, 'Alex', 'Ford Escort', '2021-06-11 00:06:00', '2021-07-24 17:07:54', 'Parked', 'Rental customer');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
