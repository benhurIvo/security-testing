-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 22, 2016 at 03:48 PM
-- Server version: 5.6.16-1~exp1
-- PHP Version: 5.6.23-2+deb.sury.org~xenial+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schoolmate`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminstaff`
--

CREATE TABLE `adminstaff` (
  `adminid` int(11) NOT NULL,
  `userid` int(11) NOT NULL DEFAULT '0',
  `fname` varchar(20) NOT NULL DEFAULT '',
  `lname` varchar(15) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `assignmentid` int(11) NOT NULL,
  `courseid` int(11) NOT NULL DEFAULT '0',
  `semesterid` int(11) NOT NULL DEFAULT '0',
  `termid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(15) NOT NULL DEFAULT '',
  `totalpoints` double(6,2) NOT NULL DEFAULT '0.00',
  `assigneddate` date NOT NULL DEFAULT '0000-00-00',
  `duedate` date NOT NULL DEFAULT '0000-00-00',
  `assignmentinformation` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`assignmentid`, `courseid`, `semesterid`, `termid`, `title`, `totalpoints`, `assigneddate`, `duedate`, `assignmentinformation`) VALUES
(1, 1, 1, 1, '1', 1.00, '0000-00-00', '0000-00-00', '0000-00-00'),
(2, 2, 1, 1, 'Running', 6.00, '0000-00-00', '0000-00-00', 'run'),
(3, 1, 1, 1, 'Jumping', 3.00, '0000-00-00', '0000-00-00', 'jump');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `courseid` int(11) NOT NULL,
  `semesterid` int(11) NOT NULL DEFAULT '0',
  `termid` int(11) NOT NULL DEFAULT '0',
  `coursename` varchar(20) NOT NULL DEFAULT '',
  `teacherid` int(11) NOT NULL DEFAULT '0',
  `sectionnum` varchar(15) NOT NULL DEFAULT '0',
  `roomnum` varchar(5) NOT NULL DEFAULT '',
  `periodnum` char(3) NOT NULL DEFAULT '',
  `q1points` double(6,2) NOT NULL DEFAULT '0.00',
  `q2points` double(6,2) NOT NULL DEFAULT '0.00',
  `totalpoints` double(6,2) NOT NULL DEFAULT '0.00',
  `aperc` double(6,3) NOT NULL DEFAULT '0.000',
  `bperc` double(6,3) NOT NULL DEFAULT '0.000',
  `cperc` double(6,3) NOT NULL DEFAULT '0.000',
  `dperc` double(6,3) NOT NULL DEFAULT '0.000',
  `fperc` double(6,3) NOT NULL DEFAULT '0.000',
  `dotw` varchar(5) DEFAULT NULL,
  `substituteid` int(11) DEFAULT NULL,
  `secondcourseid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`courseid`, `semesterid`, `termid`, `coursename`, `teacherid`, `sectionnum`, `roomnum`, `periodnum`, `q1points`, `q2points`, `totalpoints`, `aperc`, `bperc`, `cperc`, `dperc`, `fperc`, `dotw`, `substituteid`, `secondcourseid`) VALUES
(1, 1, 1, 'PE', 1, '1', '21', '3', 0.00, 9.00, 9.00, 0.000, 0.000, 0.000, 0.000, 0.000, 'MWF', 2, 0),
(2, 1, 1, 'Geo', 1, '2', '1', '2', 0.00, 6.00, 6.00, 0.000, 0.000, 0.000, 0.000, 0.000, 'T', 2, 0),
(3, 1, 1, 'Eng', 1, '2', '5', '9', 0.00, 0.00, 0.00, 0.000, 0.000, 0.000, 0.000, 0.000, 'M', 2, 0),
(4, 1, 1, 'Lug', 1, '4', '54', '1', 0.00, 0.00, 0.00, 0.000, 0.000, 0.000, 0.000, 0.000, 'T', 2, 0),
(13, 1, 1, 'His', 1, '1', '2', '3', 0.00, 0.00, 0.00, 0.000, 0.000, 0.000, 0.000, 0.000, 'TH', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `gradeid` int(11) NOT NULL,
  `assignmentid` int(11) NOT NULL DEFAULT '0',
  `courseid` int(11) NOT NULL DEFAULT '0',
  `semesterid` int(11) NOT NULL DEFAULT '0',
  `termid` int(11) NOT NULL DEFAULT '0',
  `studentid` int(11) NOT NULL DEFAULT '0',
  `points` double(6,2) DEFAULT '0.00',
  `comment` text,
  `submitdate` date DEFAULT '0000-00-00',
  `islate` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`gradeid`, `assignmentid`, `courseid`, `semesterid`, `termid`, `studentid`, `points`, `comment`, `submitdate`, `islate`) VALUES
