-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2020 at 05:48 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sltc`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu_level1`
--

CREATE TABLE `menu_level1` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varbinary(255) NOT NULL,
  `menu_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu_level1`
--

INSERT INTO `menu_level1` (`id`, `name`, `url`, `menu_order`) VALUES
(1, 'Home', 0x68747470733a2f2f736c74632e61632e6c6b2f, 1),
(2, 'Who we Are', 0x68747470733a2f2f736c74632e61632e6c6b2f77686f2d77652d6172652f6f75722d766973696f6e, 2),
(3, 'Study', 0x68747470733a2f2f736c74632e61632e6c6b2f73747564792f756e64657267726164756174652d7374756479, 3),
(4, 'Education', 0x68747470733a2f2f736c74632e61632e6c6b2f656475636174696f6e2f7363686f6f6c732d616e642d666163756c74696573, 4),
(5, 'Research', 0x68747470733a2f2f736c74632e61632e6c6b2f72657365617263682f72657365617263682d737472656e67746873, 5),
(6, 'Staff &amp; Students', 0x68747470733a2f2f736c74632e61632e6c6b2f73746166662d616e642d73747564656e74732f7374616666, 6),
(7, 'Work with Us', 0x68747470733a2f2f736c74632e61632e6c6b2f776f726b2d776974682d75732f636f6e73756c74616e63792d7365727669636573, 7);

-- --------------------------------------------------------

--
-- Table structure for table `menu_level2`
--

CREATE TABLE `menu_level2` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `level1_id` int(11) NOT NULL,
  `menu_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu_level2`
--

