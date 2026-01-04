-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2026 at 07:00 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `drivehub_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `vehicle_name` varchar(100) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `year_made` int(4) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `fuel_type` varchar(20) DEFAULT NULL,
  `mileage` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `vehicle_name`, `brand`, `price`, `year_made`, `category`, `fuel_type`, `mileage`) VALUES
(1, 'Model S', 'Tesla', 89000.00, 2024, 'Luxury', 'Electric', 0),
(2, 'Civic', 'Honda', 22000.00, 2021, 'Economy', 'Petrol', 15000),
(3, 'Land Cruiser', 'Toyota', 85000.00, 2023, 'SUV', 'Diesel', 5000),
(4, '911 Carrera', 'Porsche', 110000.00, 2022, 'Sport', 'Petrol', 1200),
(5, 'Golf', 'Volkswagen', 28000.00, 2020, 'Economy', 'Petrol', 20000),
(6, 'X5', 'BMW', 65000.00, 2023, 'SUV', 'Hybrid', 8000),
(7, 'A4', 'Audi', 45000.00, 2021, 'Luxury', 'Petrol', 12000),
(8, 'Mustang', 'Ford', 55000.00, 2022, 'Sport', 'Petrol', 3000),
(9, 'Range Rover', 'Land Rover', 95000.00, 2024, 'SUV', 'Diesel', 10000),
(10, 'Corolla', 'Toyota', 21000.00, 2019, 'Economy', 'Hybrid', 25000),
(11, 'Wrangler', 'Jeep', 42000.00, 2021, 'Off-Road', 'Petrol', 5000),
(12, 'S-Class', 'Mercedes', 120000.00, 2024, 'Luxury', 'Petrol', 500),
(13, 'Prius', 'Toyota', 24000.00, 2018, 'Economy', 'Hybrid', 35000),
(14, 'F-150', 'Ford', 48000.00, 2022, 'Truck', 'Petrol', 18000),
(15, 'CX-5', 'Mazda', 32000.00, 2021, 'SUV', 'Petrol', 9000),
(16, 'Model 3', 'Tesla', 45000.00, 2023, 'Luxury', 'Electric', 2000),
(17, 'Camry', 'Toyota', 27000.00, 2020, 'Economy', 'Petrol', 14000),
(18, 'CR-V', 'Honda', 33000.00, 2022, 'SUV', 'Petrol', 11000),
(19, 'Challenger', 'Dodge', 40000.00, 2021, 'Sport', 'Petrol', 6000),
(20, 'Tucson', 'Hyundai', 29000.00, 2022, 'SUV', 'Petrol', 7500),
(21, 'Leaf', 'Nissan', 28000.00, 2019, 'Economy', 'Electric', 12000),
(22, 'G-Wagon', 'Mercedes', 160000.00, 2024, 'Luxury', 'Petrol', 100),
(23, 'Accord', 'Honda', 26000.00, 2018, 'Economy', 'Petrol', 19000),
(24, 'RAV4', 'Toyota', 31000.00, 2023, 'SUV', 'Hybrid', 8500),
(25, 'Vantage', 'Aston Martin', 150000.00, 2022, 'Luxury', 'Petrol', 800),
(26, 'Impreza', 'Subaru', 22000.00, 2017, 'Economy', 'Petrol', 21000),
(27, 'E-Tron', 'Audi', 75000.00, 2023, 'Luxury', 'Electric', 1500),
(28, 'Hilux', 'Toyota', 40000.00, 2022, 'Truck', 'Diesel', 12000),
(29, 'Swift', 'Suzuki', 15000.00, 2016, 'Economy', 'Petrol', 30000),
(30, 'R8', 'Audi', 170000.00, 2023, 'Sport', 'Petrol', 400),
(31, 'Defender', 'Land Rover', 70000.00, 2023, 'Off-Road', 'Diesel', 3000),
(32, 'Clio', 'Renault', 18000.00, 2015, 'Economy', 'Petrol', 25000),
(33, 'Q7', 'Audi', 62000.00, 2022, 'SUV', 'Diesel', 9500),
(34, 'C-Class', 'Mercedes', 50000.00, 2021, 'Luxury', 'Petrol', 7000),
(35, 'Cooper', 'Mini', 30000.00, 2022, 'Economy', 'Petrol', 5000),
(36, 'Urusi', 'Lamborghini', 230000.00, 2024, 'Luxury', 'Petrol', 200),
(37, 'V60', 'Volvo', 48000.00, 2022, 'Wagon', 'Hybrid', 4000),
(38, 'Aventador', 'Lamborghini', 400000.00, 2023, 'Sport', 'Petrol', 50),
(39, 'Panda', 'Fiat', 14000.00, 2014, 'Economy', 'Petrol', 45000),
(40, 'Ghost', 'Rolls Royce', 330000.00, 2024, 'Luxury', 'Petrol', 100),
(41, 'Santa Fe', 'Hyundai', 35000.00, 2020, 'SUV', 'Diesel', 15000),
(42, 'Vesta', 'Lada', 12000.00, 2021, 'Economy', 'Petrol', 10000),
(43, 'Navara', 'Nissan', 38000.00, 2019, 'Truck', 'Diesel', 22000),
(44, 'Taycan', 'Porsche', 95000.00, 2024, 'Luxury', 'Electric', 1200),
(45, 'Fortuner', 'Toyota', 55000.00, 2023, 'SUV', 'Diesel', 6000),
(46, 'W123', 'Mercedes', 45000.00, 1981, 'Classic', 'Diesel', 95000),
(47, 'Mustang Fastback', 'Ford', 75000.00, 1967, 'Classic', 'Petrol', 45000),
(48, 'Beetle', 'Volkswagen', 12000.00, 1974, 'Classic', 'Petrol', 120000),
(49, 'E-Type', 'Jaguar', 90000.00, 1965, 'Classic', 'Petrol', 35000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
