-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2024 at 03:27 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appointmentsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointmentsystem.doctor`
--

CREATE TABLE `appointmentsystem.doctor` (
  `doctor_id` int(11) NOT NULL,
  `doctor_name` varchar(50) NOT NULL,
  `doctor_specialist` varchar(50) NOT NULL,
  `doctor_city` varchar(50) NOT NULL,
  `doctor_hospital` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointmentsystem.doctor`
--

INSERT INTO `appointmentsystem.doctor` (`doctor_id`, `doctor_name`, `doctor_specialist`, `doctor_city`, `doctor_hospital`) VALUES
(1, 'Yasir', 'Gynecologist', 'TTS', 'DHQ');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `doctors_id` int(11) NOT NULL,
  `doctor_name` varchar(50) NOT NULL,
  `doctor_specialist` varchar(50) NOT NULL,
  `doctor_hospital` varchar(50) NOT NULL,
  `doctor_city` varchar(50) NOT NULL,
  `doctor_fee` varchar(30) NOT NULL,
  `doctor_desc` varchar(100) NOT NULL,
  `doctor_experience` varchar(30) NOT NULL,
  `doctor_availability` varchar(50) NOT NULL,
  `doctor_photo` varchar(50) NOT NULL,
  `doctor_diseaseSpecialization` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`doctors_id`, `doctor_name`, `doctor_specialist`, `doctor_hospital`, `doctor_city`, `doctor_fee`, `doctor_desc`, `doctor_experience`, `doctor_availability`, `doctor_photo`, `doctor_diseaseSpecialization`) VALUES
