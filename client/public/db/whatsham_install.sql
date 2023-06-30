-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2023 at 03:24 PM
-- Server version: 10.6.12-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u687661449_wham2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `role` varchar(5) NOT NULL DEFAULT 'admin',
  `email` varchar(999) DEFAULT NULL,
  `password` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `uid`, `role`, `email`, `password`, `createdAt`) VALUES
(1, 'AcZd9OwIw0BCKmjZj9JxpNCRUp5hK', 'admin', 'admin@admin.com', '$2b$10$OUmfMxfNYQOw4yGtYWzQV./vpMHKYDXzkn6q2FK58hO8uzYuqdFcq', '2023-05-01 07:48:22');

-- --------------------------------------------------------

--
-- Table structure for table `bots`
--

CREATE TABLE `bots` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `active` int(1) NOT NULL DEFAULT 1,
  `client_id` varchar(999) DEFAULT NULL,
  `reply_type` varchar(999) DEFAULT NULL,
  `reply_choice` varchar(999) DEFAULT NULL,
  `keyword` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `enable_typing` int(1) NOT NULL DEFAULT 1,
  `reaction` varchar(999) DEFAULT NULL,
  `comment` varchar(999) DEFAULT NULL,
  `excluding_phonebook` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaign`
--

CREATE TABLE `campaign` (
  `id` int(11) NOT NULL,
  `campaign_id` varchar(999) DEFAULT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `name` varchar(999) DEFAULT NULL,
  `templet_id` varchar(999) DEFAULT NULL,
  `phonebook_name` varchar(999) DEFAULT NULL,
  `status` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `que` longtext DEFAULT NULL,
  `ans` longtext DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `que`, `ans`, `createdAt`) VALUES
(2, 'What is a WhatsApp marketing website?', 'Some benefits of using a WhatsApp marketing website include\n\nWide reach: WhatsApp has billions of active users worldwide, providing businesses with an extensive audience for their marketing campaigns.\nDirect communication: It enables direct and instant communication with customers, allowing businesses to provide personalized and timely support.\nMultimedia messaging: WhatsApp supports various media types like text, images, videos, and documents, enhancing the marketing experience and enabling businesses to showcase products or services more effectively.\nAutomation and scheduling: Many WhatsApp marketing websites offer automation features to schedule messages, send automated replies, and streamline communication workflows.\nAnalytics and insights: These platforms often provide analytics tools to track campaign performance, measure engagement, and gather valuable insights for future marketing strategies.', '2023-05-09 17:19:48'),
(3, 'What features can I expect from a WhatsApp marketing website?', 'Features may vary depending on the specific platform, but common features of a WhatsApp marketing website include', '2023-05-09 17:20:02'),
(4, 'How can businesses use a WhatsApp marketing website effectively?', 'To use a WhatsApp marketing website effectively, businesses can:\n\nBuild a relevant and targeted contact list by encouraging customers to opt-in to receive WhatsApp messages.\nCreate engaging and valuable content to capture the attention of your audience.\nPersonalize messages and tailor them to the specific interests or needs of different customer segments.\nUse automation features to schedule messages, send timely reminders, or follow up with customers.\nMonitor campaign performance using analytics and adjust strategies accordingly.\nOffer customer support and address inquiries promptly through WhatsApp.\nRespect user privacy and adhere to applicable laws and regulations regarding data protection and marketing practices.', '2023-05-09 17:20:19'),
(5, 'Are there any limitations or restrictions when using WhatsApp for marketing?', 'Yes, there are certain limitations and restrictions to be aware of when using WhatsApp for marketing:\n\nWhatsApp Business API: To use WhatsApp for marketing at scale, businesses need to apply for and be approved for the WhatsApp Business API. This process may involve certain requirements, fees, and compliance obligations.\nConsent-based messaging: Businesses must obtain proper consent from users before sending them marketing messages on WhatsApp.\nMessage limitations: WhatsApp imposes certain limits on the number of messages that can be sent within a specific time period to prevent spamming.\nMultimedia file sizes: There are size restrictions on media files, such as images and videos, that can be shared through WhatsApp.\nOpt-out options: Users should have the ability to opt-out or unsubscribe from receiving marketing messages on WhatsApp.\nPrivacy and data protection: Businesses must handle customer data responsibly and comply with privacy laws and regulations.', '2023-05-09 17:20:36');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `title` varchar(999) DEFAULT NULL,
  `des` longtext DEFAULT NULL,
  `image` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `title`, `des`, `image`, `createdAt`) VALUES
(2, 'Bulk WhatsApp', 'Send bulk whatsapp with random delay between each message', '187461683644666001icons8-whatsapp-128.png', '2023-05-09 15:04:26'),
(3, 'Action Buttons', 'Send WhatsApp using clickable buttons with link, phone number and quick reply', '986331683645418074icons8-natural-user-interface-2-96.png', '2023-05-09 15:16:58'),
(4, 'Schedule Message', 'Schedule you campaigns for later', '660141683645496442icons8-clock-96.png', '2023-05-09 15:18:17'),
(5, 'Multiple Whatsapp', 'Add multiple WhatsApp accounts in one account to use them together ', '614191683645600374icons8-clock-96.png', '2023-05-09 15:20:01'),
(6, 'Messages Logs', 'Check sent messages logs', '817431683645653595icons8-time-machine-96.png', '2023-05-09 15:20:54'),
(7, 'Multiple Phonebooks', 'Add multiple phone numbers category-wise.', '942821683645710697icons8-contacts-96.png', '2023-05-09 15:21:51'),
(8, 'WhatsApp Chatbot', 'Set your auto-reply WhatsApp chatbot with reactions to messages and you can choose to whom not to send by bot', '879581683645806175icons8-chatbot-96.png', '2023-05-09 15:23:26'),
(9, 'API Access', 'Integrate WhatsHam with any of your project using API', '727961683645863772icons8-rest-api-96.png', '2023-05-09 15:24:24'),
(10, 'Scrap data', 'Scrap the data from almost any website like phone number email other info.', '559021683645932096icons8-find-user-male-96.png', '2023-05-09 15:25:32'),
(11, 'Multiple Plans', 'Multiple plans according to your needs', '990421683645990048icons8-shopping-cart-96.png', '2023-05-09 15:26:30'),
(12, 'Custom Support', 'Send your queries direct to the admin', '251261683646130964icons8-customer-support-96.png', '2023-05-09 15:28:51');

-- --------------------------------------------------------

--
-- Table structure for table `instance`
--

CREATE TABLE `instance` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `client_id` varchar(999) DEFAULT NULL,
  `qr` varchar(999) DEFAULT NULL,
  `name` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `mobile` varchar(999) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `message_type` varchar(999) DEFAULT NULL,
  `send_type` varchar(999) DEFAULT NULL,
  `app_name` varchar(999) DEFAULT NULL,
  `campaign_name` varchar(999) DEFAULT NULL,
  `campaign_id` varchar(999) DEFAULT NULL,
  `campaign_status` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `payment_mode` varchar(999) DEFAULT NULL,
  `amount` varchar(999) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `slug` varchar(999) DEFAULT NULL,
  `title` varchar(999) DEFAULT NULL,
  `meta` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(11) NOT NULL,
  `active` int(1) NOT NULL DEFAULT 1,
  `code` varchar(999) DEFAULT NULL,
  `payment_id` longtext DEFAULT NULL,
  `payment_keys` longtext DEFAULT NULL,
  `name` varchar(999) DEFAULT NULL,
  `other` varchar(999) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `active`, `code`, `payment_id`, `payment_keys`, `name`, `other`) VALUES
(1, 0, 'paypal', NULL, NULL, 'Paypal', NULL),
(2, 0, 'paystack', NULL, NULL, 'Paystack', NULL),
(3, 0, 'razorpay', NULL, NULL, 'Razorpay', NULL),
(4, 0, 'zarnipal', NULL, NULL, 'Zarnipal', NULL),
(5, 0, 'instamojo', NULL, NULL, 'Instamojo', NULL),
(6, 0, 'offline', NULL, NULL, 'Offline', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `phonebook`
--

CREATE TABLE `phonebook` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `name` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phonebook_contacts`
--

