-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2026 at 10:09 AM
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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(49, 'E-Type', 'Jaguar', 90000.00, 1965, 'Classic', 'Petrol', 35000),
(54, '504 GR', 'Peugeot', 30000.00, 1984, 'Classic', NULL, NULL),
(55, 'Model Y', 'Tesla', 52000.00, 2024, 'SUV', 'Electric', 0),
(56, 'F-Series', 'Ford', 45000.00, 2022, 'Truck', 'Petrol', 15000),
(57, 'Silverado', 'Chevrolet', 43000.00, 2021, 'Truck', 'Petrol', 22000),
(58, 'Ram 1500', 'RAM', 47000.00, 2023, 'Truck', 'Diesel', 18000),
(59, 'CR-V Hybrid', 'Honda', 38000.00, 2024, 'SUV', 'Hybrid', 5000),
(60, 'Equinox', 'Chevrolet', 28000.00, 2020, 'SUV', 'Petrol', 32000),
(61, 'Civic Type R', 'Honda', 44000.00, 2023, 'Sport', 'Petrol', 1200),
(62, 'Elantra', 'Hyundai', 21000.00, 2021, 'Economy', 'Petrol', 28000),
(63, 'Seltos', 'Kia', 24000.00, 2022, 'SUV', 'Petrol', 19000),
(64, 'Telluride', 'Kia', 46000.00, 2024, 'SUV', 'Petrol', 8000),
(65, 'Sportage', 'Kia', 31000.00, 2023, 'SUV', 'Hybrid', 12000),
(66, 'Outlander', 'Mitsubishi', 29000.00, 2021, 'SUV', 'Petrol', 35000),
(67, 'Altima', 'Nissan', 26000.00, 2020, 'Economy', 'Petrol', 40000),
(68, 'Sentra', 'Nissan', 21000.00, 2022, 'Economy', 'Petrol', 15000),
(69, 'Titan', 'Nissan', 50000.00, 2023, 'Truck', 'Petrol', 10000),
(70, 'Pathfinder', 'Nissan', 42000.00, 2024, 'SUV', 'Petrol', 5000),
(71, 'Legacy', 'Subaru', 25000.00, 2021, 'Economy', 'Petrol', 30000),
(72, 'Forester', 'Subaru', 32000.00, 2023, 'SUV', 'Petrol', 12000),
(73, 'Outback', 'Subaru', 34000.00, 2024, 'Wagon', 'Petrol', 9000),
(74, 'Crosstrek', 'Subaru', 27000.00, 2022, 'SUV', 'Petrol', 20000),
(75, '4Runner', 'Toyota', 45000.00, 2020, 'SUV', 'Petrol', 45000),
(76, 'Tacoma', 'Toyota', 38000.00, 2023, 'Truck', 'Petrol', 15000),
(77, 'Tundra', 'Toyota', 55000.00, 2024, 'Truck', 'Hybrid', 5000),
(78, 'Sienna', 'Toyota', 42000.00, 2022, 'Van', 'Hybrid', 18000),
(79, 'Highlander', 'Toyota', 48000.00, 2023, 'SUV', 'Hybrid', 10000),
(80, 'Atlas', 'Volkswagen', 40000.00, 2021, 'SUV', 'Petrol', 25000),
(81, 'Tiguan', 'Volkswagen', 30000.00, 2022, 'SUV', 'Petrol', 30000),
(82, 'Jetta', 'Volkswagen', 23000.00, 2023, 'Economy', 'Petrol', 15000),
(83, 'ID.4', 'Volkswagen', 44000.00, 2024, 'SUV', 'Electric', 2000),
(84, 'A3', 'Audi', 36000.00, 2022, 'Luxury', 'Petrol', 12000),
(85, 'Q5', 'Audi', 48000.00, 2023, 'SUV', 'Petrol', 18000),
(86, 'Q3', 'Audi', 39000.00, 2021, 'SUV', 'Petrol', 22000),
(87, '3 Series', 'BMW', 46000.00, 2023, 'Luxury', 'Petrol', 10000),
(88, '4 Series', 'BMW', 52000.00, 2024, 'Luxury', 'Petrol', 5000),
(89, 'X3', 'BMW', 49000.00, 2022, 'SUV', 'Petrol', 20000),
(90, 'X1', 'BMW', 41000.00, 2023, 'SUV', 'Petrol', 15000),
(91, 'CT5', 'Cadillac', 42000.00, 2024, 'Luxury', 'Petrol', 8000),
(92, 'XT5', 'Cadillac', 45000.00, 2022, 'SUV', 'Petrol', 25000),
(93, 'Escalade', 'Cadillac', 85000.00, 2024, 'SUV', 'Petrol', 5000),
(94, 'GV80', 'Genesis', 60000.00, 2023, 'SUV', 'Petrol', 10000),
(95, 'G70', 'Genesis', 41000.00, 2022, 'Luxury', 'Petrol', 15000),
(96, 'G80', 'Genesis', 52000.00, 2024, 'Luxury', 'Petrol', 8000),
(97, 'QX50', 'Infiniti', 41000.00, 2022, 'SUV', 'Petrol', 20000),
(98, 'QX80', 'Infiniti', 75000.00, 2023, 'SUV', 'Petrol', 10000),
(99, 'IS 350', 'Lexus', 45000.00, 2022, 'Luxury', 'Petrol', 12000),
(100, 'RX 350', 'Lexus', 52000.00, 2023, 'SUV', 'Petrol', 15000),
(101, 'ES 300h', 'Lexus', 46000.00, 2024, 'Luxury', 'Hybrid', 10000),
(102, 'NX 300', 'Lexus', 40000.00, 2021, 'SUV', 'Petrol', 25000),
(103, 'GX 460', 'Lexus', 60000.00, 2023, 'SUV', 'Petrol', 5000),
(104, 'MKZ', 'Lincoln', 38000.00, 2020, 'Luxury', 'Petrol', 30000),
(105, 'Aviator', 'Lincoln', 55000.00, 2023, 'SUV', 'Petrol', 12000),
(106, 'Navigator', 'Lincoln', 80000.00, 2024, 'SUV', 'Petrol', 8000),
(107, 'UX', 'Lexus', 37000.00, 2023, 'SUV', 'Hybrid', 15000),
(108, 'XC90', 'Volvo', 58000.00, 2024, 'SUV', 'Hybrid', 10000),
(109, 'XC60', 'Volvo', 48000.00, 2022, 'SUV', 'Petrol', 20000),
(110, 'XC40', 'Volvo', 40000.00, 2023, 'SUV', 'Electric', 5000),
(111, 'S60', 'Volvo', 43000.00, 2022, 'Luxury', 'Petrol', 15000),
(112, 'Aventador', 'Lamborghini', 450000.00, 2024, 'Sport', 'Petrol', 100),
(113, 'Huracan', 'Lamborghini', 250000.00, 2023, 'Sport', 'Petrol', 1500),
(114, 'Urus', 'Lamborghini', 230000.00, 2022, 'SUV', 'Petrol', 5000),
(115, 'SF90 Stradale', 'Ferrari', 520000.00, 2024, 'Sport', 'Hybrid', 50),
(116, 'F8 Tributo', 'Ferrari', 280000.00, 2023, 'Sport', 'Petrol', 1200),
(117, 'Roma', 'Ferrari', 240000.00, 2022, 'Sport', 'Petrol', 2500),
(118, 'Portofino M', 'Ferrari', 230000.00, 2021, 'Sport', 'Petrol', 3000),
(119, '720S', 'McLaren', 310000.00, 2023, 'Sport', 'Petrol', 800),
(120, 'Artura', 'McLaren', 230000.00, 2024, 'Sport', 'Hybrid', 500),
(121, 'DB11', 'Aston Martin', 220000.00, 2022, 'Luxury', 'Petrol', 4000),
(122, 'DBX', 'Aston Martin', 200000.00, 2023, 'SUV', 'Petrol', 6000),
(123, 'DBS Superleggera', 'Aston Martin', 330000.00, 2024, 'Sport', 'Petrol', 1500),
(124, 'Chiron', 'Bugatti', 3000000.00, 2024, 'Sport', 'Petrol', 10),
(125, 'Divo', 'Bugatti', 5000000.00, 2023, 'Sport', 'Petrol', 5),
(126, 'Phantom', 'Rolls Royce', 460000.00, 2024, 'Luxury', 'Petrol', 500),
(127, 'Cullinan', 'Rolls Royce', 350000.00, 2023, 'SUV', 'Petrol', 2000),
(128, 'Wraith', 'Rolls Royce', 330000.00, 2022, 'Luxury', 'Petrol', 5000),
(129, 'Bentayga', 'Bentley', 200000.00, 2023, 'SUV', 'Petrol', 8000),
(130, 'Continental GT', 'Bentley', 240000.00, 2024, 'Luxury', 'Petrol', 3000),
(131, 'Flying Spur', 'Bentley', 220000.00, 2022, 'Luxury', 'Petrol', 4000),
(132, 'Model X', 'Tesla', 95000.00, 2024, 'SUV', 'Electric', 2000),
(133, 'Cybertruck', 'Tesla', 80000.00, 2024, 'Truck', 'Electric', 0),
(134, 'Lucid Air', 'Lucid', 87000.00, 2024, 'Luxury', 'Electric', 1000),
(135, 'R1T', 'Rivian', 75000.00, 2023, 'Truck', 'Electric', 3000),
(136, 'R1S', 'Rivian', 78000.00, 2024, 'SUV', 'Electric', 2000),
(137, 'Taycan Cross Turismo', 'Porsche', 105000.00, 2024, 'Luxury', 'Electric', 1500),
(138, 'Macan', 'Porsche', 60000.00, 2023, 'SUV', 'Petrol', 15000),
(139, 'Cayenne', 'Porsche', 75000.00, 2024, 'SUV', 'Petrol', 10000),
(140, 'Panamera', 'Porsche', 95000.00, 2022, 'Luxury', 'Petrol', 12000),
(141, '718 Cayman', 'Porsche', 65000.00, 2023, 'Sport', 'Petrol', 5000),
(142, 'E-Type Series 1', 'Jaguar', 120000.00, 1961, 'Classic', 'Petrol', 45000),
(143, 'DB5', 'Aston Martin', 900000.00, 1964, 'Classic', 'Petrol', 38000),
(144, 'Miura', 'Lamborghini', 2000000.00, 1969, 'Classic', 'Petrol', 25000),
(145, 'Testarossa', 'Ferrari', 150000.00, 1986, 'Classic', 'Petrol', 30000),
(146, '240Z', 'Datsun', 45000.00, 1971, 'Classic', 'Petrol', 85000),
(147, 'C3 Corvette', 'Chevrolet', 35000.00, 1969, 'Classic', 'Petrol', 75000),
(148, 'Chevelle SS', 'Chevrolet', 65000.00, 1970, 'Classic', 'Petrol', 55000),
(149, 'Charger R/T', 'Dodge', 85000.00, 1969, 'Classic', 'Petrol', 60000),
(150, 'GTO', 'Pontiac', 55000.00, 1966, 'Classic', 'Petrol', 70000),
(151, 'Mini Cooper S', 'BMC', 25000.00, 1965, 'Classic', 'Petrol', 90000),
(152, 'DS 21', 'Citroen', 40000.00, 1972, 'Classic', 'Petrol', 110000),
(153, '911 Turbo (930)', 'Porsche', 180000.00, 1985, 'Classic', 'Petrol', 42000),
(154, 'Quattro', 'Audi', 80000.00, 1983, 'Classic', 'Petrol', 95000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
