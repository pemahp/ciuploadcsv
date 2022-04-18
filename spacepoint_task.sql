-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2022 at 07:56 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spacepoint_task`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `addressId` bigint(20) NOT NULL,
  `addressLine1` varchar(100) DEFAULT NULL,
  `address_Line2` varchar(60) DEFAULT NULL,
  `firstName` varchar(250) DEFAULT NULL,
  `lastName` varchar(250) DEFAULT NULL,
  `city` int(11) DEFAULT 0,
  `state` int(11) DEFAULT 0,
  `zip` varchar(45) DEFAULT NULL,
  `country` int(11) NOT NULL DEFAULT 0,
  `glNbr` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `secondary_phone` varchar(255) DEFAULT NULL,
  `fax` varchar(45) DEFAULT NULL,
  `cell` varchar(45) DEFAULT NULL,
  `latitude` decimal(12,8) DEFAULT NULL,
  `longitude` decimal(12,8) DEFAULT NULL,
  `timeZone` varchar(50) DEFAULT NULL,
  `company` varchar(45) DEFAULT NULL,
  `landMark` varchar(45) DEFAULT NULL,
  `zone` varchar(45) DEFAULT NULL,
  `area` int(11) DEFAULT 0,
  `createBy` int(11) DEFAULT 0,
  `createDt` datetime DEFAULT NULL,
  `lastModifiedBy` int(11) DEFAULT 0,
  `lastModifiedDt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`addressId`, `addressLine1`, `address_Line2`, `firstName`, `lastName`, `city`, `state`, `zip`, `country`, `glNbr`, `phone`, `secondary_phone`, `fax`, `cell`, `latitude`, `longitude`, `timeZone`, `company`, `landMark`, `zone`, `area`, `createBy`, `createDt`, `lastModifiedBy`, `lastModifiedDt`) VALUES
