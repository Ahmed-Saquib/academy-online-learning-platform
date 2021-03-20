-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2020 at 01:48 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `academy_management_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `cID` int(11) NOT NULL,
  `dID` varchar(100) NOT NULL,
  `uEmail` varchar(100) NOT NULL,
  `uName` varchar(100) NOT NULL,
  `cDetails` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`cID`, `dID`, `uEmail`, `uName`, `cDetails`) VALUES
(1, '1', 'saquib@gmail.com', 'Ahmed Saquib', 'Sir, is the only way of finalizing a idea is joining the lab session and talking with an instructor, or you\'ll provide feedbacks on my idea in some other way'),
(2, '1', 'faculty@gmail.com', 'faculty1', 'you can send us the details of your proposals via email.'),
(3, '1', 'emon@gmail.com', 'Emon MOnjurul', 'Sir my idea is not approved ?'),
(16, '1', 'faculty@gmail.com', 'faculty1', 'It has been approved.'),
(17, '1', 'monika@gmail.com', 'Monika Tabassum', 'Sir, may I please have your email address ?'),
(27, '1', 'faculty@gmail.com', 'faculty1', 'A***Z@gmail.com'),
(28, '1', 'saquib@gmail.com', 'Ahmed saquib', 'thanks'),
(29, '1', 'rafid@gmail.com', 'Rafid Parvez', 'Got it ,sir!'),
(30, '5', 'rafid@gmail.com', 'Rafid Parvez', 'Okey sir'),
(34, '8', 'faculty@gmail.com', 'Faculty1', 'yes'),
(35, '6', 'rafid@gmail.com', 'Rafid Parvez', 'ok sir');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `serial` int(11) NOT NULL,
  `cName` varchar(200) NOT NULL,
  `cID` varchar(100) NOT NULL,
  `cDetails` varchar(1000) NOT NULL,
  `fID` varchar(100) NOT NULL,
  `fEmail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`serial`, `cName`, `cID`, `cDetails`, `fID`, `fEmail`) VALUES
