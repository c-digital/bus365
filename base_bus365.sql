-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 21-11-2022 a las 13:01:58
-- Versión del servidor: 5.7.40
-- Versión de PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `base_bus365`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acc_account_name`
--

CREATE TABLE `acc_account_name` (
  `account_id` int(11) UNSIGNED NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `account_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `acc_account_name`
--

INSERT INTO `acc_account_name` (`account_id`, `account_name`, `account_type`) VALUES
(1, 'Caja Chica', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acn_account_transaction`
--

CREATE TABLE `acn_account_transaction` (
  `account_tran_id` int(11) UNSIGNED NOT NULL,
  `account_id` int(11) NOT NULL,
  `transaction_description` varchar(255) NOT NULL,
  `amount` varchar(25) DEFAULT NULL,
  `document_pic` text,
  `create_by_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agent_info`
--

CREATE TABLE `agent_info` (
  `agent_id` int(11) NOT NULL,
  `agent_first_name` varchar(30) DEFAULT NULL,
  `agent_second_name` varchar(150) DEFAULT NULL,
  `agent_company_name` varchar(150) DEFAULT NULL,
  `agent_document_id` varchar(150) DEFAULT NULL,
  `agent_pic_document` varchar(255) DEFAULT NULL,
  `agent_picture` varchar(255) DEFAULT NULL,
  `agent_phone` varchar(150) DEFAULT NULL,
  `agent_mobile` varchar(150) DEFAULT NULL,
  `agent_email` varchar(150) DEFAULT NULL,
  `agent_address_line_1` varchar(150) DEFAULT NULL,
  `agent_address_line_2` varchar(150) DEFAULT NULL,
  `agent_address_city` varchar(150) DEFAULT NULL,
  `agent_address_zip_code` varchar(150) DEFAULT NULL,
  `agent_country` varchar(150) DEFAULT NULL,
  `agent_commission` float NOT NULL,
  `status` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `agent_info`
--

INSERT INTO `agent_info` (`agent_id`, `agent_first_name`, `agent_second_name`, `agent_company_name`, `agent_document_id`, `agent_pic_document`, `agent_picture`, `agent_phone`, `agent_mobile`, `agent_email`, `agent_address_line_1`, `agent_address_line_2`, `agent_address_city`, `agent_address_zip_code`, `agent_country`, `agent_commission`, `status`) VALUES
(1, 'Erick', 'Santos', 'Criative', '123456', './application/modules/agent/assets/images/064b21139c58ba68badaaa2894eccb37.png', './application/modules/agent/assets/images/5ccf0a54b6f45f3cc4862a339556737a.png', '71608981', '+59171608981', 'criativedigitalbo@gmail.com', 'Calle Perú 235\r\nApto 08', 'Calle Perú 235\r\nApto 08', 'criativedigitalbo@gmail.com', '10699', 'Bolivia', 10, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agent_ledger`
--

CREATE TABLE `agent_ledger` (
  `id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `booking_id` varchar(30) NOT NULL,
  `debit` float NOT NULL DEFAULT '0',
  `credit` float NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `commission_rate` float NOT NULL DEFAULT '0',
  `total_price` float NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bank_info`
--

CREATE TABLE `bank_info` (
  `id` int(11) NOT NULL,
  `bank_name` varchar(200) NOT NULL,
  `account_name` varchar(100) NOT NULL,
  `account_number` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `bank_info`
--

INSERT INTO `bank_info` (`id`, `bank_name`, `account_name`, `account_number`) VALUES
(1, 'Caja Chica', '00', '000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bank_transaction`
--

CREATE TABLE `bank_transaction` (
  `id` int(11) NOT NULL,
  `bank_id` varchar(50) DEFAULT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `payer_name` varchar(200) DEFAULT NULL,
  `booking_id` varchar(50) DEFAULT NULL,
  `note` varchar(250) DEFAULT NULL,
  `refund` varchar(50) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `b_account_no` varchar(50) DEFAULT NULL,
  `transaction_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `booking_downtime`
--

CREATE TABLE `booking_downtime` (
  `id` int(11) NOT NULL,
  `reg_no` varchar(50) NOT NULL,
  `downtime` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `booking_downtime`
--

INSERT INTO `booking_downtime` (`id`, `reg_no`, `downtime`) VALUES
(1, '', '3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja`
--

CREATE TABLE `caja` (
  `id` int(11) NOT NULL,
  `tipo_movimiento` varchar(456) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `monto` varchar(456) DEFAULT NULL,
  `metodo_pago` varchar(256) DEFAULT NULL,
  `concepto` varchar(456) DEFAULT NULL,
  `saldo` varchar(456) DEFAULT NULL,
  `estado` varchar(456) DEFAULT NULL,
  `cajero` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `caja`
--

INSERT INTO `caja` (`id`, `tipo_movimiento`, `fecha`, `monto`, `metodo_pago`, `concepto`, `saldo`, `estado`, `cajero`) VALUES
(73, 'Salida', '2022-06-22 14:14:37', '100', 'Efectivo', 'Apertura de caja', '100', 'Caja cerrada', 'Admin'),
(74, 'Entrada', '2022-09-24 12:55:13', '100', 'Efectivo', 'Apertura de caja', '', 'Caja abierta', 'Admin'),
(75, 'Entrada', '2022-09-24 12:55:26', '50', 'Efectivo', '123', '50', 'Caja abierta', 'Admin'),
(76, 'Salida', '2022-09-24 12:57:25', '50', NULL, 'Cierre de caja', '0', 'Caja cerrada', 'Admin'),
(77, 'Entrada', '2022-09-27 21:00:58', '100', 'Efectivo', 'Apertura de caja', '', 'Caja abierta', 'Admin'),
(78, 'Entrada', '2022-09-27 21:01:14', '200', 'Efectivo', 'teste', '200', 'Caja abierta', 'Admin'),
(79, 'Salida', '2022-09-27 21:01:49', '50', 'Efectivo', 'teste', '150', 'Caja abierta', 'Admin'),
(80, 'Salida', '2022-09-27 21:04:28', '150', NULL, 'Cierre de caja', '0', 'Caja cerrada', 'Admin'),
(82, 'Entrada', '2022-09-28 13:18:44', '100', 'Efectivo', 'Apertura de caja', '100', 'Caja abierta', 'Admin'),
(83, 'Entrada', '2022-09-28 14:09:51', '250', 'Efectivo', 'teste', '350', 'Caja abierta', 'Admin'),
(84, 'Entrada', '2022-09-28 14:10:10', '100', 'Transferencia', 'prueba', '450', 'Caja abierta', 'Admin'),
(85, 'Salida', '2022-09-28 14:10:34', '100', 'Efectivo', 'PAgo', '350', 'Caja abierta', 'Admin'),
(86, 'Salida', '2022-09-28 14:10:44', '350', NULL, 'Cierre de caja', '0', 'Caja cerrada', 'Admin'),
(87, 'Entrada', '2022-09-28 14:32:49', '100', 'Efectivo', 'Apertura de caja', '100', 'Caja abierta', 'Admin'),
(88, 'Entrada', '2022-09-28 14:33:08', '100', 'Efectivo', '01', '200', 'Caja abierta', 'Admin'),
(89, 'Entrada', '2022-09-28 14:33:25', '100', 'Efectivo', '02', '300', 'Caja abierta', 'Admin'),
(90, 'Entrada', '2022-09-28 14:33:40', '100', 'Transferencia', '03', '400', 'Caja abierta', 'Admin'),
(91, 'Entrada', '2022-09-28 14:33:57', '100', 'Cheque', '04', '500', 'Caja abierta', 'Admin'),
(92, 'Salida', '2022-09-28 14:34:14', '50', 'Efectivo', '05', '450', 'Caja abierta', 'Admin'),
(93, 'Salida', '2022-09-28 14:34:33', '50', 'Efectivo', '06', '400', 'Caja abierta', 'Admin'),
(94, 'Salida', '2022-09-28 14:34:47', '400', NULL, 'Cierre de caja', '0', 'Caja cerrada', 'Admin'),
(95, 'Entrada', '2022-09-28 14:40:37', '10', 'Efectivo', 'Apertura de caja', '10', 'Caja abierta', 'Admin'),
(97, 'Entrada', '2022-09-28 15:40:45', '15', 'Efectivo', 'Prueba 1', '25', 'Caja abierta', 'Admin'),
(98, 'Salida', '2022-09-28 15:41:09', '5', 'Efectivo', 'Prueba 2', '20', 'Caja abierta', 'Admin'),
(99, 'Entrada', '2022-09-28 15:41:32', '8', 'Transferencia', 'Prueba 3', '28', 'Caja abierta', 'Admin'),
(100, 'Salida', '2022-09-28 15:41:50', '3', 'Transferencia', 'Prueba 4', '25', 'Caja abierta', 'Admin'),
(101, 'Salida', '2022-09-28 15:42:57', '{\"efectivo\":\"10\",\"tarjeta\":\"0\",\"transferencia\":\"1\",\"cheque\":\"0\"}', NULL, 'Cierre de caja', '0', 'Caja cerrada', 'Admin'),
(102, 'Entrada', '2022-09-28 20:23:37', '100', 'Efectivo', 'Apertura de caja', '100', 'Caja abierta', 'Admin'),
(103, 'Entrada', '2022-09-28 20:23:55', '100', 'Efectivo', 'teste 01', '200', 'Caja abierta', 'Admin'),
(104, 'Entrada', '2022-09-28 20:24:20', '100', 'Efectivo', 'teste 02', '300', 'Caja abierta', 'Admin'),
(105, 'Entrada', '2022-09-28 20:24:39', '100', 'Transferencia', 'teste 03\r\n', '400', 'Caja abierta', 'Admin'),
(106, 'Entrada', '2022-09-28 20:25:03', '100', 'Cheque', 'teste 04', '500', 'Caja abierta', 'Admin'),
(107, 'Salida', '2022-09-28 20:25:32', '50', 'Efectivo', 'salida teste', '450', 'Caja abierta', 'Admin'),
(108, 'Salida', '2022-09-28 20:25:48', '50', 'Transferencia', 'teste', '400', 'Caja abierta', 'Admin'),
(109, 'Salida', '2022-09-28 20:27:06', '{\"efectivo\":\"250\",\"tarjeta\":\"0\",\"transferencia\":\"50\",\"cheque\":\"50\"}', NULL, 'Cierre de caja', '0', 'Caja cerrada', 'Admin'),
(110, 'Entrada', '2022-09-30 10:02:49', '50', 'Efectivo', 'Apertura de caja', '50', 'Caja abierta', 'Admin'),
(111, 'Entrada', '2022-09-30 16:38:31', '26', 'Efectivo', 'Envio de mercadería #6', '76', 'Caja abierta', 'Admin'),
(122, 'Entrada', '2022-10-17 16:54:27', '100', 'Efectivo', 'Venta de ticket #BYRX6HBV', '276', 'Caja abierta', ''),
(123, 'Entrada', '2022-10-17 17:17:09', '100', 'Efectivo', 'Venta de ticket #BEU5BRSO', '376', 'Caja abierta', 'Admin'),
(124, 'Entrada', '2022-10-17 17:46:32', '100', 'Efectivo', 'Venta de ticket #BDT7IUYH', '476', 'Caja abierta', 'Admin'),
(125, 'Entrada', '2022-10-19 13:15:38', '100', 'Efectivo', 'Venta de ticket #BPACOH6V', '576', 'Caja abierta', ''),
(126, 'Entrada', '2022-10-19 13:19:56', '100', 'Efectivo', 'Venta de ticket #BHYT99KR', '676', 'Caja abierta', 'Admin'),
(127, 'Entrada', '2022-10-19 13:46:56', '100', 'Efectivo', 'Venta de ticket #BRG73NA8', '776', 'Caja abierta', 'Admin'),
(128, 'Entrada', '2022-10-20 10:45:29', '100', 'Efectivo', 'Venta de ticket #BSSQCYV6', '876', 'Caja abierta', ''),
(129, 'Entrada', '2022-10-20 10:47:38', '100', 'Efectivo', 'Venta de ticket #BYXG4CDD', '976', 'Caja abierta', ''),
(130, 'Entrada', '2022-10-20 10:48:35', '100', 'Efectivo', 'Venta de ticket #BX663VI6', '1076', 'Caja abierta', ''),
(131, 'Entrada', '2022-10-27 22:33:09', '100', 'Efectivo', 'Venta de ticket #BQOG49LB', '1176', 'Caja abierta', ''),
(132, 'Entrada', '2022-11-10 18:55:57', '100', 'Efectivo', 'Venta de ticket #BZ7FSBHX', '1276', 'Caja abierta', ''),
(133, 'Entrada', '2022-11-10 18:56:17', '100', 'Efectivo', 'Venta de ticket #BZ7FSBHX', '1376', 'Caja abierta', ''),
(134, 'Entrada', '2022-11-10 18:56:22', '100', 'Efectivo', 'Venta de ticket #BZ7FSBHX', '1476', 'Caja abierta', ''),
(135, 'Entrada', '2022-11-10 18:56:33', '100', 'Efectivo', 'Venta de ticket #BZ7FSBHX', '1576', 'Caja abierta', ''),
(136, 'Entrada', '2022-11-10 18:56:45', '100', 'Efectivo', 'Venta de ticket #BZ7FSBHX', '1676', 'Caja abierta', ''),
(137, 'Entrada', '2022-11-10 18:56:45', '100', 'Efectivo', 'Venta de ticket #BZ7FSBHX', '1776', 'Caja abierta', ''),
(138, 'Entrada', '2022-11-10 18:56:45', '100', 'Efectivo', 'Venta de ticket #BZ7FSBHX', '1876', 'Caja abierta', ''),
(139, 'Entrada', '2022-11-10 18:56:45', '100', 'Efectivo', 'Venta de ticket #BZ7FSBHX', '1976', 'Caja abierta', ''),
(140, 'Entrada', '2022-11-10 18:56:46', '100', 'Efectivo', 'Venta de ticket #BZ7FSBHX', '2076', 'Caja abierta', ''),
(141, 'Entrada', '2022-11-10 18:56:46', '100', 'Efectivo', 'Venta de ticket #BZ7FSBHX', '2176', 'Caja abierta', ''),
(142, 'Entrada', '2022-11-10 18:56:46', '100', 'Efectivo', 'Venta de ticket #BZ7FSBHX', '2276', 'Caja abierta', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `logo` text,
  `nit` varchar(256) DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  `lane` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `companies`
--

INSERT INTO `companies` (`id`, `logo`, `nit`, `name`, `address`, `lane`) VALUES
(1, 'captura.png', '12345', 'Rasth', 'Calle 90 Nueva Via', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `couriers`
--

CREATE TABLE `couriers` (
  `id` int(11) NOT NULL,
  `nid` varchar(256) DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `phone` varchar(256) DEFAULT NULL,
  `date_birth` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `couriers`
--

INSERT INTO `couriers` (`id`, `nid`, `name`, `email`, `phone`, `date_birth`) VALUES
(1, '243708731', 'Javier Gonzalez1', 'jgzz93@gmail.com', '04246402701', '1993-10-01'),
(2, '10756777', 'Erick Santos ', 'dr.ericksantos@gmail.com', '71608981', '2022-09-23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email_config`
--

CREATE TABLE `email_config` (
  `id` int(11) NOT NULL,
  `protocol` text NOT NULL,
  `smtp_host` text NOT NULL,
  `smtp_port` text NOT NULL,
  `smtp_user` varchar(35) NOT NULL,
  `smtp_pass` varchar(35) NOT NULL,
  `mailtype` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `email_config`
--

INSERT INTO `email_config` (`id`, `protocol`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_pass`, `mailtype`) VALUES
(1, 'smtp', 'mail.google.com', '465', 'hmisahaq01@gmail.com', 'hmisahaq01730164623', 'html');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employee_history`
--

CREATE TABLE `employee_history` (
  `id` int(11) NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `second_name` varchar(30) DEFAULT NULL,
  `position` varchar(30) DEFAULT NULL,
  `phone_no` varchar(30) DEFAULT NULL,
  `email_no` varchar(30) DEFAULT NULL,
  `document_id` varchar(30) DEFAULT NULL,
  `document_pic` varchar(255) DEFAULT NULL,
  `address_line_1` varchar(150) DEFAULT NULL,
  `address_line_2` varchar(150) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `blood_group` varchar(6) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `status` varchar(6) DEFAULT NULL,
  `is_assign` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `employee_history`
--

INSERT INTO `employee_history` (`id`, `first_name`, `second_name`, `position`, `phone_no`, `email_no`, `document_id`, `document_pic`, `address_line_1`, `address_line_2`, `picture`, `blood_group`, `country`, `city`, `zip`, `status`, `is_assign`) VALUES
(1, 'Motorista', '01', 'Driver', '000 00000', 'motorista@motorista.com', '123456', './application/modules/hr/assets/images/04b40a89a63527e901a20fad1a43709c.png', 'Calle Perú 235', 'Apto 08', './application/modules/hr/assets/images/741efc8a035bf00fe2eb7b1587d9d275.png', 'a-', 'Bolivia', 'Santa Cruz de la Sierra', '10699', NULL, 1),
(2, 'Assistente', '01', 'Assistant', '+59171608981', 'assistente@assistente.com', '01040502', NULL, 'Calle Perú 235', 'Apto 08', NULL, 'A+', 'Bolivia', 'Santa Cruz de la Sierra', '10699', NULL, 0),
(3, 'Motorista', '02', 'Driver', '6984217777', 'motorista02@motorista.com', '010203', NULL, 'calle Florida', 'Centro', NULL, 'ab+', 'Bolivia', 'Vilhena ro', '76980-000', NULL, 0),
(4, 'Motorista 03', '03', 'Driver', '71608981', 'criativedigitalbo@gmail.com', '', NULL, 'Bush', 'Calle', NULL, '', 'Bolivia', 'Santa Cruz de la Sierra', '10699', NULL, 0),
(5, 'Asistente 02', '02', 'Assistant', '75602777', 'criativedigitalbo@gmail.com', '', NULL, 'Calle Perú 235', 'Apto 08', NULL, '', 'Bolivia', 'santa cruz', '10699', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employee_type`
--

CREATE TABLE `employee_type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(30) DEFAULT NULL,
  `details` varchar(100) DEFAULT NULL,
  `status` varchar(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `employee_type`
--

INSERT INTO `employee_type` (`type_id`, `type_name`, `details`, `status`) VALUES
(1, 'Driver', 'Expert in Driving', NULL),
(8, 'Office Staff', 'regular staff', NULL),
(6, 'Assistant', '', NULL),
(9, 'Hostess', 'Bus Hostess for assistance', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enquiry`
--

CREATE TABLE `enquiry` (
  `enquiry_id` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `enquiry` text,
  `checked` tinyint(1) DEFAULT NULL,
  `ip_address` varchar(20) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `checked_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fit_fitness`
--

CREATE TABLE `fit_fitness` (
  `fitness_id` int(11) NOT NULL,
  `fitness_name` varchar(50) DEFAULT NULL,
  `fitness_description` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fleet_facilities`
--

CREATE TABLE `fleet_facilities` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `fleet_facilities`
--

INSERT INTO `fleet_facilities` (`id`, `name`, `description`, `status`) VALUES
(1, 'CBBA', 'Cochabamba', 1),
(2, 'La Paz', 'La Paz', 1),
(3, 'Santa Cruz', 'Santa Cruz', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fleet_registration`
--

CREATE TABLE `fleet_registration` (
  `id` int(11) UNSIGNED NOT NULL,
  `reg_no` varchar(255) DEFAULT NULL,
  `fleet_type_id` int(11) DEFAULT NULL,
  `engine_no` varchar(255) DEFAULT NULL,
  `model_no` varchar(255) DEFAULT NULL,
  `chasis_no` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `owner_phone` varchar(30) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `ac_available` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_assign` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `fleet_registration`
--

INSERT INTO `fleet_registration` (`id`, `reg_no`, `fleet_type_id`, `engine_no`, `model_no`, `chasis_no`, `owner`, `owner_phone`, `company`, `ac_available`, `status`, `is_assign`) VALUES
(1, '5200', 1, '010203', '2021', '010203040506', 'Bolpar', '71608981', 'En Bus', 0, 1, 0),
(2, '1100', 1, '010203', '000000000', '1111111111111111111', 'Teste', '71608981', 'TEste', 0, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fleet_type`
--

CREATE TABLE `fleet_type` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `layout` varchar(50) NOT NULL,
  `lastseat` varchar(30) NOT NULL,
  `total_seat` int(11) NOT NULL,
  `seat_numbers` varchar(255) NOT NULL,
  `fleet_facilities` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `fleet_type`
--

INSERT INTO `fleet_type` (`id`, `type`, `layout`, `lastseat`, `total_seat`, `seat_numbers`, `fleet_facilities`, `status`) VALUES
(1, 'Leito ', '2-1', '0', 43, '1 , 2 , 3 , 4 , 5 , 6 , 7 , 8 , , 9 , 10 , 11 , 12 , 13 , 14 , 15 , 16 , 17 , 18 , 19 , 20 , 21 , 22 , 23 , 24 , 25 , 26 , 27 , 28 , 29 , 30 , 31 , 32 , 33 , 34 , 35 , 36 , 37 , 38 , 39 , 40 , 41 , 42 , 43 , \" , ! , # , % , ¨. & , * , . ,', 'CBBA,La Paz,Santa Cruz', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ftn_fitness_period`
--

CREATE TABLE `ftn_fitness_period` (
  `id` int(11) NOT NULL,
  `fitness_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_milage` float DEFAULT NULL,
  `end_milage` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `how_to_use`
--

CREATE TABLE `how_to_use` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `how_to_use`
--

INSERT INTO `how_to_use` (`id`, `description`) VALUES
(1, '<p>There is&nbsp; no information UUUU<img src=\"../../assets/tinymce/plugins/emoticons/img/smiley-cool.gif\" alt=\"cool\" /></p>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `phrase` varchar(100) NOT NULL,
  `english` varchar(255) NOT NULL,
  `portuguese` text,
  `spanish` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `language`
--

INSERT INTO `language` (`id`, `phrase`, `english`, `portuguese`, `spanish`) VALUES
(1, 'login', 'Login', 'Conecte-se', 'Acceso'),
(2, 'email', 'Email', 'E-mail', 'Correo electrónico'),
(3, 'password', 'Password', 'Senha', 'Contraseña'),
(4, 'reset', 'Reset', 'Redefinir', 'Reiniciar'),
(5, 'dashboard', 'Dashboard', 'Painel', 'Tablero'),
(6, 'home', 'HOME', 'Inicio', 'Inicio'),
(7, 'profile', 'Profile', 'Perfil', 'Perfil'),
(8, 'profile_setting', 'Profile Setting', 'Configuração de perfil', 'Ajustes de perfil'),
(9, 'firstname', 'First Name', 'Primeiro nome', 'Primer nombre'),
(10, 'lastname', 'Last Name', 'Sobrenome', 'Apellido'),
(11, 'about', 'About', 'Sobre', 'Sobre'),
(12, 'preview', 'Preview', 'Visualizar', 'Avance'),
(13, 'image', 'Image', 'Imagem', 'Imagen'),
(14, 'save', 'Save', 'Salvar', 'Ahorrar'),
(15, 'upload_successfully', 'Upload Successfully!', 'Carregar com sucesso!', '¡Cargar con éxito!'),
(16, 'user_added_successfully', 'User Added Successfully!', 'Usuário adicionado com sucesso!', '¡Usuario agregado con éxito!'),
(17, 'please_try_again', 'Please Try Again...', 'Por favor, tente novamente...', 'Inténtalo de nuevo...'),
(18, 'inbox_message', 'Inbox Messages', 'Mensagens da caixa de entrada', 'Mensajes de la bandeja de entrada'),
(19, 'sent_message', 'Sent Message', 'Mensagem enviada', 'Mensaje enviado'),
(20, 'message_details', 'Message Details', 'detalhes da mensagem', 'Detalles del mensaje'),
(21, 'new_message', 'New Message', 'Nova mensagem', 'Nuevo mensaje'),
(22, 'receiver_name', 'Receiver Name', 'Nome do recebedor', 'Nombre del destinatario'),
(23, 'sender_name', 'Sender Name', 'Nome do remetente', 'Nombre del remitente'),
(24, 'subject', 'Subject', 'Sujeito', 'Tema'),
(25, 'message', 'Message', 'Mensagem', 'Mensaje'),
(26, 'message_sent', 'Message Sent!', 'Mensagem enviada!', '¡Mensaje enviado!'),
(27, 'ip_address', 'IP Address', 'Endereço de IP', 'Dirección IP'),
(28, 'last_login', 'Last Login', 'Último Login', 'Último acceso'),
(29, 'last_logout', 'Last Logout', 'Último logout', 'Último cierre de sesión'),
(30, 'status', 'Status', 'Status', 'Estado'),
(31, 'delete_successfully', 'Delete Successfully!', 'Excluir com sucesso!', '¡Eliminar con éxito!'),
(32, 'send', 'Send', 'Mandar', 'Enviar'),
(33, 'date', 'Date', 'Encontro', 'Fecha'),
(34, 'action', 'Action', 'Ação', 'Acción'),
(35, 'sl_no', 'SL No.', 'Sim. Não.', 'Si. No.'),
(36, 'are_you_sure', 'Are You Sure ? ', 'Tem certeza ?', 'Está seguro ?'),
(37, 'application_setting', 'Application Setting', 'Configuração do aplicativo', 'Configuración de la aplicación'),
(38, 'application_title', 'Application Title', 'Título da Candidatura', 'Titulo de la aplicación'),
(39, 'address', 'Address', 'Endereço', 'Dirección'),
(40, 'phone', 'Phone', 'Telefone', 'Teléfono'),
(41, 'favicon', 'Favicon', 'Favicon', 'icono de favoritos'),
(42, 'logo', 'Logo', 'Logotipo', 'Logo'),
(43, 'language', 'Language', 'Linguagem', 'Idioma'),
(44, 'left_to_right', 'Left To Right', 'Da esquerda para direita', 'De izquierda a derecha'),
(45, 'right_to_left', 'Right To Left', 'Direita para esquerda', 'De derecha a izquierda'),
(46, 'footer_text', 'Footer Text', 'Texto de rodapé', 'Texto de pie de página'),
(47, 'site_align', 'Application Alignment', 'Alinhamento de aplicativos', 'Alineación de aplicaciones'),
(48, 'welcome_back', 'Welcome Back!', 'Bem vindo de volta!', '¡Bienvenido de nuevo!'),
(49, 'please_contact_with_admin', 'Please Contact With Admin', 'Entre em contato com o administrador', 'Póngase en contacto con el administrador'),
(50, 'incorrect_email_or_password', 'Incorrect Email/Password', 'E-mail/senha incorretos', 'Correo electrónico/contraseña incorrectos'),
(51, 'select_option', 'Select Option', 'Selecionar opção', 'Seleccionar opción'),
(52, 'ftp_setting', 'Data Synchronize [FTP Setting]', 'Sincronização de dados [Configuração FTP]', 'Sincronización de datos [Configuración de FTP]'),
(53, 'hostname', 'Host Name', 'Nome de anfitrião', 'Nombre de host'),
(54, 'username', 'User Name', 'Nome de usuário', 'Nombre de usuario'),
(55, 'ftp_port', 'FTP Port', 'Porta FTP', 'Puerto FTP'),
(56, 'ftp_debug', 'FTP Debug', 'Depuração FTP', 'Depuración FTP'),
(57, 'project_root', 'Project Root', 'Raiz do Projeto', 'Raíz del proyecto'),
(58, 'update_successfully', 'Update Successfully', 'Atualizar com sucesso', 'Actualizar correctamente'),
(59, 'save_successfully', 'Save Successfully!', 'Salvo com sucesso!', 'Guardar con éxito!'),
(60, 'internet_connection', 'Internet Connection', 'Conexão de internet', 'Conexión a Internet'),
(61, 'ok', 'Ok', 'OK', 'OK'),
(62, 'not_available', 'Not Available', 'Não disponível', 'No disponible'),
(63, 'available', 'Available', 'Disponível', 'Disponible'),
(64, 'outgoing_file', 'Outgoing File', 'Arquivo de saída', 'Archivo saliente'),
(65, 'incoming_file', 'Incoming File', 'Arquivo de entrada', 'Archivo entrante'),
(66, 'data_synchronize', 'Data Synchronize', 'Sincronizar dados', 'Sincronizar datos'),
(67, 'unable_to_upload_file_please_check_configuration', 'Unable to upload file! please check configuration', 'Não foi possível fazer o upload do arquivo! por favor verifique a configuração', '¡Incapaz de cargar el archivo! por favor revise la configuración'),
(68, 'please_configure_synchronizer_settings', 'Please configure synchronizer settings', 'Por favor, defina as configurações do sincronizador', 'Configure los ajustes del sincronizador'),
(69, 'download_successfully', 'Download Successfully', 'Baixar com sucesso', 'Descargar con éxito'),
(70, 'unable_to_download_file_please_check_configuration', 'Unable to download file! please check configuration', 'Não foi possível baixar o arquivo! por favor verifique a configuração', '¡No se puede descargar el archivo! por favor revise la configuración'),
(71, 'data_import_first', 'Data Import First', 'Importar dados primeiro', 'Importación de datos primero'),
(72, 'data_import_successfully', 'Data Import Successfully!', 'Importação de dados com sucesso!', '¡Importación de datos exitosa!'),
(73, 'unable_to_import_data_please_check_config_or_sql_file', 'Unable to import data! please check configuration / SQL file.', 'Não foi possível importar dados! verifique a configuração/arquivo SQL.', '¡No se pueden importar datos! por favor verifique la configuración/archivo SQL.'),
(74, 'download_data_from_server', 'Download Data from Server', 'Baixar dados do servidor', 'Descargar datos del servidor'),
(75, 'data_import_to_database', 'Data Import To Database', 'Importação de dados para banco de dados', 'Importación de datos a la base de datos'),
(76, 'data_upload_to_server', 'Data Upload to Server', 'Upload de dados para o servidor', 'Carga de datos al servidor'),
(77, 'please_wait', 'Please Wait...', 'Por favor, aguarde...', 'Espere por favor...'),
(78, 'ooops_something_went_wrong', ' Ooops something went wrong...', ' Opa, algo deu errado...', ' Vaya, algo salió mal...'),
(79, 'module_permission_list', 'Module Permission List', 'Lista de Permissões do Módulo', 'Lista de permisos del módulo'),
(80, 'user_permission', 'User Permission', 'Permissão do usuário', 'Permiso de usuario'),
(81, 'add_module_permission', 'Add Module Permission', 'Adicionar permissão de módulo', 'Añadir permiso de módulo'),
(82, 'module_permission_added_successfully', 'Module Permission Added Successfully!', 'Permissão do módulo adicionada com sucesso!', '¡Permiso de módulo agregado con éxito!'),
(83, 'update_module_permission', 'Update Module Permission', 'Atualizar permissão do módulo', 'Actualizar permiso del módulo'),
(84, 'download', 'Download', 'Download', 'Descargar'),
(85, 'module_name', 'Module Name', 'nome do módulo', 'Nombre del módulo'),
(86, 'create', 'Create', 'Crio', 'Crear'),
(87, 'read', 'Read', 'Ler', 'Leer'),
(88, 'update', 'Update', 'Atualizar', 'Actualizar'),
(89, 'delete', 'Delete', 'Excluir', 'Borrar'),
(90, 'module_list', 'Module List', 'Lista de Módulos', 'Lista de módulos'),
(91, 'add_module', 'Add Module', 'Adicionar módulo', 'Agregar módulo'),
(92, 'directory', 'Module Direcotory', 'Diretório do Módulo', 'Directorio de módulos'),
(93, 'description', 'Description', 'Descrição', 'Descripción'),
(94, 'image_upload_successfully', 'Image Upload Successfully!', 'Carregamento de imagem com sucesso!', 'Carga de imagen con éxito!'),
(95, 'module_added_successfully', 'Module Added Successfully', 'Módulo adicionado com sucesso', 'Módulo agregado con éxito'),
(96, 'inactive', 'Inactive', 'Inativo', 'Inactivo'),
(97, 'active', 'Active', 'Ativo', 'Activo'),
(98, 'user_list', 'User List', 'Lista de usuários', 'Lista de usuarios'),
(99, 'see_all_message', 'See All Messages', 'Ver todas as mensagens', 'Ver todos los mensajes'),
(100, 'setting', 'Setting', 'Contexto', 'Ajuste'),
(101, 'logout', 'LOGOUT', 'SAIR', 'CERRAR SESIÓN'),
(102, 'admin', 'Admin', 'Administrador', 'Administración'),
(103, 'add_user', 'Add User', 'Adicionar usuário', 'Agregar usuario'),
(104, 'user', 'User', 'Do utilizador', 'Usuario'),
(105, 'module', 'Module', 'Módulo', 'Módulo'),
(106, 'new', 'New', 'Novo', 'Nuevo'),
(107, 'inbox', 'Inbox', 'Caixa de entrada', 'Bandeja de entrada'),
(108, 'sent', 'Sent', 'Enviado', 'Enviado'),
(109, 'synchronize', 'Synchronize', 'Sincronizar', 'Sincronizar'),
(110, 'data_synchronizer', 'Data Synchronizer', 'Sincronizador de dados', 'Sincronizador de datos'),
(111, 'module_permission', 'Module Permission', 'Permissão do módulo', 'Permiso de módulo'),
(112, 'backup_now', 'Backup Now!', 'Faça backup agora!', '¡Copia ahora!'),
(113, 'restore_now', 'Restore Now!', 'Restaurar agora!', '¡Restaura ahora!'),
(114, 'backup_and_restore', 'Data Backup', 'Backup de dados', 'Copias de seguridad'),
(115, 'captcha', 'Captcha Word', 'Palavra Captcha', 'Palabra captcha'),
(116, 'database_backup', 'Database Backup', 'Backup de banco de dados', 'Copia de seguridad de la base de datos'),
(117, 'restore_successfully', 'Restore Successfully', 'Restaurar com sucesso', 'Restaurar con éxito'),
(118, 'backup_successfully', 'Backup Successfully', 'Backup com sucesso', 'Copia de seguridad con éxito'),
(119, 'filename', 'File Name', 'Nome do arquivo', 'Nombre del archivo'),
(120, 'file_information', 'File Information', 'Informações do arquivo', 'Informacion del archivo'),
(121, 'size', 'Size', 'Tamanho', 'Tamaño'),
(122, 'backup_date', 'Backup Date', 'Data de Backup', 'Fecha de copia de seguridad'),
(123, 'overwrite', 'Overwrite', 'Substituir', 'Sobrescribir'),
(124, 'invalid_file', 'Invalid File!', 'Arquivo inválido!', '¡Archivo inválido!'),
(125, 'invalid_module', 'Invalid Module', 'Módulo inválido', 'Módulo no válido'),
(126, 'remove_successfully', 'Remove Successfully!', 'Remover com sucesso!', 'Eliminar con éxito!'),
(127, 'install', 'Install', 'Instalar', 'Instalar'),
(128, 'uninstall', 'Uninstall', 'Desinstalar', 'Desinstalar'),
(129, 'tables_are_not_available_in_database', 'Tables are not available in database.sql', 'As tabelas não estão disponíveis em database.sql', 'Las tablas no están disponibles en base de datos.sql'),
(130, 'no_tables_are_registered_in_config', 'No tables are registerd in config.php', 'Nenhuma tabela está registrada em config.php', 'No hay tablas registradas en config.php'),
(131, 'enquiry', 'Enquiry', 'Investigação', 'Consulta'),
(132, 'read_unread', 'Read/Unread', 'Lido/Não lido', 'Leído/No leído'),
(133, 'enquiry_information', 'Enquiry Information', 'Informações de consulta', 'Información de consulta'),
(134, 'user_agent', 'User Agent', 'Agente de usuário', 'Agente de usuario'),
(135, 'checked_by', 'Checked By', 'Verificado por', 'Revisado por'),
(136, 'new_enquiry', 'New Enquiry', 'Nova consulta', 'Nueva consulta'),
(137, 'fleet', 'Fleet Management', 'Gestão de Frotas', 'Gestión de flotas'),
(138, 'fleet_type', 'Fleet Type', 'Tipo de Frota', 'Tipo de flota'),
(139, 'add', 'Add', 'Adicionar', 'Agregar'),
(140, 'list', 'List', 'Lista', 'Lista'),
(141, 'fleet_facilities', 'Fleet Facilities', 'Instalações da frota', 'Instalaciones de flota'),
(142, 'fleet_registration', 'Vehicles', 'Veículos', 'vehículos'),
(143, 'reg_no', 'Registration No.', 'Número de registro.', 'Número de registro.'),
(144, 'model_no', 'Model No.', 'Nº do modelo', 'N º de Modelo.'),
(145, 'engine_no', 'Engine No.', 'Nº do motor', 'Sin motor.'),
(146, 'chasis_no', 'Chasis No.', 'Nº do chassi', 'Chasis No.'),
(147, 'total_seat', 'Total Seat', 'Lugar total', 'Asiento total'),
(148, 'seat_numbers', 'Seat Number', 'Número do assento', 'Número de asiento'),
(149, 'owner', 'Owner', 'Proprietário', 'Dueño'),
(150, 'company', 'Company Name', 'nome da empresa', 'nombre de empresa'),
(151, 'trip', 'Trip Management', 'Gerenciamento de viagens', 'Gestión de viajes'),
(152, 'location', 'Destination', 'Destino', 'Destino'),
(153, 'route', 'Route', 'Rota', 'Ruta'),
(154, 'assign', 'Assign', 'Atribuir', 'Asignar'),
(155, 'close', 'Close Trip', 'Fechar viagem', 'Cerrar viaje'),
(156, 'location_name', 'Destination Name', 'Nome do destino', 'Nombre del destino'),
(157, 'google_map', 'Google Map', 'Mapa do Google', 'Mapa de Google'),
(158, 'start_point', 'Start Point', 'Ponto de partida', 'Punto de partida'),
(159, 'end_point', 'End Point', 'Ponto final', 'punto final'),
(160, 'route_name', 'Route Name', 'Nome da rota', 'Nombre de ruta'),
(161, 'distance', 'Distance', 'Distância', 'Distancia'),
(162, 'approximate_time', 'Approximate Time', 'Tempo aproximado', 'Tiempo aproximado'),
(163, 'stoppage_points', 'Stoppage Points', 'Pontos de Parada', 'Puntos de Paro'),
(164, 'fleet_registration_no', 'Fleet Registration No.', 'Nº de registro da frota', 'Registro de flota No.'),
(165, 'start_date', 'Start Date', 'Data de início', 'Fecha de inicio'),
(166, 'end_date', 'End Date', 'Data final', 'Fecha final'),
(167, 'driver_name', 'Driver Name', 'Nome do motorista', 'Nombre del conductor'),
(168, 'assistants_ids', 'Assistants', 'Assistentes', 'asistentes'),
(169, 'sold_ticket', 'Sold Ticket', 'Bilhete Vendido', 'Boleto vendido'),
(170, 'total_income', 'Total Income', 'Renda total', 'Ingresos totales'),
(171, 'total_expense', 'Total Expense', 'Custo total', 'Gasto total'),
(172, 'total_fuel', 'Total Fuel', 'Combustível Total', 'Combustible total'),
(173, 'trip_comment', 'Trip Comment', 'Comentário de viagem', 'Comentario de viaje'),
(174, 'closed_by', 'Closed by', 'Fechado por', 'Cerrado por'),
(175, 'ticket', 'Ticket Management', 'Gerenciamento de tickets', 'Gestión de entradas'),
(176, 'passenger', 'Passenger', 'Passageiro', 'Pasajero'),
(177, 'middle_name', 'Middle Name', 'Nome do meio', 'Segundo nombre'),
(178, 'date_of_birth', 'Date of Birth', 'Data de nascimento', 'Fecha de nacimiento'),
(179, 'passenger_id', 'Passenger ID.', 'Identificação do passageiro.', 'Identificación del pasajero.'),
(180, 'address_line_1', 'Address Line 1', 'Endereço Linha 1', 'Dirección Línea 1'),
(181, 'address_line_2', 'Address Line 2', 'endereço linha 2', 'Línea de dirección 2'),
(182, 'zip_code', 'Zip Code', 'Código postal', 'Código postal'),
(183, 'name', 'Name', 'Nome', 'Nombre'),
(184, 'ac_available', 'AC available', 'AC disponível', 'CA disponible'),
(185, 'trip_id', 'Trip ID.', 'ID da viagem.', 'Identificación de viaje.'),
(186, 'book', 'Book', 'Livro', 'Libro'),
(187, 'booking_id', 'Booking ID.', 'Identificação da reserva.', 'Identificación de la reserva.'),
(188, 'available_seats', 'Available Seats', 'Assentos disponíveis', 'Asientos disponibles'),
(189, 'select_seats', 'Select Seats', 'Selecionar assentos', 'Seleccionar asientos'),
(190, 'time', 'Time', 'Tempo', 'Tiempo'),
(191, 'offer_code', 'Offer Code', 'Código de oferta', 'Ofrece código'),
(192, 'price', 'Price', 'Preço', 'Precio'),
(193, 'discount', 'Discount', 'Desconto', 'Descuento'),
(194, 'request_facilities', 'Request Facilities', 'Solicitar instalações', 'Solicitar Instalaciones'),
(195, 'pickup_location', 'Pickup Location', 'Local de Recolha', 'Lugar de recogida'),
(196, 'drop_location', 'Drop Location', 'Local de soltar', 'Ubicación de entrega'),
(197, 'amount', 'Amount', 'Quantia', 'Monto'),
(198, 'invalid_passenger_id', 'Invalid Passenger ID', 'ID de passageiro inválido', 'Identificación de pasajero no válida'),
(199, 'invalid_input', 'Invalid Input', 'entrada inválida', 'entrada inválida'),
(200, 'booking_date', 'Booking Date', 'Data da reserva', 'Fecha para registrarse'),
(201, 'cancelation_fees', 'Cancelation Fees', 'Taxas de cancelamento', 'Tarifas de cancelación'),
(202, 'causes', 'Causes', 'Causas', 'Causas'),
(203, 'comment', 'Comment', 'Comente', 'Comentario'),
(204, 'refund', 'Refund', 'Reembolso', 'Reembolso'),
(205, 'refund_by', 'Refund by', 'Reembolso por', 'Reembolso por'),
(206, 'feedback', 'Feedback', 'Comentários', 'Retroalimentación'),
(207, 'rating', 'Rating', 'Avaliação', 'Clasificación'),
(208, 'blood_group', 'Blood Group', 'Grupo sanguíneo', 'Grupo sanguíneo'),
(209, 'religion', 'Religion', 'Religião', 'Religión'),
(210, 'details', 'Details', 'Detalhes', 'Detalles'),
(211, 'type_name', 'Type Name', 'Digite o nome', 'Escribe un nombre'),
(212, 'view_details', 'View Details', 'Ver detalhes', 'Ver detalles'),
(213, 'document_pic', 'Document Picture', 'Imagem do documento', 'Imagen del documento'),
(214, 'fitness_list', 'Fitness List', 'Lista de condicionamento físico', 'Lista de ejercicios'),
(215, 'fitness_name', 'Fitness Name', 'Nome do Fitness', 'Nombre de condición física'),
(216, 'fitness_description', 'Description', 'Descrição', 'Descripción'),
(217, 'successfully_updated', 'Your Data Successfully Updated', 'Seus dados atualizados com sucesso', 'Tus datos actualizados con éxito'),
(218, 'fitness_period', 'Fitness Period List', 'Lista de períodos de condicionamento físico', 'Lista de periodos de fitness'),
(219, 'fitness_id', 'Fitness Name', 'Nome do Fitness', 'Nombre de condición física'),
(220, 'vehicle_id', 'Vehicles No', 'Veículos Não', 'Número de vehículos'),
(221, 'start_milage', 'Start Milage', 'Iniciar milhagem', 'Kilometraje inicial'),
(222, 'end_milage', 'End Milage', 'Fim da milhagem', 'Kilometraje final'),
(223, 'agent', 'Agent', 'Agente', 'Agente'),
(224, 'agent_first_name', 'First Name', 'Primeiro nome', 'Primer nombre'),
(225, 'agent_second_name', 'LastName', 'Sobrenome', 'Apellido'),
(226, 'agent_company_name', 'Company Name', 'nome da empresa', 'nombre de empresa'),
(227, 'agent_document_id', 'Document ID', 'ID do documento', 'Identificación del documento'),
(228, 'agent_pic_document', 'Document File', 'Arquivo de documento', 'archivo de documento'),
(229, 'agent_phone', 'Phone', 'Telefone', 'Teléfono'),
(230, 'agent_mobile', 'Mobile No', 'Número do celular', 'No móviles'),
(231, 'agent_email', 'Email', 'E-mail', 'Correo electrónico'),
(232, 'agent_address_line_1', 'Address Line 1', 'Endereço Linha 1', 'Dirección Línea 1'),
(233, 'agent_address_line_2', 'Address Line 2', 'endereço linha 2', 'Línea de dirección 2'),
(234, 'agent_address_city', 'City', 'Cidade', 'Ciudad'),
(235, 'agent_address_zip_code', 'ZIP', 'fecho eclair', 'CÓDIGO POSTAL'),
(236, 'agent_country', 'Country', 'País', 'País'),
(237, 'sl', 'SL', 'SL', 'SL'),
(238, 'route_id', 'Route Name', 'Nome da rota', 'Nombre de ruta'),
(239, 'vehicle_type_id', 'Vehicle Type', 'Tipo de Veículo', 'tipo de vehiculo'),
(240, 'group_price_per_person', 'Group Price Per Person', 'Preço de grupo por pessoa', 'Precio de grupo por persona'),
(241, 'group_size', 'Group Members', 'Membros do grupo', 'Miembros del grupo'),
(242, 'successfully_saved', 'Your Data Successfully Saved', 'Seus dados salvos com sucesso', 'Tus datos guardados con éxito'),
(243, 'account', 'Account', 'Conta', 'Cuenta'),
(244, 'account_name', 'Account Name', 'Nome da conta', 'Nombre de la cuenta'),
(245, 'account_type', 'Account Type', 'tipo de conta', 'Tipo de cuenta'),
(246, 'account_transaction', 'Account Transaction', 'Transação da conta', 'Transacción de cuenta'),
(247, 'account_id', 'Account Name', 'Nome da conta', 'Nombre de la cuenta'),
(248, 'transaction_description', 'Transaction Details', 'Detalhes da transação', 'Detalles de la transacción'),
(249, 'pass_book_id', 'Passenger ID', 'ID do passageiro', 'Identificación del pasajero'),
(250, 'payment_id', 'Payment ID', 'Código de pagamento', 'ID de pago'),
(251, 'create_by_id', 'Created By', 'Criado por', 'Creado por'),
(252, 'offer', 'Offer', 'Oferta', 'Oferta'),
(253, 'offer_name', 'Offer Name', 'Nome da oferta', 'Nombre de la oferta'),
(254, 'offer_start_date', 'Offer Start Date', 'Data de início da oferta', 'Fecha de inicio de la oferta'),
(255, 'offer_end_date', 'Offer Last Date', 'Última data da oferta', 'Última fecha de la oferta'),
(256, 'offer_discount', 'Discount', 'Desconto', 'Descuento'),
(257, 'offer_terms', 'Offer Terms', 'Termos da oferta', 'Condiciones de la oferta'),
(258, 'offer_route_id', 'Route Name', 'Nome da rota', 'Nombre de ruta'),
(259, 'offer_number', 'Offer Number', 'Número da oferta', 'Número de oferta'),
(260, 'seat_number', 'Seat No', 'Nº do assento', 'Número de asiento'),
(261, 'available_seat', 'Available Seat', 'Assento disponível', 'Asiento disponible'),
(262, 'owner_name', 'Owner Name', 'Nome do proprietário', 'Nombre del dueño'),
(263, 'agent_picture', 'Picture', 'Foto', 'Imagen'),
(264, 'account_add', 'Add Account', 'Adicionar Conta', 'Añadir cuenta'),
(265, 'add_agent', 'Add Agent', 'Adicionar agente', 'Agregar agente'),
(266, 'hr', 'Human Resource', 'Recursos humanos', 'Recursos humanos'),
(267, 'create_hr', 'Add Employee', 'Adicionar funcionário', 'Agregar empleado'),
(268, 'serial', 'Sl', 'Sl', 'SL'),
(269, 'position', 'Position', 'Posição', 'Posición'),
(270, 'phone_no', 'Phone No', 'Telefone não', 'Telefono no'),
(271, 'email_no', 'Email', 'E-mail', 'Correo electrónico'),
(272, 'picture', 'Picture', 'Foto', 'Imagen'),
(273, 'first_name', 'First Name', 'Primeiro nome', 'Primer nombre'),
(274, 'second_name', 'Last Name', 'Sobrenome', 'Apellido'),
(275, 'document_id', 'Documet Id', 'ID do documento', 'ID del documento'),
(276, 'country', 'Country', 'País', 'País'),
(277, 'city', 'City', 'Cidade', 'Ciudad'),
(278, 'zip', 'Zip ', 'Fecho eclair', 'Cremallera'),
(279, 'add_passenger', 'Add Passenger', 'Adicionar passageiro', 'Agregar Pasajero'),
(280, 'search_tiket', 'Search Ticket', 'Pesquisar ticket', 'Buscar boleto'),
(281, 'slogan', 'Slogan', 'Slogan', 'Eslogan'),
(282, 'website', 'Website', 'Local na rede Internet', 'Sitio web'),
(283, 'submit', 'Submit', 'Enviar', 'Enviar'),
(284, 'customer_service', 'Customer Service', 'Atendimento ao Cliente', 'Servicio al Cliente'),
(285, 'submit_successfully', 'Submit Successfully!', 'Enviar com sucesso!', '¡Envíe con éxito!'),
(286, 'add_to_website', 'Add to Website', 'Adicionar ao site', 'Agregar al sitio web'),
(287, 'our_customers_say', 'Our Customers Say', 'Nossos clientes dizem', 'Nuestros Clientes Dicen'),
(288, 'website_status', 'Website Status', 'Status do site', 'Estado del sitio web'),
(289, 'title', 'Title', 'Título', 'Título'),
(290, 'total_fleet', 'Total Fleet', 'Frota Total', 'Flota total'),
(291, 'total_passenger', 'Total Passenger', 'Total de Passageiros', 'Pasajero total'),
(292, 'travel_sub_slogan', 'It is not down in any map; true place naver are.', 'Não está em nenhum mapa; verdadeiro lugar naver são.', 'No está abajo en ningún mapa; verdadero lugar naver son.'),
(293, 'login', 'Login', 'Conecte-se', 'Acceso'),
(294, 'email', 'Email', 'E-mail', 'Correo electrónico'),
(295, 'password', 'Password', 'Senha', 'Contraseña'),
(296, 'reset', 'Reset', 'Redefinir', 'Reiniciar'),
(297, 'dashboard', 'Dashboard', 'Painel', 'Tablero'),
(298, 'home', 'HOME', 'Inicio', 'Inicio'),
(299, 'profile', 'Profile', 'Perfil', 'Perfil'),
(300, 'profile_setting', 'Profile Setting', 'Configuração de perfil', 'Ajustes de perfil'),
(301, 'firstname', 'First Name', 'Primeiro nome', 'Primer nombre'),
(302, 'lastname', 'Last Name', 'Sobrenome', 'Apellido'),
(303, 'about', 'About', 'Sobre', 'Sobre'),
(304, 'preview', 'Preview', 'Visualizar', 'Avance'),
(305, 'image', 'Image', 'Imagem', 'Imagen'),
(306, 'save', 'Save', 'Salvar', 'Ahorrar'),
(307, 'upload_successfully', 'Upload Successfully!', 'Carregar com sucesso!', '¡Cargar con éxito!'),
(308, 'user_added_successfully', 'User Added Successfully!', 'Usuário adicionado com sucesso!', '¡Usuario agregado con éxito!'),
(309, 'please_try_again', 'Please Try Again...', 'Por favor, tente novamente...', 'Inténtalo de nuevo...'),
(310, 'inbox_message', 'Inbox Messages', 'Mensagens da caixa de entrada', 'Mensajes de la bandeja de entrada'),
(311, 'sent_message', 'Sent Message', 'Mensagem enviada', 'Mensaje enviado'),
(312, 'message_details', 'Message Details', 'detalhes da mensagem', 'Detalles del mensaje'),
(313, 'new_message', 'New Message', 'Nova mensagem', 'Nuevo mensaje'),
(314, 'receiver_name', 'Receiver Name', 'Nome do recebedor', 'Nombre del destinatario'),
(315, 'sender_name', 'Sender Name', 'Nome do remetente', 'Nombre del remitente'),
(316, 'subject', 'Subject', 'Sujeito', 'Tema'),
(317, 'message', 'Message', 'Mensagem', 'Mensaje'),
(318, 'message_sent', 'Message Sent!', 'Mensagem enviada!', '¡Mensaje enviado!'),
(319, 'ip_address', 'IP Address', 'Endereço de IP', 'Dirección IP'),
(320, 'last_login', 'Last Login', 'Último Login', 'Último acceso'),
(321, 'last_logout', 'Last Logout', 'Último logout', 'Último cierre de sesión'),
(322, 'status', 'Status', 'Status', 'Estado'),
(323, 'delete_successfully', 'Delete Successfully!', 'Excluir com sucesso!', '¡Eliminar con éxito!'),
(324, 'send', 'Send', 'Mandar', 'Enviar'),
(325, 'date', 'Date', 'Encontro', 'Fecha'),
(326, 'action', 'Action', 'Ação', 'Acción'),
(327, 'sl_no', 'SL No.', 'Sim. Não.', 'Si. No.'),
(328, 'are_you_sure', 'Are You Sure ? ', 'Tem certeza ?', 'Está seguro ?'),
(329, 'application_setting', 'Application Setting', 'Configuração do aplicativo', 'Configuración de la aplicación'),
(330, 'application_title', 'Application Title', 'Título da Candidatura', 'Titulo de la aplicación'),
(331, 'address', 'Address', 'Endereço', 'Dirección'),
(332, 'phone', 'Phone', 'Telefone', 'Teléfono'),
(333, 'favicon', 'Favicon', 'Favicon', 'icono de favoritos'),
(334, 'logo', 'Logo', 'Logotipo', 'Logo'),
(335, 'language', 'Language', 'Linguagem', 'Idioma'),
(336, 'left_to_right', 'Left To Right', 'Da esquerda para direita', 'De izquierda a derecha'),
(337, 'right_to_left', 'Right To Left', 'Direita para esquerda', 'De derecha a izquierda'),
(338, 'footer_text', 'Footer Text', 'Texto de rodapé', 'Texto de pie de página'),
(339, 'site_align', 'Application Alignment', 'Alinhamento de aplicativos', 'Alineación de aplicaciones'),
(340, 'welcome_back', 'Welcome Back!', 'Bem vindo de volta!', '¡Bienvenido de nuevo!'),
(341, 'please_contact_with_admin', 'Please Contact With Admin', 'Entre em contato com o administrador', 'Póngase en contacto con el administrador'),
(342, 'incorrect_email_or_password', 'Incorrect Email/Password', 'E-mail/senha incorretos', 'Correo electrónico/contraseña incorrectos'),
(343, 'select_option', 'Select Option', 'Selecionar opção', 'Seleccionar opción'),
(344, 'ftp_setting', 'Data Synchronize [FTP Setting]', 'Sincronização de dados [Configuração FTP]', 'Sincronización de datos [Configuración de FTP]'),
(345, 'hostname', 'Host Name', 'Nome de anfitrião', 'Nombre de host'),
(346, 'username', 'User Name', 'Nome de usuário', 'Nombre de usuario'),
(347, 'ftp_port', 'FTP Port', 'Porta FTP', 'Puerto FTP'),
(348, 'ftp_debug', 'FTP Debug', 'Depuração FTP', 'Depuración FTP'),
(349, 'project_root', 'Project Root', 'Raiz do Projeto', 'Raíz del proyecto'),
(350, 'update_successfully', 'Update Successfully', 'Atualizar com sucesso', 'Actualizar correctamente'),
(351, 'save_successfully', 'Save Successfully!', 'Salvo com sucesso!', 'Guardar con éxito!'),
(352, 'internet_connection', 'Internet Connection', 'Conexão de internet', 'Conexión a Internet'),
(353, 'ok', 'Ok', 'OK', 'OK'),
(354, 'not_available', 'Not Available', 'Não disponível', 'No disponible'),
(355, 'available', 'Available', 'Disponível', 'Disponible'),
(356, 'outgoing_file', 'Outgoing File', 'Arquivo de saída', 'Archivo saliente'),
(357, 'incoming_file', 'Incoming File', 'Arquivo de entrada', 'Archivo entrante'),
(358, 'data_synchronize', 'Data Synchronize', 'Sincronizar dados', 'Sincronizar datos'),
(359, 'unable_to_upload_file_please_check_configuration', 'Unable to upload file! please check configuration', 'Não foi possível fazer o upload do arquivo! por favor verifique a configuração', '¡Incapaz de cargar el archivo! por favor revise la configuración'),
(360, 'please_configure_synchronizer_settings', 'Please configure synchronizer settings', 'Por favor, defina as configurações do sincronizador', 'Configure los ajustes del sincronizador'),
(361, 'download_successfully', 'Download Successfully', 'Baixar com sucesso', 'Descargar con éxito'),
(362, 'unable_to_download_file_please_check_configuration', 'Unable to download file! please check configuration', 'Não foi possível baixar o arquivo! por favor verifique a configuração', '¡No se puede descargar el archivo! por favor revise la configuración'),
(363, 'data_import_first', 'Data Import First', 'Importar dados primeiro', 'Importación de datos primero'),
(364, 'data_import_successfully', 'Data Import Successfully!', 'Importação de dados com sucesso!', '¡Importación de datos exitosa!'),
(365, 'unable_to_import_data_please_check_config_or_sql_file', 'Unable to import data! please check configuration / SQL file.', 'Não foi possível importar dados! verifique a configuração/arquivo SQL.', '¡No se pueden importar datos! por favor verifique la configuración/archivo SQL.'),
(366, 'download_data_from_server', 'Download Data from Server', 'Baixar dados do servidor', 'Descargar datos del servidor'),
(367, 'data_import_to_database', 'Data Import To Database', 'Importação de dados para banco de dados', 'Importación de datos a la base de datos'),
(368, 'data_upload_to_server', 'Data Upload to Server', 'Upload de dados para o servidor', 'Carga de datos al servidor'),
(369, 'please_wait', 'Please Wait...', 'Por favor, aguarde...', 'Espere por favor...'),
(370, 'ooops_something_went_wrong', ' Ooops something went wrong...', ' Opa, algo deu errado...', ' Vaya, algo salió mal...'),
(371, 'module_permission_list', 'Module Permission List', 'Lista de Permissões do Módulo', 'Lista de permisos del módulo'),
(372, 'user_permission', 'User Permission', 'Permissão do usuário', 'Permiso de usuario'),
(373, 'add_module_permission', 'Add Module Permission', 'Adicionar permissão de módulo', 'Añadir permiso de módulo'),
(374, 'module_permission_added_successfully', 'Module Permission Added Successfully!', 'Permissão do módulo adicionada com sucesso!', '¡Permiso de módulo agregado con éxito!'),
(375, 'update_module_permission', 'Update Module Permission', 'Atualizar permissão do módulo', 'Actualizar permiso del módulo'),
(376, 'download', 'Download', 'Download', 'Descargar'),
(377, 'module_name', 'Module Name', 'nome do módulo', 'Nombre del módulo'),
(378, 'create', 'Create', 'Crio', 'Crear'),
(379, 'read', 'Read', 'Ler', 'Leer'),
(380, 'update', 'Update', 'Atualizar', 'Actualizar'),
(381, 'delete', 'Delete', 'Excluir', 'Borrar'),
(382, 'module_list', 'Module List', 'Lista de Módulos', 'Lista de módulos'),
(383, 'add_module', 'Add Module', 'Adicionar módulo', 'Agregar módulo'),
(384, 'directory', 'Module Direcotory', 'Diretório do Módulo', 'Directorio de módulos'),
(385, 'description', 'Description', 'Descrição', 'Descripción'),
(386, 'image_upload_successfully', 'Image Upload Successfully!', 'Carregamento de imagem com sucesso!', 'Carga de imagen con éxito!'),
(387, 'module_added_successfully', 'Module Added Successfully', 'Módulo adicionado com sucesso', 'Módulo agregado con éxito'),
(388, 'inactive', 'Inactive', 'Inativo', 'Inactivo'),
(389, 'active', 'Active', 'Ativo', 'Activo'),
(390, 'user_list', 'User List', 'Lista de usuários', 'Lista de usuarios'),
(391, 'see_all_message', 'See All Messages', 'Ver todas as mensagens', 'Ver todos los mensajes'),
(392, 'setting', 'Setting', 'Contexto', 'Ajuste'),
(393, 'logout', 'LOGOUT', 'SAIR', 'CERRAR SESIÓN'),
(394, 'admin', 'Admin', 'Administrador', 'Administración'),
(395, 'add_user', 'Add User', 'Adicionar usuário', 'Agregar usuario'),
(396, 'user', 'User', 'Do utilizador', 'Usuario'),
(397, 'module', 'Module', 'Módulo', 'Módulo'),
(398, 'new', 'New', 'Novo', 'Nuevo'),
(399, 'inbox', 'Inbox', 'Caixa de entrada', 'Bandeja de entrada'),
(400, 'sent', 'Sent', 'Enviado', 'Enviado'),
(401, 'synchronize', 'Synchronize', 'Sincronizar', 'Sincronizar'),
(402, 'data_synchronizer', 'Data Synchronizer', 'Sincronizador de dados', 'Sincronizador de datos'),
(403, 'module_permission', 'Module Permission', 'Permissão do módulo', 'Permiso de módulo'),
(404, 'backup_now', 'Backup Now!', 'Faça backup agora!', '¡Copia ahora!'),
(405, 'restore_now', 'Restore Now!', 'Restaurar agora!', '¡Restaura ahora!'),
(406, 'backup_and_restore', 'Data Backup', 'Backup de dados', 'Copias de seguridad'),
(407, 'captcha', 'Captcha Word', 'Palavra Captcha', 'Palabra captcha'),
(408, 'database_backup', 'Database Backup', 'Backup de banco de dados', 'Copia de seguridad de la base de datos'),
(409, 'restore_successfully', 'Restore Successfully', 'Restaurar com sucesso', 'Restaurar con éxito'),
(410, 'backup_successfully', 'Backup Successfully', 'Backup com sucesso', 'Copia de seguridad con éxito'),
(411, 'filename', 'File Name', 'Nome do arquivo', 'Nombre del archivo'),
(412, 'file_information', 'File Information', 'Informações do arquivo', 'Informacion del archivo'),
(413, 'size', 'Size', 'Tamanho', 'Tamaño'),
(414, 'backup_date', 'Backup Date', 'Data de Backup', 'Fecha de copia de seguridad'),
(415, 'overwrite', 'Overwrite', 'Substituir', 'Sobrescribir'),
(416, 'invalid_file', 'Invalid File!', 'Arquivo inválido!', '¡Archivo inválido!'),
(417, 'invalid_module', 'Invalid Module', 'Módulo inválido', 'Módulo no válido'),
(418, 'remove_successfully', 'Remove Successfully!', 'Remover com sucesso!', 'Eliminar con éxito!'),
(419, 'install', 'Install', 'Instalar', 'Instalar'),
(420, 'uninstall', 'Uninstall', 'Desinstalar', 'Desinstalar'),
(421, 'tables_are_not_available_in_database', 'Tables are not available in database.sql', 'As tabelas não estão disponíveis em database.sql', 'Las tablas no están disponibles en base de datos.sql'),
(422, 'no_tables_are_registered_in_config', 'No tables are registerd in config.php', 'Nenhuma tabela está registrada em config.php', 'No hay tablas registradas en config.php'),
(423, 'enquiry', 'Enquiry', 'Investigação', 'Consulta'),
(424, 'read_unread', 'Read/Unread', 'Lido/Não lido', 'Leído/No leído'),
(425, 'enquiry_information', 'Enquiry Information', 'Informações de consulta', 'Información de consulta'),
(426, 'user_agent', 'User Agent', 'Agente de usuário', 'Agente de usuario'),
(427, 'checked_by', 'Checked By', 'Verificado por', 'Revisado por'),
(428, 'new_enquiry', 'New Enquiry', 'Nova consulta', 'Nueva consulta'),
(429, 'fleet', 'Fleet Management', 'Gestão de Frotas', 'Gestión de flotas'),
(430, 'fleet_type', 'Fleet Type', 'Tipo de Frota', 'Tipo de flota'),
(431, 'add', 'Add', 'Adicionar', 'Agregar'),
(432, 'list', 'List', 'Lista', 'Lista'),
(433, 'fleet_facilities', 'Fleet Facilities', 'Instalações da frota', 'Instalaciones de flota'),
(434, 'fleet_registration', 'Vehicles', 'Veículos', 'vehículos'),
(435, 'reg_no', 'Registration No.', 'Número de registro.', 'Número de registro.'),
(436, 'model_no', 'Model No.', 'Nº do modelo', 'N º de Modelo.'),
(437, 'engine_no', 'Engine No.', 'Nº do motor', 'Sin motor.'),
(438, 'chasis_no', 'Chasis No.', 'Nº do chassi', 'Chasis No.'),
(439, 'total_seat', 'Total Seat', 'Lugar total', 'Asiento total'),
(440, 'seat_numbers', 'Seat Number', 'Número do assento', 'Número de asiento'),
(441, 'owner', 'Owner', 'Proprietário', 'Dueño'),
(442, 'company', 'Company Name', 'nome da empresa', 'nombre de empresa'),
(443, 'trip', 'Trip Management', 'Gerenciamento de viagens', 'Gestión de viajes'),
(444, 'location', 'Destination', 'Destino', 'Destino'),
(445, 'route', 'Route', 'Rota', 'Ruta'),
(446, 'assign', 'Assign', 'Atribuir', 'Asignar'),
(447, 'close', 'Close Trip', 'Fechar viagem', 'Cerrar viaje'),
(448, 'location_name', 'Destination Name', 'Nome do destino', 'Nombre del destino'),
(449, 'google_map', 'Google Map', 'Mapa do Google', 'Mapa de Google'),
(450, 'start_point', 'Start Point', 'Ponto de partida', 'Punto de partida'),
(451, 'end_point', 'End Point', 'Ponto final', 'punto final'),
(452, 'route_name', 'Route Name', 'Nome da rota', 'Nombre de ruta'),
(453, 'distance', 'Distance', 'Distância', 'Distancia'),
(454, 'approximate_time', 'Approximate Time', 'Tempo aproximado', 'Tiempo aproximado'),
(455, 'stoppage_points', 'Stoppage Points', 'Pontos de Parada', 'Puntos de Paro'),
(456, 'fleet_registration_no', 'Fleet Registration No.', 'Nº de registro da frota', 'Registro de flota No.'),
(457, 'start_date', 'Start Date', 'Data de início', 'Fecha de inicio'),
(458, 'end_date', 'End Date', 'Data final', 'Fecha final'),
(459, 'driver_name', 'Driver Name', 'Nome do motorista', 'Nombre del conductor'),
(460, 'assistants_ids', 'Assistants', 'Assistentes', 'asistentes'),
(461, 'sold_ticket', 'Sold Ticket', 'Bilhete Vendido', 'Boleto vendido'),
(462, 'total_income', 'Total Income', 'Renda total', 'Ingresos totales'),
(463, 'total_expense', 'Total Expense', 'Custo total', 'Gasto total'),
(464, 'total_fuel', 'Total Fuel', 'Combustível Total', 'Combustible total'),
(465, 'trip_comment', 'Trip Comment', 'Comentário de viagem', 'Comentario de viaje'),
(466, 'closed_by', 'Closed by', 'Fechado por', 'Cerrado por'),
(467, 'ticket', 'Ticket Management', 'Gerenciamento de tickets', 'Gestión de entradas'),
(468, 'passenger', 'Passenger', 'Passageiro', 'Pasajero'),
(469, 'middle_name', 'Middle Name', 'Nome do meio', 'Segundo nombre'),
(470, 'date_of_birth', 'Date of Birth', 'Data de nascimento', 'Fecha de nacimiento'),
(471, 'passenger_id', 'Passenger ID.', 'Identificação do passageiro.', 'Identificación del pasajero.'),
(472, 'address_line_1', 'Address Line 1', 'Endereço Linha 1', 'Dirección Línea 1'),
(473, 'address_line_2', 'Address Line 2', 'endereço linha 2', 'Línea de dirección 2'),
(474, 'zip_code', 'Zip Code', 'Código postal', 'Código postal'),
(475, 'name', 'Name', 'Nome', 'Nombre'),
(476, 'ac_available', 'AC available', 'AC disponível', 'CA disponible'),
(477, 'trip_id', 'Trip ID.', 'ID da viagem.', 'Identificación de viaje.'),
(478, 'book', 'Book', 'Livro', 'Libro'),
(479, 'booking_id', 'Booking ID.', 'Identificação da reserva.', 'Identificación de la reserva.'),
(480, 'available_seats', 'Available Seats', 'Assentos disponíveis', 'Asientos disponibles'),
(481, 'select_seats', 'Select Seats', 'Selecionar assentos', 'Seleccionar asientos'),
(482, 'time', 'Time', 'Tempo', 'Tiempo'),
(483, 'offer_code', 'Offer Code', 'Código de oferta', 'Ofrece código'),
(484, 'price', 'Price', 'Preço', 'Precio'),
(485, 'discount', 'Discount', 'Desconto', 'Descuento'),
(486, 'request_facilities', 'Request Facilities', 'Solicitar instalações', 'Solicitar Instalaciones'),
(487, 'pickup_location', 'Pickup Location', 'Local de Recolha', 'Lugar de recogida'),
(488, 'drop_location', 'Drop Location', 'Local de soltar', 'Ubicación de entrega'),
(489, 'amount', 'Amount', 'Quantia', 'Monto'),
(490, 'invalid_passenger_id', 'Invalid Passenger ID', 'ID de passageiro inválido', 'Identificación de pasajero no válida'),
(491, 'invalid_input', 'Invalid Input', 'entrada inválida', 'entrada inválida'),
(492, 'booking_date', 'Booking Date', 'Data da reserva', 'Fecha para registrarse'),
(493, 'cancelation_fees', 'Cancelation Fees', 'Taxas de cancelamento', 'Tarifas de cancelación'),
(494, 'causes', 'Causes', 'Causas', 'Causas'),
(495, 'comment', 'Comment', 'Comente', 'Comentario'),
(496, 'refund', 'Refund', 'Reembolso', 'Reembolso'),
(497, 'refund_by', 'Refund by', 'Reembolso por', 'Reembolso por'),
(498, 'feedback', 'Feedback', 'Comentários', 'Retroalimentación'),
(499, 'rating', 'Rating', 'Avaliação', 'Clasificación'),
(500, 'blood_group', 'Blood Group', 'Grupo sanguíneo', 'Grupo sanguíneo'),
(501, 'religion', 'Religion', 'Religião', 'Religión'),
(502, 'details', 'Details', 'Detalhes', 'Detalles'),
(503, 'type_name', 'Type Name', 'Digite o nome', 'Escribe un nombre'),
(504, 'view_details', 'View Details', 'Ver detalhes', 'Ver detalles'),
(505, 'document_pic', 'Document Picture', 'Imagem do documento', 'Imagen del documento'),
(506, 'fitness_list', 'Fitness List', 'Lista de condicionamento físico', 'Lista de ejercicios'),
(507, 'fitness_name', 'Fitness Name', 'Nome do Fitness', 'Nombre de condición física'),
(508, 'fitness_description', 'Description', 'Descrição', 'Descripción'),
(509, 'successfully_updated', 'Your Data Successfully Updated', 'Seus dados atualizados com sucesso', 'Tus datos actualizados con éxito'),
(510, 'fitness_period', 'Fitness Period List', 'Lista de períodos de condicionamento físico', 'Lista de periodos de fitness'),
(511, 'fitness_id', 'Fitness Name', 'Nome do Fitness', 'Nombre de condición física'),
(512, 'vehicle_id', 'Vehicles No', 'Veículos Não', 'Número de vehículos'),
(513, 'start_milage', 'Start Milage', 'Iniciar milhagem', 'Kilometraje inicial'),
(514, 'end_milage', 'End Milage', 'Fim da milhagem', 'Kilometraje final'),
(515, 'agent', 'Agent', 'Agente', 'Agente'),
(516, 'agent_first_name', 'First Name', 'Primeiro nome', 'Primer nombre'),
(517, 'agent_second_name', 'LastName', 'Sobrenome', 'Apellido'),
(518, 'agent_company_name', 'Company Name', 'nome da empresa', 'nombre de empresa'),
(519, 'agent_document_id', 'Document ID', 'ID do documento', 'Identificación del documento'),
(520, 'agent_pic_document', 'Document File', 'Arquivo de documento', 'archivo de documento'),
(521, 'agent_phone', 'Phone', 'Telefone', 'Teléfono'),
(522, 'agent_mobile', 'Mobile No', 'Número do celular', 'No móviles'),
(523, 'agent_email', 'Email', 'E-mail', 'Correo electrónico'),
(524, 'agent_address_line_1', 'Address Line 1', 'Endereço Linha 1', 'Dirección Línea 1'),
(525, 'agent_address_line_2', 'Address Line 2', 'endereço linha 2', 'Línea de dirección 2'),
(526, 'agent_address_city', 'City', 'Cidade', 'Ciudad'),
(527, 'agent_address_zip_code', 'ZIP', 'fecho eclair', 'CÓDIGO POSTAL'),
(528, 'agent_country', 'Country', 'País', 'País'),
(529, 'sl', 'SL', 'SL', 'SL'),
(530, 'route_id', 'Route Name', 'Nome da rota', 'Nombre de ruta'),
(531, 'vehicle_type_id', 'Vehicle Type', 'Tipo de Veículo', 'tipo de vehiculo'),
(532, 'group_price_per_person', 'Group Price Per Person', 'Preço de grupo por pessoa', 'Precio de grupo por persona'),
(533, 'group_size', 'Group Members', 'Membros do grupo', 'Miembros del grupo'),
(534, 'successfully_saved', 'Your Data Successfully Saved', 'Seus dados salvos com sucesso', 'Tus datos guardados con éxito'),
(535, 'account', 'Account', 'Conta', 'Cuenta'),
(536, 'account_name', 'Account Name', 'Nome da conta', 'Nombre de la cuenta'),
(537, 'account_type', 'Account Type', 'tipo de conta', 'Tipo de cuenta'),
(538, 'account_transaction', 'Account Transaction', 'Transação da conta', 'Transacción de cuenta'),
(539, 'account_id', 'Account Name', 'Nome da conta', 'Nombre de la cuenta'),
(540, 'transaction_description', 'Transaction Details', 'Detalhes da transação', 'Detalles de la transacción'),
(541, 'pass_book_id', 'Passenger ID', 'ID do passageiro', 'Identificación del pasajero'),
(542, 'payment_id', 'Payment ID', 'Código de pagamento', 'ID de pago'),
(543, 'create_by_id', 'Created By', 'Criado por', 'Creado por'),
(544, 'offer', 'Offer', 'Oferta', 'Oferta'),
(545, 'offer_name', 'Offer Name', 'Nome da oferta', 'Nombre de la oferta'),
(546, 'offer_start_date', 'Offer Start Date', 'Data de início da oferta', 'Fecha de inicio de la oferta'),
(547, 'offer_end_date', 'Offer Last Date', 'Última data da oferta', 'Última fecha de la oferta'),
(548, 'offer_discount', 'Discount', 'Desconto', 'Descuento'),
(549, 'offer_terms', 'Offer Terms', 'Termos da oferta', 'Condiciones de la oferta'),
(550, 'offer_route_id', 'Route Name', 'Nome da rota', 'Nombre de ruta'),
(551, 'offer_number', 'Offer Number', 'Número da oferta', 'Número de oferta'),
(552, 'seat_number', 'Seat No', 'Nº do assento', 'Número de asiento'),
(553, 'available_seat', 'Available Seat', 'Assento disponível', 'Asiento disponible'),
(554, 'owner_name', 'Owner Name', 'Nome do proprietário', 'Nombre del dueño'),
(555, 'agent_picture', 'Picture', 'Foto', 'Imagen'),
(556, 'account_add', 'Add Account', 'Adicionar Conta', 'Añadir cuenta'),
(557, 'add_agent', 'Add Agent', 'Adicionar agente', 'Agregar agente'),
(558, 'hr', 'Human Resource', 'Recursos humanos', 'Recursos humanos'),
(559, 'create_hr', 'Add Employee', 'Adicionar funcionário', 'Agregar empleado'),
(560, 'serial', 'Sl', 'Sl', 'SL'),
(561, 'position', 'Position', 'Posição', 'Posición'),
(562, 'phone_no', 'Phone No', 'Telefone não', 'Telefono no'),
(563, 'email_no', 'Email', 'E-mail', 'Correo electrónico'),
(564, 'picture', 'Picture', 'Foto', 'Imagen'),
(565, 'first_name', 'First Name', 'Primeiro nome', 'Primer nombre'),
(566, 'second_name', 'Last Name', 'Sobrenome', 'Apellido'),
(567, 'document_id', 'Documet Id', 'ID do documento', 'ID del documento'),
(568, 'country', 'Country', 'País', 'País'),
(569, 'city', 'City', 'Cidade', 'Ciudad'),
(570, 'zip', 'Zip ', 'Fecho eclair', 'Cremallera'),
(571, 'add_passenger', 'Add Passenger', 'Adicionar passageiro', 'Agregar Pasajero'),
(572, 'search_tiket', 'Search Ticket', 'Pesquisar ticket', 'Buscar boleto'),
(573, 'slogan', 'Slogan', 'Slogan', 'Eslogan'),
(574, 'website', 'Website', 'Local na rede Internet', 'Sitio web'),
(575, 'submit', 'Submit', 'Enviar', 'Enviar'),
(576, 'customer_service', 'Customer Service', 'Atendimento ao Cliente', 'Servicio al Cliente'),
(577, 'submit_successfully', 'Submit Successfully!', 'Enviar com sucesso!', '¡Envíe con éxito!'),
(578, 'add_to_website', 'Add to Website', 'Adicionar ao site', 'Agregar al sitio web'),
(579, 'our_customers_say', 'Our Customers Say', 'Nossos clientes dizem', 'Nuestros Clientes Dicen'),
(580, 'website_status', 'Website Status', 'Status do site', 'Estado del sitio web'),
(581, 'title', 'Title', 'Título', 'Título'),
(582, 'total_fleet', 'Total Fleet', 'Frota Total', 'Flota total'),
(583, 'total_passenger', 'Total Passenger', 'Total de Passageiros', 'Pasajero total'),
(584, 'todays_trip', 'Todays Trip', 'Viagem de hoje', 'viaje de hoy'),
(585, 'seats_available', 'Seats Available', 'Assentos Disponíveis', 'Asientos disponibles'),
(586, 'no_trip_avaiable', 'No trip avaiable', 'Nenhuma viagem disponível', 'No hay viaje disponible'),
(587, 'booking', 'Booking', 'Reserva', 'Reserva'),
(588, 'something_went_worng', 'Something went worng!', 'Alguma coisa deu errado!', '¡Algo salió mal!'),
(589, 'paypal_email', 'Paypal Email', 'Email do Paypal', 'e-mail de Paypal'),
(590, 'currency', 'Currency', 'Moeda', 'Divisa'),
(591, 'reports', 'Reports', 'Relatórios', 'Informes'),
(592, 'search', 'Search', 'Procurar', 'Búsqueda'),
(593, 'ticket_sold_by_company', 'Ticket sold by company', 'Bilhete vendido pela empresa', 'Billete vendido por empresa'),
(594, 'go', 'Go', 'Vai', 'Vamos'),
(595, 'all', 'All', 'Tudo', 'Todos'),
(596, 'filter', 'Filter', 'Filtro', 'Filtrar'),
(597, 'last_year_progress', 'Last Year Progress', 'Progresso do ano passado', 'Progreso del año pasado'),
(598, 'download_document', 'Download Document', 'Baixar documento', 'Descargar documento'),
(599, 'mobile', 'Mobile No.', 'Nº móvel', 'No móviles.'),
(600, 'account_list', 'Account List', 'Lista de contas', 'Lista de cuentas'),
(601, 'add_income', 'Add Income', 'Adicionar renda', 'Añadir ingresos'),
(602, 'add_expense', 'Add Expense', 'Adicionar Despesa', 'Agregar gasto'),
(603, 'agent_list', 'Agent List', 'Lista de agentes', 'Lista de agentes'),
(604, 'add_fitness', 'Add Fitness', 'Adicionar condicionamento físico', 'Agregar condición física'),
(605, 'fitness', 'Fitness', 'Ginástica', 'Aptitud física'),
(606, 'add_fitness_period', 'Add Fitness Period', 'Adicionar período de condicionamento físico', 'Añadir período de fitness'),
(607, 'employee_type', 'Employee Type', 'Tipo de funcionário', 'Tipo de empleado'),
(608, 'employee_list', 'Employee List', 'Lista de empregados', 'Lista de empleados'),
(609, 'add_offer', 'Add Offer', 'Adicionar oferta', 'Añadir oferta'),
(610, 'offer_list', 'Offer List', 'Lista de Ofertas', 'Lista de ofertas'),
(611, 'add_price', 'Add Price', 'Adicionar preço', 'Agregar precio'),
(612, 'price_list', 'Price List', 'Lista de preços', 'Lista de precios'),
(613, 'layout', 'Layout', 'Esquema', 'Diseño'),
(614, 'last_seat_availabe', 'Last Seat Available', 'Último assento disponível', 'Último asiento disponible'),
(615, 'paypal_transaction', 'Paypal Transaction', 'Transação Paypal', 'Transacción de Paypal'),
(616, 'enable', 'Enable', 'Permitir', 'Habilitar'),
(617, 'disable', 'Disable', 'Desativar', 'Deshabilitar'),
(618, 'payment_gateway', 'Payment Gateway', 'Gateway de pagamento', 'Pasarela de pago'),
(619, 'payment_type', 'Payment Type', 'Tipo de pagamento', 'Tipo de pago'),
(620, 'payment_status', 'Payment Status', 'Status do pagamento', 'Estado de pago'),
(621, 'downtime', 'Down Time', 'Tempo de inatividade', 'Tiempo de inactividad'),
(622, 'select_bus', 'Select Bus', 'Selecionar ônibus', 'Seleccionar autobús'),
(623, 'user_info', 'Passenger Information', 'Informações do passageiro', 'Información del pasajero'),
(624, 'personal_info', 'Personal Information', 'Informação pessoal', 'Informacion personal'),
(625, 'booking_info', 'Booking Information', 'Informações de reserva', 'Infomación sobre reservas'),
(626, 'update_your_profile', 'Edit your Profile', 'Edite seu perfil', 'Edite su perfil'),
(627, 'email_configue', 'Email Configuration', 'Configuração de e-mail', 'Configuración de correo electrónico'),
(628, 'protocol', 'Protocol', 'Protocolo', 'Protocolo'),
(629, 'smtp_host', 'SMTP Host', 'Host SMTP', 'Anfitrión SMTP'),
(630, 'smtp_port', 'SMTP Port', 'Porta SMTP', 'Puerto SMTP'),
(631, 'smtp_pass', 'SMTP Password', 'Senha SMTP', 'Contraseña SMTP'),
(632, 'mailtype', 'Mail Type', 'Tipo de e-mail', 'Tipo de correo'),
(633, 'smtp_user', 'SMTP User', 'Usuário SMTP', 'Usuario SMTP'),
(634, 'html', 'Html', 'HTML', 'html'),
(635, 'text', 'Text', 'Texto', 'Texto'),
(636, 'email_send_to_passenger', ' Email Sent Sucessfully', ' E-mail enviado com sucesso', ' Correo electrónico enviado con éxito'),
(637, 'bank', 'Bank Information', 'Informação bancária', 'Información bancaria'),
(638, 'instruction', 'Instruction', 'Instrução', 'Instrucción'),
(639, 'account_details', 'Account Details', 'Detalhes da conta', 'detalles de la cuenta'),
(640, 'bank_logo', 'Bank Logo', 'Logo do Banco', 'logotipo del banco'),
(641, 'bank_name', 'Bank Name', 'Nome do banco', 'Nombre del banco'),
(642, 'bank_trans', 'Bank', 'Banco', 'Banco'),
(643, 'transaction_successfully_send', 'Your Information successfully Send', 'Suas informações foram enviadas com sucesso', 'Tu información enviada con éxito'),
(644, 'confirmation', 'Confirmation', 'Confirmação', 'Confirmación'),
(645, 'account_no', 'Account No', 'Nº da conta', 'Número de cuenta'),
(646, 'transaction_no', 'Transaction No', 'Nº da transação', 'Número de transacción'),
(647, 'paypal', 'Paypal', 'Paypal', 'PayPal'),
(648, 'cash', 'Cash', 'Dinheiro', 'Dinero');
INSERT INTO `language` (`id`, `phrase`, `english`, `portuguese`, `spanish`) VALUES
(649, 'paypal_checkout', 'Paypal Checkout', 'Pagamento Paypal', 'pago de paypal'),
(650, 'confirm_banking', 'Confirm Banking', 'Confirmar banco', 'Confirmar Banca'),
(651, 'payment_information', 'Payment Information', 'Informação de pagamento', 'Información del pago'),
(652, 'email_gritting', 'Congratulation Mr.', 'Parabéns Sr.', 'Felicidades Sr.'),
(653, 'email_ticket_idinfo', 'Your Purchase Ticket No-', 'Seu Bilhete de Compra Não-', 'Tu Ticket de Compra No-'),
(654, 'ticket_confirmation', 'Unpaid Bank Booking List', 'Lista de reservas bancárias não pagas', 'Lista de reserva bancaria no pagada'),
(655, 'deny', 'Deny', 'Negar', 'Negar'),
(656, 'confirm', 'CONFIRM', 'CONFIRME', 'CONFIRMAR'),
(657, 'note', 'Note', 'Observação', 'Nota'),
(658, 'accournt_no', 'Account Number', 'Número da conta', 'Número de cuenta'),
(659, 'payer_name', 'Payer Name', 'Nome do pagador', 'Nombre del pagador'),
(660, 'accournt_non', 'Account Number', 'Número da conta', 'Número de cuenta'),
(661, 'confirm_booking', 'Confirm Booking', 'Confirmar reserva', 'Reserva confirmada'),
(662, 'account_num', 'Account Number', 'Número da conta', 'Número de cuenta'),
(663, 'invalid_logo', 'Invalid Logo, Please upload gif|jpg|png|jpeg|ico type image', 'Logotipo inválido, faça upload de gif|jpg|png|jpeg|ico type image', 'Logotipo no válido, cargue la imagen tipo gif|jpg|png|jpeg|ico'),
(664, 'invalid_favicon', 'Invalid Favicon, Please upload gif|jpg|png|jpeg|ico type image', 'Favicon inválido, por favor envie gif|jpg|png|jpe', 'Favicon no válido, cargue gif|jpg|png|jpe'),
(665, 'print_ticket', 'Print Ticket', 'Imprimir Bilhete', 'Imprimir Ticket'),
(666, 'cancel_ticket', 'Cancel Ticket', 'Cancelar Bilhete', 'Cancelar Ticket'),
(667, 'email_not_send', 'Email Not Send', 'E-mail não enviado', 'Correo electrónico no enviado'),
(668, 'timezone', 'Time Zone', 'Fuso horário', 'Zona horaria'),
(669, 'menu_permission_form', 'Menu Permission Form', 'Formulário de permissão de menu', 'Formulario de permiso de menú'),
(670, 'permission_setup', 'Permission setup', 'Configuração de permissão', 'Configuración de permisos'),
(671, 'menu_permission_list', 'Menu Permission List', 'Lista de permissões do menu', 'Lista de permisos del menú'),
(672, 'add_fleet_type', 'Add Fleet Type', 'Adicionar tipo de frota', 'Añadir tipo de flota'),
(673, 'fleet_type_list', 'Fleet Type List', 'Lista de Tipos de Frota', 'Lista de tipos de flota'),
(674, 'add_facilities', 'Add Facilities', 'Adicionar instalações', 'Agregar instalaciones'),
(675, 'facilities_list', 'Facilities List', 'Lista de Instalações', 'Lista de instalaciones'),
(676, 'add_registration', 'Add Vehicle', 'Adicionar veículo', 'Agregar vehículo'),
(677, 'registration_list', 'Vehicle List', 'Lista de veículos', 'Lista de vehículos'),
(678, 'refund_list', 'Refund List', 'Lista de reembolso', 'Lista de reembolsos'),
(679, 'add_refund', 'Add Refund', 'Adicionar reembolso', 'Agregar reembolso'),
(680, 'booking_list', 'Booking List', 'Lista de reservas', 'Lista de reservas'),
(681, 'add_booking', 'Add Booking', 'Adicionar reserva', 'Agregar reserva'),
(682, 'passenger_list', 'Passenger List', 'Lista de passageiros', 'Lista de pasajeros'),
(683, 'assign_list', 'Assignment List', 'Lista de Tarefas', 'Lista de asignaciones'),
(684, 'close_list', 'Close List', 'Fechar lista', 'Cerrar lista'),
(685, 'add_assign', 'Assign Vehicle To Trip', 'Atribuir veículo à viagem', 'Asignar vehículo a viaje'),
(686, 'route_list', 'Route List', 'Lista de rotas', 'Lista de rutas'),
(687, 'add_route', 'Add Route', 'Adicionar rota', 'Agregar ruta'),
(688, 'location_list', 'Destination List', 'Lista de destinos', 'Lista de destinos'),
(689, 'add_location', 'Add Destination', 'Adicionar destino', 'Agregar destino'),
(690, 'add_role', 'Add Role', 'Adicionar função', 'Agregar rol'),
(691, 'add_bank', 'Add Bank', 'Adicionar banco', 'Agregar banco'),
(692, 'bank_list', 'Bank List', 'Lista de Bancos', 'Lista de bancos'),
(693, 'role_name', 'Role Name', 'Nome do papel', 'Nombre de rol'),
(694, 'role_description', 'Role Description', 'Descrição do papel', 'Descripción del rol'),
(695, 'role_list', 'Role List', 'Lista de funções', 'Lista de funciones'),
(696, 'user_access_role', 'User Access Role', 'Função de acesso do usuário', 'Rol de acceso de usuario'),
(697, 'role', 'Role', 'Função', 'Role'),
(698, 'role_permission', 'Role Permission', 'Permissão de função', 'Permiso de rol'),
(699, 'web_setting', 'Web Setting', 'Configuração da Web', 'Configuración web'),
(700, 'ticket_offer', 'Ticket Offer', 'Oferta de ingressos', 'Oferta de entradas'),
(701, 'shedules', 'Shedules', 'Horários', 'Horarios'),
(702, 'add_shedule', 'Add Shedule', 'Adicionar Agenda', 'Añadir horario'),
(703, 'shedule_list', 'Shedule LIst', 'Lista de agendamento', 'Lista de horarios'),
(704, 'shedule_time', 'Shedule Time', 'Horário de agendamento', 'Horario de tiempo'),
(705, 'travel_slogan', 'On the placess youll go', 'Nos lugares que você irá', 'En los lugares a los que irás'),
(706, 'travel_sub_slogan', 'It is not down in any map; true place naver are.', 'Não está em nenhum mapa; verdadeiro lugar naver são.', 'No está abajo en ningún mapa; verdadero lugar naver son.'),
(707, 'search_tour', 'Search Tours', 'Pesquisar passeios', 'Buscar recorridos'),
(708, 'find_dream', 'Find your dream tour today!', 'Encontre o passeio dos seus sonhos hoje!', '¡Encuentra el tour de tus sueños hoy!'),
(709, 'find_now', 'Find now!', 'Encontre agora!', '¡Encuentra ahora!'),
(710, 'start', 'Start', 'Começar', 'comienzo'),
(711, 'end', 'End', 'Fim', 'Final'),
(712, 'paypal_payment_paynow', 'PAYPAL PAY NOW', 'PAGAMENTO PAGAMENTO AGORA', 'PAYPAL PAGAR AHORA'),
(713, 'passenger_name', 'Passenger Name', 'Nome do passageiro', 'Nombre del pasajero'),
(714, 'facilities', 'Facilities', 'Instalações', 'Comodidades'),
(715, 'seat_name', 'Seat Name', 'Nome do assento', 'Nombre del asiento'),
(716, 'adult', 'Adult', 'Adulto', 'Adulto'),
(717, 'child', 'Child', 'Filho', 'Niño'),
(718, 'special', 'Special', 'Especial', 'Especial'),
(719, 'grand_total', 'Grand Total', 'Total geral', 'Gran total'),
(720, 'book_for_one_hour', 'Book For One Hour', 'Reserve por uma hora', 'Reserva por una hora'),
(721, 'unpaid_cash_booking_list', 'Unpaid Cash Booking List', 'Lista de reservas em dinheiro não pagas', 'Lista de reservas en efectivo sin pagar'),
(722, 'bank_transaction', 'Bank Transaction', 'Transação bancária', 'Transacción bancaria'),
(723, 'payment_term_andcondition', 'Payment Terms & Conditions', 'Termos e condições de pagamento', 'Términos y condiciones de pago'),
(724, 'add_terms', 'Add Terms', 'Adicionar termos', 'Agregar términos'),
(725, 'terms_list', 'Terms & Condition', 'Termos e Condições', 'Términos y Condiciones'),
(726, 'how_to_pay', 'How to Pay', 'Como pagar', 'Como pagar'),
(727, 'terms_and_condition', 'Terms And Conditions', 'Termos e Condições', 'Términos y condiciones'),
(728, 'nid', 'National ID', 'identidade nacional', 'Identificación nacional'),
(729, 'add_trip', 'Create Trip', 'Criar viagem', 'Crear viaje'),
(730, 'trips', 'Trips', 'Viagens', 'Excursiones'),
(731, 'trip_list', 'Trip LIst', 'Lista de viagens', 'Lista de viajes'),
(732, 'trip_title', 'Trip Title', 'Título da viagem', 'Título del viaje'),
(733, 'types', 'Types', 'Tipos', 'Tipos'),
(734, 'assigns', 'Assign', 'Atribuir', 'Asignar'),
(735, 'see_all', 'See All', 'Ver tudo', 'Ver todo'),
(736, 'no_o_ticket', 'NO of Tickts', 'NÃO de tiques', 'NO de Entradas'),
(737, 'seats', 'Seat(s)', 'Assento(s)', 'Asientos)'),
(738, 'prices', 'Price(s)', 'Preço(s)', 'Precios)'),
(739, 'group_price', 'Group Price', 'Preço do grupo', 'Precio de grupo'),
(740, 'total', 'Total', 'Total', 'Total'),
(741, 'passenger_details', 'Passenger Details', 'Detalhes do passageiro', 'detalles del pasajero'),
(742, 'journey_details', 'Journey Details', 'Detalhes da jornada', 'Detalles del viaje'),
(743, 'term_n_condition', 'Term & Condition', 'Termo e condição', 'Término y condición'),
(744, 'enter_login_info', 'Enter Your Login Info', 'Insira suas informações de login', 'Ingrese su información de inicio de sesión'),
(745, 'select_bank_name', 'Select Bank Name', 'Selecione o nome do banco', 'Seleccione el nombre del banco'),
(746, 'enter_transaction_id', 'Enter Transaction Id', 'Insira o ID da transação', 'Ingrese la identificación de la transacción'),
(747, 'booked_seat', 'Booked Seat', 'Lugar reservado', 'Asiento reservado'),
(748, 'selected_seat', 'Selected Seat', 'Assento Selecionado', 'Asiento seleccionado'),
(749, 'operator', 'Operator', 'Operador', 'Operador'),
(750, 'fare', 'Fare', 'Tarifa', 'Tarifa'),
(751, 'arrival', 'Arrival', 'Chegada', 'Llegada'),
(752, 'departure', 'Departure', 'Partida', 'Partida'),
(753, 'duration', 'Duration', 'Duração', 'Duración'),
(754, 'no_of_ticket', 'No Of tickets', 'Nº de bilhetes', 'Nº de entradas'),
(755, 'special_fare', 'Special Price', 'Preço especial', 'Precio especial'),
(756, 'child_fare', 'Children Fare', 'Tarifa para crianças', 'Tarifa para niños'),
(757, 'adult_fare', 'Adult Fare', 'Tarifa de adulto', 'Tarifa de adulto'),
(758, 'ticket_information', 'Ticket Information', 'Informações do bilhete', 'información de entradas'),
(759, 'brand_name', 'Brand Name', 'Marca', 'Nombre de la marca'),
(760, 'children_seat', 'Children Seat', 'Cadeira de criança', 'Asiento para niños'),
(761, 'special_seat', 'Special Seat', 'Assento Especial', 'Asiento especial'),
(762, 'menu_item_list', 'Menu Item List', 'Lista de itens de menu', 'Lista de elementos del menú'),
(763, 'parent_menu', 'Parent Menu', 'Menu pai', 'Menú principal'),
(764, 'page_url', 'Page Url', 'URL da página', 'URL de la página'),
(765, 'menu_title', 'Menu title', 'Título do menu', 'Título del menú'),
(766, 'ins_menu_for_application', 'Insert Menu for the application', 'Inserir menu para o aplicativo', 'Insertar Menú para la aplicación'),
(767, 'yearly_progressbar', 'Yearly Progress Bar', 'Barra de progresso anual', 'Barra de progreso anual'),
(768, 'child_price', 'Child Price', 'Preço filho', 'Precio niño'),
(769, 'adult_price', 'Adult Price', 'Preço adulto', 'Precio adulto'),
(770, 'special_price', 'Special Price', 'Preço especial', 'Precio especial'),
(771, 'how_to_use', 'HOW TO USE', 'COMO USAR', 'CÓMO UTILIZAR'),
(772, 'bank_commission', 'Bank Commission', 'Comissão Bancária', 'Comisión Bancaria'),
(773, 'bank_charge', 'Bank Charge', 'Taxa bancária', 'Interés bancario'),
(774, 'type', 'Type', 'Modelo', 'Escribe'),
(775, 'amount_paid', 'Amount Paid', 'Quantia paga', 'Cantidad pagada'),
(776, 'txn_id', 'TXN ID', 'ID TXN', 'Identificación de TXN'),
(777, 'item_number', 'Item Number', 'Número de item', 'Número de artículo'),
(778, 'paument_success_message', 'Your Payment Successfully Paid', 'Seu pagamento foi pago com sucesso', 'Su pago se realizó con éxito'),
(779, 'unpaid', 'Unpaid', 'Não pago', 'No pagado'),
(780, 'paid', 'Paid', 'Pago', 'Pagado'),
(781, 'trip_name', 'Trip Name', 'Nome da viagem', 'Nombre del viaje'),
(782, 'account_number', 'Account Number', 'Número da conta', 'Número de cuenta'),
(783, 'owner_phone', 'Owner Phone No', 'Telefone do Proprietário', 'Número de teléfono del propietario'),
(784, 'passenger_email', 'Passenger Email', 'E-mail do passageiro', 'Correo electrónico del pasajero'),
(785, 'child_no', 'Child', 'Filho', 'Niño'),
(786, 'close_trip', 'Close Trip', 'Fechar viagem', 'Cerrar viaje'),
(787, 'agent_commission', 'Agent Commission', 'Comissão do Agente', 'Comisión de Agente'),
(788, 'credit', 'Credit', 'Crédito', 'Crédito'),
(789, 'debit', 'Debit', 'Débito', 'Débito'),
(790, 'balance', 'Balance', 'Equilíbrio', 'Balance'),
(791, 'agent_log', 'Agent Log', 'Registro do agente', 'Registro de agente'),
(792, 'total_ticket', 'Total Ticket', 'Bilhete Total', 'Ticket total'),
(793, 'total_amount', 'Total Amount', 'Valor total', 'Cantidad total'),
(794, 'total_commission', 'Total Commission', 'Comissão total', 'Comisión Total'),
(795, 'select_agent_name', 'Select Agent Name', 'Selecione o nome do agente', 'Seleccione el nombre del agente'),
(796, 'commission_amount', 'Commission Amout', 'Valor da Comissão', 'Importe de la comisión'),
(797, 'total_price', 'Total Price', 'Preço total', 'Precio total'),
(798, 'commission_rate', 'Commission Rate', 'Taxa de comissão', 'Porcentaje de comision'),
(799, 'ticket_sales', 'Ticket Sale', 'Venda de ingressos', 'Venta de entradas'),
(800, 'vehicle', 'Vehicle', 'Veículo', 'Vehículo'),
(801, 'ticket_sales_report_for', 'Ticket Sales Report For', 'Relatório de vendas de ingressos para', 'Informe de venta de entradas para'),
(802, 'agent_report', 'Agent Report', 'Relatório do agente', 'Informe de agente'),
(803, 'agent_ledger', 'Agent Ledger', 'Razão do Agente', 'Libro mayor de agentes'),
(804, 'booking_details', 'Journey Details', 'Detalhes da jornada', 'Detalles del viaje'),
(805, 'websites', 'Go to Frontend', 'Ir para o front-end', 'Ir a la interfaz'),
(806, 'backup_and_download', 'Backup && Download', 'Backup && Download', 'Copia de seguridad y descarga'),
(807, 'distance_kmmile', '1 Km/Mile', '1 km/milha', '1 kilómetro/milla'),
(808, 'children', 'Children', 'Crianças', 'Niños'),
(809, 'login_info', 'Login Information', 'Informações de login', 'Información Entrar'),
(810, 'please_configure_your_mail', 'Please configure your mail.', 'Por favor, configure seu e-mail.', 'Por favor configura tu correo.'),
(811, 'error', 'Error', 'Erro', 'Error'),
(812, 'settings_not_found', 'No Setting Here', 'Nenhuma configuração aqui', 'Sin configuración aquí'),
(813, 'location_not_found', 'Location Not Found', 'Local não encontrado', 'Ubicación no encontrada'),
(814, 'fleets_not_found', 'Fleets Not Found', 'Frotas não encontradas', 'Flotas no encontradas'),
(815, 'image_not_found', 'Image Not Found', 'Imagem não encontrada', 'Imagen no encontrada'),
(816, 'no_trip_available', 'No Trip Available', 'Nenhuma viagem disponível', 'No hay viaje disponible'),
(817, 'required_field', 'Fields Are Required ', 'Os campos são obrigatórios', 'Los campos son obligatorios'),
(818, 'successfully_login', 'Successfully Loged In', 'Logado com sucesso', 'Inicio de sesión exitoso'),
(819, 'no_data_found', 'No Data Found', 'Nenhum dado encontrado', 'Datos no encontrados'),
(820, 'registrantion', 'Registration', 'Cadastro', 'Registro'),
(821, 'forgot_password', 'Forgot Password', 'Esqueceu a senha', 'Has olvidado tu contraseña'),
(822, 'register', 'Register', 'Registro', 'Registro'),
(823, 'location_details', 'Location Details', 'Detalhes do local', 'Detalles de ubicación'),
(824, 'journey_date', 'Journey Date', 'Data da viagem', 'Fecha del viaje'),
(825, 'select_start_point', 'Select Start Point', 'Selecione o ponto inicial', 'Seleccionar punto de inicio'),
(826, 'select_end_point', 'Select End Point', 'Selecionar ponto final', 'Seleccionar punto final'),
(827, 'select_fleet_type', 'Select Fleet Type', 'Selecione o tipo de frota', 'Seleccionar tipo de flota'),
(828, 'total_seats', 'Total Seats', 'Total de assentos', 'Asientos totales'),
(829, 'pickup_and_drop', 'Pickup and Drop', 'Pegar e largar', 'Recoger y dejar'),
(830, 'select_pickup_location', 'Select Pickup Location', 'Selecione o local de retirada', 'Seleccione la ubicación de recogida'),
(831, 'select_drop_location', 'Select Drop Location', 'Selecione o local de lançamento', 'Seleccione la ubicación de entrega'),
(832, 'tap_to_select_seat', 'Tap To Select Seat', 'Toque para selecionar o assento', 'Toque para seleccionar asiento'),
(833, 'seat_layout', 'Seat Layout', 'Disposição do assento', 'Disposición del asiento'),
(834, 'continue', 'Continue', 'Continuar', 'Continuar'),
(835, 'full_name', 'Full Name', 'Nome completo', 'Nombre completo'),
(836, 'email_address', 'Email Address', 'Endereço de email', 'Dirección de correo electrónico'),
(837, 'journery_details', 'Journey Details', 'Detalhes da jornada', 'Detalles del viaje'),
(838, 'select_your_payment_method', 'Select Your Payment Method', 'Selecione seu metodo de pagamento', 'Selecciona tu forma de pago'),
(839, 'bank_transfer', 'Bank Transfer', 'Transferência bancária', 'Transferencia bancaria'),
(840, 'cash_payment', 'Cash Payment', 'Pagamento em dinheiro', 'Pago en efectivo'),
(841, 'select_your_bank_first', 'Select Bank Name First', 'Selecione o nome do banco primeiro', 'Seleccione el nombre del banco primero'),
(842, 'transaction_id', 'Transaction Id', 'Código da transação', 'ID de transacción'),
(843, 'select_journey_date', 'Select Journey Date', 'Selecione a data da viagem', 'Seleccione la fecha del viaje'),
(844, 'seat_details', 'Seat Details ', 'Detalhes do assento', 'Detalles del asiento'),
(845, 'seat_n', 'Seat Number', 'Número do assento', 'Número de asiento'),
(846, 'last_name', 'Last Name', 'Sobrenome', 'Apellido'),
(847, 'confirm_password', 'Confirm Password', 'Confirme a Senha', 'Confirmar contraseña'),
(848, 'no_facilities_available', 'No facilities Available', 'Não há instalações disponíveis', 'No hay instalaciones disponibles'),
(849, 'must_put_email_pass', 'Must Put Email and Password', 'Deve Colocar Email e Senha', 'Debe poner correo electrónico y contraseña'),
(850, 'havn_nt_acc', 'Have nt Account', 'Não tem conta', 'No tengo cuenta'),
(851, 'email_and_password_d_match', 'Email And Password doesnt Match', 'E-mail e senha não correspondem', 'Correo electrónico y contraseña no coinciden'),
(852, 'must_put_email', 'Must Put Your Email', 'Deve colocar seu e-mail', 'Debe poner su correo electrónico'),
(853, 'select_pickup_and_drop_location', 'Select Pickup and Drop Location', 'Selecione o local de coleta e entrega', 'Seleccione la ubicación de recogida y entrega'),
(854, 'select_your_seat_properly', 'Select Your', 'Selecione seu', 'Selecciona tu'),
(855, 'check_term_and_condition', 'Check Terms and Condition', 'Verifique os termos e condições', 'Ver términos y condiciones'),
(856, 'check_your_mail', 'Please Check Your Mail', 'Por favor cheque seu e-mail', 'Por favor revise su correo'),
(857, 'plz_check_your_seat', 'Please Check Your Seat', 'Por favor, verifique seu assento', 'Por favor revise su asiento'),
(858, 'no_rout_available', 'No rout Available', 'Nenhuma rota disponível', 'No hay ruta Disponible'),
(859, 'your_booking_complete', 'Your Booking Successfully Completed', 'Sua reserva concluída com sucesso', 'Su reserva completada con éxito'),
(860, 'bank_booking_message', 'Check Bank Name,Transaction ID', 'Verifique o nome do banco, ID da transação', 'Verifique el nombre del banco, la identificación de la transacción'),
(861, 'seat_properly', 'Seat Properly', 'Assento corretamente', 'asiento correctamente'),
(862, 'must_put_atlest_seat_num', 'You Must put Atleast 1 seat on adult/child/Special', 'Você deve colocar pelo menos 1 assento em adulto/criança/especial', 'Debe poner al menos 1 asiento en adulto/niño/especial'),
(863, 'paypal_payment', 'Paypal Payment', 'Pagamento Paypal', 'Pago PayPal'),
(864, 'bank_information', 'Bank Information', 'Informação bancária', 'Información bancaria'),
(865, 'change_select_end_point', '& Change select end point', '& Alterar o ponto final seleccionado', '& Cambiar seleccionar punto final'),
(866, 'must_put_your_mail', 'You must put your email', 'Você deve colocar seu e-mail', 'Debes poner tu correo'),
(867, 'invalid_email_address', 'Invalid Email Address', 'Endereço de email invalido', 'Dirección de correo electrónico no válida'),
(868, 'plz_check_your_mail_to_reset_passw', 'Please Check Your email to reset Password', 'Por favor, verifique seu e-mail para redefinir a senha', 'Por favor revise su correo electrónico para restablecer la contraseña'),
(869, 'edit_profile', 'EDIT PROFILE', 'EDITAR PERFIL', 'EDITAR PERFIL'),
(870, 'select_profile_image', 'Select Profile Image', 'Selecione a imagem do perfil', 'Seleccionar imagen de perfil'),
(871, 'save_profile', 'Save Profile', 'Salvar perfil', 'Guardar perfil'),
(872, 'view_profile', 'View Profile', 'Ver perfil', 'Ver perfil'),
(873, 'developed_by_bdtask', 'Desarrollado por Criative Digital', 'Desarrollado por Criative Digital', 'Desarrollado por Criative Digital'),
(874, 'use_new_password_to_update_password', 'Use New Password to Update Password', 'Use a nova senha para atualizar a senha', 'Usar nueva contraseña para actualizar la contraseña'),
(875, 'pass_username_cant_be_empty', 'Password, First Name, Last Name cant empty. Use New password to update password , otherwise type old password', 'Senha, Nome, Sobrenome não podem esvaziar. Use Nova senha para atualizar a senha, caso contrário, digite a senha antiga', 'La contraseña, el nombre y el apellido no se pueden vaciar. Use Nueva contraseña para actualizar la contraseña; de lo contrario, escriba la contraseña anterior'),
(876, 'no', 'NO', 'NÃO', 'NO'),
(877, 'login_again', 'Data Save Successfully. Please Login Again', 'Dados salvos com sucesso. Por favor faça login novamente', 'Datos guardados con éxito. Inicie sesión de nuevo'),
(878, 'companies', 'Companies', 'Empresas', 'Compañías'),
(879, 'lane', 'Lane', 'Faixa', 'Carril'),
(880, 'nit', 'NIT', 'NIT', 'NIT'),
(881, 'driver_name_1', 'Driver name 1', 'Nome do motorista 1', 'Nombre del conductor 1'),
(882, 'driver_name_2', 'Driver name 2', 'Nome do motorista 2', 'Nombre del conductor 2'),
(883, 'sales', 'Sales', 'Vendas', 'Ventas'),
(884, 'ci', 'CI', 'CI', 'CI'),
(885, 'date_birth', 'Date birth', 'Data de nascimento', 'Fecha de nacimiento'),
(886, 'seat_type', 'Seat type', 'Tipo de assento', 'Tipo de asiento'),
(887, 'bill_details', 'Bill details', 'Detalhes da fatura', 'Detalles de la factura'),
(888, 'passenger', 'Passenger', 'Passageiro', 'Pasajero'),
(889, 'birth', 'Birth', 'Nascimento', 'Nacimiento'),
(890, 'copy_passenger_data', 'Copy passenger data', 'Copiar dados do passageiro', 'Copiar datos de pasajeros'),
(891, 'age', 'Age', 'Era', 'Años'),
(892, 'outs', 'Outs', 'Saídas', 'salidas'),
(893, 'ins', 'Ins', 'Entradas', 'Ins'),
(894, 'money_in_cash', 'Money in cash', 'Dinheiro em espécie', 'Pago en efectivo'),
(895, 'all', 'All', 'Tudo', 'Todos'),
(896, 'date_start', 'Date start', 'Data de início', 'fecha de inicio'),
(897, 'date_end', 'Date end', 'Data final', 'Fecha de finalización'),
(898, 'payment_method', 'Payment method', 'Forma de pagamento', 'Método de pago'),
(899, 'type_move', 'Type move', 'Tipo de movimento', 'Tipo mover'),
(900, 'check', 'Check', 'Verificar', 'Controlar'),
(901, 'transfer', 'Transfer', 'Transferir', 'Transferir'),
(902, 'in', 'In', 'Dentro', 'En'),
(903, 'out', 'Out', 'Fora', 'Afuera'),
(904, 'casher', 'Casher', 'Caixa', 'Cajero'),
(905, 'add_move', 'Add move', 'Adicionar movimento', 'Agregar movimiento'),
(906, 'open_cash', 'Open cash', 'Dinheiro em aberto', 'efectivo abierto'),
(907, 'id', 'ID', 'ID', 'ID'),
(908, 'close_cash', 'Close cash', 'Fechar Caixa', 'Cierre de Caja'),
(909, 'concept', 'Concept', 'Conceito', 'Concepto'),
(910, 'close_modal', 'Close', 'Perto', 'Cerca'),
(911, 'signature', 'Signature', 'Assinatura', 'Firma'),
(912, 'back_to_cash', 'Back to cash', 'Devolver dinheiro', 'volver al efectivo'),
(913, 'totals', 'Totals', 'Totais', 'Totales'),
(914, 'moves', 'Moves', 'Movimentos', 'Mueve'),
(915, 'travel_info', 'Travel info', 'Informações de viagem', 'Información de viaje'),
(916, 'seat', 'Seat', 'Assento', 'Asiento'),
(917, 'shipment', 'Shipment', 'Envio', 'Envío'),
(918, 'disembarkation', 'Disembarkation', 'Desembarque', 'Desembarco'),
(919, 'merchandise', 'Merchandise', 'Mercadoria', 'Mercancías'),
(920, 'create_merchandise', 'Create merchandise', 'Criar mercadoria', 'Crear mercancía'),
(921, 'courier', 'Courier', 'Correio', 'Envios'),
(922, 'origin', 'Origin', 'Origem', 'Origen'),
(923, 'destination', 'Destination', 'Destino', 'Destino'),
(924, 'courier_details', 'Courier details', 'Detalhes do correio', 'Detalles del mensajero'),
(925, 'package_details', 'Package details', 'Detalhes de embalagem', 'Detalles del paquete'),
(926, 'package_description', 'Package description', 'Descrição do pacote', 'Descripción del paquete'),
(927, 'price_per_kg', 'Price per kg', 'Preço por kg', 'Precio por kg'),
(928, 'weight', 'Weight', 'Peso', 'Peso'),
(929, 'recipient_details', 'Recipient details', 'Detalhes do destinatário', 'Detalles del destinatario'),
(930, 'billing_details', 'Billing details', 'Detalhes de faturamento', 'Detalles de facturación'),
(931, 'addresse', 'Addresse', 'Endereço', 'Dirección'),
(932, 'receipt', 'Receipt', 'Recibo', 'Recibo'),
(933, 'adjustment', 'Adjustment', 'Ajustamento', 'Ajustamiento'),
(934, 'package_price', 'Package price', 'Preço do pacote', 'Precio del paquete'),
(935, 'receipt', 'Receipt', 'Recibo', 'Recibo'),
(936, 'receipt_phone', 'Receipt phone', 'Telefone de recibo', 'Teléfono del destinatario'),
(937, 'billing_type', 'Billing type', 'Tipo de faturamento', 'tipo de facturación'),
(938, 'add_merchandise', 'Add', 'Adicionar', 'Agregar'),
(939, 'list_merchandise', 'List', 'Lista', 'Lista'),
(940, 'price_per_kg', 'Price per kg', 'Preço por kg', 'Precio por kg'),
(941, 'mark_as_delivered', 'Mark as delivered', 'Marcar como entregue', 'Marcar como entregado'),
(942, 'assign_to_trip', 'Assign to trip', 'Atribuir a viagem', 'Asignar a viaje'),
(943, 'view', 'View', 'Visão', 'Vista'),
(944, 'assign_merchandise_to_trip', 'Assign merchandise to trip', 'Atribuir mercadoria à viagem', 'Asignar mercancía a viaje'),
(945, 'select_trip', 'Select a trip', 'Selecione uma viagem', 'Seleccione un viaje'),
(946, 'current_status', 'Current status', 'Status atual', 'Estado actual'),
(947, 'start_trip', 'Start trip', 'Iniciar viagem', 'Iniciar viaje'),
(948, 'check_in', 'Check in', 'Check-in', 'Registrarse'),
(949, 'receipt_details', 'Receipt details', 'Detalhes do recibo', 'Detalles del recibo'),
(950, 'passengers', 'Passengers', 'Passageiros', 'Pasajeros'),
(951, 'trip1', 'Trip', 'Viagem', 'Viaje'),
(952, 'no_fleet', 'No fleet', 'Sem frota', 'Sin flota'),
(953, 'no_chasis', 'No chasis', 'Sem chassi', 'Sin chasis'),
(954, 'driver_ci_1', 'Driver CI 1', 'RG Motorista 1', 'CI Conductor 1'),
(955, 'driver_ci_2', 'Driver CI 2', 'RG Motorista 2', 'CI Conductor 2'),
(956, 'assistant_name_1', 'Assistant name 1', 'Nome do assistente 1', 'Asistente nombre 1'),
(957, 'assistant_name_2', 'Assistant name 2', 'Nome do assistente 2', 'Nombre del asistente 2'),
(958, 'assistant_ci_1', 'Assistant CI 1', 'RG Assistente 1', 'C.I. Asistente  1'),
(959, 'assistant_ci_2', 'Assistant CI 2', 'RG Assistente 2', 'C.I. Asistente  2'),
(960, 'assistant_ci_3', 'Assistant CI 3', 'RG Assistente 3', 'C.I. Asistente  3'),
(961, 'passengers_count', 'Passengers count', 'Contagem de passageiros', 'Conteo de pasajeros'),
(962, 'ticket_no', 'Ticket nro.', 'Bilhete nº.', 'Ticket nro.'),
(963, 'assistant_name_3', 'Assistant name 3', 'Nome do assistente 3', 'Nombre del asistente 3'),
(964, 'ticket_sold_by_company', 'Ticket sold by company', 'Bilhete vendido pela empresa', 'Ticket vendido por empresa'),
(965, 'check_ticket', 'Check ticket', 'Verificar bilhete', 'Ver Ticket'),
(966, 'close1', 'Close', 'Perto', 'Cierre'),
(967, 'enter_ticket_to_check', 'Enter ticket to check', 'Insira o ticket para verificar', 'Ingrese el Ticket para verificar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `merchandise`
--

CREATE TABLE `merchandise` (
  `id` int(11) NOT NULL,
  `trip_id` int(11) DEFAULT NULL,
  `courier_id` int(11) DEFAULT NULL,
  `package_origin` varchar(256) DEFAULT NULL,
  `package_destination` varchar(256) DEFAULT NULL,
  `package_description` text,
  `package_weight` varchar(256) DEFAULT NULL,
  `package_price` varchar(256) DEFAULT NULL,
  `receipt_nid` varchar(256) DEFAULT NULL,
  `receipt_name` varchar(256) DEFAULT NULL,
  `receipt_email` varchar(256) DEFAULT NULL,
  `receipt_phone` varchar(256) DEFAULT NULL,
  `receipt_date_birth` varchar(256) DEFAULT NULL,
  `billing_type` varchar(256) DEFAULT NULL,
  `billing_discount` varchar(256) DEFAULT NULL,
  `billing_total` varchar(256) DEFAULT NULL,
  `status` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `merchandise`
--

INSERT INTO `merchandise` (`id`, `trip_id`, `courier_id`, `package_origin`, `package_destination`, `package_description`, `package_weight`, `package_price`, `receipt_nid`, `receipt_name`, `receipt_email`, `receipt_phone`, `receipt_date_birth`, `billing_type`, `billing_discount`, `billing_total`, `status`) VALUES
(2, 1, 1, '1', '2', 'Test', '6', '12', '123tgf', 'Edw', 'ea@ecorp.com', '123', '1985-12-21', 'addresse', '2', '10', 'assigned'),
(3, NULL, 2, '1', '2', 'Caja de cosas', '0.8', '1.6', '123456', 'Nisaul enrolado ', 'nisadelgado@gmail.com', 'Q23445', '2022-09-23', 'addresse', '', '1.6', 'open'),
(4, NULL, 2, '1', '2', '', '15', '30', '010203', 'Camile Vitoria', 'camile@camile.com', '69149198', '2016-11-08', 'addresse', '', '30', 'open'),
(5, NULL, 2, '1', '2', 'Teste', '13', '26', '010203', 'Camile Vitoria', 'camile@camile.com', '6984217777', '', 'addresse', '', '26', 'open'),
(6, NULL, 2, '1', '2', 'Teste', '13', '26', '010203', 'Camile Vitoria', 'camile@camile.com', '6984217777', '2016-11-08', 'addresse', '', '26', 'open');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL,
  `sender_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=unseen, 1=seen, 2=delete',
  `receiver_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=unseen, 1=seen, 2=delete'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `module`
--

CREATE TABLE `module` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text,
  `image` varchar(255) NOT NULL,
  `directory` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `module`
--

INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES
(1, 'Human Resource', 'Human Resource information module', 'application/modules/hr/assets/images/thumbnail.jpg', 'hr', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `module_permission`
--

CREATE TABLE `module_permission` (
  `id` int(11) NOT NULL,
  `fk_module_id` int(11) NOT NULL,
  `fk_user_id` int(11) NOT NULL,
  `create` tinyint(1) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `update` tinyint(1) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ofr_offer`
--

CREATE TABLE `ofr_offer` (
  `offer_id` int(11) NOT NULL,
  `offer_name` varchar(100) DEFAULT NULL,
  `offer_start_date` date DEFAULT NULL,
  `offer_end_date` date DEFAULT NULL,
  `offer_code` varchar(50) DEFAULT NULL,
  `offer_discount` float DEFAULT NULL,
  `offer_terms` varchar(30) DEFAULT NULL,
  `offer_route_id` varchar(50) DEFAULT NULL,
  `offer_number` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment_informations`
--

CREATE TABLE `payment_informations` (
  `id` int(11) NOT NULL,
  `how_to_pay` text NOT NULL,
  `terms_and_condition` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `price_per_kg`
--

CREATE TABLE `price_per_kg` (
  `id` int(11) NOT NULL,
  `value` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `price_per_kg`
--

INSERT INTO `price_per_kg` (`id`, `value`) VALUES
(1, '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pri_price`
--

CREATE TABLE `pri_price` (
  `price_id` int(11) NOT NULL,
  `route_id` varchar(50) DEFAULT NULL,
  `vehicle_type_id` varchar(50) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `children_price` float NOT NULL,
  `special_price` float NOT NULL,
  `group_price_per_person` float DEFAULT '0',
  `group_size` int(15) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pri_price`
--

INSERT INTO `pri_price` (`price_id`, `route_id`, `vehicle_type_id`, `price`, `children_price`, `special_price`, `group_price_per_person`, `group_size`) VALUES
(1, '1', '1', 100, 80, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `booking_id` varchar(256) DEFAULT NULL,
  `seat_type` varchar(256) DEFAULT NULL,
  `seat_number` varchar(256) DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `ci` varchar(256) DEFAULT NULL,
  `phone` varchar(256) DEFAULT NULL,
  `birth` varchar(256) DEFAULT NULL,
  `embarked` varchar(256) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sales`
--

INSERT INTO `sales` (`id`, `booking_id`, `seat_type`, `seat_number`, `name`, `ci`, `phone`, `birth`, `embarked`) VALUES
(3, 'BKLCXZ5E', 'Adult', '4', 'Nisa Delgado', '24370873', '+58 246402701', '', '1'),
(4, 'BVUZ7OLA', 'Adult', '1', 'Erick Santos', '10756777', '71608981', '1986-11-11', '0'),
(5, 'BVUZ7OLA', 'Adult', ' 2', 'Camile Vitoria', '010203', '7777-0000', '2016-11-08', '0'),
(6, 'BN60ELPC', 'Adult', '9', 'Erick Santos', '10756777', '71608981', '1986-11-11', '0'),
(7, 'BN60ELPC', 'Adult', '9', 'Erick Santos', '10756777', '71608981', '1986-11-11', '0'),
(8, 'BN60ELPC', 'Adult', ' 10', 'Nisa Delgado', '', '04246402701', '1993-10-01', '0'),
(9, 'BN60ELPC', 'Adult', '9', 'Erick Santos', '10756777', '71608981', '1986-11-11', '0'),
(10, 'BN60ELPC', 'Adult', '9', 'Erick Santos', '10756777', '71608981', '1986-11-11', '0'),
(11, 'BN60ELPC', 'Adult', ' 10', 'Nisa Delgado', '', '04246402701', '2022-09-17', '0'),
(12, 'BN60ELPC', 'Adult', '9', 'Erick Santos', '10756777', '71608981', '1986-11-11', '0'),
(13, 'BN60ELPC', 'Adult', '9', 'Camile Vitoria', '010203', '71608981', '2016-11-08', '0'),
(14, 'BN60ELPC', 'Adult', ' 10', 'Nisa Delgado', '', '04246402701', '1993-10-01', '0'),
(15, 'BER6J5Z2', 'Adult', '2', 'Nisa Delgado', '24370873', '04246402701', '1993-10-01', '0'),
(16, 'BC2UZE8X', '', '', '', '', '', '', '0'),
(17, 'BBQIIL15', 'Adult', '1', 'Nisa Delgado', '24370873', '04246402701', '1993-10-01', '0'),
(18, 'BSUFGAJI', 'Adult', '3', 'Nisa Delgado', '24370873', '04246402701', '', '0'),
(19, 'B8O1TRF4', 'Adult', '3', 'Nisa Delgado', '24370873', '04246402701', '', '0'),
(20, 'BLKG0SCA', 'Adult', '3', 'Nisa Delgado', '24370873', '04246402701', '', '0'),
(21, 'BH1XZFAU', 'Child', '1', 'Erick Santos', '10756777', '71608981', '1986-11-11', '0'),
(22, 'BH1XZFAU', 'Child', ' 2', 'Camile Vitoria', '010203', '7777-0000', '2016-11-08', '0'),
(23, 'BH1XZFAU', 'Child', '1', 'Erick Santos', '10756777', '71608981', '1986-11-11', '0'),
(24, 'BH1XZFAU', 'Child', ' 2', 'Camile Vitoria', '010203', '7777-0000', '2016-11-08', '0'),
(25, 'B2RJLZZ3', 'Adult', '1', 'Erick Santos', '10756777', '71608981', '1986-09-20', '0'),
(26, 'B2RJLZZ3', 'Adult', ' 2', 'Daiane Marques', '10756777', '75602777', '1989-01-09', '0'),
(27, 'B1I7WCHD', 'Adult', '1', 'Erick Santos', '10756777', '71608981', '1986-11-11', '0'),
(28, 'B1I7WCHD', 'Adult', ' 2', 'Camile Vitoria', '010203', '7777-0000', '2016-11-08', '0'),
(29, 'BLL7MK6V', '', NULL, 'Nisa Delgado', '24370873', '0424642701', '1993-10-01', '0'),
(30, 'BLL7MK6V', 'Adult', NULL, 'Nisa Delgado', '24370873', '0424642701', '1993-10-01', '0'),
(31, 'BLL7MK6V', 'Adult', NULL, 'Nisa Delgado', '24370873', '0424642701', '1993-10-01', '0'),
(32, 'BJF1KA15', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(33, 'B02LKS0X', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(34, 'B7MYNYH3', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(35, 'B7MYNYH3', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(36, 'BLSUM8JQ', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(37, 'BLSUM8JQ', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(38, 'B8NLSPEK', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(39, 'B2Z0RULX', 'Adult', NULL, 'Erick Santos ', '10656777', '71608981 ', '2003-10-04', '0'),
(40, 'B2Z0RULX', 'Adult', NULL, 'Erick Santos ', '10656777', '71608981 ', '2003-10-04', '0'),
(41, 'B2Z0RULX', 'Adult', NULL, 'Erick Santos ', '10656777', '71608981 ', '2003-10-04', '0'),
(42, 'B4M0XE7D', 'Adult', NULL, 'Erick Santos', '10756777', '71608981', '1986-11-11', '0'),
(43, 'B4M0XE7D', 'Adult', NULL, 'Erick Santos', '10756777', '71608981', '1986-11-11', '0'),
(44, 'BDEKYDG0', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(45, 'BDEKYDG0', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(46, 'BAZPJECG', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(47, 'BAZPJECG', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(48, 'BAZPJECG', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(49, 'B5NEW0OV', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(50, 'B3UGV2PY', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(51, 'B3UGV2PY', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(52, 'BVLGO059', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(53, 'BBDF1ACZ', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(54, 'B307HX02', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(55, 'BL7P2TV2', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(56, 'BL7P2TV2', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(57, 'BDUGB0H5', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(58, 'B9ZEXQO1', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(59, 'BM9ELY86', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(60, 'BM9ELY86', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(61, 'BWERLF6M', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(62, 'BD47UD9K', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(63, 'BSPIMYTN', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(64, 'BS777URP', 'Adult', NULL, 'Erick Santos', '10756777', '71608981', '1986-11-11', '0'),
(66, 'B56IHLDL', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(67, 'BV3C3GNK', 'Adult', NULL, 'Erick Santos', '10756777', '71608981', '1986-11-11', '0'),
(68, 'BSA9KM1H', 'Adult', NULL, 'Erick Santos ', '10656777', '71608981 ', '2003-10-04', '0'),
(69, 'BSA9KM1H', 'Adult', NULL, 'Erick Santos ', '10656777', '71608981 ', '2003-10-04', '0'),
(70, 'BSA9KM1H', 'Adult', NULL, 'Erick Santos ', '10656777', '71608981 ', '2003-10-04', '0'),
(71, 'BSA9KM1H', 'Adult', NULL, 'Erick Santos ', '10656777', '71608981 ', '2003-10-04', '0'),
(72, 'BSA9KM1H', 'Adult', NULL, 'Erick Santos ', '10656777', '71608981 ', '2003-10-04', '0'),
(73, 'BSA9KM1H', 'Adult', NULL, 'Erick Santos ', '10656777', '71608981 ', '2003-10-04', '0'),
(74, 'BIYXORDJ', 'Adult', NULL, 'Erick Santos ', '10656777', '71608981 ', '2003-10-04', '0'),
(75, 'BIYXORDJ', 'Adult', NULL, 'Erick Santos ', '10656777', '71608981 ', '2003-10-04', '0'),
(76, 'BIYXORDJ', 'Adult', NULL, 'Erick Santos ', '10656777', '71608981 ', '2003-10-04', '0'),
(77, 'BIYXORDJ', 'Adult', NULL, 'Erick Santos ', '10656777', '71608981 ', '2003-10-04', '0'),
(78, 'BNDSNJP5', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(79, 'BNDSNJP5', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(80, 'BNDSNJP5', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(81, 'BIYXORDJ', 'Adult', NULL, 'Erick Santos ', '10656777', '71608981 ', '2003-10-04', '0'),
(82, 'BUXVG5KG', 'Adult', NULL, 'Erick Santos ', '10656777', '71608981 ', '2003-10-04', '0'),
(83, 'BQMFO7FW', 'Child', NULL, 'Camile vitória ', '123456', '75602777', '2016-11-08', '0'),
(84, 'BQMFO7FW', 'Child', NULL, 'Camile vitória ', '123456', '75602777', '2016-11-08', '0'),
(85, 'B84X8CGX', 'Adult', NULL, 'Camile vitória ', '123456', '75602777', '2016-11-08', '0'),
(87, 'BF0JLJOW', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(88, 'BM3N5V3H', 'Adult', NULL, 'Erick Santos ', '10656777', '71608981 ', '2003-10-04', '0'),
(89, 'BM3N5V3H', 'Adult', NULL, 'Erick Santos ', '10656777', '71608981 ', '2003-10-04', '0'),
(90, 'BIH3HA0L', 'Adult', NULL, 'Erick Santos ', '10656777', '71608981 ', '2003-10-04', '0'),
(91, 'BIH3HA0L', 'Adult', NULL, 'Erick Santos ', '10656777', '71608981 ', '2003-10-04', '0'),
(92, 'BIH3HA0L', 'Adult', NULL, 'Erick Santos ', '10656777', '71608981 ', '2003-10-04', '0'),
(93, 'BYRX6HBV', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(94, 'BYRX6HBV', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(95, 'BYRX6HBV', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(96, 'BYRX6HBV', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(97, 'BYRX6HBV', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(98, 'BYRX6HBV', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(99, 'BEU5BRSO', 'Adult', NULL, 'Erick Santos ', '10656777', '71608981 ', '2003-10-04', '0'),
(100, 'BDT7IUYH', 'Adult', NULL, 'Erick Santos ', '10656777', '71608981 ', '2003-10-04', '0'),
(101, 'BPACOH6V', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(102, 'BHYT99KR', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(103, 'BRG73NA8', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(104, 'BSSQCYV6', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(105, 'BYXG4CDD', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(106, 'BX663VI6', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(107, 'BQOG49LB', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01', '0'),
(108, 'BZ7FSBHX', 'Adult', NULL, 'Camile vitória ', '123456', '75602777', '2016-11-08', '0'),
(109, 'BZ7FSBHX', 'Adult', NULL, 'Camile vitória ', '123456', '75602777', '2016-11-08', '0'),
(110, 'BZ7FSBHX', 'Adult', NULL, 'Camile vitória ', '123456', '75602777', '2016-11-08', '0'),
(111, 'BZ7FSBHX', 'Adult', NULL, 'Camile vitória ', '123456', '75602777', '2016-11-08', '0'),
(112, 'BZ7FSBHX', 'Adult', NULL, 'Camile vitória ', '123456', '75602777', '2016-11-08', '0'),
(113, 'BZ7FSBHX', 'Adult', NULL, 'Camile vitória ', '123456', '75602777', '2016-11-08', '0'),
(114, 'BZ7FSBHX', 'Adult', NULL, 'Camile vitória ', '123456', '75602777', '2016-11-08', '0'),
(115, 'BZ7FSBHX', 'Adult', NULL, 'Camile vitória ', '123456', '75602777', '2016-11-08', '0'),
(116, 'BZ7FSBHX', 'Adult', NULL, 'Camile vitória ', '123456', '75602777', '2016-11-08', '0'),
(117, 'BZ7FSBHX', 'Adult', NULL, 'Camile vitória ', '123456', '75602777', '2016-11-08', '0'),
(118, 'BZ7FSBHX', 'Adult', NULL, 'Camile vitória ', '123456', '75602777', '2016-11-08', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sec_menu_item`
--

CREATE TABLE `sec_menu_item` (
  `menu_id` int(11) NOT NULL,
  `menu_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_url` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_menu` int(11) DEFAULT NULL,
  `is_report` tinyint(1) DEFAULT NULL,
  `createby` int(11) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sec_menu_item`
--

INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES
(69, 'account_list', 'account_form', 'account', NULL, 0, 2, '2018-07-16 00:00:00'),
(70, 'Enquiry', 'enquiry/view', 'enquiry', 0, 0, 2, '2018-07-16 00:00:00'),
(71, 'setting', 'enquiry/setting', 'enquiry', NULL, 0, 2, '2018-07-16 00:00:00'),
(72, 'agent_list', 'agent/agent_form', 'agent', NULL, 0, 2, '2018-07-16 00:00:00'),
(73, 'fitness_list', 'fitness/fit_form', 'fitness', NULL, 0, 2, '2018-07-16 00:00:00'),
(74, 'fitness_period', 'fitness/fit_period_form', 'fitness', NULL, 0, 2, '2018-07-16 00:00:00'),
(75, 'fleet_type', '', 'fleet', NULL, 0, 2, '2018-07-16 00:00:00'),
(76, 'add_fleet_type', 'fleet/type/form', 'fleet', 75, 0, 2, '2018-07-16 00:00:00'),
(77, 'fleet_type_list', 'fleet/type/list', 'fleet', 75, 0, 2, '2018-07-16 00:00:00'),
(78, 'fleet_facilities', '', 'fleet', NULL, 0, 2, '2018-07-16 00:00:00'),
(79, 'add_facilities', 'fleet/facilities/form', 'fleet', 78, 0, 2, '2018-07-16 00:00:00'),
(80, 'facilities_list', 'fleet/facilities/list', 'fleet', 78, 0, 2, '2018-07-16 00:00:00'),
(81, 'account_transaction', 'transaction_form', 'account', 0, 0, 2, '2018-07-16 00:00:00'),
(82, 'bank', '', 'account', 0, 0, 2, '2018-07-16 00:00:00'),
(83, 'bank_list', 'account/bank/list', 'account', 82, 0, 2, '2018-07-16 00:00:00'),
(84, 'add_bank', 'account/bank/form', 'account', 82, 0, 2, '2018-07-16 00:00:00'),
(85, 'offer_list', 'offer/offer_form', 'offer', 0, 0, 2, '2018-07-17 00:00:00'),
(86, 'price_list', 'price/price_form', 'price', 0, 0, 2, '2018-07-17 00:00:00'),
(87, 'booking', 'reports/booking/list', 'reports', 130, 0, 2, '2018-07-17 00:00:00'),
(88, 'assign', 'reports/assign/list', 'reports', 130, 0, 2, '2018-07-17 00:00:00'),
(89, 'passenger', '', 'ticket', 0, 0, 2, '2018-07-17 00:00:00'),
(90, 'add_passenger', 'ticket/passenger/form', 'ticket', 89, 0, 2, '2018-07-17 00:00:00'),
(91, 'passenger_list', 'ticket/passenger/list', 'ticket', 89, 0, 2, '2018-07-17 00:00:00'),
(92, 'booking_info', '', 'ticket', 0, 0, 2, '2018-07-17 00:00:00'),
(93, 'add_booking', 'ticket/booking/form', 'ticket', 92, 0, 2, '2018-07-17 00:00:00'),
(94, 'booking_list', 'ticket/booking/list', 'ticket', 92, 0, 2, '2018-07-17 00:00:00'),
(95, 'location', '', 'trip', 0, 0, 2, '2018-07-17 00:00:00'),
(96, 'add_location', 'trip/location/form', 'trip', 95, 0, 2, '2018-07-17 00:00:00'),
(97, 'location_list', 'trip/location/list', 'trip', 95, 0, 2, '2018-07-17 00:00:00'),
(98, 'route', '', 'trip', 0, 0, 2, '2018-07-17 00:00:00'),
(99, 'add_route', 'trip/route/form', 'trip', 98, 0, 2, '2018-07-17 00:00:00'),
(100, 'route_list', 'trip/route/list', 'trip', 98, 0, 2, '2018-07-17 00:00:00'),
(101, 'websites', '', 'website', NULL, 0, 2, '2018-07-18 00:00:00'),
(102, 'web_setting', '', 'website', 0, 0, 2, '2018-07-18 00:00:00'),
(103, 'email_configue', '', 'website', 0, 0, 2, '2018-07-18 00:00:00'),
(104, 'ticket_offer', '', 'website', 0, 0, 2, '2018-07-18 00:00:00'),
(105, 'payment_term_andcondition', '', 'ticket', 0, 0, 2, '2018-07-30 00:00:00'),
(108, 'unpaid_cash_booking_list', 'booking/unpaid_cashbooking', 'ticket', 0, 0, 2, '2018-07-30 00:00:00'),
(109, 'employee_type', 'type_view', 'hr', 0, 0, 2, '2018-07-30 00:00:00'),
(110, 'employee_list', 'viewhr', 'hr', 0, 0, 2, '2018-07-30 00:00:00'),
(111, 'fleet_registration', 'registration/form', 'fleet', 0, 0, 2, '2018-08-14 00:00:00'),
(112, 'add_registration', 'registration/form', 'fleet', 111, 0, 2, '2018-08-14 00:00:00'),
(113, 'registration_list', 'registration/list', 'fleet', 111, 0, 2, '2018-08-14 00:00:00'),
(114, 'ticket_confirmation', '', 'ticket', 0, 0, 2, '2018-08-14 00:00:00'),
(115, 'refund', '', 'ticket', 0, 0, 2, '2018-08-14 00:00:00'),
(116, 'add_refund', 'refund/form', 'ticket', 115, 0, 2, '2018-08-14 00:00:00'),
(117, 'refund_list', 'refund/list', 'ticket', 115, 0, 2, '2018-08-14 00:00:00'),
(118, 'shedules', '', 'trip', 0, 0, 2, '2018-08-14 00:00:00'),
(119, 'add_shedule', 'shedule/shedule_form', 'trip', 118, 0, 2, '2018-08-14 00:00:00'),
(120, 'shedule_list', 'shedule/list', 'trip', 118, 0, 2, '2018-08-14 00:00:00'),
(121, 'trips', '', 'trip', 0, 0, 2, '2018-08-14 00:00:00'),
(122, 'add_trip', 'trip/form', 'trip', 121, 0, 2, '2018-08-14 00:00:00'),
(123, 'trip_list', 'trip/list', 'trip', 121, 0, 2, '2018-08-14 00:00:00'),
(124, 'assigns', '', 'trip', 0, 0, 2, '2018-08-14 00:00:00'),
(125, 'add_assign', 'assign/form', 'trip', 124, 0, 2, '2018-08-14 00:00:00'),
(126, 'assign_list', 'assign/list', 'trip', 124, 0, 2, '2018-08-14 00:00:00'),
(127, 'close', '', 'trip', 0, 0, 2, '2018-08-14 00:00:00'),
(128, 'close_list', 'close/list', 'trip', 127, 0, 2, '2018-08-14 00:00:00'),
(129, 'account', '', 'account', 0, 0, 2, '2018-08-14 00:00:00'),
(130, 'reports', '', 'reports', 0, 0, 2, '2018-09-11 00:00:00'),
(131, 'agent_log', 'agent/agent_details', 'reports', 130, 0, 2, '2018-09-11 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sec_role_permission`
--

CREATE TABLE `sec_role_permission` (
  `id` bigint(20) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `can_access` tinyint(1) NOT NULL,
  `can_create` tinyint(1) NOT NULL,
  `can_edit` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `createby` int(11) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sec_role_permission`
--

INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES
(624, 1, 69, 1, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(625, 1, 81, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(626, 1, 82, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(627, 1, 83, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(628, 1, 84, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(629, 1, 129, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(630, 1, 72, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(631, 1, 70, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(632, 1, 71, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(633, 1, 73, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(634, 1, 74, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(635, 1, 75, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(636, 1, 76, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(637, 1, 77, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(638, 1, 78, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(639, 1, 79, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(640, 1, 80, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(641, 1, 111, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(642, 1, 112, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(643, 1, 113, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(644, 1, 109, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(645, 1, 110, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(646, 1, 85, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(647, 1, 86, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(648, 1, 87, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(649, 1, 88, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(650, 1, 89, 1, 1, 1, 1, 2, '2018-09-06 11:03:51'),
(651, 1, 90, 1, 1, 1, 1, 2, '2018-09-06 11:03:51'),
(652, 1, 91, 1, 1, 1, 1, 2, '2018-09-06 11:03:51'),
(653, 1, 92, 1, 1, 1, 1, 2, '2018-09-06 11:03:51'),
(654, 1, 93, 1, 1, 0, 0, 2, '2018-09-06 11:03:51'),
(655, 1, 94, 1, 1, 1, 0, 2, '2018-09-06 11:03:51'),
(656, 1, 105, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(657, 1, 106, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(658, 1, 107, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(659, 1, 108, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(660, 1, 114, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(661, 1, 115, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(662, 1, 116, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(663, 1, 117, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(664, 1, 95, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(665, 1, 96, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(666, 1, 97, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(667, 1, 98, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(668, 1, 99, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(669, 1, 100, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(670, 1, 118, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(671, 1, 119, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(672, 1, 120, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(673, 1, 121, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(674, 1, 122, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(675, 1, 123, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(676, 1, 124, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(677, 1, 125, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(678, 1, 126, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(679, 1, 127, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(680, 1, 128, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(681, 1, 101, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(682, 1, 102, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(683, 1, 103, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(684, 1, 104, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(1226, 2, 69, 1, 0, 0, 0, 1, '2022-09-14 02:04:56'),
(1227, 2, 81, 1, 1, 1, 0, 1, '2022-09-14 02:04:56'),
(1228, 2, 82, 1, 1, 1, 0, 1, '2022-09-14 02:04:56'),
(1229, 2, 83, 1, 1, 0, 0, 1, '2022-09-14 02:04:56'),
(1230, 2, 84, 1, 1, 0, 0, 1, '2022-09-14 02:04:56'),
(1231, 2, 129, 1, 0, 0, 0, 1, '2022-09-14 02:04:56'),
(1232, 2, 72, 1, 0, 0, 0, 1, '2022-09-14 02:04:56'),
(1233, 2, 70, 1, 1, 1, 0, 1, '2022-09-14 02:04:56'),
(1234, 2, 71, 0, 1, 0, 0, 1, '2022-09-14 02:04:56'),
(1235, 2, 73, 1, 0, 0, 0, 1, '2022-09-14 02:04:56'),
(1236, 2, 74, 1, 0, 0, 0, 1, '2022-09-14 02:04:56'),
(1237, 2, 75, 1, 0, 0, 0, 1, '2022-09-14 02:04:56'),
(1238, 2, 76, 1, 0, 0, 0, 1, '2022-09-14 02:04:56'),
(1239, 2, 77, 1, 0, 0, 0, 1, '2022-09-14 02:04:56'),
(1240, 2, 78, 1, 0, 0, 0, 1, '2022-09-14 02:04:56'),
(1241, 2, 79, 1, 0, 0, 0, 1, '2022-09-14 02:04:56'),
(1242, 2, 80, 1, 0, 0, 0, 1, '2022-09-14 02:04:56'),
(1243, 2, 111, 1, 0, 0, 0, 1, '2022-09-14 02:04:56'),
(1244, 2, 112, 1, 0, 0, 0, 1, '2022-09-14 02:04:56'),
(1245, 2, 113, 1, 0, 0, 0, 1, '2022-09-14 02:04:56'),
(1246, 2, 109, 1, 0, 0, 0, 1, '2022-09-14 02:04:56'),
(1247, 2, 110, 1, 0, 0, 0, 1, '2022-09-14 02:04:56'),
(1248, 2, 85, 1, 0, 0, 0, 1, '2022-09-14 02:04:56'),
(1249, 2, 86, 1, 0, 1, 0, 1, '2022-09-14 02:04:56'),
(1250, 2, 87, 1, 0, 0, 0, 1, '2022-09-14 02:04:56'),
(1251, 2, 88, 1, 0, 0, 0, 1, '2022-09-14 02:04:56'),
(1252, 2, 130, 1, 1, 1, 1, 1, '2022-09-14 02:04:56'),
(1253, 2, 131, 1, 0, 1, 0, 1, '2022-09-14 02:04:56'),
(1254, 2, 89, 1, 1, 0, 0, 1, '2022-09-14 02:04:56'),
(1255, 2, 90, 1, 1, 0, 0, 1, '2022-09-14 02:04:56'),
(1256, 2, 91, 1, 1, 0, 0, 1, '2022-09-14 02:04:56'),
(1257, 2, 92, 1, 1, 0, 0, 1, '2022-09-14 02:04:56'),
(1258, 2, 93, 1, 1, 1, 1, 1, '2022-09-14 02:04:56'),
(1259, 2, 94, 1, 1, 1, 1, 1, '2022-09-14 02:04:56'),
(1260, 2, 105, 1, 1, 1, 0, 1, '2022-09-14 02:04:56'),
(1261, 2, 108, 1, 1, 1, 0, 1, '2022-09-14 02:04:56'),
(1262, 2, 114, 1, 1, 1, 0, 1, '2022-09-14 02:04:56'),
(1263, 2, 115, 1, 1, 1, 0, 1, '2022-09-14 02:04:56'),
(1264, 2, 116, 1, 1, 1, 0, 1, '2022-09-14 02:04:56'),
(1265, 2, 117, 1, 1, 1, 0, 1, '2022-09-14 02:04:56'),
(1266, 2, 95, 1, 1, 0, 0, 1, '2022-09-14 02:04:56'),
(1267, 2, 96, 1, 1, 0, 0, 1, '2022-09-14 02:04:56'),
(1268, 2, 97, 1, 1, 0, 0, 1, '2022-09-14 02:04:56'),
(1269, 2, 98, 1, 1, 0, 0, 1, '2022-09-14 02:04:56'),
(1270, 2, 99, 1, 1, 0, 0, 1, '2022-09-14 02:04:56'),
(1271, 2, 100, 1, 1, 0, 0, 1, '2022-09-14 02:04:56'),
(1272, 2, 118, 1, 1, 0, 0, 1, '2022-09-14 02:04:56'),
(1273, 2, 119, 1, 1, 0, 0, 1, '2022-09-14 02:04:56'),
(1274, 2, 120, 1, 1, 0, 0, 1, '2022-09-14 02:04:56'),
(1275, 2, 121, 1, 1, 0, 0, 1, '2022-09-14 02:04:56'),
(1276, 2, 122, 1, 1, 0, 0, 1, '2022-09-14 02:04:56'),
(1277, 2, 123, 1, 1, 0, 0, 1, '2022-09-14 02:04:56'),
(1278, 2, 124, 1, 1, 0, 0, 1, '2022-09-14 02:04:56'),
(1279, 2, 125, 1, 1, 0, 0, 1, '2022-09-14 02:04:56'),
(1280, 2, 126, 1, 1, 0, 0, 1, '2022-09-14 02:04:56'),
(1281, 2, 127, 1, 1, 0, 0, 1, '2022-09-14 02:04:56'),
(1282, 2, 128, 1, 1, 0, 0, 1, '2022-09-14 02:04:56'),
(1283, 2, 101, 1, 1, 0, 0, 1, '2022-09-14 02:04:56'),
(1284, 2, 102, 1, 1, 0, 0, 1, '2022-09-14 02:04:56'),
(1285, 2, 103, 1, 1, 0, 0, 1, '2022-09-14 02:04:56'),
(1286, 2, 104, 1, 1, 0, 0, 1, '2022-09-14 02:04:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sec_role_tbl`
--

CREATE TABLE `sec_role_tbl` (
  `role_id` int(11) NOT NULL,
  `role_name` text NOT NULL,
  `role_description` text NOT NULL,
  `create_by` int(11) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `role_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sec_role_tbl`
--

INSERT INTO `sec_role_tbl` (`role_id`, `role_name`, `role_description`, `create_by`, `date_time`, `role_status`) VALUES
(1, 'Test Role', 'This is test role', 2, '2018-07-16 02:49:29', 1),
(2, ' Rol Agente', 'Agente', 2, '2018-08-18 11:48:57', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sec_user_access_tbl`
--

CREATE TABLE `sec_user_access_tbl` (
  `role_acc_id` int(11) NOT NULL,
  `fk_role_id` int(11) NOT NULL,
  `fk_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sec_user_access_tbl`
--

INSERT INTO `sec_user_access_tbl` (`role_acc_id`, `fk_role_id`, `fk_user_id`) VALUES
(1, 1, 3),
(2, 1, 1),
(3, 2, 4),
(4, 2, 5),
(5, 2, 8),
(6, 2, 9),
(7, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `address` text,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `site_align` varchar(50) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `setting`
--

INSERT INTO `setting` (`id`, `title`, `address`, `email`, `phone`, `logo`, `favicon`, `language`, `site_align`, `footer_text`) VALUES
(1, 'Grupo Unebus', 'ANDRES MANSO', 'CONTACTO@CRIATIVEDIGITAL.COM', '+59171608981', 'assets/img/icons/67a54c443752b05774d1c8f2a07b4564.png', 'assets/img/icons/59c0dd3ff93f83d957226fd026351962.png', 'portuguese', 'LTR', '©2022 Criative Digital');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shedule`
--

CREATE TABLE `shedule` (
  `shedule_id` int(11) NOT NULL,
  `start` varchar(20) NOT NULL,
  `end` varchar(20) NOT NULL,
  `duration` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `shedule`
--

INSERT INTO `shedule` (`shedule_id`, `start`, `end`, `duration`) VALUES
(1, '20:30:00', '06:00:00', 14),
(2, '19:00:00', '07:00:00', -12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `synchronizer_setting`
--

CREATE TABLE `synchronizer_setting` (
  `id` int(11) NOT NULL,
  `hostname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `port` varchar(10) NOT NULL,
  `debug` varchar(10) NOT NULL,
  `project_root` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket_notification`
--

CREATE TABLE `ticket_notification` (
  `id` int(11) NOT NULL,
  `b_idno` varchar(30) NOT NULL,
  `passenger_id` varchar(30) NOT NULL,
  `no_tkts` int(11) NOT NULL,
  `amount` float NOT NULL,
  `route_id` varchar(30) NOT NULL,
  `trip_id` varchar(20) NOT NULL,
  `booking_time` datetime NOT NULL,
  `is_seen` int(11) NOT NULL DEFAULT '0',
  `admin_seen` int(11) NOT NULL DEFAULT '0',
  `booked_by` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tkt_booking`
--

CREATE TABLE `tkt_booking` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_no` varchar(20) DEFAULT NULL,
  `trip_id_no` varchar(20) DEFAULT NULL,
  `tkt_passenger_id_no` varchar(20) DEFAULT NULL,
  `trip_route_id` int(11) DEFAULT NULL,
  `pickup_trip_location` varchar(50) DEFAULT NULL,
  `drop_trip_location` varchar(50) DEFAULT NULL,
  `request_facilities` text,
  `price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `adult` int(11) DEFAULT '0',
  `child` int(11) DEFAULT '0',
  `special` int(11) DEFAULT '0',
  `total_seat` int(11) DEFAULT NULL,
  `seat_numbers` varchar(255) DEFAULT NULL,
  `offer_code` varchar(255) DEFAULT NULL,
  `tkt_refund_id` int(11) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `booking_date` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `booking_type` varchar(20) DEFAULT NULL,
  `payment_status` varchar(20) DEFAULT NULL,
  `booked_by` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tkt_booking`
--

INSERT INTO `tkt_booking` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `booking_type`, `payment_status`, `booked_by`) VALUES
(1, 'B56IHLDL', '1', 'PJCFGQHF', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '2, ', NULL, NULL, 1, '2022-10-17 11:18:08', '2022-10-14 11:18:08', 'Cash', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tkt_feedback`
--

CREATE TABLE `tkt_feedback` (
  `id` int(11) NOT NULL,
  `tkt_booking_id_no` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `comment` text,
  `rating` tinyint(1) DEFAULT '1',
  `add_to_website` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tkt_passenger`
--

CREATE TABLE `tkt_passenger` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_no` varchar(20) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `nid` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `password_reset_token` varchar(20) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `address_line_1` varchar(255) DEFAULT NULL,
  `address_line_2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `date_birth` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tkt_passenger`
--

INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`, `date_birth`) VALUES
(1, 'PWX3YAMT', 'Erick', 'Santos', NULL, '71608981', '10756000', 'admin@admin.com', 'e10adc3949ba59abbe56e057f20f883e', '', NULL, NULL, 'bus', NULL, NULL, NULL, NULL, 1, ''),
(5, 'PQ5GFQOX', 'Nisa', 'Delgado', NULL, '0424642701', '24370873', 'nisadelgado@livee.com', '202cb962ac59075b964b07152d234b70', '', NULL, NULL, 'Nueva Via', NULL, NULL, NULL, NULL, 1, '1993-10-01'),
(10, 'PDA9SUP6', 'Camile', 'Valeria', NULL, '71608981', '10756777', 'dr.ericksantos@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', NULL, NULL, 'Av Bush 590', NULL, NULL, NULL, NULL, 1, NULL),
(11, 'PXG0XODG', 'Erick Santos ', 'Santos ', NULL, '+59175602777', '12345', 'contacto@criativedigital.com', 'e10adc3949ba59abbe56e057f20f883e', '', NULL, NULL, 'Rua Castelo Branco, 773', NULL, NULL, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tkt_referal`
--

CREATE TABLE `tkt_referal` (
  `id` int(11) NOT NULL,
  `tkt_passenger_id_no` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tkt_refund`
--

CREATE TABLE `tkt_refund` (
  `id` int(11) UNSIGNED NOT NULL,
  `tkt_booking_id_no` varchar(20) DEFAULT NULL,
  `tkt_passenger_id_no` varchar(20) DEFAULT NULL,
  `cancelation_fees` float DEFAULT NULL,
  `causes` text,
  `comment` text,
  `refund_by_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trip`
--

CREATE TABLE `trip` (
  `trip_id` int(11) NOT NULL,
  `trip_title` varchar(200) NOT NULL,
  `type` int(11) NOT NULL,
  `route` int(11) NOT NULL,
  `shedule_id` int(11) NOT NULL,
  `weekend` varchar(50) DEFAULT '0',
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `trip`
--

INSERT INTO `trip` (`trip_id`, `trip_title`, `type`, `route`, `shedule_id`, `weekend`, `status`) VALUES
(1, 'Leito -Santa Cruz x La Paz-20:30:00 - 06:00:00', 1, 1, 1, '1,2,3,4,5,6', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trip_assign`
--

CREATE TABLE `trip_assign` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_no` varchar(20) DEFAULT NULL,
  `fleet_registration_id` int(11) DEFAULT NULL,
  `trip` varchar(30) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `assign_time` datetime NOT NULL,
  `driver1_id` int(11) DEFAULT NULL,
  `driver2_id` int(11) DEFAULT NULL,
  `assistant_1` varchar(30) DEFAULT NULL,
  `assistant_2` varchar(30) DEFAULT NULL,
  `assistant_3` varchar(30) DEFAULT NULL,
  `sold_ticket` float NOT NULL DEFAULT '0',
  `total_income` float DEFAULT '0',
  `total_expense` float DEFAULT '0',
  `total_fuel` float DEFAULT '0',
  `trip_comment` text,
  `closed_by_id` int(11) DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `check_in` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `trip_assign`
--

INSERT INTO `trip_assign` (`id`, `id_no`, `fleet_registration_id`, `trip`, `company_id`, `assign_time`, `driver1_id`, `driver2_id`, `assistant_1`, `assistant_2`, `assistant_3`, `sold_ticket`, `total_income`, `total_expense`, `total_fuel`, `trip_comment`, `closed_by_id`, `date`, `status`, `check_in`) VALUES
(1, '220911044254', 1, '1', 1, '2022-09-13 13:46:00', 1, 1, '2', '', '', 10, 100, 50, 10, 'ok', 1, '2022-09-21 00:28:00', 1, NULL),
(2, '220914031233', 2, '1', 1, '2022-09-15 20:30:00', 3, 4, '5', '5', '', 0, 0, 0, 0, NULL, 0, '0000-00-00 00:00:00', 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trip_location`
--

CREATE TABLE `trip_location` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `google_map` text,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `trip_location`
--

INSERT INTO `trip_location` (`id`, `name`, `description`, `google_map`, `image`, `status`) VALUES
(1, 'Santa Cruz', 'Santa Cruz', '', './application/modules/trip/assets/images/location/448fbbfb806b0c5ee5fdb2d12467ee1a.png', 1),
(2, 'La Paz', 'La Paz', '', '', 1),
(3, 'CBBA', 'CBBA', '', '', 1),
(4, 'Puerto Quijaro', 'Fronteira de Brasil', '', '', 1),
(5, 'Parada 01', 'Parada 01', '', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trip_route`
--

CREATE TABLE `trip_route` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start_point` varchar(255) DEFAULT NULL,
  `end_point` varchar(255) DEFAULT NULL,
  `stoppage_points` varchar(355) DEFAULT NULL COMMENT 'Location ids',
  `distance` varchar(30) DEFAULT NULL,
  `approximate_time` varchar(100) DEFAULT NULL,
  `children_seat` int(11) NOT NULL DEFAULT '0',
  `special_seat` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `current_status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `trip_route`
--

INSERT INTO `trip_route` (`id`, `name`, `start_point`, `end_point`, `stoppage_points`, `distance`, `approximate_time`, `children_seat`, `special_seat`, `status`, `current_status`) VALUES
(1, 'Santa Cruz x La Paz', '1', '2', 'Cochabamba,Santa Cruz,La Paz', '700', '8', 0, 0, 1, 'No started'),
(2, 'Santa Cruz x Puerto Quijaro', '1', '4', 'Parada 01,Santa Cruz,Puerto Quijaro', '760', '7:00 Hrs', 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `about` text,
  `email` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `password_reset_token` varchar(20) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_logout` datetime DEFAULT NULL,
  `ip_address` varchar(14) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_admin` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`) VALUES
(1, 'Admin', NULL, NULL, 'admin@admin.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '2022-11-20 14:46:02', '2022-11-17 19:25:12', '186.121.195.12', 1, 1),
(2, 'Erick', 'Santos', NULL, 'criativedigitalbo@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, './application/modules/agent/assets/images/5ccf0a54b6f45f3cc4862a339556737a.png', '2022-09-11 06:26:29', NULL, '186.121.195.82', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_app`
--

CREATE TABLE `users_app` (
  `id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `role` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users_app`
--

INSERT INTO `users_app` (`id`, `name`, `email`, `password`, `role`) VALUES
(1, 'Nisa Delgado', 'user@user.com', '123', 'user'),
(2, 'Erick Santos', 'admin@admin.com', '123', 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ws_booking_history`
--

CREATE TABLE `ws_booking_history` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_no` varchar(20) DEFAULT NULL,
  `trip_id_no` varchar(20) DEFAULT NULL,
  `tkt_passenger_id_no` varchar(20) DEFAULT NULL,
  `trip_route_id` int(11) DEFAULT NULL,
  `pickup_trip_location` varchar(50) DEFAULT NULL,
  `drop_trip_location` varchar(50) DEFAULT NULL,
  `request_facilities` text,
  `price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `adult` int(11) NOT NULL,
  `child` int(11) NOT NULL,
  `special` int(11) NOT NULL,
  `total_seat` int(11) DEFAULT NULL,
  `seat_numbers` varchar(255) DEFAULT NULL,
  `offer_code` varchar(255) DEFAULT NULL,
  `tkt_refund_id` int(11) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `booking_date` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `dashboard` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ws_booking_history`
--

INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`, `dashboard`) VALUES
(1, 'BI5VGB8N', '1', 'PNXRDS6V', 1, 'Santa', 'La', 'CBBA, La Paz, Santa Cruz, ', 180, 0, 1, 1, 0, 2, '1, 2, ', '', NULL, NULL, '2022-09-10 19:06:53', '2022-09-10 19:06:53', 0, 0),
(2, 'BTCZITW6', '1', 'PTKBPOBB', 1, 'Santa', 'La', 'CBBA, La Paz, Santa Cruz, ', 180, 0, 1, 1, 0, 2, '1, 2, ', '', NULL, NULL, '2022-09-10 19:09:40', '2022-09-10 19:09:40', 0, 0),
(3, 'B5QV04G0', '1', 'P1FK7GEA', 1, 'Santa', 'La', 'CBBA, La Paz, Santa Cruz, ', 180, 0, 1, 1, 0, 2, '1, 2, ', '', NULL, NULL, '2022-09-10 19:10:25', '2022-09-10 19:10:25', 0, 0),
(4, 'BPSSM99U', '1', 'PHX0DUXF', 1, 'Santa', 'La', '', 180, 0, 1, 1, 0, 2, '1, 2, ', '', NULL, NULL, '2022-09-10 19:11:31', '2022-09-10 19:11:31', 0, 0),
(5, 'BAW1V8C5', '1', 'PWX3YAMT', 1, 'Santa', 'La', 'CBBA, La Paz, Santa Cruz, ', 180, 0, 1, 1, 0, 2, '1, 2, ', '', NULL, NULL, '2022-09-10 19:12:17', '2022-09-10 19:12:17', 0, 0),
(6, 'BRAHHI1F', '1', 'PYA5AGMX', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '4, 5, ', '', NULL, NULL, '2022-09-10 19:15:12', '2022-09-10 19:15:12', 0, 0),
(7, 'BJTG3I0A', '1', 'P1OIB79X', 1, 'Santa', 'La', '', 180, 0, 1, 1, 0, 2, '1, 2, ', '', NULL, NULL, '1970-01-01 11:59:21', '2022-09-14 11:59:21', 0, 0),
(8, 'B61VIOYR', '1', 'P2FJNFBH', 1, 'Santa', 'Cochabamba', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, NULL, '2022-09-11 12:34:07', '2022-09-14 12:34:07', 0, 0),
(9, 'BEB6UDAB', '1', 'PIY74QMW', 1, 'Santa', 'La', '', 80, 0, 0, 1, 0, 1, '8, ', '', NULL, NULL, '2022-09-14 12:45:23', '2022-09-14 12:45:23', 0, 0),
(10, 'BLCJD4FU', '1', 'P412LSRQ', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '1, 2, ', '', NULL, NULL, '2022-09-14 12:47:15', '2022-09-14 12:47:15', 0, 0),
(11, 'BX83WDAJ', '1', 'PGEN7F0Q', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '3, 6, ', '', NULL, NULL, '2022-09-16 11:48:21', '2022-09-16 11:48:21', 0, 0),
(12, 'BDKI7S49', '1', 'PDNCRFKG', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '7, 8, ', '', NULL, NULL, '2022-09-16 11:56:35', '2022-09-16 11:56:35', 0, 0),
(13, 'B6167V5D', '1', 'P6UWTI87', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '4, 5, ', '', NULL, NULL, '2022-09-16 12:02:41', '2022-09-16 12:02:41', 0, 0),
(14, 'BHUYQEB8', '1', 'PUGTCHUL', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '4, 5, ', '', NULL, NULL, '2022-09-16 12:05:06', '2022-09-16 12:05:06', 0, 0),
(15, 'B6CFRBNE', '1', 'PCU7C4NF', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '5, 6, ', '', NULL, NULL, '2022-09-16 12:06:15', '2022-09-16 12:06:15', 0, 0),
(16, 'BP7YO05F', '1', 'P78Q731Q', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '3, 6, ', '', NULL, NULL, '2022-09-16 12:06:30', '2022-09-16 12:06:30', 0, 0),
(17, 'BRCE5NCY', '1', 'PBM2P6IJ', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '5, 8, ', '', NULL, NULL, '2022-09-16 12:08:01', '2022-09-16 12:08:01', 0, 0),
(18, 'B16U6TZP', '1', 'PA69B7Y0', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '3, 6, ', '', NULL, NULL, '2022-09-16 12:10:15', '2022-09-16 12:10:15', 0, 0),
(19, 'BX0WFWNS', '1', 'PUZ434V7', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '5, 8, ', '', NULL, NULL, '2022-09-16 12:10:32', '2022-09-16 12:10:32', 0, 0),
(20, 'B5Z3183D', '1', 'PDC80RTL', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '8, ', '', NULL, NULL, '2022-09-16 12:13:35', '2022-09-16 12:13:35', 0, 0),
(21, 'BRC8SAW4', '1', 'PGKUZSIJ', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '5, 8, ', '', NULL, NULL, '2022-09-16 12:16:11', '2022-09-16 12:16:11', 0, 0),
(22, 'BHTVG98Q', '1', 'PFIIOL26', 1, 'Santa', 'La', '', 180, 0, 1, 1, 0, 2, '5, 8, ', '', NULL, NULL, '2022-09-16 12:35:08', '2022-09-16 12:35:08', 0, 0),
(23, 'BSNFJXR6', '1', 'PZZQBB6J', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '5, 8, ', '', NULL, NULL, '2022-09-16 12:37:04', '2022-09-16 12:37:04', 0, 0),
(24, 'BX803T02', '1', 'PQ2PL8MX', 1, 'Santa', 'La', '', 180, 0, 1, 1, 0, 2, '2, 5, ', '', NULL, NULL, '2022-09-16 12:38:33', '2022-09-16 12:38:33', 0, 0),
(25, 'BI5GLLHL', '1', 'P0BLJILT', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '7, 8, ', '', NULL, NULL, '2022-09-14 12:57:07', '2022-09-16 12:57:07', 0, 0),
(26, 'BUKX88CS', '1', 'PGAMUWNC', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '3, 6, ', '', NULL, NULL, '2022-09-16 14:25:23', '2022-09-16 14:25:23', 0, 0),
(27, 'BFCN580A', '1', 'P6MYPK99', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '2, 5, ', '', NULL, NULL, '2022-09-16 14:26:06', '2022-09-16 14:26:06', 0, 0),
(28, 'BQO5YVUT', '1', 'PC8VNVBX', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '3, 6, ', '', NULL, NULL, '2022-09-16 14:37:07', '2022-09-16 14:37:07', 0, 0),
(29, 'BRQGKK3Y', '1', 'PV1QK79R', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '3, 6, ', '', NULL, NULL, '2022-09-16 14:42:17', '2022-09-16 14:42:17', 0, 0),
(30, 'BLIJ8VAH', '1', 'PPD1IA7T', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '3, 6, ', '', NULL, NULL, '2022-09-16 14:43:41', '2022-09-16 14:43:41', 0, 0),
(31, 'BT7M2T9Q', '1', 'PI8ZK7IQ', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '5, 8, ', '', NULL, NULL, '2022-09-16 14:49:16', '2022-09-16 14:49:16', 0, 0),
(32, 'BKWIK690', '1', 'PZM2CKD5', 1, 'La', 'Santa', '', 200, 0, 2, 0, 0, 2, '3, 6, ', '', NULL, NULL, '2022-09-16 14:51:50', '2022-09-16 14:51:50', 0, 0),
(33, 'BXCARYNC', '1', 'PXQI27R5', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '2, 5, ', '', NULL, NULL, '2022-09-16 14:52:56', '2022-09-16 14:52:56', 0, 0),
(34, 'BKCCQKC7', '1', 'P4UMK3HQ', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '6, ', '', NULL, NULL, '2022-09-16 14:53:52', '2022-09-16 14:53:52', 0, 0),
(35, 'BWK8H9W7', '1', 'PDRUSNDE', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '2, ', '', NULL, NULL, '2022-09-16 14:55:12', '2022-09-16 14:55:12', 0, 0),
(36, 'BIWWJFNB', '1', 'P5HF1XBZ', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '3, 6, ', '', NULL, NULL, '2022-09-16 14:56:50', '2022-09-16 14:56:50', 0, 0),
(37, 'B6SZV2GO', '1', 'P5ZCZAMI', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '5, ', '', NULL, NULL, '2022-09-16 14:57:34', '2022-09-16 14:57:34', 0, 0),
(38, 'B1XNMC3B', '1', 'PSI8DAN8', 1, 'Santa', 'La', 'CBBA, La Paz, Santa Cruz, ', 80, 0, 0, 1, 0, 1, '1, ', '', NULL, NULL, '2022-09-13 19:16:41', '2022-09-16 19:16:41', 0, 0),
(39, 'BI8FEW9I', '1', 'PRWOV7ZZ', 1, 'Santa', 'La', 'CBBA, La Paz, Santa Cruz, ', 80, 0, 0, 1, 0, 1, '1, ', '', NULL, NULL, '2022-09-13 19:16:44', '2022-09-16 19:16:44', 0, 0),
(40, 'BBLHA2M1', '1', 'PJURBY5N', 1, 'Santa', 'Cochabamba', '', 180, 0, 1, 1, 0, 2, '1, 2, ', '', NULL, NULL, '2022-09-13 19:21:21', '2022-09-16 19:21:21', 0, 0),
(41, 'BRGKO86W', '1', 'PRENNVX0', 1, 'Santa', 'Cochabamba', '', 180, 0, 1, 1, 0, 2, '1, 2, ', '', NULL, NULL, '2022-09-13 19:21:28', '2022-09-16 19:21:28', 0, 0),
(42, 'B9SCY5C0', '1', 'PCBR6RR8', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '3, 6, ', '', NULL, NULL, '2022-09-16 19:24:53', '2022-09-16 19:24:53', 0, 0),
(43, 'B0E8K28Z', '1', 'P1X2DHU6', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '3, 6, ', '', NULL, NULL, '2022-09-16 19:29:02', '2022-09-16 19:29:02', 0, 0),
(44, 'BEYXOFME', '1', 'PDFXJEMS', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '2, 3, ', '', NULL, NULL, '2022-09-16 19:29:57', '2022-09-16 19:29:57', 0, 0),
(45, 'BPUZQN0Q', '1', 'PC806K22', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '1, 2, ', '', NULL, NULL, '2022-09-12 21:51:32', '2022-09-16 21:51:32', 0, 0),
(46, 'B2MNXJB9', '1', 'PFD10Y9E', 1, 'Santa', 'La', '', 400, 0, 4, 0, 0, 4, '1, 2, 4, 5, ', '', NULL, NULL, '2022-09-12 21:52:21', '2022-09-16 21:52:21', 0, 0),
(47, 'BD3KVODW', '1', 'PC7MD3JH', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '1, 2, ', '', NULL, NULL, '2022-09-12 11:35:25', '2022-09-17 11:35:25', 0, 0),
(48, 'BWPY9L15', '1', 'PTZUE0HY', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '3, 6, ', '', NULL, NULL, '2022-09-16 13:06:48', '2022-09-17 13:06:48', 0, 0),
(49, 'BLJ6QNB5', '1', 'PV2FZDS0', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '2, ', '', NULL, NULL, '2022-09-16 13:07:59', '2022-09-17 13:07:59', 0, 0),
(50, 'BTPI0QJ6', '1', 'PJBYN9LT', 1, 'Santa', 'La', '', 180, 0, 1, 1, 0, 2, '3, 6, ', '', NULL, NULL, '2022-09-16 13:16:03', '2022-09-17 13:16:03', 0, 0),
(51, 'BIV9NLVM', '1', 'PLKP0DHF', 1, 'Santa', 'La', '', 180, 0, 1, 1, 0, 2, '5, 8, ', '', NULL, NULL, '2022-09-16 13:16:41', '2022-09-17 13:16:41', 0, 0),
(52, 'BHJVIQU6', '1', 'PWEJVJ5T', 1, 'Santa', 'La', '', 180, 0, 1, 1, 0, 2, '3, 6, ', '', NULL, NULL, '2022-09-16 13:19:08', '2022-09-17 13:19:08', 0, 0),
(53, 'BLN63EWT', '1', 'PAT127FR', 1, 'Santa', 'La', '', 180, 0, 1, 1, 0, 2, '1, 2, ', '', NULL, NULL, '2022-09-16 13:20:26', '2022-09-17 13:20:26', 0, 0),
(54, 'BOSEAWZV', '1', 'PNL7OZIF', 1, 'Santa', 'La', '', 180, 0, 1, 1, 0, 2, '3, 6, ', '', NULL, NULL, '2022-09-16 13:21:38', '2022-09-17 13:21:38', 0, 0),
(55, 'BXFG0J7A', '1', 'PV98EB8G', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, NULL, '2022-09-16 14:22:35', '2022-09-17 14:22:35', 0, 0),
(56, 'BGOUK3UY', '1', 'P2IAL068', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '1, 2, ', '', NULL, NULL, '2022-09-16 16:07:31', '2022-09-17 16:07:31', 0, 0),
(57, 'BPEFACPJ', '1', 'P4HPSMYU', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '3, 6, ', '', NULL, NULL, '2022-09-16 16:08:05', '2022-09-17 16:08:05', 0, 0),
(58, 'B9OTGOQX', '1', 'PDWALNAW', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '3, 6, ', '', NULL, NULL, '2022-09-16 16:19:09', '2022-09-17 16:19:09', 0, 0),
(59, 'BQQOS2G2', '1', 'PDDJ5RVQ', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, NULL, '2022-09-16 16:20:05', '2022-09-17 16:20:05', 0, 0),
(60, 'B1NYLC2S', '1', 'PBJMQZM8', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, NULL, '2022-09-16 16:20:55', '2022-09-17 16:20:55', 0, 0),
(61, 'BGAC8VK5', '1', 'PDU93S15', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, 1, '2022-09-16 16:21:27', '2022-09-17 16:21:27', 0, 0),
(62, 'B25UPEQM', '1', 'PPIXU5AZ', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, 1, '2022-09-16 16:22:12', '2022-09-17 16:22:12', 0, 0),
(63, 'B97XNWSN', '1', 'PDXZWMWN', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, 1, '2022-09-16 16:23:05', '2022-09-17 16:23:05', 0, 0),
(64, 'BA8TRDE6', '1', 'PZEG2R2J', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '2, ', '', NULL, 1, '2022-09-16 16:23:36', '2022-09-17 16:23:36', 0, 0),
(65, 'BCZEHC5N', '1', 'PSKQ1KOM', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '2, ', '', NULL, 1, '2022-09-16 16:24:21', '2022-09-17 16:24:21', 0, 0),
(66, 'B7FZVGDX', '1', 'PMQEUFTH', 1, 'La', 'Santa', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, 1, '2022-09-16 16:25:35', '2022-09-17 16:25:35', 0, 0),
(67, 'BH2GB1ZH', '1', 'P0SFNP00', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, 1, '2022-09-16 16:26:23', '2022-09-17 16:26:23', 0, 0),
(68, 'BHCOZE96', '1', 'PYHHQL9D', 1, 'Santa', 'La', '', 80, 0, 0, 1, 0, 1, '3, ', '', NULL, 1, '2022-09-16 16:27:05', '2022-09-17 16:27:05', 0, 0),
(69, 'BG71M5PP', '1', 'PT3UQ7RP', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, 1, '2022-09-16 16:27:40', '2022-09-17 16:27:40', 0, 0),
(70, 'B6DP0JNK', '1', 'PQ5GFQOX', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, 1, '2022-09-16 17:51:46', '2022-09-17 17:51:46', 0, 0),
(71, 'BIWUQ7BC', '1', 'PHF8EZU7', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '2, ', '', NULL, 1, '2022-09-16 18:07:48', '2022-09-17 18:07:48', 0, 0),
(72, 'BZDW11KB', '1', 'PQQNIL5Q', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '5, ', '', NULL, 1, '2022-09-16 18:09:52', '2022-09-17 18:09:52', 0, 0),
(73, 'B8PFDAC6', '1', 'PT7WJN81', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, 1, '2022-09-16 18:11:29', '2022-09-17 18:11:29', 0, 0),
(74, 'BKLCXZ5E', '1', 'PF25A5KE', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '4, ', '', NULL, 1, '2022-09-16 18:34:31', '2022-09-17 18:34:31', 0, 0),
(75, 'BVUZ7OLA', '1', 'PDA9SUP6', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '1, 2, ', '', NULL, 1, '2022-09-13 19:14:52', '2022-09-17 19:14:52', 0, 0),
(76, 'BN60ELPC', '1', 'PJAGCN3F', 1, 'Santa', 'La', '', 300, 0, 3, 0, 0, 3, '9, 10, 11, ', '', NULL, 1, '2022-09-13 19:20:43', '2022-09-17 19:20:43', 0, 0),
(77, 'BER6J5Z2', '1', 'PF6GWINM', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '2, ', '', NULL, 1, '2022-09-19 13:09:20', '2022-09-19 13:09:20', 0, 0),
(78, 'BC2UZE8X', '1', 'PNK3LISI', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, 1, '2022-09-19 13:12:38', '2022-09-19 13:12:38', 0, 0),
(79, 'BBQIIL15', '1', 'P00DYD29', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, 1, '2022-09-19 13:15:15', '2022-09-19 13:15:15', 0, 0),
(80, 'BSUFGAJI', '1', 'P4W9DF96', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, 1, '2022-09-19 13:16:17', '2022-09-19 13:16:17', 0, 0),
(81, 'B8O1TRF4', '1', 'PY1SQRMU', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, 1, '2022-09-19 13:17:38', '2022-09-19 13:17:38', 0, 0),
(82, 'B7HYX7H2', '1', 'PSM6TB2P', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, 1, '2022-09-19 13:18:18', '2022-09-19 13:18:18', 0, 0),
(83, 'BQ533FAN', '1', 'PF7HU37O', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '1, 2, ', '', NULL, 1, '2022-09-19 13:20:30', '2022-09-19 13:20:30', 0, 0),
(84, 'BXDTE9KR', '1', 'P5ST6IH6', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, 1, '2022-09-19 13:21:52', '2022-09-19 13:21:52', 0, 0),
(85, 'BLKG0SCA', '1', 'PPFZXB89', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, 1, '2022-09-19 13:25:35', '2022-09-19 13:25:35', 0, 0),
(86, 'BE2MI6A5', '1', 'P9EBFJQG', 1, 'La', 'Santa', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, 1, '2022-09-19 15:12:31', '2022-09-19 15:12:31', 0, 0),
(87, 'BW51EG2B', '1', 'PRR33WFD', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, 1, '2022-09-19 15:13:22', '2022-09-19 15:13:22', 0, 0),
(88, 'BLIAD5GR', '1', 'PH3XT3T9', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '2, ', '', NULL, 1, '2022-09-19 15:16:19', '2022-09-19 15:16:19', 0, 0),
(89, 'B620XBU1', '1', 'PNNZ6CW6', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, 1, '2022-09-19 16:15:20', '2022-09-19 16:15:20', 0, 0),
(90, 'B5R97HW7', '1', 'P712H7EG', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, 1, '2022-09-19 16:17:35', '2022-09-19 16:17:35', 0, 0),
(91, 'B8WWA86M', '1', 'P08ZJPD1', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, 1, '2022-09-19 16:18:02', '2022-09-19 16:18:02', 0, 0),
(92, 'BVKWLTXG', '1', 'PW7H1D70', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, 1, '2022-09-19 16:19:31', '2022-09-19 16:19:31', 0, 0),
(93, 'BUGZ7QCR', '1', 'PDYUQJB5', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, 1, '2022-09-19 16:20:12', '2022-09-19 16:20:12', 0, 0),
(94, 'BUN2QW4J', '1', 'PHYSOGE2', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, 1, '2022-09-19 16:23:14', '2022-09-19 16:23:14', 0, 0),
(95, 'BUTQKCSK', '1', 'P0C9GSRW', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, 1, '2022-09-19 16:33:22', '2022-09-19 16:33:22', 0, 0),
(96, 'BY0YB3ML', '1', 'PU5S6WI9', 1, 'Santa', 'La', '', 80, 0, 0, 1, 0, 1, '1, ', '', NULL, 1, '2022-09-19 16:33:56', '2022-09-19 16:33:56', 0, 0),
(97, 'BY1PBUL6', '1', 'PWT1GDVJ', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, 1, '2022-09-20 16:17:19', '2022-09-20 16:17:19', 0, 0),
(98, 'BH1XZFAU', '1', 'PAQFYXST', 1, 'Santa', 'La', '', 160, 0, 0, 2, 0, 2, '1, 2, ', '', NULL, 1, '2022-09-12 19:04:28', '2022-09-20 19:04:28', 0, 0),
(99, 'B2RJLZZ3', '1', 'P2T23PD7', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '1, 2, ', '', NULL, 1, '2022-09-20 19:10:57', '2022-09-20 19:10:57', 0, 0),
(100, 'B1I7WCHD', '1', 'P49QH1AY', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '1, 2, ', '', NULL, 1, '2022-09-21 21:16:07', '2022-09-20 21:16:07', 0, 0),
(101, 'B1W2F61A', '1', 'PO2A7ZVO', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, 1, '2022-09-21 10:46:06', '2022-09-21 10:46:06', 0, 0),
(102, 'BWSOVZ5J', '1', 'P2IBIWT9', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, 1, '2022-09-21 10:54:25', '2022-09-21 10:54:25', 0, 0),
(103, 'BLL7MK6V', '1', 'PE7YAQ9Z', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, 1, '2022-09-21 10:57:29', '2022-09-21 10:57:29', 0, 0),
(104, 'BYKKRR8L', '1', 'PVHG8SAX', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, 1, '2022-09-21 11:04:54', '2022-09-21 11:04:54', 0, 0),
(105, 'BJF1KA15', '1', 'P3AEJ3KL', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, 1, '2022-09-21 11:30:35', '2022-09-21 11:30:35', 0, 0),
(106, 'B02LKS0X', '1', 'PDK68DA6', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, 1, '2022-09-21 11:39:01', '2022-09-21 11:39:01', 0, 0),
(107, 'B7MYNYH3', '1', 'P8OB66WA', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, 1, '2022-09-21 11:40:21', '2022-09-21 11:40:21', 0, 0),
(108, 'BLSUM8JQ', '1', 'P5141M61', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, 1, '2022-09-21 11:41:30', '2022-09-21 11:41:30', 0, 0),
(109, 'BA943113', '1', 'PKZJPSPO', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '2, ', '', NULL, 1, '2022-09-21 11:45:10', '2022-09-21 11:45:10', 0, 0),
(110, 'BR3GHJXZ', '1', 'PN8QRIC3', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '2, ', '', NULL, 1, '2022-09-21 11:45:14', '2022-09-21 11:45:14', 0, 0),
(111, 'BOPD5DYB', '1', 'PDWKPZMN', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '2, ', '', NULL, 1, '2022-09-21 11:45:15', '2022-09-21 11:45:15', 0, 0),
(112, 'B8NLSPEK', '1', 'PKJBN966', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, 1, '2022-09-21 12:09:17', '2022-09-21 12:09:17', 0, 0),
(113, 'B2Z0RULX', '1', 'PF8VBICQ', 1, 'Santa', 'Cochabamba', '', 100, 0, 1, 0, 0, 1, '5, ', '', NULL, 1, '2022-10-03 09:41:05', '2022-10-04 09:41:05', 0, 0),
(114, 'B4M0XE7D', '1', 'P805A616', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, 1, '2022-10-04 10:34:00', '2022-10-04 10:34:00', 0, 0),
(115, 'BDEKYDG0', '1', 'PCV9IFTL', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, 1, '2022-10-06 11:28:17', '2022-10-06 11:28:17', 0, 0),
(116, 'BAZPJECG', '1', 'P9F102L9', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '2, ', '', NULL, 1, '2022-10-06 11:37:26', '2022-10-06 11:37:26', 0, 0),
(117, 'B5NEW0OV', '1', 'PFF5HQFA', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '2, ', '', NULL, 1, '2022-10-06 12:10:38', '2022-10-06 12:10:38', 0, 0),
(118, 'B3UGV2PY', '1', 'PNBYXG4C', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, 1, '2022-10-06 12:26:11', '2022-10-06 12:26:11', 0, 0),
(119, 'BVLGO059', '1', 'PJPEBZZS', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '2, ', '', NULL, 1, '2022-10-06 12:32:23', '2022-10-06 12:32:23', 0, 0),
(120, 'BBDF1ACZ', '1', 'PE599PMA', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '5, ', '', NULL, 1, '2022-10-06 12:49:52', '2022-10-06 12:49:52', 0, 0),
(121, 'B307HX02', '1', 'P8WQQVRY', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '5, ', '', NULL, 1, '2022-10-06 12:55:37', '2022-10-06 12:55:37', 0, 0),
(122, 'BL7P2TV2', '1', 'P062NEGV', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '5, ', '', NULL, 1, '2022-10-06 13:04:36', '2022-10-06 13:04:36', 0, 0),
(123, 'BDUGB0H5', '1', 'PT223V8L', 1, 'La', 'Santa', '', 100, 0, 1, 0, 0, 1, '6, ', '', NULL, 1, '2022-10-06 13:06:35', '2022-10-06 13:06:35', 0, 0),
(124, 'B9ZEXQO1', '1', 'P8TBRFOI', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, 1, '2022-10-06 13:08:16', '2022-10-06 13:08:16', 0, 0),
(125, 'BM9ELY86', '1', 'PB7P1L6K', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, 1, '2022-10-06 13:09:59', '2022-10-06 13:09:59', 0, 0),
(126, 'BWERLF6M', '1', 'P2KQNPX9', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, 1, '2022-10-06 13:11:54', '2022-10-06 13:11:54', 0, 0),
(127, 'BD47UD9K', '1', 'P7JR2M7S', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '8, ', '', NULL, 1, '2022-10-06 13:13:13', '2022-10-06 13:13:13', 0, 0),
(128, 'BSPIMYTN', '1', 'PBQT8EB6', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, 1, '2022-10-06 13:26:58', '2022-10-06 13:26:58', 0, 0),
(129, 'BS777URP', '1', 'PVTXDQPT', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, 1, '2022-10-07 21:33:24', '2022-10-06 21:33:24', 0, 0),
(130, 'B56IHLDL', '1', 'PJCFGQHF', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '2, ', '', NULL, 1, '2022-10-17 11:18:08', '2022-10-14 11:18:08', 0, 0),
(131, 'BV3C3GNK', '1', 'PKMDF658', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, 1, '2022-10-14 11:18:30', '2022-10-14 11:18:30', 0, 0),
(132, 'BSA9KM1H', '1', 'PJS2DBEP', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, 1, '2022-10-14 17:39:09', '2022-10-14 17:39:09', 0, 0),
(133, 'BIYXORDJ', '1', 'PM85833T', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '7, ', '', NULL, 1, '2022-10-14 17:40:42', '2022-10-14 17:40:42', 0, 0),
(134, 'BNDSNJP5', '1', 'P4C8JREI', 1, 'La', 'Santa', '', 100, 0, 1, 0, 0, 1, '6, ', '', NULL, 1, '2022-10-14 17:43:59', '2022-10-14 17:43:59', 0, 0),
(135, 'BUXVG5KG', '1', 'PSLKWL9T', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '7, ', '', NULL, 1, '2022-10-14 20:09:54', '2022-10-14 20:09:54', 0, 0),
(136, 'BQMFO7FW', '1', 'P7H27SAE', 1, 'Santa', 'La', '', 80, 0, 0, 1, 0, 1, '8, ', '', NULL, 1, '2022-10-14 20:15:09', '2022-10-14 20:15:09', 0, 0),
(137, 'B84X8CGX', '1', 'P80IED39', 1, 'Santa', 'Cochabamba', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, 1, '2022-10-14 20:17:59', '2022-10-14 20:17:59', 0, 0),
(138, 'BF0JLJOW', '1', 'PKI8GDKL', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, 1, '2022-10-14 20:24:29', '2022-10-14 20:24:29', 0, 0),
(139, 'BM3N5V3H', '1', 'PHPM7MB5', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, 1, '2022-10-16 20:07:17', '2022-10-15 20:07:17', 0, 0),
(140, 'BIH3HA0L', '1', 'PN02BQBV', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, 1, '2022-10-17 17:37:13', '2022-10-17 17:37:13', 0, 0),
(141, 'BBJFKQZD', '1', 'P4FVJWUI', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, NULL, '2022-10-17 17:42:05', '2022-10-17 17:42:05', 0, 0),
(142, 'BYZ8K0R2', '1', 'PXD1MBSZ', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '6, ', '', NULL, NULL, '2022-10-17 17:44:53', '2022-10-17 17:44:53', 0, 0),
(143, 'B9QWW042', '1', 'PQZ9GH8V', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, NULL, '2022-10-17 17:46:09', '2022-10-17 17:46:09', 0, 0),
(144, 'BYRX6HBV', '1', 'P2SVRVP5', 1, 'La', 'Santa', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, NULL, '2022-10-17 17:46:53', '2022-10-17 17:46:53', 0, 0),
(145, 'BEU5BRSO', '1', 'POUUH2PI', 1, 'Santa', 'Cochabamba', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, 1, '2022-10-17 18:16:52', '2022-10-17 18:16:52', 0, 0),
(146, 'BCXH1U1U', '1', 'P8VDUT73', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, NULL, '2022-10-17 18:33:58', '2022-10-17 18:33:58', 0, 0),
(147, 'BDT7IUYH', '1', 'PWZ9K3DM', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, 1, '2022-10-17 18:46:16', '2022-10-17 18:46:16', 0, 0),
(148, 'BPACOH6V', '1', 'PEE4GAH9', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, NULL, '2022-10-19 14:15:18', '2022-10-19 14:15:18', 0, 0),
(149, 'B3J8EHN9', '1', 'PTP2NGD4', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '2, ', '', NULL, 1, '2022-10-19 14:18:05', '2022-10-19 14:18:05', 0, 0),
(150, 'BHYT99KR', '1', 'P2OL52NJ', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '2, ', '', NULL, 1, '2022-10-19 14:19:42', '2022-10-19 14:19:42', 0, 0),
(151, 'BRG73NA8', '1', 'PJX8ED2H', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '2, ', '', NULL, 1, '2022-10-19 14:46:40', '2022-10-19 14:46:40', 0, 0),
(152, 'BSSQCYV6', '1', 'PUWNK2KB', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, NULL, '2022-10-20 11:45:20', '2022-10-20 11:45:20', 0, 0),
(153, 'B6QCXJ9G', '1', 'PNBZ35JM', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, NULL, '2022-10-20 11:46:50', '2022-10-20 11:46:50', 0, 0),
(154, 'BYXG4CDD', '1', 'P33NTGWK', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, NULL, '2022-10-20 11:47:29', '2022-10-20 11:47:29', 0, 0),
(155, 'BX663VI6', '1', 'PQJCCDT8', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, NULL, '2022-10-20 11:48:24', '2022-10-20 11:48:24', 0, 0),
(156, 'B82VYQHK', '1', 'PDG0NM1C', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '8, ', '', NULL, NULL, '2022-10-27 22:32:30', '2022-10-27 22:32:30', 0, 0),
(157, 'BOLU01G3', '1', 'PURSZVBU', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '2, ', '', NULL, NULL, '2022-10-27 22:50:59', '2022-10-27 22:50:59', 0, 0),
(158, 'BSZULEH3', '1', 'PW21E5ZP', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, NULL, '2022-10-27 23:02:16', '2022-10-27 23:02:16', 0, 0),
(159, 'BN0J0EL1', '1', 'PL0DTFTA', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, NULL, '2022-10-27 23:03:25', '2022-10-27 23:03:25', 0, 0),
(160, 'BQOG49LB', '1', 'P4XB85ZZ', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, NULL, '2022-10-27 23:31:57', '2022-10-27 23:31:57', 0, 0),
(161, 'BZ7FSBHX', '1', 'PM4FJLEO', 1, 'Santa', 'La', 'CBBA, La Paz, Santa Cruz, ', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, NULL, '2022-11-10 19:55:11', '2022-11-10 19:55:11', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ws_offer`
--

CREATE TABLE `ws_offer` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `position` tinyint(4) DEFAULT '0',
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ws_offer`
--

INSERT INTO `ws_offer` (`id`, `title`, `position`, `image`) VALUES
(1, 'Potosi', 1, 'application/modules/website/assets/images/offer/21007252ea02b32783350e101bb2ff5e.jpeg'),
(2, 'Teste 2', 2, 'application/modules/website/assets/images/offer/12a21aa21ea5a7fac026580aa19f01f7.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ws_payments`
--

CREATE TABLE `ws_payments` (
  `payment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `txn_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_gross` float(10,2) NOT NULL,
  `currency_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `payer_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ws_setting`
--

CREATE TABLE `ws_setting` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slogan` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `timezone` varchar(200) DEFAULT NULL,
  `about` varchar(255) DEFAULT NULL,
  `description` text,
  `payment_type` varchar(30) DEFAULT NULL,
  `paypal_email` varchar(100) DEFAULT NULL,
  `bank_commission` float NOT NULL DEFAULT '0',
  `currency` varchar(50) DEFAULT NULL,
  `google_map` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ws_setting`
--

INSERT INTO `ws_setting` (`id`, `title`, `slogan`, `address`, `email`, `phone`, `favicon`, `logo`, `status`, `timezone`, `about`, `description`, `payment_type`, `paypal_email`, `bank_commission`, `currency`, `google_map`) VALUES
(1, 'Grupo Unebus', 'Junto en tu destino', 'Santa Cruz de la Sierra', 'info@grupounebus.com', '+591 71608981', 'application/modules/website/assets/images/icons/d30bd0e4c6f48ff64b5d91ab95c14b9b.png', 'application/modules/website/assets/images/icons/69546c6e86d8b9e4fc9b9891cea43d8b.png', 1, 'America/Sao_Paulo', '', '', 'disable', 'info@grupounebus.com', 3, 'USD', '<div style=\"width: 100%\"><iframe width=\"100%\" height=\"600\" frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" src=\"https://maps.google.com/maps?width=100%25&amp;height=600&amp;hl=es&amp;q=Santa%20Cruz%20de%20la%20Sierra,%20Bolivia+(Grupo%20Unebus)&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed\"><a href=\"https://www.gps.ie/car-satnav-gps/\">GPS devices</a></iframe></div>');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acc_account_name`
--
ALTER TABLE `acc_account_name`
  ADD PRIMARY KEY (`account_id`);

--
-- Indices de la tabla `acn_account_transaction`
--
ALTER TABLE `acn_account_transaction`
  ADD PRIMARY KEY (`account_tran_id`);

--
-- Indices de la tabla `agent_info`
--
ALTER TABLE `agent_info`
  ADD PRIMARY KEY (`agent_id`);

--
-- Indices de la tabla `agent_ledger`
--
ALTER TABLE `agent_ledger`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bank_info`
--
ALTER TABLE `bank_info`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bank_transaction`
--
ALTER TABLE `bank_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `booking_downtime`
--
ALTER TABLE `booking_downtime`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `caja`
--
ALTER TABLE `caja`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `couriers`
--
ALTER TABLE `couriers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `email_config`
--
ALTER TABLE `email_config`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `employee_history`
--
ALTER TABLE `employee_history`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `employee_type`
--
ALTER TABLE `employee_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indices de la tabla `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- Indices de la tabla `fit_fitness`
--
ALTER TABLE `fit_fitness`
  ADD PRIMARY KEY (`fitness_id`);

--
-- Indices de la tabla `fleet_facilities`
--
ALTER TABLE `fleet_facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fleet_registration`
--
ALTER TABLE `fleet_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fleet_type`
--
ALTER TABLE `fleet_type`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ftn_fitness_period`
--
ALTER TABLE `ftn_fitness_period`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `how_to_use`
--
ALTER TABLE `how_to_use`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `merchandise`
--
ALTER TABLE `merchandise`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `module_permission`
--
ALTER TABLE `module_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ofr_offer`
--
ALTER TABLE `ofr_offer`
  ADD PRIMARY KEY (`offer_id`);

--
-- Indices de la tabla `payment_informations`
--
ALTER TABLE `payment_informations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `price_per_kg`
--
ALTER TABLE `price_per_kg`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pri_price`
--
ALTER TABLE `pri_price`
  ADD PRIMARY KEY (`price_id`);

--
-- Indices de la tabla `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sec_menu_item`
--
ALTER TABLE `sec_menu_item`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indices de la tabla `sec_role_permission`
--
ALTER TABLE `sec_role_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sec_role_tbl`
--
ALTER TABLE `sec_role_tbl`
  ADD PRIMARY KEY (`role_id`);

--
-- Indices de la tabla `sec_user_access_tbl`
--
ALTER TABLE `sec_user_access_tbl`
  ADD PRIMARY KEY (`role_acc_id`);

--
-- Indices de la tabla `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `shedule`
--
ALTER TABLE `shedule`
  ADD PRIMARY KEY (`shedule_id`);

--
-- Indices de la tabla `synchronizer_setting`
--
ALTER TABLE `synchronizer_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ticket_notification`
--
ALTER TABLE `ticket_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tkt_booking`
--
ALTER TABLE `tkt_booking`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_no` (`id_no`);

--
-- Indices de la tabla `tkt_feedback`
--
ALTER TABLE `tkt_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tkt_passenger`
--
ALTER TABLE `tkt_passenger`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tkt_referal`
--
ALTER TABLE `tkt_referal`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tkt_refund`
--
ALTER TABLE `tkt_refund`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tkt_refund_tkt_booking` (`tkt_booking_id_no`);

--
-- Indices de la tabla `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`trip_id`);

--
-- Indices de la tabla `trip_assign`
--
ALTER TABLE `trip_assign`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `trip_location`
--
ALTER TABLE `trip_location`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `trip_route`
--
ALTER TABLE `trip_route`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users_app`
--
ALTER TABLE `users_app`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ws_booking_history`
--
ALTER TABLE `ws_booking_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_no` (`id_no`);

--
-- Indices de la tabla `ws_offer`
--
ALTER TABLE `ws_offer`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ws_payments`
--
ALTER TABLE `ws_payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indices de la tabla `ws_setting`
--
ALTER TABLE `ws_setting`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acc_account_name`
--
ALTER TABLE `acc_account_name`
  MODIFY `account_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `acn_account_transaction`
--
ALTER TABLE `acn_account_transaction`
  MODIFY `account_tran_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `agent_info`
--
ALTER TABLE `agent_info`
  MODIFY `agent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `agent_ledger`
--
ALTER TABLE `agent_ledger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bank_info`
--
ALTER TABLE `bank_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `bank_transaction`
--
ALTER TABLE `bank_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `booking_downtime`
--
ALTER TABLE `booking_downtime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `caja`
--
ALTER TABLE `caja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT de la tabla `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `couriers`
--
ALTER TABLE `couriers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `email_config`
--
ALTER TABLE `email_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `employee_history`
--
ALTER TABLE `employee_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `employee_type`
--
ALTER TABLE `employee_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `enquiry_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fit_fitness`
--
ALTER TABLE `fit_fitness`
  MODIFY `fitness_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fleet_facilities`
--
ALTER TABLE `fleet_facilities`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `fleet_registration`
--
ALTER TABLE `fleet_registration`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `fleet_type`
--
ALTER TABLE `fleet_type`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ftn_fitness_period`
--
ALTER TABLE `ftn_fitness_period`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `how_to_use`
--
ALTER TABLE `how_to_use`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=968;

--
-- AUTO_INCREMENT de la tabla `merchandise`
--
ALTER TABLE `merchandise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `module`
--
ALTER TABLE `module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `module_permission`
--
ALTER TABLE `module_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ofr_offer`
--
ALTER TABLE `ofr_offer`
  MODIFY `offer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `payment_informations`
--
ALTER TABLE `payment_informations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `price_per_kg`
--
ALTER TABLE `price_per_kg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pri_price`
--
ALTER TABLE `pri_price`
  MODIFY `price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT de la tabla `sec_menu_item`
--
ALTER TABLE `sec_menu_item`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT de la tabla `sec_role_permission`
--
ALTER TABLE `sec_role_permission`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1287;

--
-- AUTO_INCREMENT de la tabla `sec_role_tbl`
--
ALTER TABLE `sec_role_tbl`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sec_user_access_tbl`
--
ALTER TABLE `sec_user_access_tbl`
  MODIFY `role_acc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `shedule`
--
ALTER TABLE `shedule`
  MODIFY `shedule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `synchronizer_setting`
--
ALTER TABLE `synchronizer_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ticket_notification`
--
ALTER TABLE `ticket_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tkt_booking`
--
ALTER TABLE `tkt_booking`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tkt_feedback`
--
ALTER TABLE `tkt_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tkt_passenger`
--
ALTER TABLE `tkt_passenger`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tkt_referal`
--
ALTER TABLE `tkt_referal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tkt_refund`
--
ALTER TABLE `tkt_refund`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `trip`
--
ALTER TABLE `trip`
  MODIFY `trip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `trip_assign`
--
ALTER TABLE `trip_assign`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `trip_location`
--
ALTER TABLE `trip_location`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `trip_route`
--
ALTER TABLE `trip_route`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users_app`
--
ALTER TABLE `users_app`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ws_booking_history`
--
ALTER TABLE `ws_booking_history`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT de la tabla `ws_offer`
--
ALTER TABLE `ws_offer`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ws_payments`
--
ALTER TABLE `ws_payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ws_setting`
--
ALTER TABLE `ws_setting`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
