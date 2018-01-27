-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2018 at 02:18 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beta_uni_regi`
--

-- --------------------------------------------------------

--
-- Table structure for table `completed_course`
--

CREATE TABLE `completed_course` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `result` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `completed_course`
--

INSERT INTO `completed_course` (`id`, `student_id`, `course_id`, `result`) VALUES
(1, 15201062, 6, 100),
(2, 15201062, 8, 100),
(3, 15201062, 2, 46),
(4, 15201062, 3, 40),
(5, 15201062, 5, 45),
(6, 15201062, 4, 47),
(7, 15201062, 7, 55),
(8, 15201062, 1, 47),
(9, 15201062, 12, 90),
(10, 15201062, 15, 90),
(11, 15201062, 13, 90),
(12, 15201062, 16, 55),
(13, 15201062, 11, 56),
(14, 15201062, 9, 90),
(15, 15201062, 26, 55),
(16, 15201062, 28, 76),
(17, 15201062, 32, 76),
(18, 15201062, 30, 65),
(19, 15201062, 31, 60),
(20, 15201062, 34, 62),
(21, 15201062, 33, 90),
(22, 15201092, 6, 94),
(23, 15201092, 8, 92),
(24, 15201092, 1, 63),
(25, 15201092, 2, 56),
(26, 15201092, 3, 42),
(27, 15201092, 5, 62),
(28, 15201092, 4, 47),
(29, 15201092, 7, 91),
(30, 15201092, 12, 88),
(31, 15201092, 15, 92),
(32, 15201092, 13, 87),
(33, 15201092, 14, 57),
(34, 15201092, 16, 85),
(35, 15201092, 9, 72),
(36, 15201092, 11, 53),
(37, 15201092, 10, 62),
(38, 15201092, 17, 42),
(39, 15201092, 20, 67),
(40, 15201092, 23, 90),
(41, 15201092, 21, 97),
(42, 15201092, 24, 85),
(43, 15201092, 22, 62),
(44, 15201092, 25, 47),
(45, 15201092, 19, 52),
(46, 15201092, 28, 78),
(47, 15201092, 32, 67),
(48, 15201092, 29, 42),
(49, 15201092, 30, 57),
(50, 15201092, 33, 77),
(51, 15201092, 31, 62),
(52, 15201092, 34, 72),
(53, 15201092, 26, 52),
(54, 15201092, 27, 57);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `short_name` varchar(10) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `credit` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `short_name`, `name`, `semester`, `credit`) VALUES
(1, 'HSS 101', 'English I', 1, 3),
(2, 'HSS 111(A)', 'Bangladesh Studies: Society and Culture', 1, 2),
(3, 'HSS 111(B)', 'Bangladesh Studies: Bangladesh History', 1, 2),
(4, 'PHY 101', 'Physics I', 1, 3),
(5, 'MTH 101', 'Math I', 1, 3),
(6, 'CSE 101', 'Computer Fundamentals', 1, 3),
(7, 'PHY 102', 'Physics Lab', 1, 1.5),
(8, 'CSE 102', 'Computer Fundamentals Lab', 1, 1.5),
(9, 'HSS 103', 'English II', 2, 3),
(10, 'PHY 103', 'Physics II', 2, 3),
(11, 'MTH 103', 'Math II', 2, 3),
(12, 'CSE 103', 'Computer Programming I', 2, 3),
(13, 'CSE 105', 'Discrete Mathematics', 2, 3),
(14, 'ECE 101', 'Basic Electrical Engineering', 2, 3),
(15, 'CSE 104', 'Computer Programming I Lab', 2, 1.5),
(16, 'ECE 102', 'Basic Electrical Engineering Lab', 2, 1.5),
(17, 'ACN 201', 'Principles of Accounting', 3, 2),
(18, 'MTH 201', 'Math III', 3, 3),
(19, 'ECN 201', 'Principles of Economics', 3, 2),
(20, 'CSE 203', 'Computer Programming II', 3, 3),
(21, 'CSE 205', 'Data Structures', 3, 3),
(22, 'ECE 201', 'Electronic Devices and Circuits', 3, 3),
(23, 'CSE 204', 'Computer Programming II Lab', 3, 1.5),
(24, 'CSE 206', 'Data Structures Lab', 3, 0.75),
(25, 'ECE 202', 'Electronic Devices and Circuits Lab', 3, 1.5),
(26, 'IMG 201', 'Principles of Management', 4, 2),
(27, 'MTH 203', 'Math IV', 4, 4),
(28, 'CSE 207', 'Algorithm', 4, 3),
(29, 'CSE 209', 'Numerical Methods', 4, 3),
(30, 'CSE 211', 'Assembly Language Programming', 4, 2),
(31, 'CSE 231', 'Digital Logic Design', 4, 3),
(32, 'CSE 208', 'Algorithm Lab', 4, 0.75),
(33, 'CSE 212', 'Assembly Language Programming Lab', 4, 0.75),
(34, 'CSE 232', 'Digital Logic Design Lab', 4, 1.5),
(35, 'MTH 301', 'Statistics and Probability', 5, 2),
(36, 'ECE 301', 'Electrical Drives and Instrumentation', 5, 3),
(37, 'ECE 303', 'Digital Electronics and Pulse Techniques', 5, 3),
(38, 'CSE 321', 'Database Systems', 5, 3),
(39, 'CSE 331', 'Computer Architecture I', 5, 3),
(40, 'CSE 300', 'Software Development', 5, 1.5),
(41, 'ECE 302', 'Electrical Drives and Instrumentation Lab', 5, 1.5),
(42, 'ECE 304', 'Digital Electronics and Pulse Techniques Lab', 5, 1.5),
(43, 'CSE 322', 'Database Systems Lab', 5, 1.5),
(44, 'CSE 303', 'Operating System', 6, 3),
(45, 'CSE 305', 'Information Systems', 6, 3),
(46, 'CSE 315', 'Data Communication', 6, 3),
(47, 'CSE 333', 'Microprocessors', 6, 3),
(48, 'CSE 335', 'Digital System Design', 6, 3),
(49, 'CSE 304', 'Operating System Lab', 6, 1.5),
(50, 'CSE 306', 'Information Systems Lab', 6, 0.75),
(51, 'CSE 334', 'Microprocessors Lab', 6, 1.5),
(52, 'CSE 336', 'Digital System Design Lab', 6, 1.5),
(53, 'CSE 401', 'Software Engineering', 7, 3),
(54, 'CSE 403', 'Complier Design', 7, 3),
(55, 'CSE 421', 'Computer Network', 7, 3),
(56, 'CSE 431', 'Computer Graphics', 7, 3),
(57, 'CSE 400', 'Project/ Thesis', 7, 3),
(58, 'CSE 404', 'Complier Design Lab', 7, 0.75),
(59, 'CSE 422', 'Computer Network Lab', 7, 1.5),
(60, 'CSE 432', 'Computer Graphics Lab', 7, 1.5),
(61, 'CSE 405', 'Simulation and Modeling', 7, 3),
(62, 'CSE 400', 'Project/ Thesis', 8, 3),
(63, 'CSE 407', 'Artificial Intelligence and Expert System', 8, 3),
(64, 'CSE 411', 'VLSI Design', 8, 3),
(65, 'CSE 435', 'Computer Interfacing', 8, 3),
(66, 'CSE 437', 'Pattern Recognition', 8, 3),
(67, 'CSE 408', 'Artificial Intelligence and Expert System Lab', 8, 1.5),
(68, 'CSE 412', 'VLSI Design Lab', 8, 1.5),
(69, 'CSE 436', 'Computer Interfacing Lab', 8, 1.5),
(70, 'CSE 438', 'Pattern Recognition Lab', 8, 0.75);

-- --------------------------------------------------------

--
-- Table structure for table `prerequisite_course`
--

CREATE TABLE `prerequisite_course` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `prerequisite` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prerequisite_course`
--