(6056, '1231 lyons Road', NULL, NULL, NULL, 43581, 474, '45458', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(6057, 'Indore Road', NULL, NULL, NULL, 43583, 476, '45458', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(6058, '1231 lyons Road', NULL, NULL, NULL, 43581, 474, '45458', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `cityId` int(11) NOT NULL,
  `stateId` int(11) NOT NULL,
  `cityName` varchar(50) NOT NULL,
  `county` varchar(50) DEFAULT '0',
  `lat` double NOT NULL DEFAULT 0,
  `lang` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`cityId`, `stateId`, `cityName`, `county`, `lat`, `lang`) VALUES
(43581, 0, 'Dayton', '0', 0, 0),
(43582, 0, 'Riverside', '0', 0, 0),
(43583, 0, 'Kettering', '0', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `csv_file`
--

CREATE TABLE `csv_file` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `csv_file`
--

INSERT INTO `csv_file` (`id`, `file_name`, `created_at`, `updated_at`) VALUES
(1, '20220416204231.csv', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employeeId` bigint(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `organizationId` bigint(20) DEFAULT 0,
  `businessPhoneCode` varchar(11) DEFAULT NULL,
  `businessPhone` varchar(20) DEFAULT NULL,
  `middle` varchar(45) DEFAULT NULL,
  `userName` varchar(45) DEFAULT NULL,
  `startDt` datetime DEFAULT NULL,
  `endDt` datetime DEFAULT NULL,
  `maxSaleLimit` float DEFAULT NULL,
  `imageName` varchar(45) DEFAULT NULL,
  `imagePath` varchar(255) DEFAULT NULL,
  `emailVerificationStatus` tinyint(1) DEFAULT 0,
  `phoneVerificationStatus` tinyint(1) DEFAULT 0,
  `birthDay` date DEFAULT NULL,
  `salary` varchar(45) DEFAULT NULL,
  `passwordStatus` tinyint(1) DEFAULT 0,
  `resetPasswordCode` varchar(450) DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `isAllowDiscount` tinyint(2) DEFAULT NULL,
  `employeePin` varchar(255) DEFAULT NULL,
  `requestStatus` tinyint(1) DEFAULT 0 COMMENT '''''0 = not request,1 = request, 2 = varified request,3 = accept , 4 = declined''''',
  `blockStatus` tinyint(1) DEFAULT 0,
  `blockReason` text DEFAULT NULL,
  `verifiedStatus` tinyint(1) DEFAULT 0,
  `isDelete` tinyint(1) DEFAULT 0,
  `createBy` int(11) DEFAULT 0,
  `createDt` datetime DEFAULT NULL,
  `lastModifiedBy` int(11) DEFAULT 0,
  `lastModifiedDt` datetime DEFAULT NULL,
  `is_single_store` tinyint(1) DEFAULT 0,
  `liteEmpPassword` tinyint(1) DEFAULT 0,
  `passwordEncrypt` varchar(255) DEFAULT NULL,
  `facebookId` varchar(255) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employeeId`, `email`, `password`, `firstName`, `lastName`, `organizationId`, `businessPhoneCode`, `businessPhone`, `middle`, `userName`, `startDt`, `endDt`, `maxSaleLimit`, `imageName`, `imagePath`, `emailVerificationStatus`, `phoneVerificationStatus`, `birthDay`, `salary`, `passwordStatus`, `resetPasswordCode`, `active`, `isAllowDiscount`, `employeePin`, `requestStatus`, `blockStatus`, `blockReason`, `verifiedStatus`, `isDelete`, `createBy`, `createDt`, `lastModifiedBy`, `lastModifiedDt`, `is_single_store`, `liteEmpPassword`, `passwordEncrypt`, `facebookId`) VALUES
(10, 'spacepointetest@gmail.com', NULL, 'GHI', 'Store', 0, NULL, NULL, NULL, 'newt', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, 0, 0, NULL, 0, 0, 0, NULL, 0, NULL, 0, 0, NULL, '0'),
(11, 'prem@gmail.com', NULL, 'Prem', 'Panwar', 0, NULL, NULL, NULL, 'prempan', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, 0, 0, NULL, 0, 0, 0, NULL, 0, NULL, 0, 0, NULL, '0'),
(12, 'spacepointetest@gmail.com', NULL, 'GHI', 'Store', 0, NULL, NULL, NULL, 'newt', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, 0, 0, NULL, 0, 0, 0, NULL, 0, NULL, 0, 0, NULL, '0');

-- --------------------------------------------------------

--
-- Table structure for table `employee_address`
--

CREATE TABLE `employee_address` (
  `employeeId` bigint(20) NOT NULL,
  `addressId` bigint(20) NOT NULL DEFAULT 0,
  `addressTypeId` tinyint(4) DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT 0,
  `isPreferred` tinyint(1) NOT NULL DEFAULT 0,
  `active` tinyint(1) DEFAULT 1,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0,
  `createBy` bigint(20) NOT NULL DEFAULT 0,
  `createDt` datetime DEFAULT NULL,
  `lastModifiedBy` bigint(20) DEFAULT NULL,
  `lastModifiedDt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_04_17_124302_create_jobs_table', 1),
(5, '2022_04_17_124438_create_table_csv_fies', 1);

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE `organization` (
  `organizationId` bigint(20) NOT NULL,
  `organizationTypeId` tinyint(4) DEFAULT NULL,
  `organizationName` varchar(45) DEFAULT NULL,
  `dbaName` varchar(255) DEFAULT NULL,
  `organizationLoginId` bigint(20) DEFAULT NULL,
  `webUrl` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `storeCount` smallint(6) DEFAULT NULL,
  `verificationPref` varchar(5) DEFAULT NULL,
  `imageName` varchar(255) DEFAULT NULL,
  `imagePath` varchar(255) DEFAULT NULL,
  `securityToken` varchar(45) DEFAULT NULL,
  `orgVerificationResultId` tinyint(1) DEFAULT 1,
  `CIN` varchar(45) DEFAULT NULL,
  `denom` varchar(4) DEFAULT NULL,
  `custServiceNbr` decimal(10,0) DEFAULT NULL,
  `parentOrganizationId` bigint(20) DEFAULT NULL,
  `subscriptionId` tinyint(4) DEFAULT NULL,
  `briefDescription` varchar(255) DEFAULT NULL,
  `merchantOrderId` bigint(20) DEFAULT NULL,
  `isMobile` tinyint(1) DEFAULT 0,
  `isMobileVerified` tinyint(2) DEFAULT NULL,
  `freeTransxType` bigint(20) DEFAULT 1,
  `isEmailVerified` tinyint(2) DEFAULT NULL,
  `isPointePay` tinyint(1) DEFAULT 0,
  `isPointeMart` tinyint(1) DEFAULT 0,
  `isNoPos` tinyint(1) DEFAULT 0,
  `TIN` varchar(45) DEFAULT NULL,
  `dropshipCentre` int(11) DEFAULT 0,
  `pointepaySubscriptionId` int(11) DEFAULT 0,
  `merchantId` varchar(255) DEFAULT NULL,
  `terminalAssignType` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1=Auto,2=Manual',
  `terminalPrefix` varchar(255) DEFAULT NULL,
  `isShowIncomm` tinyint(1) NOT NULL DEFAULT 1,
  `isEkikart` tinyint(4) NOT NULL DEFAULT 0,
  `isDelete` tinyint(1) DEFAULT 0,
  `createBy` int(11) DEFAULT 0,
  `createDt` datetime DEFAULT NULL,
  `lastModifiedDt` datetime DEFAULT NULL,
  `lastModifiedBy` int(11) DEFAULT 0,
  `organizationQrCode` varchar(20) DEFAULT NULL,
  `blockStatus` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`organizationId`, `organizationTypeId`, `organizationName`, `dbaName`, `organizationLoginId`, `webUrl`, `facebook`, `twitter`, `storeCount`, `verificationPref`, `imageName`, `imagePath`, `securityToken`, `orgVerificationResultId`, `CIN`, `denom`, `custServiceNbr`, `parentOrganizationId`, `subscriptionId`, `briefDescription`, `merchantOrderId`, `isMobile`, `isMobileVerified`, `freeTransxType`, `isEmailVerified`, `isPointePay`, `isPointeMart`, `isNoPos`, `TIN`, `dropshipCentre`, `pointepaySubscriptionId`, `merchantId`, `terminalAssignType`, `terminalPrefix`, `isShowIncomm`, `isEkikart`, `isDelete`, `createBy`, `createDt`, `lastModifiedDt`, `lastModifiedBy`, `organizationQrCode`, `blockStatus`) VALUES
(4235, NULL, 'Market', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, 0, 0, 0, NULL, 0, 0, NULL, 0, NULL, 1, 0, 0, 0, NULL, NULL, 0, NULL, 1),
(4236, NULL, 'Chapter', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, 0, 0, 0, NULL, 0, 0, NULL, 0, NULL, 1, 0, 0, 0, NULL, NULL, 0, NULL, 1),
(4237, NULL, 'Market', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, 0, 0, 0, NULL, 0, 0, NULL, 0, NULL, 1, 0, 0, 0, NULL, NULL, 0, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `stateId` int(11) NOT NULL,
  `countryId` int(11) DEFAULT NULL,
  `code` char(2) DEFAULT NULL,
  `stateName` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`stateId`, `countryId`, `code`, `stateName`, `active`) VALUES
(474, NULL, NULL, 'Ohio', 1),
(475, NULL, NULL, 'Pennsylvania', 1),
(476, NULL, NULL, 'Michigan', 1),
(477, NULL, NULL, 'West Virginia', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`addressId`),
  ADD KEY `idx_address_phone` (`phone`),
  ADD KEY `addressId` (`addressId`),
  ADD KEY `country` (`country`),
  ADD KEY `state` (`state`),
  ADD KEY `city` (`city`),
  ADD KEY `area` (`area`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`cityId`);

--
-- Indexes for table `csv_file`
--
ALTER TABLE `csv_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employeeId`);

--
-- Indexes for table `employee_address`
--
ALTER TABLE `employee_address`
  ADD PRIMARY KEY (`employeeId`,`addressId`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`organizationId`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`stateId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `addressId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6059;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `cityId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43584;

--
-- AUTO_INCREMENT for table `csv_file`
--
ALTER TABLE `csv_file`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employeeId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `organization`
--
ALTER TABLE `organization`
  MODIFY `organizationId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4238;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `stateId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=478;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
