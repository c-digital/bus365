-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 30-09-2022 a las 17:16:27
-- Versión del servidor: 5.7.39
-- Versión de PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

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
(111, 'Entrada', '2022-09-30 16:38:31', '26', 'Efectivo', 'Envio de mercadería #6', '76', 'Caja abierta', 'Admin');

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
  `french` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `language`
--

INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES
(1, 'login', 'Login', 'Se connecter'),
(2, 'email', 'Email', 'Email '),
(3, 'password', 'Password', 'Mot de passe'),
(4, 'reset', 'Reset', 'Reinitialiser'),
(5, 'dashboard', 'Dashboard', 'Tableau de bord'),
(6, 'home', 'HOME', 'Acceuil '),
(7, 'profile', 'Profile', 'Profil'),
(8, 'profile_setting', 'Profile Setting', 'Reglage du profil'),
(9, 'firstname', 'First Name', 'Nom'),
(10, 'lastname', 'Last Name', 'Prénom'),
(11, 'about', 'About', 'A propos'),
(12, 'preview', 'Preview', 'Visualiser'),
(13, 'image', 'Image', 'Image'),
(14, 'save', 'Save', 'Sauvegarder'),
(15, 'upload_successfully', 'Upload Successfully!', 'Mise à jour reussi'),
(16, 'user_added_successfully', 'User Added Successfully!', 'Utilisateur ajouté avec succès'),
(17, 'please_try_again', 'Please Try Again...', 'SVP Essayez encore'),
(18, 'inbox_message', 'Inbox Messages', 'Boite de reception message'),
(19, 'sent_message', 'Sent Message', 'Envoyer un message'),
(20, 'message_details', 'Message Details', 'Détails du message'),
(21, 'new_message', 'New Message', 'Nouveau message'),
(22, 'receiver_name', 'Receiver Name', 'Nom du recepteur'),
(23, 'sender_name', 'Sender Name', 'Nom de l\'expediteur'),
(24, 'subject', 'Subject', 'Sujet'),
(25, 'message', 'Message', 'Message'),
(26, 'message_sent', 'Message Sent!', 'Message envoyé'),
(27, 'ip_address', 'IP Address', 'Adresse IP'),
(28, 'last_login', 'Last Login', 'Dernière connexion'),
(29, 'last_logout', 'Last Logout', 'Dernière déconnexion'),
(30, 'status', 'Status', 'Status'),
(31, 'delete_successfully', 'Delete Successfully!', 'Suppression réussi'),
(32, 'send', 'Send', 'Envoyer'),
(33, 'date', 'Date', 'Date'),
(34, 'action', 'Action', 'Action'),
(35, 'sl_no', 'SL No.', 'N° SL'),
(36, 'are_you_sure', 'Are You Sure ? ', 'Etes-vous sure ?'),
(37, 'application_setting', 'Application Setting', 'Reglages d\'application'),
(38, 'application_title', 'Application Title', 'Titre d\'application'),
(39, 'address', 'Address', 'Adresse'),
(40, 'phone', 'Phone', 'Phone'),
(41, 'favicon', 'Favicon', 'Favicon'),
(42, 'logo', 'Logo', 'Logo'),
(43, 'language', 'Language', 'Langue'),
(44, 'left_to_right', 'Left To Right', 'Gauche vers droite'),
(45, 'right_to_left', 'Right To Left', 'Droite vers la gauche'),
(46, 'footer_text', 'Footer Text', 'Texte du footer'),
(47, 'site_align', 'Application Alignment', 'Aligner le site'),
(48, 'welcome_back', 'Welcome Back!', 'Bienvenue à nouveau'),
(49, 'please_contact_with_admin', 'Please Contact With Admin', 'Veuillez contacter l\'administrateur'),
(50, 'incorrect_email_or_password', 'Incorrect Email/Password', 'Mot de passe ou Email incorrect'),
(51, 'select_option', 'Select Option', 'Option de selection'),
(52, 'ftp_setting', 'Data Synchronize [FTP Setting]', 'Reglage FTP'),
(53, 'hostname', 'Host Name', 'Hostname'),
(54, 'username', 'User Name', 'Nom d\'utilisateur'),
(55, 'ftp_port', 'FTP Port', 'Port FTP'),
(56, 'ftp_debug', 'FTP Debug', 'Debogage FTP '),
(57, 'project_root', 'Project Root', 'Racine du projet'),
(58, 'update_successfully', 'Update Successfully', 'Mise à jour reussi'),
(59, 'save_successfully', 'Save Successfully!', 'Sauvegarde réussie'),
(61, 'internet_connection', 'Internet Connection', 'Connexion internet'),
(62, 'ok', 'Ok', 'Ok'),
(63, 'not_available', 'Not Available', 'Indisponible'),
(64, 'available', 'Available', 'Disponible'),
(65, 'outgoing_file', 'Outgoing File', 'Fichier sortant'),
(66, 'incoming_file', 'Incoming File', 'Fichier entrant '),
(67, 'data_synchronize', 'Data Synchronize', 'Synchroniser les données'),
(68, 'unable_to_upload_file_please_check_configuration', 'Unable to upload file! please check configuration', 'Impossible de charger les données veuillez vérifier les configurations'),
(69, 'please_configure_synchronizer_settings', 'Please configure synchronizer settings', 'Veuillez configurer les paramètres de synchronisation'),
(70, 'download_successfully', 'Download Successfully', 'Téléchargement réussi'),
(71, 'unable_to_download_file_please_check_configuration', 'Unable to download file! please check configuration', 'Téléchargement impossible, veuillez vérifier votre connexion internet'),
(72, 'data_import_first', 'Data Import First', 'Importer d\'abord les données'),
(73, 'data_import_successfully', 'Data Import Successfully!', 'Import de données réussi'),
(74, 'unable_to_import_data_please_check_config_or_sql_file', 'Unable to import data! please check configuration / SQL file.', 'Impossible d\'importer les données, veuillez vérifier les configurations'),
(75, 'download_data_from_server', 'Download Data from Server', 'Télécharger les données du serveur'),
(76, 'data_import_to_database', 'Data Import To Database', 'Import de données dans la base de données'),
(77, 'data_upload_to_server', 'Data Upload to Server', 'Charger les données dans le seveur'),
(78, 'please_wait', 'Please Wait...', 'Veuillez patienter'),
(79, 'ooops_something_went_wrong', ' Ooops something went wrong...', 'Oops, quelque chose a mal fonctionné'),
(80, 'module_permission_list', 'Module Permission List', 'Liste de permission du module'),
(81, 'user_permission', 'User Permission', 'Permission utilisateur'),
(82, 'add_module_permission', 'Add Module Permission', 'Ajouter module de permission'),
(83, 'module_permission_added_successfully', 'Module Permission Added Successfully!', 'Permission du module ajoutée avec succès'),
(84, 'update_module_permission', 'Update Module Permission', 'Mettre à jour le module de permission'),
(85, 'download', 'Download', 'Télécharger'),
(86, 'module_name', 'Module Name', 'Nom du module'),
(87, 'create', 'Create', 'Créer'),
(88, 'read', 'Read', 'Lu'),
(89, 'update', 'Update', 'Mettre à jour'),
(90, 'delete', 'Delete', 'Supprimer '),
(91, 'module_list', 'Module List', 'Liste de module'),
(92, 'add_module', 'Add Module', 'Ajouter module'),
(93, 'directory', 'Module Direcotory', 'Repertoire'),
(94, 'description', 'Description', 'Description'),
(95, 'image_upload_successfully', 'Image Upload Successfully!', 'Image mis à jour avec succès'),
(96, 'module_added_successfully', 'Module Added Successfully', 'Module ajouté avec succès'),
(97, 'inactive', 'Inactive', 'Inactif'),
(98, 'active', 'Active', 'Actif'),
(99, 'user_list', 'User List', 'Liste d\'utilisateur'),
(100, 'see_all_message', 'See All Messages', 'Voir tous les messages'),
(101, 'setting', 'Setting', 'Reglages'),
(102, 'logout', 'LOGOUT', 'Déconnexion'),
(103, 'admin', 'Admin', 'Administrateur'),
(104, 'add_user', 'Add User', 'Ajouter un utilisateur'),
(105, 'user', 'User', 'Utilisateur'),
(106, 'module', 'Module', 'Module'),
(107, 'new', 'New', 'Nouveau'),
(108, 'inbox', 'Inbox', 'Boite de reception'),
(109, 'sent', 'Sent', 'Envoyé'),
(110, 'synchronize', 'Synchronize', 'Synchroniser'),
(111, 'data_synchronizer', 'Data Synchronizer', 'Synchronisation de données'),
(112, 'module_permission', 'Module Permission', 'Permission du module'),
(113, 'backup_now', 'Backup Now!', 'Sauvegarder maintenant'),
(114, 'restore_now', 'Restore Now!', 'Restaurer maintenant'),
(115, 'backup_and_restore', 'Data Backup', 'Suavegarde et restauration'),
(116, 'captcha', 'Captcha Word', 'Captcha'),
(117, 'database_backup', 'Database Backup', 'Sauvegarde base de donnée'),
(118, 'restore_successfully', 'Restore Successfully', 'Restauration réussi'),
(119, 'backup_successfully', 'Backup Successfully', 'Sauvegarde réussi'),
(120, 'filename', 'File Name', ' Nom du fichier'),
(121, 'file_information', 'File Information', 'Info du fichier'),
(122, 'size', 'Size', 'Taille'),
(123, 'backup_date', 'Backup Date', 'Date de sauvegarde'),
(124, 'overwrite', 'Overwrite', 'Ecraser'),
(125, 'invalid_file', 'Invalid File!', 'Fichier invalide'),
(126, 'invalid_module', 'Invalid Module', 'Module invalide'),
(127, 'remove_successfully', 'Remove Successfully!', 'Retiré avec succès'),
(128, 'install', 'Install', 'Installer'),
(129, 'uninstall', 'Uninstall', 'Désinstaller'),
(130, 'tables_are_not_available_in_database', 'Tables are not available in database.sql', 'Tables indisponibles dans les bases de données'),
(131, 'no_tables_are_registered_in_config', 'No tables are registerd in config.php', 'Pas de tickets enregistrés dans les configurations'),
(132, 'enquiry', 'Enquiry', 'Requetes'),
(133, 'read_unread', 'Read/Unread', 'Lu et non lu'),
(134, 'enquiry_information', 'Enquiry Information', 'info de requete'),
(135, 'user_agent', 'User Agent', 'Utilisateur agent'),
(136, 'checked_by', 'Checked By', 'Verifié par'),
(137, 'new_enquiry', 'New Enquiry', 'Nouvelle requête'),
(138, 'fleet', 'Fleet Management', 'Flotte'),
(139, 'fleet_type', 'Fleet Type', 'Type de vehicule'),
(140, 'add', 'Add', 'Ajouter'),
(141, 'list', 'List', 'Liste'),
(142, 'fleet_facilities', 'Fleet Facilities', 'Facilités du véhicule'),
(143, 'fleet_registration', 'Vehicles', 'Enregistrement du véhicule'),
(144, 'reg_no', 'Registration No.', 'N° de reg'),
(145, 'model_no', 'Model No.', 'N° du modèle '),
(146, 'engine_no', 'Engine No.', 'N° du moteur'),
(147, 'chasis_no', 'Chasis No.', 'N° de chassis'),
(148, 'total_seat', 'Total Seat', 'Sièges total'),
(149, 'seat_numbers', 'Seat Number', 'Numéro des sièges'),
(150, 'owner', 'Owner', 'Auteur'),
(151, 'company', 'Company Name', 'Societé'),
(152, 'trip', 'Trip Management', 'Voyage'),
(153, 'location', 'Destination', 'Localication'),
(154, 'route', 'Route', 'Ligne'),
(155, 'assign', 'Assign', 'Assigner'),
(156, 'close', 'Close Trip', 'Fermer'),
(157, 'location_name', 'Destination Name', 'Nom de la localisation'),
(158, 'google_map', 'Google Map', 'Google maps'),
(159, 'start_point', 'Start Point', 'Point de départ'),
(160, 'end_point', 'End Point', 'Point d\'arrivé'),
(161, 'route_name', 'Route Name', 'Nom de la ligne'),
(162, 'distance', 'Distance', 'Distance'),
(163, 'approximate_time', 'Approximate Time', 'Temps approximatif'),
(164, 'stoppage_points', 'Stoppage Points', 'Points d\'arrets'),
(165, 'fleet_registration_no', 'Fleet Registration No.', 'N° d\'enregistrement du véhicule'),
(166, 'start_date', 'Start Date', 'Date de début'),
(167, 'end_date', 'End Date', 'Date de fin'),
(168, 'driver_name', 'Driver Name', 'Nom du chauffeur'),
(169, 'assistants_ids', 'Assistants', 'ID d\'assignations'),
(170, 'sold_ticket', 'Sold Ticket', 'Tickets vendus'),
(171, 'total_income', 'Total Income', 'Revenu total'),
(172, 'total_expense', 'Total Expense', 'Total dépenses'),
(173, 'total_fuel', 'Total Fuel', 'Total Fuel'),
(174, 'trip_comment', 'Trip Comment', 'Commentaire du voyage'),
(175, 'closed_by', 'Closed by', 'Fermé par '),
(176, 'ticket', 'Ticket Management', 'Ticket'),
(177, 'passenger', 'Passenger', 'Passager'),
(178, 'middle_name', 'Middle Name', 'Autre nom'),
(179, 'date_of_birth', 'Date of Birth', 'Date de naissance'),
(180, 'passenger_id', 'Passenger ID.', 'ID du passager'),
(181, 'address_line_1', 'Address Line 1', 'Adresse 1'),
(182, 'address_line_2', 'Address Line 2', 'Adresse 1'),
(184, 'zip_code', 'Zip Code', 'Code zip'),
(186, 'name', 'Name', 'Nom'),
(187, 'ac_available', 'AC available', 'Clim disponible'),
(188, 'trip_id', 'Trip ID.', 'ID du voyage'),
(189, 'book', 'Book', 'Reserver'),
(190, 'booking_id', 'Booking ID.', 'ID de reservation'),
(191, 'available_seats', 'Available Seats', 'Sièges disponibles'),
(192, 'select_seats', 'Select Seats', 'Selectionner les sièges'),
(193, 'time', 'Time', 'Temps'),
(194, 'offer_code', 'Offer Code', 'Code de l\'offre'),
(195, 'price', 'Price', 'Prix'),
(196, 'discount', 'Discount', 'Remise'),
(197, 'request_facilities', 'Request Facilities', 'Requêtes de facilités'),
(198, 'pickup_location', 'Pickup Location', 'Localisation de depart'),
(199, 'drop_location', 'Drop Location', 'Destination'),
(200, 'amount', 'Amount', 'Montant'),
(201, 'invalid_passenger_id', 'Invalid Passenger ID', 'ID du passager invalide'),
(202, 'invalid_input', 'Invalid Input', 'Entrée invalide'),
(203, 'booking_date', 'Booking Date', 'Date de reservation'),
(204, 'cancelation_fees', 'Cancelation Fees', 'Frais d\'annulation'),
(205, 'causes', 'Causes', 'Causes'),
(206, 'comment', 'Comment', 'Commentaires'),
(207, 'refund', 'Refund', 'Remboursement'),
(208, 'refund_by', 'Refund by', 'Remboursé par'),
(209, 'feedback', 'Feedback', 'Feedback'),
(210, 'rating', 'Rating', 'Notes'),
(211, 'blood_group', 'Blood Group', 'Groupe sanguin'),
(212, 'religion', 'Religion', 'Religion'),
(219, 'details', 'Details', 'Details'),
(220, 'type_name', 'Type Name', 'Nom du type'),
(221, 'view_details', 'View Details', 'Visualiser les détails'),
(222, 'document_pic', 'Document Picture', 'Image du document'),
(223, 'fitness_list', 'Fitness List', 'Liste fitness'),
(226, 'fitness_name', 'Fitness Name', 'Nom fitness'),
(227, 'fitness_description', 'Description', 'Description fitness'),
(228, 'successfully_updated', 'Your Data Successfully Updated', 'Mise à jour reussi'),
(229, 'fitness_period', 'Fitness Period List', 'Période fitness'),
(230, 'fitness_id', 'Fitness Name', 'ID fitness'),
(231, 'vehicle_id', 'Vehicles No', 'ID vehicule'),
(234, 'start_milage', 'Start Milage', 'Commençer le kilometrage'),
(235, 'end_milage', 'End Milage', 'Fin du KM'),
(236, 'agent', 'Agent', 'Agent'),
(237, 'agent_first_name', 'First Name', 'Nom Agent'),
(238, 'agent_second_name', 'LastName', 'Autre Nom de l\'agent'),
(239, 'agent_company_name', 'Company Name', 'Non Société d\'agent '),
(240, 'agent_document_id', 'Document ID', 'ID Document agent'),
(241, 'agent_pic_document', 'Document File', 'Doc photo agent'),
(242, 'agent_phone', 'Phone', 'Téléphone agent'),
(243, 'agent_mobile', 'Mobile No', 'Mobile Agent'),
(244, 'agent_email', 'Email', 'Email Agent'),
(245, 'agent_address_line_1', 'Address Line 1', 'Adresse d\'agent 1'),
(246, 'agent_address_line_2', 'Address Line 2', 'Adresse d\'agent 2'),
(247, 'agent_address_city', 'City', 'Adresse ville d\'agent'),
(248, 'agent_address_zip_code', 'ZIP', 'Code zip agent'),
(249, 'agent_country', 'Country', 'Pays d\'agent'),
(252, 'sl', 'SL', 'sl'),
(253, 'route_id', 'Route Name', 'ID de ligne'),
(254, 'vehicle_type_id', 'Vehicle Type', 'ID type de véhicule'),
(255, 'group_price_per_person', 'Group Price Per Person', 'Groupe de prix par personne'),
(256, 'group_size', 'Group Members', 'Taille du groupe'),
(257, 'successfully_saved', 'Your Data Successfully Saved', 'Sauvegardé avec succès'),
(258, 'account', 'Account', 'Compte'),
(259, 'account_name', 'Account Name', 'Nom du compte'),
(260, 'account_type', 'Account Type', 'Type de compte'),
(261, 'account_transaction', 'Account Transaction', 'Transaction du compte'),
(262, 'account_id', 'Account Name', 'ID du compte'),
(263, 'transaction_description', 'Transaction Details', 'Description de la transaction'),
(265, 'pass_book_id', 'Passenger ID', 'ID pass de reservation'),
(267, 'payment_id', 'Payment ID', 'ID de paiement '),
(268, 'create_by_id', 'Created By', 'Créer l\'ID par'),
(269, 'offer', 'Offer', 'Offres'),
(270, 'offer_name', 'Offer Name', 'Nom de l\'offre'),
(271, 'offer_start_date', 'Offer Start Date', 'Date de debut de l\'offre'),
(272, 'offer_end_date', 'Offer Last Date', 'Datae de fin de l\'offre'),
(274, 'offer_discount', 'Discount', 'Remise de l\'offre '),
(275, 'offer_terms', 'Offer Terms', 'Termes de l\'offre'),
(276, 'offer_route_id', 'Route Name', 'ID offre de voyage'),
(277, 'offer_number', 'Offer Number', 'N° de l\'offre'),
(280, 'seat_number', 'Seat No', 'N° du siège '),
(281, 'available_seat', 'Available Seat', 'Siège disponible'),
(282, 'owner_name', 'Owner Name', 'Nom de l\'auteur'),
(283, 'agent_picture', 'Picture', 'Photo Agent'),
(284, 'account_add', 'Add Account', 'Ajouter un compte'),
(285, 'add_agent', 'Add Agent', 'Ajouter agent'),
(286, 'hr', 'Human Resource', 'Ressource Humaine'),
(287, 'create_hr', 'Add Employee', 'Créer l\'heure'),
(288, 'serial', 'Sl', 'Serial'),
(289, 'position', 'Position', 'Position'),
(290, 'phone_no', 'Phone No', 'N° de téléphone'),
(291, 'email_no', 'Email', 'N° Email'),
(292, 'picture', 'Picture', 'Photo'),
(293, 'first_name', 'First Name', 'Nom'),
(294, 'second_name', 'Last Name', 'Deuxième nom'),
(295, 'document_id', 'Documet Id', 'ID document'),
(298, 'country', 'Country', 'Pays'),
(299, 'city', 'City', 'Ville '),
(300, 'zip', 'Zip ', 'Zip '),
(393, 'add_passenger', 'Add Passenger', 'Ajouter un passager'),
(394, 'search_tiket', 'Search Ticket', 'Rechercher le ticket'),
(395, 'slogan', 'Slogan', 'Slogan'),
(396, 'website', 'Website', 'Site web'),
(397, 'submit', 'Submit', 'Envoyer'),
(398, 'customer_service', 'Customer Service', 'Service client'),
(399, 'submit_successfully', 'Submit Successfully!', 'Envoi reussi'),
(400, 'add_to_website', 'Add to Website', 'Ajouter au site'),
(401, 'our_customers_say', 'Our Customers Say', 'Ce que disent nos clients'),
(402, 'website_status', 'Website Status', 'Status site web'),
(403, 'title', 'Title', 'Titre'),
(405, 'total_fleet', 'Total Fleet', 'Total flotte véhicules'),
(406, 'total_passenger', 'Total Passenger', 'Total passagers'),
(407, 'todays_trip', 'Today\'s Trip', 'Voyage d\'aujourd\'hui'),
(408, 'seats_available', 'Seats Available', 'Sièges disponibles'),
(409, 'no_trip_avaiable', 'No trip avaiable', 'Aucun voyage disponible'),
(410, 'booking', 'Booking', 'Reservations'),
(411, 'something_went_worng', 'Something went worng!', 'Quelque chose a mal fonctionné'),
(412, 'paypal_email', 'Paypal Email', 'Email Paypal'),
(413, 'currency', 'Currency', 'Dévise'),
(414, 'reports', 'Reports', 'Rapports'),
(415, 'search', 'Search', 'Rechercher'),
(417, 'go', 'Go', 'Lancer'),
(418, 'all', 'All', 'Tout'),
(419, 'filter', 'Filter', 'Filter'),
(420, 'last_year_progress', 'Last Year Progress', 'Progrès l\'an dernier'),
(421, 'download_document', 'Download Document', 'Télécharger le document'),
(422, 'mobile', 'Mobile No.', 'Mobile '),
(424, 'account_list', 'Account List', 'Liste de comptes'),
(425, 'add_income', 'Add Income', 'Ajouter une entrée'),
(426, 'add_expense', 'Add Expense', 'Ajouter une dépense'),
(427, 'agent_list', 'Agent List', 'Liste d\'agent'),
(428, 'add_fitness', 'Add Fitness', 'Ajouter fitness'),
(429, 'fitness', 'Fitness', 'Fitness'),
(430, 'add_fitness_period', 'Add Fitness Period', 'Ajouter Période fitness'),
(431, 'employee_type', 'Employee Type', 'Type d\'employé'),
(432, 'employee_list', 'Employee List', 'Liste d\'employé'),
(433, 'add_offer', 'Add Offer', 'Ajouter une offre'),
(434, 'offer_list', 'Offer List', 'Liste d\'offre'),
(435, 'add_price', 'Add Price', 'Ajouter un prix'),
(436, 'price_list', 'Price List', 'Liste de prix'),
(437, 'layout', 'Layout', 'Aperçu'),
(438, 'last_seat_availabe', 'Last Seat Available', 'Dernier siège disponible'),
(439, 'paypal_transaction', 'Paypal Transaction', 'Transaction paypal'),
(440, 'enable', 'Enable', 'Activer'),
(441, 'disable', 'Disable', 'Desactiver'),
(442, 'payment_gateway', 'Payment Gateway', 'Passerelle de paiement'),
(443, 'payment_type', 'Payment Type', 'Type de paiement'),
(444, 'payment_status', 'Payment Status', 'Status de paiement'),
(445, 'downtime', 'Down Time', 'Temps hors service'),
(446, 'select_bus', 'Select Bus', 'Selectionner le bus'),
(447, 'user_info', 'Passenger Information', 'Informations d\'utilisateur'),
(448, 'personal_info', 'Personal Information', 'Informations personnelles'),
(449, 'booking_info', 'Booking Information', 'Info de reservation'),
(450, 'update_your_profile', 'Edit your Profile', 'Mettre à jour votre profil'),
(451, 'email_configue', 'Email Configuration', 'Reglage Email'),
(452, 'protocol', 'Protocol', 'Protocol'),
(453, 'smtp_host', 'SMTP Host', 'host smtp'),
(454, 'smtp_port', 'SMTP Port', 'port smtp'),
(455, 'smtp_pass', 'SMTP Password', 'pass smtp'),
(456, 'mailtype', 'Mail Type', 'Type de mail'),
(457, 'smtp_user', 'SMTP User', 'utilisateur smtp'),
(458, 'html', 'Html', 'HTML'),
(459, 'text', 'Text', 'Texte '),
(460, 'email_send_to_passenger', ' Email Sent Sucessfully', 'Mail envoyé au passager'),
(461, 'bank', 'Bank Information', 'Banque'),
(462, 'instruction', 'Instruction', 'Instruction'),
(463, 'account_details', 'Account Details', 'Details du compte'),
(464, 'bank_logo', 'Bank Logo', 'Logo banque'),
(465, 'bank_name', 'Bank Name', 'Nom de banque'),
(466, 'bank_trans', 'Bank', 'Transation banque'),
(467, 'transaction_successfully_send', 'Your Information successfully Send', 'Transaction envoyé avec succès'),
(468, 'confirmation', 'Confirmation', 'Confirmation'),
(469, 'account_no', 'Account No', 'N° du compte'),
(470, 'transaction_no', 'Transaction No', 'N° de la transaction'),
(471, 'paypal', 'Paypal', 'Paypal'),
(472, 'cash', 'Cash', 'Cash'),
(473, 'paypal_checkout', 'Paypal Checkout', 'Checkout Paypal'),
(474, 'confirm_banking', 'Confirm Banking', 'Confirmation bancaire'),
(475, 'payment_information', 'Payment Information', 'Informaition de paiement '),
(476, 'email_gritting', 'Congratulation Mr.', 'Email personalisé'),
(477, 'email_ticket_idinfo', 'Your Purchase Ticket No-', 'ID info email'),
(478, 'ticket_confirmation', 'Unpaid Bank Booking List', 'Confirmation ticket'),
(479, 'deny', 'Deny', 'Rejeter'),
(480, 'confirm', 'CONFIRM', 'Confirmer'),
(481, 'note', 'Note', 'Note'),
(482, 'accournt_no', 'Account Number', 'N° Compte'),
(483, 'payer_name', 'Payer Name', 'Nom du payeur'),
(484, 'accournt_non', 'Account Number', 'N° Compte'),
(485, 'confirm_booking', 'Confirm Booking', 'Confirmer la réservation'),
(486, 'account_num', 'Account Number', 'Numéro du compte'),
(487, 'invalid_logo', 'Invalid Logo, Please upload gif|jpg|png|jpeg|ico type image', 'Logo invalide'),
(488, 'invalid_favicon', 'Invalid Favicon, Please upload gif|jpg|png|jpeg|ico type image', 'Favicon invalide'),
(489, 'print_ticket', 'Print Ticket', 'Imprimmer le ticket'),
(490, 'cancel_ticket', 'Cancel Ticket', 'Annuler le ticket'),
(491, 'email_not_send', 'Email Not Send', 'Email non envoyé'),
(492, 'timezone', 'Time Zone', 'Fuseau horaire'),
(493, 'menu_permission_form', 'Menu Permission Form', 'Position du formulaire de menu'),
(494, 'permission_setup', 'Permission setup', 'Reglage de permission'),
(495, 'menu_permission_list', 'Menu Permission List', 'Liste de permission menu'),
(496, 'add_fleet_type', 'Add Fleet Type', 'Ajouter type de flotte'),
(497, 'fleet_type_list', 'Fleet Type List', 'LIste type de véhicule'),
(498, 'add_facilities', 'Add Facilities', 'Ajouter les facilités'),
(499, 'facilities_list', 'Facilities List', 'Liste de facilités'),
(500, 'add_registration', 'Add Vehicle', 'Ajouter une souscription'),
(501, 'registration_list', 'Vehicle List', 'Liste d\'enregistrement'),
(502, 'refund_list', 'Refund List', 'Liste de remboursement'),
(503, 'add_refund', 'Add Refund', 'Ajouter un remboursement'),
(504, 'booking_list', 'Booking List', 'Liste de reservation'),
(505, 'add_booking', 'Add Booking', 'Ajouter une réservation'),
(506, 'passenger_list', 'Passenger List', 'Liste des passagers'),
(507, 'assign_list', 'Assignment List', 'Liste d\'assignation'),
(508, 'close_list', 'Close List', 'Liste fermé'),
(509, 'add_assign', 'Assign Vehicle To Trip', 'Ajouter une assignation'),
(510, 'route_list', 'Route List', 'Liste de ligne'),
(511, 'add_route', 'Add Route', 'Ajouter une ligne'),
(512, 'location_list', 'Destination List', 'Liste de localisation'),
(513, 'add_location', 'Add Destination', 'Ajouter localisation'),
(514, 'add_role', 'Add Role', 'Ajouter un role'),
(515, 'add_bank', 'Add Bank', 'Ajouter une banque'),
(516, 'bank_list', 'Bank List', 'Liste de banque'),
(517, 'role_name', 'Role Name', 'Nom du role'),
(518, 'role_description', 'Role Description', 'Description du role'),
(519, 'role_list', 'Role List', 'Liste de role'),
(520, 'user_access_role', 'User Access Role', 'Role d\'utilisateur'),
(521, 'role', 'Role', 'Role'),
(522, 'role_permission', 'Role Permission', 'Permission du role'),
(523, 'web_setting', 'Web Setting', 'Reglages web'),
(524, 'ticket_offer', 'Ticket Offer', 'Offre de tickets'),
(525, 'shedules', 'Shedules', 'Horaires'),
(526, 'add_shedule', 'Add Shedule', 'Ajouter un planning'),
(527, 'shedule_list', 'Shedule LIst', 'Liste d\'horaires'),
(528, 'shedule_time', 'Shedule Time', 'Temps de planning'),
(529, 'travel_slogan', 'On the placess you\'ll go', 'Slogan du voyage'),
(530, 'travel_sub_slogan', 'It is not down in any map; true place naver are.', 'Sous slogan du voyage'),
(531, 'search_tour', 'Search Tours', 'Rechercher un voyage'),
(532, 'find_dream', 'Find your dream tour today!', 'Rechercher reve'),
(533, 'find_now', 'Find now!', 'Rechercher maintenant'),
(534, 'start', 'Start', 'Demarrer '),
(535, 'end', 'End', 'Fin'),
(536, 'paypal_payment_paynow', 'PAYPAL PAY NOW', 'Paiement paypal Payer maintenant'),
(537, 'passenger_name', 'Passenger Name', 'Nom du passager'),
(538, 'facilities', 'Facilities', 'Facilités'),
(539, 'seat_name', 'Seat Name', 'Nom du siège'),
(540, 'adult', 'Adult', 'Adulte'),
(541, 'child', 'Child', 'Enfant'),
(542, 'special', 'Special', 'Special'),
(543, 'grand_total', 'Grand Total', 'Grand Total'),
(544, 'book_for_one_hour', 'Book For One Hour', 'Reserver pour une heure'),
(545, 'unpaid_cash_booking_list', 'Unpaid Cash Booking List', 'Liste des réservations non payés'),
(546, 'bank_transaction', 'Bank Transaction', 'Transaction de banque'),
(547, 'payment_term_andcondition', 'Payment Terms & Conditions', 'Terms & conditions de paiement'),
(548, 'add_terms', 'Add Terms', 'Ajouter les termes'),
(549, 'terms_list', 'Terms & Condition', 'Liste de termes'),
(550, 'how_to_pay', 'How to Pay', 'Comment Payer'),
(551, 'terms_and_condition', 'Terms And Conditions', 'Termes et conditions'),
(552, 'nid', 'National ID', 'N° ID'),
(553, 'add_trip', 'Create Trip', 'Ajouter un voyage'),
(554, 'trips', 'Trips', 'Voyages'),
(555, 'trip_list', 'Trip LIst', 'Liste de voyage'),
(556, 'trip_title', 'Trip Title', 'Titre du voyage'),
(557, 'types', 'Types', 'Types'),
(558, 'assigns', 'Assign', 'Assignation'),
(559, 'see_all', 'See All', 'Voir tout'),
(560, 'no_o_ticket', 'NO of Tickts', 'N° du ticket'),
(561, 'seats', 'Seat(s)', 'Sièges'),
(562, 'prices', 'Price(s)', 'Prix'),
(563, 'group_price', 'Group Price', 'Groupe de prix'),
(564, 'total', 'Total', 'Total'),
(565, 'passenger_details', 'Passenger Details', 'Details du passager'),
(566, 'journey_details', 'Journey Details', 'Details du voyage'),
(567, 'term_n_condition', 'Term & Condition', 'Termes & Conditions'),
(568, 'enter_login_info', 'Enter Your Login Info', 'Entrer les infos de connexion'),
(569, 'select_bank_name', 'Select Bank Name', 'Selectionner le nom de la banque'),
(570, 'enter_transaction_id', 'Enter Transaction Id', 'Entrer ID de la transaction'),
(571, 'booked_seat', 'Booked Seat', 'Siège reservé'),
(572, 'selected_seat', 'Selected Seat', 'Sièges selectionnés'),
(573, 'operator', 'Operator', 'Operateur'),
(574, 'fare', 'Fare', 'Flotte '),
(575, 'arrival', 'Arrival', 'Arrivée'),
(576, 'departure', 'Departure', 'Départ'),
(577, 'duration', 'Duration', 'Durée'),
(578, 'no_of_ticket', 'No Of tickets', 'N° du ticket'),
(579, 'special_fare', 'Special Price', 'Tarif special'),
(580, 'child_fare', 'Children Fare', 'Flotte pour enfant'),
(581, 'adult_fare', 'Adult Fare', 'Tarif Adulte'),
(582, 'ticket_information', 'Ticket Information', 'Information du ticket'),
(583, 'brand_name', 'Brand Name', 'Nom de la marque'),
(584, 'children_seat', 'Children Seat', 'Sièges pour enfant'),
(585, 'special_seat', 'Special Seat', 'Siège spécial'),
(586, 'menu_item_list', 'Menu Item List', 'Liste d\'élément du menu'),
(587, 'parent_menu', 'Parent Menu', 'Menu parent'),
(588, 'page_url', 'Page Url', 'URL de la page'),
(589, 'menu_title', 'Menu title', 'Titre du menu'),
(590, 'ins_menu_for_application', 'Insert Menu for the application', 'Menu instruction pour application'),
(591, 'yearly_progressbar', 'Yearly Progress Bar', 'Bar annuelle de progesssion'),
(592, 'child_price', 'Child Price', 'Prix pour enfant'),
(593, 'adult_price', 'Adult Price', 'Prix adulte'),
(594, 'special_price', 'Special Price', 'Prix spécial'),
(595, 'how_to_use', 'HOW TO USE', 'Comment utiliser'),
(596, 'bank_commission', 'Bank Commission', 'Commission de la banque'),
(597, 'bank_charge', 'Bank Charge', 'Facturation de banque'),
(598, 'type', 'Type', 'Type'),
(599, 'amount_paid', 'Amount Paid', 'Montant payé'),
(600, 'txn_id', 'TXN ID', 'ID tax'),
(601, 'item_number', 'Item Number', 'Numéro de l\'élément'),
(602, 'paument_success_message', 'Your Payment Successfully Paid', 'Message de paiement avec succès'),
(603, 'unpaid', 'Unpaid', 'Non payé'),
(604, 'paid', 'Paid', 'Payé'),
(605, 'trip_name', 'Trip Name', 'Nom du voyage'),
(606, 'account_number', 'Account Number', 'Numéro de compte'),
(607, 'owner_phone', 'Owner Phone No', 'Numéro de l\'auteur'),
(608, 'passenger_email', 'Passenger Email', 'Email du passager'),
(609, 'child_no', 'Child', 'N° de l\'enfant'),
(610, 'close_trip', 'Close Trip', 'Fermer le voyage'),
(611, 'agent_commission', 'Agent Commission', 'Commission agent'),
(612, 'credit', 'Credit', 'Crédit'),
(613, 'debit', 'Debit', 'Débiter'),
(614, 'balance', 'Balance', 'Solde'),
(615, 'agent_log', 'Agent Log', 'Blog agent'),
(616, 'total_ticket', 'Total Ticket', 'Ticket total'),
(617, 'total_amount', 'Total Amount', 'Montant total'),
(618, 'total_commission', 'Total Commission', 'Commission total'),
(619, 'select_agent_name', 'Select Agent Name', 'Selectionner le nom de l\'agent'),
(620, 'commission_amount', 'Commission Amout', 'Montant commission'),
(621, 'total_price', 'Total Price', 'Prix total'),
(622, 'commission_rate', 'Commission Rate', 'Taux de commission'),
(623, 'ticket_sales', 'Ticket Sale', 'Ventes de tickets'),
(624, 'vehicle', 'Vehicle', 'Vehicule'),
(625, 'ticket_sales_report_for', 'Ticket Sales Report For', 'Rapport de vente de tickets pour'),
(626, 'agent_report', 'Agent Report', 'Rapport agent'),
(627, 'agent_ledger', 'Agent Ledger', 'Registre d\'agent'),
(628, 'booking_details', 'Journey Details', 'Details de reservation'),
(630, 'websites', 'Go to Frontend', 'Sites web'),
(631, 'backup_and_download', 'Backup && Download', 'Sauvegarde et téléchargement'),
(632, 'distance_kmmile', '1 Km/Mile', 'Distance kilometrique'),
(633, 'children', 'Children', 'Enfants'),
(634, 'login_info', 'Login Information', 'Login Information'),
(635, 'please_configure_your_mail', 'Please configure your mail.', 'Please configure your mail.'),
(636, 'error', 'Error', 'Erreur'),
(637, 'settings_not_found', 'No Setting Here', 'Aucun paramètre ici'),
(638, 'location_not_found', 'Location Not Found', ' emplacement non trouvé'),
(639, 'fleets_not_found', 'Fleets Not Found', 'flotte non trouvée'),
(640, 'image_not_found', 'Image Not Found', 'image non trouvée'),
(641, 'no_trip_available', 'No Trip Available', 'Aucun voyage disponible'),
(642, 'required_field', 'Fields Are Required ', 'Les champs sont obligatoires'),
(643, 'successfully_login', 'Successfully Loged In', 'connecté avec succès'),
(644, 'no_data_found', 'No Data Found', 'Aucune donnée disponible'),
(645, 'registrantion', 'Registration', 'enregistrement'),
(646, 'forgot_password', 'Forgot Password', 'mot de passe oublié'),
(647, 'register', 'Register', ' registre'),
(648, 'location_details', 'Location Details', 'Détails de l\'emplacement'),
(649, 'journey_date', 'Journey Date', ' Date de voyage'),
(650, 'select_start_point', 'Select Start Point', 'Sélectionnez le point de départ'),
(651, 'select_end_point', 'Select End Point', ' Sélectionnez le point final'),
(652, 'select_fleet_type', 'Select Fleet Type', ' Sélectionnez le type de flotte'),
(653, 'total_seats', 'Total Seats', 'Nombre total de places'),
(654, 'pickup_and_drop', 'Pickup and Drop', 'Pickup and Drop'),
(655, 'select_pickup_location', 'Select Pickup Location', 'Sélectionnez l\'emplacement de ramassage'),
(656, 'select_drop_location', 'Select Drop Location', 'Sélectionnez un lieu de dépôt'),
(657, 'tap_to_select_seat', 'Tap To Select Seat', ' Appuyez sur pour sélectionner un siège'),
(658, 'seat_layout', 'Seat Layout', 'Disposition du siège'),
(659, 'continue', 'Continue', 'continuer'),
(660, 'full_name', 'Full Name', 'Nom complet'),
(661, 'email_address', 'Email Address', ' Adresse électronique'),
(662, 'journery_details', 'Journey Details', 'Détails du voyage'),
(663, 'select_your_payment_method', 'Select Your Payment Method', 'Sélectionnez le mode de paiement'),
(664, 'bank_transfer', 'Bank Transfer', 'Virement bancaire'),
(665, 'cash_payment', 'Cash Payment', 'Paiement en espèces'),
(666, 'select_your_bank_first', 'Select Bank Name First', 'Sélectionnez le nom de la banque en premier'),
(667, 'transaction_id', 'Transaction Id', 'Identifiant de transaction'),
(668, 'select_journey_date', 'Select Journey Date', 'Sélectionnez la date du voyage'),
(669, 'seat_details', 'Seat Details ', 'Détails du siège'),
(670, 'seat_n', 'Seat Number', 'Numéro de siège'),
(671, 'last_name', 'Last Name', 'Nom de famille'),
(672, 'confirm_password', 'Confirm Password', 'Confirmez le mot de passe'),
(673, 'no_facilities_available', 'No facilities Available', 'Aucun équipement disponible'),
(674, 'must_put_email_pass', 'Must Put Email and Password', ' Doit mettre l\'email et le mot de passe'),
(675, 'havn_nt_acc', 'Have n\'t Account', 'Je n\'ai pas de compte'),
(676, 'email_and_password_d_match', 'Email And Password doesn\'t Match', ' Email ou mot de passe ne correspond pas'),
(677, 'must_put_email', 'Must Put Your Email', 'Doit mettre un email'),
(678, 'select_pickup_and_drop_location', 'Select Pickup and Drop Location', ' Sélectionnez le lieu de ramassage et de dépose'),
(679, 'select_your_seat_properly', 'Select Your', 'Choisissez votre siège correctement'),
(680, 'check_term_and_condition', 'Check Terms and Condition', 'Vérifier les termes et conditions'),
(681, 'check_your_mail', 'Please Check Your Mail', 'Vérifier votre courrier'),
(682, 'plz_check_your_seat', 'Please Check Your Seat', 'S\'il vous plaît vérifier votre siège'),
(683, 'no_rout_available', 'No rout Available', 'Pas de déroute disponible'),
(684, 'your_booking_complete', 'Your Booking Successfully Completed', 'Votre réservation effectuée avec succès'),
(685, 'bank_booking_message', 'Check Bank Name,Transaction ID', 'Sélectionnez le nom de la banque, l\'identifiant de la transaction'),
(686, 'seat_properly', 'Seat Properly', 'Bien assis'),
(687, 'must_put_atlest_seat_num', 'You Must put Atleast 1 seat on adult/child/Special', 'Vous devez mettre au moins 1 siège sur adulte / enfant / spécial'),
(688, 'paypal_payment', 'Paypal Payment', 'Paiement PayPal'),
(689, 'bank_information', 'Bank Information', ' Information bancaire'),
(690, 'change_select_end_point', '& Change select end point', '& Modifier le point d\'arrivée sélectionné'),
(691, 'must_put_your_mail', 'You must put your email', 'Vous devez mettre votre email'),
(692, 'invalid_email_address', 'Invalid Email Address', 'Adresse e-mail invalide'),
(693, 'plz_check_your_mail_to_reset_passw', 'Please Check Your email to reset Password', 'Please Check Your email to reset Password'),
(694, 'edit_profile', 'EDIT PROFILE', 'EDITER LE PROFIL'),
(695, 'select_profile_image', 'Select Profile Image', 'Enregistrer l\'image de profil'),
(696, 'save_profile', 'Save Profile', 'Enregistrer le profil'),
(697, 'view_profile', 'View Profile', 'Voir le profil'),
(698, 'developed_by_bdtask', 'Developed By BDTASK', ' Développé par BDTASK'),
(699, 'use_new_password_to_update_password', 'Use New Password to Update Password', 'Utiliser un nouveau mot de passe pour mettre à jour le mot de passe'),
(700, 'pass_username_cant_be_empty', 'Password, First Name, Last Name can\'t empty. Use New password to update password , otherwise type old password', 'Le mot de passe, le prénom et le nom de famille ne peuvent pas être vides. Utilisez Nouveau mot de passe pour mettre à jour le mot de passe, sinon tapez ancien mot de passe'),
(701, 'no', 'NO', 'NON'),
(702, 'login_again', 'Data Save Successfully. Please Login Again', 'Sauvegarde des données avec succès. Veuillez vous reconnecter'),
(703, 'companies', 'Companies', 'Empresas'),
(704, 'lane', 'Lane', 'Lane'),
(705, 'nit', 'NIT', 'NIT'),
(706, 'driver_name_1', 'Driver name 1', 'Driver name 1'),
(707, 'driver_name_2', 'Driver name 2', 'Driver name 2'),
(708, 'sales', 'Sales', 'Sales'),
(709, 'ci', 'CI', 'CI'),
(710, 'date_birth', 'Date birth', 'Date birth'),
(711, 'seat_type', 'Seat type', 'Seat type'),
(712, 'bill_details', 'Bill details', 'Bill details'),
(713, 'passenger', 'Passenger', 'Passenger'),
(714, 'birth', 'Birth', 'Birth'),
(715, 'copy_passenger_data', 'Copy passenger data', 'Copy passenger data'),
(716, 'age', 'Age', 'Age'),
(717, 'outs', 'Outs', 'Outs'),
(718, 'ins', 'Ins', 'Ins'),
(719, 'money_in_cash', 'Money in cash', 'Money in cash'),
(720, 'all', 'All', 'All'),
(721, 'date_start', 'Date start', 'Date start'),
(722, 'date_end', 'Date end', 'Date end'),
(723, 'payment_method', 'Payment method', 'Payment method'),
(724, 'type_move', 'Type move', 'Type move'),
(725, 'check', 'Check', 'Check'),
(726, 'transfer', 'Transfer', 'Transfer'),
(727, 'in', 'In', 'In'),
(728, 'out', 'Out', 'Out'),
(729, 'casher', 'Casher', 'Casher'),
(730, 'add_move', 'Add move', 'Add move'),
(731, 'open_cash', 'Open cash', 'Open cash'),
(732, 'id', 'ID', 'ID'),
(733, 'close_cash', 'Close cash', 'Close cash'),
(734, 'concept', 'Concept', 'Concept'),
(735, 'close_modal', 'Close', 'Close'),
(737, 'signature', 'Signature', 'Signature'),
(738, 'back_to_cash', 'Back to cash', 'Back to cash'),
(739, 'totals', 'Totals', 'Totals'),
(740, 'moves', 'Moves', 'Moves'),
(741, 'travel_info', 'Travel info', 'Travel info'),
(742, 'seat', 'Seat', 'Seat'),
(743, 'shipment', 'Shipment', 'Shipment'),
(744, 'disembarkation', 'Disembarkation', 'Disembarkation'),
(745, 'merchandise', 'Merchandise', 'Merchandise'),
(746, 'create_merchandise', 'Create merchandise', 'Create merchandise'),
(747, 'courier', 'Courier', 'Courier'),
(748, 'origin', 'Origin', 'Origin'),
(749, 'destination', 'Destination', 'Destination'),
(750, 'courier_details', 'Courier details', 'Courier details'),
(751, 'package_details', 'Package details', 'Package details'),
(752, 'package_description', 'Package description', 'Package description'),
(753, 'price_per_kg', 'Price per kg', 'Price per kg'),
(754, 'weight', 'Weight', 'Price per kg'),
(755, 'recipient_details', 'Recipient details', 'Recipient details'),
(756, 'billing_details', 'Billing details', 'Billing details'),
(757, 'addresse', 'Addresse', 'Addresse'),
(758, 'receipt', 'Receipt', 'Receipt'),
(759, 'adjustment', 'Adjustment', 'Adjustment'),
(760, 'package_price', 'Package price', 'Package price'),
(761, 'receipt', 'Receipt', 'Receipt'),
(762, 'receipt_phone', 'Receipt phone', 'Receipt phone'),
(763, 'billing_type', 'Billing type', 'Billing type'),
(764, 'add_merchandise', 'Add', 'Add'),
(765, 'list_merchandise', 'List', 'List'),
(766, 'price_per_kg', 'Price per kg', 'Price per kg'),
(767, 'mark_as_delivered', 'Mark as delivered', 'Mark as delivered'),
(768, 'assign_to_trip', 'Assign to trip', 'Assign to trip'),
(769, 'view', 'View', 'View'),
(770, 'assign_merchandise_to_trip', 'Assign merchandise to trip', 'Assign merchandise to trip'),
(771, 'select_trip', 'Select a trip', 'Select a trip'),
(772, 'current_status', 'Current status', 'Current status'),
(773, 'start_trip', 'Start trip', 'Start trip'),
(774, 'check_in', 'Check in', 'Check in'),
(775, 'receipt_details', 'Receipt details', 'Receipt details');

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
  `birth` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sales`
--

INSERT INTO `sales` (`id`, `booking_id`, `seat_type`, `seat_number`, `name`, `ci`, `phone`, `birth`) VALUES
(3, 'BKLCXZ5E', 'Adult', '4', 'Nisa Delgado', '24370873', '+58 246402701', ''),
(4, 'BVUZ7OLA', 'Adult', '1', 'Erick Santos', '10756777', '71608981', '1986-11-11'),
(5, 'BVUZ7OLA', 'Adult', ' 2', 'Camile Vitoria', '010203', '7777-0000', '2016-11-08'),
(6, 'BN60ELPC', 'Adult', '9', 'Erick Santos', '10756777', '71608981', '1986-11-11'),
(7, 'BN60ELPC', 'Adult', '9', 'Erick Santos', '10756777', '71608981', '1986-11-11'),
(8, 'BN60ELPC', 'Adult', ' 10', 'Nisa Delgado', '', '04246402701', '1993-10-01'),
(9, 'BN60ELPC', 'Adult', '9', 'Erick Santos', '10756777', '71608981', '1986-11-11'),
(10, 'BN60ELPC', 'Adult', '9', 'Erick Santos', '10756777', '71608981', '1986-11-11'),
(11, 'BN60ELPC', 'Adult', ' 10', 'Nisa Delgado', '', '04246402701', '2022-09-17'),
(12, 'BN60ELPC', 'Adult', '9', 'Erick Santos', '10756777', '71608981', '1986-11-11'),
(13, 'BN60ELPC', 'Adult', '9', 'Camile Vitoria', '010203', '71608981', '2016-11-08'),
(14, 'BN60ELPC', 'Adult', ' 10', 'Nisa Delgado', '', '04246402701', '1993-10-01'),
(15, 'BER6J5Z2', 'Adult', '2', 'Nisa Delgado', '24370873', '04246402701', '1993-10-01'),
(16, 'BC2UZE8X', '', '', '', '', '', ''),
(17, 'BBQIIL15', 'Adult', '1', 'Nisa Delgado', '24370873', '04246402701', '1993-10-01'),
(18, 'BSUFGAJI', 'Adult', '3', 'Nisa Delgado', '24370873', '04246402701', ''),
(19, 'B8O1TRF4', 'Adult', '3', 'Nisa Delgado', '24370873', '04246402701', ''),
(20, 'BLKG0SCA', 'Adult', '3', 'Nisa Delgado', '24370873', '04246402701', ''),
(21, 'BH1XZFAU', 'Child', '1', 'Erick Santos', '10756777', '71608981', '1986-11-11'),
(22, 'BH1XZFAU', 'Child', ' 2', 'Camile Vitoria', '010203', '7777-0000', '2016-11-08'),
(23, 'BH1XZFAU', 'Child', '1', 'Erick Santos', '10756777', '71608981', '1986-11-11'),
(24, 'BH1XZFAU', 'Child', ' 2', 'Camile Vitoria', '010203', '7777-0000', '2016-11-08'),
(25, 'B2RJLZZ3', 'Adult', '1', 'Erick Santos', '10756777', '71608981', '1986-09-20'),
(26, 'B2RJLZZ3', 'Adult', ' 2', 'Daiane Marques', '10756777', '75602777', '1989-01-09'),
(27, 'B1I7WCHD', 'Adult', '1', 'Erick Santos', '10756777', '71608981', '1986-11-11'),
(28, 'B1I7WCHD', 'Adult', ' 2', 'Camile Vitoria', '010203', '7777-0000', '2016-11-08'),
(29, 'BLL7MK6V', '', NULL, 'Nisa Delgado', '24370873', '0424642701', '1993-10-01'),
(30, 'BLL7MK6V', 'Adult', NULL, 'Nisa Delgado', '24370873', '0424642701', '1993-10-01'),
(31, 'BLL7MK6V', 'Adult', NULL, 'Nisa Delgado', '24370873', '0424642701', '1993-10-01'),
(32, 'BJF1KA15', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01'),
(33, 'B02LKS0X', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01'),
(34, 'B7MYNYH3', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01'),
(35, 'B7MYNYH3', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01'),
(36, 'BLSUM8JQ', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01'),
(37, 'BLSUM8JQ', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01'),
(38, 'B8NLSPEK', 'Adult', NULL, 'Nisa Delgado', '24370873', '+58 246402701', '1993-10-01');

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
(1, 'Fleet Ticketing System', '98 Green Road, Farmgate, Dhaka-1215.', 'cta.pri.inn@gmail.com', '0123456789', 'assets/img/icons/faaeb1b5b873ede8817439fd25022719.png', '', 'english', 'LTR', '©2022 bdtask');

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
(1, '20:30:00', '06:00:00', -14);

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
(10, 'PDA9SUP6', 'Camile', 'Valeria', NULL, '71608981', '10756777', 'dr.ericksantos@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', NULL, NULL, 'Av Bush 590', NULL, NULL, NULL, NULL, 1, NULL);

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
(3, 'CBBA', 'CBBA', '', '', 1);

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
(1, 'Santa Cruz x La Paz', '1', '2', 'Cochabamba,Santa Cruz,La Paz', '700', '8', 0, 0, 1, 'No started');

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
(1, 'Admin', NULL, NULL, 'admin@admin.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '2022-09-30 19:40:57', '2022-09-13 17:41:05', '38.25.206.251', 1, 1),
(2, 'Erick', 'Santos', NULL, 'criativedigitalbo@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, './application/modules/agent/assets/images/5ccf0a54b6f45f3cc4862a339556737a.png', '2022-09-11 06:26:29', NULL, '186.121.195.82', 1, 0);

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
  `status` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ws_booking_history`
