-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Време на генериране: 27 юни 2022 в 11:29
-- Версия на сървъра: 10.4.24-MariaDB
-- Версия на PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данни: `phonebook`
--

-- --------------------------------------------------------

--
-- Структура на таблица `contactdetails`
--

CREATE TABLE `contactdetails` (
  `contact_id` int(11) NOT NULL COMMENT 'Primary Key',
  `contact_name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Схема на данните от таблица `contactdetails`
--

INSERT INTO `contactdetails` (`contact_id`, `contact_name`, `designation`, `phone`, `address`) VALUES
(4, 'John', 'Doctor', '(+359)988616158', 'Varna,Bulgaria'),
(3, 'Asen', 'Software Developer', '(+359)873448975', 'Sofia,Bulgaria'),
(2, 'Niki', 'Nurse Practitioner', '(+359)87240588', 'Plovdiv,Bulgaria'),
(1, 'Moni', 'Information Security Analyst', '(+359)894359649', 'Plovdiv,Bulgaria'),
(5, 'Petar', 'Data Scientist', '(+359)897555559', 'Plovdiv,Bulgaria'),
(6, 'Anton', 'Physician Assistant', '(+359)891238153', 'Sofia,Bulgaria'),
(7, 'Petko', 'Dentists ', '(+359)893312765', 'Varna,Bulgaria'),
(9, 'David', 'Physicist', '(+359)898587272', 'Burgas,Bulgaria'),
(10, 'Simeon', 'Medical and Health Services Manager', '(+359)885564973', 'Burgas,Bulgaria'),
(39, 'DEMO', '', 'DEMO', '');

-- --------------------------------------------------------

--
-- Структура на таблица `userdetails`
--

CREATE TABLE `userdetails` (
  `contact_id` int(11) NOT NULL COMMENT 'Primary Key',
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Схема на данните от таблица `userdetails`
--

INSERT INTO `userdetails` (`contact_id`, `name`, `username`, `email`, `password`) VALUES
(13, 'test', 'last', '', '123'),
(1, 'Izabela Tsvetkova', 'Izi', 'izab_sa35@student.itstep.bg', '123'),
(11, '123', '123', '123', '123'),
(12, 'test', 'test', '', 'test'),
(9, 'guest', 'guest', '', '123');

--
-- Indexes for dumped tables
--

--
-- Индекси за таблица `contactdetails`
--
ALTER TABLE `contactdetails`
  ADD PRIMARY KEY (`contact_id`);

--
-- Индекси за таблица `userdetails`
--
ALTER TABLE `userdetails`
  ADD PRIMARY KEY (`contact_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contactdetails`
--
ALTER TABLE `contactdetails`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `userdetails`
--
ALTER TABLE `userdetails`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