(6, 'Usman Yousuf', 'Dermatologist', 'Horizon Hospital Lahore', 'Lahore', '2000', '', '10', 'Mon to Tue 09:00 AM to 02:00 PM', 'usman-yousuf.jpg', 'Typhoid Fever'),
(7, 'Humberto', 'Gynecologist', 'Aadil Hospital', 'Lahore', '3000', '', '10', 'Mon to Tue 09:00 AM to 02:00 PM', 'humberto.jpg', ''),
(8, 'Hammad', 'Child Specialist', 'Maroof International Hospital', 'Islamabad', '3000', '', '11', 'Mon to Tue 09:00 AM to 02:00 PM', 'hammad.jpg', ''),
(9, 'Yasir', 'Gastroenterologist', 'PIMS Hospital Islamabad', 'Islamabad', '3000', '', '12', 'Mon to Tue 09:00 AM to 02:00 PM', 'yasir.jpg', ''),
(10, 'Amina', 'Gynecologist', 'Rathore Hospital', 'Faisalabad', '3000', '', '9', 'Mon to Tue 09:00 AM to 02:00 PM', 'amina.jpg', ''),
(11, 'Ayesha', 'Dermatologist', 'National Hospital', 'Faisalabad', '2000', '', '8', 'Mon to Tue 09:00 AM to 02:00 PM', 'ayesha.jpg', ''),
(12, 'Sameer', 'Child Specialist', 'Patel Hospital', 'Karachi', '2000', '', '18', 'Mon to Tue 09:00 AM to 02:00 PM', 'sameer.jpg', ''),
(13, 'Ijaz', 'Gastroenterologist', 'Dr. Ziauddin Hospital North Nazimabad', 'Karachi', '2000', '', '18', 'Mon to Tue 09:00 AM to 02:00 PM', 'ijaz.jpg', ''),
(14, 'Moiz', 'Psychiatrist', 'Aziz Hospital', 'Multan', '1000', '', '10', 'Mon to Tue 09:00 AM to 02:00 PM', 'moiz.jpg', ''),
(15, 'Adeel', 'Psychiatrist', 'Mission Hospital Multan', 'Multan', '3000', '', '14', 'Mon to Tue 09:00 AM to 02:00 PM', 'adeel.jpg', 'Diabetes'),
(16, 'Muzammal', 'Neurologist', 'Sadaat Hospital', 'Faisalabad', '3000', '', '12', 'Mon to Tue 09:00 AM to 02:00 PM', 'muzammal.jpg', 'High Blood Pressure'),
(17, 'Hania', 'Neurologist', 'Fiasal Hospital', 'Faisalabad', '4000', '', '13', 'Mon to Tue 09:00 AM to 02:00 PM', 'hania.jpg', ''),
(18, 'Humberto', 'Gynecologist', 'Aadil Hospital', 'Lahore', '3000', '', '10', 'Mon to Tue 09:00 AM to 02:00 PM', 'humberto.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `hospital_id` int(11) NOT NULL,
  `hospital_name` varchar(50) NOT NULL,
  `hospital_phone` varchar(50) NOT NULL,
  `hospital_address` varchar(50) NOT NULL,
  `hospital_city` varchar(50) NOT NULL,
  `hospital_availability` varchar(50) NOT NULL,
  `hospital_map` varchar(1000) NOT NULL,
  `hospital_photo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`hospital_id`, `hospital_name`, `hospital_phone`, `hospital_address`, `hospital_city`, `hospital_availability`, `hospital_map`, `hospital_photo`) VALUES
(1, 'Horizon Hospital Lahore', ' (042) 35401620', '402 Bahria University Rd, Lahore', 'Lahore', '24 hours', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3403.3779234367817!2d74.28501617442225!3d31.458788550184092!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x391901677786d497%3A0xf130ea67c5d5a58e!2sHorizon%20Hospital%20Lahore!5e0!3m2!1sen!2s!4v1715824232404!5m2!1sen!2s<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3403.3779234367817!2d74.28501617442225!3d31.458788550184092!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x391901677786d497%3A0xf130ea67c5d5a58e!2sHorizon%20Hospital%20Lahore!5e0!3m2!1sen!2s!4v1715824232404!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'horizon.jpg'),
(2, 'PIMS Hospital Islamabad', '(051) 9261170', 'Ibn-e-Sina Rd, G-8/3 G 8/3 G-8, Islamabad,', 'Islamabad', '24 hours', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3403.3779234367817!2d74.28501617442225!3d31.458788550184092!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x391901677786d497%3A0xf130ea67c5d5a58e!2sHorizon%20Hospital%20Lahore!5e0!3m2!1sen!2s!4v1715824232404!5m2!1sen!2s', 'pims.jpg'),
(3, 'Faisal Hospital', '(041) 8719677', '673-A Lower Canal Rd E, Block A People Colony No 1', 'Faisalabad', '24 hours', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3403.3779234367817!2d74.28501617442225!3d31.458788550184092!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x391901677786d497%3A0xf130ea67c5d5a58e!2sHorizon%20Hospital%20Lahore!5e0!3m2!1sen!2s!4v1715824232404!5m2!1sen!2s<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3403.3779234367817!2d74.28501617442225!3d31.458788550184092!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x391901677786d497%3A0xf130ea67c5d5a58e!2sHorizon%20Hospital%20Lahore!5e0!3m2!1sen!2s!4v1715824232404!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'faisal.jpg'),
(4, 'Dr. Ziauddin Hospital', '(021) 111 942 942', 'Allama Rasheed Turabi Rd, Wahid Colony, Karachi,', 'Karachi', '24 hours', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3403.3779234367817!2d74.28501617442225!3d31.458788550184092!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x391901677786d497%3A0xf130ea67c5d5a58e!2sHorizon%20Hospital%20Lahore!5e0!3m2!1sen!2s!4v1715824232404!5m2!1sen!2s<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3403.3779234367817!2d74.28501617442225!3d31.458788550184092!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x391901677786d497%3A0xf130ea67c5d5a58e!2sHorizon%20Hospital%20Lahore!5e0!3m2!1sen!2s!4v1715824232404!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'zia.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `patient_appointments`
--

CREATE TABLE `patient_appointments` (
  `appointment_id` int(10) NOT NULL,
  `patient_name` varchar(50) NOT NULL,
  `doctors_id` int(11) NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_time` time DEFAULT NULL,
  `patient_phone` varchar(30) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Triggers `patient_appointments`
--
DELIMITER $$
CREATE TRIGGER `generate_time_with_gap` BEFORE INSERT ON `patient_appointments` FOR EACH ROW BEGIN
    DECLARE last_appointment_time TIME;

    -- Get the last appointment time from the table
    SELECT MAX(appointment_time) INTO last_appointment_time FROM patient_appointments;

    -- If there are no existing appointments, start from 09:00 AM
    IF last_appointment_time IS NULL THEN
        SET NEW.appointment_time = '09:00:00';
    ELSE
        -- Add 15 minutes to the last appointment time
        SET NEW.appointment_time = ADDTIME(last_appointment_time, '00:15:00');
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_phone` varchar(11) NOT NULL,
  `user_dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_password`, `user_email`, `user_phone`, `user_dob`) VALUES
(1, 'Muzammal', 'Muzammal', 'mehar@gmail.com', '', '0000-00-00'),
(3, 'Yasir Ghaffar', '$2y$10$oBBphmmPx4GROF0XEb25/OORlase5sun4Busrk6PuTe', 'meharmuzammal@gmail.com', '00000', '0000-00-00'),
(4, 'Muhammad Muzammal Ishaq', 'Mehar000519?', 'meharmuzammal0019@gmail.com', '00000', '0000-00-00'),
(5, 'Ibrar', 'Muzammal', 'muzammal@gmail.com', '03456150019', '0000-00-00'),
(8, 'muzammal', '0000', 'm@gmail.com', '0000', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmentsystem.doctor`
--
ALTER TABLE `appointmentsystem.doctor`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`doctors_id`);

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`hospital_id`);

--
-- Indexes for table `patient_appointments`
--
ALTER TABLE `patient_appointments`
  ADD PRIMARY KEY (`appointment_id`),
  ADD KEY `fk_patient_appointments_doctors_id` (`doctors_id`),
  ADD KEY `fk_user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `doctors_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `hospital_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `patient_appointments`
--
ALTER TABLE `patient_appointments`
  MODIFY `appointment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10018;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `patient_appointments`
--
ALTER TABLE `patient_appointments`
  ADD CONSTRAINT `fk_patient_appointments_doctors_id` FOREIGN KEY (`doctors_id`) REFERENCES `doctors` (`doctors_id`),
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
