-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2023 at 01:35 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `order_tracking_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `courier`
--

CREATE TABLE `courier` (
  `Cour_ID` int(11) NOT NULL,
  `Cour_Name` varchar(50) NOT NULL,
  `Cour_Num` char(11) NOT NULL,
  `Cour_Type` varchar(15) NOT NULL,
  `Cour_Desc` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='		';

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Cust_ID` int(11) NOT NULL,
  `Cust_Name` varchar(50) NOT NULL,
  `Cust_UN` varchar(20) NOT NULL,
  `Cust_Passwd` varchar(16) NOT NULL,
  `Cust_address` varchar(50) NOT NULL,
  `Cust_Email` varchar(25) NOT NULL,
  `Cust_Contact_Num` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Cust_ID`, `Cust_Name`, `Cust_UN`, `Cust_Passwd`, `Cust_address`, `Cust_Email`, `Cust_Contact_Num`) VALUES
(1, 'Matthew Torres', 'Matt', 'As9j1Xr5op574BN8', 'Villamor, Pasay City', 'mtorres@gmail.com', '09167839524'),
(2, 'Christy Miranda', 'Christy', 'q5kIaHvLktgpM9Iq', 'Malibay, Pasay City', 'christy.miranda@gmail.com', '09778473598'),
(3, 'Ester Medina', 'Ester', 'wvHVepRe7WsHHINB', 'Maricaban, Pasay City', 'est.med@gmail.com', '09861423987'),
(4, 'Jerrely Moreno', 'Jerrely ', '0YRwGLhFbUVGGa8c', 'Kalayaan, Pasay City', 'jmoreno@gmail.com', '09668725142'),
(5, 'Rufa Paloma', 'Rufa', 'lUfvyWnQRwG0s9n0', 'Sun Valley, Paranaque', 'rufa.paloma@gmail.com', '09782426355'),
(6, 'Kirsten Villamar', 'Kirsten', 'C1iwvgNSBC9B6a70', 'Sun Valley, Paranaque', 'k.villamar@gmail.com', '09583542198'),
(7, 'Samantha Balangao', 'Sam', '65Pi4bcRqg4cC9rl', 'Tramo, Pasay City', 'sam.bal@gmail.com', '09723421589'),
(8, 'Cael Concepción', 'Cael', 'wfh2L7r2myGZ7BLm', 'Malibay, Pasay City', 'cconcepción@gmail.com', '09853649725'),
(9, 'Jared Sandoval', 'Jared', '4bmqvdT9hIGXLcjR', 'Sampaloc, Manila', 'j.sandoval@gmail.com', '09358721654'),
(10, 'Austen Lorete', 'Austen', 'N50ka0LknMhsqLAR', 'Quiapo, Manila', 'a.lorete@gmail.com', '09825467819'),
(11, 'Justin Labanos', 'julab', 'MasHb41Jnda5K', 'Lower Bicutan, Taguig', 'julab0024@gmail.com', '09526548216'),
(12, 'Nigel Gerrera', 'Nigel', 'LamGq23Nma63n', 'Tondo, Manila', 'niggerrera69@gmail.com', '09463582467'),
(13, 'Manuel Labanos', 'Malabnos', 'Jakn4zkIn5akn', 'Upper Bicutan, Taguig', 'malabnos_angel@gmail.com', '09418453786'),
(14, 'Labrena Manola', 'lamanla', 'LkadnrTn412Nk', 'Olongapo City, Zambales', 'lamarlaman@gmail.com', '09463286491'),
(15, 'Prekam Rivera', 'frekum', 'maslLdjMj123Na52', 'Davao City, Davao Del Sur', 'pricome@gmail.com', '09145368492'),
(16, 'Tekila Ram', 'tequilarum', 'MasldN245nka6Nak', 'Benguet, Baguio City', 'tequilarum143@gmail.com', '09635842619'),
(17, 'Zanzel Mantel', 'zantel', 'masLj4N12bI', 'Tanauan, Batangas', 'zantelmatangas@gmail.com', '09165942359'),
(18, 'Bernadette Pangalinan', 'berna', 'lasdMdaNASNDo321', 'Misamis Oriental, Gingoog', 'panget4lyf@gmail.com', '09135842695'),
(19, 'Kupido Duling', 'dulsing', 'LmasdJamsn4125Nr', 'Dagupan, Pangasinan', 'dulingpalagi@gmail.com', '09368495362'),
(20, 'Kevin More', 'Kevmore', 'MalgnRm12Mo62Moe', 'Zambales, Quezon City', 'kevmore0124@gmail.com', '09946358426');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `Del_Address` varchar(50) NOT NULL,
  `Del_Status` varchar(30) NOT NULL,
  `Del_Mode_of_Del` varchar(30) NOT NULL,
  `Del_Date` date NOT NULL,
  `Del_Complete_Time` datetime NOT NULL,
  `Courier_Cour_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manga`
--

CREATE TABLE `manga` (
  `Manga_ISBN` bigint(11) NOT NULL,
  `Manga_Name` varchar(40) NOT NULL,
  `Manga_Author` varchar(30) NOT NULL,
  `Manga_Genre` varchar(10) NOT NULL,
  `Manga_Price` char(5) NOT NULL,
  `Manga_Desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `manga`