INSERT INTO `prerequisite_course` (`id`, `course_id`, `prerequisite`) VALUES
(1, 12, 6),
(2, 12, 5),
(3, 11, 5);

-- --------------------------------------------------------

--
-- Table structure for table `semester_list`
--

CREATE TABLE `semester_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `is_running` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester_list`
--

INSERT INTO `semester_list` (`id`, `name`, `is_running`) VALUES
(1, 'Fall 2015', 0),
(2, 'Spring 2016', 0),
(3, 'Fall 2016', 0),
(4, 'Spring 2017', 0),
(5, 'Fall 2017', 1),
(6, 'Spring 2018', 0);

-- --------------------------------------------------------

--
-- Table structure for table `semester_registration`
--

CREATE TABLE `semester_registration` (
  `id` int(11) NOT NULL,
  `semester_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester_registration`
--

INSERT INTO `semester_registration` (`id`, `semester_id`, `student_id`, `course_id`) VALUES
(12, 5, 13101062, 1),
(13, 5, 13101062, 2),
(14, 5, 13101062, 3),
(15, 5, 13101062, 4),
(16, 5, 13101062, 5),
(17, 5, 13101062, 6),
(18, 5, 13101062, 7),
(19, 5, 13101062, 8);

-- --------------------------------------------------------

--
-- Table structure for table `semester_result`
--

CREATE TABLE `semester_result` (
  `id` int(11) NOT NULL,
  `semester_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `result` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester_result`
--

INSERT INTO `semester_result` (`id`, `semester_id`, `student_id`, `course_id`, `result`) VALUES
(9, 1, 15201062, 6, 100),
(10, 1, 15201062, 8, 100),
(12, 1, 15201062, 2, 46),
(13, 1, 15201062, 3, 40),
(14, 1, 15201062, 5, 45),
(15, 1, 15201062, 4, 47),
(16, 1, 15201062, 7, 55),
(19, 1, 15201062, 1, 47),
(20, 2, 15201062, 12, 90),
(21, 2, 15201062, 15, 90),
(22, 2, 15201062, 13, 90),
(23, 2, 15201062, 10, 35),
(24, 2, 15201062, 14, 35),
(25, 2, 15201062, 16, 55),
(26, 2, 15201062, 11, 56),
(27, 2, 15201062, 9, 90),
(28, 4, 15201062, 26, 55),
(29, 4, 15201062, 27, 30),
(30, 4, 15201062, 28, 76),
(31, 4, 15201062, 32, 76),
(32, 4, 15201062, 29, 32),
(33, 4, 15201062, 30, 65),
(34, 4, 15201062, 31, 60),
(35, 4, 15201062, 34, 62),
(36, 4, 15201062, 33, 90),
(37, 1, 15201092, 6, 94),
(38, 1, 15201092, 8, 92),
(39, 1, 15201092, 1, 63),
(40, 1, 15201092, 2, 56),
(41, 1, 15201092, 3, 42),
(42, 1, 15201092, 5, 62),
(43, 1, 15201092, 4, 47),
(44, 1, 15201092, 7, 91),
(45, 2, 15201092, 12, 88),
(46, 2, 15201092, 15, 92),
(47, 2, 15201092, 13, 87),
(48, 2, 15201092, 14, 57),
(49, 2, 15201092, 16, 85),
(50, 2, 15201092, 9, 72),
(51, 2, 15201092, 11, 53),
(52, 2, 15201092, 10, 62),
(53, 3, 15201092, 17, 42),
(54, 3, 15201092, 20, 67),
(55, 3, 15201092, 23, 90),
(56, 3, 15201092, 21, 97),
(57, 3, 15201092, 24, 85),
(58, 3, 15201092, 22, 62),
(59, 3, 15201092, 25, 47),
(60, 3, 15201092, 19, 52),
(61, 3, 15201092, 18, 31),
(62, 4, 15201092, 28, 78),
(63, 4, 15201092, 32, 67),
(64, 4, 15201092, 29, 42),
(65, 4, 15201092, 30, 57),
(66, 4, 15201092, 33, 77),
(67, 4, 15201092, 31, 62),
(68, 4, 15201092, 34, 72),
(69, 4, 15201092, 26, 52),
(70, 4, 15201092, 27, 57);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `batch` int(11) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `ssc_batch` int(11) DEFAULT NULL,
  `ssc_result` float DEFAULT NULL,
  `hsc_batch` int(11) DEFAULT NULL,
  `hsc_result` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `email`, `batch`, `pass`, `ssc_batch`, `ssc_result`, `hsc_batch`, `hsc_result`) VALUES
(13101062, 'Syed Zafrul Lipu', 'zafrullipu@gmail.com', 33, 'zafrul', 2010, 4.88, 2012, 5),
(15201018, 'Tabia Afrose', 'tabia@gmail.com', 38, 'tabia', 2011, 5, 2013, 4.5),
(15201054, 'Shamim Rayhan', 'shamim@gmail.com', 38, 'shamim', 2012, 4.88, 2014, 4.88),
(15201062, 'Muhammadul Hasan Labib', 'labibgb@gmail.com', 38, 'labib', 2013, 5, 2015, 4.88),
(15201092, 'Towfique Tufaan', 'tufaan@gmail.com', 38, 'tufaan', 2012, 4.96, 2014, 4.96);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `completed_course`
--
ALTER TABLE `completed_course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prerequisite_course`
--
ALTER TABLE `prerequisite_course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `prerequisite` (`prerequisite`);

--
-- Indexes for table `semester_list`
--
ALTER TABLE `semester_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semester_registration`
--
ALTER TABLE `semester_registration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `semester_id` (`semester_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `semester_result`
--
ALTER TABLE `semester_result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `semester_id` (`semester_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `completed_course`
--
ALTER TABLE `completed_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT for table `prerequisite_course`
--
ALTER TABLE `prerequisite_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `semester_list`
--
ALTER TABLE `semester_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `semester_registration`
--
ALTER TABLE `semester_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `semester_result`
--
ALTER TABLE `semester_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `completed_course`
--
ALTER TABLE `completed_course`
  ADD CONSTRAINT `completed_course_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
  ADD CONSTRAINT `completed_course_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`);

--
-- Constraints for table `prerequisite_course`
--
ALTER TABLE `prerequisite_course`
  ADD CONSTRAINT `prerequisite_course_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  ADD CONSTRAINT `prerequisite_course_ibfk_2` FOREIGN KEY (`prerequisite`) REFERENCES `course` (`id`);

--
-- Constraints for table `semester_registration`
--
ALTER TABLE `semester_registration`
  ADD CONSTRAINT `semester_registration_ibfk_1` FOREIGN KEY (`semester_id`) REFERENCES `semester_list` (`id`),
  ADD CONSTRAINT `semester_registration_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
  ADD CONSTRAINT `semester_registration_ibfk_3` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`);

--
-- Constraints for table `semester_result`
--
ALTER TABLE `semester_result`
  ADD CONSTRAINT `semester_result_ibfk_1` FOREIGN KEY (`semester_id`) REFERENCES `semester_list` (`id`),
  ADD CONSTRAINT `semester_result_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
  ADD CONSTRAINT `semester_result_ibfk_3` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
