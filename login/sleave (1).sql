-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2021 at 03:49 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sleave`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` decimal(10,0) NOT NULL,
  `student_id` varchar(10) DEFAULT NULL,
  `standard_id` varchar(2) DEFAULT NULL,
  `subject_id` varchar(10) DEFAULT NULL,
  `attendance_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `course_info`
--

CREATE TABLE `course_info` (
  `sub_id` varchar(10) NOT NULL,
  `sub_name` varchar(50) NOT NULL,
  `teacher_id` varchar(10) DEFAULT NULL,
  `standard_id` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_info`
--

INSERT INTO `course_info` (`sub_id`, `sub_name`, `teacher_id`, `standard_id`) VALUES
('Sub-01', 'WebProgramming', 'T1', 'FY'),
('Sub-02', 'Operating System', 'T2', 'FY'),
('Sub-03', 'Discrete Mathematics', 'T3', 'FY'),
('Sub-04', 'Object Oriented Programming', 'T4', 'FY'),
('Sub-05', 'Communication Skills', 'T5', 'FY'),
('Sub-06', 'Python Programming', 'T1', 'SY'),
('Sub-07', 'Mathematics', 'T6', 'SY'),
('Sub-08', 'Unity and Graphics', 'T7', 'SY'),
('Sub-09', 'Digital Electronics', 'T4', 'SY'),
('Sub-10', 'Green Computing', 'T1', 'SY'),
('Sub-11', 'Web Programming', 'T10', 'TY'),
('Sub-12', 'Database Management System', 'T6', 'TY'),
('Sub-13', 'Android Programming', 'T8', 'TY'),
('Sub-14', 'Applied Mathematics', 'T9', 'TY'),
('Sub-15', 'Software Engineering', 'T7', 'TY');

-- --------------------------------------------------------

--
-- Table structure for table `standard_info`
--

CREATE TABLE `standard_info` (
  `standard_id` varchar(2) NOT NULL,
  `standard_name` varchar(10) NOT NULL,
  `no_of_students` decimal(3,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `standard_info`
--

INSERT INTO `standard_info` (`standard_id`, `standard_name`, `no_of_students`) VALUES
('FY', 'FYBSCIT', '10'),
('SY', 'SYBSCIT', '10'),
('TY', 'TYBSCIT', '10');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `srollno` varchar(10) NOT NULL,
  `sfname` varchar(50) NOT NULL,
  `slname` varchar(50) NOT NULL,
  `semail` varchar(50) DEFAULT NULL,
  `sdob` datetime DEFAULT NULL,
  `scontactno` decimal(10,0) DEFAULT NULL,
  `sgender` varchar(9) NOT NULL,
  `spassword` varchar(50) DEFAULT NULL,
  `standard_id` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`srollno`, `sfname`, `slname`, `semail`, `sdob`, `scontactno`, `sgender`, `spassword`, `standard_id`) VALUES
('FY-1', 'Aaditya', 'Arora', 'aadityarora@gmail.com', '2002-11-02 00:00:00', '9870045672', 'male', '1', 'FY'),
('FY-10', 'Surabhi', 'Tandel', 'surabhitandel2324@gmail.com', '2002-06-02 00:00:00', '9983067903', 'female', '10', 'FY'),
('FY-2', 'Sushil', 'Kumar', 'sushilkumar123@gmail.com', '2002-06-02 00:00:00', '9907045622', 'male', '2', 'FY'),
('FY-3', 'Prakash', 'Gupta', 'prakashgupta070@gmail.com', '2002-05-30 00:00:00', '9870047992', 'male', '3', 'FY'),
('FY-4', 'Aniket', 'Mohite', 'mohite.aniket@gmail.com', '2002-08-14 00:00:00', '9786059567', 'male', '4', 'FY'),
('FY-5', 'Ahmed', 'Kazi', 'ahmedkazi123@gmail.com', '2002-11-23 00:00:00', '8774242544', 'male', '5', 'FY'),
('FY-6', 'Neha', 'Singh', 'neha55singh@gmail.com', '2002-12-15 00:00:00', '9987502358', 'female', '6', 'FY'),
('FY-7', 'Apoorva', 'Mishra', 'apoorva.mishra@gmail.com', '2002-05-05 00:00:00', '8674012396', 'female', '7', 'FY'),
('FY-8', 'Akansha', 'Basu', 'akansha.basu@gmail.com', '2002-07-17 00:00:00', '9986578678', 'female', '8', 'FY'),
('FY-9', 'Sayali', 'Sanjeev', 'sanjeevayali@gmail.com', '2002-03-26 00:00:00', '8080956781', 'female', '9', 'FY'),
('SY-1', 'Amey', 'Kesarkar', 'ameyk20002@gmail.com', '2002-07-02 00:00:00', '8104254970', 'male', '11', 'SY'),
('SY-10', 'Hina', 'Zaid', 'hina123@gmail.com', '2002-10-24 00:00:00', '8080977879', 'female', '20', 'SY'),
('SY-2', 'Pintu', 'Mali', 'pintoomali1@gmail.com', '2002-06-24 00:00:00', '8774945990', 'male', '12', 'SY'),
('SY-3', 'Furkan', 'Mistry', 'fmistry42@gmail.com', '2001-12-31 00:00:00', '8080912954', 'male', '13', 'SY'),
('SY-4', 'Ratnesh', 'Mhatre', 'ratneshmhatre2002@gmail.com', '2002-10-12 00:00:00', '9875006978', 'male', '14', 'SY'),
('SY-5', 'Owais', 'Sayed', 'mohammedowais@gmail.com', '2002-01-30 00:00:00', '9986523498', 'male', '15', 'SY'),
('SY-6', 'Kavisha', 'Mehra', 'kavishamehra2002@gmail.com', '2002-07-21 00:00:00', '8674095837', 'female', '16', 'SY'),
('SY-7', 'Shreya', 'Khan', 'shreyakhan123@gmail.com', '2002-08-26 00:00:00', '9986500756', 'female', '17', 'SY'),
('SY-8', 'Shambhavi', 'Nirmalkar', 'nirmalkar.shambhavi2@gmail.com', '2002-10-29 00:00:00', '8808652310', 'female', '18', 'SY'),
('SY-9', 'Kiran', 'Goyal', 'goyal2002@gmail.com', '2002-01-26 00:00:00', '8674059345', 'female', '19', 'SY'),
('TY-1', 'Nimish', 'Kulkarni', 'kulkarnimish@gmail.com', '2002-07-09 00:00:00', '9000452310', 'male', '21', 'TY'),
('TY-10', 'Ketaki', 'Bansode', 'bansode2002@gmail.com', '2002-09-11 00:00:00', '9985342534', 'female', '30', 'TY'),
('TY-2', 'Gaurav', 'More', 'moregaurav@gmail.com', '2002-10-19 00:00:00', '9985723786', 'male', '22', 'TY'),
('TY-3', 'Omkar', 'Bhojne', 'bhojne.omkarhay@gmail.com', '2002-09-16 00:00:00', '8374623999', 'male', '23', 'TY'),
('TY-4', 'Prabhakar', 'More', 'prabhakarlimbu@gmail.com', '2002-12-25 00:00:00', '9572846251', 'male', '24', 'TY'),
('TY-5', 'Siddh', 'Jain', 'jain.siddh2002@gmail.com', '2002-05-07 00:00:00', '8463546580', 'male', '25', 'TY'),
('TY-6', 'Zoha', 'Khan', 'zohakhan20@gmail.com', '2002-06-21 00:00:00', '9985798456', 'female', '26', 'TY'),
('TY-7', 'Shifa', 'Hiran', 'shifahiran@gmail.com', '2002-10-14 00:00:00', '9987406865', 'female', '27', 'TY'),
('TY-8', 'Khushi', 'Agarwal', 'agarwalkhushi2002@gmail.com', '2002-02-28 00:00:00', '9908089808', 'female', '28', 'TY'),
('TY-9', 'Sakshi', 'Jain', 'sakshi2002@gmail.com', '2002-05-29 00:00:00', '9132435243', 'female', '29', 'TY');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `t_id` varchar(10) NOT NULL,
  `tfname` varchar(50) NOT NULL,
  `tlname` varchar(50) NOT NULL,
  `temail` varchar(50) DEFAULT NULL,
  `tdob` datetime DEFAULT NULL,
  `tcontactno` decimal(10,0) DEFAULT NULL,
  `tgender` varchar(9) NOT NULL,
  `tpassword` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`t_id`, `tfname`, `tlname`, `temail`, `tdob`, `tcontactno`, `tgender`, `tpassword`) VALUES