--

INSERT INTO `manga` (`Manga_ISBN`, `Manga_Name`, `Manga_Author`, `Manga_Genre`, `Manga_Price`, `Manga_Desc`) VALUES
(9781421587813, 'Yona of the Dawn (Vol. 1)', 'Mizuho Kusanagi', 'Action, Ad', '₱605.', 'Yona reels from the shock of witnessing a loved on'),
(9781427872296, 'Scramblues ', 'Mame march', 'Boys\' Love', '₱825.', 'Haru Kurosaki once heard a stranger\'s song in high'),
(9781626929456, 'Mushoku Tensei: Jobless Reincarnation (V', 'Rifujin na Magonote & Shirotak', 'Action, Ad', '₱770.', 'The picture of grace, beloved of her people, Princ'),
(9781642750942, 'Made in Abyss (Vol. 6)', 'Akihito Tsukushi', 'Adventure,', '₱825.', 'Riko and her friends have finally made it to the s'),
(9781646090334, 'My Dress-Up Darling (Vol. 2)', 'Shinichi Fukuda', 'Comedy, Dr', '₱880.', 'Though training to become an artisan who makes hin'),
(9781646511129, 'Blue Period (Vol. 1)', 'Tsubasa Yamaguchi', 'Drama, Sch', '₱770.', 'Yatora is the perfect high school student, with go'),
(9781646511150, 'Whisper Me a Love Song (Vol. 1)', 'Hilary Leung', 'Girls Love', '₱770.', 'An adorable new yuri manga for fans of Kase-san an'),
(9781646514748, 'Wotakoi (Vol.6)', 'Fujita', 'Comedy, Ro', '₱770.', 'A tall, quiet gamer boy and a geeky girl whose lif'),
(9781646515332, 'Rent-A-Girlfriend (Vol. 14)', 'Reiji Miyajima', 'Comedy, Ec', '₱770.', 'Catch up on the manga before Season 2 of the hit a'),
(9781646516629, 'Blue Lock (Vol. 5 ', 'Muneyuki Kaneshiro', 'Action, Dr', '₱770.', 'A mad young coach gathers soccer players from acro'),
(9781974700370, 'Tokyo Ghoul:re (Vol. 12)', 'Sui Ishida', 'Action, Ho', '₱770.', 'Furutaâ€™s new methods have made the CCG deadlier '),
(9781974707171, 'Komi Can\'t Communicate', 'Tomohito Oda', ' Comedy, R', '₱605.', 'Komi and her friends had an eventful culture festi'),
(9781974711826, 'Given (Vol. 1)', 'Natsuki Kizu', 'Ritsuka Ue', '₱770.', 'Ritsuka Uenoyama is bored with it allâ€”with schoo'),
(9781974714803, 'Jujutsu Kaisen (Vol. 4)', 'Akutami Gege', 'Action, Dr', '₱605.', 'While investigating a strange set of mysterious de'),
(9781974714995, 'The Promised Neverland (Vol. 150', 'Kaiu Shirai, Posuka Demizu', 'Adventure,', '₱605.', 'As Norman and his group prepare their plan to erad'),
(9781974715466, 'Spy x Family (Vol. 1)', 'Tatsuya Endo', 'Action, Co', '₱605.', 'Not one to depend on others, Twilight has his work'),
(9781974718160, 'Spy x Family (Vol.3)', 'Tatsuya Endo', 'Action, Co', '₱605.', 'Twilight has overcome many challenges in putting t'),
(9781974732340, 'Kaiju No. 8 (Vol. 4)', 'Naoya Matsumoto', 'Action, Co', '₱605.', 'The raid on the Defense Forceâ€™s Tachikawa base c'),
(9781974736690, 'Choujin X (Vol. 1)', 'Sui Ishida', 'Action, Co', '₱800.', 'eing a superpowered creature isn\'t all it\'s cracke'),
(9781974740581, 'Chainsaw Man (Vol. 12)', 'Tatsuki Fujimoto', 'Action, Co', '₱605.', 'Return to the world of Chainsaw Man and meet awkwa'),
(9781975332877, 'Toilet-Bound Hanako-kun', 'Iro Aida', 'Comedy, Ro', '₱770.', 'At Kamome Academy, rumors abound about the school\'');