INSERT INTO `menu_level2` (`id`, `name`, `url`, `level1_id`, `menu_order`) VALUES
(1, 'Our Vision', 'https://sltc.ac.lk/who-we-are/our-vision', 2, 1),
(2, 'President\'s Message', 'https://sltc.ac.lk/who-we-are/president-message', 2, 2),
(3, '\r\n												Research &amp; Teaching Quality', 'https://sltc.ac.lk/who-we-are/research-and-teaching-quality', 2, 3),
(4, 'Our People', 'https://sltc.ac.lk/who-we-are/our-people', 2, 4),
(22, 'International Strategy', 'https://sltc.ac.lk/who-we-are/international-strategy', 2, 5),
(23, 'Structure &amp; Governance', 'https://sltc.ac.lk/who-we-are/structure-and-governance', 2, 6),
(24, 'Faculties, Schools &amp; Research Units', 'https://sltc.ac.lk/who-we-are/faculties-schools-and-research-units', 2, 7),
(25, 'Locations', 'https://sltc.ac.lk/who-we-are/locations', 2, 7),
(26, 'Facilities', 'https://sltc.ac.lk/who-we-are/facilities', 2, 8),
(27, 'Equality, Diversity &amp; Inclusion', 'https://sltc.ac.lk/who-we-are/equality-diversity-and-inclusion', 2, 9),
(28, 'Our Partnerships', 'https://sltc.ac.lk/who-we-are/our-partnerships', 2, 10),
(29, 'Community Engagement', 'https://sltc.ac.lk/who-we-are/community-engagement', 2, 11),
(30, 'Press', 'https://sltc.ac.lk/who-we-are/press', 2, 12),
(31, 'Blog', 'https://sltc.ac.lk/blog', 2, 13),
(32, 'Events', 'https://sltc.ac.lk/events', 2, 14),
(33, 'REACH', 'https://sltc.ac.lk/who-we-are/reach', 2, 15),
(34, 'Contact Us', 'https://sltc.ac.lk/contact', 2, 16),
(35, 'Undergraduate Study', 'https://sltc.ac.lk/study/undergraduate-study', 3, 1),
(36, 'Postgraduate Study', 'https://sltc.ac.lk/study/postgraduate-study', 3, 2),
(37, 'Professional and Executive Study', 'https://sltc.ac.lk/study/professional-and-executive-study', 3, 3),
(38, 'Multiple Entry Degree Completion Options', 'https://sltc.ac.lk/study/multiple-entry-degree-completion-options', 3, 4),
(39, 'Course Selector cum Fee Calculator', 'https://sltc.ac.lk/course-calculator-2020\" target=\"_blank', 3, 5),
(40, 'Accommodation', 'https://sltc.ac.lk/staff-and-students/accommodation', 3, 6),
(41, 'Study Abroad &amp; Student Exchange', 'https://sltc.ac.lk/study/study-abroad-and-student-exchange', 3, 7),
(42, 'Blended Learning', 'https://sltc.ac.lk/study/blended-learning', 3, 8),
(43, 'Key Dates', 'https://sltc.ac.lk/study/key-dates', 3, 9),
(44, 'Study Abroad &amp; Student Exchange', 'https://sltc.ac.lk/study/study-abroad-and-student-exchange', 3, 10),
(45, 'Blended Learning', 'https://sltc.ac.lk/study/blended-learning', 3, 11),
(46, 'Key Dates', 'https://sltc.ac.lk/study/key-dates', 3, 12),
(47, 'APPLICATION', 'https://sltc.ac.lk/study/application', 3, 13),
(48, 'Consultancy Services', 'https://sltc.ac.lk/work-with-us/consultancy-services', 7, 1),
(49, 'Use our Facilities &amp; Equipment', 'https://sltc.ac.lk/work-with-us/use-our-facilities-and-equipment', 7, 2),
(50, 'Research Collaborations', 'https://sltc.ac.lk/work-with-us/research-collaborations', 7, 3),
(51, 'Continuing Professional Development Courses', 'https://sltc.ac.lk/work-with-us/continuing-professional-development-courses', 7, 4),
(52, 'Recruit our talents', 'https://sltc.ac.lk/work-with-us/recruit-our-talents', 7, 5),
(53, 'Student Transfer', 'https://sltc.ac.lk/work-with-us/student-transfer', 7, 6),
(54, 'Advertisements', 'https://sltc.ac.lk/work-with-us/advertisements', 7, 7),
(55, 'Staff Homepage', 'https://sltc.ac.lk/staff-and-students/staff', 6, 1),
(56, 'Students Homepage', 'https://sltc.ac.lk/staff-and-students/students', 6, 2),
(57, 'Course Selector cum Fee Calculator', 'https://sltc.ac.lk/course-calculator', 6, 3),
(58, 'People Search', 'https://sltc.ac.lk/staff-and-students/people-search', 6, 4),
(59, 'Computing (SIT)', 'https://sltc.ac.lk/staff-and-students/computing', 6, 5),
(60, 'Accommodation', 'https://sltc.ac.lk/staff-and-students/accommodation', 6, 6),
(61, 'Catering', 'https://sltc.ac.lk/staff-and-students/catering', 6, 7),
(62, 'Library', 'https://sltc.ac.lk/staff-and-students/library', 6, 8),
(63, 'Careers', 'https://sltc.ac.lk/staff-and-students/careers', 6, 9),
(64, 'Sport', 'https://sltc.ac.lk/staff-and-students/sport', 6, 10),
(65, 'For Parents', 'https://sltc.ac.lk/staff-and-students/for-parents', 6, 11),
(66, 'Student Services', 'https://sltc.ac.lk/staff-and-students/student-services', 6, 12),
(67, 'Student Wellbeing', 'https://sltc.ac.lk/staff-and-students/student-wellbeing', 6, 13),
(68, 'University Health Centre', 'https://sltc.ac.lk/staff-and-students/university-health-centre', 6, 14),
(69, 'Student Interactive Society (SIS)', 'https://sltc.ac.lk/staff-and-students/student-interactive-society', 6, 15),
(70, 'Exams', 'https://sltc.ac.lk/staff-and-students/exams', 6, 16),
(71, 'Graduation', 'https://sltc.ac.lk/staff-and-students/graduation', 6, 17),
(72, 'Paying Accommodation &amp; Tuition Fees', 'https://sltc.ac.lk/staff-and-students/paying-accommodation-and-tuition-fees', 6, 18),
(73, 'Financial Advice', 'https://sltc.ac.lk/staff-and-students/financial-advice', 6, 19),
(74, 'SIS Constitution', 'https://sltc.ac.lk/staff-and-students/SIS-constitution', 6, 20),
(75, 'International', 'http://oiar.sltc.lk/', 5, 1),
(76, 'Learning and Teaching Research Group', 'http://research.sltc.ac.lk/research', 5, 1),
(77, 'Research and Innovations', 'http://research.sltc.ac.lk/', 5, 2),
(78, 'Research Strengths', 'https://sltc.ac.lk/research/research-strengths', 5, 3),
(79, 'Governance', 'https://sltc.ac.lk/research/governance', 5, 4),
(80, 'Research Directory', 'https://sltc.ac.lk/research/directory', 5, 5),
(81, 'Research Support', 'https://sltc.ac.lk/research/support', 5, 6),
(82, 'Research Facilities', 'https://sltc.ac.lk/research/facilities', 5, 7),
(83, 'Research Funding', 'https://sltc.ac.lk/research/funding', 5, 8),
(84, 'Research Impact', 'https://sltc.ac.lk/research/impact', 5, 9),
(85, 'Research News', 'https://sltc.ac.lk/research/news', 5, 10),
(86, 'CRIS', 'https://sltc.ac.lk/research/cris', 5, 11),
(87, 'Contact', 'https://sltc.ac.lk/research/contact', 5, 12),
(88, 'Schools &amp; Faculties', 'https://sltc.ac.lk/education/schools-and-faculties', 4, 1),
(89, 'Academic Calendar', 'https://sltc.ac.lk/education/academic-calendar', 4, 2),
(90, 'Global Programmes', 'https://sltc.ac.lk/education/global-programmes', 4, 3),
(91, 'Professional &amp; Executive Education', 'https://sltc.ac.lk/study/professional-and-executive-study', 4, 4),
(92, 'Excellence in Teaching &amp; Learning', 'https://sltc.ac.lk/education/excellence-in-teaching-and-learnin', 4, 5),
(93, 'Student Resource &amp; Support', 'https://sltc.ac.lk/education/student-enterprise-USE', 4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `menu_level3`
--

CREATE TABLE `menu_level3` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `level2_id` int(11) NOT NULL,
  `menu_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu_level3`
--

INSERT INTO `menu_level3` (`id`, `name`, `url`, `level2_id`, `menu_order`) VALUES
(1, 'Find a Degree', 'https://sltc.ac.lk/study/undergraduate/find-a-degree', 35, 1),
(2, 'Course Selector cum Fee Calculator', 'https://sltc.ac.lk/course-calculator-2020', 35, 1),
(3, 'Open Days and Visits', 'https://sltc.ac.lk/study/undergraduate/open-days-and-visits', 35, 2),
(4, 'Accommodation', 'https://sltc.ac.lk/staff-and-students/accommodation', 35, 3),
(5, 'Fees &amp;Funding', 'https://sltc.ac.lk/study/undergraduate/fees-and-funding', 35, 4),
(6, 'How to Apply', 'https://sltc.ac.lk/study/undergraduate/how-to-apply', 35, 4),
(7, 'Student Life', 'https://sltc.ac.lk/study/undergraduate/student-life', 35, 5),
(8, 'City Life', 'https://sltc.ac.lk/study/undergraduate/city-life', 35, 6),
(9, 'Study Abroad', 'https://sltc.ac.lk/study/study-abroad-and-student-exchange', 35, 7),
(10, 'Careers &amp;Employability', 'https://sltc.ac.lk/study/undergraduate/careers-and-employability', 35, 8),
(11, 'Teaching and Learning', 'https://sltc.ac.lk/study/undergraduate/teaching-and-learning', 35, 9),
(12, 'Contact Us', 'https://sltc.ac.lk/contact', 35, 10),
(13, 'Living With Us', 'https://sltc.ac.lk/study/accommodation/living-with-us', 3, 40),
(14, 'Private Sector Accommodation', 'https://sltc.ac.lk/study/accommodation/private-sector-accommodation', 3, 40),
(15, 'Our Accommodation', 'https://sltc.ac.lk/study/accommodation/our-accommodation', 3, 40),
(16, 'Paying Accommodation Charges', 'https://sltc.ac.lk/study/accommodation/paying-accommodation-charges', 3, 40),
(17, 'Current Students', 'https://sltc.ac.lk/study/accommodation/current-students', 3, 40),
(18, 'Staff &amp; Visitors', 'https://sltc.ac.lk/study/accommodation/staff-and-visitors', 3, 40),
(19, 'Useful Information', 'https://sltc.ac.lk/study/accommodation/useful-information', 3, 40),
(20, 'Application Period', 'https://sltc.ac.lk/study/application/application-period', 47, 1),
(21, 'Scholarships', 'https://sltc.ac.lk/study/application/scholarships', 47, 2),
(22, 'Financial Aid', 'https://sltc.ac.lk/study/application/financial-aid', 47, 3),
(23, 'Experience@SLTC', 'https://sltc.ac.lk/study/application/experience', 47, 4),
(24, 'Make informed decision', 'https://sltc.ac.lk/study/application/make-informed-decision', 47, 5),
(25, 'Check Application Status', 'https://sltc.ac.lk/study/application/check-application-status', 47, 6),
(26, 'Chat with our student', 'https://sltc.ac.lk/study/application/chat-with-our-student', 47, 7),
(27, 'Visit the Campus', 'https://sltc.ac.lk/study/application/visit-the-campus', 47, 8),
(28, 'Ask Admissions', 'https://sltc.ac.lk/contact', 47, 9),
(29, 'SLTC Explorer', 'https://sltc.ac.lk/study/application/sltc-explorer', 47, 10),
(30, 'Apply Now', 'https://sltc.ac.lk/study/application/apply-now', 47, 11),
(31, 'Accept the Offer', 'https://sltc.ac.lk/study/application/accept-the-offer', 47, 12),
(32, 'You may also be interested in', 'https://sltc.ac.lk/study/application/you-may-interested-in', 47, 13),
(33, 'Development of Teaching &amp; Learning (CETLI)', 'https://sltc.ac.lk/education/development-of-teaching-and-learning-CETLI', 92, 1),
(34, 'Communication Skills Development (CCSD)', 'https://sltc.ac.lk/education/communication-skills-development-CCSD', 92, 2),
(35, 'Bridging the knowledge gap of Basic Sciences', 'https://sltc.ac.lk/education/bridging-the-knowledge-gap-of-basic-sciences', 92, 3),
(36, 'Student Enterprise (USE)', 'https://sltc.ac.lk/education/student-enterprise-USE', 93, 1),
(37, 'Accommodation Services (HUB)', 'https://sltc.ac.lk/education/accommodation-services-HUB', 93, 2),
(38, 'Library', 'https://sltc.ac.lk/education/library', 93, 3),
(39, 'Registrar’s Office (Student Affairs)', 'https://sltc.ac.lk/education/registrar-office-student-affairs', 93, 4),
(40, 'Quality of Life Enhancement (OQLE)', 'https://sltc.ac.lk/education/quality-of-life-enhancement-OQLE', 93, 5),
(41, 'Global Relations Office (OGR)', 'https://sltc.ac.lk/education/global-relations-office-OGR', 93, 6),
(42, 'University Health Centre', 'https://sltc.ac.lk/education/university-health-centre', 93, 7);

-- --------------------------------------------------------

CREATE TABLE `menu_level4` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `level3_id` int(11) NOT NULL,
  `menu_order` int(11) NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--
-- Table structure for table `page_images`
--

CREATE TABLE `page_images` (
  `id` int(11) NOT NULL,
  `img` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `img_order` int(11) NOT NULL,
  `page` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `page_images`
--

INSERT INTO `page_images` (`id`, `img`, `url`, `img_order`, `page`) VALUES
(1, 'tile1.jpg', 'https://sltc.ac.lk/covid19-sltc-updates', 1, 1),
(2, 'tile5.jpg', 'http://research.sltc.ac.lk', 2, 1),
(3, 'tile8.jpg', 'https://sltc.ac.lk/education/schools-and-faculties', 3, 1),
(12, 'tile7.jpg', 'https://sltc.ac.lk/covid19-sltc-updates', 4, 1),
(13, 'tile2.jpg', 'https://sltc.ac.lk/covid19-sltc-updates', 5, 1),
(16, 'tile3.jpg', 'https://sltc.ac.lk/study/multiple-entry-degree-completion-options', 6, 1),
(20, 'tile3-2.jpg', 'https://sltc.ac.lk/study/multiple-entry-degree-completion-options', 7, 1),
(21, 'tile6.jpg', 'https://sltc.ac.lk/online-payments', 8, 1),
(22, 'tile4.jpg', 'https://sltc.ac.lk/who-we-are/president-message', 9, 1),
(23, 'Library-International-Webinar.jpg', 'https://bit.ly/2yqdUa2', 10, 1),
(24, 'logo-md.png', 'https://sltc.ac.lk/', 15, 1),
(25, 'home-popup3.jpg', '', 11, 1),
(26, 'logo-md-reverse.png', '', 12, 1),
(27, 'strip.png', '', 13, 1),
(28, 'strip-n-1.html', '', 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `page_text`
--

CREATE TABLE `page_text` (
  `id` int(11) NOT NULL,
  `page` int(11) NOT NULL,
  `text_data` varchar(300) NOT NULL,
  `txt_order` int(11) NOT NULL,
  `text_url` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `page_text`
--

INSERT INTO `page_text` (`id`, `page`, `text_data`, `txt_order`, `text_url`) VALUES
(1, 1, 'SLTC experts fighting the COVID-19 pandemic on many levels', 1, 'http://research.sltc.ac.lk/news/sltc_experts_fighting_the_covid_19_pandemic_on_many_levels'),
(2, 1, 'SLTC experts fighting the COVID-19 pandemic on many levels', 1, 'http://research.sltc.ac.lk/news/sltc_experts_fighting_the_covid_19_pandemic_on_many_levels'),
(3, 1, 'Coronavirus: How exposed is your job?', 2, 'https://www.bbc.com/news/uk-52637008'),
(4, 1, 'Sri Lanka tea prices soar despite COVID-19 disruptions', 3, 'http://bizenglish.adaderana.lk/sri-lanka-tea-prices-soar-despite-covid-19-disruptions/'),
(5, 1, 'Updated at 2020-05-29 18:49:00', 4, ''),
(6, 1, 'All SLTC operations are currently being conducted virtually. For assistance please contact following\r\n					numbers.', 5, ''),
(7, 1, '+9470 158 4786 (Academic and Administration) / +94112 100 500 (Other inquiries)', 6, ''),
(8, 1, ' +94 11 2100 500', 7, ''),
(9, 1, ' info@sltc.ac.lk', 8, ''),
(10, 1, ' Apply Now', 9, 'https://emis.sltc.lk/app/applicationform.php'),
(11, 1, ' International Students', 10, 'https://sltc.ac.lk/international-students'),
(12, 1, 'General Prospectus', 11, 'https://sltc.ac.lk/uploads/pdf/general_prospectus_2019.pdf'),
(13, 1, 'Accommodation Guide', 12, 'https://sltc.ac.lk/staff-and-students/accommodation'),
(14, 1, '+94 11 2100 500 / +94 71 1100 500', 13, ''),
(15, 1, 'info@sltc.ac.lk', 14, ''),
(16, 1, 'Main Campus', 15, ''),
(17, 1, 'Ingiriya Road, Padukka, Sri Lanka.', 16, ''),
(18, 1, 'City Campus', 17, ''),
(19, 1, 'Trace Expert City, Colombo 10', 18, ''),
(20, 1, 'Schools', 19, ''),
(21, 1, 'School of Engineering', 20, 'https://sltc.ac.lk/education/schools-and-faculties#engineering'),
(22, 1, 'School of Technology', 20, 'https://sltc.ac.lk/education/schools-and-faculties#technology'),
(23, 1, 'School of Professional Studies', 20, 'https://sltc.ac.lk/education/schools-and-faculties#professional-studies'),
(24, 1, 'SLTC Business School', 20, 'https://sltc.ac.lk/education/schools-and-faculties#business-school'),
(25, 1, 'School of Computing &amp; IT', 20, 'https://sltc.ac.lk/education/schools-and-faculties#it-school'),
(26, 1, 'School of Graduate Studies', 20, 'https://sltc.ac.lk/education/schools-and-faculties#graduate-studies'),
(27, 1, 'Links', 21, ''),
(28, 1, 'About Us', 22, 'https://sltc.ac.lk/about-us'),
(29, 1, 'Schools', 22, 'https://sltc.ac.lk/education/schools-and-faculties'),
(30, 1, 'Staff', 22, 'https://sltc.ac.lk/staff-and-students/staff'),
(31, 1, 'University Life', 22, 'https://sltc.ac.lk/why-sltc'),
(32, 1, 'Contact', 22, 'https://sltc.ac.lk/contact'),
(33, 1, '© Copyright 2020 SLTC | All rights reserved', 23, ''),
(34, 1, 'Library', 24, 'https://sltc.ac.lk/staff-and-students/library');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu_level1`
--
ALTER TABLE `menu_level1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_level2`
--
ALTER TABLE `menu_level2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_level3`
--
ALTER TABLE `menu_level3`
  ADD PRIMARY KEY (`id`);

  ALTER TABLE `menu_level4`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `menu_level2`
  ADD FOREIGN KEY (level1_id) REFERENCES menu_level1(id);

ALTER TABLE `menu_level3`
  ADD FOREIGN KEY (level2_id) REFERENCES menu_level2(id);

ALTER TABLE `menu_level4`
  ADD FOREIGN KEY (level3_id) REFERENCES menu_level3(id);
--
-- Indexes for table `menu_level2`
--
--
-- Indexes for table `page_images`
--
ALTER TABLE `page_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_text`
--
ALTER TABLE `page_text`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu_level1`
--
ALTER TABLE `menu_level1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `menu_level2`
--
ALTER TABLE `menu_level2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `menu_level3`
--
ALTER TABLE `menu_level3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

ALTER TABLE `menu_level4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `page_images`
--
ALTER TABLE `page_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `page_text`
--
ALTER TABLE `page_text`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