(1, 'Object Oriented Programming ', 'CSE310', 'Credit 03 | Individual project 01 | Duration 03 months | Lab | Viva | Mid | Final |', 'TBA', 'faculty@gmail.com'),
(2, 'Computer Graphics', 'CSE423', 'Credit 03 | Duration 03 months | Lab | Viva | Mid | Final |', 'TBA', 'faculty@gmail.com'),
(3, 'Programming Language', 'CSE 110', 'Credit 03 | Duration 03 months | Lab | Viva | Mid | Final |', 'TBA', 'faculty2@gmail.com'),
(4, 'Programming Language-II', 'CSE 111', 'Credit 03 | Duration 03 months | Lab | Viva | Mid | Final |', 'TBA', 'faculty2@gmail.com'),
(5, 'Data Structures', 'CSE 220', 'Credit 03 | Duration 03 months | Lab | Viva | Mid | Final |', 'TBA', 'faculty@gmail.com'),
(6, 'Algorithms', 'CSE 221', 'Credit 03 | Duration 03 months | Lab | Viva | Mid | Final |', 'TBA', 'faculty2@gmail.com'),
(7, 'Discrete Mathematics', 'CSE 230', 'Credit 03 | Duration 03 months | Lab | Viva | Mid | Final |', 'TBA', 'faculty@gmail.com'),
(8, 'Circuits and Electronics', 'CSE 250', 'Credit 03 | Duration 03 months | Lab | Viva | Mid | Final |', 'TBA', 'faculty2@gmail.com'),
(10, 'Operating Systems', 'CSE 321', 'Credit 03 | Duration 03 months | Lab | Viva | Mid | Final |', 'TBA', 'faculty@gmail.com'),
(11, 'Programing  Language 2', 'CSE111', 'CSE111', 'TBA', 'faculty@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `discussion`
--

CREATE TABLE `discussion` (
  `dID` int(100) NOT NULL,
  `cID` varchar(100) NOT NULL,
  `uEmail` varchar(100) NOT NULL,
  `uName` varchar(100) NOT NULL,
  `dTopic` varchar(100) NOT NULL,
  `dDetails` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `discussion`
--

INSERT INTO `discussion` (`dID`, `cID`, `uEmail`, `uName`, `dTopic`, `dDetails`) VALUES
(1, 'CSE310', 'faculty@gmail.com', 'TBA', 'CSE310 Project Idea and Submission process', 'Submit form by Nov 3rd\r\nTimeline on bottom of the email. \r\n\r\nSubmit your idea here: \r\n\r\nForm: https://forms.gle/p8r1PC5QfNCBiLiY6  \r\n\r\n \r\nView All the ideas (check duplication before submission, duplicates will be rejected):\r\n\r\nhttps://docs.google.com/spreadsheets/d/1Vx_DvEl1kUE8QQ_21tWdCxvZit19fdgHfEYnvjvAr8E/edit?usp=sharing '),
(5, 'CSE310', 'faculty@gmail.com', 'TBA', 'Project Final Submission and Presentation', 'Dear All,\r\n\r\nAs we all know that today (22/12/2020) is the last date of submitting your CSE 310 Projects, so here is the instruction that you need to follow to submit and present your respective projects. First of all, you will have to submit your projects (with the documentations) on piazza in the \"Project\" section and your project final presentation will take place on tomorrow (23/12/2020) from 9.00 am. I will be available on Hangouts. ping me to allocate'),
(6, 'CSE310', 'faculty@gmail.com', 'Faculty1', 'CSE310 Project Idea and Submission process', 'Submit form by Nov 3rd Timeline on bottom of the email. Submit your idea here: Form: https://forms.gle/p8r1PC5QfNCBiLiY6 View All the ideas (check duplication before submission, duplicates will be rejected): https://docs.google.com/spreadsheets/d/1Vx_DvEl1kUE8QQ_21tWdCxvZit19fdgHfEYnvjvAr8E/edit?usp=sharing ');

-- --------------------------------------------------------

--
-- Table structure for table `enrolled_course`
--

CREATE TABLE `enrolled_course` (
  `serial` int(11) NOT NULL,
  `cEmail` varchar(100) NOT NULL,
  `cID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enrolled_course`
--

INSERT INTO `enrolled_course` (`serial`, `cEmail`, `cID`) VALUES
(1, 'saquib@gmail.com', 'CSE310 '),
(2, 'saquib@gmail.com', 'CSE423 '),
(3, 'rafid@gmail.com ', 'CSE310 '),
(4, 'rafid@gmail.com ', 'CSE423 ');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_information`
--

CREATE TABLE `faculty_information` (
  `serial` int(11) NOT NULL,
  `uEmail` varchar(100) NOT NULL,
  `uName` varchar(100) NOT NULL,
  `uPass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty_information`
--

INSERT INTO `faculty_information` (`serial`, `uEmail`, `uName`, `uPass`) VALUES
(2, 'faculty@gmail.com', 'Faculty1', 'faculty'),
(4, 'faculty2@gmail.com', 'Faculty2', 'faculty2');

-- --------------------------------------------------------

--
-- Table structure for table `student_information`
--

CREATE TABLE `student_information` (
  `serial` int(11) NOT NULL,
  `uName` varchar(100) NOT NULL,
  `uID` varchar(100) NOT NULL,
  `uEmail` varchar(100) NOT NULL,
  `uPass` varchar(100) NOT NULL,
  `uCountry` varchar(100) NOT NULL,
  `uPhone` varchar(100) NOT NULL,
  `uDept` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_information`
--

INSERT INTO `student_information` (`serial`, `uName`, `uID`, `uEmail`, `uPass`, `uCountry`, `uPhone`, `uDept`) VALUES
(1, 'Ahmed saquib', '111', 'saquib@gmail.com', 'saquib', 'Bangladesh', '01679131815', 'CSE'),
(2, 'Emon MOnjurul', '222', 'emon@gmail.com', 'emon', 'Bangladesh', '01819325212', 'CSE'),
(3, 'Afreen Tanisha ', '333', 'tanisha@gmail.com', 'tanisha', 'Bangladesh', '01957735747', 'CSE'),
(4, 'Monika Tabassum', '444', 'monika@gmail.com', 'monika', 'Bangladesh', '01919325212', 'CSE'),
(5, 'Navid Hossain', '555', 'navid@gmail.com', 'navd', 'Bangladesh', '01619325212', 'CSE'),
(6, 'Rafid Parvez', '666', 'rafid@gmail.com', 'rafid', 'Bangladesh', '01719325212', 'CSE'),
(7, 'Piash Ahmed', '777', 'piash@gmail.com', 'piash', 'Bangladesh', '01519325212', 'CSE'),
(8, 'Sadia Jui', '888', 'jui@gmail.com', 'sadia', 'Bangladesh', '01319325212', 'CSE'),
(9, 'Mustafa Kamal', '999', 'kamal@gmail.com', 'kamal', 'Bangladesh', '03132923', 'CSE');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `vID` int(11) NOT NULL,
  `cID` varchar(100) NOT NULL,
  `uEmail` varchar(100) NOT NULL,
  `vName` varchar(100) NOT NULL,
  `vDetails` varchar(1000) NOT NULL,
  `vLink` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`vID`, `cID`, `uEmail`, `vName`, `vDetails`, `vLink`) VALUES
(1, 'CSE310', 'faculty@gmail.com', 'OOP Basics', 'OOP stands for Object-Oriented Programming.\r\n\r\nProcedural programming is about writing procedures or functions that perform operations on the data, while object-oriented programming is about creating objects that contain both data and functions.\r\n\r\nObject-oriented programming has several advantages over procedural programming:\r\n\r\nOOP is faster and easier to execute\r\nOOP provides a clear structure for the programs\r\nOOP helps to keep the PHP code DRY \"Don\'t Repeat Yourself\", and makes the code easier to maintain, modify and debug\r\nOOP makes it possible to create full reusable applications with less code and shorter development time', '<iframe width=\"852\" height=\"480\" src=\"https://www.youtube.com/embed/SiBw7os-_zI\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(2, 'CSE310', 'faculty@gmal.com', 'Static Keyword', 'In the Java programming language, the keyword static indicates that the particular member belongs to a type itself, rather than to an instance of that type. This means that only one instance of that static member is created which is shared across all instances of the class.', '<iframe width=\"852\" height=\"480\" src=\"https://www.youtube.com/embed/qRCEdWQ0f4Q\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(3, 'CSE310', 'faculty@gmail.com', 'Abstract Keyword', 'The abstract keyword is a non-access modifier, used for classes and methods. Class: An abstract class is a restricted class that cannot be used to create objects (to access it, it must be inherited from another class). Method: An abstract method can only be used in an abstract class, and it does not have a body.', '<iframe width=\"852\" height=\"480\" src=\"https://www.youtube.com/embed/yY6XMBUCNYE\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(4, 'CSE310', 'faculty@gmail.com', 'Final Keyword', 'In Java, the final keyword can be used while declaring an entity. Using the final keyword means that the value can\'t be modified in the future. This entity can be - but is not limited to - a variable, a class or a method.', '<iframe width=\"852\" height=\"480\" src=\"https://www.youtube.com/embed/7m1Zmf_Z3B0\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(5, 'CSE310', 'faculty@gmail.com', 'Threading', 'Multithreading is a Java feature that allows concurrent execution of two or more parts of a program for maximum utilization of CPU. Each part of such program is called a thread. So, threads are light-weight processes within a process. Threads can be created by using two mechanisms ', '<iframe width=\"852\" height=\"480\" src=\"https://www.youtube.com/embed/L95658yXRgI\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`cID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `discussion`
--
ALTER TABLE `discussion`
  ADD PRIMARY KEY (`dID`);

--
-- Indexes for table `enrolled_course`
--
ALTER TABLE `enrolled_course`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `faculty_information`
--
ALTER TABLE `faculty_information`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `student_information`
--
ALTER TABLE `student_information`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`vID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `cID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `discussion`
--
ALTER TABLE `discussion`
  MODIFY `dID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `enrolled_course`
--
ALTER TABLE `enrolled_course`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `faculty_information`
--
ALTER TABLE `faculty_information`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student_information`
--
ALTER TABLE `student_information`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `vID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
