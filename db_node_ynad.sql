-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 24, 2018 at 10:54 PM
-- Server version: 5.6.28
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `db_node_ynad`
--

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `idlocation` int(11) NOT NULL,
  `country` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`idlocation`, `country`, `city`) VALUES
(1, 'Denmark', 'Copenhagen'),
(2, 'Iceland', 'Reykjavík');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `idmedia` int(11) NOT NULL,
  `media` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`idmedia`, `media`) VALUES
(1, 'Drawing'),
(2, 'Painting'),
(3, 'Photography'),
(4, 'Sculpture'),
(5, 'Video'),
(6, 'Print'),
(7, 'Digital'),
(8, 'Interior \r\n'),
(9, 'Packaging'),
(10, 'Textile'),
(11, 'Literature'),
(12, 'Ceramics'),
(13, 'Performing'),
(14, 'Architecture'),
(15, 'Mixed Media');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `idmessages` int(11) NOT NULL,
  `thread_idthread` int(11) NOT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pieces`
--

CREATE TABLE `pieces` (
  `idpieces` int(11) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `material` varchar(45) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `size` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `status_idstatus` int(11) NOT NULL,
  `year_idyear` int(11) NOT NULL,
  `piece_image` varchar(255) DEFAULT NULL,
  `users_idusers` int(11) NOT NULL,
  `media_idmedia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pieces`
--

INSERT INTO `pieces` (`idpieces`, `title`, `material`, `description`, `size`, `price`, `status_idstatus`, `year_idyear`, `piece_image`, `users_idusers`, `media_idmedia`) VALUES
(15, 'try', 'asdf', 'asdf', 'asdf', 'asdf', 1, 1, 'asdf', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `idroles` int(11) NOT NULL,
  `role` int(11) DEFAULT NULL,
  `role_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`idroles`, `role`, `role_name`) VALUES