CREATE TABLE `phonebook_contacts` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `name` varchar(999) DEFAULT NULL,
  `phonebook_name` varchar(999) DEFAULT NULL,
  `mobile` varchar(999) DEFAULT NULL,
  `var_one` varchar(999) DEFAULT NULL,
  `var_two` varchar(999) DEFAULT NULL,
  `var_three` varchar(999) DEFAULT NULL,
  `var_four` varchar(999) DEFAULT NULL,
  `var_five` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ping`
--

CREATE TABLE `ping` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `user_msg` longtext DEFAULT NULL,
  `admin_reply` longtext DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `id` int(11) NOT NULL,
  `name` varchar(999) DEFAULT NULL,
  `instance` bigint(20) DEFAULT NULL,
  `price` bigint(20) DEFAULT 0,
  `msglimit` bigint(20) DEFAULT NULL,
  `contactlimit` bigint(20) DEFAULT NULL,
  `templetlimit` bigint(20) DEFAULT NULL,
  `allowapi` int(1) DEFAULT 0,
  `allowchatbot` int(1) DEFAULT 0,
  `allowbulkmsg` int(1) DEFAULT 0,
  `allowschedulemsg` int(1) DEFAULT 0,
  `allow_data_extract` int(1) NOT NULL DEFAULT 0,
  `allow_multi_instance` int(1) NOT NULL DEFAULT 0,
  `planexpire` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scrap_campaign`
--

