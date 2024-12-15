-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2024 at 07:15 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `csmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(45) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'admin', 'admin', 987654321, 'tester1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-01-02 06:21:53');

-- --------------------------------------------------------

--
-- Table structure for table `tblcars`
--

CREATE TABLE `tblcars` (
  `ID` int(10) NOT NULL,
  `CarName` varchar(50) DEFAULT NULL,
  `CarImage` varchar(120) DEFAULT NULL,
  `CarImage1` varchar(255) DEFAULT NULL,
  `CarImage2` varchar(255) DEFAULT NULL,
  `CarImage3` varchar(255) DEFAULT NULL,
  `CarImage4` varchar(255) DEFAULT NULL,
  `CarType` varchar(120) DEFAULT NULL,
  `CarCompany` varchar(120) DEFAULT NULL,
  `CarBodycolor` varchar(50) NOT NULL,
  `CarBodytype` varchar(50) NOT NULL,
  `CarModel` varchar(50) NOT NULL,
  `CarPrice` varchar(120) DEFAULT NULL,
  `CarNumber` varchar(120) DEFAULT NULL,
  `CarLength` varchar(120) DEFAULT NULL,
  `CarWidth` varchar(120) DEFAULT NULL,
  `CarHeight` varchar(120) DEFAULT NULL,
  `Seatingcapacity` varchar(120) DEFAULT NULL,
  `FuelType` varchar(120) DEFAULT NULL,
  `Displacement` varchar(120) DEFAULT NULL,
  `MaxPower` varchar(120) DEFAULT NULL,
  `MaxTorque` varchar(120) DEFAULT NULL,
  `Milage` varchar(120) DEFAULT NULL,
  `TransmissionType` varchar(120) DEFAULT NULL,
  `NoofGear` varchar(120) DEFAULT NULL,
  `AirCondition` varchar(120) DEFAULT NULL,
  `CarPowerwindow` varchar(120) DEFAULT NULL,
  `CarCenterlocking` varchar(120) DEFAULT NULL,
  `CarABS` varchar(120) DEFAULT NULL,
  `AirBags` varchar(120) DEFAULT NULL,
  `FrontType` varchar(120) DEFAULT NULL,
  `RearType` varchar(120) DEFAULT NULL,
  `CarDescription` varchar(300) DEFAULT NULL,
  `FuelCapacity` varchar(120) DEFAULT NULL,
  `BootSpace` varchar(120) DEFAULT NULL,
  `FogLamps` varchar(120) DEFAULT NULL,
  `EngineDisplay` varchar(120) DEFAULT NULL,
  `CentralLocking` varchar(120) DEFAULT NULL,
  `LastUpdationdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcars`
--

INSERT INTO `tblcars` (`ID`, `CarName`, `CarImage`, `CarImage1`, `CarImage2`, `CarImage3`, `CarImage4`, `CarType`, `CarCompany`, `CarBodycolor`, `CarBodytype`, `CarModel`, `CarPrice`, `CarNumber`, `CarLength`, `CarWidth`, `CarHeight`, `Seatingcapacity`, `FuelType`, `Displacement`, `MaxPower`, `MaxTorque`, `Milage`, `TransmissionType`, `NoofGear`, `AirCondition`, `CarPowerwindow`, `CarCenterlocking`, `CarABS`, `AirBags`, `FrontType`, `RearType`, `CarDescription`, `FuelCapacity`, `BootSpace`, `FogLamps`, `EngineDisplay`, `CentralLocking`, `LastUpdationdate`) VALUES
(1, 'Maruti Suzuki Swift', '915fa31995d88d74dabd8666dc52a4a3.jpg', NULL, NULL, NULL, NULL, 'Sedan', 'Maruti Suzuki', 'Cherry', 'Plastic', 'Triber', '5.43 - 10.12 Lakh', '78945', '3995 mm', '1735 mm', '1515', '5', 'Diesel', '1197 cc', '71bhp@6250rpm', '96Nm@3500rpm', '28.4 kmpl', 'Automatic transmission', '5', 'Yes', 'Front and Rear', 'Yes', 'Yes', 'Driver and Passenger', '2', '898', 'Maruti Swift Dzire VXi petrol variant is priced at Rs 6.27 lakh (ex-showroom, Delhi). On the outside, this VXi variant comes with body coloured bumpers, door handles and outside rear view mirrors (ORVMs) with integrated turn indicators. The model misses out on alloy wheels but has got full wheel cov', '37 ltr', '378 mm', 'Na', '1197 cc', 'Yes', '2024-01-10 11:43:41'),
(2, 'Renault Triber', 'a5b118bd8e7c40ffe7ae22e74cbe29c6.jpg', NULL, NULL, NULL, NULL, 'Hatchbag', 'Renault', 'White', 'Plastic', 'ABC', '5.70 - 9.55 lakh', '78945', '3990 mm', '1739 mm', '1643 mm', '7', 'Diesel', '999 cc', '72Ps @ 6250 RPM', '96Nm @ 3500 RPM', '28.4 kmpl', 'Automatic transmission', '5', 'Yes', 'Front and Rear', 'Yes', 'Yes', 'Driver and Passenger', 'Mcpherson Strut', 'Torsion Beam', 'The Renault Triber is a budget MPV from French company Renault. It is a 7-seater vehicle based on the Renault Kwid. The big USP of the Renault Triber is that it will get detachable third-row seats which can be taken out to optimise the cargo space. It will have manual folding and unlatching operatio', '40 ltr', '378 mm', 'Front', '1197 cc', 'Yes', '2024-01-10 11:43:41'),
(3, 'Nissan Kicks', 'd41d8cd98f00b204e9800998ecf8427e.png', NULL, NULL, NULL, NULL, 'SUV', 'Nissan', 'Blue', 'Plastic', 'Kicks', '10.91 - 17.38 Lak', '78946', '4384 mm', '1813 mm', '1656 mm', '5', 'Diesel', '1498 CC', '104 bhp@5600 rpm', '142 Nm@4000 rpm', '14.2 Kmpl', 'Automatic transmission', '5', 'Yes', 'Front and Rear', 'Yes', 'Yes', 'Driver and Passenger', '2', '898', 'Nissan is the newest entrant and though its yet to launch Kicks in India, we got a chance to bring the segment benchmark - the Hyundai Creta', '50 ltr', '378 mm', 'Front', '1197 cc', 'Yes', '2024-01-10 11:43:41'),
(4, 'MARUTI-SUZUKI ALTO K10', 'cddb23f513bccb3e89a12687fd9de4b2.jpg', NULL, NULL, NULL, NULL, 'Hatchbag', 'Maruti Suzuki', 'Orange', 'Plastic', 'ALTO K10', '4.51-6.21 lakh', '774654', '3620 mm', '1495 mm', '1460 mm', '5', 'Petrol', '998 cc', '67 bhp', '91@3500 rpm', '20.2 km/ltr', 'Automatic transmission', '5', 'Yes', 'Front and Rear', 'Yes', 'Yes', 'Driver and Passenger', 'McPherson Strut', '3-Link Rigid Axle', 'Alto K10 is the elder sibling of the Alto 800 from the Maruti-Suzukiâ€™s range. It is the highest selling vehicle in India and it is prefered by most brand for the mid class customers. It  is available in Tango Orange, Granite Grey, Fire Brick Red, Silky Silver and Superior White colours.\r\nService c', '35 ltr', '268 mm', 'Front', '64646 cc', 'Yes', '2024-01-10 11:43:41'),
(5, 'Ford Figo Ambiente 2.1', '985dbf74fe122ce6688bb403e28e0544.jpg', NULL, NULL, NULL, NULL, 'Hatchbag', 'Ford', 'Silver', 'Plastic', 'Ambiente 2.1', '5.23-10.83 lakh', '5689', '3886 mm', '1695 mm', '1525 mm', '5', 'Petrol', '1196 cc', '88 bhp', '112@4000 rpm', '18.16 km/ltr', 'Manual transmission', '5', 'Yes', 'Front and Rear', 'Yes', 'Yes', 'Driver and Passenger', 'McPherson Strut', 'Twist Beam', 'The new Figo hatchback is the next generation model from Ford in the B-Segment. The hatchback has been designed keeping in mind the One Ford philosophy followed by Fordâ€™s global line-up.', '42 ltr', '286 mm', 'Rear', '1197 cc', 'Yes', '2024-01-10 11:43:41'),
(6, 'HYUNDAI EON  Sportz Petrol', '2066225b0edcac9c46cfe98dab4a8cfb.jpg', NULL, NULL, NULL, NULL, 'Hatchbag', 'Hyundai', 'Red', 'Plastic', 'Sportz Petrol', '4.82-11.28 lakh', '78456', '3495 mm', '1550 mm', '1500 mm', '5', 'Petrol', '1197 cc', '55 bhp', '76@4000 rpm', '21 km/ltr', 'Manual transmission', '5', 'Yes', 'Front and Rear', 'Yes', 'Yes', 'Driver and Passenger', 'McPherson Strut', 'Torsion Beam Axle', 'The Hyundai Eon, is a city car produced by Hyundai. It was launched in 2011 in India, the Eon is produced for the domestic and export markets as the companys entry level city car.', '32 ltr', '378 mm', 'Front', '1197 cc', 'Yes', '2024-01-10 11:43:41'),
(7, 'Hyundai Creta', '5e29671750025bdb838e7931f5f15783.jpg', NULL, NULL, NULL, NULL, 'SUV', 'Hyundai', 'Orange', 'Plastic', 'Creta', '9.60 - 15.65 lakh', '235689', '4270 mm', '1780 mm', '1665 mm', '5', 'Diesel', '1582 cc', '126.2bhp@4000rpm', '259.87NM@1500-3000rpm', '20.5 kmpl', 'Manual transmission', '5', 'Yes', 'Front and Rear', 'No', 'Yes', 'Driver, Passenger and Side Front', 'McPherson Strut', 'Twist Beam', 'Hyundai has been constantly and silently been updating the Creta. About six months after the launch of the Creta facelift, Hyundai added the SX(O) Executive variant to the Creta lineup. The variant is available with both 1.6-litre petrol and diesel engines and both can be paired with a 6-speed manua', '50 ltr', '400-litres', 'Front', '1582 cc', 'No', '2024-01-10 11:43:41'),
(8, 'BMW X1', 'd41d8cd98f00b204e9800998ecf8427e.jpg', 'ce04f21ba9b0624d83b0fe8f0f0a14e5.jpg', '455bca91a148120a9d2eb99961cb69bd.jpg', 'db990fb13e06d6de60cfc855b90a696a.jpg', '0e35987b92e2b5057af2208ed4182274.jpg', 'MUV', 'BMW', 'Whie', 'Metal', 'X1', '35.2 - 45.7 Lakh', 'FSDS24234', '4439', '2060', '505', '4', 'Diesel', '1995', '190bhp@4000rpm', '400Nm@1750-2500rpm', '10km/Ltr', 'Manual transmission', '8', 'Yes', 'NA', 'Yes', 'Yes', 'Yes', 'NA', 'NA', 'X1 Specs, Features and Price\r\nThe BMW X1 has 1 Diesel Engine and 1 Petrol Engine on offer. The Diesel engine is 1995 cc while the Petrol engine is 1998 cc. It is available with the Automatic transmission. Depending upon the variant and fuel type the X1 has a mileage of 15.71 to 20.68 kmpl. The X1 is', '61', '300', 'Front', 'Yes', 'Yes', '2024-01-10 11:43:41'),
(16, 'MG Hector', '14c14bc3542555241398984169993947.jpg', '156005c5baf40ff51a327f1c34f2975b1563600027.jpg', '799bad5a3b514f096e69bbc4a7896cd91563600027.jpg', 'd0096ec6c83575373e3a21d129ff8fef1563600027.jpg', '032b2cc936860b03048302d991c3498f1563600027.jpg', 'SUV', 'Tata', 'Red', 'metal', 'Automatic', '12lac - 16 Lac', 'HJGG25235', '1345', '233', '234', '7', 'Diesel', 'NA', '12000HCC', '24234', '12 Km/Ltr', 'Automatic transmission', '5', 'Yes', 'Yes', 'Yes', 'Yes', 'YEs', 'ghfhgf', 'fdsfds', 'This is sample text for testing', '45 ltr', 'Yes', 'Yes', 'YEs', 'Yes', '2024-01-10 11:43:41');

-- --------------------------------------------------------

--
-- Table structure for table `tblcompany`
--

CREATE TABLE `tblcompany` (
  `ID` int(10) NOT NULL,
  `CompanyName` varchar(120) DEFAULT NULL,
  `CompanyImage` varchar(200) NOT NULL,
  `CompanyRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcompany`
--

INSERT INTO `tblcompany` (`ID`, `CompanyName`, `CompanyImage`, `CompanyRegdate`) VALUES
(1, 'Nissan', 'b2a4e42ded25ef0cad02c7a8fe301541.jpg', '2024-01-05 11:01:58'),
(4, 'Audi', '165fa0886c15eb9ffee37819744af8b2.jpg', '2024-01-05 11:01:58'),
(5, 'Bajaj', 'fa6e631f905ad200b857cfb360bfee7b.png', '2024-01-05 11:01:58'),
(7, 'BMW', '0096fd0901bd53ae8874845888b12fa6.jpg', '2024-01-05 11:01:58'),
(9, 'Chevrolet', '2c9b6036d5cf5b7644d0df0fa52f6d1a.jpg', '2024-01-05 11:01:58'),
(10, 'Datsun', 'a66b52d27bdf5885e29f40a5203408b3.jpg', '2024-01-05 11:01:58'),
(12, 'Ferrari', 'd287be81932f2170ccd0fc00af3b77a9.png', '2024-01-05 11:01:58'),
(13, 'Fiat', '4b350a990a2d76f9982987f2e9860d39.jpg', '2024-01-05 11:01:58'),
(15, 'Ford', '1c56cb9527018d07f5846fc1b8dfa19e.jpg', '2024-01-05 11:01:58'),
(16, 'Honda', '7469caa8711f9cda518cbf8b532075c9.png', '2024-01-05 11:01:58'),
(17, 'Hyundai', '09c1ccd09bdc92ba0c07d5792252d0da.png', '2024-01-05 11:01:58'),
(19, 'Jaguar', '4b88c17cb0b9284013d7c7cc38a01c02.jpg', '2024-01-05 11:01:58'),
(24, 'Lexus', '610218a9544639fcbed9866a303fd01d.png', '2024-01-05 11:01:58'),
(25, 'Mahindra', 'a7afd646e3e169976110a92ba231784c.png', '2024-01-05 11:01:58'),
(26, 'Maruti Suzuki', 'e73abd734b96481f98c28fe0d56fa1cc.png', '2024-01-05 11:01:58'),
(28, 'Mercedes-Benz', '0a11b55c90f3f3d0226896e19cc019de.png', '2024-01-05 11:01:58'),
(30, 'MG Motor', '769eaa4877849154165c53f123b9a341.jpg', '2024-01-05 11:01:58'),
(32, 'Mitsubishi', '83c81af559880aa221bbe12f7e3952e1.png', '2024-01-05 11:01:58'),
(36, 'Renault', '53ae0f8889e1e66ac226d631e9826efc.jpg', '2024-01-05 11:01:58'),
(38, 'Skoda', 'edf43a4f08b9c8853c2f39336ee1e00b.png', '2024-01-05 11:01:58'),
(39, 'Tata', '54efb08fede8f0ab5257eeb02f952710.png', '2024-01-05 11:01:58'),
(40, 'Tesla', 'f915b8b50e6ea10b9069180ef592c0f9.jpg', '2024-01-05 11:01:58'),
(41, 'Toyota', '4b8b7b08c7899ca522d1f7a95860c6e8.jpg', '2024-01-05 11:01:58'),
(42, 'Volkswagen', '1ad26f835a2194b4f97c4db6d2d7a69a.jpg', '2024-01-05 11:01:58'),
(43, 'Volvo', 'd99e00f52a1198f15b4ec3bcb7b2cf14.jpg', '2024-01-05 11:01:58'),
(44, 'Test', '799bad5a3b514f096e69bbc4a7896cd9.jpg', '2024-01-05 11:01:58');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `ID` int(10) NOT NULL,
  `EnquiryNumber` varchar(10) NOT NULL,
  `CardId` mediumint(50) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Message` varchar(250) DEFAULT NULL,
  `EnquiryDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` varchar(10) NOT NULL,
  `AdminRemark` varchar(200) NOT NULL,
  `AdminRemarkdate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`ID`, `EnquiryNumber`, `CardId`, `FullName`, `Email`, `MobileNumber`, `Message`, `EnquiryDate`, `Status`, `AdminRemark`, `AdminRemarkdate`) VALUES
(7, '583480868', 1, 'Anuj kumar', 'ak@gmail.com', 1231231230, 'i want to purchase this car', '2024-01-26 16:07:18', 'Answer', 'User purchased the car', '2024-01-26 16:51:39'),
(8, '240604751', 2, 'Amit ', 'amitk123@gmail.com', 1234213123, 'i want to purchase from this car on laon', '2024-01-26 17:00:47', 'Answer', 'This is for testing.', '2024-01-26 17:01:17');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(120) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `HeadOffice` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `PhoneNumber` bigint(10) NOT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`ID`, `PageType`, `PageTitle`, `HeadOffice`, `Email`, `PhoneNumber`, `PageDescription`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '', '', 0, 'Welcome to Car Showroom Management System . Indias largest car seller. Car Showroom Management System  has always striven to serve car buyers in the most comprehensive and convenient way possible.<div><br></div><div><div><ol><li><span style=\"color: rgb(0, 0, 0); font-family: uni_neuebook; font-size: 18px; text-align: center;\">Our strong focus on manufacturing excellence ensures that our facilities carry out every step in the manufacturing process backed by leading-edge R&amp;D and meeting the highest standards of quality.</span><br></li><li><span style=\"color: rgb(0, 0, 0); font-family: uni_neuebook; font-size: 18px; text-align: center;\">Our R&amp;D centres focus on the look and feel of our vehicles, while investing in safety, efficiency and fuel economy.<br></span></li><li><span style=\"color: rgb(0, 0, 0); font-family: uni_neuebook; font-size: 18px; text-align: center;\">Our manufacturing facilities are certified for world-class manufacturing and quality standards. We have state-of-the-art technology backed by passionate engineering, quality talent and focus on automation and technology.<br></span></li></ol></div></div>', '2024-01-23 05:22:06'),
(2, 'contactus', 'Contact Us', 'RICH MOTORS: xyz phase 3, khargar', 'richmotors@gmail.com', 8369664431, 'RICH MOTORS: xyz phase 3, khargar', '2024-01-25 05:22:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcars`
--
ALTER TABLE `tblcars`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcompany`
--
ALTER TABLE `tblcompany`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CompanyName` (`CompanyName`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcars`
--
ALTER TABLE `tblcars`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblcompany`
--
ALTER TABLE `tblcompany`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