(1, 1, 'Admin'),
(2, 0, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`session_id`, `expires`, `data`) VALUES
('-_hx9MSwAP50s_cI5q3GUZa_A8FhU2j_', 1527280522, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"passport":{"user":68}}'),
('1eg2WORgkgufOIk6Fw95355xvza0Mng3', 1527195997, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"passport":{"user":63}}'),
('1tSTNtdlf3qv7vvCq73OCE_-aZ5hfvOC', 1527195722, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"passport":{"user":63}}'),
('3OB1_TkbHvu1daDIFryXDExfdtlzlR1y', 1527262738, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"passport":{"user":63}}'),
('4ZzoC8VeOZJAT6bh9zHh7v4keL5poSdj', 1527241709, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"passport":{"user":63}}'),
('6LnvdhVm9uA9EE6qSB7rL7NcaxA3Edl4', 1527257891, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"passport":{"user":63}}'),
('6ng13H2S1m3Mylib_IHc7lXRNDcxS5Ps', 1527246026, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"passport":{"user":63}}'),
('8DVHlbnSmoBbhrGut-LCZf1-JCCPtGB-', 1527196445, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"passport":{"user":63}}'),
('9n2fLj1OfnmbvLWrpe6m0SMJ09HHebxm', 1527262988, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"passport":{"user":63}}'),
('AMcMM_ZeTI4OryCEqr4xUnf23kSrxxz_', 1527257801, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"passport":{"user":63}}'),
('BoeEBip5TEsBcuh9Lq_PhabDpgDbSZHH', 1527196792, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"passport":{"user":63}}'),
('FHtFKCX2YYdLQ87nlsT_EpDpGXQ5LaFN', 1527275115, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"passport":{"user":68}}'),
('Gi2A7l1P2qQ0j2ItTr5qs-Or-fO7uda4', 1527246074, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"passport":{"user":63}}'),
('HqMAWIIjVb91C16bsoodEWLQ2V0EyfU2', 1527247251, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"passport":{"user":63}}'),
('JPedO9kpk7UHfGTOCdvuO866wUJhYkcy', 1527247090, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"passport":{"user":63}}'),
('KX2OjrthSb30sQFrmkrrVitMn-CpH8n9', 1527242814, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"passport":{"user":63}}'),
('Ld2s7nEn-nM9cYyUIheWYNtCMZcFx8OB', 1527255760, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"passport":{"user":63}}'),
('MQk-anu2ejVo5X4ChaTsu9GbYyh10HS1', 1527194970, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"passport":{"user":63}}'),
('Ng6D6jK_pPAszp9UrF5YHNDOsCW0KFj8', 1527254822, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"passport":{"user":63}}'),
('Wts5sBUBtV4aQIuO64W6FQ2qekICdqKE', 1527239608, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"passport":{"user":63}}'),
('Xh6JDUmCBMy6OSBe8vkQ49PYdLT_C7xm', 1527250965, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"passport":{"user":63}}'),
('ZKnZk18AhXp5R2yzwBmTlV4KqRE1Np45', 1527195737, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"passport":{"user":63}}'),
('a8q57TCep4oGgdNXItR12O3bGBfMlCfj', 1527196567, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"passport":{"user":63}}'),
('dKxK36Uga1puh_n0DS1Cw_SOJggH1huf', 1527195626, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"passport":{"user":63}}'),
('e164b1s5mO8cRd0qZ-s0v-Qwp2BVYmqx', 1527241872, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"passport":{"user":63}}'),
('fvu9y_HFoDvVRDep-CZ26gd-c7dEdNSp', 1527257642, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"passport":{"user":63}}'),
('hRcFtLv0mCpWYovmUk9k25QlOg-KkQE8', 1527259036, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"passport":{"user":63}}'),
('j_8GKdSh5dDeWPkWSXrqh6akCkrpCcw9', 1527246592, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"passport":{"user":63}}'),
('k-qAdhYIi-Fgd-uIK1d6sJIrpPjADZU7', 1527256457, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"passport":{"user":63}}'),
('mzZcrj_GZY-u4r4NpOVCamNCuTr0AiUM', 1527262656, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"passport":{"user":63}}'),
('nhMxbmI7fuW6n6RMsfxvacZsE_LUyklF', 1527259105, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"passport":{"user":63}}'),
('rp0ugg-wBqB8opLS4hFZDc46vIXv-KAM', 1527195655, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"passport":{"user":63}}'),
('rpFTm0T-RUjmaDMneaUFzojMruofHsxh', 1527259165, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"passport":{"user":63}}'),
('vh_hmnuS8zKBoJuIULpZH6IhQm4nUtPt', 1527241500, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"passport":{"user":63}}'),
('w9Y3K32L3F2x8OC1hObUGVTE_WCv8pZa', 1527258951, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"passport":{"user":63}}'),
('zxSZWml2BURSOFFIimpXMKMW79O5nNI5', 1527263647, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"passport":{"user":63}}');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `idstatus` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `status_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`idstatus`, `status`, `status_name`) VALUES
(1, 0, 'Pending'),
(2, 1, 'Approved'),
(3, 2, 'Denied');

-- --------------------------------------------------------

--
-- Table structure for table `thread`
--

CREATE TABLE `thread` (
  `idthread` int(11) NOT NULL,
  `user_1` varchar(45) DEFAULT NULL,
  `user_2` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `idusers` int(11) NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `profession` varchar(45) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `phone_number` varchar(12) DEFAULT NULL,
  `instagram_url` varchar(80) DEFAULT NULL,
  `facebook_url` varchar(80) DEFAULT NULL,
  `twitter_url` varchar(80) DEFAULT NULL,
  `roles_idroles` int(11) NOT NULL,
  `location_idlocation` int(11) NOT NULL,
  `thread_idthread` int(11) DEFAULT NULL,
  `secretToken` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`idusers`, `firstname`, `lastname`, `profession`, `description`, `email`, `password`, `profile_image`, `phone_number`, `instagram_url`, `facebook_url`, `twitter_url`, `roles_idroles`, `location_idlocation`, `thread_idthread`, `secretToken`, `active`) VALUES