('T1', 'Alka', 'Nath', 'alka.nath@gmail.com', '1970-12-30 00:00:00', '9857357934', 'female', '1'),
('T10', 'Tuhin', 'Pal', 'pal54321@gmail.com', '1986-03-22 00:00:00', '9542357211', 'female', '10'),
('T2', 'Kiran', 'More', 'kiranmore2@gmail.com', '1975-07-03 00:00:00', '8452337966', 'male', '2'),
('T3', 'Vijay', 'Kumar', 'vijay@gmail.com', '1972-12-16 00:00:00', '9951467932', 'other', '3'),
('T4', 'Faizal', 'Ahmed', 'ahmedfaizal@gmail.com', '1976-01-01 00:00:00', '7753556977', 'male', '4'),
('T5', 'Shweta', 'Deshmukh', 'deshmukh123@gmail.com', '1980-10-02 00:00:00', '9873567555', 'female', '5'),
('T6', 'Kalpesh', 'Patel', 'kalpeshpatel1973@gmail.com', '1973-12-19 00:00:00', '9807057012', 'male', '6'),
('T7', 'Shirin', 'Naik', 'naikshirin114@gmail.com', '1977-09-25 00:00:00', '8876354972', 'Other', '7'),
('T8', 'Narendra', 'Solanki', 'narendrasolanki132@gmail.com', '1980-11-21 00:00:00', '8080012947', 'male', '8'),
('T9', 'Suzan', 'Wilson', 'suzan234wilson@gmail.com', '1985-06-30 00:00:00', '7954757324', 'female', '9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `standard_id` (`standard_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `course_info`
--
ALTER TABLE `course_info`
  ADD PRIMARY KEY (`sub_id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `standard_id` (`standard_id`);

--
-- Indexes for table `standard_info`
--
ALTER TABLE `standard_info`
  ADD PRIMARY KEY (`standard_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`srollno`),
  ADD UNIQUE KEY `semail` (`semail`),
  ADD UNIQUE KEY `scontactno` (`scontactno`),
  ADD UNIQUE KEY `spassword` (`spassword`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`t_id`),
  ADD UNIQUE KEY `temail` (`temail`),
  ADD UNIQUE KEY `tcontactno` (`tcontactno`),
  ADD UNIQUE KEY `tpassword` (`tpassword`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`srollno`),
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`standard_id`) REFERENCES `standard_info` (`standard_id`),
  ADD CONSTRAINT `attendance_ibfk_3` FOREIGN KEY (`subject_id`) REFERENCES `course_info` (`sub_id`);

--
-- Constraints for table `course_info`
--
ALTER TABLE `course_info`
  ADD CONSTRAINT `course_info_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`t_id`),
  ADD CONSTRAINT `course_info_ibfk_2` FOREIGN KEY (`standard_id`) REFERENCES `standard_info` (`standard_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
