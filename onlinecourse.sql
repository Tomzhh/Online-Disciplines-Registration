-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Июн 18 2020 г., 06:32
-- Версия сервера: 10.4.11-MariaDB
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `onlinecourse`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Tomiris', '742fd16338d5bcdd4fe0fe99a1a7f7b2', '2020-05-24 16:21:18', '16-06-2020 04:52:56 PM');

-- --------------------------------------------------------

--
-- Структура таблицы `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `courseCode` varchar(255) DEFAULT NULL,
  `courseName` varchar(255) DEFAULT NULL,
  `courseUnit` varchar(255) DEFAULT NULL,
  `noofSeats` int(11) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `course`
--

INSERT INTO `course` (`id`, `courseCode`, `courseName`, `courseUnit`, `noofSeats`, `creationDate`, `updationDate`) VALUES
(1, 'PHP01', 'Web Technologies (PHP)', '3', 20, '2017-02-11 17:39:10', '16-06-2020 05:25:03 PM'),
(2, 'OOPJ1214', 'Object Oriented Programming Java', '3', 18, '2017-02-11 17:52:25', '16-06-2020 02:05:25 PM'),
(4, 'IKT1107', 'ICT', '1', 20, '2017-02-11 18:47:25', '16-06-2020 05:27:51 PM'),
(5, 'MA1 1201', 'Mathematical Analysis 1', '1', 60, '2020-06-16 12:04:16', NULL),
(6, 'SIK 1102', 'Modern history of Kazakhstan', '1', 80, '2020-06-16 12:04:48', NULL),
(7, 'MA 2 1203', 'Mathematical analysis 2', '2', 60, '2020-06-16 12:05:08', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `courseenrolls`
--

CREATE TABLE `courseenrolls` (
  `id` int(11) NOT NULL,
  `studentRegno` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `session` int(11) DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `course` int(11) DEFAULT NULL,
  `enrollDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `courseenrolls`
--

INSERT INTO `courseenrolls` (`id`, `studentRegno`, `pincode`, `session`, `department`, `level`, `semester`, `course`, `enrollDate`) VALUES
(4, '10806121', '715948', 4, 7, 6, 5, 2, '2018-05-21 10:19:41'),
(5, '12345', '131863', 4, 7, 6, 6, 1, '2018-08-25 05:52:34'),
(6, '010701123412', '785828', 5, 8, 5, 11, 1, '2020-06-16 12:19:48'),
(7, '001215123339', '729445', 8, 13, 5, 11, 5, '2020-06-17 08:37:42'),
(8, '001215123339', '729445', 8, 13, 6, 12, 7, '2020-06-17 08:40:38');

-- --------------------------------------------------------

--
-- Структура таблицы `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `department`
--

INSERT INTO `department` (`id`, `department`, `creationDate`) VALUES
(13, 'IT', '2020-06-16 12:35:33'),
(14, 'TS', '2020-06-16 12:35:38'),
(15, 'CS', '2020-06-16 12:35:45'),
(16, 'IT Management', '2020-06-16 12:40:29'),
(17, 'Digital Journalism', '2020-06-16 12:40:54');

-- --------------------------------------------------------

--
-- Структура таблицы `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `level` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `level`
--

INSERT INTO `level` (`id`, `level`, `creationDate`) VALUES
(5, 'Level 1', '2017-02-09 19:04:04'),
(6, 'level 2', '2017-02-09 19:04:12'),
(7, 'level 4', '2017-02-09 19:04:17');

-- --------------------------------------------------------

--
-- Структура таблицы `semester`
--

CREATE TABLE `semester` (
  `id` int(11) NOT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `semester`
--

INSERT INTO `semester` (`id`, `semester`, `creationDate`, `updationDate`) VALUES
(11, 'First', '2020-06-16 10:39:55', NULL),
(12, 'Second', '2020-06-16 10:39:59', NULL),
(13, 'Third', '2020-06-16 10:40:02', NULL),
(14, 'Forth', '2020-06-17 08:34:32', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `session` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `session`
--

INSERT INTO `session` (`id`, `session`, `creationDate`) VALUES
(6, '2019', '2020-06-16 12:34:53'),
(7, '2020', '2020-06-16 12:34:56'),
(8, '2021', '2020-06-16 12:35:00');

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE `students` (
  `StudentRegno` varchar(255) NOT NULL,
  `studentPhoto` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `studentName` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `session` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `cgpa` decimal(10,2) DEFAULT NULL,
  `creationdate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`StudentRegno`, `studentPhoto`, `password`, `studentName`, `pincode`, `session`, `department`, `semester`, `cgpa`, `creationdate`, `updationDate`) VALUES
('001215123339', 'avatar-1.jpg.png', '2660af1fc9020be6cfb70d63f1bc42ef', 'Zere', '729445', NULL, NULL, NULL, '3.20', '2020-06-17 08:31:41', NULL),
('010701123412', 'IMG_2704 2.JPG', 'c6d740f93951039c4cf0ae50b43bcd56', 'Adilet', '785828', NULL, NULL, NULL, '3.70', '2020-06-16 12:01:29', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `studentRegno` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `userlog`
--

INSERT INTO `userlog` (`id`, `studentRegno`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, '010701123412', 0x3a3a3100000000000000000000000000, '2020-06-16 12:18:49', '16-06-2020 05:50:34 PM', 1),
(19, '010701123412', 0x3a3a3100000000000000000000000000, '2020-06-16 13:26:38', NULL, 1),
(20, '001215123339', 0x3a3a3100000000000000000000000000, '2020-06-17 08:36:34', '17-06-2020 10:40:47 AM', 1),
(21, '001215123339', 0x3a3a3100000000000000000000000000, '2020-06-17 12:44:13', NULL, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `courseenrolls`
--
ALTER TABLE `courseenrolls`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentRegno`);

--
-- Индексы таблицы `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `courseenrolls`
--
ALTER TABLE `courseenrolls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `semester`
--
ALTER TABLE `semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