(1, 'Katrín', 'Sigurdardóttir', 'Front End Developer', 'Experienced Web Developer with a demonstrated history of working in the web development industry. Skilled in Github, User Experience, PHP, WordPress and more. Strong engineering professional graduated from Vefskólinn.', 'katrinaduasig@gmail.com', '12345', 'https://scontent-ams3-1.xx.fbcdn.net/v/t31.0-8/21762568_1556650337727451_5282452316665504511_o.jpg?_nc_cat=0&oh=e0cbb2c665a6e877ac58c184cabd73c9&oe=5B95071F', '60548560', 'https://www.instagram.com/katrinduasig/', 'https://www.facebook.com/katrinduasig', NULL, 2, 1, NULL, '', 1),
(63, 'Katrin Dua', 'Sigurdardottir', 'Front End Developer', 'Experienced Web Developer with a demonstrated history of working in the web development industry. Skilled in Github, User Experience, PHP, WordPress and more. Strong engineering professional graduated from Vefskólinn.', 'katrinduasig@gmail.com', '$2b$10$aGR/zVpjwwdIEo8/UWr8Y.ShMSDbh1ZMYaCTOm', 'https://scontent-arn2-1.xx.fbcdn.net/v/t31.0-8/21762568_1556650337727451_5282452316665504511_o.jpg?_nc_cat=0&oh=e0cbb2c665a6e877ac58c184cabd73c9&oe=5B95071F', '60548560', 'https://www.instagram.com/katrinduasig/', 'https://www.facebook.com/katrinduasig', '', 2, 1, NULL, 'QoEOJCbNHOovAxRl7wfm', 1),
(64, 'Anne Mai', 'Særker-Sørensen', 'Web Developer', 'Im a web Designer and everything conserning beautiful art', 'annemai@gmail.com', '$2b$10$kfxYjCTJeQISbwYos46mCupJuRs4G1CxjSuuZ6', 'https://scontent-arn2-1.xx.fbcdn.net/v/t31.0-8/18156234_10156189333629698_7999203246869048154_o.jpg?_nc_cat=0&oh=f690391bc7e415bbed1d4a56648abbda&oe=5B803B0F', '50505050', 'https://www.instagram.com/annesaerker/', 'https://www.facebook.com/annesaerker', '', 2, 1, NULL, 'BFmLK44y8Pxd3wZZ1KwA', 1),
(65, 'Birna', 'Thorkelsdottir', 'Web Designer', 'I\'m a Web Designer that loves everything about web solutions. The flow is what maked a good webpage live on', 'birna@gmail.com', '$2b$10$5ZEXZ9PNILtprRKx0wuryOJ5H/Ju.7Mi1f6OGu', 'https://scontent-arn2-1.xx.fbcdn.net/v/t31.0-8/20247591_10213630206532860_4843030483050934634_o.jpg?_nc_cat=0&oh=8e0a0b9f4ea5bf62b213768ab8684b7b&oe=5B9719E6', '60606060', 'https://www.instagram.com/thorkelsdottir/', 'https://www.facebook.com/birnabryndis.thorkelsdottir', '', 2, 1, NULL, 'DhBTCd8F4snZ1WxA8pxR', 0),
(67, 'Jón', 'Unnarsson', 'Coder', 'Text about Jón Tryggvi', 'katrinduasig@gmail.com', '$2b$10$6xAdc4Xd8ByXDhclRb8bNu6GHMfvnCfY0wBYM5', 'https://scontent-arn2-1.xx.fbcdn.net/v/t1.0-9/20992789_10155640014054812_7039820245397494916_n.jpg?_nc_cat=0&oh=5d435b95277882fff4ecc4f2fa89e519&oe=5B94A936', '40404040', 'https://www.instagram.com/jon_tryggvi/', 'https://www.facebook.com/search/top/?q=j%C3%B3n%20tryggvi%20unnarsson', '', 2, 1, NULL, 'iUc3Lbr7dimhRp1ft86j', 1),
(68, 'Birna', 'Thorkelsdottir', 'Web Designer & Developer', 'My name is Birna Thorkelsdottir and I\'m a Graphic Designer, Web Designer & Developer based in Copenhagen.\r\nI received my BA in Graphic Design from The Iceland Academy of Arts in 2007. I studied Web Development at The Technical School in Reykjavik and finished a two-year program in 2017. I have just moved to Copenhagen to finish my studies at KEA - Copenhagen School of Design and Technology. \r\nI am passionate about my art which combines my love for design, photography, style, branding, advertising trends & solutions.', 'thorkelsdottir@gmail.com', '$2b$10$FqyO9uV.ZcaTfEwg/O3mVuzifKB.0.Ip2tO8cd', 'http://thorkelsdottir.com/CV/images/birna2017e.jpg', '93845259', 'https://www.instagram.com/birnabryndis/', 'https://www.facebook.com/birnabryndis.thorkelsdottir?ref=bookmarks', 'https://www.linkedin.com/in/thorkelsdottir/', 2, 1, NULL, 'zoSkAxpogRhJ2mlNymlu', 1);

