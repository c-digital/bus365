#
# TABLE STRUCTURE FOR: acc_account_name
#

DROP TABLE IF EXISTS `acc_account_name`;

CREATE TABLE `acc_account_name` (
  `account_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) NOT NULL,
  `account_type` int(11) NOT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO `acc_account_name` (`account_id`, `account_name`, `account_type`) VALUES ('1', 'Other Incocme', '1');
INSERT INTO `acc_account_name` (`account_id`, `account_name`, `account_type`) VALUES ('2', 'Office Rent', '0');
INSERT INTO `acc_account_name` (`account_id`, `account_name`, `account_type`) VALUES ('3', 'Ticket Sales', '1');
INSERT INTO `acc_account_name` (`account_id`, `account_name`, `account_type`) VALUES ('4', 'Staff Salary', '0');
INSERT INTO `acc_account_name` (`account_id`, `account_name`, `account_type`) VALUES ('5', 'Maintenance', '0');
INSERT INTO `acc_account_name` (`account_id`, `account_name`, `account_type`) VALUES ('7', 'Servicing', '0');
INSERT INTO `acc_account_name` (`account_id`, `account_name`, `account_type`) VALUES ('8', 'Agent Income', '1');
INSERT INTO `acc_account_name` (`account_id`, `account_name`, `account_type`) VALUES ('9', 'Agent Expense', '0');
INSERT INTO `acc_account_name` (`account_id`, `account_name`, `account_type`) VALUES ('10', 'Ass', '1');


#
# TABLE STRUCTURE FOR: acn_account_transaction
#

DROP TABLE IF EXISTS `acn_account_transaction`;

CREATE TABLE `acn_account_transaction` (
  `account_tran_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `transaction_description` varchar(255) NOT NULL,
  `amount` varchar(25) DEFAULT NULL,
  `create_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`account_tran_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

INSERT INTO `acn_account_transaction` (`account_tran_id`, `account_id`, `transaction_description`, `amount`, `create_by_id`) VALUES ('1', '3', 'dmeo data', '5000', '2');
INSERT INTO `acn_account_transaction` (`account_tran_id`, `account_id`, `transaction_description`, `amount`, `create_by_id`) VALUES ('2', '2', 'demo data', '60000', '2');
INSERT INTO `acn_account_transaction` (`account_tran_id`, `account_id`, `transaction_description`, `amount`, `create_by_id`) VALUES ('3', '3', 'Trip Id-6 Ticket No-A1,', '800', '2');
INSERT INTO `acn_account_transaction` (`account_tran_id`, `account_id`, `transaction_description`, `amount`, `create_by_id`) VALUES ('4', '3', 'Trip Id-6 Ticket No-A3,', '800', '2');
INSERT INTO `acn_account_transaction` (`account_tran_id`, `account_id`, `transaction_description`, `amount`, `create_by_id`) VALUES ('5', '3', 'Trip Id-6 Ticket No-A4,', '800', '6');
INSERT INTO `acn_account_transaction` (`account_tran_id`, `account_id`, `transaction_description`, `amount`, `create_by_id`) VALUES ('6', '3', 'Trip Id-6 Ticket No-B1,C2,', '1500', '6');
INSERT INTO `acn_account_transaction` (`account_tran_id`, `account_id`, `transaction_description`, `amount`, `create_by_id`) VALUES ('7', '9', 'sdfsfsdf', '120', '2');
INSERT INTO `acn_account_transaction` (`account_tran_id`, `account_id`, `transaction_description`, `amount`, `create_by_id`) VALUES ('8', '8', 'sdfsdf', '300', '2');
INSERT INTO `acn_account_transaction` (`account_tran_id`, `account_id`, `transaction_description`, `amount`, `create_by_id`) VALUES ('9', '9', 'sdfsdf', '300', '2');
INSERT INTO `acn_account_transaction` (`account_tran_id`, `account_id`, `transaction_description`, `amount`, `create_by_id`) VALUES ('10', '8', 'sdfsdf', '99', '2');
INSERT INTO `acn_account_transaction` (`account_tran_id`, `account_id`, `transaction_description`, `amount`, `create_by_id`) VALUES ('11', '9', 'dfdf', '600', '2');
INSERT INTO `acn_account_transaction` (`account_tran_id`, `account_id`, `transaction_description`, `amount`, `create_by_id`) VALUES ('12', '8', 'Agent ID :5-sdfsadf', '234', '2');
INSERT INTO `acn_account_transaction` (`account_tran_id`, `account_id`, `transaction_description`, `amount`, `create_by_id`) VALUES ('13', '3', 'Trip Id-6 Ticket No-A1,A2,A3,', '2280', '6');
INSERT INTO `acn_account_transaction` (`account_tran_id`, `account_id`, `transaction_description`, `amount`, `create_by_id`) VALUES ('14', '3', 'Trip Id-11 Ticket No-A1,A2,', '1950', '2');
INSERT INTO `acn_account_transaction` (`account_tran_id`, `account_id`, `transaction_description`, `amount`, `create_by_id`) VALUES ('15', '3', 'Trip Id-6 Ticket No-A1,', '800', '2');


#
# TABLE STRUCTURE FOR: agent_info
#

DROP TABLE IF EXISTS `agent_info`;

CREATE TABLE `agent_info` (
  `agent_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `status` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`agent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `agent_info` (`agent_id`, `agent_first_name`, `agent_second_name`, `agent_company_name`, `agent_document_id`, `agent_pic_document`, `agent_picture`, `agent_phone`, `agent_mobile`, `agent_email`, `agent_address_line_1`, `agent_address_line_2`, `agent_address_city`, `agent_address_zip_code`, `agent_country`, `agent_commission`, `status`) VALUES ('1', ' SHM', ' Arafat', ' ldkjfnsdjn', ' ', '', './application/modules/agent/assets/images/db19264dac209d5df92317bfc4f90c5d.jpg', ' 84351351', ' 3645351', '', '                                                                    ', '                                                                    ', ' ', ' ', '', '0', NULL);
INSERT INTO `agent_info` (`agent_id`, `agent_first_name`, `agent_second_name`, `agent_company_name`, `agent_document_id`, `agent_pic_document`, `agent_picture`, `agent_phone`, `agent_mobile`, `agent_email`, `agent_address_line_1`, `agent_address_line_2`, `agent_address_city`, `agent_address_zip_code`, `agent_country`, `agent_commission`, `status`) VALUES ('2', 'Sarwar', 'Sujon', 'adfhbjahb', '', NULL, './application/modules/agent/assets/images/032748a0cc799020f07027f0cacdfbef.png', '98765342', '6846321.2', 'agent@gmail.com', 'iuyagsdkajs', 'adkjfk', 'Dhaka', '1207', 'Bangladesh', '0', NULL);
INSERT INTO `agent_info` (`agent_id`, `agent_first_name`, `agent_second_name`, `agent_company_name`, `agent_document_id`, `agent_pic_document`, `agent_picture`, `agent_phone`, `agent_mobile`, `agent_email`, `agent_address_line_1`, `agent_address_line_2`, `agent_address_city`, `agent_address_zip_code`, `agent_country`, `agent_commission`, `status`) VALUES ('5', 'HM', 'Isahaq', 'Bdtask', '23424', NULL, './application/modules/agent/assets/images/854f2cec3721cc324ed5805610f86a04.png', '01730164623', '02364', 'hmisahaq01@gmail.com', 'dfsdf', 'sdfdsf', 'Dhaka', '1207', 'Bangladesh', '3', NULL);


#
# TABLE STRUCTURE FOR: agent_ledger
#

DROP TABLE IF EXISTS `agent_ledger`;

CREATE TABLE `agent_ledger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL,
  `booking_id` varchar(30) NOT NULL,
  `debit` float NOT NULL DEFAULT '0',
  `credit` float NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `commission_rate` float NOT NULL DEFAULT '0',
  `total_price` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

INSERT INTO `agent_ledger` (`id`, `agent_id`, `booking_id`, `debit`, `credit`, `date`, `commission_rate`, `total_price`) VALUES ('2', '5', 'BL3F7KA5', '0', '45', '2018-09-09', '3', '800');
INSERT INTO `agent_ledger` (`id`, `agent_id`, `booking_id`, `debit`, `credit`, `date`, `commission_rate`, `total_price`) VALUES ('3', '5', '', '30', '0', '2018-09-10', '0', '0');
INSERT INTO `agent_ledger` (`id`, `agent_id`, `booking_id`, `debit`, `credit`, `date`, `commission_rate`, `total_price`) VALUES ('4', '5', '', '50', '0', '2018-09-10', '0', '0');
INSERT INTO `agent_ledger` (`id`, `agent_id`, `booking_id`, `debit`, `credit`, `date`, `commission_rate`, `total_price`) VALUES ('5', '5', '', '120', '0', '2018-09-10', '0', '0');
INSERT INTO `agent_ledger` (`id`, `agent_id`, `booking_id`, `debit`, `credit`, `date`, `commission_rate`, `total_price`) VALUES ('6', '5', '', '300', '0', '2018-09-10', '0', '0');
INSERT INTO `agent_ledger` (`id`, `agent_id`, `booking_id`, `debit`, `credit`, `date`, `commission_rate`, `total_price`) VALUES ('7', '5', '', '300', '0', '2018-09-10', '0', '0');
INSERT INTO `agent_ledger` (`id`, `agent_id`, `booking_id`, `debit`, `credit`, `date`, `commission_rate`, `total_price`) VALUES ('8', '5', '', '0', '99', '2018-09-10', '0', '0');
INSERT INTO `agent_ledger` (`id`, `agent_id`, `booking_id`, `debit`, `credit`, `date`, `commission_rate`, `total_price`) VALUES ('9', '5', '', '600', '0', '2018-09-10', '0', '0');
INSERT INTO `agent_ledger` (`id`, `agent_id`, `booking_id`, `debit`, `credit`, `date`, `commission_rate`, `total_price`) VALUES ('10', '5', '', '0', '234', '2018-09-10', '0', '0');
INSERT INTO `agent_ledger` (`id`, `agent_id`, `booking_id`, `debit`, `credit`, `date`, `commission_rate`, `total_price`) VALUES ('11', '5', 'BPZQ25KR', '0', '68.4', '2018-09-10', '3', '2280');


#
# TABLE STRUCTURE FOR: assistant_history
#

DROP TABLE IF EXISTS `assistant_history`;

CREATE TABLE `assistant_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `assistant_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `second_name` varchar(50) NOT NULL,
  `closed_by_id` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO `assistant_history` (`id`, `assistant_id`, `first_name`, `second_name`, `closed_by_id`) VALUES ('1', '3', 'Tuhin', 'Sarkar', '2');
INSERT INTO `assistant_history` (`id`, `assistant_id`, `first_name`, `second_name`, `closed_by_id`) VALUES ('2', '4', 'Jabbar', 'Ahmad', '2');
INSERT INTO `assistant_history` (`id`, `assistant_id`, `first_name`, `second_name`, `closed_by_id`) VALUES ('3', '5', 'Kayum', 'Rahman', '2');
INSERT INTO `assistant_history` (`id`, `assistant_id`, `first_name`, `second_name`, `closed_by_id`) VALUES ('4', '6', 'Younus', 'Molla', '2');


#
# TABLE STRUCTURE FOR: bank_info
#

DROP TABLE IF EXISTS `bank_info`;

CREATE TABLE `bank_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(200) NOT NULL,
  `account_name` varchar(100) NOT NULL,
  `account_number` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO `bank_info` (`id`, `bank_name`, `account_name`, `account_number`) VALUES ('1', 'JPMorgan Chase & Co.', 'Account No:12345678', '');
INSERT INTO `bank_info` (`id`, `bank_name`, `account_name`, `account_number`) VALUES ('2', 'Bank of America Corp.', 'Account No:156454s', 'Send money ');
INSERT INTO `bank_info` (`id`, `bank_name`, `account_name`, `account_number`) VALUES ('3', 'DBBL', 'demo text', '');
INSERT INTO `bank_info` (`id`, `bank_name`, `account_name`, `account_number`) VALUES ('4', 'Jamuna Bank Ltd.', '14523145', 'kdfbksdjf');
INSERT INTO `bank_info` (`id`, `bank_name`, `account_name`, `account_number`) VALUES ('5', 'Bangladesh Bank', 'bdtask123', '23423423ttt');


#
# TABLE STRUCTURE FOR: bank_transaction
#

DROP TABLE IF EXISTS `bank_transaction`;

CREATE TABLE `bank_transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_id` varchar(50) NOT NULL,
  `transaction_id` varchar(50) NOT NULL,
  `payer_name` varchar(200) NOT NULL,
  `booking_id` varchar(50) NOT NULL,
  `note` varchar(250) NOT NULL,
  `refund` varchar(50) NOT NULL,
  `amount` float NOT NULL,
  `b_account_no` varchar(50) NOT NULL,
  `transaction_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('1', '2', '156432', 'Isahaq', 'B8J1CVJK', 'This is Demo', '', '100', '234234', '2018-04-02 09:16:39');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('2', '2', '234234', 'Koktel', 'BDK5P889', 'Thanks', '', '100', '234', '2018-04-02 09:48:20');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('3', '1', '23424', 'Mitchel', 'BGZOBJLZ', 'thanks', '', '100', '234234', '2018-04-02 09:58:19');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('4', '2', '123sdf', 'Antony', 'B6GSOFRD', 'This is Demo', '', '100', '234234', '2018-04-03 04:58:13');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('5', '1', '124598', 'Aurin', 'BRE2U6H3', 'thanks', '', '200', '234234', '2018-04-03 06:06:21');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('6', '1', '234234', 'Khan', 'BYABJTZD', '', '', '200', '154545', '2018-04-03 06:25:22');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('7', '1', '123456789', 'PWVV7X6V', 'BDMLOZSX', 'bank booking', '', '200', '0', '2018-07-30 10:17:57');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('8', '3', '36987', 'PJ6ZT40R', 'BBFB73V4', 'bank booking', '', '200', '0', '2018-07-30 10:22:05');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('9', '3', '987654', 'PXK79NHG', 'BP9NJCIV', 'bank booking', '', '200', '0', '2018-07-30 10:40:43');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('10', '2', '55555', 'PC3FQM6K', 'B6GCI0HC', 'bank booking', '', '350', '0', '2018-07-30 10:50:55');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('11', '1', '234', 'P48GQ5AO', 'BGBPIBP8', 'bank booking', '', '200', '0', '2018-07-30 10:53:34');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('12', '3', '456987', 'PQMDH53G', 'BMJ8CX4U', 'bank booking', '', '200', '0', '2018-07-30 11:15:47');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('13', '3', '12345', 'PB37L116', 'BT0099C3', 'bank booking', '', '200', '0', '2018-07-30 11:40:24');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('14', '2', '234234', 'P5KVLD1T', 'BH081ECP', 'bank booking', '', '200', '0', '2018-07-30 12:03:24');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('15', '2', '2134123', 'P7J525M8', 'BHJKTZAH', 'bank booking', '', '200', '0', '2018-07-30 12:12:05');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('16', '2', '23123', 'PZ05QL04', 'BFU2NOP4', 'bank booking', '', '200', '0', '2018-07-30 12:19:22');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('17', '3', '24234234', 'PSIM3AOO', 'BYJBT6DU', 'bank booking', '', '800', '0', '2018-08-14 19:09:22');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('18', '3', '324234', 'PZ7YIWLR', 'B1VLMPMF', 'bank booking', '', '500', '0', '2018-08-16 10:52:30');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('19', '1', '2342354234', 'P7NSFWI7', 'BNJQGY8B', 'bank booking', '', '500', '0', '2018-08-16 10:54:56');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('20', '1', '2342354', 'P4JJWE33', 'B6YIL6FH', 'bank booking', '', '500', '0', '2018-08-16 10:58:54');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('21', '3', '234324', 'PWGE1SOZ', 'B6OT2QEB', 'bank booking', '', '500', '0', '2018-08-16 09:20:49');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('22', '2', '874653121', 'P29X32PX', 'BQKF72YH', 'bank booking', '', '3600', '0', '2018-08-17 06:41:20');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('23', '2', '7894211', 'P29X32PX', 'BMRAC4I0', 'bank booking', '', '2700', '0', '2018-08-19 05:54:05');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('24', '2', '324234234', 'PJV9SZEX', 'BPKA6GD8', 'bank booking', '', '800', '0', '2018-08-19 09:58:44');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('25', '3', '543213123', 'P29X32PX', 'BKLRMLTZ', 'bank booking', '', '2200', '0', '2018-08-19 10:44:48');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('26', '1', '123456', 'PSJRA70J', 'BW2MKEE9', 'bank booking', '', '800', '0', '2018-08-19 20:13:32');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('27', '2', '325641', 'PNUCBP4R', 'BP8FAYQV', 'bank booking', '', '800', '0', '2018-08-28 04:51:07');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('28', '2', '325641', 'PNUCBP4R', 'BP8FAYQV', 'bank booking', '', '800', '0', '2018-08-28 04:51:18');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('29', '1', '23423423', 'P42RJ1TJ', 'B6WMHYTV', 'bank booking', '', '800', '0', '2018-08-28 06:30:27');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('30', '2', '2342353453', 'P45T67K9', 'BCQAQJCY', 'bank booking', '', '800', '0', '2018-08-28 06:59:36');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('31', '1', '123456', 'PEPRBBVC', 'BJ3RXTDK', 'bank booking', '', '1500', '0', '2018-08-29 03:49:51');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('32', '3', '234234', 'PCA1R3WC', 'B2D73S3Y', 'bank booking', '', '1200', '0', '2018-08-29 12:55:51');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('33', '2', '4578523', 'PUXPTP7J', 'BKU095O2', 'bank booking', '', '2400', '0', '2018-09-01 10:44:21');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('34', '3', '878787878787', 'PVTNHTS9', 'BBL2589E', 'bank booking', '', '2200', '0', '2018-09-01 10:47:31');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('35', '1', 'Jp12345', 'PX5UCYVJ', 'BY7I56QS', 'bank booking', '', '800', '0', '2018-09-05 00:09:42');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('36', '2', '12356', 'P4SJGUNT', 'BR71O1WF', 'bank booking', '', '800', '0', '2018-09-08 11:27:00');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('37', '3', '64566', 'PXTVSR8P', 'BP3M6W0C', 'bank booking', '', '800', '0', '2018-09-08 11:36:21');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('38', '3', '2134234', 'P7H1O9EG', 'BL2UXG86', 'bank booking', '', '800', '0', '2018-09-08 11:38:37');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('39', '3', '123456', 'PH5Q1E86', 'BW7ES5NL', 'bank booking', '', '800', '0', '2018-09-08 11:41:49');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('40', '2', '234234234', 'PFKV9AKD', 'BIU0UXTY', 'bank booking', '', '800', '0', '2018-09-08 11:46:58');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('41', '3', '45785', 'PF9OMOOH', 'B02ZZKY8', 'bank booking', '', '800', '0', '2018-09-08 13:18:09');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('42', '2', '12345', 'P5KE1BM7', 'BEHA7BQK', 'bank booking', '', '800', '0', '2018-09-08 13:48:37');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('43', '5', '1234567', 'P9XY40A6', 'B8Q5LLU1', 'bank booking', '', '800', '0', '2018-09-12 16:41:28');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('44', '5', '1234567', 'P9XY40A6', 'B8Q5LLU1', 'bank booking', '', '800', '0', '2018-09-12 16:45:34');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('45', '3', '34345345', 'PCBBQDSY', 'BGAFNYG1', 'bank booking', '', '800', '0', '2018-09-12 16:48:10');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('46', '2', '234324', 'PWI2JBPY', 'BKZ7TE0Q', 'bank booking', '', '800', '0', '2018-09-12 16:55:50');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('47', '4', '3453524', 'PN4V6Y1R', 'BFN9GPK5', 'bank booking', '', '800', '0', '2018-09-12 17:12:24');
INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES ('48', '5', '36987', 'PP02DQ9T', 'B1K0Y0VO', 'bank booking', '', '800', '0', '2018-09-12 17:15:55');


#
# TABLE STRUCTURE FOR: booking_downtime
#

DROP TABLE IF EXISTS `booking_downtime`;

CREATE TABLE `booking_downtime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reg_no` varchar(50) NOT NULL,
  `downtime` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO `booking_downtime` (`id`, `reg_no`, `downtime`) VALUES ('1', '', '1');


#
# TABLE STRUCTURE FOR: driver_history
#

DROP TABLE IF EXISTS `driver_history`;

CREATE TABLE `driver_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `driver_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `second_name` varchar(50) NOT NULL,
  `closed_by_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO `driver_history` (`id`, `driver_id`, `first_name`, `second_name`, `closed_by_id`) VALUES ('1', '1', 'Al-Amin', 'Khan', '2');
INSERT INTO `driver_history` (`id`, `driver_id`, `first_name`, `second_name`, `closed_by_id`) VALUES ('2', '2', 'Habibur ', 'Rahman', '2');
INSERT INTO `driver_history` (`id`, `driver_id`, `first_name`, `second_name`, `closed_by_id`) VALUES ('3', '7', 'Md', 'Monir', '2');
INSERT INTO `driver_history` (`id`, `driver_id`, `first_name`, `second_name`, `closed_by_id`) VALUES ('4', '9', 'Golam', 'robbani', 'null');


#
# TABLE STRUCTURE FOR: email_config
#

DROP TABLE IF EXISTS `email_config`;

CREATE TABLE `email_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `protocol` text NOT NULL,
  `smtp_host` text NOT NULL,
  `smtp_port` text NOT NULL,
  `smtp_user` varchar(35) NOT NULL,
  `smtp_pass` varchar(35) NOT NULL,
  `mailtype` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `email_config` (`id`, `protocol`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_pass`, `mailtype`) VALUES ('1', 'smtp', 'ssl://smtp.gosoglemail.com', '465', 'rdmvaijah@gmail.com', 'vai99863', 'html');


#
# TABLE STRUCTURE FOR: employee_history
#

DROP TABLE IF EXISTS `employee_history`;

CREATE TABLE `employee_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO `employee_history` (`id`, `first_name`, `second_name`, `position`, `phone_no`, `email_no`, `document_id`, `document_pic`, `address_line_1`, `address_line_2`, `picture`, `blood_group`, `country`, `city`, `zip`, `status`) VALUES ('1', 'Al-Amin', 'Khan', 'Driver', '015354242', 'alamin@gmail.com', '234234', NULL, 'gsadfsd', 'sdfsdf', './application/modules/hr/assets/images/4f15235c13c6143bf858b65cc9d73997.jpg', 'A+', 'Bangladesh', 'Dhaka', '1207', NULL);
INSERT INTO `employee_history` (`id`, `first_name`, `second_name`, `position`, `phone_no`, `email_no`, `document_id`, `document_pic`, `address_line_1`, `address_line_2`, `picture`, `blood_group`, `country`, `city`, `zip`, `status`) VALUES ('2', 'Habibur ', 'Rahman', 'Driver', '034674864', 'habibur@gmail.com', '234234', NULL, 'sdfasdf', 'sdfsdf', './application/modules/hr/assets/images/e6fc49eac9a306ea297d186aa29c3150.png', 'O-', 'Bangladesh', 'Dhaka', '1200', NULL);
INSERT INTO `employee_history` (`id`, `first_name`, `second_name`, `position`, `phone_no`, `email_no`, `document_id`, `document_pic`, `address_line_1`, `address_line_2`, `picture`, `blood_group`, `country`, `city`, `zip`, `status`) VALUES ('3', 'Tuhin', 'Sarkar', 'Assistant', '324234', 'tuhin@gmail.com', '345345', NULL, 'dfgsdfg', 'fgsdfg', './application/modules/hr/assets/images/7d4959181828f285e95f19e20a7272eb.jpg', 'B', 'India', 'Kalkata', '32424', NULL);
INSERT INTO `employee_history` (`id`, `first_name`, `second_name`, `position`, `phone_no`, `email_no`, `document_id`, `document_pic`, `address_line_1`, `address_line_2`, `picture`, `blood_group`, `country`, `city`, `zip`, `status`) VALUES ('4', 'Jabbar', 'Ahmad', 'Assistant', '1654521', 'jabbar@gmail.com', '32432', NULL, 'sdfsa', 'dfsadfasd', './application/modules/hr/assets/images/5106e2039948dab01bf5030a82224e1e.jpg', 'b', 'Afganistan', 'dfasfd', '2342', NULL);
INSERT INTO `employee_history` (`id`, `first_name`, `second_name`, `position`, `phone_no`, `email_no`, `document_id`, `document_pic`, `address_line_1`, `address_line_2`, `picture`, `blood_group`, `country`, `city`, `zip`, `status`) VALUES ('5', 'Kayum', 'Rahman', 'Assistant', '234234', 'kayum@gmail.com', '3242', NULL, 'sdf', 'sdfsdf', './application/modules/hr/assets/images/c00bcf1ac6837286b6a69a9e2717d525.jpg', 'a', 'Albania', 'dsadf', '234234', NULL);
INSERT INTO `employee_history` (`id`, `first_name`, `second_name`, `position`, `phone_no`, `email_no`, `document_id`, `document_pic`, `address_line_1`, `address_line_2`, `picture`, `blood_group`, `country`, `city`, `zip`, `status`) VALUES ('6', 'Younus', 'Molla', 'Assistant', '23423', '', '23424', NULL, 'sdfasd', 'fasdfasd', './application/modules/hr/assets/images/016d819f5dd1f8cc4c8066a32844ee83.jpg', 'O', 'Albania', 'sdfdsf', '34324', NULL);
INSERT INTO `employee_history` (`id`, `first_name`, `second_name`, `position`, `phone_no`, `email_no`, `document_id`, `document_pic`, `address_line_1`, `address_line_2`, `picture`, `blood_group`, `country`, `city`, `zip`, `status`) VALUES ('7', 'Md', 'Monir', 'Driver', '34234235', '', '854351213213', NULL, '', '', NULL, 'B+', 'Azerbaijan', '', '', NULL);
INSERT INTO `employee_history` (`id`, `first_name`, `second_name`, `position`, `phone_no`, `email_no`, `document_id`, `document_pic`, `address_line_1`, `address_line_2`, `picture`, `blood_group`, `country`, `city`, `zip`, `status`) VALUES ('8', ' Ali', ' Korban', 'Office Staff', ' 846513', 'korban@gmail.com', ' 8764312', './application/modules/hr/assets/images/e3f99dbc7f411021fb5202695fa847af.jpg', '  sfafa', '  asf', './application/modules/hr/assets/images/75b4eb0c66df40409a17cf9d1a7fa2e5.png', ' AB+', 'Angola', ' Laos', ' 9846152', NULL);
INSERT INTO `employee_history` (`id`, `first_name`, `second_name`, `position`, `phone_no`, `email_no`, `document_id`, `document_pic`, `address_line_1`, `address_line_2`, `picture`, `blood_group`, `country`, `city`, `zip`, `status`) VALUES ('9', 'Golam', 'robbani', 'Driver', '234234', 'robbani@gmail.com', '234234234', NULL, 'sdfasd', 'sdfasdf', './application/modules/hr/assets/images/fb3580e2b39da7762316dcacdc02bdde.png', 'B+', 'Bangladesh', 'Dhaka', '23423', NULL);


#
# TABLE STRUCTURE FOR: employee_type
#

DROP TABLE IF EXISTS `employee_type`;

CREATE TABLE `employee_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(30) DEFAULT NULL,
  `details` varchar(100) DEFAULT NULL,
  `status` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO `employee_type` (`type_id`, `type_name`, `details`, `status`) VALUES ('1', 'Driver', 'Expert in Driving', NULL);
INSERT INTO `employee_type` (`type_id`, `type_name`, `details`, `status`) VALUES ('8', 'Office Staff', 'regular staff', NULL);
INSERT INTO `employee_type` (`type_id`, `type_name`, `details`, `status`) VALUES ('6', 'Assistant', '', NULL);


#
# TABLE STRUCTURE FOR: enquiry
#

DROP TABLE IF EXISTS `enquiry`;

CREATE TABLE `enquiry` (
  `enquiry_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `enquiry` text,
  `checked` tinyint(1) DEFAULT NULL,
  `ip_address` varchar(20) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `checked_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`enquiry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

INSERT INTO `enquiry` (`enquiry_id`, `email`, `phone`, `name`, `enquiry`, `checked`, `ip_address`, `user_agent`, `checked_by`, `created_date`, `status`) VALUES ('1', 'johan@gmail.com', '2342342', 'Johan', 'Hi ! I want to know about bus365', '1', '162.158.166.159', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '2', '2018-04-02 12:40:11', '1');
INSERT INTO `enquiry` (`enquiry_id`, `email`, `phone`, `name`, `enquiry`, `checked`, `ip_address`, `user_agent`, `checked_by`, `created_date`, `status`) VALUES ('2', 'johans@gmail.com', '2342342', 'Johan', 'Hi ! I want to know about bus365', '1', '162.158.166.159', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '2', '2018-04-02 12:40:53', '1');
INSERT INTO `enquiry` (`enquiry_id`, `email`, `phone`, `name`, `enquiry`, `checked`, `ip_address`, `user_agent`, `checked_by`, `created_date`, `status`) VALUES ('3', 'tanzil4091@gmail.com', '1919228433', 'bdtask', 'This is demo text', '1', '162.158.166.159', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '2', '2018-04-02 12:41:08', '1');
INSERT INTO `enquiry` (`enquiry_id`, `email`, `phone`, `name`, `enquiry`, `checked`, `ip_address`, `user_agent`, `checked_by`, `created_date`, `status`) VALUES ('4', 'huray@gmail.com', '1919228433', 'hurayn', 'This is demo text', '1', '162.158.166.159', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '2', '2018-04-02 12:41:54', '1');
INSERT INTO `enquiry` (`enquiry_id`, `email`, `phone`, `name`, `enquiry`, `checked`, `ip_address`, `user_agent`, `checked_by`, `created_date`, `status`) VALUES ('5', 'huray@gmail.com', '1919228433', 'hurayn', 'This is demo text', '1', '162.158.166.159', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '2', '2018-04-02 12:42:06', '1');
INSERT INTO `enquiry` (`enquiry_id`, `email`, `phone`, `name`, `enquiry`, `checked`, `ip_address`, `user_agent`, `checked_by`, `created_date`, `status`) VALUES ('6', 'hmishaq01@gmail.com', '24325', 'hmishaq', '25wefccvxcv', '1', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '2', '2018-07-21 08:03:11', '1');
INSERT INTO `enquiry` (`enquiry_id`, `email`, `phone`, `name`, `enquiry`, `checked`, `ip_address`, `user_agent`, `checked_by`, `created_date`, `status`) VALUES ('7', 'vinihg@yahoo.com', '995651154', 'jeff', 'hi what is this', NULL, '181.198.191.17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.75 Safari/537.36', NULL, '2018-08-19 20:37:06', '1');
INSERT INTO `enquiry` (`enquiry_id`, `email`, `phone`, `name`, `enquiry`, `checked`, `ip_address`, `user_agent`, `checked_by`, `created_date`, `status`) VALUES ('8', 'vinihg@yahoo.com', '995651154', 'jeff', 'hi what is this', NULL, '181.198.191.17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.75 Safari/537.36', NULL, '2018-08-19 20:39:04', '1');
INSERT INTO `enquiry` (`enquiry_id`, `email`, `phone`, `name`, `enquiry`, `checked`, `ip_address`, `user_agent`, `checked_by`, `created_date`, `status`) VALUES ('9', 'vinihg@yahoo.com', '995651154', 'jeff', 'hi what is this', NULL, '181.198.191.17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.75 Safari/537.36', NULL, '2018-08-19 20:39:10', '1');
INSERT INTO `enquiry` (`enquiry_id`, `email`, `phone`, `name`, `enquiry`, `checked`, `ip_address`, `user_agent`, `checked_by`, `created_date`, `status`) VALUES ('10', 'vinihg@yahoo.com', '995651154', 'jeff', 'hi what is this', '1', '181.198.191.17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.75 Safari/537.36', '2', '2018-08-19 20:40:43', '1');
INSERT INTO `enquiry` (`enquiry_id`, `email`, `phone`, `name`, `enquiry`, `checked`, `ip_address`, `user_agent`, `checked_by`, `created_date`, `status`) VALUES ('11', 'sujon@gmail.com', '234234', 'Sujon', 'fsdfsadf', NULL, NULL, NULL, NULL, '2018-10-18 11:36:06', '1');
INSERT INTO `enquiry` (`enquiry_id`, `email`, `phone`, `name`, `enquiry`, `checked`, `ip_address`, `user_agent`, `checked_by`, `created_date`, `status`) VALUES ('12', 'sakir@gmail.com', '234234', 'Sakir', 'adsfasdf', NULL, NULL, NULL, NULL, '2018-10-18 11:40:53', '1');
INSERT INTO `enquiry` (`enquiry_id`, `email`, `phone`, `name`, `enquiry`, `checked`, `ip_address`, `user_agent`, `checked_by`, `created_date`, `status`) VALUES ('13', 'isaha@gmail.com', '23423', 'Ishaaq', 'sdfasdf', NULL, NULL, NULL, NULL, '2018-10-18 11:43:18', '1');
INSERT INTO `enquiry` (`enquiry_id`, `email`, `phone`, `name`, `enquiry`, `checked`, `ip_address`, `user_agent`, `checked_by`, `created_date`, `status`) VALUES ('14', 'sakir2@gmail.com', '234234', 'sdfsadf', 'dfsdaf', NULL, NULL, NULL, NULL, '2018-10-18 11:45:09', '1');
INSERT INTO `enquiry` (`enquiry_id`, `email`, `phone`, `name`, `enquiry`, `checked`, `ip_address`, `user_agent`, `checked_by`, `created_date`, `status`) VALUES ('15', 'test@test.com', '234324', 'sdfsdfsdf', 'dsfasdf', NULL, NULL, NULL, NULL, '2018-10-18 11:47:58', '1');


#
# TABLE STRUCTURE FOR: fit_fitness
#

DROP TABLE IF EXISTS `fit_fitness`;

CREATE TABLE `fit_fitness` (
  `fitness_id` int(11) NOT NULL AUTO_INCREMENT,
  `fitness_name` varchar(50) DEFAULT NULL,
  `fitness_description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`fitness_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `fit_fitness` (`fitness_id`, `fitness_name`, `fitness_description`) VALUES ('1', 'Body', 'Body fitness ');
INSERT INTO `fit_fitness` (`fitness_id`, `fitness_name`, `fitness_description`) VALUES ('2', 'License', 'License');
INSERT INTO `fit_fitness` (`fitness_id`, `fitness_name`, `fitness_description`) VALUES ('3', 'Oil Problem', 'Oil Problem Happend just from two days');
INSERT INTO `fit_fitness` (`fitness_id`, `fitness_name`, `fitness_description`) VALUES ('4', 'Gas Problem', 'The Gas was stolen');
INSERT INTO `fit_fitness` (`fitness_id`, `fitness_name`, `fitness_description`) VALUES ('5', 'registration', 'sdjfsdkfj');


#
# TABLE STRUCTURE FOR: fleet_facilities
#

DROP TABLE IF EXISTS `fleet_facilities`;

CREATE TABLE `fleet_facilities` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO `fleet_facilities` (`id`, `name`, `description`, `status`) VALUES ('1', 'Non AC Service', 'Non AC Service is available in this fleet', '1');
INSERT INTO `fleet_facilities` (`id`, `name`, `description`, `status`) VALUES ('2', 'Tea', 'Tea is available', '1');
INSERT INTO `fleet_facilities` (`id`, `name`, `description`, `status`) VALUES ('3', 'AC & Non AC Service', 'AC & Non AC Service is available in this fleet', '1');
INSERT INTO `fleet_facilities` (`id`, `name`, `description`, `status`) VALUES ('4', 'AC Service', 'AC & Non AC Service is available in this fleet', '1');
INSERT INTO `fleet_facilities` (`id`, `name`, `description`, `status`) VALUES ('6', 'Breakfast', 'Breakfast facilities are available', '1');
INSERT INTO `fleet_facilities` (`id`, `name`, `description`, `status`) VALUES ('7', 'Coffee', 'Coffee is available', '1');


#
# TABLE STRUCTURE FOR: fleet_registration
#

DROP TABLE IF EXISTS `fleet_registration`;

CREATE TABLE `fleet_registration` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
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
  `is_assign` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `fleet_registration` (`id`, `reg_no`, `fleet_type_id`, `engine_no`, `model_no`, `chasis_no`, `owner`, `owner_phone`, `company`, `ac_available`, `status`, `is_assign`) VALUES ('1', '123456', '1', '33333', '321456', '4561423', 'Isahaq', '231124312', 'TATA', '0', '1', '0');
INSERT INTO `fleet_registration` (`id`, `reg_no`, `fleet_type_id`, `engine_no`, `model_no`, `chasis_no`, `owner`, `owner_phone`, `company`, `ac_available`, `status`, `is_assign`) VALUES ('2', '12354567', '1', '3215468', '30252', '222020', 'Jahangir', NULL, 'Bdtask', '0', '1', '0');
INSERT INTO `fleet_registration` (`id`, `reg_no`, `fleet_type_id`, `engine_no`, `model_no`, `chasis_no`, `owner`, `owner_phone`, `company`, `ac_available`, `status`, `is_assign`) VALUES ('3', '6548795', '2', '365421', '9687563', '21564', 'Naem', NULL, 'Bdtask', '0', '1', '0');
INSERT INTO `fleet_registration` (`id`, `reg_no`, `fleet_type_id`, `engine_no`, `model_no`, `chasis_no`, `owner`, `owner_phone`, `company`, `ac_available`, `status`, `is_assign`) VALUES ('4', '44448620', '1', '98754352', '68765435', '87984651232.', 'Arafat', NULL, 'Hino', '0', '1', '0');
INSERT INTO `fleet_registration` (`id`, `reg_no`, `fleet_type_id`, `engine_no`, `model_no`, `chasis_no`, `owner`, `owner_phone`, `company`, `ac_available`, `status`, `is_assign`) VALUES ('5', 'Dhaka-Metro-Ja-12-48461321', '3', 'kja-25431254', 'k-68765435', 'hba-1764513213', 'Tanzil', '45345', 'Hino', '0', '1', '0');


#
# TABLE STRUCTURE FOR: fleet_type
#

DROP TABLE IF EXISTS `fleet_type`;

CREATE TABLE `fleet_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `layout` varchar(50) NOT NULL,
  `lastseat` varchar(30) NOT NULL,
  `total_seat` int(11) NOT NULL,
  `seat_numbers` text NOT NULL,
  `fleet_facilities` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO `fleet_type` (`id`, `type`, `layout`, `lastseat`, `total_seat`, `seat_numbers`, `fleet_facilities`, `status`) VALUES ('1', 'Ac', '2-2', '0', '24', 'A1 , A2 , A3 , A4 , B1 , B2 , B3 , B4 , C1 , C2 , C3 , C4 , D1 , D2 , D3 , D4 , E1 , E2 , E3 , E4 , F1 , F2 , F3 , F4 , ', 'Tea, Breakfast, Water', '1');
INSERT INTO `fleet_type` (`id`, `type`, `layout`, `lastseat`, `total_seat`, `seat_numbers`, `fleet_facilities`, `status`) VALUES ('2', 'Non-Ac', '3-2', '0', '30', 'A1 , A2 , A3 , A4 , A5 , B1 , B2 , B3 , B4 , B5 , C1 , C2 , C3 , C4 , C5 , D1 , D2 , D3 , D4 , D5 , E1 , E2 , E3 , E4 , E5 , F1 , F2 , F3 , F4 , F5 , ', 'Biscuit, Banana', '1');
INSERT INTO `fleet_type` (`id`, `type`, `layout`, `lastseat`, `total_seat`, `seat_numbers`, `fleet_facilities`, `status`) VALUES ('3', 'Non-AC MiniBus', '2-2', 'last', '37', 'A1 , A2 , A3 , A4 , B1 , B2 , B3 , B4 , C1 , C2 , C3 , C4 , D1 , D2 , D3 , D4 , E1 , E2 , E3 , E4 , F1 , F2 , F3 , F4 , G1 , G2 , G3 , G4 , H1 , H2 , H3 , H4 , I1 , I2 , I3 , I4 , M , ', '', '1');
INSERT INTO `fleet_type` (`id`, `type`, `layout`, `lastseat`, `total_seat`, `seat_numbers`, `fleet_facilities`, `status`) VALUES ('4', 'single', '1-1', '0', '20', 'A1 , A2 , B1 , B2 , C1 , C2 , D1 , D2 , F1 , F2 , G1 , G2 , H1 , H2 , I1 , I2 , J1 , J2 , K1 , K2 , ', 'sdf, dfg', '1');
INSERT INTO `fleet_type` (`id`, `type`, `layout`, `lastseat`, `total_seat`, `seat_numbers`, `fleet_facilities`, `status`) VALUES ('5', 'Night', '2-2', '0', '17', 'A1 , A2 , A3 , A4 , B1 , B2 , B3 , B4 , C1 , C2 , C3 , C4 , D1 , D2 , D3 , D4 , E1 , E2 , E3 , E4 , ', 'Breakfast', '1');
INSERT INTO `fleet_type` (`id`, `type`, `layout`, `lastseat`, `total_seat`, `seat_numbers`, `fleet_facilities`, `status`) VALUES ('6', 'sdfsadf', '2-2', '0', '12', 'A1 , A2 , A3 , A4 , B1 , B2 , B3 , B4 , C1 , C2 , C3 , C4 , ', 'Tea,AC & Non AC Service,AC Service', '1');


#
# TABLE STRUCTURE FOR: ftn_fitness_period
#

DROP TABLE IF EXISTS `ftn_fitness_period`;

CREATE TABLE `ftn_fitness_period` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fitness_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_milage` float DEFAULT NULL,
  `end_milage` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO `ftn_fitness_period` (`id`, `fitness_id`, `vehicle_id`, `start_date`, `end_date`, `start_milage`, `end_milage`) VALUES ('1', '1', '1', '2018-03-01', '2019-12-20', '50', '40');
INSERT INTO `ftn_fitness_period` (`id`, `fitness_id`, `vehicle_id`, `start_date`, `end_date`, `start_milage`, `end_milage`) VALUES ('2', '2', '2', '2018-04-01', '2020-03-18', '80', '60');
INSERT INTO `ftn_fitness_period` (`id`, `fitness_id`, `vehicle_id`, `start_date`, `end_date`, `start_milage`, `end_milage`) VALUES ('3', '3', '3', '2018-04-01', '2019-05-30', '70', '50');
INSERT INTO `ftn_fitness_period` (`id`, `fitness_id`, `vehicle_id`, `start_date`, `end_date`, `start_milage`, `end_milage`) VALUES ('4', '4', '5', '2018-04-01', '2018-04-04', '90', '50');
INSERT INTO `ftn_fitness_period` (`id`, `fitness_id`, `vehicle_id`, `start_date`, `end_date`, `start_milage`, `end_milage`) VALUES ('5', '3', '4', '2018-03-30', '2018-04-30', '60', '40');
INSERT INTO `ftn_fitness_period` (`id`, `fitness_id`, `vehicle_id`, `start_date`, `end_date`, `start_milage`, `end_milage`) VALUES ('6', '1', '3', '2018-03-01', '2020-03-13', '100', '80');


#
# TABLE STRUCTURE FOR: how_to_use
#

DROP TABLE IF EXISTS `how_to_use`;

CREATE TABLE `how_to_use` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `how_to_use` (`id`, `description`) VALUES ('1', '<p>There is&nbsp; no information UUUU</p>');


#
# TABLE STRUCTURE FOR: language
#

DROP TABLE IF EXISTS `language`;

CREATE TABLE `language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` varchar(100) NOT NULL,
  `english` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=632 DEFAULT CHARSET=utf8;

INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1', 'login', 'Login');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('2', 'email', 'Email Address');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('3', 'password', 'Password');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('4', 'reset', 'Reset');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('5', 'dashboard', 'Dashboard');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('6', 'home', 'Home');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('7', 'profile', 'Profile');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('8', 'profile_setting', 'Profile Setting');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('9', 'firstname', 'First Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('10', 'lastname', 'Last Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('11', 'about', 'About');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('12', 'preview', 'Preview');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('13', 'image', 'Image');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('14', 'save', 'Save');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('15', 'upload_successfully', 'Upload Successfully!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('16', 'user_added_successfully', 'User Added Successfully!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('17', 'please_try_again', 'Please Try Again...');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('18', 'inbox_message', 'Inbox Messages');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('19', 'sent_message', 'Sent Message');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('20', 'message_details', 'Message Details');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('21', 'new_message', 'New Message');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('22', 'receiver_name', 'Receiver Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('23', 'sender_name', 'Sender Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('24', 'subject', 'Subject');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('25', 'message', 'Message');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('26', 'message_sent', 'Message Sent!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('27', 'ip_address', 'IP Address');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('28', 'last_login', 'Last Login');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('29', 'last_logout', 'Last Logout');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('30', 'status', 'Status');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('31', 'delete_successfully', 'Delete Successfully!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('32', 'send', 'Send');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('33', 'date', 'Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('34', 'action', 'Action');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('35', 'sl_no', 'SL No.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('36', 'are_you_sure', 'Are You Sure ? ');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('37', 'application_setting', 'Application Setting');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('38', 'application_title', 'Application Title');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('39', 'address', 'Address');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('40', 'phone', 'Phone');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('41', 'favicon', 'Favicon');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('42', 'logo', 'Logo');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('43', 'language', 'Language');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('44', 'left_to_right', 'Left To Right');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('45', 'right_to_left', 'Right To Left');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('46', 'footer_text', 'Footer Text');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('47', 'site_align', 'Application Alignment');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('48', 'welcome_back', 'Welcome Back!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('49', 'please_contact_with_admin', 'Please Contact With Admin');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('50', 'incorrect_email_or_password', 'Incorrect Email/Password');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('51', 'select_option', 'Select Option');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('52', 'ftp_setting', 'Data Synchronize [FTP Setting]');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('53', 'hostname', 'Host Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('54', 'username', 'User Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('55', 'ftp_port', 'FTP Port');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('56', 'ftp_debug', 'FTP Debug');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('57', 'project_root', 'Project Root');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('58', 'update_successfully', 'Update Successfully');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('59', 'save_successfully', 'Save Successfully!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('61', 'internet_connection', 'Internet Connection');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('62', 'ok', 'Ok');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('63', 'not_available', 'Not Available');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('64', 'available', 'Available');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('65', 'outgoing_file', 'Outgoing File');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('66', 'incoming_file', 'Incoming File');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('67', 'data_synchronize', 'Data Synchronize');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('68', 'unable_to_upload_file_please_check_configuration', 'Unable to upload file! please check configuration');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('69', 'please_configure_synchronizer_settings', 'Please configure synchronizer settings');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('70', 'download_successfully', 'Download Successfully');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('71', 'unable_to_download_file_please_check_configuration', 'Unable to download file! please check configuration');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('72', 'data_import_first', 'Data Import First');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('73', 'data_import_successfully', 'Data Import Successfully!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('74', 'unable_to_import_data_please_check_config_or_sql_file', 'Unable to import data! please check configuration / SQL file.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('75', 'download_data_from_server', 'Download Data from Server');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('76', 'data_import_to_database', 'Data Import To Database');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('77', 'data_upload_to_server', 'Data Upload to Server');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('78', 'please_wait', 'Please Wait...');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('79', 'ooops_something_went_wrong', ' Ooops something went wrong...');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('80', 'module_permission_list', 'Module Permission List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('81', 'user_permission', 'User Permission');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('82', 'add_module_permission', 'Add Module Permission');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('83', 'module_permission_added_successfully', 'Module Permission Added Successfully!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('84', 'update_module_permission', 'Update Module Permission');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('85', 'download', 'Download');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('86', 'module_name', 'Module Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('87', 'create', 'Create');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('88', 'read', 'Read');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('89', 'update', 'Update');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('90', 'delete', 'Delete');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('91', 'module_list', 'Module List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('92', 'add_module', 'Add Module');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('93', 'directory', 'Module Direcotory');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('94', 'description', 'Description');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('95', 'image_upload_successfully', 'Image Upload Successfully!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('96', 'module_added_successfully', 'Module Added Successfully');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('97', 'inactive', 'Inactive');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('98', 'active', 'Active');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('99', 'user_list', 'User List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('100', 'see_all_message', 'See All Messages');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('101', 'setting', 'Setting');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('102', 'logout', 'Logout');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('103', 'admin', 'Admin');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('104', 'add_user', 'Add User');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('105', 'user', 'User');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('106', 'module', 'Module');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('107', 'new', 'New');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('108', 'inbox', 'Inbox');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('109', 'sent', 'Sent');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('110', 'synchronize', 'Synchronize');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('111', 'data_synchronizer', 'Data Synchronizer');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('112', 'module_permission', 'Module Permission');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('113', 'backup_now', 'Backup Now!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('114', 'restore_now', 'Restore Now!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('115', 'backup_and_restore', 'Data Backup');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('116', 'captcha', 'Captcha Word');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('117', 'database_backup', 'Database Backup');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('118', 'restore_successfully', 'Restore Successfully');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('119', 'backup_successfully', 'Backup Successfully');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('120', 'filename', 'File Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('121', 'file_information', 'File Information');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('122', 'size', 'Size');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('123', 'backup_date', 'Backup Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('124', 'overwrite', 'Overwrite');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('125', 'invalid_file', 'Invalid File!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('126', 'invalid_module', 'Invalid Module');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('127', 'remove_successfully', 'Remove Successfully!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('128', 'install', 'Install');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('129', 'uninstall', 'Uninstall');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('130', 'tables_are_not_available_in_database', 'Tables are not available in database.sql');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('131', 'no_tables_are_registered_in_config', 'No tables are registerd in config.php');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('132', 'enquiry', 'Enquiry');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('133', 'read_unread', 'Read/Unread');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('134', 'enquiry_information', 'Enquiry Information');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('135', 'user_agent', 'User Agent');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('136', 'checked_by', 'Checked By');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('137', 'new_enquiry', 'New Enquiry');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('138', 'fleet', 'Fleet Management');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('139', 'fleet_type', 'Fleet Type');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('140', 'add', 'Add');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('141', 'list', 'List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('142', 'fleet_facilities', 'Fleet Facilities');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('143', 'fleet_registration', 'Vehicles');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('144', 'reg_no', 'Registration No.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('145', 'model_no', 'Model No.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('146', 'engine_no', 'Engine No.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('147', 'chasis_no', 'Chasis No.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('148', 'total_seat', 'Total Seat');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('149', 'seat_numbers', 'Seat Number');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('150', 'owner', 'Owner');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('151', 'company', 'Company Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('152', 'trip', 'Trip Management');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('153', 'location', 'Location');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('154', 'route', 'Route');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('155', 'assign', 'Assign');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('156', 'close', 'Close Trip');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('157', 'location_name', 'Location Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('158', 'google_map', 'Google Map');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('159', 'start_point', 'Start Point');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('160', 'end_point', 'End Point');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('161', 'route_name', 'Route Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('162', 'distance', 'Distance');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('163', 'approximate_time', 'Approximate Time');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('164', 'stoppage_points', 'Stoppage Points');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('165', 'fleet_registration_no', 'Fleet Registration No.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('166', 'start_date', 'Start Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('167', 'end_date', 'End Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('168', 'driver_name', 'Driver Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('169', 'assistants_ids', 'Assistants');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('170', 'sold_ticket', 'Sold Ticket');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('171', 'total_income', 'Total Income');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('172', 'total_expense', 'Total Expense');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('173', 'total_fuel', 'Total Fuel');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('174', 'trip_comment', 'Trip Comment');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('175', 'closed_by', 'Closed by');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('176', 'ticket', 'Ticket Management');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('177', 'passenger', 'Passenger');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('178', 'middle_name', 'Middle Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('179', 'date_of_birth', 'Date of Birth');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('180', 'passenger_id', 'Passenger ID.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('181', 'address_line_1', 'Address Line 1');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('182', 'address_line_2', 'Address Line 2');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('184', 'zip_code', 'Zip Code');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('186', 'name', 'Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('187', 'ac_available', 'AC available');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('188', 'trip_id', 'Trip ID.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('189', 'book', 'Book');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('190', 'booking_id', 'Booking ID.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('191', 'available_seats', 'Available Seats');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('192', 'select_seats', 'Select Seats');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('193', 'time', 'Time');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('194', 'offer_code', 'Offer Code');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('195', 'price', 'Price');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('196', 'discount', 'Discount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('197', 'request_facilities', 'Request Facilities');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('198', 'pickup_location', 'Pickup Location');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('199', 'drop_location', 'Drop Location');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('200', 'amount', 'Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('201', 'invalid_passenger_id', 'Invalid Passenger ID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('202', 'invalid_input', 'Invalid Input');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('203', 'booking_date', 'Booking Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('204', 'cancelation_fees', 'Cancelation Fees');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('205', 'causes', 'Causes');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('206', 'comment', 'Comment');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('207', 'refund', 'Refund');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('208', 'refund_by', 'Refund by');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('209', 'feedback', 'Feedback');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('210', 'rating', 'Rating');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('211', 'blood_group', 'Blood Group');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('212', 'religion', 'Religion');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('219', 'details', 'Details');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('220', 'type_name', 'Type Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('221', 'view_details', 'View Details');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('222', 'document_pic', 'Document Picture');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('223', 'fitness_list', 'Fitness List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('226', 'fitness_name', 'Fitness Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('227', 'fitness_description', 'Description');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('228', 'successfully_updated', 'Your Data Successfully Updated');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('229', 'fitness_period', 'Fitness Period List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('230', 'fitness_id', 'Fitness Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('231', 'vehicle_id', 'Vehicles No');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('234', 'start_milage', 'Start Milage');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('235', 'end_milage', 'End Milage');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('236', 'agent', 'Agent');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('237', 'agent_first_name', 'First Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('238', 'agent_second_name', 'LastName');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('239', 'agent_company_name', 'Company Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('240', 'agent_document_id', 'Document ID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('241', 'agent_pic_document', 'Document File');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('242', 'agent_phone', 'Phone');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('243', 'agent_mobile', 'Mobile No');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('244', 'agent_email', 'Email');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('245', 'agent_address_line_1', 'Address Line 1');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('246', 'agent_address_line_2', 'Address Line 2');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('247', 'agent_address_city', 'City');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('248', 'agent_address_zip_code', 'ZIP');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('249', 'agent_country', 'Country');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('252', 'sl', 'SL');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('253', 'route_id', 'Route Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('254', 'vehicle_type_id', 'Vehicle Type');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('255', 'group_price_per_person', 'Group Price Per Person');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('256', 'group_size', 'Group Members');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('257', 'successfully_saved', 'Your Data Successfully Saved');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('258', 'account', 'Account');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('259', 'account_name', 'Account Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('260', 'account_type', 'Account Type');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('261', 'account_transaction', 'Account Transaction');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('262', 'account_id', 'Account Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('263', 'transaction_description', 'Transaction Details');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('265', 'pass_book_id', 'Passenger ID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('267', 'payment_id', 'Payment ID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('268', 'create_by_id', 'Created By');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('269', 'offer', 'Offer');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('270', 'offer_name', 'Offer Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('271', 'offer_start_date', 'Offer Start Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('272', 'offer_end_date', 'Offer Last Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('274', 'offer_discount', 'Discount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('275', 'offer_terms', 'Offer Terms');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('276', 'offer_route_id', 'Route Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('277', 'offer_number', 'Offer Number');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('280', 'seat_number', 'Seat No');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('281', 'available_seat', 'Available Seat');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('282', 'owner_name', 'Owner Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('283', 'agent_picture', 'Picture');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('284', 'account_add', 'Add Account');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('285', 'add_agent', 'Add Agent');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('286', 'hr', 'Human Resource');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('287', 'create_hr', 'Add Employee');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('288', 'serial', 'Sl');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('289', 'position', 'Position');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('290', 'phone_no', 'Phone No');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('291', 'email_no', 'Email');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('292', 'picture', 'Picture');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('293', 'first_name', 'First Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('294', 'second_name', 'Last Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('295', 'document_id', 'Documet Id');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('298', 'country', 'Country');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('299', 'city', 'City');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('300', 'zip', 'Zip ');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('393', 'add_passenger', 'Add Passenger');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('394', 'search_tiket', 'Search Ticket');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('395', 'slogan', 'Slogan');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('396', 'website', 'Website');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('397', 'submit', 'Submit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('398', 'customer_service', 'Customer Service');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('399', 'submit_successfully', 'Submit Successfully!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('400', 'add_to_website', 'Add to Website');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('401', 'our_customers_say', 'Our Customers Say');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('402', 'website_status', 'Website Status');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('403', 'title', 'Title');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('405', 'total_fleet', 'Total Fleet');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('406', 'total_passenger', 'Total Passenger');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('407', 'todays_trip', 'Today\'s Trip');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('408', 'seats_available', 'Seats Available');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('409', 'no_trip_avaiable', 'No trip avaiable');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('410', 'booking', 'Booking');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('411', 'something_went_worng', 'Something went worng!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('412', 'paypal_email', 'Paypal Email');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('413', 'currency', 'Currency');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('414', 'reports', 'Reports');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('415', 'search', 'Search');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('417', 'go', 'Go');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('418', 'all', 'All');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('419', 'filter', 'Filter');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('420', 'last_year_progress', 'Last Year Progress');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('421', 'download_document', 'Download Document');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('422', 'mobile', 'Mobile No.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('424', 'account_list', 'Account List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('425', 'add_income', 'Add Income');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('426', 'add_expense', 'Add Expense');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('427', 'agent_list', 'Agent List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('428', 'add_fitness', 'Add Fitness');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('429', 'fitness', 'Fitness');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('430', 'add_fitness_period', 'Add Fitness Period');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('431', 'employee_type', 'Employee Type');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('432', 'employee_list', 'Employee List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('433', 'add_offer', 'Add Offer');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('434', 'offer_list', 'Offer List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('435', 'add_price', 'Add Price');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('436', 'price_list', 'Price List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('437', 'layout', 'Layout');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('438', 'last_seat_availabe', 'Last Seat Available');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('439', 'paypal_transaction', 'Paypal Transaction');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('440', 'enable', 'Enable');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('441', 'disable', 'Disable');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('442', 'payment_gateway', 'Payment Gateway');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('443', 'payment_type', 'Payment Type');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('444', 'payment_status', 'Payment Status');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('445', 'downtime', 'Down Time');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('446', 'select_bus', 'Select Bus');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('447', 'user_info', 'Passenger Information');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('448', 'personal_info', 'Personal Information');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('449', 'booking_info', 'Booking Information');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('450', 'update_your_profile', 'Edit your Profile');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('451', 'email_configue', 'Email Configuration');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('452', 'protocol', 'Protocol');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('453', 'smtp_host', 'SMTP Host');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('454', 'smtp_port', 'SMTP Port');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('455', 'smtp_pass', 'SMTP Password');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('456', 'mailtype', 'Mail Type');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('457', 'smtp_user', 'SMTP User');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('458', 'html', 'Html');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('459', 'text', 'Text');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('460', 'email_send_to_passenger', ' Email Sent Sucessfully');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('461', 'bank', 'Bank Information');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('462', 'instruction', 'Instruction');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('463', 'account_details', 'Account Details');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('464', 'bank_logo', 'Bank Logo');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('465', 'bank_name', 'Bank Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('466', 'bank_trans', 'Bank');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('467', 'transaction_successfully_send', 'Your Information successfully Send');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('468', 'confirmation', 'Confirmation');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('469', 'account_no', 'Account No');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('470', 'transaction_no', 'Transaction No');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('471', 'paypal', 'Paypal');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('472', 'cash', 'Cash');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('473', 'paypal_checkout', 'Paypal Checkout');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('474', 'confirm_banking', 'Confirm Banking');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('475', 'payment_information', 'Payment Information');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('476', 'email_gritting', 'Congratulation Mr.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('477', 'email_ticket_idinfo', 'Your Purchase Ticket No-');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('478', 'ticket_confirmation', 'Unpaid Bank Booking List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('479', 'deny', 'Deny');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('480', 'confirm', 'Confirm');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('481', 'note', 'Note');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('482', 'accournt_no', 'Account Number');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('483', 'payer_name', 'Payer Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('484', 'accournt_non', 'Account Number');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('485', 'confirm_booking', 'Confirm Booking');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('486', 'account_num', 'Account Number');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('487', 'invalid_logo', 'Invalid Logo, Please upload gif|jpg|png|jpeg|ico type image');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('488', 'invalid_favicon', 'Invalid Favicon, Please upload gif|jpg|png|jpeg|ico type image');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('489', 'print_ticket', 'Print Ticket');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('490', 'cancel_ticket', 'Cancel Ticket');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('491', 'email_not_send', 'Email Not Send');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('492', 'timezone', 'Time Zone');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('493', 'menu_permission_form', 'Menu Permission Form');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('494', 'permission_setup', 'Permission setup');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('495', 'menu_permission_list', 'Menu Permission List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('496', 'add_fleet_type', 'Add Fleet Type');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('497', 'fleet_type_list', 'Fleet Type List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('498', 'add_facilities', 'Add Facilities');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('499', 'facilities_list', 'Facilities List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('500', 'add_registration', 'Add Vehicle');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('501', 'registration_list', 'Vehicle List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('502', 'refund_list', 'Refund List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('503', 'add_refund', 'Add Refund');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('504', 'booking_list', 'Booking List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('505', 'add_booking', 'Add Booking');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('506', 'passenger_list', 'Passenger List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('507', 'assign_list', 'Assignment List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('508', 'close_list', 'Close List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('509', 'add_assign', 'Assign Vehicle To Trip');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('510', 'route_list', 'Route List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('511', 'add_route', 'Add Route');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('512', 'location_list', 'Location List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('513', 'add_location', 'Add Location');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('514', 'add_role', 'Add Role');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('515', 'add_bank', 'Add Bank');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('516', 'bank_list', 'Bank List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('517', 'role_name', 'Role Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('518', 'role_description', 'Role Description');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('519', 'role_list', 'Role List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('520', 'user_access_role', 'User Access Role');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('521', 'role', 'Role');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('522', 'role_permission', 'Role Permission');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('523', 'web_setting', 'Web Setting');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('524', 'ticket_offer', 'Ticket Offer');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('525', 'shedules', 'Shedules');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('526', 'add_shedule', 'Add Shedule');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('527', 'shedule_list', 'Shedule LIst');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('528', 'shedule_time', 'Shedule Time');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('529', 'travel_slogan', 'On the placess you\'ll go');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('530', 'travel_sub_slogan', 'It is not down in any map; true place naver are.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('531', 'search_tour', 'Search Tours');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('532', 'find_dream', 'Find your dream tour today!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('533', 'find_now', 'Find now!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('534', 'start', 'Start');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('535', 'end', 'End');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('536', 'paypal_payment_paynow', 'PAYPAL PAY NOW');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('537', 'passenger_name', 'Passenger Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('538', 'facilities', 'Facilities');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('539', 'seat_name', 'Seat Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('540', 'adult', 'Adult');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('541', 'child', 'Child');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('542', 'special', 'Special');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('543', 'grand_total', 'Grand Total');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('544', 'book_for_one_hour', 'Book For One Hour');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('545', 'unpaid_cash_booking_list', 'Unpaid Cash Booking List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('546', 'bank_transaction', 'Bank Transaction');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('547', 'payment_term_andcondition', 'Payment Terms & Conditions');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('548', 'add_terms', 'Add Terms');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('549', 'terms_list', 'Terms & Condition');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('550', 'how_to_pay', 'How to Pay');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('551', 'terms_and_condition', 'Terms And Conditions');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('552', 'nid', 'National ID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('553', 'add_trip', 'Create Trip');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('554', 'trips', 'Trips');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('555', 'trip_list', 'Trip LIst');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('556', 'trip_title', 'Trip Title');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('557', 'types', 'Types');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('558', 'assigns', 'Assign');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('559', 'see_all', 'See All');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('560', 'no_o_ticket', 'NO of Tickts');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('561', 'seats', 'Seat(s)');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('562', 'prices', 'Price(s)');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('563', 'group_price', 'Group Price');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('564', 'total', 'Total');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('565', 'passenger_details', 'Passenger Details');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('566', 'journey_details', 'Journey Details');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('567', 'term_n_condition', 'Term & Condition');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('568', 'enter_login_info', 'Enter Your Login Info');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('569', 'select_bank_name', 'Select Bank Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('570', 'enter_transaction_id', 'Enter Transaction Id');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('571', 'booked_seat', 'Booked Seat');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('572', 'selected_seat', 'Selected Seat');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('573', 'operator', 'Operator');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('574', 'fare', 'Fare');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('575', 'arrival', 'Arrival');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('576', 'departure', 'Departure');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('577', 'duration', 'Duration');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('578', 'no_of_ticket', 'No Of tickets');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('579', 'special_fare', 'Special Price');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('580', 'child_fare', 'Children Fare');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('581', 'adult_fare', 'Adult Fate');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('582', 'ticket_information', 'Ticket Information');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('583', 'brand_name', 'Brand Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('584', 'children_seat', 'Children Seat');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('585', 'special_seat', 'Special Seat');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('586', 'menu_item_list', 'Menu Item List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('587', 'parent_menu', 'Parent Menu');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('588', 'page_url', 'Page Url');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('589', 'menu_title', 'Menu title');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('590', 'ins_menu_for_application', 'Insert Menu for the application');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('591', 'yearly_progressbar', 'Yearly Progress Bar');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('592', 'child_price', 'Child Price');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('593', 'adult_price', 'Adult Price');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('594', 'special_price', 'Special Price');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('595', 'how_to_use', 'HOW TO USE');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('596', 'bank_commission', 'Bank Commission');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('597', 'bank_charge', 'Bank Charge');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('598', 'type', 'Type');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('599', 'amount_paid', 'Amount Paid');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('600', 'txn_id', 'TXN ID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('601', 'item_number', 'Item Number');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('602', 'paument_success_message', 'Your Payment Successfully Paid');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('603', 'unpaid', 'Unpaid');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('604', 'paid', 'Paid');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('605', 'trip_name', 'Trip Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('606', 'account_number', 'Account Number');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('607', 'owner_phone', 'Owner Phone No');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('608', 'passenger_email', 'Passenger Email');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('609', 'child_no', 'Child');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('610', 'close_trip', 'Close Trip');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('611', 'agent_commission', 'Agent Commission');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('612', 'credit', 'Credit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('613', 'debit', 'Debit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('614', 'balance', 'Balance');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('615', 'agent_log', 'Agent Log');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('616', 'total_ticket', 'Total Ticket');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('617', 'total_amount', 'Total Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('618', 'total_commission', 'Total Commission');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('619', 'select_agent_name', 'Select Agent Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('620', 'commission_amount', 'Commission Amout');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('621', 'total_price', 'Total Price');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('622', 'commission_rate', 'Commission Rate');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('623', 'ticket_sales', 'Ticket Sale');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('624', 'vehicle', 'Vehicle');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('625', 'ticket_sales_report_for', 'Ticket Sales Report For');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('626', 'agent_report', 'Agent Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('627', 'agent_ledger', 'Agent Ledger');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('628', 'booking_details', 'Journey Details');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('630', 'websites', 'Go to Frontend');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('631', 'backup_and_download', 'Backup && Download');


#
# TABLE STRUCTURE FOR: message
#

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL,
  `sender_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=unseen, 1=seen, 2=delete',
  `receiver_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=unseen, 1=seen, 2=delete',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES ('1', '1', '2', 'test', '<p><img src=\"../../assets/tinymce/plugins/emoticons/img/smiley-embarassed.gif\" alt=\"embarassed\"><img src=\"../../assets/tinymce/plugins/emoticons/img/smiley-tongue-out.gif\" alt=\"tongue-out\"></p>', '2018-08-14 12:10:15', '1', '1');
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES ('2', '1', '2', 'tt', '<p>sdfsdf</p>', '2018-08-14 12:11:23', '1', '1');
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES ('3', '1', '2', 'ttt', '<p>sdfsadf</p>', '2018-08-14 12:11:33', '1', '1');
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES ('4', '2', '1', 'ggg', '<p>sadfsdf</p>', '2018-08-16 07:41:25', '1', '1');


#
# TABLE STRUCTURE FOR: module
#

DROP TABLE IF EXISTS `module`;

CREATE TABLE `module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text,
  `image` varchar(255) NOT NULL,
  `directory` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('1', 'Human Resource', 'Human Resource information module', 'application/modules/hr/assets/images/thumbnail.jpg', 'hr', '1');


#
# TABLE STRUCTURE FOR: module_permission
#

DROP TABLE IF EXISTS `module_permission`;

CREATE TABLE `module_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_module_id` int(11) NOT NULL,
  `fk_user_id` int(11) NOT NULL,
  `create` tinyint(1) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `update` tinyint(1) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: ofr_offer
#

DROP TABLE IF EXISTS `ofr_offer`;

CREATE TABLE `ofr_offer` (
  `offer_id` int(11) NOT NULL AUTO_INCREMENT,
  `offer_name` varchar(100) DEFAULT NULL,
  `offer_start_date` date DEFAULT NULL,
  `offer_end_date` date DEFAULT NULL,
  `offer_code` varchar(50) DEFAULT NULL,
  `offer_discount` float DEFAULT NULL,
  `offer_terms` varchar(30) DEFAULT NULL,
  `offer_route_id` varchar(50) DEFAULT NULL,
  `offer_number` int(15) DEFAULT NULL,
  PRIMARY KEY (`offer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `ofr_offer` (`offer_id`, `offer_name`, `offer_start_date`, `offer_end_date`, `offer_code`, `offer_discount`, `offer_terms`, `offer_route_id`, `offer_number`) VALUES ('1', 'Eid Offer', '2018-09-06', '2018-10-31', 'eid121', '10', 'aysgdhajdshkljas.kdal', '2', '2');
INSERT INTO `ofr_offer` (`offer_id`, `offer_name`, `offer_start_date`, `offer_end_date`, `offer_code`, `offer_discount`, `offer_terms`, `offer_route_id`, `offer_number`) VALUES ('2', 'vacaition', '2018-10-05', '2018-10-23', '54321', '100', 'dsfsadf', '1', '2');
INSERT INTO `ofr_offer` (`offer_id`, `offer_name`, `offer_start_date`, `offer_end_date`, `offer_code`, `offer_discount`, `offer_terms`, `offer_route_id`, `offer_number`) VALUES ('3', 'dfsasdf', '2018-10-01', '2018-10-31', '234234', '231', 'fsdfsad', '3', '0');


#
# TABLE STRUCTURE FOR: payment_informations
#

DROP TABLE IF EXISTS `payment_informations`;

CREATE TABLE `payment_informations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `how_to_pay` text NOT NULL,
  `terms_and_condition` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO `payment_informations` (`id`, `how_to_pay`, `terms_and_condition`) VALUES ('1', 'The Applicant agrees that the debit/credit card details provided by him/ her for use of the\r\naforesaid Service(s) must be correct and accurate and that the Applicant shall not use a\r\nDebit/ credit card, that is not lawfully owned by him/ her or the use of which is not\r\nauthorized by the lawful owner thereof. The Applicant further agrees and undertakes to\r\nProvide correct and valid debit/credit card details.', 'The Applicant agrees that the debit/credit card details provided by him/ her for use of the\r\naforesaid Service(s) must be correct and accurate and that the Applicant shall not use a\r\nDebit/ credit card, that is not lawfully owned by him/ her or the use of which is not\r\nauthorized by the lawful owner thereof. The Applicant further agrees and undertakes to\r\nProvide correct and valid debit/credit card details.');


#
# TABLE STRUCTURE FOR: pri_price
#

DROP TABLE IF EXISTS `pri_price`;

CREATE TABLE `pri_price` (
  `price_id` int(11) NOT NULL AUTO_INCREMENT,
  `route_id` varchar(50) DEFAULT NULL,
  `vehicle_type_id` varchar(50) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `children_price` float NOT NULL,
  `special_price` float NOT NULL,
  `group_price_per_person` float DEFAULT '0',
  `group_size` int(15) DEFAULT '0',
  PRIMARY KEY (`price_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO `pri_price` (`price_id`, `route_id`, `vehicle_type_id`, `price`, `children_price`, `special_price`, `group_price_per_person`, `group_size`) VALUES ('1', '2', '1', '1200', '1000', '1100', '1150', '4');
INSERT INTO `pri_price` (`price_id`, `route_id`, `vehicle_type_id`, `price`, `children_price`, `special_price`, `group_price_per_person`, `group_size`) VALUES ('2', '1', '1', '800', '700', '750', '760', '3');
INSERT INTO `pri_price` (`price_id`, `route_id`, `vehicle_type_id`, `price`, `children_price`, `special_price`, `group_price_per_person`, `group_size`) VALUES ('3', '2', '2', '900', '800', '860', '850', '3');
INSERT INTO `pri_price` (`price_id`, `route_id`, `vehicle_type_id`, `price`, `children_price`, `special_price`, `group_price_per_person`, `group_size`) VALUES ('4', '1', '2', '500', '400', '450', '420', '3');
INSERT INTO `pri_price` (`price_id`, `route_id`, `vehicle_type_id`, `price`, `children_price`, `special_price`, `group_price_per_person`, `group_size`) VALUES ('5', '3', '1', '1100', '850', '1000', '0', '0');
INSERT INTO `pri_price` (`price_id`, `route_id`, `vehicle_type_id`, `price`, `children_price`, `special_price`, `group_price_per_person`, `group_size`) VALUES ('6', '4', '1', '500', '450', '400', '0', '0');
INSERT INTO `pri_price` (`price_id`, `route_id`, `vehicle_type_id`, `price`, `children_price`, `special_price`, `group_price_per_person`, `group_size`) VALUES ('7', '5', '2', '750', '700', '700', '600', '4');
INSERT INTO `pri_price` (`price_id`, `route_id`, `vehicle_type_id`, `price`, `children_price`, `special_price`, `group_price_per_person`, `group_size`) VALUES ('8', '2', '3', '200', '180', '250', '1000', '5');
INSERT INTO `pri_price` (`price_id`, `route_id`, `vehicle_type_id`, `price`, `children_price`, `special_price`, `group_price_per_person`, `group_size`) VALUES ('9', '2', '1', '900', '950', '1000', '0', '0');
INSERT INTO `pri_price` (`price_id`, `route_id`, `vehicle_type_id`, `price`, `children_price`, `special_price`, `group_price_per_person`, `group_size`) VALUES ('10', '6', '3', '1100', '850', '1000', '900', '0');


#
# TABLE STRUCTURE FOR: sec_menu_item
#

DROP TABLE IF EXISTS `sec_menu_item`;

CREATE TABLE `sec_menu_item` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_url` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_menu` int(11) DEFAULT NULL,
  `is_report` tinyint(1) DEFAULT NULL,
  `createby` int(11) NOT NULL,
  `createdate` datetime NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('69', 'account_list', 'account_form', 'account', NULL, '0', '2', '2018-07-16 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('70', 'Enquiry', 'enquiry/view', 'enquiry', '0', '0', '2', '2018-07-16 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('71', 'setting', 'enquiry/setting', 'enquiry', NULL, '0', '2', '2018-07-16 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('72', 'agent_list', 'agent/agent_form', 'agent', NULL, '0', '2', '2018-07-16 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('73', 'fitness_list', 'fitness/fit_form', 'fitness', NULL, '0', '2', '2018-07-16 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('74', 'fitness_period', 'fitness/fit_period_form', 'fitness', NULL, '0', '2', '2018-07-16 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('75', 'fleet_type', '', 'fleet', NULL, '0', '2', '2018-07-16 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('76', 'add_fleet_type', 'fleet/type/form', 'fleet', '75', '0', '2', '2018-07-16 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('77', 'fleet_type_list', 'fleet/type/list', 'fleet', '75', '0', '2', '2018-07-16 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('78', 'fleet_facilities', '', 'fleet', NULL, '0', '2', '2018-07-16 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('79', 'add_facilities', 'fleet/facilities/form', 'fleet', '78', '0', '2', '2018-07-16 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('80', 'facilities_list', 'fleet/facilities/list', 'fleet', '78', '0', '2', '2018-07-16 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('81', 'account_transaction', 'transaction_form', 'account', '0', '0', '2', '2018-07-16 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('82', 'bank', '', 'account', '0', '0', '2', '2018-07-16 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('83', 'bank_list', 'account/bank/list', 'account', '82', '0', '2', '2018-07-16 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('84', 'add_bank', 'account/bank/form', 'account', '82', '0', '2', '2018-07-16 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('85', 'offer_list', 'offer/offer_form', 'offer', '0', '0', '2', '2018-07-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('86', 'price_list', 'price/price_form', 'price', '0', '0', '2', '2018-07-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('87', 'booking', 'reports/booking/list', 'reports', '130', '0', '2', '2018-07-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('88', 'assign', 'reports/assign/list', 'reports', '130', '0', '2', '2018-07-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('89', 'passenger', '', 'ticket', '0', '0', '2', '2018-07-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('90', 'add_passenger', 'ticket/passenger/form', 'ticket', '89', '0', '2', '2018-07-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('91', 'passenger_list', 'ticket/passenger/list', 'ticket', '89', '0', '2', '2018-07-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('92', 'booking_info', '', 'ticket', '0', '0', '2', '2018-07-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('93', 'add_booking', 'ticket/booking/form', 'ticket', '92', '0', '2', '2018-07-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('94', 'booking_list', 'ticket/booking/list', 'ticket', '92', '0', '2', '2018-07-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('95', 'location', '', 'trip', '0', '0', '2', '2018-07-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('96', 'add_location', 'trip/location/form', 'trip', '95', '0', '2', '2018-07-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('97', 'location_list', 'trip/location/list', 'trip', '95', '0', '2', '2018-07-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('98', 'route', '', 'trip', '0', '0', '2', '2018-07-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('99', 'add_route', 'trip/route/form', 'trip', '98', '0', '2', '2018-07-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('100', 'route_list', 'trip/route/list', 'trip', '98', '0', '2', '2018-07-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('101', 'websites', '', 'website', NULL, '0', '2', '2018-07-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('102', 'web_setting', '', 'website', '0', '0', '2', '2018-07-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('103', 'email_configue', '', 'website', '0', '0', '2', '2018-07-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('104', 'ticket_offer', '', 'website', '0', '0', '2', '2018-07-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('105', 'payment_term_andcondition', '', 'ticket', '0', '0', '2', '2018-07-30 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('108', 'unpaid_cash_booking_list', 'booking/unpaid_cashbooking', 'ticket', '0', '0', '2', '2018-07-30 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('109', 'employee_type', 'type_view', 'hr', '0', '0', '2', '2018-07-30 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('110', 'employee_list', 'viewhr', 'hr', '0', '0', '2', '2018-07-30 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('111', 'fleet_registration', 'registration/form', 'fleet', '0', '0', '2', '2018-08-14 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('112', 'add_registration', 'registration/form', 'fleet', '111', '0', '2', '2018-08-14 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('113', 'registration_list', 'registration/list', 'fleet', '111', '0', '2', '2018-08-14 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('114', 'ticket_confirmation', '', 'ticket', '0', '0', '2', '2018-08-14 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('115', 'refund', '', 'ticket', '0', '0', '2', '2018-08-14 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('116', 'add_refund', 'refund/form', 'ticket', '115', '0', '2', '2018-08-14 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('117', 'refund_list', 'refund/list', 'ticket', '115', '0', '2', '2018-08-14 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('118', 'shedules', '', 'trip', '0', '0', '2', '2018-08-14 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('119', 'add_shedule', 'shedule/shedule_form', 'trip', '118', '0', '2', '2018-08-14 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('120', 'shedule_list', 'shedule/list', 'trip', '118', '0', '2', '2018-08-14 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('121', 'trips', '', 'trip', '0', '0', '2', '2018-08-14 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('122', 'add_trip', 'trip/form', 'trip', '121', '0', '2', '2018-08-14 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('123', 'trip_list', 'trip/list', 'trip', '121', '0', '2', '2018-08-14 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('124', 'assigns', '', 'trip', '0', '0', '2', '2018-08-14 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('125', 'add_assign', 'assign/form', 'trip', '124', '0', '2', '2018-08-14 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('126', 'assign_list', 'assign/list', 'trip', '124', '0', '2', '2018-08-14 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('127', 'close', '', 'trip', '0', '0', '2', '2018-08-14 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('128', 'close_list', 'close/list', 'trip', '127', '0', '2', '2018-08-14 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('129', 'account', '', 'account', '0', '0', '2', '2018-08-14 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('130', 'reports', '', 'reports', '0', '0', '2', '2018-09-11 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('131', 'agent_log', 'agent/agent_details', 'reports', '130', '0', '2', '2018-09-11 00:00:00');


#
# TABLE STRUCTURE FOR: sec_role_permission
#

DROP TABLE IF EXISTS `sec_role_permission`;

CREATE TABLE `sec_role_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `can_access` tinyint(1) NOT NULL,
  `can_create` tinyint(1) NOT NULL,
  `can_edit` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `createby` int(11) NOT NULL,
  `createdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=982 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('624', '1', '69', '1', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('625', '1', '81', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('626', '1', '82', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('627', '1', '83', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('628', '1', '84', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('629', '1', '129', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('630', '1', '72', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('631', '1', '70', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('632', '1', '71', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('633', '1', '73', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('634', '1', '74', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('635', '1', '75', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('636', '1', '76', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('637', '1', '77', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('638', '1', '78', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('639', '1', '79', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('640', '1', '80', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('641', '1', '111', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('642', '1', '112', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('643', '1', '113', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('644', '1', '109', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('645', '1', '110', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('646', '1', '85', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('647', '1', '86', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('648', '1', '87', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('649', '1', '88', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('650', '1', '89', '1', '1', '1', '1', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('651', '1', '90', '1', '1', '1', '1', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('652', '1', '91', '1', '1', '1', '1', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('653', '1', '92', '1', '1', '1', '1', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('654', '1', '93', '1', '1', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('655', '1', '94', '1', '1', '1', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('656', '1', '105', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('657', '1', '106', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('658', '1', '107', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('659', '1', '108', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('660', '1', '114', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('661', '1', '115', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('662', '1', '116', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('663', '1', '117', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('664', '1', '95', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('665', '1', '96', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('666', '1', '97', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('667', '1', '98', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('668', '1', '99', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('669', '1', '100', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('670', '1', '118', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('671', '1', '119', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('672', '1', '120', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('673', '1', '121', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('674', '1', '122', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('675', '1', '123', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('676', '1', '124', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('677', '1', '125', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('678', '1', '126', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('679', '1', '127', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('680', '1', '128', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('681', '1', '101', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('682', '1', '102', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('683', '1', '103', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('684', '1', '104', '0', '0', '0', '0', '2', '2018-09-06 11:03:51');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('921', '2', '69', '1', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('922', '2', '81', '1', '1', '1', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('923', '2', '82', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('924', '2', '83', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('925', '2', '84', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('926', '2', '129', '1', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('927', '2', '72', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('928', '2', '70', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('929', '2', '71', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('930', '2', '73', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('931', '2', '74', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('932', '2', '75', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('933', '2', '76', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('934', '2', '77', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('935', '2', '78', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('936', '2', '79', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('937', '2', '80', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('938', '2', '111', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('939', '2', '112', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('940', '2', '113', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('941', '2', '109', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('942', '2', '110', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('943', '2', '85', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('944', '2', '86', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('945', '2', '87', '1', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('946', '2', '88', '1', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('947', '2', '130', '1', '1', '1', '1', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('948', '2', '131', '1', '0', '1', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('949', '2', '89', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('950', '2', '90', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('951', '2', '91', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('952', '2', '92', '1', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('953', '2', '93', '1', '1', '1', '1', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('954', '2', '94', '1', '1', '1', '1', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('955', '2', '105', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('956', '2', '108', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('957', '2', '114', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('958', '2', '115', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('959', '2', '116', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('960', '2', '117', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('961', '2', '95', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('962', '2', '96', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('963', '2', '97', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('964', '2', '98', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('965', '2', '99', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('966', '2', '100', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('967', '2', '118', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('968', '2', '119', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('969', '2', '120', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('970', '2', '121', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('971', '2', '122', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('972', '2', '123', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('973', '2', '124', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('974', '2', '125', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('975', '2', '126', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('976', '2', '127', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('977', '2', '128', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('978', '2', '101', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('979', '2', '102', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('980', '2', '103', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('981', '2', '104', '0', '0', '0', '0', '2', '2018-09-11 08:57:21');


#
# TABLE STRUCTURE FOR: sec_role_tbl
#

DROP TABLE IF EXISTS `sec_role_tbl`;

CREATE TABLE `sec_role_tbl` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` text NOT NULL,
  `role_description` text NOT NULL,
  `create_by` int(11) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `role_status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `sec_role_tbl` (`role_id`, `role_name`, `role_description`, `create_by`, `date_time`, `role_status`) VALUES ('1', 'Test Role', 'This is test role', '2', '2018-07-16 02:49:29', '1');
INSERT INTO `sec_role_tbl` (`role_id`, `role_name`, `role_description`, `create_by`, `date_time`, `role_status`) VALUES ('2', 'Agent Role', 'sjdf', '2', '2018-08-18 11:48:57', '1');


#
# TABLE STRUCTURE FOR: sec_user_access_tbl
#

DROP TABLE IF EXISTS `sec_user_access_tbl`;

CREATE TABLE `sec_user_access_tbl` (
  `role_acc_id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_role_id` int(11) NOT NULL,
  `fk_user_id` int(11) NOT NULL,
  PRIMARY KEY (`role_acc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `sec_user_access_tbl` (`role_acc_id`, `fk_role_id`, `fk_user_id`) VALUES ('1', '1', '3');
INSERT INTO `sec_user_access_tbl` (`role_acc_id`, `fk_role_id`, `fk_user_id`) VALUES ('2', '1', '1');
INSERT INTO `sec_user_access_tbl` (`role_acc_id`, `fk_role_id`, `fk_user_id`) VALUES ('3', '2', '4');
INSERT INTO `sec_user_access_tbl` (`role_acc_id`, `fk_role_id`, `fk_user_id`) VALUES ('4', '2', '5');


#
# TABLE STRUCTURE FOR: setting
#

DROP TABLE IF EXISTS `setting`;

CREATE TABLE `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `address` text,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `site_align` varchar(50) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `setting` (`id`, `title`, `address`, `email`, `phone`, `logo`, `favicon`, `language`, `site_align`, `footer_text`) VALUES ('2', 'Fleet Ticketing System', '98 Green Road, Farmgate, Dhaka-1215.', 'cta.pri.inn@gmail.com', '0123456789', 'assets/img/icons/faaeb1b5b873ede8817439fd25022719.png', '', 'english', 'LTR', '2018Ã‚Â©bdtask');


#
# TABLE STRUCTURE FOR: shedule
#

DROP TABLE IF EXISTS `shedule`;

CREATE TABLE `shedule` (
  `shedule_id` int(11) NOT NULL AUTO_INCREMENT,
  `start` varchar(20) NOT NULL,
  `end` varchar(20) NOT NULL,
  `duration` float NOT NULL,
  PRIMARY KEY (`shedule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO `shedule` (`shedule_id`, `start`, `end`, `duration`) VALUES ('1', '9:00 AM', '3:00 PM', '6');
INSERT INTO `shedule` (`shedule_id`, `start`, `end`, `duration`) VALUES ('2', '10:00AM', '4:00PM', '10');
INSERT INTO `shedule` (`shedule_id`, `start`, `end`, `duration`) VALUES ('3', '11:00AM', '5:00PM', '6');
INSERT INTO `shedule` (`shedule_id`, `start`, `end`, `duration`) VALUES ('4', '9:40 am', '05:25 pm', '7');
INSERT INTO `shedule` (`shedule_id`, `start`, `end`, `duration`) VALUES ('5', '02:05:15', '11:50:45', '9');


#
# TABLE STRUCTURE FOR: synchronizer_setting
#

DROP TABLE IF EXISTS `synchronizer_setting`;

CREATE TABLE `synchronizer_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `port` varchar(10) NOT NULL,
  `debug` varchar(10) NOT NULL,
  `project_root` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: ticket_notification
#

DROP TABLE IF EXISTS `ticket_notification`;

CREATE TABLE `ticket_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `b_idno` varchar(30) NOT NULL,
  `passenger_id` varchar(30) NOT NULL,
  `no_tkts` int(11) NOT NULL,
  `amount` float NOT NULL,
  `route_id` varchar(30) NOT NULL,
  `trip_id` varchar(20) NOT NULL,
  `booking_time` datetime NOT NULL,
  `is_seen` int(11) NOT NULL DEFAULT '0',
  `admin_seen` int(11) NOT NULL DEFAULT '0',
  `booked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;

INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('1', 'BBI1TXYC', 'PF8BI4LW', '0', '0', '1', '3', '0000-00-00 00:00:00', '1', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('2', 'BVCOR1N8', 'PENENDHV', '2', '1500', '1', '6', '2018-08-14 13:32:49', '1', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('3', 'BYJBT6DU', 'PSIM3AOO', '1', '800', '1', '6', '2018-08-14 15:09:24', '1', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('4', 'BU9CUUYK', 'PENENDHV', '1', '500', '1', '5', '2018-08-14 19:20:33', '1', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('5', 'BUF6VHKL', 'PK6CDWB5', '1', '500', '1', '5', '2018-08-16 05:45:24', '1', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('7', 'B75XIFQB', 'P4MJQI2A', '1', '500', '1', '5', '2018-08-16 05:49:21', '1', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('8', 'B75XIFQB', 'P4MJQI2A', '1', '500', '1', '5', '2018-08-16 05:49:21', '1', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('9', 'B8V8X3W3', 'P4FL73QO', '1', '500', '1', '5', '2018-08-16 06:27:27', '1', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('10', 'B7VKKB9N', 'PSUNWHPL', '1', '500', '1', '5', '2018-08-16 06:33:20', '1', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('11', 'B1VLMPMF', 'PZ7YIWLR', '1', '500', '1', '5', '2018-08-16 06:52:32', '1', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('12', 'BNJQGY8B', 'P7NSFWI7', '1', '500', '1', '5', '2018-08-16 06:54:57', '1', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('13', 'B6YIL6FH', 'P4JJWE33', '1', '500', '1', '5', '2018-08-16 06:58:55', '1', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('14', 'B6ZGV0FN', 'PRZ2VWDY', '1', '500', '1', '5', '2018-08-16 07:36:50', '1', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('15', 'BT5JLMBB', 'PI9ZKCZV', '1', '500', '1', '5', '2018-08-16 07:39:15', '1', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('16', 'B98O0FO6', 'P7DV6URD', '1', '500', '1', '5', '2018-08-16 10:09:24', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('17', 'B6OT2QEB', 'PWGE1SOZ', '1', '500', '1', '5', '2018-08-16 09:20:51', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('18', 'BG31BOOO', 'PKWRSBDN', '1', '500', '1', '5', '2018-08-16 09:27:16', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('19', 'BLZSDCDI', 'PB0C2Z9V', '1', '1200', '2', '1', '2018-08-17 04:01:23', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('20', 'BQKF72YH', 'P29X32PX', '4', '3600', '3', '7', '2018-08-17 06:41:22', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('21', 'BZ73EFVD', 'PYMLKYZG', '1', '800', '1', '6', '2018-08-18 06:38:50', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('22', 'B32OFWDF', 'PHJH2FH5', '1', '800', '1', '6', '2018-08-19 04:35:16', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('23', 'BPUDRNDJ', 'P29X32PX', '4', '1900', '4', '9', '2018-08-19 05:23:28', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('24', 'BMRAC4I0', 'P29X32PX', '3', '2700', '3', '7', '2018-08-19 05:54:06', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('25', 'BA74WC7T', 'P29X32PX', '2', '2200', '3', '7', '2018-08-19 06:05:07', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('26', 'BB7U1DF6', 'PBYYGBK3', '4', '3040', '1', '6', '2018-08-19 08:27:48', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('27', 'BGUOSV0G', 'PJV9SZEX', '1', '800', '1', '6', '2018-08-19 09:55:46', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('28', 'B6K2HGGN', 'POPU0DHT', '1', '800', '1', '6', '2018-08-19 09:57:05', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('29', 'BPKA6GD8', 'PJV9SZEX', '1', '800', '1', '6', '2018-08-19 09:58:45', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('30', 'BJD065XZ', 'PHGV2G1S', '2', '1000', '4', '9', '2018-08-19 10:38:58', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('31', 'BKLRMLTZ', 'P29X32PX', '2', '2200', '3', '8', '2018-08-19 10:44:50', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('32', 'BBI6QH8W', 'PKJE86NK', '1', '1100', '3', '7', '2018-08-19 10:57:35', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('33', 'BZKL2PUJ', 'P24E6LHS', '1', '800', '1', '6', '2018-08-19 11:01:58', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('34', 'BW2MKEE9', 'PSJRA70J', '1', '800', '1', '6', '2018-08-19 20:13:33', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('35', 'BP8FAYQV', 'PNUCBP4R', '1', '800', '1', '6', '2018-08-28 04:51:20', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('36', 'B6WMHYTV', 'P42RJ1TJ', '1', '800', '1', '6', '2018-08-28 06:30:28', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('37', 'BCQAQJCY', 'P45T67K9', '1', '800', '1', '6', '2018-08-28 06:59:38', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('38', 'BGWOTPG6', 'P45T67K9', '1', '800', '1', '6', '2018-08-28 11:37:21', '0', '2', '2');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('39', 'BJ3RXTDK', 'PEPRBBVC', '2', '1500', '1', '6', '2018-08-29 03:49:53', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('40', 'BSO6CIKA', 'PDL1WKE8', '1', '1200', '2', '1', '2018-08-29 12:49:41', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('41', 'B7DTFKUP', 'PXUJ2L0K', '1', '1200', '2', '2', '2018-08-29 12:52:52', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('42', 'B2D73S3Y', 'PCA1R3WC', '1', '1200', '2', '1', '2018-08-29 12:55:52', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('43', 'BZ29VQQP', 'P2LXDAOQ', '1', '1200', '2', '2', '2018-08-29 13:00:59', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('44', 'BDLFN3XT', 'P5V6Y7EB', '1', '800', '1', '6', '2018-08-29 13:20:11', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('45', 'BZC32395', 'PFEUL0KY', '1', '800', '1', '6', '2018-08-29 13:24:58', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('46', 'BUSFLU8W', 'PZ67BTX2', '2', '2400', '2', '1', '2018-09-01 06:31:47', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('47', 'B7VZXTAX', 'PBW5T8SQ', '2', '1500', '1', '6', '2018-09-01 06:35:32', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('48', 'BKU095O2', 'PUXPTP7J', '4', '2400', '5', '10', '2018-09-01 10:44:23', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('49', 'BBL2589E', 'PVTNHTS9', '3', '2200', '5', '10', '2018-09-01 10:47:32', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('50', 'BY7I56QS', 'PX5UCYVJ', '1', '800', '1', '6', '2018-09-05 00:09:43', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('51', 'BCSMU1TQ', 'PFOJ4GVZ', '2', '1800', '2', '1', '2018-09-05 14:17:10', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('52', 'BSUF1YT9', 'P45KZDEB', '1', '800', '1', '6', '2018-09-06 03:41:29', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('53', 'B38MOAWN', 'PB7FQLTU', '1', '800', '1', '6', '2018-09-06 03:58:01', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('54', 'B2787XAL', 'PORV7A2W', '1', '800', '1', '6', '2018-09-06 04:05:50', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('55', 'B2QUKITT', 'PFIMBDTE', '1', '800', '1', '6', '2018-09-06 04:08:17', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('56', 'BQRC6O66', 'P3Y9ZLSA', '1', '700', '1', '6', '2018-09-06 04:09:45', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('57', 'BSPTGW8W', 'PMVZTP73', '1', '800', '1', '6', '2018-09-06 04:33:00', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('58', 'BR29S3XO', 'P90Q2LM4', '1', '800', '1', '6', '2018-09-06 05:24:24', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('59', 'BODOFTFG', 'P0UTFG6H', '1', '800', '1', '6', '2018-09-06 06:18:34', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('60', 'BTQ7IXYV', 'PEV27KZY', '3', '2550', '2', '3', '2018-09-06 12:19:14', '0', '2', '2');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('61', 'BCPX6BLU', 'P9MZC9JD', '1', '800', '1', '6', '2018-09-06 06:57:48', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('62', 'BFE5M18U', 'P1I6BU5A', '1', '800', '1', '6', '2018-09-06 07:05:47', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('63', 'BJ0BEQG1', 'PZXKCWRQ', '1', '800', '1', '6', '2018-09-06 09:25:39', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('64', 'B5KJY0ID', 'PP1KH3FI', '1', '800', '1', '6', '2018-09-06 09:33:06', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('65', 'B8AUQJZ3', 'PP1KH3FI', '1', '800', '1', '6', '2018-09-06 11:02:49', '0', '2', '1');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('66', 'BI7S72QT', 'PP1KH3FI', '1', '700', '1', '6', '2018-09-06 11:38:50', '0', '2', '2');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('67', 'BYHM7WFY', 'PZ8UF7SJ', '1', '800', '1', '6', '2018-09-08 04:25:42', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('68', 'BL1PV2C9', 'PZ0X8H8P', '1', '800', '1', '6', '2018-09-08 05:52:44', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('69', 'BR71O1WF', 'P4SJGUNT', '1', '800', '1', '6', '2018-09-08 11:27:01', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('70', 'BP3M6W0C', 'PXTVSR8P', '1', '800', '1', '6', '2018-09-08 11:36:23', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('71', 'BW7ES5NL', 'PH5Q1E86', '1', '800', '1', '6', '2018-09-08 11:41:51', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('72', 'BIU0UXTY', 'PFKV9AKD', '1', '800', '1', '6', '2018-09-08 11:46:59', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('73', 'B02ZZKY8', 'PF9OMOOH', '1', '800', '1', '6', '2018-09-08 13:18:10', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('74', 'BSQ0BDY2', 'PFTJ39TV', '1', '800', '1', '6', '2018-09-08 13:35:57', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('75', 'BEHA7BQK', 'P5KE1BM7', '1', '800', '1', '6', '2018-09-08 13:48:38', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('76', 'BHJPHQVT', 'PZXKCWRQ', '1', '800', '1', '6', '2018-09-09 04:24:02', '0', '2', '2');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('77', 'BZ8D91TC', 'PSL21W7S', '1', '800', '1', '6', '2018-09-09 12:12:56', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('78', 'BTY9BDHP', 'PSL21W7S', '1', '800', '1', '6', '2018-09-09 12:50:23', '0', '2', '6');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('79', 'BL3F7KA5', 'PSL21W7S', '2', '1500', '1', '6', '2018-09-09 12:55:20', '0', '2', '6');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('80', 'BPZQ25KR', 'PSL21W7S', '3', '2280', '1', '6', '2018-09-10 12:04:08', '0', '2', '6');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('81', 'BNKNR4VG', 'PSL21W7S', '2', '1950', '6', '11', '2018-09-11 12:04:16', '0', '2', '2');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('82', 'BRER60V0', 'PT9L682A', '1', '800', '1', '6', '2018-09-12 08:55:16', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('83', 'B2Q9H48A', 'P2YICXYZ', '1', '800', '1', '6', '2018-09-12 09:14:16', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('84', 'BFN9GPK5', 'PN4V6Y1R', '1', '800', '1', '6', '2018-09-12 13:12:25', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('85', 'B1K0Y0VO', 'PP02DQ9T', '1', '800', '1', '6', '2018-09-12 13:15:55', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('86', 'BSHZTSKN', 'PJE2MM9R', '1', '800', '1', '6', '2018-09-12 13:38:34', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('87', 'B969YL2F', 'PU6RD15O', '1', '800', '1', '6', '2018-09-12 15:20:52', '0', '2', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('88', 'BJE0PBSF', 'PF8BI4LW', '1', '800', '1', '6', '2018-10-21 08:54:45', '0', '0', '2');


#
# TABLE STRUCTURE FOR: tkt_booking
#

DROP TABLE IF EXISTS `tkt_booking`;

CREATE TABLE `tkt_booking` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
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
  `booking_type` varchar(20) DEFAULT NULL,
  `payment_status` varchar(20) DEFAULT NULL,
  `booked_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_no` (`id_no`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8;

INSERT INTO `tkt_booking` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `booking_type`, `payment_status`, `booked_by`) VALUES ('10', 'BU9CUUYK', '5', 'PENENDHV', '1', 'austin', 'washington', 'Biscuit, Banana, ', '500', '0', '1', '0', '0', '1', 'A5,', '', NULL, NULL, '2018-08-14 00:00:00', '2018-08-14 19:20:33', 'local', NULL, '0');
INSERT INTO `tkt_booking` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `booking_type`, `payment_status`, `booked_by`) VALUES ('15', 'B8V8X3W3', '5', 'P4FL73QO', '1', 'austin', 'washington', NULL, '500', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-08-16 10:26:53', '2018-08-16 10:26:53', NULL, NULL, '0');
INSERT INTO `tkt_booking` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `booking_type`, `payment_status`, `booked_by`) VALUES ('20', 'BNJQGY8B', '5', 'P7NSFWI7', '1', 'austin', 'washington', NULL, '500', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-08-16 10:54:37', '2018-08-16 10:54:37', NULL, NULL, '0');
INSERT INTO `tkt_booking` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `booking_type`, `payment_status`, `booked_by`) VALUES ('21', 'B6YIL6FH', '5', 'P4JJWE33', '1', 'austin', 'washington', NULL, '500', '0', '1', '0', '0', '1', 'B1, ', '', NULL, NULL, '2018-08-16 10:58:18', '2018-08-16 10:58:18', NULL, NULL, '0');
INSERT INTO `tkt_booking` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `booking_type`, `payment_status`, `booked_by`) VALUES ('29', 'B6OT2QEB', '5', 'PWGE1SOZ', '1', 'austin', 'washington', NULL, '500', '0', '1', '0', '0', '1', 'D2, ', NULL, NULL, NULL, '2018-08-16 15:20:04', '2018-08-16 15:20:04', 'online', '', '0');
INSERT INTO `tkt_booking` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `booking_type`, `payment_status`, `booked_by`) VALUES ('31', 'BG31BOOO', '5', 'PKWRSBDN', '1', 'austin', 'washington', NULL, '500', '0', '1', '0', '0', '1', 'D3, ', NULL, NULL, NULL, '2018-08-16 15:26:36', '2018-08-16 15:26:36', 'online', '', '0');
INSERT INTO `tkt_booking` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `booking_type`, `payment_status`, `booked_by`) VALUES ('35', 'BQKF72YH', '7', 'P29X32PX', '3', 'Cumilla', 'Dubai', 'Tea, Breakfast, Water, ', '3600', '0', '2', '1', '1', '4', 'A1, A2, A3, A4, ', NULL, '2', NULL, '2018-08-20 12:40:35', '2018-08-17 12:40:35', 'online', '', '0');
INSERT INTO `tkt_booking` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `booking_type`, `payment_status`, `booked_by`) VALUES ('37', 'BZ73EFVD', '6', 'PYMLKYZG', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A2, ', NULL, NULL, NULL, '2018-09-03 12:38:00', '2018-08-18 12:38:00', 'online', '', '0');
INSERT INTO `tkt_booking` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `booking_type`, `payment_status`, `booked_by`) VALUES ('53', 'BPKA6GD8', '6', 'PJV9SZEX', '1', 'us', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A3, ', NULL, NULL, NULL, '2018-08-19 15:58:21', '2018-08-19 15:58:21', 'Bank', '', '0');
INSERT INTO `tkt_booking` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `booking_type`, `payment_status`, `booked_by`) VALUES ('59', 'BCQAQJCY', '6', 'P45T67K9', '1', 'austin', 'washington', NULL, '24', '0', '1', '0', '0', '1', 'A2, ', NULL, NULL, NULL, '2018-08-28 12:58:39', '2018-08-28 12:58:39', 'Bank', '', '0');
INSERT INTO `tkt_booking` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `booking_type`, `payment_status`, `booked_by`) VALUES ('60', 'BGWOTPG6', '6', 'P45T67K9', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A3,', '', NULL, NULL, '2018-08-28 00:00:00', '2018-08-28 11:37:21', 'local', NULL, '2');
INSERT INTO `tkt_booking` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `booking_type`, `payment_status`, `booked_by`) VALUES ('68', 'B2D73S3Y', '1', 'PCA1R3WC', '2', 'example', 'nyork', NULL, '360', '0', '1', '0', '0', '1', 'A1, ', NULL, NULL, NULL, '2018-08-30 18:55:21', '2018-08-29 18:55:21', 'Bank', '', '0');
INSERT INTO `tkt_booking` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `booking_type`, `payment_status`, `booked_by`) VALUES ('70', 'BZ29VQQP', '2', 'P2LXDAOQ', '2', 'nyork', 'montinia', 'Tea, Breakfast, ', '1200', '0', '1', '0', '0', '1', 'A1, ', NULL, NULL, NULL, '2018-08-29 19:00:24', '2018-08-29 19:00:24', 'Cash', '', '0');
INSERT INTO `tkt_booking` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `booking_type`, `payment_status`, `booked_by`) VALUES ('74', 'BZC32395', '6', 'PFEUL0KY', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A3, ', NULL, NULL, NULL, '2018-08-29 19:24:29', '2018-08-29 19:24:29', 'Cash', '', '0');
INSERT INTO `tkt_booking` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `booking_type`, `payment_status`, `booked_by`) VALUES ('100', 'BR29S3XO', '6', 'P90Q2LM4', '1', 'austin', 'us', 'Tea, Breakfast, Water, ', '800', '0', '1', '0', '0', '1', 'A1, ', NULL, NULL, NULL, '2018-09-06 11:23:53', '2018-09-06 11:23:53', 'Cash', '', '0');
INSERT INTO `tkt_booking` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `booking_type`, `payment_status`, `booked_by`) VALUES ('103', 'BTQ7IXYV', '3', 'PEV27KZY', '2', 'nyork', 'montinia', 'Biscuit, ', '2550', '0', '3', '0', '0', '3', 'A1,A2,A3,', '', NULL, NULL, '2018-09-08 00:00:00', '2018-09-06 12:19:14', 'local', NULL, '2');
INSERT INTO `tkt_booking` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `booking_type`, `payment_status`, `booked_by`) VALUES ('105', 'BCPX6BLU', '6', 'P9MZC9JD', '1', 'us', 'washington', 'Breakfast, Water, ', '800', '0', '1', '0', '0', '1', 'A3, ', NULL, NULL, NULL, '2018-09-06 12:57:11', '2018-09-06 12:57:11', 'Cash', '', '0');
INSERT INTO `tkt_booking` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `booking_type`, `payment_status`, `booked_by`) VALUES ('107', 'BFE5M18U', '6', 'P1I6BU5A', '1', 'us', 'washington', 'Tea, Breakfast, Water, ', '800', '0', '1', '0', '0', '1', 'A2, ', NULL, NULL, NULL, '2018-09-06 13:05:03', '2018-09-06 13:05:03', 'Cash', '', '0');
INSERT INTO `tkt_booking` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `booking_type`, `payment_status`, `booked_by`) VALUES ('109', 'BJ0BEQG1', '6', 'PZXKCWRQ', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A4, ', NULL, NULL, NULL, '2018-09-06 15:25:03', '2018-09-06 15:25:03', 'Cash', '', '0');
INSERT INTO `tkt_booking` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `booking_type`, `payment_status`, `booked_by`) VALUES ('111', 'B5KJY0ID', '6', 'PP1KH3FI', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'B1, ', NULL, NULL, NULL, '2018-09-06 15:32:30', '2018-09-06 15:32:30', 'Cash', '', '0');
INSERT INTO `tkt_booking` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `booking_type`, `payment_status`, `booked_by`) VALUES ('112', 'B8AUQJZ3', '6', 'PP1KH3FI', '1', 'austin', 'us', 'Tea, Breakfast, Water, ', '800', '0', '1', '0', '0', '1', 'B2,', '', NULL, NULL, '2018-09-06 00:00:00', '2018-09-06 11:02:49', 'local', NULL, '1');
INSERT INTO `tkt_booking` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `booking_type`, `payment_status`, `booked_by`) VALUES ('113', 'BI7S72QT', '6', 'PP1KH3FI', '1', 'austin', 'washington', 'Tea, Breakfast, Water, ', '700', '0', '0', '1', '0', '1', 'B4,', '', NULL, NULL, '2018-09-06 00:00:00', '2018-09-06 11:38:50', 'local', NULL, '2');
INSERT INTO `tkt_booking` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `booking_type`, `payment_status`, `booked_by`) VALUES ('115', 'BYHM7WFY', '6', 'PZ8UF7SJ', '1', 'austin', 'washington', 'Tea, Breakfast, Water, ', '800', '0', '1', '0', '0', '1', 'A1, ', NULL, NULL, NULL, '2018-09-08 10:25:11', '2018-09-08 10:25:11', 'Cash', '', '0');
INSERT INTO `tkt_booking` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `booking_type`, `payment_status`, `booked_by`) VALUES ('132', 'BHJPHQVT', '6', 'PZXKCWRQ', '1', 'austin', 'washington', 'Tea, Breakfast, ', '800', '0', '1', '0', '0', '1', 'A1,', '', NULL, NULL, '2018-09-09 00:00:00', '2018-09-09 04:24:02', 'local', NULL, '2');
INSERT INTO `tkt_booking` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `booking_type`, `payment_status`, `booked_by`) VALUES ('134', 'BZ8D91TC', '6', 'PSL21W7S', '1', 'austin', 'washington', 'Tea, Breakfast, Water, ', '800', '0', '1', '0', '0', '1', 'A3, ', NULL, NULL, NULL, '2018-09-09 18:12:09', '2018-09-09 18:12:09', 'Cash', '', '0');
INSERT INTO `tkt_booking` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `booking_type`, `payment_status`, `booked_by`) VALUES ('135', 'BTY9BDHP', '6', 'PSL21W7S', '1', 'austin', 'washington', 'Tea, Breakfast, ', '800', '0', '1', '0', '0', '1', 'A4,', '', NULL, NULL, '2018-09-09 00:00:00', '2018-09-09 12:50:23', 'local', NULL, '6');
INSERT INTO `tkt_booking` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `booking_type`, `payment_status`, `booked_by`) VALUES ('136', 'BL3F7KA5', '6', 'PSL21W7S', '1', 'austin', 'washington', 'Tea, Breakfast, Water, ', '1500', '0', '1', '1', '0', '2', 'B1,C2,', '', NULL, NULL, '2018-09-09 00:00:00', '2018-09-09 12:55:20', 'local', NULL, '6');
INSERT INTO `tkt_booking` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `booking_type`, `payment_status`, `booked_by`) VALUES ('137', 'BPZQ25KR', '6', 'PSL21W7S', '1', 'austin', 'washington', 'Tea, Breakfast, Water, ', '2280', '0', '1', '1', '1', '3', 'A1,A2,A3,', '', NULL, NULL, '2018-09-10 00:00:00', '2018-09-10 12:04:08', 'local', NULL, '6');
INSERT INTO `tkt_booking` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `booking_type`, `payment_status`, `booked_by`) VALUES ('138', 'BNKNR4VG', '11', 'PSL21W7S', '6', 'Houston', 'Farmgate', NULL, '1950', '0', '1', '1', '0', '2', 'A1,A2,', '', NULL, NULL, '2018-09-11 00:00:00', '2018-09-11 12:04:16', 'local', NULL, '2');
INSERT INTO `tkt_booking` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `booking_type`, `payment_status`, `booked_by`) VALUES ('139', 'BJE0PBSF', '6', 'PF8BI4LW', '1', 'austin', 'washington', 'Tea, Breakfast, Water, ', '800', '0', '1', '0', '0', '1', 'A1,', '', NULL, NULL, '2018-10-21 00:00:00', '2018-10-21 08:54:45', 'Cash(Administrator U', NULL, '2');


#
# TABLE STRUCTURE FOR: tkt_feedback
#

DROP TABLE IF EXISTS `tkt_feedback`;

CREATE TABLE `tkt_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tkt_booking_id_no` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `comment` text,
  `rating` tinyint(1) DEFAULT '1',
  `add_to_website` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `tkt_feedback` (`id`, `tkt_booking_id_no`, `name`, `comment`, `rating`, `add_to_website`) VALUES ('1', 'BGZOBJLZ', 'Michel', 'Very Nice', '4', '1');
INSERT INTO `tkt_feedback` (`id`, `tkt_booking_id_no`, `name`, `comment`, `rating`, `add_to_website`) VALUES ('2', 'BDFX8OVQ', 'Morkel', 'Good Work', '4', '0');
INSERT INTO `tkt_feedback` (`id`, `tkt_booking_id_no`, `name`, `comment`, `rating`, `add_to_website`) VALUES ('3', 'BNKNR4VG', 'isahaq', 'sdfsdfsadf', '4', NULL);
INSERT INTO `tkt_feedback` (`id`, `tkt_booking_id_no`, `name`, `comment`, `rating`, `add_to_website`) VALUES ('4', 'BL3F7KA5', 'Rabbani', 'fadsfasdf', '5', NULL);


#
# TABLE STRUCTURE FOR: tkt_passenger
#

DROP TABLE IF EXISTS `tkt_passenger`;

CREATE TABLE `tkt_passenger` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_no` varchar(20) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `nid` varchar(20) NOT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8;

INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('1', 'PZN2TP1M', 'HM', 'Isahaq', NULL, '01955110016', '0', 'hmisahaq@yahoo.com', '202cb962ac59075b964b07152d234b70', '', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('2', 'PF8BI4LW', 'Tuhin', 'sa', NULL, '34234', '0', 'tuhin@gmail.com', '202cb962ac59075b964b07152d234b70', '', NULL, NULL, 'sdfasdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('3', 'PENENDHV', 'sakil', 'Ahmad', NULL, '036544', '0', 'sakil@gmail.com', '202cb962ac59075b964b07152d234b70', '', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('4', 'PSIM3AOO', 'sdfsdf', 'sdsdf', NULL, '32423', '0', 'sdf@example.com', '2321994d85d661d792223f647000c65f', '', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('5', 'PK6CDWB5', 'jubaire', 'r', NULL, '3243', '0', 'jubaire@gmail.com', '202cb962ac59075b964b07152d234b70', '', NULL, NULL, 'dsfasdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('6', 'P4MJQI2A', 'g', '3432', NULL, '32423', '0', 'admins@example.com', '289dff07669d7a23de0ef88d2f7129e7', '', NULL, NULL, '324', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('7', 'P4FL73QO', 'Imran', 'Hossain', NULL, '234234', '0', 'imran@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '', NULL, NULL, 'dfsdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('8', 'PSUNWHPL', 'sdafa', 'asdf', NULL, '234523', '0', 'admin234@example.com', '289dff07669d7a23de0ef88d2f7129e7', '', NULL, NULL, '234', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('9', 'PZ7YIWLR', 'Tuhin', 'sarkar', NULL, '323131', '0', 'hmishaq@yahoo.com', '202cb962ac59075b964b07152d234b70', '', NULL, NULL, 'sdfsadf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('10', 'P7NSFWI7', 'sdf', 'sdfsd', NULL, '23423', '0', 'admin@example.com', 'e369853df766fa44e1ed0ff613f563bd', '', NULL, NULL, 'sdfsd', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('11', 'P4JJWE33', 'hhh', 'ggg', NULL, '234234', '0', 'test@test.com', '202cb962ac59075b964b07152d234b70', '', NULL, NULL, 'sdfsdaf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('12', 'PRZ2VWDY', 'sdfsad', 'fsdf', NULL, '234234', '0', 'adsdfmin@example.com', '289dff07669d7a23de0ef88d2f7129e7', '', NULL, NULL, 'dfasdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('13', 'PI9ZKCZV', 'sdf', 'sdf23423', NULL, '35324', '0', 'adminsdf@example.com', 'f2fc990265c712c49d51a18a32b39f0c', '', NULL, NULL, 'dsfsadf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('14', 'P7DV6URD', 'ii', 'oo', NULL, '5345345', '0', 'admindfg@example.com', 'd81f9c1be2e08964bf9f24b15f0e4900', '', NULL, NULL, 'fdgsd', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('15', 'PWGE1SOZ', 'HM', 'Isahaq', NULL, '01921239916', '0', 'hmisahaq@yahoo.com', '202cb962ac59075b964b07152d234b70', '', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('16', 'PKWRSBDN', 'Jakir', 'sadf', NULL, '2342342', '0', 'hmisahaq@yahoo.com', '202cb962ac59075b964b07152d234b70', '', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('17', 'PB0C2Z9V', 'HM', 'Isahaq', NULL, '23424324', '0', 'hmisahaq@yahoo.com', '81dc9bdb52d04dc20036dbd8313ed055', '', NULL, NULL, 'sdfasdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('18', 'P29X32PX', 'shm', 'Sharif', NULL, '8801552301408', '0', 'shmarafat06@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', NULL, NULL, 'Dhaka', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('19', 'PYMLKYZG', 'ky', 'kk', NULL, '234234', '0', 'hmisahaq@yahoo.com', '202cb962ac59075b964b07152d234b70', '', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('20', 'PHJH2FH5', 'js', 'jasim', NULL, '234234', '0', 'hmisahaq@yahoo.com', '202cb962ac59075b964b07152d234b70', '', NULL, NULL, 'sdfasdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('26', 'PHGV2G1S', 'shm', 'Sharif', NULL, '8801552301408', '0', 'shmarafat06@gmail.com', '14e1b600b1fd579f47433b88e8d85291', '', NULL, NULL, 'Dhaka', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('27', 'PKJE86NK', 'sdfsadf', 'sdfasdf', NULL, '234234', '0', 'hmisahaq@yahoo.com', '202cb962ac59075b964b07152d234b70', '', NULL, NULL, 'sadfasd', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('28', 'P24E6LHS', 'sdfasdf', 'sdfsadf', NULL, '234234', '0', 'hmisahaq@yahoo.com', '310dcbbf4cce62f762a2aaa148d556bd', '', NULL, NULL, 'sadfasd', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('29', 'PSJRA70J', 'vhg', 'vhg', NULL, '0995651154', '0', 'vinihg@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', '', NULL, NULL, 'ayac st', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('30', 'PNUCBP4R', 'hm', 'isahaq', NULL, '01921239916', '0', 'hmisahaq@yahoo.com', '202cb962ac59075b964b07152d234b70', '', NULL, NULL, 'sdfasdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('31', 'P42RJ1TJ', 'h', 'm', NULL, '43234', '0', 'hmisahaq@yahoo.com', '698d51a19d8a121ce581499d7b701668', '', NULL, NULL, 'sdfasdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('32', 'P45T67K9', 'Tuhin', 'sarkar', NULL, '324234234', '423432', 'tuhinsorker92@gmail.com', '25d55ad283aa400af464c76d713c07ad', '180828092317', NULL, NULL, 'sdfsadf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('33', 'PEPRBBVC', 'Marco Vinicio', 'Guevara', NULL, '5930981813340', '0', 'admin@example.com', 'e10adc3949ba59abbe56e057f20f883e', '', NULL, NULL, 'Hay vhjut', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('34', 'PDL1WKE8', 'gg', 'gg', NULL, '234234', '0', 'hmisahaq@yahoo.com', 'bcbe3365e6ac95ea2c0343a2395834dd', '', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('35', 'PXUJ2L0K', 'sdfasdf', 'sdfasd', NULL, 'f2345234', '0', 'hmisahaq@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', '', NULL, NULL, 'sdfasdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('36', 'PCA1R3WC', 'sdfasdf', 'sdfasd', NULL, '234234', '0', 'hmisahaq@yahoo.com', '0e9212587d373ca58e9bada0c15e6fe4', '', NULL, NULL, 'sdfsadf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('37', 'P2LXDAOQ', 'hm', 'k', NULL, '234234', '0', 'hmisahaq@yahoo.com', 'b59c67bf196a4758191e42f76670ceba', '', NULL, NULL, 'sdfsadf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('38', 'P5V6Y7EB', 'sdfsadf', 'sdfsad', NULL, '234234', '0', 'hmisahaq@yahoo.com', '0a113ef6b61820daa5611c870ed8d5ee', '', NULL, NULL, 'sdfsadf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('39', 'PFEUL0KY', 'sdfasdf', 'sdfasd', NULL, '3234234', '0', 'hmisahaq@yahoo.com', '6537e99af2c2223642df9f70a0b5afca', '', NULL, NULL, 'sdfsad', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('41', 'PZ67BTX2', 'shm', 'Sharif', NULL, '8801552301408', '0', 'shmarafat06@gmail.com', '14e1b600b1fd579f47433b88e8d85291', '', NULL, NULL, 'Dhaka', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('42', 'PBW5T8SQ', 'shm', 'arafat', NULL, '1245236752', '0', 'shmarafat06@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', NULL, NULL, '14,ajdyfgaj', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('43', 'PUXPTP7J', 's', 'arafat', NULL, '5465465465', '0', 'shmarafat06@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', NULL, NULL, 'adfaf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('44', 'PVTNHTS9', 'yo', 'yo', NULL, '655132132', '0', 'shmarafat06@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', NULL, NULL, '6846513', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('45', 'PX5UCYVJ', 'Marco Vinicio', 'Guevara', NULL, '736365288', '0', 'vinihg@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', '', NULL, NULL, 'Jdhhd djdjd', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('46', 'PFOJ4GVZ', 'hh', 't', NULL, '34543', '0', 'shmarafat06@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', NULL, NULL, '', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('47', 'P45KZDEB', 'Karmrul', 'Hasan', NULL, '06546', '0', 'hmisahaq011@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '', NULL, NULL, 'sdfsadf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('48', 'PB7FQLTU', 'hhhhhhh', 'wwwww', NULL, '1232134213', '0', 'hmisahaq011@gmail.com', 'bcbe3365e6ac95ea2c0343a2395834dd', '', NULL, NULL, 'fgdfgdfg', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('49', 'PORV7A2W', 'Sohag', 'sdfsdf', NULL, '34324', '0', 'hmisahaq011@gmail.com', '202cb962ac59075b964b07152d234b70', '', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('50', 'PFIMBDTE', 'dsfsd', '234234', NULL, '234234', '0', 'hmisahaq011@gmail.com', '202cb962ac59075b964b07152d234b70', '', NULL, NULL, 'sdfasdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('51', 'P3Y9ZLSA', 'Shahin', '234', NULL, '234234', '0', 'hmisahaq@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', '', NULL, NULL, 'sdfasdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('52', 'PMVZTP73', 'Sobuj', 'Mia', NULL, '23435', '0', 'hmisahaq011@gmail.com', '7bccfde7714a1ebadf06c5f4cea752c1', '', NULL, NULL, 'dfasfsdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('53', 'P90Q2LM4', 'ttt', 'sdfasdf', NULL, '234234', '0', 'hmisahaq011@gmail.com', '202cb962ac59075b964b07152d234b70', '', NULL, NULL, 'sdfasdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('54', 'PEV27KZY', 'MD', 'Uddin', NULL, '01552301408', '', 'shmarafat06@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', '', NULL, NULL, 'idufhksdfbkm', '', 'fgdfg', '01901', 'BD', '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('55', 'P0UTFG6H', 'isssahaq', 'sdfsdf', NULL, '234234', '0', 'hmisahaq011@gmail.com', 'bcbe3365e6ac95ea2c0343a2395834dd', '', NULL, NULL, 'sdfsadf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('56', 'P9MZC9JD', 'kawser', 'ah', NULL, '234234', '0', 'hmisahaq@yahoo.com', '81dc9bdb52d04dc20036dbd8313ed055', '', NULL, NULL, 'sdfasdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('57', 'P1I6BU5A', 'HM', 'Isahaq', NULL, '23424324', '0', 'hmisahaq@yahoo.com', '81dc9bdb52d04dc20036dbd8313ed055', '', NULL, NULL, 'sdfasdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('58', 'PZXKCWRQ', 'HM', 'Isahaq', NULL, '23424324', '0', 'hmisahaq@yahoo.com', 'ec6a6536ca304edf844d1d248a4f08dc', '', NULL, NULL, 'sdfasdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('59', 'PP1KH3FI', 'isahaq', 'sdfsdf', NULL, '234234', '0', 'hmisahaq011@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', NULL, NULL, 'sdfsd', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('60', 'PZ8UF7SJ', 'Isahaq', 'Mia', NULL, '234234', '0', 'hmisahaq12@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '', NULL, NULL, 'asdfsdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('61', 'PZ0X8H8P', 'ggg', 'sdfsd', NULL, '123234', '234562', 'hmisahaq011@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('62', 'P4SJGUNT', 'hm', 'isahaq', NULL, '234234', '1234', 'hmishaq@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '', NULL, NULL, 'sdfasdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('64', 'P7H1O9EG', 'dsfgdf', 'dfgdf', NULL, '534543', '21341234', 'hmishaq2@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '', NULL, NULL, 'sdfsadf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('66', 'PFKV9AKD', 'gdsfsadf', 'dsfasdf', NULL, '234234', '234234234', 'hmishaq@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', NULL, NULL, 'sdfasdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('67', 'PF9OMOOH', 'ooo', 'ggg', NULL, '23424234', '234234', 'hmishaq00@gmail.com', '289dff07669d7a23de0ef88d2f7129e7', '', NULL, NULL, 'dsfsdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('68', 'PFTJ39TV', 'ha', '342', NULL, '234234', '234234', 'hmishaq123@gmail.com', '81b073de9370ea873f548e31b8adc081', '', NULL, NULL, 'sdfasdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('69', 'P5KE1BM7', 'Mr', 'Tarek', NULL, '2342342', '34232432', 'hmisahaq012@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('70', 'PSL21W7S', 'hm', 'isahaq', NULL, '2342323', '142134', 'hmisahaq@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '', NULL, NULL, 'sdfdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('71', 'PZSJG1PX', 'sdfsadf', 'dsfsdaf', NULL, '324234', '324234', 'hmisahaq1233@gmail.com', '0e9212587d373ca58e9bada0c15e6fe4', '', NULL, NULL, 'sdfsadf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('72', 'P3BTHQN1', 'hm', 'Isahaq', NULL, '53453454', '123123', 'hmisahaq01@gmail.com', '202cb962ac59075b964b07152d234b70', '', NULL, NULL, 'sdafasdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('73', 'PCVG7QSR', 'hmisahaq', 'sfsdf', NULL, '234234', '123124', 'hmisahaq1@yahoo.com', '202cb962ac59075b964b07152d234b70', '', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('74', 'PG3DZ5XS', 'dsfsdf', 'sdfsd', NULL, '234234234', '324234234', 'hmisahaq2@gmail.com', 'a01610228fe998f515a72dd730294d87', '', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('75', 'PICCOLX7', 'fsdf', 'dfssad', NULL, '234234', '234234324', 'hmisahaq123@yahoo.com', '289dff07669d7a23de0ef88d2f7129e7', '', NULL, NULL, 'dfsdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('76', 'PQDSDTL9', 'sdfsdf', 'dsfsd', NULL, '324234', '23423423', 'hmisahaq00@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('77', 'PJ447J2Z', 'sdfsdf', 'dfsdf', NULL, '234234', '234234', 'hmishaq365@gmail.com', '71a5c0514ab83382d98154e5a5f9d813', '', NULL, NULL, 'sdfsadf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('78', 'PFNPS77O', 'sdfsdf', 'sdfsdf', NULL, '234234', '123123', 'hmisahaq321@gmail.com', '33ceb07bf4eeb3da587e268d663aba1a', '', NULL, NULL, 'dfasdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('79', 'P2RTFMA0', 'dsfsdf', 'dfsdf', NULL, '324234', '234234', 'hmisahaq124@gmail.com', '0e9212587d373ca58e9bada0c15e6fe4', '', NULL, NULL, 'fdsdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('80', 'PQA8KUSY', 'sdfsadf', 'dfsadf', NULL, '234234', '234234', 'hmisahaq3210@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', NULL, NULL, 'dsfsdaf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('81', 'PXD80RNH', 'sdfsadf', 'dfsdf', NULL, '234234', '345234', 'hmesahaq01@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '', NULL, NULL, 'dfgsdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('82', 'P97ZFITT', 'sdfsdf', 'sdfsd', NULL, '234234', '324234', 'hmisahaq63@gmail.com', '0e9212587d373ca58e9bada0c15e6fe4', '', NULL, NULL, 'dfsdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('83', 'P4VOTQRU', 'sdfsad', 'fsadfasd', NULL, '42343', '234234', 'jakir@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '', NULL, NULL, 'sdfs', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('84', 'PT9L682A', 'sdfasd', 'fsdfsad', NULL, '4234', '234234', 'lal@gmail.com', 'f6e794a75c5d51de081dbefa224304f9', '', NULL, NULL, 'dsfsad', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('85', 'P2YICXYZ', 'bdtask', 'sdf', NULL, '234234', '4324234', 'bdtask@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '', NULL, NULL, 'sdfsadf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('86', 'PPXPS3LG', 'sdfsdf', 'dfsdf', NULL, '234234', '3244324', 'bdtask1@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('87', 'PP6WBW7Y', 'dsfsd', 'fsdfs', NULL, '34232', '234234', 'hmisahaq333@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '', NULL, NULL, 'sdfsdaf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('88', 'P4YVEWVN', 'sdfsd', 'sdfsdf', NULL, '32432423', '234234', 'hmsahaq@gmail.com', 'c53c2b3941332844173d3f3670297f16', '', NULL, NULL, 'sdfsd', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('89', 'PKNMKYYN', 'sdfsdf', 'dfsd', NULL, '234234', '234', 'jakire@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '', NULL, NULL, 'sdfs', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('90', 'P9XY40A6', 'sdfsd', 'fsdfs', NULL, '324234', '321423', 'abc@gmail.com', '202cb962ac59075b964b07152d234b70', '', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('91', 'PCBBQDSY', 'sdfsd', 'fdsfs', NULL, '32423', '234234', 'dfsdf@gmail.com', '468171c825c02408cc99935447c785a5', '', NULL, NULL, 'dsfsdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('92', 'PWI2JBPY', 'fgdf', 'dfg', NULL, '34543', '3243245', 'dfgdsf@fa.com', '289dff07669d7a23de0ef88d2f7129e7', '', NULL, NULL, 'dfsf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('93', 'PN4V6Y1R', 'sdfsd', 'sdfsdf', NULL, '324234', '345345', 'jamal@gmail.com', '14c879f3f5d8ed93a09f6090d77c2cc3', '', NULL, NULL, 'fdfsd', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('94', 'PP02DQ9T', 'dfgdfs', 'gfdgdsf', NULL, '345345', '234234', 'hmisahaq32@gmail.com', '202cb962ac59075b964b07152d234b70', '', NULL, NULL, 'dsfsadf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('95', 'PCHFNK3N', 'sdfsdf', '324234', NULL, '234234', '234234', 'sdfsdf@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '', NULL, NULL, 'sdfas', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('96', 'P8LOYM69', 'sdfsd', 'fdsfs', NULL, '324234', '345345', 'hmsa@gmail.com', '2321994d85d661d792223f647000c65f', '', NULL, NULL, 'dfsdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('97', 'P6WK7Y8U', 'sdfsdf', 'sdfsd', NULL, '324234', '324', 'dsfsdf@gmail.com', '0e9212587d373ca58e9bada0c15e6fe4', '', NULL, NULL, '23432', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('98', 'P6IMSEVG', 'sdfs', 'dfdsfsad', NULL, '234234', '234234', 'hmisaa@gadsmil.copm', '0e9212587d373ca58e9bada0c15e6fe4', '', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('99', 'PJE2MM9R', 'dsfsdf', 'dfsd', NULL, '23424', '34234234', 'dsfsd@gail.com', '81dc9bdb52d04dc20036dbd8313ed055', '', NULL, NULL, 'sdfsd', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('100', 'PI7MKU6R', 'sdfsd', 'dfsd', NULL, '345234', '234234', 'jjj@gmail.com', '6c14da109e294d1e8155be8aa4b1ce8e', '', NULL, NULL, 'dsfdsf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('101', 'PYL2FBAK', 'sdfsdf', 'dsfsdf', NULL, '234234', '234234', 'sdfsdsdf@gmail.com', '58238e9ae2dd305d79c2ebc8c1883422', '', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('102', 'PUFQ8U4S', 'dsfsdf', 'sdf', NULL, '23423', '234234', 'sdfsdfsdf@gmail.com', 'af7614beb734197937ed5f361673f6a8', '', NULL, NULL, 'dfsda', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('103', 'PDCLIAGB', 'sdfsd', 'fsdfsd', NULL, '234234', 'sdfsdf', 'ffghf@gmail.com', 'cd6a1a15421189de23d7309feebff8d7', '', NULL, NULL, 'fsdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('104', 'PKWFKPVA', 'sdfsdf', 'dfsd', NULL, '234234', '234234', 'hmisahsaq@gmail.cosm', '468171c825c02408cc99935447c785a5', '', NULL, NULL, 'fsda', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('105', 'PC7T10J0', 'uuuuu', 'mmmm', NULL, '324234', '231231', 'um@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '', NULL, NULL, 'sdfasdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('106', 'PPTKT5MP', 'sdfsdf', 'dsfsdf', NULL, '324234', '234234', 'hm@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', NULL, NULL, 'dfsdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('107', 'PU6RD15O', 'kawser', 'Ahmad', NULL, '3423423', '3234234', 'kawsar@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '', NULL, NULL, 'Khilkhet', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('108', 'PBAKE0PB', 'dsfsdf', 'dfds', NULL, '234234', '23423423', 'hhh@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('109', 'PR9D6WJ7', 'sdfsdf', 'sdfsadf', NULL, '32423423', '345345', 'hmisahsaq333@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '', NULL, NULL, 'fsdfasdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('110', 'P7XOIPXH', 'Habibullah', 'Khan', NULL, '234234', '231123', 'habibullah@gmail.com', '46a36a35a3c58cdc8cccceef67833b78', '', NULL, NULL, 'fsdfdsf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('111', 'P0DKWL9S', 'kkk', 'rrr', NULL, '23424', '2342342', 'kka@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '', NULL, NULL, '234234', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('112', 'P9HH5VQA', 'Rahim', 'Mia', NULL, '234234', '345345', 'rahim@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '', NULL, NULL, 'dfsdfsdaf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('113', 'PXKQZ0OL', 'j', 'rauling', 'k ', '234234', '345356345234', 'jk@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', NULL, './application/modules/ticket/assets/images/passenger/145587dc7714f7b5d560bb6d6a185662.jpg', 'fdgdsft435345', '345345', 'dhaka', '234234', 'BD', '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('114', 'P90DLC71', 'test', 'passenger', NULL, '234234', '', 'testpass@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', NULL, NULL, 'dsfsadf', '234234', 'dhaka', '111', 'BD', '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('115', 'PZ8SYQBM', 'ooo', 'asdf', NULL, '234234', '', 'ooo@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', NULL, NULL, 'sdfasdf', 'sdfsdaf', 'dd', '234324', 'BD', '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('116', 'P8TIJ3TC', 'dssdf', 'sdf', '', '23423', '343242131', 'dfsdafsadf@gmail.com', '289dff07669d7a23de0ef88d2f7129e7', '', NULL, '', '', '', 'dhka', '231', 'BD', '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('117', 'PRQD0LBN', 'dfgdfg', 'dfgdfg', NULL, '3453534', '324234234', 'sdafasdf@gmail.com', '4297f44b13955235245b2497399d7a93', '', NULL, NULL, '123123', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('118', 'P668WB6J', 'sadf', 'sdfsad', NULL, 'f234234', '234234', 'sdfasdfsd@gmail.com', '468171c825c02408cc99935447c785a5', '', NULL, NULL, '23423', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('119', 'PZVOTCZX', 'sdfsdaf', 'sdfsd', NULL, 'f234234', '3242342', 'gasdfgsd@gmail.com', '468171c825c02408cc99935447c785a5', '', NULL, NULL, 'sdfsadf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('120', 'PJ6J9FH1', 'sdfs', 'adfsadf', NULL, '234234', '234234', 'sdfsadf@gamil.com', '7a4a1d992bf4e98dee11852a48215193', '', NULL, NULL, 'dsfsdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('121', 'PQ696BAV', 'sdfas', 'dfsadf', NULL, '234234', '2342353245', 'dfsadfsdaf@gmaii.com', '468171c825c02408cc99935447c785a5', '', NULL, NULL, 'sdfasdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('122', 'PQ9Y74G4', 'sdfs', 'dfsdf', NULL, '234234', '234234', 'sdfasdf@gmail.com', '0e9212587d373ca58e9bada0c15e6fe4', '', NULL, NULL, 'sdfasdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('123', 'PWA25TSI', 'sdfa', 'sdfsdf', NULL, '234234', '2342342', 'sdfasdsdff@gmail.com', '0e9212587d373ca58e9bada0c15e6fe4', '', NULL, NULL, 'sdfsadf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('124', 'P3U1W3R6', 'sdfsad', 'fsdfsd', NULL, '23423', '324234', 'dsfasdf@gmail.com', '27fe076f3f9ad7a444e7c27580d112b7', '', NULL, NULL, 'sdfasd', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('125', 'P59WUSCG', 'sdfa', 'sdfsadf', NULL, '234234', '234234', 'sdfa2sdf@gmail.com', '468171c825c02408cc99935447c785a5', '', NULL, NULL, 'sdfasd234234', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('126', 'P7A1UXB6', 'sdfs', 'dfsdf', NULL, '42343', 'f234234', 'sdfsad@gmail.com', '303e1ca3bd11d140988fb0e51e3ec8ef', '', NULL, NULL, 'sdfasd', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('127', 'P5GH5VQA', 'sdfasdf', 'sdfsdf', NULL, '23423423', '42343', 'sadfsadf@gmail.com', '289dff07669d7a23de0ef88d2f7129e7', '', NULL, NULL, '234', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('128', 'P8T1R8I8', 'sdfasdfasdf', 'sdfsadf', NULL, '234234', '234234', 'sdfsadf@gmail.com', '3d324c2883882b15fa8fbe8f025a3a99', '', NULL, NULL, 'sdfasdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('129', 'PWWBQ2LI', 'sdfsad', 'fsdfsd', NULL, '234234', '34234', 'asdfsadf@gmail.com', '2321994d85d661d792223f647000c65f', '', NULL, NULL, 'sdfsadf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('130', 'PRJIPOP4', 'sdfasd', 'fsdf', NULL, '23423', '423432', 'sfasd@gaml.c', '468171c825c02408cc99935447c785a5', '', NULL, NULL, '234', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('131', 'PAV20EMW', 'sdfsadf', 'sdfas', NULL, '234432', '32452342', 'dsfsadf@gm.cp', '2321994d85d661d792223f647000c65f', '', NULL, NULL, 'dfsdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('132', 'P3E43O09', 'sdfas', 'dfsadf', NULL, '234234', '234234234', 'dfasdf@gmail.com', '289dff07669d7a23de0ef88d2f7129e7', '', NULL, NULL, 'sdaf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('133', 'PBTRHKOT', 'sdfasd', 'sdfasd', NULL, '23423', '234234', 'sdafasf@gmail.com', '289dff07669d7a23de0ef88d2f7129e7', '', NULL, NULL, 'sdfsad', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('134', 'P6G9R9D6', 'sdfsad', 'fsadf', NULL, '2345234', '234234', 'sdqfasdf@gmail.com', '0e9212587d373ca58e9bada0c15e6fe4', '', NULL, NULL, 'sadfas', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('135', 'PCW3FVLZ', 'sdfsad', 'fsdf', NULL, '2344', '234234', 'sdfs@gmai.c', '289dff07669d7a23de0ef88d2f7129e7', '', NULL, NULL, 'dsfsda', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('136', 'PY09YCE0', 'sdfs', 'fsdf', NULL, '2345234', '23423', 'gasadf@gmail.c', '289dff07669d7a23de0ef88d2f7129e7', '', NULL, NULL, 'sdfasdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('137', 'P63QY7FD', 'asdfas', 'dfasdf', NULL, '23424', '34324', 'sadfs@gmail.com', '289dff07669d7a23de0ef88d2f7129e7', '', NULL, NULL, '234', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('138', 'PV7CJXUU', 'sadfasdfsd', 'dsf', NULL, '234234', '23423', 'sdfasdf@gmail2.com', '289dff07669d7a23de0ef88d2f7129e7', '', NULL, NULL, '234fsadf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('139', 'PPXH9HH5', 'sadfsd', 'fsdf', NULL, '234234', '234234', 'sdfsdh@gmail.com', '14f9518c8b937874621f29425161acec', '', NULL, NULL, 'sdfsadf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('140', 'PCEH0T7O', 'sdfsd', 'dsfsdf', NULL, '423423', '2343424', 'dfdsf@gma.co', '289dff07669d7a23de0ef88d2f7129e7', '', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('141', 'PYY0R2HI', 'sdfa', 'sdf', NULL, '234234', '234234', 'dsfsadf@gmail.com', '289dff07669d7a23de0ef88d2f7129e7', '', NULL, NULL, 'dsfasd', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('142', 'P60EBON3', 'sdfasdf', 'sdfa', NULL, '234234', '234234234', 'sdfasdfds@gmail.com', '7cc532d783a7461f227a5da8ea80bfe1', '', NULL, NULL, 'sdfasdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('143', 'P6C9BZ32', 'sadfas', 'dfasdf', NULL, '234234', '23423', 'sdfassdf@gmail.com', '4a60188c269ff9e104dd3fff562f4795', '', NULL, NULL, 'sdfs', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('144', 'P9XKRCFB', 'werw', 'ewer', NULL, '234234', '234234', 'dsfsadf@agmail.com', '289dff07669d7a23de0ef88d2f7129e7', '', NULL, NULL, 'dsfsdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('145', 'PFND4UK6', 'sdfas', 'sdf', NULL, '23423', '324234', 'sdfas23df@gmail.com', '468171c825c02408cc99935447c785a5', '', NULL, NULL, 'sdfasdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('146', 'PYOZ8T1R', 'sdaf', 'asdfasd', NULL, '23443', '234234', 'sdfsdaf@gma.c', '2321994d85d661d792223f647000c65f', '', NULL, NULL, 'sdfsad', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('147', 'PK7XYHSV', 'sdfas', 'dfsdf', NULL, '234234', '234234324', 'sdfsdafsdafsd@gma.c', '0e9212587d373ca58e9bada0c15e6fe4', '', NULL, NULL, 'sdfasdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('148', 'P9X5WFNP', 'sdfsadf', 'sdfs', NULL, '234234', '213123', 'fsdfsdfsdf@gmail.com', 'e034fb6b66aacc1d48f445ddfb08da98', '', NULL, NULL, 'fsdfsdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('149', 'P8J3URDG', 'sdfsa', 'dfsdfsad', NULL, '23423423', '234234', 'hmisa@gmail.com', '0e9212587d373ca58e9bada0c15e6fe4', '', NULL, NULL, 'sdfsadf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('150', 'P3X0OX9Q', 'gsdfg', 'dfgdsfg', NULL, '345345', '23423', 'dfgsdfgsdf@gmail.c', '289dff07669d7a23de0ef88d2f7129e7', '', NULL, NULL, 'sdfasdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('151', 'PXRLI680', 'sdfasd', 'sdf', NULL, '23423', '234', 'sdfsadfdsf@gmail.com', '27fe076f3f9ad7a444e7c27580d112b7', '', NULL, NULL, 'sdfasdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('152', 'P7YDNZSJ', 'dfgdfgdfg', 'dfgdfg', NULL, '2345234', '43535345', 'tease@gmail.com', '0e9212587d373ca58e9bada0c15e6fe4', '', NULL, NULL, 'fgsdfg', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('153', 'PD28QPHA', 'sdfsd', 'fsdfsdf', NULL, '234234234', '53454', 'jaman@gmail.com', '0e9212587d373ca58e9bada0c15e6fe4', '', NULL, NULL, 'sdfsafasdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('154', 'PM4QD0LB', 'sdfsadf', 'sdfsdf', NULL, '423423', '234234', 'kamruzzaman@gmail.com', '202cb962ac59075b964b07152d234b70', '', NULL, NULL, 'dfasdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('155', 'PU8CBBQD', 'sdfsadf', 'sdfsadf', NULL, '234234', '3424', 'text@gmail.com', '0e9212587d373ca58e9bada0c15e6fe4', '', NULL, NULL, 'dfasdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('156', 'PG1FHFNK', 'sdfsadf', 'sdfsd', NULL, '234234', '23423', 'demao@gmail.com', '0126bbd9b5eff8f61724c9bf66ff65f1', '', NULL, NULL, 'sdfasdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('157', 'PDZVOTCZ', 'sdf', 'asdfsdaf', NULL, '324234', '23423', 'sdf@gmail.com', '289dff07669d7a23de0ef88d2f7129e7', '', NULL, NULL, 'dfgsdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('158', 'P8J6J9FH', 'sdfasd', 'fsdfsa', NULL, '234234', '234234', 't@gmail.com', '289dff07669d7a23de0ef88d2f7129e7', '', NULL, NULL, 'fsfdsdf', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('159', 'PXWA25TS', 'sdfasdf', 'sdfsdf', NULL, '234234', '234234', 'hom@gmail.com', '468171c825c02408cc99935447c785a5', '', NULL, NULL, '3234234', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('160', 'PACY106J', 'sdfsadf', 'sdfsdf', NULL, '234234', '423432', '23423@gmail.com', '468171c825c02408cc99935447c785a5', '', NULL, NULL, '234234', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('161', 'PLVRYAUF', 'sdfasdf', 'sdfsad', NULL, '234432', '234234', 'hms@gmail.com', '202cb962ac59075b964b07152d234b70', '', NULL, NULL, 'dfsdfsd', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('162', 'PL18LOYM', 'sdfsdf', 'sdfs', NULL, '234234', '234234', 'j@gmail.com', '289dff07669d7a23de0ef88d2f7129e7', '', NULL, NULL, 'dsfsdfsd', NULL, NULL, NULL, NULL, '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('163', 'P8O6MVDC', 'dsfasd', 'sdfas', '', '23423', '234234', 'sdfassddf@gmail.com', '2321994d85d661d792223f647000c65f', '', NULL, '', 'dfsadf', '', '', '', 'BD', '1');
INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('164', 'PEV6WK7Y', 'Shamim', 'dsfsd', '', '234234', '35244', 'hfgdsf@gmail.com', '0e9212587d373ca58e9bada0c15e6fe4', '', NULL, './application/modules/ticket/assets/images/passenger/7825467b2c27ef5ebba3cbd6826b5b9f.png', 'dsfsadf', 'dsfsd', 'dhaka', '234', 'BD', '1');


#
# TABLE STRUCTURE FOR: tkt_referal
#

DROP TABLE IF EXISTS `tkt_referal`;

CREATE TABLE `tkt_referal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tkt_passenger_id_no` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tkt_refund
#

DROP TABLE IF EXISTS `tkt_refund`;

CREATE TABLE `tkt_refund` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tkt_booking_id_no` varchar(20) DEFAULT NULL,
  `tkt_passenger_id_no` varchar(20) DEFAULT NULL,
  `cancelation_fees` float DEFAULT NULL,
  `causes` text,
  `comment` text,
  `refund_by_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tkt_refund_tkt_booking` (`tkt_booking_id_no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `tkt_refund` (`id`, `tkt_booking_id_no`, `tkt_passenger_id_no`, `cancelation_fees`, `causes`, `comment`, `refund_by_id`, `date`) VALUES ('1', 'B8J1CVJK', 'PQXPHMBN', '80', 'I am not Satisfied', 'Good', '2', '2018-04-02 09:28:36');
INSERT INTO `tkt_refund` (`id`, `tkt_booking_id_no`, `tkt_passenger_id_no`, `cancelation_fees`, `causes`, `comment`, `refund_by_id`, `date`) VALUES ('2', 'BQKF72YH', 'P29X32PX', '100', 'emni emni', '', '2', '2018-08-19 06:15:40');


#
# TABLE STRUCTURE FOR: trip
#

DROP TABLE IF EXISTS `trip`;

CREATE TABLE `trip` (
  `trip_id` int(11) NOT NULL AUTO_INCREMENT,
  `trip_title` varchar(200) NOT NULL,
  `type` int(11) NOT NULL,
  `route` int(11) NOT NULL,
  `shedule_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`trip_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

INSERT INTO `trip` (`trip_id`, `trip_title`, `type`, `route`, `shedule_id`, `status`) VALUES ('1', 'Ac-New York To  San Francisco-9:00 AM - 3:00 PM', '1', '2', '1', '1');
INSERT INTO `trip` (`trip_id`, `trip_title`, `type`, `route`, `shedule_id`, `status`) VALUES ('2', 'Ac-New York To  San Francisco-10:00AM - 4:00PM', '1', '2', '2', '1');
INSERT INTO `trip` (`trip_id`, `trip_title`, `type`, `route`, `shedule_id`, `status`) VALUES ('3', 'Non-Ac-New York To  San Francisco-9:00 AM - 3:00 PM', '2', '2', '1', '1');
INSERT INTO `trip` (`trip_id`, `trip_title`, `type`, `route`, `shedule_id`, `status`) VALUES ('4', 'Non-Ac-New York To  San Francisco-10:00AM - 4:00PM', '2', '2', '2', '1');
INSERT INTO `trip` (`trip_id`, `trip_title`, `type`, `route`, `shedule_id`, `status`) VALUES ('5', 'Non-Ac-Austin To Chicago-9:00 AM - 3:00 PM', '2', '1', '1', '1');
INSERT INTO `trip` (`trip_id`, `trip_title`, `type`, `route`, `shedule_id`, `status`) VALUES ('6', 'Ac-Austin To Chicago-10:00AM - 4:00PM', '1', '1', '2', '1');
INSERT INTO `trip` (`trip_id`, `trip_title`, `type`, `route`, `shedule_id`, `status`) VALUES ('7', 'Ac-US-BD-9:40 am - 05:25 pm', '1', '3', '4', '1');
INSERT INTO `trip` (`trip_id`, `trip_title`, `type`, `route`, `shedule_id`, `status`) VALUES ('8', 'Ac-US-BD-10:00AM - 4:00PM', '1', '3', '2', '1');
INSERT INTO `trip` (`trip_id`, `trip_title`, `type`, `route`, `shedule_id`, `status`) VALUES ('9', 'Ac-My Route-10:00AM - 4:00PM', '1', '4', '2', '1');
INSERT INTO `trip` (`trip_id`, `trip_title`, `type`, `route`, `shedule_id`, `status`) VALUES ('10', 'Non-Ac-Huston - NewYork-9:00 AM - 3:00 PM', '2', '5', '1', '1');
INSERT INTO `trip` (`trip_id`, `trip_title`, `type`, `route`, `shedule_id`, `status`) VALUES ('11', 'Non-AC MiniBus-BD-Istanbul-11:00AM - 5:00PM', '3', '6', '3', '1');


#
# TABLE STRUCTURE FOR: trip_assign
#

DROP TABLE IF EXISTS `trip_assign`;

CREATE TABLE `trip_assign` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_no` varchar(20) DEFAULT NULL,
  `fleet_registration_id` int(11) DEFAULT NULL,
  `trip` varchar(30) NOT NULL,
  `assign_time` datetime NOT NULL,
  `driver_id` int(11) DEFAULT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO `trip_assign` (`id`, `id_no`, `fleet_registration_id`, `trip`, `assign_time`, `driver_id`, `assistant_1`, `assistant_2`, `assistant_3`, `sold_ticket`, `total_income`, `total_expense`, `total_fuel`, `trip_comment`, `closed_by_id`, `date`, `status`) VALUES ('1', '180814110515', '2', '5', '2018-08-14 15:05:00', '1', '3', '4', '4', '0', '0', '0', '0', 'sdfsdf', '2', '2018-08-14 11:17:00', '1');
INSERT INTO `trip_assign` (`id`, `id_no`, `fleet_registration_id`, `trip`, `assign_time`, `driver_id`, `assistant_1`, `assistant_2`, `assistant_3`, `sold_ticket`, `total_income`, `total_expense`, `total_fuel`, `trip_comment`, `closed_by_id`, `date`, `status`) VALUES ('2', '180816082136', '1', '5', '2018-08-16 12:20:00', '2', '3', '4', '5', '0', '0', '0', '0', '', '2', '2018-10-06 06:47:00', '1');
INSERT INTO `trip_assign` (`id`, `id_no`, `fleet_registration_id`, `trip`, `assign_time`, `driver_id`, `assistant_1`, `assistant_2`, `assistant_3`, `sold_ticket`, `total_income`, `total_expense`, `total_fuel`, `trip_comment`, `closed_by_id`, `date`, `status`) VALUES ('3', '180817064658', '4', '7', '2018-08-17 12:46:00', '7', '6', '', '', '0', '0', '0', '0', '', '2', '2018-08-17 06:47:00', '1');
INSERT INTO `trip_assign` (`id`, `id_no`, `fleet_registration_id`, `trip`, `assign_time`, `driver_id`, `assistant_1`, `assistant_2`, `assistant_3`, `sold_ticket`, `total_income`, `total_expense`, `total_fuel`, `trip_comment`, `closed_by_id`, `date`, `status`) VALUES ('4', '180901095332', '2', '10', '2018-09-01 15:52:00', '7', '6', '', '', '0', '0', '0', '0', '', '2', '2018-10-06 06:47:00', '1');
INSERT INTO `trip_assign` (`id`, `id_no`, `fleet_registration_id`, `trip`, `assign_time`, `driver_id`, `assistant_1`, `assistant_2`, `assistant_3`, `sold_ticket`, `total_income`, `total_expense`, `total_fuel`, `trip_comment`, `closed_by_id`, `date`, `status`) VALUES ('5', '180906071307', '4', '11', '2018-09-07 13:12:00', '1', '0', '0', '0', '0', '0', '0', '0', '', '2', '2018-10-06 06:46:00', '1');
INSERT INTO `trip_assign` (`id`, `id_no`, `fleet_registration_id`, `trip`, `assign_time`, `driver_id`, `assistant_1`, `assistant_2`, `assistant_3`, `sold_ticket`, `total_income`, `total_expense`, `total_fuel`, `trip_comment`, `closed_by_id`, `date`, `status`) VALUES ('6', '181021060821', '1', '7', '2018-10-21 10:08:00', '1', '4', '4', '6', '0', '0', '0', '0', '', '2', '2018-10-21 11:08:00', '1');
INSERT INTO `trip_assign` (`id`, `id_no`, `fleet_registration_id`, `trip`, `assign_time`, `driver_id`, `assistant_1`, `assistant_2`, `assistant_3`, `sold_ticket`, `total_income`, `total_expense`, `total_fuel`, `trip_comment`, `closed_by_id`, `date`, `status`) VALUES ('7', '181021010726', '1', '1', '2018-10-21 17:06:00', '1', '3', '4', '5', '0', '0', '0', '0', '', '2', '2018-10-21 13:09:00', '1');


#
# TABLE STRUCTURE FOR: trip_location
#

DROP TABLE IF EXISTS `trip_location`;

CREATE TABLE `trip_location` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `google_map` text,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO `trip_location` (`id`, `name`, `description`, `google_map`, `image`, `status`) VALUES ('1', 'New York', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d387193.3059353029!2d-74.25986548248684!3d40.697149419326095!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew+York%2C+NY%2C+USA!5e0!3m2!1sen!2sbd!4v1522650596382\" width=\"200\" height=\"100\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', './application/modules/trip/assets/images/location/748c6bffdc897c044074ff9780c72ec4.jpg', '1');
INSERT INTO `trip_location` (`id`, `name`, `description`, `google_map`, `image`, `status`) VALUES ('2', 'Los Angeles', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d423286.27405770525!2d-118.69192047471653!3d34.02016130653294!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2c75ddc27da13%3A0xe22fdf6f254608f4!2sLos+Angeles%2C+CA%2C+USA!5e0!3m2!1sen!2sbd!4v1522650831098\" width=\"200\" height=\"100\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', './application/modules/trip/assets/images/location/dcdcc5dbca7e7850997a64c0cd2c6184.jpg', '1');
INSERT INTO `trip_location` (`id`, `name`, `description`, `google_map`, `image`, `status`) VALUES ('3', 'Chicago', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d380513.7159859942!2d-88.01214778988322!3d41.83339250495681!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x880e2c3cd0f4cbed%3A0xafe0a6ad09c0c000!2sChicago%2C+IL%2C+USA!5e0!3m2!1sen!2sbd!4v1522650981030\" width=\"200\" height=\"100\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', './application/modules/trip/assets/images/location/53702a7a5891cd192d3422b2b620da0b.jpg', '1');
INSERT INTO `trip_location` (`id`, `name`, `description`, `google_map`, `image`, `status`) VALUES ('4', 'Houston', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d886188.2409216223!2d-95.96174953501654!3d29.815995387800758!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8640b8b4488d8501%3A0xca0d02def365053b!2sHouston%2C+TX%2C+USA!5e0!3m2!1sen!2sbd!4v1522651134665\" width=\"200\" height=\"100\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', './application/modules/trip/assets/images/location/7eff8ac4af8762107d88ee011e3d474b.jpg', '1');
INSERT INTO `trip_location` (`id`, `name`, `description`, `google_map`, `image`, `status`) VALUES ('5', 'San Francisco', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d201880.51115438552!2d-122.57768437848272!3d37.75761709727139!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80859a6d00690021%3A0x4a501367f076adff!2sSan+Francisco%2C+CA%2C+USA!5e0!3m2!1sen!2sbd!4v1522651674474\" width=\"200\" height=\"100\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', './application/modules/trip/assets/images/location/b6651fb02ece429a95579ef636a98905.jpeg', '1');
INSERT INTO `trip_location` (`id`, `name`, `description`, `google_map`, `image`, `status`) VALUES ('6', 'Austin', 'Nice City of America', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d440899.73490213486!2d-98.03359109115286!3d30.30746242142474!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8644b599a0cc032f%3A0x5d9b464bd469d57a!2sAustin%2C+TX%2C+USA!5e0!3m2!1sen!2sbd!4v1522662015634\" width=\"200\" height=\"100\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', './application/modules/trip/assets/images/location/33119b11e50056629388045cc5199746.jpg', '1');
INSERT INTO `trip_location` (`id`, `name`, `description`, `google_map`, `image`, `status`) VALUES ('7', 'Farmgate', 'test info', '', './application/modules/trip/assets/images/location/a9c4cd38d52d0272c4c62e40f0351136.png', '1');
INSERT INTO `trip_location` (`id`, `name`, `description`, `google_map`, `image`, `status`) VALUES ('8', 'Istanbul', 'Capital of Turkey', '', '', '1');


#
# TABLE STRUCTURE FOR: trip_route
#

DROP TABLE IF EXISTS `trip_route`;

CREATE TABLE `trip_route` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `start_point` varchar(255) DEFAULT NULL,
  `end_point` varchar(255) DEFAULT NULL,
  `stoppage_points` varchar(355) DEFAULT NULL COMMENT 'Location ids',
  `distance` float DEFAULT NULL,
  `approximate_time` varchar(100) DEFAULT NULL,
  `children_seat` int(11) NOT NULL DEFAULT '0',
  `special_seat` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO `trip_route` (`id`, `name`, `start_point`, `end_point`, `stoppage_points`, `distance`, `approximate_time`, `children_seat`, `special_seat`, `status`) VALUES ('1', 'Austin To Chicago', '6', '3', 'austin, us, washington', '200', '6 Hours', '0', '0', '1');
INSERT INTO `trip_route` (`id`, `name`, `start_point`, `end_point`, `stoppage_points`, `distance`, `approximate_time`, `children_seat`, `special_seat`, `status`) VALUES ('2', 'New York To  San Francisco', '1', '5', 'example, nyork, montinia', '200', '6 Hours', '0', '0', '1');
INSERT INTO `trip_route` (`id`, `name`, `start_point`, `end_point`, `stoppage_points`, `distance`, `approximate_time`, `children_seat`, `special_seat`, `status`) VALUES ('3', 'US-BD', '2', '7', 'Cumilla, Dubai', '1500', '10 hours', '0', '0', '1');
INSERT INTO `trip_route` (`id`, `name`, `start_point`, `end_point`, `stoppage_points`, `distance`, `approximate_time`, `children_seat`, `special_seat`, `status`) VALUES ('4', 'My Route', '7', '2', 'Austin,Farmgate,Houston,Los Angeles', '520', '20min', '3', '2', '1');
INSERT INTO `trip_route` (`id`, `name`, `start_point`, `end_point`, `stoppage_points`, `distance`, `approximate_time`, `children_seat`, `special_seat`, `status`) VALUES ('5', 'Huston - NewYork', '4', '1', 'Los Angeles,Chicago,San Francisco,Houston,New York', '220', '10 hours', '2', '2', '1');
INSERT INTO `trip_route` (`id`, `name`, `start_point`, `end_point`, `stoppage_points`, `distance`, `approximate_time`, `children_seat`, `special_seat`, `status`) VALUES ('6', 'BD-Istanbul', '7', '8', 'New York,Los Angeles,Houston,San Francisco,Farmgate,Istanbul', '1500', '10 hours', '0', '0', '1');
INSERT INTO `trip_route` (`id`, `name`, `start_point`, `end_point`, `stoppage_points`, `distance`, `approximate_time`, `children_seat`, `special_seat`, `status`) VALUES ('7', 'Test route', '4', '6', 'New York,Los Angeles,Chicago,San Francisco,Houston,Austin', '500', '4', '2', '1', '1');
INSERT INTO `trip_route` (`id`, `name`, `start_point`, `end_point`, `stoppage_points`, `distance`, `approximate_time`, `children_seat`, `special_seat`, `status`) VALUES ('8', 'Bangladesh', '6', '7', 'Los Angeles,Chicago,Houston,San Francisco,Austin,Farmgate', '123', '23', '2', '1', '1');


#
# TABLE STRUCTURE FOR: user
#

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `about` text,
  `email` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `password_reset_token` varchar(20) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_logout` datetime DEFAULT NULL,
  `ip_address` varchar(14) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_admin` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`) VALUES ('1', 'Henry', 'Smith', '', 'johnny@example.com', '827ccb0eea8a706c4c34a16891f84e7b', '', './assets/img/user/m.png', '2018-09-06 11:04:11', '2018-09-06 11:23:15', '180.234.203.86', '1', '0');
INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`) VALUES ('2', 'Administrator', 'User', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'admin@example.com', '827ccb0eea8a706c4c34a16891f84e7b', '', './assets/img/user/m2.png', '2018-10-21 13:52:15', '2018-10-21 09:00:46', '::1', '1', '1');
INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`) VALUES ('3', 'Test ', 'User', 'sdfasdf', 'test@gmail.com', '202cb962ac59075b964b07152d234b70', '', './assets/img/user/416e536733d6c3c66d32382bcc85fdd4.jpg', '2018-07-17 07:22:33', '2018-07-17 07:22:50', '::1', '1', '0');
INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`) VALUES ('4', 'shm', 'arafat', 'sdfsdf', 'arafat@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', NULL, NULL, NULL, '1', '0');
INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`) VALUES ('6', 'HM', 'Isahaq', NULL, 'hmisahaq01@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', './application/modules/agent/assets/images/854f2cec3721cc324ed5805610f86a04.png', '2018-09-11 11:00:57', '2018-09-11 11:01:19', '::1', '1', '0');


#
# TABLE STRUCTURE FOR: ws_booking_history
#

DROP TABLE IF EXISTS `ws_booking_history`;

CREATE TABLE `ws_booking_history` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_no` (`id_no`)
) ENGINE=InnoDB AUTO_INCREMENT=289 DEFAULT CHARSET=utf8;

INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('1', 'BZ4IQHA0', '5', 'PZN2TP1M', '1', 'austin', 'us', NULL, '950', '0', '1', '0', '1', '2', 'A1, A2, ', '', NULL, NULL, '2018-08-14 14:41:57', '2018-08-14 14:41:57', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('4', 'BUPXXJ1W', '6', 'PI7Y8W48', '1', 'austin', 'washington', NULL, '700', '0', '0', '1', '0', '1', 'A4, ', '', NULL, NULL, '2018-08-14 19:04:44', '2018-08-14 19:04:44', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('5', 'BNA3X5ML', '6', 'PB655VH1', '1', 'austin', 'washington', NULL, '700', '0', '0', '1', '0', '1', 'A4, ', '', NULL, NULL, '2018-08-14 19:05:29', '2018-08-14 19:05:29', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('8', 'BPLGOE04', '5', 'P1GL3YG0', '1', 'austin', 'washington', NULL, '500', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-08-16 10:01:45', '2018-08-16 10:01:45', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('17', 'BE6UA525', '5', 'PYH6FB1U', '1', 'austin', 'washington', NULL, '500', '0', '1', '0', '0', '1', 'C1, ', '', NULL, NULL, '2018-08-16 14:14:51', '2018-08-16 14:14:51', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('18', 'BS50F62E', '5', 'PCS3Q20M', '1', 'austin', 'washington', NULL, '500', '0', '1', '0', '0', '1', 'B2, ', '', NULL, NULL, '2018-08-16 14:39:50', '2018-08-16 14:39:50', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('22', 'BUARJCNG', '7', 'PG5YZW9V', '3', 'Cumilla', 'Dubai', 'Tea, Breakfast, Water, ', '3600', '0', '2', '1', '1', '4', 'A2, A3, A4, B3, ', '', NULL, NULL, '2018-08-20 12:34:00', '2018-08-17 12:34:00', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('25', 'BN3WJH9P', '9', 'PLAZACBE', '4', 'Farmgate', 'Los', 'Tea, Water, ', '1850', '0', '2', '3', '0', '5', 'A1, A2, A3, B1, B2, ', '', NULL, NULL, '2018-08-23 18:12:25', '2018-08-18 18:12:25', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('26', 'BGPGUHRD', '9', 'PWUJQI2R', '4', 'Farmgate', 'Los', 'Tea, Water, ', '1850', '0', '2', '3', '0', '5', 'A1, A2, A3, B1, B2, ', '', NULL, NULL, '2018-08-23 18:12:34', '2018-08-18 18:12:34', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('27', 'BQFRTRSM', '9', 'P29X32PX', '4', 'Farmgate', 'Los', 'Tea, Breakfast, Water, ', '1850', '0', '1', '3', '1', '5', 'A1, A2, A3, B1, B2, ', '', NULL, NULL, '2018-08-23 18:14:59', '2018-08-18 18:14:59', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('28', 'BIQX3GCZ', '6', 'P6E81IN6', '1', 'austin', 'austin', NULL, '1500', '0', '1', '1', '0', '2', 'A3, B4, ', '', NULL, NULL, '2018-08-10 01:21:14', '2018-08-19 01:21:14', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('29', 'BEJ81LCN', '6', 'PE9BA1H5', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'B3, ', '', NULL, NULL, '2018-08-10 03:47:13', '2018-08-19 03:47:13', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('31', 'B7GTD142', '9', 'PA99M9MG', '4', 'Farmgate', 'Los', NULL, '1900', '0', '2', '2', '0', '4', 'A1, A2, B1, B2, ', '', NULL, NULL, '2018-08-23 11:01:17', '2018-08-19 11:01:17', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('36', 'BU4RWEJE', '6', 'P5GRCWB3', '1', 'us', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'B2, ', '', NULL, NULL, '2018-08-19 14:44:25', '2018-08-19 14:44:25', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('37', 'BPHC2K6G', '6', 'PK9ZAVMD', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-08-19 14:59:24', '2018-08-19 14:59:24', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('38', 'B3M0XLUD', '6', 'PQX0DOUF', '1', 'austin', 'us', NULL, '800', '0', '1', '0', '0', '1', 'A2, ', '', NULL, NULL, '2018-08-19 15:00:53', '2018-08-19 15:00:53', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('39', 'BOIMXZ2J', '6', 'PT1US08R', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-08-19 15:14:52', '2018-08-19 15:14:52', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('40', 'BB9MS3KH', '6', 'PZ0AC7O3', '1', 'austin', 'us', NULL, '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-08-19 15:16:11', '2018-08-19 15:16:11', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('41', 'BPTBT2D9', '6', 'PMMGWGIE', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-08-19 15:46:59', '2018-08-19 15:46:59', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('42', 'BBXLWZGE', '6', 'PBYYGBK3', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-08-19 15:51:22', '2018-08-19 15:51:22', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('51', 'BGRGM09L', '6', 'PLWRI5DM', '1', 'austin', 'austin', NULL, '700', '0', '0', '1', '0', '1', 'D4, ', '', NULL, NULL, '2018-08-25 04:25:06', '2018-08-20 04:25:06', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('52', 'BIIDMVG5', '6', 'PPT8ZX7O', '1', 'austin', 'washington', NULL, '700', '0', '0', '1', '0', '1', 'B3, ', '', NULL, NULL, '2018-08-25 04:26:06', '2018-08-20 04:26:06', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('53', 'B761Q8KE', '6', 'P4UK8UW7', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-08-27 19:11:05', '2018-08-27 19:11:05', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('54', 'B2LEBQER', '6', 'PK2H5ZUR', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A2, ', '', NULL, NULL, '2018-08-27 19:12:49', '2018-08-27 19:12:49', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('56', 'BJ5V2355', '6', 'P23UWTS0', '1', 'austin', 'us', NULL, '800', '0', '1', '0', '0', '1', 'B3, ', '', NULL, NULL, '2018-08-28 11:01:18', '2018-08-28 11:01:18', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('59', 'B50O56KV', '6', 'PI3MPY9K', '1', 'austin', 'us', NULL, '3800', '0', '3', '2', '0', '5', 'A1, A3, A4, B1, B2, ', '4321', NULL, NULL, '2018-08-28 16:34:58', '2018-08-28 16:34:58', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('63', 'BKZ3EM6N', '1', 'P8CYMPC0', '2', 'example', 'nyork', NULL, '1200', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-08-30 18:55:14', '2018-08-29 18:55:14', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('68', 'B36AUP7C', '6', 'PIZJSWDI', '1', 'us', 'us', NULL, '1500', '0', '1', '1', '0', '2', 'B2, B3, ', '', NULL, NULL, '1970-01-01 07:07:52', '2018-08-30 07:07:52', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('69', 'BSJHSVI2', '6', 'PGIH44BG', '1', 'austin', 'us', NULL, '700', '0', '0', '1', '0', '1', 'D3, ', '', NULL, NULL, '1970-01-01 07:52:07', '2018-08-30 07:52:07', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('70', 'BWEE9V2J', '6', 'PHROZH76', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-08-30 12:50:59', '2018-08-30 12:50:59', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('75', 'BD7L2HP6', '6', 'PS3OXFMC', '1', 'austin', 'washington', NULL, '1600', '0', '2', '0', '0', '2', 'B2, D3, ', '', NULL, NULL, '1970-01-01 03:47:44', '2018-09-05 03:47:44', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('76', 'B8AYEKJ1', '6', 'PQUZQ6RI', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'D4, ', '', NULL, NULL, '1970-01-01 04:01:41', '2018-09-05 04:01:41', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('77', 'BWTC8CH5', '6', 'PMV5WMGK', '1', 'austin', 'us', NULL, '800', '0', '1', '0', '0', '1', 'D3, ', '', NULL, NULL, '1970-01-01 04:42:13', '2018-09-05 04:42:13', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('78', 'B5BS0DU5', '6', 'PEQLHPGN', '1', 'austin', 'us', NULL, '700', '0', '0', '1', '0', '1', 'C2, ', '', NULL, NULL, '1970-01-01 04:49:53', '2018-09-05 04:49:53', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('79', 'BV04R3WF', '6', 'P0QEJ0SY', '1', 'austin', 'us', NULL, '3040', '0', '0', '4', '0', '4', 'C1, C2, C3, C4, ', '', NULL, NULL, '1970-01-01 04:57:03', '2018-09-05 04:57:03', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('80', 'BNJPKPR5', '6', 'PLBAVNSV', '1', 'austin', 'us', NULL, '3040', '0', '4', '0', '0', '4', 'C1, C2, C3, C4, ', '', NULL, NULL, '1970-01-01 04:58:26', '2018-09-05 04:58:26', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('82', 'BXRO8U66', '6', 'PSRN55YT', '1', 'austin', 'austin', NULL, '800', '0', '1', '0', '0', '1', 'C2, ', '', NULL, NULL, '1970-01-01 06:17:03', '2018-09-05 06:17:03', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('83', 'BO3WFLWU', '1', 'P31NINU5', '2', 'nyork', 'montinia', 'Tea, Breakfast, Water, ', '3600', '0', '4', '0', '0', '4', 'A1, A2, A3, A4, ', '', NULL, NULL, '2018-09-05 20:13:42', '2018-09-05 20:13:42', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('95', 'BLOVYVRE', '11', 'PPD6RCYQ', '6', 'Los', 'Istanbul', NULL, '1100', '0', '1', '0', '0', '1', 'A2, ', '', NULL, NULL, '2018-09-23 13:16:29', '2018-09-06 13:16:29', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('96', 'B9FFBEOC', '6', 'P507XYM1', '1', 'austin', 'us', NULL, '700', '0', '0', '1', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-06 14:28:18', '2018-09-06 14:28:18', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('97', 'BCYY5DQE', '6', 'PH658T6L', '1', 'us', 'washington', 'Tea, Breakfast, Water, ', '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-06 14:51:35', '2018-09-06 14:51:35', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('98', 'BHLAYQ1B', '6', 'PRSM0Q6X', '1', 'us', 'washington', 'Tea, Breakfast, Water, ', '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-06 14:54:06', '2018-09-06 14:54:06', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('99', 'BAFS760T', '6', 'PJ1IOJLM', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-06 14:56:39', '2018-09-06 14:56:39', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('100', 'BA1I0QRD', '6', 'PB0C2Z9V', '1', 'austin', 'washington', 'Tea, Breakfast, Water, ', '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-06 15:02:37', '2018-09-06 15:02:37', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('101', 'BYQTXYKH', '6', 'PMG3YOWH', '1', 'austin', 'washington', 'Tea, Breakfast, Water, ', '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-06 15:03:16', '2018-09-06 15:03:16', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('102', 'B9GLFT7S', '6', 'PWS1JQJ5', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-06 15:10:47', '2018-09-06 15:10:47', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('103', 'BWNZJMU2', '6', 'PVGZ56YS', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-06 15:13:34', '2018-09-06 15:13:34', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('104', 'BG0EA0U9', '6', 'PME3D3W2', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-06 15:16:25', '2018-09-06 15:16:25', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('105', 'B8PYQA9V', '6', 'PKSP940Y', '1', 'austin', 'washington', 'Tea, Breakfast, Water, ', '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-06 15:18:54', '2018-09-06 15:18:54', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('108', 'BJH8R9TZ', '6', 'PN1Q10NO', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-09-08 09:57:23', '2018-09-08 09:57:23', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('110', 'B5FWJT36', '6', 'PNR5A9O0', '1', 'austin', 'washington', 'Tea, Water, ', '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-09-08 10:26:38', '2018-09-08 10:26:38', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('111', 'BVEOTV7P', '6', 'P1D5F50T', '1', 'austin', 'us', NULL, '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-09-08 10:54:34', '2018-09-08 10:54:34', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('112', 'BGTLFQP6', '6', 'PMCW9DFA', '1', 'austin', 'us', NULL, '800', '0', '1', '0', '0', '1', 'A2, ', '', NULL, NULL, '2018-09-08 11:09:45', '2018-09-08 11:09:45', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('113', 'BVJT5G5B', '6', 'PKX726UV', '1', 'austin', 'washington', 'Tea, Breakfast, ', '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-09-08 11:14:49', '2018-09-08 11:14:49', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('114', 'BN114G0W', '6', 'PJ54LM6U', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-09-08 11:16:30', '2018-09-08 11:16:30', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('115', 'BAH979MS', '6', 'PS1Y70PH', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-09-08 11:18:41', '2018-09-08 11:18:41', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('116', 'BRLXWDX0', '6', 'PRXT5N59', '1', 'us', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-09-08 11:19:39', '2018-09-08 11:19:39', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('117', 'BH1X621H', '6', 'PTTY9DQG', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A2, ', '', NULL, NULL, '2018-09-08 11:22:51', '2018-09-08 11:22:51', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('118', 'BUCQJ7X9', '6', 'PT6JJP5S', '1', 'austin', 'us', NULL, '800', '0', '1', '0', '0', '1', 'A2, ', '', NULL, NULL, '2018-09-08 11:23:27', '2018-09-08 11:23:27', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('119', 'BZHVP7PM', '6', 'P0VAXE6P', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-09-08 11:25:07', '2018-09-08 11:25:07', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('120', 'BTSJ1RZE', '6', 'PKPDP2J9', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A2, ', '', NULL, NULL, '2018-09-08 11:32:10', '2018-09-08 11:32:10', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('121', 'BJWGB428', '6', 'PECYRIKI', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-09-08 11:34:24', '2018-09-08 11:34:24', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('122', 'BU9I3KH0', '6', 'P86I0LN1', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-08 11:35:21', '2018-09-08 11:35:21', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('124', 'B9AAH252', '6', 'PAK3ZJJK', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-09-08 16:20:36', '2018-09-08 16:20:36', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('125', 'B5JEDN89', '6', 'PIOCXYLQ', '1', 'austin', 'washington', 'Tea, Breakfast, Water, ', '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-09-08 16:30:27', '2018-09-08 16:30:27', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('126', 'B4KJOXSZ', '6', 'PT2JEDN8', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-09-08 16:33:20', '2018-09-08 16:33:20', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('127', 'BJQTEU5Q', '6', 'P0GBQWAQ', '1', 'austin', 'us', 'Tea, Breakfast, ', '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-09-08 16:45:45', '2018-09-08 16:45:45', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('128', 'BF0YXRKA', '6', 'PDD70KLI', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-09-08 16:54:38', '2018-09-08 16:54:38', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('129', 'B9SMHFX2', '6', 'P879O66L', '1', 'austin', 'us', NULL, '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-09-08 17:19:56', '2018-09-08 17:19:56', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('130', 'BGFA13NF', '6', 'P1P3V17W', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-09-08 17:21:47', '2018-09-08 17:21:47', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('131', 'B137KEAT', '6', 'P30IPW09', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-08 17:23:54', '2018-09-08 17:23:54', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('134', 'BL2UXG86', '6', 'P7H1O9EG', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-08 17:38:01', '2018-09-08 17:38:01', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('140', 'BJKL0H5B', '6', 'POG1AAA2', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A2, ', '', NULL, NULL, '2018-09-09 12:57:33', '2018-09-09 12:57:33', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('142', 'BKKQZ4G2', '6', 'P840U1AR', '1', 'austin', 'washington', NULL, '700', '0', '0', '1', '0', '1', 'A2, ', '', NULL, NULL, '2018-09-09 19:12:13', '2018-09-09 19:12:13', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('143', 'BCPYSEMH', '6', 'PBP1E2NF', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'B3, ', '', NULL, NULL, '2018-09-09 19:13:12', '2018-09-09 19:13:12', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('144', 'B9UZ0C6K', '6', 'P36RXK83', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'B3, ', '', NULL, NULL, '2018-09-09 19:13:13', '2018-09-09 19:13:13', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('145', 'BYTWO8HU', '6', 'P8EOUPIG', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A2, ', '', NULL, NULL, '2018-09-09 19:14:12', '2018-09-09 19:14:12', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('146', 'BLHLDLC9', '6', 'POEVRKI1', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A2, ', '', NULL, NULL, '2018-09-09 19:15:04', '2018-09-09 19:15:04', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('147', 'BZM8BTFZ', '6', 'PEID01WR', '1', 'austin', 'washington', 'Tea, Breakfast, Water, ', '800', '0', '1', '0', '0', '1', 'A2, ', '', NULL, NULL, '2018-09-09 19:17:23', '2018-09-09 19:17:23', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('148', 'BM4PPNGN', '6', 'PS80GZJI', '1', 'austin', 'us', NULL, '800', '0', '1', '0', '0', '1', 'B3, ', '', NULL, NULL, '2018-09-09 19:17:42', '2018-09-09 19:17:42', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('149', 'BH11830L', '6', 'PO6BFJIG', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A2, ', '', NULL, NULL, '2018-09-09 19:22:08', '2018-09-09 19:22:08', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('150', 'BSU7AODB', '6', 'P8T1GIWT', '1', 'austin', 'us', NULL, '800', '0', '1', '0', '0', '1', 'A2, ', '', NULL, NULL, '2018-09-09 19:35:25', '2018-09-09 19:35:25', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('151', 'B73DRASS', '6', 'PTOKJWVK', '1', 'austin', 'us', NULL, '800', '0', '1', '0', '0', '1', 'A2, ', '', NULL, NULL, '2018-09-09 19:36:58', '2018-09-09 19:36:58', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('152', 'BB3I5HXV', '6', 'PKTQKTBE', '1', 'austin', 'us', 'Tea, Water, ', '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-09-12 10:14:08', '2018-09-12 10:14:08', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('153', 'B4YUVGIH', '6', 'PC3TX7HK', '1', 'austin', 'washington', 'Tea, Breakfast, Water, ', '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-09-12 10:34:05', '2018-09-12 10:34:05', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('154', 'BPGOK13M', '6', 'PZPLMZLF', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A2, ', '', NULL, NULL, '2018-09-12 10:36:33', '2018-09-12 10:36:33', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('155', 'BYR51C49', '6', 'P7VD9JTW', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-09-12 10:42:40', '2018-09-12 10:42:40', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('156', 'B37WRE5D', '6', 'PZA38LWO', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-09-12 10:45:14', '2018-09-12 10:45:14', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('157', 'BP74GOH1', '6', 'P2C1CVTV', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-12 10:46:05', '2018-09-12 10:46:05', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('158', 'BRJNHTVB', '6', 'PGR7B9YZ', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-09-12 10:49:57', '2018-09-12 10:49:57', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('159', 'BZ8SYQBM', '6', 'P90DLC71', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-12 10:50:30', '2018-09-12 10:50:30', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('160', 'BHTBG26F', '6', 'PE5FM8RV', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-12 11:15:43', '2018-09-12 11:15:43', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('161', 'BVRDGWMJ', '6', 'PW21D2FM', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-12 11:16:11', '2018-09-12 11:16:11', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('162', 'BV0EX6VK', '6', 'P2GRO5IX', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-09-12 11:16:54', '2018-09-12 11:16:54', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('163', 'BTBEEFQQ', '6', 'PE2RPIB3', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-12 11:17:34', '2018-09-12 11:17:34', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('164', 'B6G9R9D6', '6', 'PH5KEMU4', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-12 11:18:54', '2018-09-12 11:18:54', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('165', 'B7XX3B8O', '6', 'PAYY5DUC', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-12 11:19:29', '2018-09-12 11:19:29', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('166', 'BPXH9HH5', '6', 'PWJ77XOI', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-12 11:20:06', '2018-09-12 11:20:06', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('167', 'BYOZ8T1R', '6', 'PVQA3XN3', '1', 'austin', 'us', NULL, '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-12 11:20:33', '2018-09-12 11:20:33', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('168', 'B5I563QY', '6', 'P8I8TZXZ', '1', 'austin', 'us', NULL, '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-12 11:21:03', '2018-09-12 11:21:03', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('169', 'B53PCEH0', '6', 'P7FDWIYA', '1', 'austin', 'us', NULL, '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-12 11:23:49', '2018-09-12 11:23:49', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('170', 'BBAUK7HJ', '6', 'P31WUAHA', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-09-12 11:25:12', '2018-09-12 11:25:12', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('171', 'BU9P9X5W', '6', 'PT7OIFGG', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-09-12 11:31:03', '2018-09-12 11:31:03', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('172', 'BE3LY9T7', '6', 'PZSJG1PX', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-12 11:37:52', '2018-09-12 11:37:52', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('173', 'B8PYJD6C', '6', 'PCJXUU17', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-09-12 11:42:47', '2018-09-12 11:42:47', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('174', 'BB8LJKNO', '6', 'P9BZ329I', '1', 'austin', 'washington', 'Breakfast, Water, ', '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-09-12 11:45:09', '2018-09-12 11:45:09', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('175', 'BNLFN0JJ', '6', 'P3BTHQN1', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-12 12:12:32', '2018-09-12 12:12:32', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('176', 'BVG5NBJ8', '6', 'PCVG7QSR', '1', 'austin', 'washington', 'Tea, Breakfast, Water, ', '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-09-12 12:16:04', '2018-09-12 12:16:04', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('177', 'BNTPRSY0', '6', 'PG3DZ5XS', '1', 'austin', 'washington', 'Tea, Breakfast, Water, ', '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-09-12 12:18:19', '2018-09-12 12:18:19', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('178', 'BJILYNBW', '6', 'PICCOLX7', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-09-12 12:20:49', '2018-09-12 12:20:49', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('179', 'BKRFCAH8', '6', 'PBXWZQ25', '1', 'austin', 'us', NULL, '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-09-12 12:25:06', '2018-09-12 12:25:06', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('180', 'B983Q0LH', '6', 'PQDSDTL9', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A2, ', '', NULL, NULL, '2018-09-12 12:31:06', '2018-09-12 12:31:06', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('181', 'BUESF1F1', '6', 'PJ447J2Z', '1', 'austin', 'washington', 'Tea, Breakfast, Water, ', '800', '0', '1', '0', '0', '1', 'A2, ', '', NULL, NULL, '2018-09-12 12:34:02', '2018-09-12 12:34:02', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('182', 'BGZGC3EX', '6', 'PFNPS77O', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A2, ', '', NULL, NULL, '2018-09-12 12:37:33', '2018-09-12 12:37:33', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('183', 'BFFD4CM0', '6', 'P2RTFMA0', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-09-12 12:43:14', '2018-09-12 12:43:14', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('184', 'BFNLMEMZ', '6', 'PQA8KUSY', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-09-12 12:44:51', '2018-09-12 12:44:51', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('185', 'BGWD0W0Y', '6', 'PXD80RNH', '1', 'austin', 'washington', 'Breakfast, Water, ', '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-12 12:51:09', '2018-09-12 12:51:09', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('186', 'BTYSH92J', '6', 'P97ZFITT', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-09-12 12:52:35', '2018-09-12 12:52:35', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('187', 'BNMJXKUR', '6', 'P4VOTQRU', '1', 'austin', 'washington', 'Tea, Breakfast, Water, ', '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-09-12 12:53:38', '2018-09-12 12:53:38', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('190', 'B8JRGYH7', '6', 'PPXPS3LG', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-12 13:15:14', '2018-09-12 13:15:14', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('191', 'B8BDIQF6', '6', 'P1RZC7GH', '1', 'us', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-12 15:51:01', '2018-09-12 15:51:01', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('192', 'BDNZSJQ9', '6', 'PP6WBW7Y', '1', 'austin', 'us', NULL, '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-12 15:51:58', '2018-09-12 15:51:58', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('193', 'BNNDSTQ8', '6', 'P72P7031', '1', 'us', 'washington', 'Breakfast, Water, ', '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-12 16:33:01', '2018-09-12 16:33:01', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('194', 'B0RV1QB2', '6', 'P4YVEWVN', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-12 16:33:41', '2018-09-12 16:33:41', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('195', 'B41RUMVG', '6', 'PKNMKYYN', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-12 16:37:45', '2018-09-12 16:37:45', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('196', 'B8Q5LLU1', '6', 'P9XY40A6', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-12 16:40:51', '2018-09-12 16:40:51', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('197', 'BGAFNYG1', '6', 'PCBBQDSY', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-12 16:47:47', '2018-09-12 16:47:47', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('198', 'BKZ7TE0Q', '6', 'PWI2JBPY', '1', 'us', 'washington', 'Tea, Breakfast, Water, ', '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-12 16:55:22', '2018-09-12 16:55:22', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('201', 'BYEKF2L1', '6', 'PCHFNK3N', '1', 'austin', 'washington', 'Breakfast, Water, ', '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-09-12 17:28:09', '2018-09-12 17:28:09', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('202', 'BYI1XWEV', '6', 'P8LOYM69', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-09-12 17:31:17', '2018-09-12 17:31:17', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('203', 'B5B5VRYA', '6', 'P6WK7Y8U', '1', 'us', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-09-12 17:32:57', '2018-09-12 17:32:57', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('204', 'BS1FCCNJ', '6', 'P6IMSEVG', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-09-12 17:33:49', '2018-09-12 17:33:49', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('205', 'BPPL3J9B', '6', 'PXI370KP', '1', 'austin', 'washington', 'Water, ', '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-09-12 17:36:09', '2018-09-12 17:36:09', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('207', 'BQ60KTD2', '6', 'POKTYKSO', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A2, ', '', NULL, NULL, '2018-09-12 17:39:19', '2018-09-12 17:39:19', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('208', 'BR4VGOGJ', '6', 'PSL21W7S', '1', 'austin', 'washington', 'Tea, Breakfast, Water, ', '800', '0', '1', '0', '0', '1', 'A2, ', '', NULL, NULL, '2018-09-12 17:46:31', '2018-09-12 17:46:31', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('209', 'BD15O969', '6', 'PI7MKU6R', '1', 'austin', 'washington', 'Tea, Breakfast, ', '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-12 17:48:29', '2018-09-12 17:48:29', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('210', 'BE0PBSFH', '6', 'PYL2FBAK', '1', 'austin', 'washington', 'Tea, Breakfast, ', '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-12 17:50:16', '2018-09-12 17:50:16', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('211', 'BKM8O6MV', '6', 'PUFQ8U4S', '1', 'us', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-12 17:53:19', '2018-09-12 17:53:19', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('212', 'BY2T1OWA', '6', 'PXG3A7NP', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-12 17:54:42', '2018-09-12 17:54:42', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('213', 'B55MRJYL', '6', 'PDCLIAGB', '1', 'us', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-12 17:55:40', '2018-09-12 17:55:40', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('214', 'B8MDNO7V', '6', 'PZQ5G7ML', '1', 'austin', 'washington', 'Breakfast, Water, ', '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-12 17:57:29', '2018-09-12 17:57:29', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('215', 'BTJPS3QD', '6', 'PKWFKPVA', '1', 'austin', 'washington', 'Breakfast, Water, ', '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-12 17:59:59', '2018-09-12 17:59:59', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('216', 'BU7O3NMS', '6', 'P8KQNIGJ', '1', 'us', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-12 18:27:01', '2018-09-12 18:27:01', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('217', 'BB0ZWWSI', '6', 'PGORC134', '1', 'austin', 'us', NULL, '800', '0', '1', '0', '0', '1', 'A2, ', '', NULL, NULL, '2018-09-12 18:32:02', '2018-09-12 18:32:02', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('218', 'BNU4LCWT', '6', 'P9NPZOHS', '1', 'austin', 'washington', 'Tea, Breakfast, ', '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-09-12 18:34:24', '2018-09-12 18:34:24', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('219', 'BNR1O8YD', '6', 'P3JEM6YD', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-09-12 18:39:33', '2018-09-12 18:39:33', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('220', 'BQRMK3F9', '6', 'P3BTHQN1', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-09-12 18:49:32', '2018-09-12 18:49:32', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('221', 'B03HT3K9', '6', 'P3BTHQN1', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-09-12 18:51:03', '2018-09-12 18:51:03', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('222', 'BN8GTKTY', '6', 'P3BTHQN1', '1', 'austin', 'washington', 'Breakfast, Water, ', '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-09-12 18:53:56', '2018-09-12 18:53:56', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('223', 'BKSOQ60K', '6', 'P3BTHQN1', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A2, ', '', NULL, NULL, '2018-09-12 18:58:25', '2018-09-12 18:58:25', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('224', 'BTD2I7MK', '6', 'P3BTHQN1', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-12 19:06:13', '2018-09-12 19:06:13', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('225', 'BI0DA3G6', '6', 'PC7T10J0', '1', 'austin', 'washington', 'Water, ', '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-09-12 19:09:50', '2018-09-12 19:09:50', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('226', 'BWR4KNYT', '6', 'PPTKT5MP', '1', 'austin', 'washington', 'Breakfast, Water, ', '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-12 19:14:03', '2018-09-12 19:14:03', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('228', 'BSFHZPV3', '6', 'PBAKE0PB', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-09-12 19:25:23', '2018-09-12 19:25:23', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('229', 'BAUK7HJZ', '6', 'P8NUAHAB', '1', 'austin', 'washington', 'Tea, Breakfast, Water, ', '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-09-13 10:05:05', '2018-09-13 10:05:05', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('230', 'BLC71Z8S', '6', 'PAOH190D', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-09-13 11:28:44', '2018-09-13 11:28:44', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('231', 'B1K0V5JD', '6', 'PRQD0LBN', '1', 'austin', 'us', NULL, '700', '0', '0', '1', '0', '1', 'A1, ', '', NULL, NULL, '2018-10-06 11:25:33', '2018-10-06 11:25:33', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('232', 'BO8NHS43', '6', 'P668WB6J', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A2, ', '', NULL, NULL, '2018-10-06 11:26:48', '2018-10-06 11:26:48', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('233', 'BWLO8MO8', '6', 'PZVOTCZX', '1', 'austin', 'washington', NULL, '700', '0', '0', '1', '0', '1', 'A1, ', '', NULL, NULL, '2018-10-06 11:41:10', '2018-10-06 11:41:10', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('234', 'B33BR4FX', '6', 'PJ6J9FH1', '1', 'austin', 'washington', NULL, '700', '0', '0', '1', '0', '1', 'A2, ', '', NULL, NULL, '2018-10-06 11:45:34', '2018-10-06 11:45:34', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('235', 'B1AB1EJX', '6', 'PQ696BAV', '1', 'austin', 'washington', NULL, '700', '0', '0', '1', '0', '1', 'A2, ', '', NULL, NULL, '2018-10-06 11:47:00', '2018-10-06 11:47:00', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('236', 'BO3CV0WZ', '6', 'PQ9Y74G4', '1', 'austin', 'washington', NULL, '700', '0', '0', '1', '0', '1', 'A1, ', '', NULL, NULL, '2018-10-06 11:48:08', '2018-10-06 11:48:08', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('237', 'BC92AZ7I', '6', 'PWA25TSI', '1', 'us', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-10-06 11:49:49', '2018-10-06 11:49:49', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('238', 'BRJAY8ZH', '6', 'P3U1W3R6', '1', 'austin', 'us', NULL, '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-10-06 11:50:52', '2018-10-06 11:50:52', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('239', 'B8TEPFG3', '6', 'P59WUSCG', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-10-06 11:53:37', '2018-10-06 11:53:37', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('240', 'BLJFNNPD', '6', 'P7A1UXB6', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-10-06 11:56:12', '2018-10-06 11:56:12', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('241', 'B3XN3YOZ', '6', 'P5GH5VQA', '1', 'austin', 'washington', NULL, '700', '0', '0', '1', '0', '1', 'A1, ', '', NULL, NULL, '2018-10-06 11:56:45', '2018-10-06 11:56:45', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('242', 'BTZXZ5I5', '6', 'P8T1R8I8', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-10-06 11:57:53', '2018-10-06 11:57:53', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('243', 'BRQFTF08', '6', 'PWWBQ2LI', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-10-06 12:00:24', '2018-10-06 12:00:24', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('244', 'BT3RTDUM', '6', 'PRJIPOP4', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-10-06 12:02:43', '2018-10-06 12:02:43', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('245', 'BVKJPGOQ', '6', 'PAV20EMW', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-10-06 12:04:02', '2018-10-06 12:04:02', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('246', 'B99PIKVA', '6', 'P3E43O09', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-10-06 12:07:22', '2018-10-06 12:07:22', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('247', 'B8NVY5X9', '6', 'PBTRHKOT', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-10-06 12:09:10', '2018-10-06 12:09:10', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('248', 'BWJ77XOI', '6', 'P6G9R9D6', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-10-06 12:10:23', '2018-10-06 12:10:23', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('249', 'BIXOAJMO', '6', 'PCW3FVLZ', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-10-06 12:13:14', '2018-10-06 12:13:14', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('250', 'BSTPFXWZ', '6', 'PY09YCE0', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-10-06 12:15:59', '2018-10-06 12:15:59', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('251', 'BWIYA53P', '6', 'P63QY7FD', '1', 'austin', 'washington', NULL, '700', '0', '0', '1', '0', '1', 'A1, ', '', NULL, NULL, '2018-10-06 12:17:54', '2018-10-06 12:17:54', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('252', 'B178PYJD', '6', 'PV7CJXUU', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-10-06 12:22:38', '2018-10-06 12:22:38', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('253', 'BVQA3XN3', '6', 'PPXH9HH5', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-10-06 12:25:08', '2018-10-06 12:25:08', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('254', 'BIFGGU9P', '6', 'PCEH0T7O', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-10-06 12:31:40', '2018-10-06 12:31:40', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('255', 'BCTNC0FJ', '6', 'PYY0R2HI', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-10-06 12:41:32', '2018-10-06 12:41:32', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('256', 'BLLOUNQ1', '6', 'P60EBON3', '1', 'austin', 'washington', NULL, '700', '0', '0', '1', '0', '1', 'A1, ', '', NULL, NULL, '2018-10-06 12:47:57', '2018-10-06 12:47:57', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('257', 'B9IB8LJK', '6', 'P6C9BZ32', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-10-06 12:51:15', '2018-10-06 12:51:15', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('258', 'BWYUKLBW', '6', 'P9XKRCFB', '1', 'austin', 'washington', NULL, '700', '0', '0', '1', '0', '1', 'A1, ', '', NULL, NULL, '2018-10-06 12:54:08', '2018-10-06 12:54:08', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('259', 'BVUI8JMR', '6', 'PFND4UK6', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-10-06 12:55:51', '2018-10-06 12:55:51', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('260', 'B8I8TZXZ', '6', 'PYOZ8T1R', '1', 'austin', 'washington', NULL, '700', '0', '0', '1', '0', '1', 'A1, ', '', NULL, NULL, '2018-10-06 12:57:14', '2018-10-06 12:57:14', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('261', 'BGFQM0UW', '6', 'PK7XYHSV', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-10-06 12:59:47', '2018-10-06 12:59:47', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('262', 'BS77OGZG', '6', 'P9X5WFNP', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-10-06 13:05:12', '2018-10-06 13:05:12', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('263', 'B02DQ9T1', '6', 'PC3EX3KY', '1', 'austin', 'washington', NULL, '700', '0', '0', '1', '0', '1', 'A1, ', '', NULL, NULL, '2018-10-06 14:22:33', '2018-10-06 14:22:33', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('264', 'BODDPSL3', '6', 'P8J3URDG', '1', 'austin', 'us', NULL, '700', '0', '0', '1', '0', '1', 'A1, ', '', NULL, NULL, '2018-10-06 14:28:20', '2018-10-06 14:28:20', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('265', 'B78ZKA67', '6', 'PMSBBRG9', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-10-06 14:34:15', '2018-10-06 14:34:15', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('266', 'BZDVA8KU', '6', 'PD0FNZZW', '1', 'austin', 'us', NULL, '700', '0', '0', '1', '0', '1', 'A2, ', '', NULL, NULL, '2018-10-06 14:35:01', '2018-10-06 14:35:01', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('267', 'BMZ97ZFI', '6', 'PSYFNLME', '1', 'austin', 'us', NULL, '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-10-06 14:40:02', '2018-10-06 14:40:02', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('268', 'B4G6NODM', '6', 'P3X0OX9Q', '1', 'austin', 'us', NULL, '700', '0', '0', '1', '0', '1', 'A1, ', '', NULL, NULL, '2018-10-06 14:42:34', '2018-10-06 14:42:34', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('269', 'BBXNKF08', '6', 'PXRLI680', '1', 'austin', 'us', NULL, '700', '0', '0', '1', '0', '1', 'A2, ', '', NULL, NULL, '2018-10-06 14:44:04', '2018-10-06 14:44:04', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('270', 'BOLURZC7', '6', 'P3BTHQN1', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-10-06 14:49:25', '2018-10-06 14:49:25', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('271', 'B7FDWIYA', '6', 'P5I563QY', '1', 'austin', 'us', NULL, '700', '0', '0', '1', '0', '1', 'A1, ', '', NULL, NULL, '2018-10-06 16:51:41', '2018-10-06 16:51:41', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('272', 'BFNPS77O', '6', 'PU9P9X5W', '1', 'us', 'washington', 'Breakfast, Water, ', '3040', '0', '2', '2', '0', '4', 'C2, C4, D3, E4, ', '', NULL, NULL, '2018-10-06 16:52:51', '2018-10-06 16:52:51', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('273', 'B3KY02DQ', '6', 'PGZGC3EX', '1', 'austin', 'washington', NULL, '1500', '0', '1', '1', '0', '2', 'A1, A2, ', '', NULL, NULL, '2018-10-06 16:55:15', '2018-10-06 16:55:15', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('274', 'BF6P6WBW', '6', 'PDH8BDIQ', '1', 'austin', 'us', NULL, '1500', '0', '1', '1', '0', '2', 'A1, A2, ', '', NULL, NULL, '2018-10-06 16:56:52', '2018-10-06 16:56:52', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('275', 'BQ94YVEW', '6', 'P7YDNZSJ', '1', 'austin', 'washington', 'Tea, Breakfast, Water, ', '1500', '100', '1', '1', '0', '2', 'A1, A2, ', '54321', NULL, NULL, '2018-10-06 17:04:29', '2018-10-06 17:04:29', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('276', 'BF2ZUSPA', '6', 'PD28QPHA', '1', 'austin', 'washington', 'Tea, Breakfast, ', '700', '0', '0', '1', '0', '1', 'A1, ', '', NULL, NULL, '2018-10-18 17:13:41', '2018-10-18 17:13:41', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('277', 'BN1K0V5J', '6', 'PM4QD0LB', '1', 'austin', 'us', NULL, '700', '0', '0', '1', '0', '1', 'A3, ', '', NULL, NULL, '2018-10-18 17:19:10', '2018-10-18 17:19:10', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('278', 'BSYGAFNY', '6', 'PU8CBBQD', '1', 'us', 'us', NULL, '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-10-18 17:23:00', '2018-10-18 17:23:00', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('279', 'B3NYEKF2', '6', 'PG1FHFNK', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-10-18 17:26:07', '2018-10-18 17:26:07', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('280', 'BXWLO8MO', '6', 'PDZVOTCZ', '1', 'us', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A4, ', '', NULL, NULL, '2018-10-18 17:27:20', '2018-10-18 17:27:20', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('281', 'B133BR4F', '6', 'P8J6J9FH', '1', 'austin', 'washington', NULL, '700', '0', '0', '1', '0', '1', 'A2, ', '', NULL, NULL, '2018-10-18 17:28:59', '2018-10-18 17:28:59', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('282', 'BIC92AZ7', '6', 'PXWA25TS', '1', 'austin', 'washington', NULL, '700', '0', '0', '1', '0', '1', 'A2, ', '', NULL, NULL, '2018-10-18 17:31:58', '2018-10-18 17:31:58', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('283', 'BS3NRTZA', '6', 'PACY106J', '1', 'austin', 'washington', NULL, '700', '0', '0', '1', '0', '1', 'A4, ', '', NULL, NULL, '2018-10-18 17:32:58', '2018-10-18 17:32:58', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('284', 'BQ8U4SKM', '6', 'PLVRYAUF', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-10-18 17:52:22', '2018-10-18 17:52:22', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('285', 'B69YI1XW', '6', 'PL18LOYM', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-10-18 17:54:04', '2018-10-18 17:54:04', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('286', 'BLIAGB55', '6', 'P8O6MVDC', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A3, ', '', NULL, NULL, '2018-10-18 17:56:19', '2018-10-18 17:56:19', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('287', 'B8U5B5VR', '6', 'PEV6WK7Y', '1', 'austin', 'washington', NULL, '800', '0', '1', '0', '0', '1', 'A1, ', '', NULL, NULL, '2018-10-18 17:59:36', '2018-10-18 17:59:36', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('288', 'BRPGMMRL', '5', 'PR4KNYTQ', '1', 'austin', 'washington', NULL, '400', '0', '0', '1', '0', '1', 'A1, ', '', NULL, NULL, '2018-10-21 09:45:59', '2018-10-21 09:45:59', '0');


#
# TABLE STRUCTURE FOR: ws_offer
#

DROP TABLE IF EXISTS `ws_offer`;

CREATE TABLE `ws_offer` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `position` tinyint(4) DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO `ws_offer` (`id`, `title`, `position`, `image`) VALUES ('1', 'Hurry Up!!', '1', 'application/modules/website/assets/images/offer/c2ff3acdf7a4ede238532af1a85e13e7.jpg');
INSERT INTO `ws_offer` (`id`, `title`, `position`, `image`) VALUES ('2', 'Second Offer', '2', 'application/modules/website/assets/images/offer/9abdf3c800b1a2f782cc5c1ae8bd3421.jpg');
INSERT INTO `ws_offer` (`id`, `title`, `position`, `image`) VALUES ('3', 'Third offer', '3', 'application/modules/website/assets/images/offer/804d03909157ed6b4ad6e479328fbc7e.jpg');
INSERT INTO `ws_offer` (`id`, `title`, `position`, `image`) VALUES ('4', 'Forth Offer', '4', 'application/modules/website/assets/images/offer/0f8b154da2128d6da7fe024c83cbbf12.jpg');
INSERT INTO `ws_offer` (`id`, `title`, `position`, `image`) VALUES ('5', 'Fifth Offer', '5', 'application/modules/website/assets/images/offer/be9b8ff243b9b4178b37011051b17d39.png');
INSERT INTO `ws_offer` (`id`, `title`, `position`, `image`) VALUES ('6', 'Sixth Offer', '6', 'application/modules/website/assets/images/offer/1f6e0f2b592dd42fb0141f7e0b8aea19.png');


#
# TABLE STRUCTURE FOR: ws_payments
#

DROP TABLE IF EXISTS `ws_payments`;

CREATE TABLE `ws_payments` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `txn_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_gross` float(10,2) NOT NULL,
  `currency_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `payer_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: ws_setting
#

DROP TABLE IF EXISTS `ws_setting`;

CREATE TABLE `ws_setting` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
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
  `google_map` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `ws_setting` (`id`, `title`, `slogan`, `address`, `email`, `phone`, `favicon`, `logo`, `status`, `timezone`, `about`, `description`, `payment_type`, `paypal_email`, `bank_commission`, `currency`, `google_map`) VALUES ('1', 'Demo Application', 'Demo Slogan', '123, demo street, demo-city, 0000', 'business@test.com', '0123456789', 'application/modules/website/assets/images/icons/6e5d2bcd76b2df41a683ab0077d6aa5f.jpg', 'application/modules/website/assets/images/icons/8e0bb7fc82e9fe8f88c5639465b78ba2.png', '1', 'Asia/Dhaka', '', '', 'enable', 'business@test.com', '3', 'USD', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3651.7724407117266!2d90.38595131408418!3d23.75549289450067!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b8a4136c4b61%3A0x19549f5462616f04!2sBDTASK!5e0!3m2!1sen!2sbd!4v1531724548584\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>');


