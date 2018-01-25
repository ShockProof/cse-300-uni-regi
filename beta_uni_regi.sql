-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2018 at 07:03 AM
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
(2, 13101062, 1, 68),
(3, 13101062, 2, 72),
(4, 13101062, 3, 55),
(5, 13101062, 4, 45),
(6, 13101062, 5, 90),
(7, 13101062, 6, 90),
(8, 13101062, 7, 78),
(9, 13101062, 8, 62);

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
(16, 'ECE 102', 'Basic Electrical Engineering Lab', 2, 1.5);

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
(1, 'spring 2017', 0);

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
(1, 1, 13101062, 1, 68),
(2, 1, 13101062, 2, 72),
(3, 1, 13101062, 3, 55),
(4, 1, 13101062, 4, 45),
(5, 1, 13101062, 5, 90),
(6, 1, 13101062, 6, 90),
(7, 1, 13101062, 7, 78),
(8, 1, 13101062, 8, 62);

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
(15201018, 'Tabia Afrose', 'tabia@gmail.com', 38, 'tabia', 2011, 5, 2013, 5),
(15201054, 'Shamim Rayhan', 'shamim@gmail.com', 38, 'shamim', 2012, 4.88, 2014, 4.88),
(15201062, 'Muhammadul Hasan Labib', 'labibgb@gmail.com', 38, 'labib', 2013, 5, 2015, 4.88),
(15201098, 'Towfique Tufaan', 'tufaan@gmail.com', 38, 'tufaan', 2012, 4.96, 2014, 4.96);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `prerequisite_course`
--
ALTER TABLE `prerequisite_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `semester_list`
--
ALTER TABLE `semester_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `semester_registration`
--
ALTER TABLE `semester_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `semester_result`
--
ALTER TABLE `semester_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
