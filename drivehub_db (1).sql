-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2026 at 03:33 PM
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
  `e_mail` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `e_mail`, `email`, `password`) VALUES
(1, 'Ravindu Somasiri', NULL, 'ravindusomasiri28@gmail.com', 'rhs20131714');

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
  `mileage` int(11) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT '0771234567',
  `year` int(4) DEFAULT NULL,
  `cond_paint` int(3) DEFAULT 100,
  `cond_engine` int(3) DEFAULT 100,
  `cond_interior` int(3) DEFAULT 100,
  `cond_tires` int(3) DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `vehicle_name`, `brand`, `price`, `year_made`, `category`, `fuel_type`, `mileage`, `image_url`, `phone_number`, `year`, `cond_paint`, `cond_engine`, `cond_interior`, `cond_tires`) VALUES
(1, 'Model S', 'Tesla', 89000.00, 2024, 'Luxury', 'Electric', 0, 'Model S 2024 Tesla Luxury.jpg', '0771111567', 2024, 100, 100, 100, 100),
(2, 'Civic', 'Honda', 22000.00, 2021, 'Economy', 'Petrol', 15000, 'Civic 2021 Honda Economy.jpg', '0771234567', 2021, 96, 97, 100, 100),
(3, 'Land Cruiser', 'Toyota', 85000.00, 2023, 'SUV', 'Diesel', 5000, 'Land Cruiser 2023 Toyota SUV.jpg', '0771234567', 2023, 100, 100, 100, 100),
(4, '911 Carrera', 'Porsche', 110000.00, 2022, 'Sport', 'Petrol', 1200, '911 Carrera 2022 Porsche Sport.jpg', '0701234567', 2022, 100, 100, 100, 100),
(5, 'Golf', 'Volkswagen', 28000.00, 2020, 'Economy', 'Petrol', 20000, 'Golf 2020 Volkswagen Economy.jpg', '0771234567', 2020, 98, 96, 97, 100),
(6, 'X5', 'BMW', 65000.00, 2023, 'SUV', 'Hybrid', 8000, 'X5 2023 BMW SUV.jpg', '0771134567', 2023, 100, 100, 100, 100),
(7, 'A4', 'Audi', 45000.00, 2021, 'Luxury', 'Petrol', 12000, 'A4 2021 Audi Luxury.jpg', '0770004567', 2021, 100, 98, 100, 100),
(8, 'Mustang', 'Ford', 55000.00, 2022, 'Sport', 'Petrol', 3000, 'Mustang 2022 Ford Sport.jpg', '0771334567', 2022, 100, 100, 100, 100),
(9, 'Range Rover', 'Land Rover', 95000.00, 2024, 'SUV', 'Diesel', 10000, 'Range Rover 2024 Land Rover SUV.jpg', '0772024567', 2024, 97, 100, 100, 100),
(10, 'Corolla', 'Toyota', 21000.00, 2019, 'Economy', 'Hybrid', 25000, 'Corolla 2019 Toyota Economy.jpg', '0771234567', 2019, 96, 97, 96, 100),
(11, 'Wrangler', 'Jeep', 42000.00, 2021, 'Luxury', 'Petrol', 5000, 'Wrangler 2021 Jeep Off-Road.jpg', '0771884567', 2021, 89, 90, 92, 100),
(12, 'S-Class', 'Mercedes', 120000.00, 2024, 'Luxury', 'Petrol', 500, 'S-Class 2024 Mercedes Luxury.jpg', '0771230567', 2024, 100, 100, 100, 100),
(13, 'Prius', 'Toyota', 24000.00, 2018, 'Economy', 'Hybrid', 35000, 'Prius 2018 Toyota Economy.jpg', '0778234567', 2018, 100, 89, 100, 100),
(14, 'F-150', 'Ford', 48000.00, 2022, 'Truck', 'Petrol', 18000, 'F-150 2022 Ford Truck.jpg', '0771202267', 2021, 100, 100, 100, 100),
(15, 'CX-5', 'Mazda', 32000.00, 2021, 'SUV', 'Petrol', 9000, 'CX-5 2021 Mazda SUV.jpg', '0771234567', 2021, 96, 98, 100, 100),
(16, 'Model 3', 'Tesla', 45000.00, 2023, 'Luxury', 'Electric', 2000, 'Model 3 2023 Tesla Luxury.jpg', '0771200567', 2023, 100, 97, 100, 100),
(17, 'Camry', 'Toyota', 27000.00, 2020, 'Economy', 'Petrol', 14000, 'Camry 2020 Toyota Economy.jpg', '0770134567', 2020, 100, 95, 100, 100),
(18, 'CR-V', 'Honda', 33000.00, 2022, 'SUV', 'Petrol', 11000, 'CR-V 2022 Honda SUV.jpg', '0771234567', 2019, 100, 95, 100, 100),
(19, 'Challenger', 'Dodge', 40000.00, 2021, 'Sport', 'Petrol', 6000, 'Challenger 2021 Dodge Sport.jpg', '0771200567', 2021, 100, 95, 100, 100),
(20, 'Tucson', 'Hyundai', 29000.00, 2022, 'SUV', 'Petrol', 7500, 'Tucson 2022 Hyundai SUV.jpg', '0771209567', 2022, 96, 95, 100, 100),
(21, 'Leaf', 'Nissan', 28000.00, 2019, 'Economy', 'Electric', 12000, 'Leaf 2019 Nissan Economy.jpg', '0772019567', 2019, 90, 91, 94, 100),
(22, 'G-Wagon', 'Mercedes', 160000.00, 2024, 'Luxury', 'Petrol', 100, 'G-Wagon 2024 Mercedes Luxury.jpg', '0771234567', 2024, 100, 100, 100, 100),
(23, 'Accord', 'Honda', 26000.00, 2018, 'Economy', 'Petrol', 19000, 'Accord 2018 Honda Economy.jpg', '0771234567', 2016, 94, 94, 100, 100),
(24, 'RAV4', 'Toyota', 31000.00, 2023, 'SUV', 'Hybrid', 8500, 'RAV4 2023 Toyota SUV.jpg', '0771990567', 2023, 97, 93, 100, 100),
(25, 'Vantage', 'Aston Martin', 150000.00, 2022, 'Luxury', 'Petrol', 800, 'Vantage 2022 Aston Martin Luxury.jpg', '0771231999', 2022, 100, 98, 100, 100),
(26, 'Impreza', 'Subaru', 22000.00, 2017, 'Sport', 'Petrol', 21000, 'Impreza 2017 Subaru Economy.jpg', '0771234888', 2017, 100, 92, 100, 100),
(27, 'E-Tron', 'Audi', 75000.00, 2023, 'Luxury', 'Electric', 1500, 'E-Tron 2023 Audi Luxury.jpg', '0771230000', 2023, 100, 97, 100, 100),
(28, 'Hilux', 'Toyota', 40000.00, 2022, 'Truck', 'Diesel', 12000, 'Hilux 2022 Toyota Truck.jpg', '0772224567', 2022, 92, 96, 100, 100),
(29, 'Swift', 'Suzuki', 15000.00, 2016, 'Economy', 'Petrol', 30000, 'Swift 2016 Suzuki Economy.jpg', '0779434567', 2016, 91, 88, 91, 100),
(30, 'R8', 'Audi', 170000.00, 2023, 'Sport', 'Petrol', 400, 'R8 2023 Audi Sport.jpg', '0771234567', 2022, 100, 99, 100, 100),
(31, 'Defender', 'Land Rover', 70000.00, 2023, 'Luxury', 'Diesel', 3000, 'Defender 2023 Land Rover Off-Road.jpg', '0772023567', 2023, 95, 94, 100, 100),
(32, 'Clio', 'Renault', 18000.00, 2015, 'Economy', 'Petrol', 25000, 'Clio 2015 Renault Economy.jpg', '0778834567', 2015, 91, 91, 91, 100),
(33, 'Q7', 'Audi', 62000.00, 2022, 'SUV', 'Diesel', 9500, 'Q7 2022 Audi SUV.jpg', '0771284567', 2022, 100, 96, 100, 100),
(34, 'C-Class', 'Mercedes', 50000.00, 2021, 'Luxury', 'Petrol', 7000, 'C-Class 2021 Mercedes Luxury.jpg', '0741234567', 2021, 100, 95, 100, 100),
(35, 'Cooper', 'Mini', 30000.00, 2022, 'Economy', 'Petrol', 5000, 'Cooper 2022 Mini Economy.jpg', '0771554567', 2022, 100, 94, 100, 100),
(36, 'Urusi', 'Lamborghini', 230000.00, 2024, 'Luxury', 'Petrol', 200, 'Urus 2024 Lamborghini Luxury.jpg', '0775534567', 2023, 100, 98, 100, 100),
(37, 'V60', 'Volvo', 48000.00, 2022, 'Luxury', 'Hybrid', 4000, 'V60 2022 Volvo Wagon.jpg', '0778744567', 2022, 100, 97, 100, 100),
(38, 'Aventador', 'Lamborghini', 400000.00, 2023, 'Sport', 'Petrol', 50, 'Aventador 2023 Lamborghini Sport.jpg', '0771234067', 2023, 100, 100, 100, 100),
(39, 'Panda', 'Fiat', 14000.00, 2014, 'Economy', 'Petrol', 45000, 'Panda 2014 Fiat Economy.jpg', '0771234567', 2013, 91, 92, 87, 100),
(40, 'Ghost', 'Rolls Royce', 330000.00, 2024, 'Luxury', 'Petrol', 100, 'Ghost 2024 Rolls Royce Luxury.jpg', '0771234567', 2024, 100, 100, 100, 100),
(41, 'Santa Fe', 'Hyundai', 35000.00, 2020, 'SUV', 'Diesel', 15000, 'Santa Fe 2020 Hyundai SUV.jpg', '0771774567', 2020, 94, 95, 95, 100),
(42, 'Vesta', 'Lada', 12000.00, 2021, 'Economy', 'Petrol', 10000, 'Vesta 2021 Lada Economy.jpg', '0771237767', 2021, 100, 94, 97, 100),
(43, 'Navara', 'Nissan', 38000.00, 2019, 'Truck', 'Diesel', 22000, 'Navara 2019 Nissan Truck.jpg', '0771200567', 2019, 90, 95, 100, 100),
(44, 'Taycan', 'Porsche', 194999.00, 2024, 'Luxury', 'Electric', 1200, 'Taycan 2024 Porsche Luxury.jpg', '0771456744', 2024, 100, 98, 100, 100),
(45, 'Fortuner', 'Toyota', 55000.00, 2023, 'SUV', 'Diesel', 6000, 'Fortuner 2023 Toyota SUV.jpg', '0771230567', 2023, 100, 96, 100, 100),
(46, 'W123', 'Mercedes', 45000.00, 1981, 'Classic', 'Diesel', 495000, 'W123 1981 Mercedes Classic.jpg', '0772566242', 1981, 97, 92, 97, 100),
(47, 'Mustang Fastback', 'Ford', 75000.00, 1967, 'Classic', 'Petrol', 45000, 'Mustang Fastback 1967 Ford Classic.jpg', '0771234568', 1967, 100, 100, 100, 100),
(48, 'Beetle', 'Volkswagen', 12000.00, 1974, 'Classic', 'Petrol', 120000, 'Beetle 1974 Volkswagen Classic.jpg', '0774444567', 1974, 93, 91, 93, 100),
(49, 'E-Type', 'Jaguar', 90000.00, 1965, 'Classic', 'Petrol', 135000, 'E-Type 1965 Jaguar Classic.jpg', '0775534567', -1, 96, 93, 100, 100),
(54, '504 GR', 'Peugeot', 30000.00, 1984, 'Classic', 'Petrol', 450000, '504 GR 1984 Peugeot Classic.jpg', '0772566242', 1983, 95, 87, 96, 100),
(55, 'Model Y', 'Tesla', 52000.00, 2024, 'SUV', 'Electric', 0, 'tesla model y 2024.jpg', '0771234867', 2024, 100, 100, 100, 100),
(56, 'F-Series', 'Ford', 45000.00, 2022, 'Truck', 'Petrol', 15000, 'F-Series Ford 2022.jpg', '0771234557', 2022, 100, 96, 100, 100),
(57, 'Silverado', 'Chevrolet', 43000.00, 2021, 'Truck', 'Petrol', 22000, 'Silverado Chevrolet 2021.jpg', '0771254567', 2021, 97, 95, 100, 100),
(58, 'Ram 1500', 'RAM', 47000.00, 2023, 'Truck', 'Diesel', 18000, 'Ram 1500 RAM 2023.jpg', '0771244567', 2023, 93, 96, 100, 100),
(59, 'CR-V Hybrid', 'Honda', 38000.00, 2024, 'SUV', 'Hybrid', 5000, 'CR-V Hybrid Honda 2024.jpg', '0771134567', 2024, 100, 100, 100, 100),
(60, 'Equinox', 'Chevrolet', 28000.00, 2020, 'SUV', 'Petrol', 32000, 'Equinox Chevrolet 2020.jpg', '0771764567', 2019, 95, 93, 100, 100),
(61, 'Civic Type R', 'Honda', 44000.00, 2023, 'Sport', 'Petrol', 1200, 'Civic Type R Honda 2023.jpg', '0771234567', 2023, 100, 97, 100, 100),
(62, 'Elantra', 'Hyundai', 21000.00, 2021, 'Economy', 'Petrol', 28000, 'Elantra Hyundai 2021.jpg', '0771234567', 2021, 93, 92, 93, 100),
(63, 'Seltos', 'Kia', 24000.00, 2022, 'SUV', 'Petrol', 19000, 'Seltos Kia 2022.jpg', '0772234567', 2022, 100, 94, 97, 100),
(64, 'Telluride', 'Kia', 46000.00, 2024, 'SUV', 'Petrol', 8000, 'Telluride Kia 2024.jpg', '0771234167', 2024, 100, 97, 100, 100),
(65, 'Sportage', 'Kia', 31000.00, 2023, 'SUV', 'Hybrid', 12000, 'Sportage Kia 2023.jpg', '0771134567', 2023, 100, 97, 100, 100),
(66, 'Outlander', 'Mitsubishi', 29000.00, 2021, 'SUV', 'Petrol', 35000, 'Outlander Mitsubishi 2021.jpg', '0771224567', 2021, 100, 98, 100, 100),
(67, 'Altima', 'Nissan', 26000.00, 2020, 'Economy', 'Petrol', 40000, 'Altima Nissan 2020.jpg', '0771234527', 2020, 100, 97, 100, 100),
(68, 'Sentra', 'Nissan', 21000.00, 2022, 'Economy', 'Petrol', 15000, 'Sentra Nissan 2022.jpg', '0771204567', 2022, 97, 96, 100, 100),
(69, 'Titan', 'Nissan', 50000.00, 2023, 'Truck', 'Petrol', 10000, 'Titan Nissan 2023.jpg', '0771284567', 2023, 100, 97, 100, 100),
(70, 'Pathfinder', 'Nissan', 42000.00, 2024, 'SUV', 'Petrol', 5000, 'Pathfinder Nissan 2024.jpg', '0771254567', 2023, 100, 100, 100, 100),
(71, 'Legacy', 'Subaru', 25000.00, 2021, 'Economy', 'Petrol', 30000, 'Legacy Subaru 2021.jpg', '0771234687', 2021, 96, 94, 96, 100),
(72, 'Forester', 'Subaru', 32000.00, 2023, 'SUV', 'Petrol', 12000, 'Forester Subaru 2023.jpg', '0772224567', 2023, 100, 97, 96, 100),
(73, 'Outback', 'Subaru', 34000.00, 2024, 'Luxury', 'Petrol', 9000, 'Outback Subaru 2024.jpg', '0771231567', 2024, 100, 96, 100, 100),
(74, 'Crosstrek', 'Subaru', 27000.00, 2022, 'SUV', 'Petrol', 20000, 'Crosstrek Subaru 2022.jpg', '0775434567', 2022, 100, 94, 97, 100),
(75, '4Runner', 'Toyota', 45000.00, 2020, 'SUV', 'Petrol', 45000, '4Runner Toyota 2020.jpg', '0771444567', 2020, 95, 94, 95, 100),
(76, 'Tacoma', 'Toyota', 38000.00, 2023, 'Truck', 'Petrol', 15000, 'Tacoma Toyota 2023.jpg', '0771234887', 2023, 89, 97, 100, 100),
(77, 'Tundra', 'Toyota', 55000.00, 2024, 'Truck', 'Hybrid', 5000, 'Tundra Toyota 2024.jpg', '0771237777', 2024, 94, 95, 100, 100),
(78, 'Sienna', 'Toyota', 42000.00, 2022, 'Luxury', 'Hybrid', 18000, 'Sienna Toyota 2022.jpg', '0772021567', 2022, 100, 95, 100, 100),
(79, 'Highlander', 'Toyota', 48000.00, 2023, 'SUV', 'Hybrid', 10000, 'Highlander Toyota 2023.jpg', '0771230000', 2023, 100, 96, 100, 100),
(80, 'Atlas', 'Volkswagen', 40000.00, 2021, 'SUV', 'Petrol', 25000, 'Atlas Volkswagen 2021.jpg', '0771234447', 2021, 97, 94, 100, 100),
(81, 'Tiguan', 'Volkswagen', 30000.00, 2022, 'SUV', 'Petrol', 30000, 'Tiguan Volkswagen 2022.jpg', '0771224567', 2022, 94, 93, 100, 100),
(82, 'Jetta', 'Volkswagen', 23000.00, 2023, 'Economy', 'Petrol', 15000, 'Jetta Volkswagen 2023.jpg', '0771004567', 2022, 93, 95, 93, 100),
(83, 'ID.4', 'Volkswagen', 44000.00, 2024, 'SUV', 'Electric', 2000, 'ID.4 Volkswagen 2024.jpg', '0771239567', 2024, 100, 100, 100, 100),
(84, 'A3', 'Audi', 36000.00, 2022, 'Luxury', 'Petrol', 12000, 'A3 Audi 2022.jpg', '0771234567', 2021, 96, 98, 96, 100),
(85, 'Q5', 'Audi', 48000.00, 2023, 'SUV', 'Petrol', 18000, 'Q5 Audi 2023.jpg', '0771234555', 2023, 97, 95, 96, 100),
(86, 'Q3', 'Audi', 39000.00, 2021, 'SUV', 'Petrol', 22000, 'Q3 Audi 2021.jpg', '0771234564', 2021, 94, 93, 94, 100),
(87, '3 Series', 'BMW', 46000.00, 2023, 'Luxury', 'Petrol', 10000, '3 Series BMW 2023.jpg', '0771234599', 2023, 97, 96, 100, 100),
(88, '4 Series', 'BMW', 52000.00, 2024, 'Luxury', 'Petrol', 5000, '4 Series BMW 2024.jpg', '0771994567', 2024, 100, 97, 100, 100),
(89, 'X3', 'BMW', 49000.00, 2022, 'SUV', 'Petrol', 20000, 'X3 BMW 2022.jpg', '0771294567', 2022, 96, 96, 95, 100),
(90, 'X1', 'BMW', 41000.00, 2023, 'SUV', 'Petrol', 15000, 'X1 BMW 2023.jpg', '0772234567', 2023, 96, 95, 96, 100),
(91, 'CT5', 'Cadillac', 42000.00, 2024, 'Luxury', 'Petrol', 8000, 'CT5 Cadillac 2024.jpg', '0771714567', 2024, 100, 100, 100, 100),
(92, 'XT5', 'Cadillac', 45000.00, 2022, 'SUV', 'Petrol', 25000, 'XT5 Cadillac 2022.jpg', '0771284567', 2022, 98, 97, 100, 100),
(93, 'Escalade', 'Cadillac', 85000.00, 2024, 'SUV', 'Petrol', 5000, 'Escalade Cadillac 2024.jpg', '0777134567', 2024, 100, 100, 100, 100),
(94, 'GV80', 'Genesis', 60000.00, 2023, 'SUV', 'Petrol', 10000, 'GV80 Genesis 2023.jpg', '0778884567', 2023, 100, 100, 100, 100),
(95, 'G70', 'Genesis', 41000.00, 2022, 'Luxury', 'Petrol', 15000, 'G70 Genesis 2022.jpg', '0771235567', 2022, 100, 97, 100, 100),
(96, 'G80', 'Genesis', 52000.00, 2024, 'Luxury', 'Petrol', 8000, 'G80 Genesis 2024.jpg', '0771239567', 2024, 100, 98, 100, 100),
(97, 'QX50', 'Infiniti', 41000.00, 2022, 'SUV', 'Petrol', 20000, 'QX50 Infiniti 2022.jpg', '0711234567', 2022, 100, 96, 100, 100),
(98, 'QX80', 'Infiniti', 75000.00, 2023, 'SUV', 'Petrol', 10000, 'QX80 Infiniti 2023.jpg', '0771034567', 2023, 97, 100, 100, 100),
(99, 'IS 350', 'Lexus', 45000.00, 2022, 'Luxury', 'Petrol', 12000, 'IS 350 Lexus 2022.jpg', '0771264567', 2028, 100, 95, 96, 100),
(100, 'RX 350', 'Lexus', 52000.00, 2023, 'SUV', 'Petrol', 15000, 'RX 350 Lexus 2023.jpg', '0771114567', 2023, 95, 98, 100, 100),
(101, 'ES 300h', 'Lexus', 46000.00, 2024, 'Luxury', 'Hybrid', 10000, 'ES 300h Lexus 2024.jpg', '0771234555', 2024, 100, 97, 100, 100),
(102, 'NX 300', 'Lexus', 40000.00, 2021, 'SUV', 'Petrol', 25000, 'NX 300 Lexus 2021.jpg', '0771234567', 2021, 97, 96, 100, 100),
(103, 'GX 460', 'Lexus', 60000.00, 2023, 'SUV', 'Petrol', 5000, 'GX 460 Lexus 2023.jpg', '0771454567', 2023, 100, 98, 100, 100),
(104, 'MKZ', 'Lincoln', 38000.00, 2020, 'Luxury', 'Petrol', 30000, 'MKZ Lincoln 2020.jpg', '0771231167', 2020, 96, 93, 96, 100),
(105, 'Aviator', 'Lincoln', 55000.00, 2023, 'SUV', 'Petrol', 12000, 'Lincoln Aviator2023.jpg', '0771223567', 2023, 100, 98, 100, 100),
(106, 'Navigator', 'Lincoln', 80000.00, 2024, 'SUV', 'Petrol', 8000, 'Lincoln Navigator 2024.jpg', '0771234567', 2024, 100, 96, 100, 100),
(107, 'UX', 'Lexus', 37000.00, 2023, 'SUV', 'Hybrid', 15000, 'Lexus UX 2023.jpg', '0771224567', 2023, 100, 98, 100, 100),
(108, 'XC90', 'Volvo', 58000.00, 2024, 'SUV', 'Hybrid', 10000, 'Volvo XC90  2024.jpg', '0771234999', 2024, 100, 100, 100, 100),
(109, 'XC60', 'Volvo', 48000.00, 2022, 'SUV', 'Petrol', 20000, 'Volvo XC60 2022.jpg', '0771232022', 2022, 100, 95, 100, 100),
(110, 'XC40', 'Volvo', 40000.00, 2023, 'SUV', 'Electric', 5000, 'Volvo XC402023.jpg', '0771237767', 2023, 100, 97, 100, 100),
(111, 'S60', 'Volvo', 43000.00, 2022, 'SUV', 'Petrol', 15000, 'Volvo S60 2022.jpg', '0777734567', 2022, 98, 96, 100, 100),
(112, 'Aventador', 'Lamborghini', 450000.00, 2024, 'Sport', 'Petrol', 100, 'Aventador 2023 Lamborghini Sport.jpg', '0771234500', 2023, 100, 100, 100, 100),
(113, 'Huracan', 'Lamborghini', 250000.00, 2023, 'Sport', 'Petrol', 1500, 'Lamborghini Huracan2023.jpg', '0771113567', 2023, 100, 100, 100, 100),
(114, 'Urus', 'Lamborghini', 230000.00, 2022, 'SUV', 'Petrol', 5000, 'Urus 2024 Lamborghini Luxury.jpg', '0771234367', 2022, 100, 97, 100, 100),
(115, 'SF90 Stradale', 'Ferrari', 520000.00, 2024, 'Sport', 'Hybrid', 50, 'Ferrari Roma2022.avif', '0741234567', 2024, 100, 100, 100, 100),
(116, 'F8 Tributo', 'Ferrari', 280000.00, 2023, 'Sport', 'Petrol', 1200, 'F8 Tributo 2023.jpg', '0773334567', 2023, 100, 100, 100, 100),
(117, 'Roma', 'Ferrari', 240000.00, 2022, 'Sport', 'Petrol', 2500, 'Ferrari Roma2022.avif', '0770134567', 2022, 100, 100, 100, 100),
(118, 'Portofino M', 'Ferrari', 230000.00, 2021, 'Sport', 'Petrol', 3000, 'Ferrari Portofino M 2021.jpg', '0771232167', 2021, 100, 96, 100, 100),
(119, '720S', 'McLaren', 310000.00, 2023, 'Sport', 'Petrol', 800, 'McLaren 720S 2023.jpg', '0771234544', 2023, 100, 100, 100, 100),
(120, 'Artura', 'McLaren', 230000.00, 2024, 'Sport', 'Hybrid', 500, 'McLaren Artura2024.webp', '0772024567', 2024, 100, 100, 100, 100),
(121, 'DB11', 'Aston Martin', 220000.00, 2022, 'Luxury', 'Petrol', 4000, 'Aston  Martin DB11 2022.jpg', '0771234562', 2022, 100, 97, 100, 100),
(122, 'DBX', 'Aston Martin', 200000.00, 2023, 'SUV', 'Petrol', 6000, 'Aston MartiDBX2023.jpg', '0771237567', 2023, 100, 100, 100, 100),
(123, 'DBS Superleggera', 'Aston Martin', 330000.00, 2024, 'Sport', 'Petrol', 1500, 'Aston Martin DBS Superleggera2024.jpg', '0771234590', 2024, 100, 100, 100, 100),
(124, 'Chiron', 'Bugatti', 3000000.00, 2024, 'Sport', 'Petrol', 10, 'Bugatti Chiron2024.webp', '0771234560', 2024, 100, 100, 100, 100),
(125, 'Divo', 'Bugatti', 5000000.00, 2023, 'Sport', 'Petrol', 5, 'Bugatti Divo2023.jpg', '0771234569', 2023, 100, 100, 100, 100),
(126, 'Phantom', 'Rolls Royce', 460000.00, 2024, 'Luxury', 'Petrol', 500, 'Rolls Royce Phantom2024.jpg', '0771232024', 2024, 100, 100, 100, 100),
(127, 'Cullinan', 'Rolls Royce', 350000.00, 2023, 'SUV', 'Petrol', 2000, 'Rolls Royce Cullinan2023.avif', '0777774567', 2023, 100, 100, 100, 100),
(128, 'Wraith', 'Rolls Royce', 330000.00, 2022, 'Luxury', 'Petrol', 5000, 'Rolls Royce Wraith  2022.jpg', '0771254567', 2022, 100, 98, 100, 100),
(129, 'Bentayga', 'Bentley', 200000.00, 2023, 'SUV', 'Petrol', 8000, 'Bentley Bentayga 2023.webp', '0770234567', 2023, 100, 97, 100, 100),
(130, 'Continental GT', 'Bentley', 240000.00, 2024, 'Luxury', 'Petrol', 3000, 'Bentley Continental GT 2022.avif', '0771235467', 2022, 100, 97, 100, 100),
(131, 'Flying Spur', 'Bentley', 220000.00, 2022, 'Luxury', 'Petrol', 4000, 'Bentley Flying Spur 2022.jpg', '0771234567', 2022, 100, 100, 100, 100),
(132, 'Model X', 'Tesla', 95000.00, 2024, 'SUV', 'Electric', 2000, 'Tesla ModelX 2024.jpg', '0771234567', 2024, 100, 100, 100, 100),
(133, 'Cybertruck', 'Tesla', 80000.00, 2024, 'Truck', 'Electric', 0, 'Tesla Cybertruck 2024.jpg', '0771234567', 2024, 100, 100, 100, 100),
(134, 'Lucid Air', 'Lucid', 187000.00, 2024, 'Luxury', 'Electric', 1000, 'Lucid Air2024.jpg', '0771234567', 2024, 100, 100, 100, 100),
(135, 'R1T', 'Rivian', 85000.00, 2023, 'Truck', 'Electric', 3000, 'Rivian R1T 2024.jpg', '0771234567', 2023, 100, 100, 100, 100),
(136, 'R1S', 'Rivian', 100999.00, 2024, 'SUV', 'Electric', 2000, 'Rivian R1S  2024.jpg', '0773334567', 2024, 100, 100, 100, 100),
(137, 'Taycan Cross Turismo', 'Porsche', 105000.00, 2024, 'Luxury', 'Electric', 1500, 'Porsche Taycan Cross Turismo 2024.jpg', '0771234567', 2024, 100, 100, 100, 100),
(138, 'Macan', 'Porsche', 160000.00, 2023, 'SUV', 'Petrol', 15000, 'Porsch Macan   2024.webp', '0761234567', 2024, 100, 100, 100, 100),
(139, 'Cayenne', 'Porsche', 175000.00, 2024, 'SUV', 'Petrol', 10000, 'Porsche Cayenne 2024.jpg', '0771004567', 2024, 100, 100, 100, 100),
(140, 'Panamera', 'Porsche', 95000.00, 2022, 'Luxury', 'Petrol', 12000, 'Porsche Panamera 2022.jpg', '0771243567', 2022, 100, 96, 100, 100),
(141, '718 Cayman', 'Porsche', 95000.00, 2023, 'Sport', 'Petrol', 5000, 'Porsche 718 Cayman 2023.avif', '0771234567', 2023, 100, 97, 100, 100),
(142, 'E-Type Series 1', 'Jaguar', 120000.00, 1961, 'Classic', 'Petrol', 145000, 'Jaguar  E-Type Series 1 1961.webp', '0770034567', 1961, 100, 89, 100, 100),
(143, 'DB5', 'Aston Martin', 900000.00, 1964, 'Classic', 'Petrol', 38000, 'Aston Martin  DB5 1964.jpg', '0771234566', 1964, 100, 93, 100, 100),
(144, 'Miura', 'Lamborghini', 2000000.00, 1969, 'Classic', 'Petrol', 88000, 'Lamborghini Miura 1966.jpg', '0771234567', 1966, 100, 83, 100, 100),
(145, 'Testarossa', 'Ferrari', 150000.00, 1986, 'Classic', 'Petrol', 30000, 'Ferrari Testarossa 1984.jpg', '0701234567', 1984, 100, 92, 100, 100),
(146, '240Z', 'Datsun', 45000.00, 1971, 'Classic', 'Petrol', 185000, 'Datsun 240Z 1971.jpg', '0774444567', 1971, 96, 95, 100, 100),
(147, 'C3 Corvette', 'Chevrolet', 35000.00, 1969, 'Classic', 'Petrol', 75000, 'C3 Corvett 1972.webp', '0771234111', 1972, 95, 96, 97, 100),
(148, 'Chevelle SS', 'Chevrolet', 65000.00, 1970, 'Classic', 'Petrol', 354999, '1970 cheverlot Chevelle SS.jpg', '0771234786', 1970, 91, 90, 86, 100),
(149, 'Charger R/T', 'Dodge', 85000.00, 1969, 'Classic', 'Petrol', 160000, '1969 dodge.jpg', '0774321567', 1969, 100, 100, 100, 100),
(150, 'GTO', 'Pontiac', 55000.00, 1966, 'Classic', 'Petrol', 70000, 'PontiacGTO1965.webp', '0771234588', 1965, 100, 100, 100, 100),
(151, 'Mini Cooper S', 'BMW', 25000.00, 1965, 'Classic', 'Petrol', 300500, 'BMCMini Cooper S1965.webp', '0772134567', 1965, 94, 85, 96, 100),
(152, 'DS 21', 'Citroen', 40000.00, 1972, 'Classic', 'Petrol', 110000, 'Citroen DS 21 1972.avif', '0771234567', 1971, 100, 100, 100, 100),
(153, '911 Turbo (930)', 'Porsche', 180000.00, 1985, 'Sport', 'Petrol', 105000, 'Porsche911 Turbo (930) 1981.webp', '0771234756', 1981, 100, 89, 100, 100),
(154, 'Quattro', 'Audi', 80000.00, 1983, 'Sport', 'Petrol', 95000, 'Audi Quattro 1981.webp', '0773214567', 1981, 100, 86, 100, 100),
(155, 'AD wagon', 'Nissan', 5000.00, 0, 'Economy', 'Petrol', 250000, 'adwagon.jpg', '0774110899', 2003, 0, 0, 0, 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