-- --------------------------------------------------------

--
-- Table structure for table `purchase order`
--

CREATE TABLE `purchase order` (
  `PO_Ref_Num` int(11) NOT NULL,
  `PO_Date` date NOT NULL,
  `PO_Time` datetime NOT NULL,
  `PO_Pay_Meth` varchar(25) NOT NULL,
  `PO_Amount` int(11) NOT NULL,
  `Customer_Cust_ID` int(11) NOT NULL,
  `Manga_Manga_ISBN` bigint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `purchase order`
--

INSERT INTO `purchase order` (`PO_Ref_Num`, `PO_Date`, `PO_Time`, `PO_Pay_Meth`, `PO_Amount`, `Customer_Cust_ID`, `Manga_Manga_ISBN`) VALUES
(5001, '2022-12-05', '2022-12-05 12:31:33', 'Gcash', 1000, 20, NULL),
(5002, '2022-10-15', '2022-10-15 11:10:54', 'COD', 1500, 19, NULL),
(5003, '2022-12-16', '2022-12-16 11:54:31', 'COD', 1250, 18, NULL),
(5004, '2022-01-25', '2022-01-25 13:03:34', 'Credit/Debit Card', 2000, 17, NULL),
(5005, '2022-06-11', '2022-06-11 13:00:00', 'COD', 3000, 16, NULL),
(5006, '2022-06-30', '2022-06-30 14:31:30', 'Gcash', 2200, 15, NULL),
(5007, '2022-01-22', '2022-01-22 15:08:34', 'Gcash', 5000, 14, NULL),
(5008, '2022-05-05', '2022-05-05 10:35:30', 'Maya', 5500, 13, NULL),
(5009, '2022-09-18', '2022-09-18 16:41:45', 'Maya', 2340, 12, NULL),
(5010, '2022-09-19', '2022-09-19 19:54:40', 'Credit/Debit Card', 3500, 11, NULL),
(5011, '2022-01-05', '2022-01-05 21:12:23', 'COD', 6900, 10, NULL),
(5012, '2022-01-22', '2022-01-22 16:41:33', 'COD', 5500, 9, NULL),
(5013, '2022-02-14', '2022-02-14 16:44:54', 'COD', 4320, 8, NULL),
(5014, '2022-12-02', '2022-12-02 17:41:31', 'COD', 700, 7, NULL),
(5015, '2022-12-25', '2022-12-25 13:14:15', 'COD', 970, 6, NULL),
(5016, '2022-07-28', '2022-07-28 19:40:00', 'Credit/Debit Card', 10000, 5, NULL),
(5017, '2022-03-05', '2022-03-05 15:03:56', 'Gcash', 2000, 4, NULL),
(5018, '2022-03-15', '2022-03-15 14:54:54', 'Maya', 1400, 3, NULL),
(5019, '2022-11-22', '2022-11-22 10:41:44', 'Maya', 3400, 2, NULL),
(5020, '2022-05-21', '2022-05-21 12:00:51', 'Credit/Debit Card', 6000, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shipment`
--

CREATE TABLE `shipment` (
  `Ship_Date` date NOT NULL,
  `Ship_Type` varchar(15) NOT NULL,
  `Ship_Time` datetime NOT NULL,
  `Ship_Desc` varchar(30) NOT NULL,
  `Courier_Cour_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `Supp_ID` int(11) NOT NULL,
  `Supp_Name` varchar(50) NOT NULL,
  `Supp_Address` varchar(45) NOT NULL,
  `Supp_Num` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`Supp_ID`, `Supp_Name`, `Supp_Address`, `Supp_Num`) VALUES
(3001, 'Viz Media', 'San Francisco, California, USA', '(415) 546-7073'),
(3002, 'Yen Press', 'New York City, New York, USA', '(800) 759-0190'),
(3003, 'Carrotoon', 'South Korea', '(82) 590-56647'),
(3004, 'Kodansha Comics', 'Bunkyō, Tokyo, Japan', '(81) 339451111'),
(3005, 'Seven Seas Entertainment', 'Los Angeles, California, USA', '(310) 209-0083'),
(3006, 'Denpa', 'Portland, Oregon, USA', '(503) 299-6384'),
(3007, 'Shounen Jump', 'San Francisco, California, USA', '(415) 546-7073'),
(3008, 'Sol Press', 'Fullerton, California, USA', '(657) 500-2760'),
(3009, 'Kaiten Books', 'Torrance, California, USA', '(310) 951-0635'),
(3010, 'Tentai Books', 'Madrid, Spain', '(34) 689 178 9'),
(3011, 'Sublime Books', 'North America', '(650) 527-3134'),
(3012, 'Tokyo Pop', 'Los Angeles, California, United States', '(323) 920-5967');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Order Tracking/Logistics System'),
(6, 'short_name', ''),
(11, 'logo', 'uploads/1631064180_sample_compaby_logo.jpg'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1631064360_sample_bg.jpg'),
(15, 'company_name', 'Kureitibu'),
(16, 'company_email', ''),
(17, 'company_address', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2021-06-21 09:55:07'),
(3, 'Mike ', 'Williams', 'mwilliams', 'a88df23ac492e6e2782df6586a0c645f', 'uploads/1630999200_avatar5.png', NULL, 2, '2021-09-07 15:20:40', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courier`
--
ALTER TABLE `courier`
  ADD PRIMARY KEY (`Cour_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Cust_ID`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`Courier_Cour_ID`);

--
-- Indexes for table `manga`
--
ALTER TABLE `manga`
  ADD PRIMARY KEY (`Manga_ISBN`);

--
-- Indexes for table `purchase order`
--
ALTER TABLE `purchase order`
  ADD PRIMARY KEY (`PO_Ref_Num`);

--
-- Indexes for table `shipment`
--
ALTER TABLE `shipment`
  ADD PRIMARY KEY (`Courier_Cour_ID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`Supp_ID`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courier`
--
ALTER TABLE `courier`
  MODIFY `Cour_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Cust_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `delivery`
--
ALTER TABLE `delivery`
  ADD CONSTRAINT `fk_Delivery_Courier1` FOREIGN KEY (`Courier_Cour_ID`) REFERENCES `courier` (`Cour_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `shipment`
--
ALTER TABLE `shipment`
  ADD CONSTRAINT `fk_Shipment_Courier1` FOREIGN KEY (`Courier_Cour_ID`) REFERENCES `courier` (`Cour_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