--

INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES
(1, 'BI5VGB8N', '1', 'PNXRDS6V', 1, 'Santa', 'La', 'CBBA, La Paz, Santa Cruz, ', 180, 0, 1, 1, 0, 2, '1, 2, ', '', NULL, NULL, '2022-09-10 19:06:53', '2022-09-10 19:06:53', 0),
(2, 'BTCZITW6', '1', 'PTKBPOBB', 1, 'Santa', 'La', 'CBBA, La Paz, Santa Cruz, ', 180, 0, 1, 1, 0, 2, '1, 2, ', '', NULL, NULL, '2022-09-10 19:09:40', '2022-09-10 19:09:40', 0),
(3, 'B5QV04G0', '1', 'P1FK7GEA', 1, 'Santa', 'La', 'CBBA, La Paz, Santa Cruz, ', 180, 0, 1, 1, 0, 2, '1, 2, ', '', NULL, NULL, '2022-09-10 19:10:25', '2022-09-10 19:10:25', 0),
(4, 'BPSSM99U', '1', 'PHX0DUXF', 1, 'Santa', 'La', '', 180, 0, 1, 1, 0, 2, '1, 2, ', '', NULL, NULL, '2022-09-10 19:11:31', '2022-09-10 19:11:31', 0),
(5, 'BAW1V8C5', '1', 'PWX3YAMT', 1, 'Santa', 'La', 'CBBA, La Paz, Santa Cruz, ', 180, 0, 1, 1, 0, 2, '1, 2, ', '', NULL, NULL, '2022-09-10 19:12:17', '2022-09-10 19:12:17', 0),
(6, 'BRAHHI1F', '1', 'PYA5AGMX', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '4, 5, ', '', NULL, NULL, '2022-09-10 19:15:12', '2022-09-10 19:15:12', 0),
(7, 'BJTG3I0A', '1', 'P1OIB79X', 1, 'Santa', 'La', '', 180, 0, 1, 1, 0, 2, '1, 2, ', '', NULL, NULL, '1970-01-01 11:59:21', '2022-09-14 11:59:21', 0),
(8, 'B61VIOYR', '1', 'P2FJNFBH', 1, 'Santa', 'Cochabamba', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, NULL, '2022-09-11 12:34:07', '2022-09-14 12:34:07', 0),
(9, 'BEB6UDAB', '1', 'PIY74QMW', 1, 'Santa', 'La', '', 80, 0, 0, 1, 0, 1, '8, ', '', NULL, NULL, '2022-09-14 12:45:23', '2022-09-14 12:45:23', 0),
(10, 'BLCJD4FU', '1', 'P412LSRQ', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '1, 2, ', '', NULL, NULL, '2022-09-14 12:47:15', '2022-09-14 12:47:15', 0),
(11, 'BX83WDAJ', '1', 'PGEN7F0Q', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '3, 6, ', '', NULL, NULL, '2022-09-16 11:48:21', '2022-09-16 11:48:21', 0),
(12, 'BDKI7S49', '1', 'PDNCRFKG', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '7, 8, ', '', NULL, NULL, '2022-09-16 11:56:35', '2022-09-16 11:56:35', 0),
(13, 'B6167V5D', '1', 'P6UWTI87', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '4, 5, ', '', NULL, NULL, '2022-09-16 12:02:41', '2022-09-16 12:02:41', 0),
(14, 'BHUYQEB8', '1', 'PUGTCHUL', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '4, 5, ', '', NULL, NULL, '2022-09-16 12:05:06', '2022-09-16 12:05:06', 0),
(15, 'B6CFRBNE', '1', 'PCU7C4NF', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '5, 6, ', '', NULL, NULL, '2022-09-16 12:06:15', '2022-09-16 12:06:15', 0),
(16, 'BP7YO05F', '1', 'P78Q731Q', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '3, 6, ', '', NULL, NULL, '2022-09-16 12:06:30', '2022-09-16 12:06:30', 0),
(17, 'BRCE5NCY', '1', 'PBM2P6IJ', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '5, 8, ', '', NULL, NULL, '2022-09-16 12:08:01', '2022-09-16 12:08:01', 0),
(18, 'B16U6TZP', '1', 'PA69B7Y0', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '3, 6, ', '', NULL, NULL, '2022-09-16 12:10:15', '2022-09-16 12:10:15', 0),
(19, 'BX0WFWNS', '1', 'PUZ434V7', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '5, 8, ', '', NULL, NULL, '2022-09-16 12:10:32', '2022-09-16 12:10:32', 0),
(20, 'B5Z3183D', '1', 'PDC80RTL', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '8, ', '', NULL, NULL, '2022-09-16 12:13:35', '2022-09-16 12:13:35', 0),
(21, 'BRC8SAW4', '1', 'PGKUZSIJ', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '5, 8, ', '', NULL, NULL, '2022-09-16 12:16:11', '2022-09-16 12:16:11', 0),
(22, 'BHTVG98Q', '1', 'PFIIOL26', 1, 'Santa', 'La', '', 180, 0, 1, 1, 0, 2, '5, 8, ', '', NULL, NULL, '2022-09-16 12:35:08', '2022-09-16 12:35:08', 0),
(23, 'BSNFJXR6', '1', 'PZZQBB6J', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '5, 8, ', '', NULL, NULL, '2022-09-16 12:37:04', '2022-09-16 12:37:04', 0),
(24, 'BX803T02', '1', 'PQ2PL8MX', 1, 'Santa', 'La', '', 180, 0, 1, 1, 0, 2, '2, 5, ', '', NULL, NULL, '2022-09-16 12:38:33', '2022-09-16 12:38:33', 0),
(25, 'BI5GLLHL', '1', 'P0BLJILT', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '7, 8, ', '', NULL, NULL, '2022-09-14 12:57:07', '2022-09-16 12:57:07', 0),
(26, 'BUKX88CS', '1', 'PGAMUWNC', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '3, 6, ', '', NULL, NULL, '2022-09-16 14:25:23', '2022-09-16 14:25:23', 0),
(27, 'BFCN580A', '1', 'P6MYPK99', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '2, 5, ', '', NULL, NULL, '2022-09-16 14:26:06', '2022-09-16 14:26:06', 0),
(28, 'BQO5YVUT', '1', 'PC8VNVBX', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '3, 6, ', '', NULL, NULL, '2022-09-16 14:37:07', '2022-09-16 14:37:07', 0),
(29, 'BRQGKK3Y', '1', 'PV1QK79R', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '3, 6, ', '', NULL, NULL, '2022-09-16 14:42:17', '2022-09-16 14:42:17', 0),
(30, 'BLIJ8VAH', '1', 'PPD1IA7T', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '3, 6, ', '', NULL, NULL, '2022-09-16 14:43:41', '2022-09-16 14:43:41', 0),
(31, 'BT7M2T9Q', '1', 'PI8ZK7IQ', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '5, 8, ', '', NULL, NULL, '2022-09-16 14:49:16', '2022-09-16 14:49:16', 0),
(32, 'BKWIK690', '1', 'PZM2CKD5', 1, 'La', 'Santa', '', 200, 0, 2, 0, 0, 2, '3, 6, ', '', NULL, NULL, '2022-09-16 14:51:50', '2022-09-16 14:51:50', 0),
(33, 'BXCARYNC', '1', 'PXQI27R5', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '2, 5, ', '', NULL, NULL, '2022-09-16 14:52:56', '2022-09-16 14:52:56', 0),
(34, 'BKCCQKC7', '1', 'P4UMK3HQ', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '6, ', '', NULL, NULL, '2022-09-16 14:53:52', '2022-09-16 14:53:52', 0),
(35, 'BWK8H9W7', '1', 'PDRUSNDE', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '2, ', '', NULL, NULL, '2022-09-16 14:55:12', '2022-09-16 14:55:12', 0),
(36, 'BIWWJFNB', '1', 'P5HF1XBZ', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '3, 6, ', '', NULL, NULL, '2022-09-16 14:56:50', '2022-09-16 14:56:50', 0),
(37, 'B6SZV2GO', '1', 'P5ZCZAMI', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '5, ', '', NULL, NULL, '2022-09-16 14:57:34', '2022-09-16 14:57:34', 0),
(38, 'B1XNMC3B', '1', 'PSI8DAN8', 1, 'Santa', 'La', 'CBBA, La Paz, Santa Cruz, ', 80, 0, 0, 1, 0, 1, '1, ', '', NULL, NULL, '2022-09-13 19:16:41', '2022-09-16 19:16:41', 0),
(39, 'BI8FEW9I', '1', 'PRWOV7ZZ', 1, 'Santa', 'La', 'CBBA, La Paz, Santa Cruz, ', 80, 0, 0, 1, 0, 1, '1, ', '', NULL, NULL, '2022-09-13 19:16:44', '2022-09-16 19:16:44', 0),
(40, 'BBLHA2M1', '1', 'PJURBY5N', 1, 'Santa', 'Cochabamba', '', 180, 0, 1, 1, 0, 2, '1, 2, ', '', NULL, NULL, '2022-09-13 19:21:21', '2022-09-16 19:21:21', 0),
(41, 'BRGKO86W', '1', 'PRENNVX0', 1, 'Santa', 'Cochabamba', '', 180, 0, 1, 1, 0, 2, '1, 2, ', '', NULL, NULL, '2022-09-13 19:21:28', '2022-09-16 19:21:28', 0),
(42, 'B9SCY5C0', '1', 'PCBR6RR8', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '3, 6, ', '', NULL, NULL, '2022-09-16 19:24:53', '2022-09-16 19:24:53', 0),
(43, 'B0E8K28Z', '1', 'P1X2DHU6', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '3, 6, ', '', NULL, NULL, '2022-09-16 19:29:02', '2022-09-16 19:29:02', 0),
(44, 'BEYXOFME', '1', 'PDFXJEMS', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '2, 3, ', '', NULL, NULL, '2022-09-16 19:29:57', '2022-09-16 19:29:57', 0),
(45, 'BPUZQN0Q', '1', 'PC806K22', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '1, 2, ', '', NULL, NULL, '2022-09-12 21:51:32', '2022-09-16 21:51:32', 0),
(46, 'B2MNXJB9', '1', 'PFD10Y9E', 1, 'Santa', 'La', '', 400, 0, 4, 0, 0, 4, '1, 2, 4, 5, ', '', NULL, NULL, '2022-09-12 21:52:21', '2022-09-16 21:52:21', 0),
(47, 'BD3KVODW', '1', 'PC7MD3JH', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '1, 2, ', '', NULL, NULL, '2022-09-12 11:35:25', '2022-09-17 11:35:25', 0),
(48, 'BWPY9L15', '1', 'PTZUE0HY', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '3, 6, ', '', NULL, NULL, '2022-09-16 13:06:48', '2022-09-17 13:06:48', 0),
(49, 'BLJ6QNB5', '1', 'PV2FZDS0', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '2, ', '', NULL, NULL, '2022-09-16 13:07:59', '2022-09-17 13:07:59', 0),
(50, 'BTPI0QJ6', '1', 'PJBYN9LT', 1, 'Santa', 'La', '', 180, 0, 1, 1, 0, 2, '3, 6, ', '', NULL, NULL, '2022-09-16 13:16:03', '2022-09-17 13:16:03', 0),
(51, 'BIV9NLVM', '1', 'PLKP0DHF', 1, 'Santa', 'La', '', 180, 0, 1, 1, 0, 2, '5, 8, ', '', NULL, NULL, '2022-09-16 13:16:41', '2022-09-17 13:16:41', 0),
(52, 'BHJVIQU6', '1', 'PWEJVJ5T', 1, 'Santa', 'La', '', 180, 0, 1, 1, 0, 2, '3, 6, ', '', NULL, NULL, '2022-09-16 13:19:08', '2022-09-17 13:19:08', 0),
(53, 'BLN63EWT', '1', 'PAT127FR', 1, 'Santa', 'La', '', 180, 0, 1, 1, 0, 2, '1, 2, ', '', NULL, NULL, '2022-09-16 13:20:26', '2022-09-17 13:20:26', 0),
(54, 'BOSEAWZV', '1', 'PNL7OZIF', 1, 'Santa', 'La', '', 180, 0, 1, 1, 0, 2, '3, 6, ', '', NULL, NULL, '2022-09-16 13:21:38', '2022-09-17 13:21:38', 0),
(55, 'BXFG0J7A', '1', 'PV98EB8G', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, NULL, '2022-09-16 14:22:35', '2022-09-17 14:22:35', 0),
(56, 'BGOUK3UY', '1', 'P2IAL068', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '1, 2, ', '', NULL, NULL, '2022-09-16 16:07:31', '2022-09-17 16:07:31', 0),
(57, 'BPEFACPJ', '1', 'P4HPSMYU', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '3, 6, ', '', NULL, NULL, '2022-09-16 16:08:05', '2022-09-17 16:08:05', 0),
(58, 'B9OTGOQX', '1', 'PDWALNAW', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '3, 6, ', '', NULL, NULL, '2022-09-16 16:19:09', '2022-09-17 16:19:09', 0),
(59, 'BQQOS2G2', '1', 'PDDJ5RVQ', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, NULL, '2022-09-16 16:20:05', '2022-09-17 16:20:05', 0),
(60, 'B1NYLC2S', '1', 'PBJMQZM8', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, NULL, '2022-09-16 16:20:55', '2022-09-17 16:20:55', 0),
(61, 'BGAC8VK5', '1', 'PDU93S15', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, NULL, '2022-09-16 16:21:27', '2022-09-17 16:21:27', 0),
(62, 'B25UPEQM', '1', 'PPIXU5AZ', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, NULL, '2022-09-16 16:22:12', '2022-09-17 16:22:12', 0),
(63, 'B97XNWSN', '1', 'PDXZWMWN', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, NULL, '2022-09-16 16:23:05', '2022-09-17 16:23:05', 0),
(64, 'BA8TRDE6', '1', 'PZEG2R2J', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '2, ', '', NULL, NULL, '2022-09-16 16:23:36', '2022-09-17 16:23:36', 0),
(65, 'BCZEHC5N', '1', 'PSKQ1KOM', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '2, ', '', NULL, NULL, '2022-09-16 16:24:21', '2022-09-17 16:24:21', 0),
(66, 'B7FZVGDX', '1', 'PMQEUFTH', 1, 'La', 'Santa', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, NULL, '2022-09-16 16:25:35', '2022-09-17 16:25:35', 0),
(67, 'BH2GB1ZH', '1', 'P0SFNP00', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, NULL, '2022-09-16 16:26:23', '2022-09-17 16:26:23', 0),
(68, 'BHCOZE96', '1', 'PYHHQL9D', 1, 'Santa', 'La', '', 80, 0, 0, 1, 0, 1, '3, ', '', NULL, NULL, '2022-09-16 16:27:05', '2022-09-17 16:27:05', 0),
(69, 'BG71M5PP', '1', 'PT3UQ7RP', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, NULL, '2022-09-16 16:27:40', '2022-09-17 16:27:40', 0),
(70, 'B6DP0JNK', '1', 'PQ5GFQOX', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, NULL, '2022-09-16 17:51:46', '2022-09-17 17:51:46', 0),
(71, 'BIWUQ7BC', '1', 'PHF8EZU7', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '2, ', '', NULL, NULL, '2022-09-16 18:07:48', '2022-09-17 18:07:48', 0),
(72, 'BZDW11KB', '1', 'PQQNIL5Q', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '5, ', '', NULL, NULL, '2022-09-16 18:09:52', '2022-09-17 18:09:52', 0),
(73, 'B8PFDAC6', '1', 'PT7WJN81', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, NULL, '2022-09-16 18:11:29', '2022-09-17 18:11:29', 0),
(74, 'BKLCXZ5E', '1', 'PF25A5KE', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '4, ', '', NULL, NULL, '2022-09-16 18:34:31', '2022-09-17 18:34:31', 0),
(75, 'BVUZ7OLA', '1', 'PDA9SUP6', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '1, 2, ', '', NULL, NULL, '2022-09-13 19:14:52', '2022-09-17 19:14:52', 0),
(76, 'BN60ELPC', '1', 'PJAGCN3F', 1, 'Santa', 'La', '', 300, 0, 3, 0, 0, 3, '9, 10, 11, ', '', NULL, NULL, '2022-09-13 19:20:43', '2022-09-17 19:20:43', 0),
(77, 'BER6J5Z2', '1', 'PF6GWINM', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '2, ', '', NULL, NULL, '2022-09-19 13:09:20', '2022-09-19 13:09:20', 0),
(78, 'BC2UZE8X', '1', 'PNK3LISI', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, NULL, '2022-09-19 13:12:38', '2022-09-19 13:12:38', 0),
(79, 'BBQIIL15', '1', 'P00DYD29', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, NULL, '2022-09-19 13:15:15', '2022-09-19 13:15:15', 0),
(80, 'BSUFGAJI', '1', 'P4W9DF96', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, NULL, '2022-09-19 13:16:17', '2022-09-19 13:16:17', 0),
(81, 'B8O1TRF4', '1', 'PY1SQRMU', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, NULL, '2022-09-19 13:17:38', '2022-09-19 13:17:38', 0),
(82, 'B7HYX7H2', '1', 'PSM6TB2P', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, NULL, '2022-09-19 13:18:18', '2022-09-19 13:18:18', 0),
(83, 'BQ533FAN', '1', 'PF7HU37O', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '1, 2, ', '', NULL, NULL, '2022-09-19 13:20:30', '2022-09-19 13:20:30', 0),
(84, 'BXDTE9KR', '1', 'P5ST6IH6', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, NULL, '2022-09-19 13:21:52', '2022-09-19 13:21:52', 0),
(85, 'BLKG0SCA', '1', 'PPFZXB89', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, NULL, '2022-09-19 13:25:35', '2022-09-19 13:25:35', 0),
(86, 'BE2MI6A5', '1', 'P9EBFJQG', 1, 'La', 'Santa', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, NULL, '2022-09-19 15:12:31', '2022-09-19 15:12:31', 0),
(87, 'BW51EG2B', '1', 'PRR33WFD', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, NULL, '2022-09-19 15:13:22', '2022-09-19 15:13:22', 0),
(88, 'BLIAD5GR', '1', 'PH3XT3T9', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '2, ', '', NULL, NULL, '2022-09-19 15:16:19', '2022-09-19 15:16:19', 0),
(89, 'B620XBU1', '1', 'PNNZ6CW6', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, NULL, '2022-09-19 16:15:20', '2022-09-19 16:15:20', 0),
(90, 'B5R97HW7', '1', 'P712H7EG', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, NULL, '2022-09-19 16:17:35', '2022-09-19 16:17:35', 0),
(91, 'B8WWA86M', '1', 'P08ZJPD1', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, NULL, '2022-09-19 16:18:02', '2022-09-19 16:18:02', 0),
(92, 'BVKWLTXG', '1', 'PW7H1D70', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, NULL, '2022-09-19 16:19:31', '2022-09-19 16:19:31', 0),
(93, 'BUGZ7QCR', '1', 'PDYUQJB5', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, NULL, '2022-09-19 16:20:12', '2022-09-19 16:20:12', 0),
(94, 'BUN2QW4J', '1', 'PHYSOGE2', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, NULL, '2022-09-19 16:23:14', '2022-09-19 16:23:14', 0),
(95, 'BUTQKCSK', '1', 'P0C9GSRW', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, NULL, '2022-09-19 16:33:22', '2022-09-19 16:33:22', 0),
(96, 'BY0YB3ML', '1', 'PU5S6WI9', 1, 'Santa', 'La', '', 80, 0, 0, 1, 0, 1, '1, ', '', NULL, NULL, '2022-09-19 16:33:56', '2022-09-19 16:33:56', 0),
(97, 'BY1PBUL6', '1', 'PWT1GDVJ', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, NULL, '2022-09-20 16:17:19', '2022-09-20 16:17:19', 0),
(98, 'BH1XZFAU', '1', 'PAQFYXST', 1, 'Santa', 'La', '', 160, 0, 0, 2, 0, 2, '1, 2, ', '', NULL, NULL, '2022-09-12 19:04:28', '2022-09-20 19:04:28', 0),
(99, 'B2RJLZZ3', '1', 'P2T23PD7', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '1, 2, ', '', NULL, NULL, '2022-09-20 19:10:57', '2022-09-20 19:10:57', 0),
(100, 'B1I7WCHD', '1', 'P49QH1AY', 1, 'Santa', 'La', '', 200, 0, 2, 0, 0, 2, '1, 2, ', '', NULL, NULL, '2022-09-21 21:16:07', '2022-09-20 21:16:07', 0),
(101, 'B1W2F61A', '1', 'PO2A7ZVO', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, NULL, '2022-09-21 10:46:06', '2022-09-21 10:46:06', 0),
(102, 'BWSOVZ5J', '1', 'P2IBIWT9', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, NULL, '2022-09-21 10:54:25', '2022-09-21 10:54:25', 0),
(103, 'BLL7MK6V', '1', 'PE7YAQ9Z', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, NULL, '2022-09-21 10:57:29', '2022-09-21 10:57:29', 0),
(104, 'BYKKRR8L', '1', 'PVHG8SAX', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, NULL, '2022-09-21 11:04:54', '2022-09-21 11:04:54', 0),
(105, 'BJF1KA15', '1', 'P3AEJ3KL', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, NULL, '2022-09-21 11:30:35', '2022-09-21 11:30:35', 0),
(106, 'B02LKS0X', '1', 'PDK68DA6', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, NULL, '2022-09-21 11:39:01', '2022-09-21 11:39:01', 0),
(107, 'B7MYNYH3', '1', 'P8OB66WA', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, NULL, '2022-09-21 11:40:21', '2022-09-21 11:40:21', 0),
(108, 'BLSUM8JQ', '1', 'P5141M61', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '3, ', '', NULL, NULL, '2022-09-21 11:41:30', '2022-09-21 11:41:30', 0),
(109, 'BA943113', '1', 'PKZJPSPO', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '2, ', '', NULL, NULL, '2022-09-21 11:45:10', '2022-09-21 11:45:10', 0),
(110, 'BR3GHJXZ', '1', 'PN8QRIC3', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '2, ', '', NULL, NULL, '2022-09-21 11:45:14', '2022-09-21 11:45:14', 0),
(111, 'BOPD5DYB', '1', 'PDWKPZMN', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '2, ', '', NULL, NULL, '2022-09-21 11:45:15', '2022-09-21 11:45:15', 0),
(112, 'B8NLSPEK', '1', 'PKJBN966', 1, 'Santa', 'La', '', 100, 0, 1, 0, 0, 1, '1, ', '', NULL, NULL, '2022-09-21 12:09:17', '2022-09-21 12:09:17', 0);

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
(1, 'Bus 365', 'Bus 365', '123, demo street, demo-city, 0000', 'business@test.com', '0123456789', 'application/modules/website/assets/images/icons/e5a567074086228d72ee40cf50163276.png', 'application/modules/website/assets/images/icons/4b2915e727770499a6811a7b4f193ce5.png', 1, 'America/Sao_Paulo', '', '', 'disable', 'business@test.com', 3, 'USD', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3651.7724407117266!2d90.38595131408418!3d23.75549289450067!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b8a4136c4b61%3A0x19549f5462616f04!2sBDTASK!5e0!3m2!1sen!2sbd!4v1531724548584\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=776;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

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
  MODIFY `shedule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tkt_feedback`
--
ALTER TABLE `tkt_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tkt_passenger`
--
ALTER TABLE `tkt_passenger`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `trip_route`
--
ALTER TABLE `trip_route`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ws_booking_history`
--
ALTER TABLE `ws_booking_history`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT de la tabla `ws_offer`
--
ALTER TABLE `ws_offer`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

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