(1, 1, 1, 1, 1, 1, 6.00, '', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `parentid` int(11) NOT NULL,
  `userid` int(11) NOT NULL DEFAULT '0',
  `fname` varchar(15) DEFAULT NULL,
  `lname` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`parentid`, `userid`, `fname`, `lname`) VALUES
(1, 5, 'Taata', 'Taata');

-- --------------------------------------------------------

--
-- Table structure for table `parent_student_match`
--

CREATE TABLE `parent_student_match` (
  `matchid` int(11) NOT NULL,
  `parentid` int(11) NOT NULL DEFAULT '0',
  `studentid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parent_student_match`
--

INSERT INTO `parent_student_match` (`matchid`, `parentid`, `studentid`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `regid` int(11) NOT NULL,
  `courseid` int(11) NOT NULL DEFAULT '0',
  `studentid` int(11) NOT NULL DEFAULT '0',
  `semesterid` int(11) NOT NULL DEFAULT '0',
  `termid` int(11) NOT NULL DEFAULT '0',
  `q1currpoints` double(6,2) NOT NULL DEFAULT '0.00',
  `q2currpoints` double(6,2) NOT NULL DEFAULT '0.00',
  `currentpoints` double(6,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`regid`, `courseid`, `studentid`, `semesterid`, `termid`, `q1currpoints`, `q2currpoints`, `currentpoints`) VALUES
(1, 1, 1, 1, 1, 6.00, 0.00, 6.00);

-- --------------------------------------------------------

--
-- Table structure for table `schoolattendance`
--

CREATE TABLE `schoolattendance` (
  `sattendid` int(11) NOT NULL,
  `studentid` int(11) NOT NULL DEFAULT '0',
  `sattenddate` date NOT NULL DEFAULT '0000-00-00',
  `semesterid` int(11) NOT NULL DEFAULT '0',
  `termid` int(11) NOT NULL DEFAULT '0',
  `type` enum('tardy','absent') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schoolattendance`
--

INSERT INTO `schoolattendance` (`sattendid`, `studentid`, `sattenddate`, `semesterid`, `termid`, `type`) VALUES
(1, 1, '0000-00-00', 1, 1, 'tardy'),
(2, 1, '0000-00-00', 1, 1, 'tardy');

-- --------------------------------------------------------

--
-- Table structure for table `schoolbulletins`
--

CREATE TABLE `schoolbulletins` (
  `sbulletinid` int(11) NOT NULL,
  `title` varchar(15) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `bulletindate` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schoolbulletins`
--

INSERT INTO `schoolbulletins` (`sbulletinid`, `title`, `message`, `bulletindate`) VALUES
(1, 'Boom', 'Kika', '2016-07-16');

-- --------------------------------------------------------

--
-- Table structure for table `schoolinfo`
--

CREATE TABLE `schoolinfo` (
  `schoolname` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(50) DEFAULT NULL,
  `phonenumber` varchar(14) DEFAULT NULL,
  `sitetext` text,
  `sitemessage` text,
  `currenttermid` int(11) DEFAULT NULL,
  `numsemesters` int(3) NOT NULL DEFAULT '0',
  `numperiods` int(3) NOT NULL DEFAULT '0',
  `apoint` double(6,3) NOT NULL DEFAULT '0.000',
  `bpoint` double(6,3) NOT NULL DEFAULT '0.000',
  `cpoint` double(6,3) NOT NULL DEFAULT '0.000',
  `dpoint` double(6,3) NOT NULL DEFAULT '0.000',
  `fpoint` double(6,3) NOT NULL DEFAULT '0.000'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schoolinfo`
--

INSERT INTO `schoolinfo` (`schoolname`, `address`, `phonenumber`, `sitetext`, `sitemessage`, `currenttermid`, `numsemesters`, `numperiods`, `apoint`, `bpoint`, `cpoint`, `dpoint`, `fpoint`) VALUES
('School Name', 'kampala', '7654', 'Original Massage ', '', NULL, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000);

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

CREATE TABLE `semesters` (
  `semesterid` int(11) NOT NULL,
  `termid` varchar(15) NOT NULL DEFAULT '',
  `title` varchar(15) NOT NULL DEFAULT '',
  `startdate` date NOT NULL DEFAULT '0000-00-00',
  `midtermdate` date NOT NULL DEFAULT '0000-00-00',
  `enddate` date NOT NULL DEFAULT '0000-00-00',
  `type` enum('1','2') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semesters`
--

INSERT INTO `semesters` (`semesterid`, `termid`, `title`, `startdate`, `midtermdate`, `enddate`, `type`) VALUES
(1, '1', 'one', '2018-12-01', '2018-12-08', '2019-12-10', '1');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `studentid` int(11) NOT NULL,
  `userid` int(11) NOT NULL DEFAULT '0',
  `fname` varchar(15) NOT NULL DEFAULT '',
  `mi` char(1) NOT NULL DEFAULT '',
  `lname` varchar(15) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`studentid`, `userid`, `fname`, `mi`, `lname`) VALUES
(1, 4, 'kay', 'k', 'ivo');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `teacherid` int(11) NOT NULL,
  `userid` int(11) NOT NULL DEFAULT '0',
  `fname` varchar(15) NOT NULL DEFAULT '',
  `lname` varchar(15) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`teacherid`, `userid`, `fname`, `lname`) VALUES
(1, 2, 'benh', 'ivo'),
(2, 3, 'ivo', 'ivan');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `termid` int(11) NOT NULL,
  `title` varchar(15) NOT NULL DEFAULT '',
  `startdate` date NOT NULL DEFAULT '0000-00-00',
  `enddate` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`termid`, `title`, `startdate`, `enddate`) VALUES
(1, 'First', '2018-12-12', '2020-01-00'),
(2, 'Second', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `username` varchar(15) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `type` enum('Admin','Teacher','Substitute','Student','Parent') NOT NULL DEFAULT 'Admin'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `password`, `type`) VALUES
(1, 'test', '098f6bcd4621d373cade4e832627b4f6', 'Admin'),
(2, 'teacher', '8d788385431273d11e8b43bb78f3aa41', 'Teacher'),
(3, 'substitute', '30baf0837b1972f86bc7492024cef370', 'Substitute'),
(4, 'student', 'cd73502828457d15655bbd7a63fb0bc8', 'Student'),
(5, 'parent', 'd0e45878043844ffc41aac437e86b602', 'Parent'),
(6, 'stud1', '1ed1789020e1d8015ba5e5f0fc61e933', 'Student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminstaff`
--
ALTER TABLE `adminstaff`
  ADD PRIMARY KEY (`adminid`),
  ADD UNIQUE KEY `UserID` (`userid`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`assignmentid`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`courseid`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`gradeid`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`parentid`);

--
-- Indexes for table `parent_student_match`
--
ALTER TABLE `parent_student_match`
  ADD PRIMARY KEY (`matchid`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`regid`);

--
-- Indexes for table `schoolattendance`
--
ALTER TABLE `schoolattendance`
  ADD PRIMARY KEY (`sattendid`);

--
-- Indexes for table `schoolbulletins`
--
ALTER TABLE `schoolbulletins`
  ADD PRIMARY KEY (`sbulletinid`);

--
-- Indexes for table `schoolinfo`
--
ALTER TABLE `schoolinfo`
  ADD PRIMARY KEY (`schoolname`);

--
-- Indexes for table `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`semesterid`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`studentid`),
  ADD UNIQUE KEY `UserID` (`userid`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`teacherid`),
  ADD UNIQUE KEY `UserID` (`userid`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`termid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminstaff`
--
ALTER TABLE `adminstaff`
  MODIFY `adminid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `assignmentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `courseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `gradeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `parentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `parent_student_match`
--
ALTER TABLE `parent_student_match`
  MODIFY `matchid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `regid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `schoolattendance`
--
ALTER TABLE `schoolattendance`
  MODIFY `sattendid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `schoolbulletins`
--
ALTER TABLE `schoolbulletins`
  MODIFY `sbulletinid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `semesters`
--
ALTER TABLE `semesters`
  MODIFY `semesterid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `studentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `teacherid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `termid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