-- --------------------------------------------------------

--
-- Table structure for table `year`
--

CREATE TABLE `year` (
  `idyear` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `year`
--

INSERT INTO `year` (`idyear`, `year`) VALUES
(1, 2000),
(2, 2001),
(3, 2002),
(4, 2003),
(5, 2004),
(6, 2005),
(7, 2006),
(8, 2007),
(9, 2008),
(10, 2009),
(11, 2010),
(12, 2011),
(13, 2012),
(14, 2013),
(15, 2014),
(16, 2015),
(17, 2016),
(18, 2017),
(19, 2018);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`idlocation`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`idmedia`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`idmessages`),
  ADD KEY `fk_messages_thread1_idx` (`thread_idthread`);

--
-- Indexes for table `pieces`
--
ALTER TABLE `pieces`
  ADD PRIMARY KEY (`idpieces`),
  ADD KEY `fk_pieces_status1_idx` (`status_idstatus`),
  ADD KEY `fk_pieces_year1_idx` (`year_idyear`),
  ADD KEY `fk_pieces_users1_idx` (`users_idusers`),
  ADD KEY `fk_pieces_media1_idx` (`media_idmedia`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`idroles`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`idstatus`);

--
-- Indexes for table `thread`
--
ALTER TABLE `thread`
  ADD PRIMARY KEY (`idthread`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idusers`,`email`),
  ADD KEY `fk_users_roles1_idx` (`roles_idroles`),
  ADD KEY `fk_users_location1_idx` (`location_idlocation`),
  ADD KEY `fk_users_thread1_idx` (`thread_idthread`);

--
-- Indexes for table `year`
--
ALTER TABLE `year`
  ADD PRIMARY KEY (`idyear`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `idlocation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `idmedia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `idmessages` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pieces`
--
ALTER TABLE `pieces`
  MODIFY `idpieces` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `idroles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `idstatus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `thread`
--
ALTER TABLE `thread`
  MODIFY `idthread` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `idusers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `year`
--
ALTER TABLE `year`
  MODIFY `idyear` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `fk_messages_thread1` FOREIGN KEY (`thread_idthread`) REFERENCES `thread` (`idthread`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pieces`
--
ALTER TABLE `pieces`
  ADD CONSTRAINT `fk_pieces_media1` FOREIGN KEY (`media_idmedia`) REFERENCES `media` (`idmedia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pieces_status1` FOREIGN KEY (`status_idstatus`) REFERENCES `status` (`idstatus`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pieces_users1` FOREIGN KEY (`users_idusers`) REFERENCES `users` (`idusers`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pieces_year1` FOREIGN KEY (`year_idyear`) REFERENCES `year` (`idyear`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_location1` FOREIGN KEY (`location_idlocation`) REFERENCES `location` (`idlocation`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_roles1` FOREIGN KEY (`roles_idroles`) REFERENCES `roles` (`idroles`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_thread1` FOREIGN KEY (`thread_idthread`) REFERENCES `thread` (`idthread`) ON DELETE NO ACTION ON UPDATE NO ACTION;
