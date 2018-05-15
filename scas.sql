-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-05-15 09:17:49
-- 服务器版本： 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scas`
--

-- --------------------------------------------------------

--
-- 表的结构 `administrator`
--

CREATE TABLE `administrator` (
  `admin_id` int(11) NOT NULL,
  `staffnum` varchar(25) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `admin_username` varchar(15) NOT NULL,
  `admin_password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `administrator`
--

INSERT INTO `administrator` (`admin_id`, `staffnum`, `firstname`, `lastname`, `admin_username`, `admin_password`) VALUES
(1, 'A200010', 'san', 'zhang', 'ZHANGSAN', '123456'),
(2, 'A200011', 'si', 'li', 'LISI', '123456'),
(3, 'A200012', 'Bing', 'Li', 'libing', '123456'),
(4, 'A200013', 'Fang', 'Xiao', 'xiaofang', '123456'),
(5, 'A200014', 'Ming', 'Xiao', 'xiaoming', '123456');

-- --------------------------------------------------------

--
-- 表的结构 `airplane`
--

CREATE TABLE `airplane` (
  `airplane_id` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `manufactructure` varchar(50) NOT NULL,
  `capacity` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `airplane`
--

INSERT INTO `airplane` (`airplane_id`, `type`, `manufactructure`, `capacity`) VALUES
(1, 'Boeing787-8', 'Boeing', '223seats'),
(2, 'Boeing787-8', 'Boeing', '223seats'),
(3, 'AirbusA380', 'Airbus', '544seats'),
(4, 'AirbusA380', 'Airbus', '544seats'),
(5, 'AirbusA319', 'Airbus', '124seats'),
(6, 'AirbusA319', 'Airbus', '124seats');

-- --------------------------------------------------------

--
-- 表的结构 `flight`
--

CREATE TABLE `flight` (
  `flight_id` int(11) NOT NULL,
  `flightno` varchar(255) NOT NULL,
  `type` varchar(15) NOT NULL,
  `predict_starttime` datetime NOT NULL,
  `predict_endtime` datetime NOT NULL,
  `departure` text NOT NULL,
  `destinationiat` text NOT NULL,
  `departureiata` varchar(25) NOT NULL,
  `destinationiata` varchar(25) NOT NULL,
  `real_starttime` datetime DEFAULT NULL,
  `real_endtime` datetime DEFAULT NULL,
  `gateway` varchar(25) NOT NULL,
  `totaltime` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `flight`
--

INSERT INTO `flight` (`flight_id`, `flightno`, `type`, `predict_starttime`, `predict_endtime`, `departure`, `destinationiat`, `departureiata`, `destinationiata`, `real_starttime`, `real_endtime`, `gateway`, `totaltime`) VALUES
(1, 'SC2333', 'domestic', '2018-05-01 10:30:00', '2018-05-01 13:00:00', 'Chengdu Shuangliu International Airport', 'Beijing Capital International Airport', 'CTU', 'PEK', '2018-05-01 10:35:16', '2018-05-14 12:57:28', '170', '02:22:12'),
(2, 'SC6666', 'domestic', '2018-05-01 15:10:00', '2018-05-01 17:10:00', 'Chengdu Shuangliu International Airport', 'Shanghai Hongqiao International Airport', 'CTU', 'SHA', '2018-05-01 15:12:25', '2018-05-01 17:15:04', '120', '02:02:21'),
(3, 'SC2888', 'domestic', '2018-05-15 10:00:00', '2018-05-15 13:10:00', 'Chongqing Jiangbei International Airport', 'Lhasa Kongga International Airport ', 'CKG', 'LXA', NULL, NULL, '100', NULL),
(4, 'SC5002', 'domestic', '2018-05-30 09:50:00', '2018-05-30 12:35:00', 'Wuhan Tianhe International Airport', 'Sanya Fenghuang International Airport', 'WUH', 'SYX', NULL, NULL, '70', NULL),
(5, 'SC6205', 'domestic', '2018-05-31 16:15:00', '2018-05-31 19:10:00', 'Lhasa Kongga International Airport ', 'Chongqing Jiangbei International Airport', 'LXA', 'CKG', NULL, NULL, '20', NULL),
(6, 'SC2018', 'domestic', '2018-05-31 20:00:00', '2018-05-31 23:05:00', 'Lhasa Kongga International Airport ', 'Chongqing Jiangbei International Airport', 'LXA', 'CKG', NULL, NULL, '15', NULL),
(7, 'SC3121', 'domestic', '2018-06-05 16:00:00', '2018-06-05 18:50:00', 'Sanya Fenghuang International Airport', 'Wuhan Tianhe International Airport', 'SYX', 'WUH', NULL, NULL, '18', NULL),
(8, 'SC1564', 'International', '2018-06-10 11:40:00', '2018-06-10 14:50:00', 'Chengdu Shuangliu International Airport', 'Suvarnabhumi Airport', 'CTU', 'BKK', NULL, NULL, '130', NULL),
(9, 'SC2845', 'International', '2018-06-15 08:00:00', '2018-06-15 12:10:00', 'Chengdu Shuangliu International Airport', 'Don Mueang International Airport ', 'CTU', 'DMK', NULL, NULL, '125', NULL),
(10, 'SC6922', 'International', '2018-06-17 15:10:00', '2018-06-17 18:10:00', 'Suvarnabhumi Airport', 'Chengdu Shuangliu International Airport', 'BKK', 'CTU', NULL, NULL, '60', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `flight_airplane_price`
--

CREATE TABLE `flight_airplane_price` (
  `fap_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `price_id` int(11) NOT NULL,
  `airplan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `flight_airplane_price`
--

INSERT INTO `flight_airplane_price` (`fap_id`, `flight_id`, `price_id`, `airplan_id`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 1, 5),
(4, 3, 2, 5),
(5, 4, 1, 1),
(6, 4, 2, 1),
(7, 5, 1, 6),
(8, 5, 2, 6),
(9, 6, 1, 5),
(10, 6, 2, 5),
(11, 7, 1, 2),
(12, 7, 2, 2),
(13, 8, 1, 3),
(14, 8, 1, 3),
(15, 9, 1, 4),
(16, 9, 2, 4),
(17, 10, 1, 3),
(18, 10, 2, 3);

-- --------------------------------------------------------

--
-- 表的结构 `orderlist`
--

CREATE TABLE `orderlist` (
  `list_id` int(11) NOT NULL,
  `order_number` varchar(50) NOT NULL,
  `submit_time` datetime NOT NULL,
  `finished_time` datetime NOT NULL,
  `order_comment` text,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `orderlist`
--

INSERT INTO `orderlist` (`list_id`, `order_number`, `submit_time`, `finished_time`, `order_comment`, `user_id`) VALUES
(1, 'D201804220001', '2018-04-22 18:00:00', '2018-05-01 13:00:00', NULL, 1),
(2, 'D201804220002', '2018-04-22 16:32:00', '2018-05-01 17:10:00', NULL, 2);

-- --------------------------------------------------------

--
-- 表的结构 `passenger`
--

CREATE TABLE `passenger` (
  `passenger_id` int(11) NOT NULL,
  `p_firstname` varchar(15) NOT NULL,
  `p_lastname` varchar(15) NOT NULL,
  `id_card` varchar(30) NOT NULL,
  `passport` varchar(30) DEFAULT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `passenger`
--

INSERT INTO `passenger` (`passenger_id`, `p_firstname`, `p_lastname`, `id_card`, `passport`, `dob`) VALUES
(1, 'wu', 'wang', '60001990060100', NULL, '1990-06-01'),
(2, 'shi', 'fang', '60001990010100', NULL, '1990-01-01'),
(3, 'Liu', 'Liu', '50001990020200', NULL, '1990-02-02'),
(4, 'Xin', 'Liu', '40001992080100', NULL, '1992-08-01'),
(5, 'Damian', 'Zhao', '41101995060501', 'E3405007', '1995-06-05'),
(6, 'Guo', 'Yang', '30001995070401', 'E3454867', '1995-07-04');

-- --------------------------------------------------------

--
-- 表的结构 `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `pay_price` float(15,2) NOT NULL,
  `payment_type` varchar(25) NOT NULL,
  `pay_time` datetime NOT NULL,
  `orderlist_id` int(11) NOT NULL,
  `paymentstatus_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `payment`
--

INSERT INTO `payment` (`payment_id`, `pay_price`, `payment_type`, `pay_time`, `orderlist_id`, `paymentstatus_id`) VALUES
(1, 500.00, 'Alipay', '2018-04-22 18:00:00', 1, 1),
(2, 800.00, 'Wechat', '2018-04-22 19:40:00', 2, 2);

-- --------------------------------------------------------

--
-- 表的结构 `payment_status`
--

CREATE TABLE `payment_status` (
  `pays_id` int(11) NOT NULL,
  `status` varchar(25) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `payment_status`
--

INSERT INTO `payment_status` (`pays_id`, `status`, `description`) VALUES
(1, 'finished', 'finished'),
(2, 'finished', 'finished');

-- --------------------------------------------------------

--
-- 表的结构 `price`
--

CREATE TABLE `price` (
  `price_id` int(11) NOT NULL,
  `seats_type` varchar(25) NOT NULL,
  `seats_price` float(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `price`
--

INSERT INTO `price` (`price_id`, `seats_type`, `seats_price`) VALUES
(1, 'Economy', 200.00),
(2, 'Business', 400.00);

-- --------------------------------------------------------

--
-- 表的结构 `ticketinfo_flight`
--

CREATE TABLE `ticketinfo_flight` (
  `ticf_id` int(11) NOT NULL,
  `fap_id` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
  `passenger_id` int(11) NOT NULL,
  `seatnum` varchar(25) NOT NULL,
  `gateway` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `ticketinfo_flight`
--

INSERT INTO `ticketinfo_flight` (`ticf_id`, `fap_id`, `list_id`, `passenger_id`, `seatnum`, `gateway`) VALUES
(1, 1, 1, 1, '24B', '170'),
(2, 2, 2, 2, '10L', '120');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `passenger_id` int(11) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `email` varchar(25) NOT NULL,
  `telephone` varchar(25) NOT NULL,
  `address` text NOT NULL,
  `province` varchar(25) NOT NULL,
  `city` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`user_id`, `passenger_id`, `username`, `password`, `email`, `telephone`, `address`, `province`, `city`) VALUES
(1, 1, 'wangwu', '123456', 'wangwu@qq.com', '1335655656', 'Tianfu street', 'Sichuan', 'Chengdu'),
(2, 2, 'fangshi', '123456', 'fangshi@qq.com', '1835656001', 'qingyang street', 'SIchuan', 'Chengdu'),
(3, 3, 'liuliu', '12345678', 'liuliu@qq.com', '1335655677', 'Liuliu Street', 'Chongqing', 'Chongqing'),
(4, 4, 'liuxin', '12345678', 'liuxin@qq.com', '1535659001', 'Liuxin Street', 'Chongqing', 'Chongqing');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `airplane`
--
ALTER TABLE `airplane`
  ADD PRIMARY KEY (`airplane_id`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`flight_id`);

--
-- Indexes for table `flight_airplane_price`
--
ALTER TABLE `flight_airplane_price`
  ADD PRIMARY KEY (`fap_id`),
  ADD KEY `flight_airplane_price_fk0` (`flight_id`),
  ADD KEY `flight_airplane_price_fk1` (`price_id`),
  ADD KEY `flight_airplane_price_fk2` (`airplan_id`);

--
-- Indexes for table `orderlist`
--
ALTER TABLE `orderlist`
  ADD PRIMARY KEY (`list_id`),
  ADD KEY `orderlist_fk0` (`user_id`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`passenger_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `payment_fk0` (`orderlist_id`),
  ADD KEY `payment_fk1` (`paymentstatus_id`);

--
-- Indexes for table `payment_status`
--
ALTER TABLE `payment_status`
  ADD PRIMARY KEY (`pays_id`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`price_id`);

--
-- Indexes for table `ticketinfo_flight`
--
ALTER TABLE `ticketinfo_flight`
  ADD PRIMARY KEY (`ticf_id`),
  ADD KEY `ticketinfo_flight_fk0` (`fap_id`),
  ADD KEY `ticketinfo_flight_fk1` (`list_id`),
  ADD KEY `ticketinfo_flight_fk2` (`passenger_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `administrator`
--
ALTER TABLE `administrator`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `airplane`
--
ALTER TABLE `airplane`
  MODIFY `airplane_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `flight`
--
ALTER TABLE `flight`
  MODIFY `flight_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `flight_airplane_price`
--
ALTER TABLE `flight_airplane_price`
  MODIFY `fap_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 使用表AUTO_INCREMENT `orderlist`
--
ALTER TABLE `orderlist`
  MODIFY `list_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `passenger`
--
ALTER TABLE `passenger`
  MODIFY `passenger_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `payment_status`
--
ALTER TABLE `payment_status`
  MODIFY `pays_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `price`
--
ALTER TABLE `price`
  MODIFY `price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `ticketinfo_flight`
--
ALTER TABLE `ticketinfo_flight`
  MODIFY `ticf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 限制导出的表
--

--
-- 限制表 `flight_airplane_price`
--
ALTER TABLE `flight_airplane_price`
  ADD CONSTRAINT `flight_airplane_price_fk0` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`),
  ADD CONSTRAINT `flight_airplane_price_fk1` FOREIGN KEY (`price_id`) REFERENCES `price` (`price_id`),
  ADD CONSTRAINT `flight_airplane_price_fk2` FOREIGN KEY (`airplan_id`) REFERENCES `airplane` (`airplane_id`);

--
-- 限制表 `orderlist`
--
ALTER TABLE `orderlist`
  ADD CONSTRAINT `orderlist_fk0` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- 限制表 `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_fk0` FOREIGN KEY (`orderlist_id`) REFERENCES `orderlist` (`list_id`),
  ADD CONSTRAINT `payment_fk1` FOREIGN KEY (`paymentstatus_id`) REFERENCES `payment_status` (`pays_id`);

--
-- 限制表 `ticketinfo_flight`
--
ALTER TABLE `ticketinfo_flight`
  ADD CONSTRAINT `ticketinfo_flight_fk0` FOREIGN KEY (`fap_id`) REFERENCES `flight_airplane_price` (`fap_id`),
  ADD CONSTRAINT `ticketinfo_flight_fk1` FOREIGN KEY (`list_id`) REFERENCES `orderlist` (`list_id`),
  ADD CONSTRAINT `ticketinfo_flight_fk2` FOREIGN KEY (`passenger_id`) REFERENCES `passenger` (`passenger_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
