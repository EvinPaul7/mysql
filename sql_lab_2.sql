
-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2022 at 02:21 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql_lab_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `agent_compliant_solution`
--

CREATE TABLE `agent_compliant_solution` (
  `id` int(5) NOT NULL,
  `compliant_id` int(10) NOT NULL,
  `assigned_to` int(10) NOT NULL,
  `close_compliant` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agent_compliant_solution`
--

INSERT INTO `agent_compliant_solution` (`id`, `compliant_id`, `assigned_to`, `close_compliant`) VALUES
(1, 1, 1001, ''),
(2, 2, 1002, ''),
(3, 3, 1004, ''),
(4, 4, 1000, ''),
(5, 5, 1005, '');

-- --------------------------------------------------------

--
-- Table structure for table `agent_login`
--

CREATE TABLE `agent_login` (
  `id` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email_id` varchar(25) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agent_login`
--

INSERT INTO `agent_login` (`id`, `username`, `email_id`, `password`) VALUES
(1, 'Evin', 'evin@gmail.com', 'evin@1122'),
(2, 'Nithya', 'nithya@gmail.com', 'nithya@1122'),
(3, 'Nithin', 'nithin@gmail.com', 'nithin@1122'),
(4, 'Riya', 'riya@gmail.com', 'riya@1122'),
(5, 'Jos', 'jos@gmail.com', 'jos@1122');

-- --------------------------------------------------------

--
-- Table structure for table `compliants`
--

CREATE TABLE `compliants` (
  `id` int(5) NOT NULL,
  `customer_id` int(10) DEFAULT NULL,
  `full_name` varchar(20) NOT NULL,
  `emailid` varchar(15) NOT NULL,
  `compliant_id` int(15) DEFAULT NULL,
  `compliants` text NOT NULL,
  `completed` varchar(50) DEFAULT NULL,
  `inprogress` varchar(50) DEFAULT NULL,
  `stuck` varchar(50) DEFAULT NULL,
  `closed` varchar(50) DEFAULT NULL,
  `assigned_to` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `compliants`
--

INSERT INTO `compliants` (`id`, `customer_id`, `full_name`, `emailid`, `compliant_id`, `compliants`, `completed`, `inprogress`, `stuck`, `closed`, `assigned_to`) VALUES
(1, 100, 'Jithin Thomas', 'jithu@gmail.com', 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'Yes', NULL, NULL, NULL, 1001),
(2, 101, 'Annie Grace', 'annie@gmail.com', 2, ' Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum,  comes from a line in section 1.10.32.', NULL, NULL, 'Yes', NULL, 1002),
(3, 102, 'Jisha Jose', 'jisha@gmail.com', 3, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', NULL, NULL, NULL, 'Yes', 1004),
(4, 103, 'Akshay R', 'akshy@gmail.com', 4, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for  will uncover many web sites still in their infancy', NULL, 'Yes', NULL, NULL, 1000),
(5, 104, 'Chan Zxhiu', 'chan1@gmail.com', 5, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. ', NULL, NULL, NULL, 'Yes', 1005);

-- --------------------------------------------------------

--
-- Table structure for table `employee_details`
--

CREATE TABLE `employee_details` (
  `id` int(5) NOT NULL,
  `full_name` varchar(20) NOT NULL,
  `employee_id` int(10) NOT NULL,
  `emailid` varchar(20) NOT NULL,
  `assigned_customer_id` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_details`
--

INSERT INTO `employee_details` (`id`, `full_name`, `employee_id`, `emailid`, `assigned_customer_id`) VALUES
(1, 'Greeshma Jay', 1000, 'greeshma@gmail.com', 103),
(2, 'Rani K', 1001, 'rani@gmail.com', 100),
(3, 'Grace George', 1002, 'grace@gmail.com', NULL),
(4, 'James Mathew', 1003, 'james@gmail.com', NULL),
(5, 'Nikil R', 1004, 'nikil@gmail.com', 102),
(6, 'Neim S', 1005, 'neim@gmail.com', 104),
(7, 'Nila John', 1006, 'nila@gmail.com', NULL),
(8, 'Sindhu S', 1007, 'sindhu@gmail.com', NULL),
(9, 'Rohith b', 1008, 'rohith@gmail.com', 101);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(2) NOT NULL,
  `username` varchar(15) NOT NULL,
  `emailid` varchar(15) NOT NULL,
  `password` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `emailid`, `password`) VALUES
(1, 'Ali', 'ali@gmail.com', 'ali@1122'),
(2, 'Jo', 'josef@gmail.com', 'jo@1122'),
(3, 'Jamie', 'james@gmail.com', 'james@1122');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(2) NOT NULL,
  `first_name` varchar(10) NOT NULL,
  `last_name` varchar(10) NOT NULL,
  `username` varchar(15) NOT NULL,
  `emailid` varchar(15) NOT NULL,
  `dob` date DEFAULT NULL,
  `password` varchar(12) NOT NULL,
  `confirm_password` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `first_name`, `last_name`, `username`, `emailid`, `dob`, `password`, `confirm_password`) VALUES
(1, 'Alsiha', 'Mathew', 'Ali', 'ali@gmail.com', '1997-11-30', 'ali@1122', 'ali@1122'),
(2, 'John', 'Joseph', 'Jo', 'josef@gmail.com', '1996-02-24', 'jo@1122', 'jo@1122'),
(3, 'James', 'S', 'Jamie', 'james@gmail.com', '1999-02-02', 'james@1122', 'james@1122');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agent_compliant_solution`
--
ALTER TABLE `agent_compliant_solution`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agent_login`
--
ALTER TABLE `agent_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `compliants`
--
ALTER TABLE `compliants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_details`
--
ALTER TABLE `employee_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agent_compliant_solution`
--
ALTER TABLE `agent_compliant_solution`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `agent_login`
--
ALTER TABLE `agent_login`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `compliants`
--
ALTER TABLE `compliants`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employee_details`
--
ALTER TABLE `employee_details`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
