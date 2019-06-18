-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 18, 2019 at 05:35 PM
-- Server version: 5.7.24-0ubuntu0.18.04.1
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carsUsers`
--

-- --------------------------------------------------------

--
-- Table structure for table `usersCars`
--

CREATE TABLE `usersCars` (
  `id` int(11) NOT NULL,
  `ime` varchar(64) NOT NULL,
  `priimek` varchar(64) NOT NULL,
  `naslov` varchar(64) NOT NULL,
  `starost` int(64) NOT NULL,
  `avto` varchar(64) NOT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usersCars`
--

INSERT INTO `usersCars` (`id`, `ime`, `priimek`, `naslov`, `starost`, `avto`, `datecreated`) VALUES
(143, 'Joze', 'Novi', 'gradez 23', 22, 'mercedes', '2019-06-18 08:13:29'),
(144, 'Andreja', 'Kaliz', 'tranarjev 2', 23, 'mercedes', '2019-06-17 18:29:10'),
(154, 'Marko', 'Perger', 'Ukamrjeva 2', 32, 'volvo', '2019-06-18 13:22:49'),
(157, 'Tine', 'Hribar', 'Nanos 23', 23, 'volvo', '2019-06-17 17:04:45'),
(158, 'Janez', 'Novak', 'Kolodvorska 2-4', 43, 'saab', '2019-06-18 11:16:41'),
(159, 'Visavas', 'Ramachandran', 'Bombay', 46, 'saab', '2019-06-17 19:20:33'),
(160, 'Mirko', 'Zagorac', 'naslovna 23', 20, 'audi', '2019-06-17 19:34:24'),
(161, 'Polde', 'Pojanski', 'petrova 12', 18, 'bmw', '2019-06-17 19:39:49'),
(162, 'Marko', 'Polanski', 'ajdova 12', 18, 'bmw', '2019-06-17 19:37:14'),
(163, 'Peter', 'Pojanski', 'varceva 12', 12, 'volvo', '2019-06-17 19:39:23'),
(164, 'Andraz', 'Kolesnikov', 'tavcarjeva 22', 15, 'saab', '2019-06-17 19:52:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `usersCars`
--
ALTER TABLE `usersCars`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `usersCars`
--
ALTER TABLE `usersCars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