CREATE TABLE `scrap_campaign` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `campaign_id` varchar(999) DEFAULT NULL,
  `name` varchar(999) DEFAULT NULL,
  `site` varchar(999) DEFAULT NULL,
  `query` longtext DEFAULT NULL,
  `status` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scrap_entries`
--

CREATE TABLE `scrap_entries` (
  `id` int(11) NOT NULL,
  `campaign_id` bigint(20) DEFAULT NULL,
  `mobile` longtext DEFAULT NULL,
  `email` longtext DEFAULT NULL,
  `username` longtext DEFAULT NULL,
  `name` longtext DEFAULT NULL,
  `other` longtext DEFAULT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `templet`
--

CREATE TABLE `templet` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `name` varchar(999) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `type` varchar(999) DEFAULT NULL,
  `mimetype` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(11) NOT NULL,
  `name` varchar(999) DEFAULT NULL,
  `position` varchar(999) DEFAULT NULL,
  `description` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `name`, `position`, `description`, `createdAt`) VALUES
(2, 'Sarah Johnson', 'Marketing Manager', '\"The product exceeded my expectations! It has helped us streamline our marketing campaigns and significantly boost our ROI. I highly recommend it to all marketing professionals.\"', '2023-05-09 16:00:18'),
(3, 'John Anderson', 'CEO', '\"As a CEO, I\'ve tried numerous solutions, but this one stands out. It has transformed our business operations, saving us time and money. It\'s a game-changer!\"', '2023-05-09 16:00:36'),
(4, 'Emily Roberts', 'Freelance Designer', '\"I\'ve been using this platform for my design projects, and I must say it\'s incredible. The collaboration features and intuitive interface make it a joy to work with. It has definitely elevated my design process.\"', '2023-05-09 16:00:55'),
(5, 'Mark Thompson', 'Sales Representative', '\"This software has revolutionized our sales team\'s productivity. With its robust features for tracking leads and managing customer relationships, we\'ve seen a significant increase in our sales conversions.\"', '2023-05-09 16:01:14'),
(6, 'Lisa Mitchell', 'Small Business Owner', '\"I\'m a small business owner, and this tool has been a lifesaver. It simplifies my day-to-day operations, from inventory management to invoicing. It\'s user-friendly and has made a positive impact on my business.\"', '2023-05-09 16:01:30'),
(7, 'Testing', 'test', 'Gud', '2023-05-11 10:05:54');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `role` varchar(5) NOT NULL DEFAULT 'user',
  `uid` varchar(999) DEFAULT NULL,
  `name` varchar(999) DEFAULT NULL,
  `email` varchar(999) DEFAULT NULL,
  `password` varchar(999) DEFAULT NULL,
  `plan` varchar(999) DEFAULT NULL,
  `planexpire` varchar(999) DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `msglimit` bigint(20) NOT NULL DEFAULT 0,
  `contactlimit` bigint(20) NOT NULL DEFAULT 0,
  `templetlimit` bigint(20) NOT NULL DEFAULT 0,
  `allow_multi_instance` bigint(20) DEFAULT NULL,
  `allow_data_extract` int(1) NOT NULL DEFAULT 0,
  `api` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web`
--

CREATE TABLE `web` (
  `id` int(11) NOT NULL,
  `logo` varchar(999) DEFAULT NULL,
  `app_name` varchar(999) DEFAULT NULL,
  `meta` longtext DEFAULT NULL,
  `youtube_video` varchar(999) DEFAULT NULL,
  `currency_symbol` varchar(999) DEFAULT NULL,
  `exchange_rate` bigint(20) DEFAULT NULL,
  `smtp_host` varchar(999) DEFAULT NULL,
  `smtp_port` varchar(999) DEFAULT NULL,
  `smtp_email` varchar(999) DEFAULT NULL,
  `smtp_pass` varchar(999) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web`
--

INSERT INTO `web` (`id`, `logo`, `app_name`, `meta`, `youtube_video`, `currency_symbol`, `exchange_rate`, `smtp_host`, `smtp_port`, `smtp_email`, `smtp_pass`) VALUES
(1, '833001683730782474andrew-kliatskyi-MaVm_A0xhKk-unsplash.jpg', 'whatsham', 'meta', 'https://youtu.be/kxbJldslfOA', '$', 1, 'smtp.google.com', '465', 'info@codeyon.com', 'pass');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bots`
--
ALTER TABLE `bots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign`
--
ALTER TABLE `campaign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instance`
--
ALTER TABLE `instance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phonebook`
--
ALTER TABLE `phonebook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phonebook_contacts`
--
ALTER TABLE `phonebook_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ping`
--
ALTER TABLE `ping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scrap_campaign`
--
ALTER TABLE `scrap_campaign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scrap_entries`
--
ALTER TABLE `scrap_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `templet`
--
ALTER TABLE `templet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web`
--
ALTER TABLE `web`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bots`
--
ALTER TABLE `bots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `campaign`
--
ALTER TABLE `campaign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `instance`
--
ALTER TABLE `instance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `phonebook`
--
ALTER TABLE `phonebook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `phonebook_contacts`
--
ALTER TABLE `phonebook_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `ping`
--
ALTER TABLE `ping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `scrap_campaign`
--
ALTER TABLE `scrap_campaign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `scrap_entries`
--
ALTER TABLE `scrap_entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2044;

--
-- AUTO_INCREMENT for table `templet`
--
ALTER TABLE `templet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `web`
--
ALTER TABLE `web`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
