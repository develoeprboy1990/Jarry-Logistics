-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 11, 2023 at 03:03 PM
-- Server version: 8.0.27
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `extbooks_jarry_logistics`
--

-- --------------------------------------------------------

--
-- Table structure for table `airline`
--

CREATE TABLE `airline` (
  `AirLineID` int NOT NULL,
  `AirLineName` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airline`
--

INSERT INTO `airline` (`AirLineID`, `AirLineName`) VALUES
(1, 'AKBAR TRAVEL'),
(2, 'AIR BLUE'),
(3, 'AL DIYAFA');

-- --------------------------------------------------------

--
-- Table structure for table `attachment`
--

CREATE TABLE `attachment` (
  `AttachmentID` int NOT NULL,
  `InvoiceNo` varchar(25) DEFAULT NULL,
  `FileName` varchar(75) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `challan_detail`
--

CREATE TABLE `challan_detail` (
  `ChallanDetailID` int NOT NULL,
  `ChallanMasterID` int NOT NULL,
  `ChallanNo` varchar(10) DEFAULT NULL,
  `ChallanDate` date DEFAULT NULL,
  `PartyID` int DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `ItemID` int DEFAULT NULL,
  `Qty` int DEFAULT NULL,
  `Rate` double(8,2) DEFAULT NULL,
  `TaxAmount` double(8,2) DEFAULT NULL,
  `TaxPer` double(8,2) DEFAULT NULL,
  `Discount` double(8,2) DEFAULT NULL,
  `Total` double(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `challan_master`
--

CREATE TABLE `challan_master` (
  `ChallanMasterID` int NOT NULL,
  `ChallanNo` varchar(10) DEFAULT NULL,
  `PartyID` int DEFAULT NULL,
  `WalkinCustomerName` varchar(75) DEFAULT NULL,
  `PlaceOfSupply` varchar(25) DEFAULT NULL,
  `ReferenceNo` varchar(25) DEFAULT NULL,
  `ChallanDate` date DEFAULT NULL,
  `ChallanType` varchar(25) DEFAULT NULL,
  `CustomerNotes` varchar(255) DEFAULT NULL,
  `DescriptionNotes` varchar(255) DEFAULT NULL,
  `TermAndCondition` varchar(255) DEFAULT NULL,
  `File` varchar(75) DEFAULT NULL,
  `UserID` int DEFAULT NULL,
  `Subject` varchar(255) DEFAULT NULL,
  `SubTotal` double(8,2) DEFAULT NULL,
  `Total` double(8,2) DEFAULT NULL,
  `DiscountPer` double(8,2) DEFAULT NULL,
  `DiscountAmount` double(8,2) DEFAULT NULL,
  `TaxPer` double(8,2) DEFAULT NULL,
  `Tax` double(8,2) DEFAULT NULL,
  `Shipping` double(8,2) DEFAULT NULL,
  `GrandTotal` double(8,2) DEFAULT NULL,
  `Paid` double(8,2) DEFAULT NULL,
  `Balance` double(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `challan_type`
--

CREATE TABLE `challan_type` (
  `ChallanTypeID` int NOT NULL,
  `ChallanTypeName` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `challan_type`
--

INSERT INTO `challan_type` (`ChallanTypeID`, `ChallanTypeName`) VALUES
(2, 'Supply of Goods'),
(3, 'Job Work'),
(4, 'Supply on Approval'),
(5, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `chartofaccount`
--

CREATE TABLE `chartofaccount` (
  `ChartOfAccountID` int NOT NULL,
  `CODE` varchar(15) DEFAULT NULL,
  `ChartOfAccountName` varchar(75) DEFAULT NULL,
  `OpenDebit` int DEFAULT NULL,
  `OpenCredit` int DEFAULT NULL,
  `L1` int DEFAULT NULL,
  `L2` int DEFAULT NULL,
  `L3` int DEFAULT NULL,
  `Category` varchar(55) DEFAULT NULL,
  `Level` int DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chartofaccount`
--

INSERT INTO `chartofaccount` (`ChartOfAccountID`, `CODE`, `ChartOfAccountName`, `OpenDebit`, `OpenCredit`, `L1`, `L2`, `L3`, `Category`, `Level`, `Status`) VALUES
(0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100000, 'A', 'ASSETS', NULL, NULL, 100000, 100000, 100000, NULL, 1, 'LOCK'),
(110000, 'A', 'CURRENT ASSETS', NULL, NULL, 100000, 110000, 110000, NULL, 2, NULL),
(110200, 'A', 'BANK DEPOSITS', NULL, NULL, 100000, 110000, 110200, NULL, 3, NULL),
(110201, 'A', 'ADCB BANK', NULL, NULL, 100000, 110000, 110200, 'BANK', 3, 'LOCK'),
(110400, 'A', 'Accounts Receivable', NULL, NULL, 100000, 110000, 110400, '0', 3, 'LOCK'),
(110401, 'A', 'PARTY A/C.', NULL, NULL, 100000, 110000, 110400, NULL, 3, NULL),
(110402, 'A', 'OTHER RECEIVABLES', NULL, NULL, 100000, 110000, 110400, NULL, 3, NULL),
(110490, 'A', 'BAD DEBTS', NULL, NULL, 100000, 110000, 110400, NULL, 3, NULL),
(110600, 'A', 'MISC. ADJUSTMENTS', NULL, NULL, 100000, 110000, 110600, NULL, 3, NULL),
(110700, 'A', 'STOCK INVENTORY', NULL, NULL, 100000, 110000, 110000, NULL, 3, NULL),
(110900, 'A', 'curent - asset-child', NULL, NULL, 100000, 110000, 110000, NULL, 3, NULL),
(111000, 'A', 'Cash in Bank - Mashreq', NULL, NULL, 100000, 110000, 110000, 'BANK', 3, 'LOCK'),
(111100, 'A', 'Cash in Bank - ADCB 12387035920001', NULL, NULL, 100000, 110000, 110000, 'BANK', 3, 'LOCK'),
(111200, 'A', 'Refundable Deposit', NULL, NULL, 100000, 110000, 110000, '0', 3, NULL),
(111300, 'A', 'PETTY CASH', NULL, NULL, 100000, 110000, 110000, '0', 3, NULL),
(111400, 'A', 'Security Deposit', NULL, NULL, 100000, 110000, 110000, '0', 3, NULL),
(111500, 'A', 'Credit Card Account', NULL, NULL, 100000, 110000, 110000, '0', 3, NULL),
(111600, 'A', 'Computer & Accessories', NULL, NULL, 100000, 110000, 110000, '0', 3, NULL),
(111700, 'A', 'Accum. Dep- Furniture & Equipment', NULL, NULL, 100000, 110000, 110000, '0', 3, NULL),
(111800, 'A', 'Accounts Receivables', NULL, NULL, 100000, 110000, 110000, '0', 3, NULL),
(111900, 'A', 'Accum. Dep- Computer Equip & Acces', NULL, NULL, 100000, 110000, 110000, '0', 3, NULL),
(112000, 'A', 'Accum. Dep- Office Equipment', NULL, NULL, 100000, 110000, 110000, '0', 3, NULL),
(112100, 'A', 'Petty Cash- Anne', NULL, NULL, 100000, 110000, 110000, '0', 3, NULL),
(112200, 'A', 'Staff Advance', NULL, NULL, 100000, 110000, 110000, '0', 3, NULL),
(112300, 'A', 'Prepaid Rent Expense', NULL, NULL, 100000, 110000, 110000, '0', 3, NULL),
(120000, 'A', 'FIXED ASSETS', NULL, NULL, 100000, 120000, 120000, NULL, 3, NULL),
(120101, 'A', 'ACCUMULATED DEPRECIATION', NULL, NULL, 100000, 120000, 120000, '0', 3, NULL),
(120125, 'A', 'VEHICLES', NULL, NULL, 100000, 120000, 120100, NULL, 3, NULL),
(120227, 'A', 'FURNITURE AND EQUIPMENT', NULL, NULL, 100000, 120000, 120000, '0', 3, NULL),
(120327, 'A', 'Office Equipment', NULL, NULL, 100000, 120000, 120000, '0', 3, NULL),
(130000, 'A', 'OTHER ASSETS', NULL, NULL, 100000, 130000, 130000, NULL, 3, NULL),
(130300, 'A', 'PREPAID LICENSE FEE', NULL, NULL, 100000, 130000, 130000, '0', 3, NULL),
(130400, 'A', 'PREPAID EXPENSES', NULL, NULL, 100000, 130000, 130000, '0', 3, NULL),
(140100, 'A', 'DEFERRED ASSETS', NULL, NULL, 100000, 140000, 140100, NULL, 3, NULL),
(140200, 'A', 'DEPOSITS', NULL, NULL, 100000, 140000, 140200, NULL, 3, NULL),
(140300, 'A', 'LEASEHOLD IMPROV.NET', NULL, NULL, 100000, 140000, 140300, NULL, 3, NULL),
(140400, 'A', 'Prepaid Medical Insurance', NULL, NULL, 100000, 130000, 140400, '0', 3, NULL),
(150200, 'A', 'Prepaid Visa Expense', NULL, NULL, 100000, 130000, 150200, '0', 3, NULL),
(160000, 'A', 'asst-test', NULL, NULL, 100000, 160000, 160000, NULL, 3, NULL),
(160100, 'A', 'asset-test-child', NULL, NULL, 100000, 160000, 160000, NULL, 3, NULL),
(200000, 'L', 'LIABILITIES', NULL, NULL, 200000, 200000, 200000, NULL, 2, NULL),
(200001, 'L', 'Payable to Mr. Babar', NULL, NULL, 200000, 200000, 200001, '0', 3, NULL),
(200002, 'L', 'PAYABLE TO MR. ASIM', NULL, NULL, 200000, 200000, 200002, '0', 3, NULL),
(200100, 'L', 'PAYABLE TO MR. KALEEM', NULL, NULL, 200000, 210000, 210000, '0', 3, 'LOCK'),
(200200, 'L', 'Friends Commodity Brokerage LLC', NULL, NULL, 200000, 210000, 210000, '0', 3, 'LOCK'),
(200300, 'L', 'SALARY PAYABLE', NULL, NULL, 200000, 210000, 210000, NULL, 3, 'LOCK'),
(200500, 'L', 'PDC Payable', NULL, NULL, 200000, 210000, 210000, '0', 3, NULL),
(200600, 'L', 'Staff Gratuity Payable', NULL, NULL, 200000, 210000, 210000, '0', 3, NULL),
(200700, 'L', 'Telephone & Internet Payable', NULL, NULL, 200000, 210000, 210000, '0', 3, NULL),
(200800, 'L', 'UTILITIES PAYABLE', NULL, NULL, 200000, 210000, 200801, NULL, 3, NULL),
(200801, 'L', 'Payable to Anne (PRO)', NULL, NULL, 200000, 210000, 200801, '0', 3, NULL),
(210000, 'L', 'SHORT TERM LIABILITY', NULL, NULL, 200000, 210000, 210000, NULL, 2, NULL),
(210100, 'L', 'A/C PAYABLE', NULL, NULL, 200000, 210000, 210100, 'A/P', 3, 'LOCK'),
(210102, 'L', 'OTHER PAYABLES', NULL, NULL, 200000, 210000, 210100, NULL, 3, NULL),
(210302, 'L', 'MARKETING COMMISSION PAYABLE.', NULL, NULL, 200000, 210000, 210300, NULL, 3, NULL),
(210303, 'L', 'TAKAFAL PAYABLE.', NULL, NULL, 200000, 210000, 210300, NULL, 3, NULL),
(210403, 'L', 'PAYABLE TO MR. ASIM', NULL, NULL, 200000, 210000, 210000, '0', 3, NULL),
(210404, 'L', 'Grand Alliance Commercial Brokerage LLC', NULL, NULL, 200000, 210000, 210404, '0', 3, NULL),
(220000, 'L', 'SECURITIES', NULL, NULL, 200000, 220000, 220000, NULL, 2, NULL),
(220100, 'L', 'Cooling Charges Payable', NULL, NULL, 200000, 220000, 220000, '0', 3, NULL),
(230000, 'L', 'STAFF PAYABLE', NULL, NULL, 200000, 230000, 230000, NULL, 2, NULL),
(230100, 'L', 'VAT-OUTPUT TAX', NULL, NULL, 200000, 230000, 230000, NULL, 3, NULL),
(230200, 'L', 'VAT-INPUT TAX', NULL, NULL, 200000, 230000, 230000, NULL, 3, NULL),
(230300, 'L', 'STAFF ANNUAL LEAVE PAYABLE', NULL, NULL, 200000, 230000, 230000, '0', 3, NULL),
(230400, 'L', 'STAFF END OF SERVICE PAYABLE', NULL, NULL, 200000, 230000, 230000, '0', 3, NULL),
(230401, 'L', 'Staff Air Ticket Payable', NULL, NULL, 200000, 230000, 230401, '0', 3, NULL),
(230402, 'L', 'Uncollected Salary', NULL, NULL, 200000, 230000, 230402, '0', 3, NULL),
(240000, 'L', 'Rent Payable', NULL, NULL, 200000, 240000, 240000, NULL, 2, NULL),
(250000, 'L', 'STAFF PAYABLE', NULL, NULL, 200000, 250000, 250000, NULL, 2, NULL),
(300000, 'C', 'STOCKHOLDERS EQUITY', NULL, NULL, 300000, 300000, 300000, NULL, 1, 'LOCK'),
(300100, 'C', 'Share Capital Investment - Mr. Babar', NULL, NULL, 300000, 310000, 300100, '0', 3, NULL),
(310000, 'C', 'CAPITAL INVESTMENT', NULL, NULL, 300000, 310000, 310000, NULL, 2, NULL),
(310100, 'C', 'CAPITAL STOCK.', NULL, NULL, 300000, 310000, 310100, NULL, 3, NULL),
(310102, 'C', 'PROFIT AND LOSS A/C.', NULL, NULL, 300000, 310000, 310100, NULL, 3, NULL),
(310103, 'C', 'CURRENT PERIOD PROF/LOSS.', NULL, NULL, 300000, 310000, 310100, NULL, 3, NULL),
(310104, 'C', 'MUHAMMAD ASIM JAN', NULL, NULL, 300000, 310000, 310100, NULL, 3, NULL),
(310105, 'C', 'MUHAMMAD FAISAL', NULL, NULL, 300000, 310000, 310100, NULL, 3, NULL),
(310205, 'C', 'Partner Current Account - Mr. Babar', NULL, NULL, 300000, 310000, 310000, '0', 3, NULL),
(320000, 'C', 'CAPITAL WITHDRAWALS', NULL, NULL, 300000, 320000, 320000, NULL, 2, NULL),
(320100, 'C', 'CAPITAL WITHDRAWALS', NULL, NULL, 300000, 320000, 320100, NULL, 3, NULL),
(400000, 'R', 'REVENUES', NULL, NULL, 400000, 400000, 400000, NULL, 1, 'LOCK'),
(410000, 'R', 'SALES:-', NULL, NULL, 400000, 410000, 410000, NULL, 2, 'LOCK'),
(410100, 'R', 'SALES:-', NULL, NULL, 400000, 410000, 410100, NULL, 3, 'LOCK'),
(410101, 'R', 'COMMISSION.', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410150, 'R', 'SALE OF TICKET', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410151, 'R', 'INCOME FROM REPAIR', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410152, 'R', 'DISCOUNT RECEIVED', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410155, 'R', 'SALES DISCOUNTS', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410172, 'R', 'FREIGHT CHARGES', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410173, 'R', 'INCOME SALE COMMISSION.', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410175, 'R', 'SALE RETURNS.', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410180, 'R', 'SALE RETURN DISCOUNT.', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410185, 'R', 'SALE RETURN FREIGHT', NULL, NULL, 400000, 410000, 410100, NULL, 3, NULL),
(410200, 'R', 'OTHER INCOME', NULL, NULL, 400000, 410000, 410200, NULL, 3, NULL),
(410201, 'R', 'MISC. INCOME', NULL, NULL, 400000, 410000, 410200, NULL, 3, NULL),
(410205, 'R', 'OTHER SALES.', NULL, NULL, 400000, 410000, 410200, NULL, 3, NULL),
(420000, 'R', 'OTHER REVENUES', NULL, NULL, 400000, 420000, 420000, NULL, 2, NULL),
(420100, 'R', 'OTHER INCOME', NULL, NULL, 400000, 420000, 420100, NULL, 3, NULL),
(420101, 'R', 'OTHER INCOME 2', NULL, NULL, 400000, 420000, 420100, NULL, 3, NULL),
(420104, 'R', 'PENDING/TARGET INCOME', NULL, NULL, 400000, 420000, 420100, NULL, 3, NULL),
(420105, 'R', 'SERVICE CHARGES', NULL, NULL, 400000, 420000, 420100, NULL, 3, NULL),
(420200, 'R', 'OTHER INCOME', NULL, NULL, 400000, 420000, 420200, NULL, 3, NULL),
(500000, 'E', 'TOTAL EXPENSES', NULL, NULL, 500000, 500000, 500000, NULL, 1, 'LOCK'),
(500100, 'E', 'Shipping Expenses', NULL, NULL, 500000, 500000, 500000, NULL, 2, NULL),
(500200, 'E', 'COST OF SALES', NULL, NULL, 500000, 500000, 500000, NULL, 2, NULL),
(500300, 'E', 'Car Repair & Maintenance Expense', NULL, NULL, 500000, 500000, 500000, '0', 2, NULL),
(500400, 'E', 'Water & Electricity Expense', NULL, NULL, 500000, 520000, 510000, '0', 2, NULL),
(500500, 'E', 'Bonus/ Commission Expense', NULL, NULL, 500000, 520000, 510000, '0', 2, NULL),
(500600, 'E', 'Meals & Entertainment Expense', NULL, NULL, 500000, 520000, 510000, '0', 2, NULL),
(500700, 'E', 'Medical Insurance Expense', NULL, NULL, 500000, 520000, 510000, '0', 2, NULL),
(510000, 'E', 'COST OF GOODS SOLD.', NULL, NULL, 500000, 510000, 510000, NULL, 2, NULL),
(510101, 'E', 'OPENING STOCK.', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510102, 'E', 'PURCHASES', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510103, 'E', 'PURCHASE OF TICKET', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510104, 'E', 'DISCOUNT ALLOWED', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510105, 'E', 'PURCHASE DISCOUNTS', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510107, 'E', 'PURCHASE LOADING', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510109, 'E', 'PURCHASE UNLOADING', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510110, 'E', 'PURCHASE RETURN.', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510117, 'E', 'ZAKAT ACCOUNT.', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510120, 'E', 'PURCHASES MISC. ADJ.', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510122, 'E', 'PURCHASE BENDING', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510145, 'E', 'STOCK EXPENSES', NULL, NULL, 500000, 510000, 510100, NULL, 3, NULL),
(510200, 'E', 'PACKING MATERIAL EXPENS.', NULL, NULL, 500000, 510000, 510200, NULL, 3, NULL),
(510400, 'E', 'MARKETING EXPENSES', NULL, NULL, 500000, 510000, 510400, NULL, 3, NULL),
(510441, 'E', 'MARKETING SALARIES', NULL, NULL, 500000, 520000, 510400, NULL, 3, NULL),
(510451, 'E', 'MARKETING PHONE/MOB EXP.', NULL, NULL, 500000, 510000, 510400, NULL, 3, NULL),
(510461, 'E', 'ENTERTAINMENT', NULL, NULL, 500000, 510000, 510400, NULL, 3, NULL),
(510661, 'E', 'Salaries & Wages Expense', NULL, NULL, 500000, 510000, 510000, '0', 3, NULL),
(510761, 'E', 'Staff & Welfare Expense', NULL, NULL, 500000, 520000, 510000, '0', 3, NULL),
(520000, 'E', 'GEN & ADMIN EXPENSES', NULL, NULL, 500000, 520000, 520000, NULL, 2, NULL),
(520100, 'E', 'Depreciation..', NULL, NULL, 500000, 520000, 520000, '0', 3, NULL),
(520101, 'E', 'Staff Air Ticket Expense', NULL, NULL, 500000, 520000, 520101, '0', 3, NULL),
(530000, 'E', 'STAFF EXPENSES', NULL, NULL, 500000, 530000, 530000, NULL, 2, NULL),
(530100, 'E', 'PAYROLL EXPENSES', NULL, NULL, 500000, 530000, 530100, NULL, 3, NULL),
(530107, 'E', 'GM PAY:-', NULL, NULL, 500000, 530000, 530100, NULL, 3, NULL),
(530108, 'E', 'YASEEN SALARY', NULL, NULL, 500000, 530000, 530100, NULL, 3, NULL),
(530109, 'E', 'BABAR SALARY', NULL, NULL, 500000, 530000, 530100, NULL, 3, NULL),
(530110, 'E', 'Annual Leave Salary Expense..', NULL, NULL, 500000, 530000, 530110, '0', 3, NULL),
(530111, 'E', 'Staff Gratuity Expense..', NULL, NULL, 500000, 530000, 530111, '0', 3, NULL),
(530200, 'E', 'ASSETS INSURANCE', NULL, NULL, 500000, 530000, 530200, NULL, 3, NULL),
(540000, 'E', 'REPAIR & MAINTENANCE', NULL, NULL, 500000, 540000, 540000, NULL, 2, NULL),
(540100, 'E', 'REPAIR & MAINTENANCE', NULL, NULL, 500000, 540000, 540100, NULL, 3, NULL),
(540110, 'E', 'R/M VEHICLE.', NULL, NULL, 500000, 540000, 540100, NULL, 3, NULL),
(540111, 'E', 'R/M FURNITURE & FIXTURE', NULL, NULL, 500000, 540000, 540100, NULL, 3, NULL),
(540112, 'E', 'R/M EQUIPMENT / COMPUTER', NULL, NULL, 500000, 540000, 540100, NULL, 3, NULL),
(540130, 'E', 'GIFT ACCOUNT.', NULL, NULL, 500000, 540000, 540100, NULL, 3, NULL),
(550000, 'E', 'OFFICE EXPENSES', NULL, NULL, 500000, 550000, 550000, NULL, 2, NULL),
(550115, 'E', 'LICENCE EXPENSE.', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550120, 'E', 'WATER BILLS', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550123, 'E', 'Office Expense..', NULL, NULL, 500000, 550000, 550100, '0', 3, NULL),
(550126, 'E', 'TEA & FOOD EXPENSES', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550134, 'E', 'MISC. EXPENSES', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550136, 'E', 'CHARITY & DONATIONS', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550138, 'E', 'NEWS PAPERS', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550140, 'E', 'MEMBERSHIP FEE', NULL, NULL, 500000, 550000, 550100, NULL, 3, NULL),
(550240, 'E', 'Rent Expense', NULL, NULL, 500000, 550000, 550000, '0', 3, NULL),
(550340, 'E', 'Office Supplies', NULL, NULL, 500000, 550000, 550000, '0', 3, NULL),
(550440, 'E', 'BONUS EXPENSE', NULL, NULL, 500000, 550000, 550000, '0', 3, NULL),
(550540, 'E', 'COOLING CHARGES', NULL, NULL, 500000, 550000, 550000, '0', 3, NULL),
(550740, 'E', 'Telephone & Internet Expense', NULL, NULL, 500000, 550000, 550000, '0', 3, NULL),
(550840, 'E', 'Repair & Maintenance Expense', NULL, NULL, 500000, 550000, 550000, '0', 3, NULL),
(550940, 'E', 'Legal & Statutory Expense', NULL, NULL, 500000, 550000, 550000, '0', 3, NULL),
(551040, 'E', 'Transportation Expense', NULL, NULL, 500000, 550000, 550000, '0', 3, NULL),
(551140, 'E', 'Cooling Expense', NULL, NULL, 500000, 550000, 550000, '0', 3, NULL),
(560000, 'E', 'FINANCIAL EXPENSES', NULL, NULL, 500000, 560000, 560000, NULL, 2, NULL),
(560100, 'E', 'FINANCIAL EXPENSES', NULL, NULL, 500000, 560000, 560100, NULL, 3, NULL),
(560110, 'E', 'BANK CHARGES', NULL, NULL, 500000, 560000, 560100, NULL, 3, NULL),
(560111, 'E', 'FEE CHARGED', NULL, NULL, 500000, 560000, 560100, NULL, 3, NULL),
(560211, 'E', 'Visit Visa Expense', NULL, NULL, 500000, 520000, 560000, '0', 3, NULL),
(560212, 'E', 'Staff Visa Expense', NULL, NULL, 500000, 520000, 560212, '0', 3, NULL),
(560213, 'E', 'Leads Expense', NULL, NULL, 500000, 520000, 560213, '0', 3, NULL),
(570000, 'E', 'DEPRECIATION', NULL, NULL, 500000, 570000, 570000, NULL, 2, NULL),
(570100, 'E', 'DEPRECIATION', NULL, NULL, 500000, 570000, 570100, NULL, 3, NULL),
(580000, 'E', 'TAXES:-', NULL, NULL, 500000, 580000, 580000, NULL, 2, NULL),
(580100, 'E', 'TAXES:-', NULL, NULL, 500000, 580000, 580100, NULL, 3, NULL),
(580120, 'E', 'TAX PAYABLE', NULL, NULL, 500000, 580000, 580120, NULL, 3, NULL),
(580130, 'E', 'SALES TAX.', NULL, NULL, 500000, 580000, 580100, NULL, 3, NULL),
(580135, 'E', 'INCOME TAX.', NULL, NULL, 500000, 580000, 580100, NULL, 3, NULL),
(580140, 'E', 'PROFESSIONAL TAX (EXCISE)', NULL, NULL, 500000, 580000, 580100, NULL, 3, NULL),
(580145, 'E', 'TOLL TAX.', NULL, NULL, 500000, 580000, 580100, NULL, 3, NULL),
(580245, 'E', 'test in tax', NULL, NULL, 500000, 580000, 580000, NULL, 3, NULL),
(590100, 'E', 'OTHER EXPENSES', NULL, NULL, 500000, 590000, 590100, NULL, 3, NULL),
(590101, 'E', 'OTHER EXPENSES', NULL, NULL, 500000, 590000, 590100, NULL, 3, NULL),
(590104, 'E', 'OFFICE EXPENCE.', NULL, NULL, 500000, 590000, 590100, NULL, 3, NULL),
(590106, 'E', 'COMPUTER EXPENSES', NULL, NULL, 500000, 590000, 590100, NULL, 3, NULL),
(590107, 'E', 'BAD DEBTS ', NULL, NULL, 500000, 590000, 590100, NULL, 3, NULL),
(590108, 'E', 'CASH SHORT /EXCESS', NULL, NULL, 500000, 590000, 590100, NULL, 3, NULL),
(590109, 'E', 'PREVIOUS PERIOD P&L.', NULL, NULL, 500000, 590000, 590100, NULL, 3, NULL),
(590209, 'E', 'Office Rent Expense', NULL, NULL, 500000, 590000, 590000, '0', 3, NULL),
(600000, 'S', 'SUSPENSE', NULL, NULL, 600000, 600000, 600000, NULL, 1, 'LOCK'),
(610000, 'S', 'SUSPENSE', NULL, NULL, 600000, 610000, 610000, NULL, 2, NULL),
(610100, 'S', 'SUSPENSE', NULL, NULL, 600000, 610000, 610100, NULL, 3, NULL),
(610101, 'S', 'SUSPENSE', NULL, NULL, 600000, 610000, 610100, NULL, 3, NULL),
(610102, 'S', 'CLEARING ACCOUNT.', NULL, NULL, 600000, 610000, 610100, NULL, 3, NULL),
(610103, 'S', 'CHEQUE ACCOUNT.', NULL, NULL, 600000, 610000, 610100, NULL, 3, NULL),
(610104, 'S', 'EXCESS & SHORT ACCOUNT.', NULL, NULL, 600000, 610000, 610100, NULL, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `CompanyID` int NOT NULL,
  `Name` varchar(150) DEFAULT NULL,
  `Name2` varchar(255) DEFAULT NULL,
  `TRN` varchar(150) DEFAULT NULL COMMENT 'tax registration no',
  `Currency` varchar(3) DEFAULT NULL,
  `Mobile` varchar(75) DEFAULT NULL,
  `Contact` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Website` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Logo` varchar(255) DEFAULT NULL,
  `BackgroundLogo` varchar(255) DEFAULT NULL,
  `CreatedDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UpdatedDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Signature` varchar(255) DEFAULT NULL,
  `DigitalSignature` varchar(255) DEFAULT NULL,
  `EstimateInvoiceTitle` varchar(150) DEFAULT NULL,
  `SaleInvoiceTitle` varchar(150) DEFAULT NULL,
  `DeliveryChallanTitle` varchar(150) DEFAULT NULL,
  `CreditNoteTitle` varchar(150) DEFAULT NULL,
  `PurchaseInvoiceTitle` varchar(150) DEFAULT NULL,
  `DebitNoteTitle` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`CompanyID`, `Name`, `Name2`, `TRN`, `Currency`, `Mobile`, `Contact`, `Email`, `Website`, `Address`, `Logo`, `BackgroundLogo`, `CreatedDate`, `UpdatedDate`, `Signature`, `DigitalSignature`, `EstimateInvoiceTitle`, `SaleInvoiceTitle`, `DeliveryChallanTitle`, `CreditNoteTitle`, `PurchaseInvoiceTitle`, `DebitNoteTitle`) VALUES
(1, 'Jarry Logistics', 'Cargo and Logistic services in UAE', '1111', 'AED', NULL, '+971 52 656 0829', 'info@jarraylogistics.ae', 'www.jarraylogistics.ae', 'Shop no.6 - behind Faaz Super Market Frij - Al Murar - Dubai - United Arab Emirates', '1689066896.png', '1665053385.jpg', '2023-07-11 09:14:56', '2023-07-11 09:14:56', 'fayyaz sahb.png', '<h2><strong>Finance Director,</strong></h2>\r\n\r\n<p><strong>Kashif</strong></p>', 'Quotation', 'Sale Inoice by', 'Delivery Note', 'Credit Note', 'Purchase Bill', 'Debit Note');

-- --------------------------------------------------------

--
-- Table structure for table `estimate_detail`
--

CREATE TABLE `estimate_detail` (
  `EstimateDetailID` int NOT NULL,
  `EstimateMasterID` int NOT NULL,
  `EstimateNo` varchar(10) DEFAULT NULL,
  `EstimateDate` date DEFAULT NULL,
  `ItemID` int DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Qty` int DEFAULT NULL,
  `Rate` double(8,2) DEFAULT NULL,
  `Discount` double(12,2) DEFAULT NULL,
  `DiscountType` double(12,2) DEFAULT NULL,
  `TaxPer` double(8,2) DEFAULT NULL,
  `Tax` double(8,2) DEFAULT NULL,
  `Total` double(8,2) DEFAULT NULL,
  `Gross` double(12,2) DEFAULT NULL,
  `DiscountAmountItem` double(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `estimate_master`
--

CREATE TABLE `estimate_master` (
  `EstimateMasterID` int NOT NULL,
  `EstimateNo` varchar(10) DEFAULT NULL,
  `PartyID` int DEFAULT NULL,
  `WalkinCustomerName` varchar(55) DEFAULT NULL,
  `PlaceOfSupply` varchar(25) DEFAULT NULL,
  `ReferenceNo` varchar(25) DEFAULT NULL,
  `TaxType` varchar(155) DEFAULT NULL,
  `EstimateDate` date DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `ExpiryDate` date DEFAULT NULL,
  `SubTotal` double(8,2) DEFAULT NULL,
  `TaxPer` double(8,2) DEFAULT NULL,
  `Tax` double(8,2) DEFAULT NULL,
  `Total` double(8,2) DEFAULT NULL,
  `DiscountPer` double(8,2) DEFAULT NULL,
  `Discount` double(8,2) DEFAULT NULL,
  `Shipping` double(8,2) DEFAULT NULL,
  `GrandTotal` double(8,2) DEFAULT NULL,
  `CustomerNotes` varchar(255) DEFAULT NULL,
  `DescriptionNotes` varchar(255) DEFAULT NULL,
  `TermAndCondition` varchar(255) DEFAULT NULL,
  `File` varchar(75) DEFAULT NULL,
  `UserID` int DEFAULT NULL,
  `Subject` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expense_detail`
--

CREATE TABLE `expense_detail` (
  `ExpenseDetailID` int NOT NULL,
  `ExpenseMasterID` int DEFAULT NULL,
  `ChartOfAccountID` int DEFAULT NULL,
  `Notes` varchar(255) DEFAULT NULL,
  `TaxPer` double(8,2) DEFAULT NULL,
  `Tax` double(8,2) DEFAULT NULL,
  `Amount` double(8,2) DEFAULT NULL,
  `Date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expense_master`
--

CREATE TABLE `expense_master` (
  `ExpenseMasterID` int NOT NULL,
  `ExpenseNo` varchar(55) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `ChartOfAccountID` int DEFAULT NULL,
  `SupplierID` int DEFAULT NULL,
  `ReferenceNo` varchar(55) DEFAULT NULL,
  `Tax` double(8,2) DEFAULT NULL,
  `GrantTotal` double(8,2) DEFAULT NULL,
  `Paid` double(8,2) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_detail`
--

CREATE TABLE `invoice_detail` (
  `InvoiceDetailID` int NOT NULL,
  `InvoiceMasterID` int DEFAULT NULL,
  `InvoiceNo` varchar(10) DEFAULT NULL,
  `ItemID` int DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `SupplierID` int DEFAULT NULL,
  `PartyID` int DEFAULT NULL,
  `Qty` int DEFAULT NULL,
  `Weight` varchar(255) DEFAULT NULL,
  `Freight` varchar(255) DEFAULT NULL,
  `Rate` double(8,2) DEFAULT NULL,
  `TaxPer` double(8,2) DEFAULT NULL,
  `Tax` double(8,2) DEFAULT NULL,
  `Discount` double(8,2) DEFAULT NULL,
  `DiscountType` double(8,2) DEFAULT NULL,
  `DiscountAmountItem` double(8,2) DEFAULT NULL,
  `Gross` double(8,2) DEFAULT NULL,
  `Total` double(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_master`
--

CREATE TABLE `invoice_master` (
  `InvoiceMasterID` int NOT NULL,
  `InvoiceNo` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `InvoiceType` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `TrackingNumber` varchar(255) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Destination` varchar(255) DEFAULT NULL,
  `Pcs` varchar(255) DEFAULT NULL,
  `TotalWeight` varchar(255) DEFAULT NULL,
  `DueDate` date DEFAULT NULL,
  `PartyID` int DEFAULT NULL,
  `ReceiverName` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `ReceiverAddress` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `ReceiverMob` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `WalkinCustomerName` varchar(155) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `SupplierID` int DEFAULT NULL,
  `ReferenceNo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `UserID` int DEFAULT NULL,
  `PaymentMode` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `PaymentDetails` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `Subject` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `TaxType` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `DescriptionNotes` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `CustomerNotes` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `SubTotal` double(8,2) DEFAULT NULL,
  `DiscountPer` double(8,2) DEFAULT NULL,
  `Total` double(8,2) DEFAULT NULL,
  `DiscountAmount` double(8,2) DEFAULT NULL,
  `TaxPer` double(8,2) DEFAULT NULL,
  `Tax` double(8,2) DEFAULT NULL,
  `Shipping` double(8,2) DEFAULT NULL,
  `DocumentFees` double(8,2) DEFAULT NULL,
  `Insurance` double(8,2) DEFAULT NULL,
  `PackingFee` double(8,2) DEFAULT NULL,
  `TransportationCharges` double(8,2) DEFAULT NULL,
  `TotalVat` double(8,2) DEFAULT NULL,
  `GrandTotal` double(8,2) DEFAULT NULL,
  `Paid` double(8,2) DEFAULT NULL,
  `Balance` double(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_type`
--

CREATE TABLE `invoice_type` (
  `InvoiceTypeID` int NOT NULL,
  `InvoiceType` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_type`
--

INSERT INTO `invoice_type` (`InvoiceTypeID`, `InvoiceType`) VALUES
(1, 'Tax Invoice'),
(2, 'Invoice'),
(3, 'Proforma Invoice');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `ItemID` int NOT NULL,
  `ItemType` varchar(55) DEFAULT NULL,
  `ItemCode` varchar(5) DEFAULT NULL,
  `ItemName` varchar(55) DEFAULT NULL,
  `UnitName` varchar(10) DEFAULT NULL,
  `Taxable` varchar(10) DEFAULT NULL,
  `Percentage` double(8,2) DEFAULT NULL,
  `CostPrice` double(8,2) DEFAULT NULL,
  `CostChartofAccountID` int DEFAULT NULL,
  `CostDescription` varchar(255) DEFAULT NULL,
  `SellingPrice` double(8,2) DEFAULT NULL,
  `SellingChartofAccountID` int DEFAULT NULL,
  `SellingDescription` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`ItemID`, `ItemType`, `ItemCode`, `ItemName`, `UnitName`, `Taxable`, `Percentage`, `CostPrice`, `CostChartofAccountID`, `CostDescription`, `SellingPrice`, `SellingChartofAccountID`, `SellingDescription`) VALUES
(22, NULL, NULL, 'Box 1', NULL, 'No', NULL, 0.00, NULL, NULL, 0.00, NULL, NULL),
(23, NULL, NULL, 'Box 2', NULL, 'No', NULL, 0.00, NULL, NULL, 0.00, NULL, NULL),
(24, NULL, NULL, 'Box 3', NULL, 'No', NULL, 0.00, NULL, NULL, 0.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `journal`
--

CREATE TABLE `journal` (
  `JournalID` int NOT NULL,
  `VHNO` varchar(15) DEFAULT NULL,
  `JournalType` varchar(10) DEFAULT NULL,
  `ChartOfAccountID` int DEFAULT NULL,
  `PartyID` int DEFAULT NULL,
  `SupplierID` int DEFAULT NULL,
  `VoucherMstID` int DEFAULT NULL,
  `PettyMstID` int DEFAULT NULL,
  `InvoiceMasterID` int DEFAULT NULL,
  `ExpenseMasterID` int DEFAULT NULL,
  `PaymentMasterID` int DEFAULT NULL,
  `PurchasePaymentMasterID` int DEFAULT NULL,
  `Narration` varchar(255) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Dr` double(10,2) DEFAULT NULL,
  `Cr` double(10,2) DEFAULT NULL,
  `Trace` decimal(10,0) DEFAULT NULL,
  `BankReconcile` varchar(15) DEFAULT NULL,
  `ReconcileDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `journal`
--

INSERT INTO `journal` (`JournalID`, `VHNO`, `JournalType`, `ChartOfAccountID`, `PartyID`, `SupplierID`, `VoucherMstID`, `PettyMstID`, `InvoiceMasterID`, `ExpenseMasterID`, `PaymentMasterID`, `PurchasePaymentMasterID`, `Narration`, `Date`, `Dr`, `Cr`, `Trace`, `BankReconcile`, `ReconcileDate`) VALUES
(1174, 'JV22010002', 'JV', 130400, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-23', 15000.00, NULL, NULL, NULL, NULL),
(1175, 'JV22010002', 'JV', 210403, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-23', NULL, 15000.00, NULL, NULL, NULL),
(1176, 'JV22010003', 'JV', 550115, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 'processing fee for tenancy contract', '2022-01-31', 41.67, NULL, NULL, NULL, NULL),
(1177, 'JV22010003', 'JV', 130400, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-31', NULL, 41.67, NULL, NULL, NULL),
(1206, 'JV22010004', 'JV', 310205, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-01', 500000.00, NULL, NULL, NULL, NULL),
(1207, 'JV22010004', 'JV', 300100, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-01', NULL, 500000.00, NULL, NULL, NULL),
(1208, 'JV22010005', 'JV', 550115, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-07', 263.75, NULL, NULL, NULL, NULL),
(1209, 'JV22010005', 'JV', 210403, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-07', NULL, 263.75, NULL, NULL, NULL),
(1210, 'JV22010006', 'JV', 130300, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-08', 17640.00, NULL, NULL, NULL, NULL),
(1211, 'JV22010006', 'JV', 560110, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-08', 21.00, NULL, NULL, NULL, NULL),
(1212, 'JV22010006', 'JV', 210403, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-08', NULL, 17661.00, NULL, NULL, NULL),
(1213, 'JV22010007', 'JV', 120227, NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL, 'with AED 500 discount', '2022-02-08', 2500.00, NULL, NULL, NULL, NULL),
(1214, 'JV22010007', 'JV', 200100, NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-08', NULL, 2500.00, NULL, NULL, NULL),
(1223, 'JV22010010', 'JV', 120227, NULL, NULL, 25, NULL, NULL, NULL, NULL, NULL, 'with AED 20 discount', '2022-02-11', 5800.00, NULL, NULL, NULL, NULL),
(1224, 'JV22010010', 'JV', 200100, NULL, NULL, 25, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-11', NULL, 5800.00, NULL, NULL, NULL),
(1225, 'JV22010011', 'JV', 210403, NULL, NULL, 26, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-16', 20000.00, NULL, NULL, NULL, NULL),
(1226, 'JV22010011', 'JV', 200100, NULL, NULL, 26, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-16', NULL, 20000.00, NULL, NULL, NULL),
(1231, 'JV22010014', 'JV', 510661, NULL, NULL, 29, NULL, NULL, NULL, NULL, NULL, 'staff', '2022-02-28', 15960.00, NULL, NULL, NULL, NULL),
(1232, 'JV22010014', 'JV', 510661, NULL, NULL, 29, NULL, NULL, NULL, NULL, NULL, 'Mr. Babar', '2022-02-28', 8000.00, NULL, NULL, NULL, NULL),
(1233, 'JV22010014', 'JV', 200300, NULL, NULL, 29, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-28', NULL, 23960.00, NULL, NULL, NULL),
(1239, 'JV22010016', 'JV', 550240, NULL, NULL, 31, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-28', 5000.00, NULL, NULL, NULL, NULL),
(1240, 'JV22010016', 'JV', 130400, NULL, NULL, 31, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-28', NULL, 5041.67, NULL, NULL, NULL),
(1241, 'JV22010016', 'JV', 550115, NULL, NULL, 31, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-28', 1647.50, NULL, NULL, NULL, NULL),
(1242, 'JV22010016', 'JV', 130300, NULL, NULL, 31, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-28', NULL, 1647.50, NULL, NULL, NULL),
(1251, 'JV22100018', 'JV', 120227, NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-01', 2150.00, NULL, NULL, NULL, NULL),
(1252, 'JV22100018', 'JV', 210403, NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-01', NULL, 2150.00, NULL, NULL, NULL),
(1253, 'JV22100019', 'JV', 510400, NULL, NULL, 34, NULL, NULL, NULL, NULL, NULL, 'indeed', '2022-03-04', 124.49, NULL, NULL, NULL, NULL),
(1254, 'JV22100019', 'JV', 210403, NULL, NULL, 34, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-04', NULL, 124.49, NULL, NULL, NULL),
(1262, 'JV22100021', 'JV', 510661, NULL, NULL, 36, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31', 2100.00, NULL, NULL, NULL, NULL),
(1263, 'JV22100021', 'JV', 210403, NULL, NULL, 36, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31', NULL, 2050.00, NULL, NULL, NULL),
(1264, 'JV22100021', 'JV', 200200, NULL, NULL, 36, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31', NULL, 50.00, NULL, NULL, NULL),
(1272, 'JV22100023', 'JV', 510661, NULL, NULL, 38, NULL, NULL, NULL, NULL, NULL, 'Ayoub 6 days', '2022-03-31', 612.50, NULL, NULL, NULL, NULL),
(1273, 'JV22100023', 'JV', 510661, NULL, NULL, 38, NULL, NULL, NULL, NULL, NULL, 'Achraf 5 days', '2022-03-31', 562.50, NULL, NULL, NULL, NULL),
(1274, 'JV22100023', 'JV', 510661, NULL, NULL, 38, NULL, NULL, NULL, NULL, NULL, 'Ashique 2 days', '2022-03-31', 200.00, NULL, NULL, NULL, NULL),
(1275, 'JV22100023', 'JV', 200300, NULL, NULL, 38, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31', NULL, 1375.00, NULL, NULL, NULL),
(1278, 'JV22100025', 'JV', 510661, NULL, NULL, 40, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31', 3116.66, NULL, NULL, NULL, NULL),
(1279, 'JV22100025', 'JV', 510661, NULL, NULL, 40, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31', 650.00, NULL, NULL, NULL, NULL),
(1280, 'JV22100025', 'JV', 510661, NULL, NULL, 40, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31', 900.00, NULL, NULL, NULL, NULL),
(1281, 'JV22100025', 'JV', 200300, NULL, NULL, 40, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31', NULL, 4666.66, NULL, NULL, NULL),
(1293, 'JV22100029', 'JV', 550115, NULL, NULL, 44, NULL, NULL, NULL, NULL, NULL, 'processing of tenancy contract', '2022-03-31', 41.67, NULL, NULL, NULL, NULL),
(1294, 'JV22100029', 'JV', 550240, NULL, NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31', 5000.00, NULL, NULL, NULL, NULL),
(1295, 'JV22100029', 'JV', 550340, NULL, NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31', 26.25, NULL, NULL, NULL, NULL),
(1296, 'JV22100029', 'JV', 130400, NULL, NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31', NULL, 5067.92, NULL, NULL, NULL),
(1297, 'JV22100029', 'JV', 550115, NULL, NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31', 1647.50, NULL, NULL, NULL, NULL),
(1298, 'JV22100029', 'JV', 130300, NULL, NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31', NULL, 1647.50, NULL, NULL, NULL),
(1299, 'JV22100030', 'JV', 510661, NULL, NULL, 45, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31', 600.00, NULL, NULL, NULL, NULL),
(1300, 'JV22100030', 'JV', 200300, NULL, NULL, 45, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31', NULL, 600.00, NULL, NULL, NULL),
(1303, 'JV22100032', 'JV', 130400, NULL, NULL, 47, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31', 5145.00, NULL, NULL, NULL, NULL),
(1304, 'JV22100032', 'JV', 210403, NULL, NULL, 47, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31', NULL, 5145.00, NULL, NULL, NULL),
(1318, 'JV22100036', 'JV', 210403, NULL, NULL, 51, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-11', 43097.00, NULL, NULL, NULL, NULL),
(1319, 'JV22100036', 'JV', 200100, NULL, NULL, 51, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-11', NULL, 43097.00, NULL, NULL, NULL),
(1320, 'JV22100037', 'JV', 111300, NULL, NULL, 52, NULL, NULL, NULL, NULL, NULL, 'Anne', '2022-04-12', 4500.00, NULL, NULL, NULL, NULL),
(1321, 'JV22100037', 'JV', 210403, NULL, NULL, 52, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-12', NULL, 4500.00, NULL, NULL, NULL),
(1326, 'JV22100040', 'JV', 200300, NULL, NULL, 55, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-27', 1375.00, NULL, NULL, NULL, NULL),
(1327, 'JV22100040', 'JV', 200300, NULL, NULL, 55, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-27', 2075.00, NULL, NULL, NULL, NULL),
(1328, 'JV22100040', 'JV', 210403, NULL, NULL, 55, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-27', NULL, 3450.00, NULL, NULL, NULL),
(1329, 'JV22100041', 'JV', 120327, NULL, NULL, 56, NULL, NULL, NULL, NULL, NULL, 'Iphone 13 PRO', '2022-10-15', 4199.00, NULL, NULL, NULL, NULL),
(1330, 'JV22100041', 'JV', 210403, NULL, NULL, 56, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-15', NULL, 4199.00, NULL, NULL, NULL),
(1331, 'JV22100042', 'JV', 510400, NULL, NULL, 57, NULL, NULL, NULL, NULL, NULL, 'Leads expense', '2022-04-29', 1500.00, NULL, NULL, NULL, NULL),
(1332, 'JV22100042', 'JV', 210403, NULL, NULL, 57, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-29', NULL, 1500.00, NULL, NULL, NULL),
(1333, 'JV22100043', 'JV', 550340, NULL, NULL, 58, NULL, NULL, NULL, NULL, NULL, '10 booklets PV', '2022-04-29', 210.00, NULL, NULL, NULL, NULL),
(1334, 'JV22100043', 'JV', 200200, NULL, NULL, 58, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-29', NULL, 210.00, NULL, NULL, NULL),
(1335, 'JV22100044', 'JV', 510661, NULL, NULL, 59, NULL, NULL, NULL, NULL, NULL, 'Ayoub salary', '2022-04-30', 337.50, NULL, NULL, NULL, NULL),
(1336, 'JV22100044', 'JV', 510661, NULL, NULL, 59, NULL, NULL, NULL, NULL, NULL, 'Achraf', '2022-04-30', 337.50, NULL, NULL, NULL, NULL),
(1337, 'JV22100044', 'JV', 510661, NULL, NULL, 59, NULL, NULL, NULL, NULL, NULL, 'Adnan', '2022-04-30', 1400.00, NULL, NULL, NULL, NULL),
(1338, 'JV22100044', 'JV', 200300, NULL, NULL, 59, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-30', NULL, 2075.00, NULL, NULL, NULL),
(1352, 'JV22100046', 'JV', 550740, NULL, NULL, 61, NULL, NULL, NULL, NULL, NULL, 'DU Expense', '2022-04-30', 3113.29, NULL, NULL, NULL, NULL),
(1353, 'JV22100046', 'JV', 210403, NULL, NULL, 61, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-30', NULL, 3113.29, NULL, NULL, NULL),
(1354, 'JV22100047', 'JV', 520100, NULL, NULL, 62, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-30', 1265.38, NULL, NULL, NULL, NULL),
(1355, 'JV22100047', 'JV', 112000, NULL, NULL, 62, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-30', NULL, 1035.91, NULL, NULL, NULL),
(1356, 'JV22100047', 'JV', 111700, NULL, NULL, 62, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-30', NULL, 229.47, NULL, NULL, NULL),
(1357, 'JV22100048', 'JV', 550115, NULL, NULL, 63, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-30', 41.67, NULL, NULL, NULL, NULL),
(1358, 'JV22100048', 'JV', 550240, NULL, NULL, 63, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-30', 5000.00, NULL, NULL, NULL, NULL),
(1359, 'JV22100048', 'JV', 550340, NULL, NULL, 63, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-30', 26.25, NULL, NULL, NULL, NULL),
(1360, 'JV22100048', 'JV', 500700, NULL, NULL, 63, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-30', 185.93, NULL, NULL, NULL, NULL),
(1361, 'JV22100048', 'JV', 130400, NULL, NULL, 63, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-30', NULL, 5253.85, NULL, NULL, NULL),
(1362, 'JV22100049', 'JV', 550115, NULL, NULL, 64, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-30', 1647.50, NULL, NULL, NULL, NULL),
(1363, 'JV22100049', 'JV', 130300, NULL, NULL, 64, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-30', NULL, 1647.50, NULL, NULL, NULL),
(1364, 'JV22100050', 'JV', 551140, NULL, NULL, 65, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-30', 1142.05, NULL, NULL, NULL, NULL),
(1365, 'JV22100050', 'JV', 220100, NULL, NULL, 65, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-30', NULL, 1142.05, NULL, NULL, NULL),
(1374, 'JV22100052', 'JV', 550740, NULL, NULL, 67, NULL, NULL, NULL, NULL, NULL, 'Etisalat', '2022-04-30', 13012.19, NULL, NULL, NULL, NULL),
(1375, 'JV22100052', 'JV', 200700, NULL, NULL, 67, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-30', NULL, 13012.19, NULL, NULL, NULL),
(1376, 'JV22100053', 'JV', 510661, NULL, NULL, 68, NULL, NULL, NULL, NULL, NULL, 'Sangeen', '2022-10-15', 981.50, NULL, NULL, NULL, NULL),
(1377, 'JV22100053', 'JV', 500500, NULL, NULL, 68, NULL, NULL, NULL, NULL, NULL, 'Eaz Uddin', '2022-10-15', 650.00, NULL, NULL, NULL, NULL),
(1378, 'JV22100053', 'JV', 500500, NULL, NULL, 68, NULL, NULL, NULL, NULL, NULL, 'Zac', '2022-10-15', 370.00, NULL, NULL, NULL, NULL),
(1379, 'JV22100053', 'JV', 510661, NULL, NULL, 68, NULL, NULL, NULL, NULL, NULL, 'Seema', '2022-10-15', 133.25, NULL, NULL, NULL, NULL),
(1380, 'JV22100053', 'JV', 510661, NULL, NULL, 68, NULL, NULL, NULL, NULL, NULL, 'Oladapo march adjustment', '2022-10-15', 433.00, NULL, NULL, NULL, NULL),
(1381, 'JV22100053', 'JV', 200300, NULL, NULL, 68, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-15', NULL, 2567.75, NULL, NULL, NULL),
(1382, 'JV22100054', 'JV', 112200, NULL, NULL, 69, NULL, NULL, NULL, NULL, NULL, 'Jayson', '2022-04-05', 3000.00, NULL, NULL, NULL, NULL),
(1383, 'JV22100054', 'JV', 200200, NULL, NULL, 69, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-05', NULL, 3000.00, NULL, NULL, NULL),
(1384, 'JV22100055', 'JV', 120227, NULL, NULL, 70, NULL, NULL, NULL, NULL, NULL, '3CX phone system 64SC', '2022-05-11', 13547.10, NULL, NULL, NULL, NULL),
(1385, 'JV22100055', 'JV', 210403, NULL, NULL, 70, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-11', NULL, 13547.10, NULL, NULL, NULL),
(1386, 'JV22100056', 'JV', 200300, NULL, NULL, 71, NULL, NULL, NULL, NULL, NULL, 'Salary for the month April 2022', '2022-10-15', 108375.48, NULL, NULL, NULL, NULL),
(1387, 'JV22100056', 'JV', 111300, NULL, NULL, 71, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-15', 17000.00, NULL, NULL, NULL, NULL),
(1388, 'JV22100056', 'JV', 550000, NULL, NULL, 71, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-15', 0.02, NULL, NULL, NULL, NULL),
(1389, 'JV22100056', 'JV', 210403, NULL, NULL, 71, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-15', NULL, 125375.50, NULL, NULL, NULL),
(1390, 'JV22100057', 'JV', 500600, NULL, NULL, 72, NULL, NULL, NULL, NULL, NULL, 'Yacht Party', '2022-05-13', 5800.00, NULL, NULL, NULL, NULL),
(1391, 'JV22100057', 'JV', 210403, NULL, NULL, 72, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-13', NULL, 5800.00, NULL, NULL, NULL),
(1392, 'JV22100058', 'JV', 200700, NULL, NULL, 73, NULL, NULL, NULL, NULL, NULL, 'Etisalat', '2022-05-14', 26167.46, NULL, NULL, NULL, NULL),
(1393, 'JV22100058', 'JV', 210403, NULL, NULL, 73, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-14', NULL, 26167.46, NULL, NULL, NULL),
(1394, 'JV22100059', 'JV', 112300, NULL, NULL, 74, NULL, NULL, NULL, NULL, NULL, 'May July Office rent', '2022-10-15', 15000.00, NULL, NULL, NULL, NULL),
(1395, 'JV22100059', 'JV', 210403, NULL, NULL, 74, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-15', NULL, 15000.00, NULL, NULL, NULL),
(1396, 'JV22100060', 'JV', 111300, NULL, NULL, 75, NULL, NULL, NULL, NULL, NULL, 'loan of Allianz from FMM for staff visa', '2022-05-20', 7000.00, NULL, NULL, NULL, NULL),
(1397, 'JV22100060', 'JV', 200200, NULL, NULL, 75, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20', NULL, 7000.00, NULL, NULL, NULL),
(1400, 'JV22100062', 'JV', 200300, NULL, NULL, 77, NULL, NULL, NULL, NULL, NULL, 'April 2022 payroll adjustment', '2022-05-26', 2567.75, NULL, NULL, NULL, NULL),
(1401, 'JV22100062', 'JV', 510761, NULL, NULL, 77, NULL, NULL, NULL, NULL, NULL, 'medicine milk sugar', '2022-05-26', 282.94, NULL, NULL, NULL, NULL),
(1402, 'JV22100062', 'JV', 112200, NULL, NULL, 77, NULL, NULL, NULL, NULL, NULL, 'Jason Toledo', '2022-05-26', 2000.00, NULL, NULL, NULL, NULL),
(1403, 'JV22100062', 'JV', 500600, NULL, NULL, 77, NULL, NULL, NULL, NULL, NULL, 'drink for staff yacht party', '2022-05-26', 773.69, NULL, NULL, NULL, NULL),
(1404, 'JV22100062', 'JV', 111300, NULL, NULL, 77, NULL, NULL, NULL, NULL, NULL, 'Anne for 3 staff', '2022-05-26', 13500.00, NULL, NULL, NULL, NULL),
(1405, 'JV22100062', 'JV', 200300, NULL, NULL, 77, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-26', 600.00, NULL, NULL, NULL, NULL),
(1406, 'JV22100062', 'JV', 500600, NULL, NULL, 77, NULL, NULL, NULL, NULL, NULL, 'food for staff yacht party', '2022-05-26', 1231.00, NULL, NULL, NULL, NULL),
(1407, 'JV22100062', 'JV', 111300, NULL, NULL, 77, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-26', NULL, 20955.38, NULL, NULL, NULL),
(1408, 'JV22100063', 'JV', 550740, NULL, NULL, 78, NULL, NULL, NULL, NULL, NULL, 'DU for the month April 2022', '2022-05-31', 3054.81, NULL, NULL, NULL, NULL),
(1409, 'JV22100063', 'JV', 200700, NULL, NULL, 78, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31', NULL, 3054.81, NULL, NULL, NULL),
(1410, 'JV22100064', 'JV', 150200, NULL, NULL, 79, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31', 4750.72, NULL, NULL, NULL, NULL),
(1411, 'JV22100064', 'JV', 112200, NULL, NULL, 79, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31', 700.00, NULL, NULL, NULL, NULL),
(1412, 'JV22100064', 'JV', 112100, NULL, NULL, 79, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31', NULL, 4500.00, NULL, NULL, NULL),
(1413, 'JV22100064', 'JV', 210102, NULL, NULL, 79, NULL, NULL, NULL, NULL, NULL, 'Anne', '2022-05-31', NULL, 950.72, NULL, NULL, NULL),
(1414, 'JV22050065', 'JV', 150200, NULL, NULL, 80, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31', 4783.65, NULL, NULL, NULL, NULL),
(1415, 'JV22050065', 'JV', 112100, NULL, NULL, 80, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31', NULL, 4500.00, NULL, NULL, NULL),
(1416, 'JV22050065', 'JV', 210102, NULL, NULL, 80, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31', NULL, 283.65, NULL, NULL, NULL),
(1417, 'JV22100066', 'JV', 150200, NULL, NULL, 81, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31', 4021.07, NULL, NULL, NULL, NULL),
(1418, 'JV22100066', 'JV', 210403, NULL, NULL, 81, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31', 1879.00, NULL, NULL, NULL, NULL),
(1419, 'JV22100066', 'JV', 112100, NULL, NULL, 81, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31', NULL, 4500.00, NULL, NULL, NULL),
(1420, 'JV22100066', 'JV', 210102, NULL, NULL, 81, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31', NULL, 1400.07, NULL, NULL, NULL),
(1421, 'JV22100067', 'JV', 150200, NULL, NULL, 82, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31', 4583.65, NULL, NULL, NULL, NULL),
(1422, 'JV22100067', 'JV', 112100, NULL, NULL, 82, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31', NULL, 4500.00, NULL, NULL, NULL),
(1423, 'JV22100067', 'JV', 210102, NULL, NULL, 82, NULL, NULL, NULL, NULL, NULL, 'Anne', '2022-05-31', NULL, 83.65, NULL, NULL, NULL),
(1424, 'JV22100068', 'JV', 550740, NULL, NULL, 83, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31', 10300.55, NULL, NULL, NULL, NULL),
(1425, 'JV22100068', 'JV', 200700, NULL, NULL, 83, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31', NULL, 10300.55, NULL, NULL, NULL),
(1426, 'JV22100069', 'JV', 550740, NULL, NULL, 84, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31', 18657.28, NULL, NULL, NULL, NULL),
(1427, 'JV22100069', 'JV', 200700, NULL, NULL, 84, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31', NULL, 18657.28, NULL, NULL, NULL),
(1428, 'JV22100070', 'JV', 510400, NULL, NULL, 85, NULL, NULL, NULL, NULL, NULL, 'April 29, 2022', '2022-05-31', 1500.00, NULL, NULL, NULL, NULL),
(1429, 'JV22100070', 'JV', 510400, NULL, NULL, 85, NULL, NULL, NULL, NULL, NULL, 'May 2, 2022', '2022-05-31', 3000.00, NULL, NULL, NULL, NULL),
(1430, 'JV22100070', 'JV', 510400, NULL, NULL, 85, NULL, NULL, NULL, NULL, NULL, 'May 17, 2022', '2022-05-31', 3000.00, NULL, NULL, NULL, NULL),
(1431, 'JV22100070', 'JV', 510400, NULL, NULL, 85, NULL, NULL, NULL, NULL, NULL, 'May 21, 2022', '2022-05-31', 6300.00, NULL, NULL, NULL, NULL),
(1432, 'JV22100070', 'JV', 210403, NULL, NULL, 85, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31', NULL, 13800.00, NULL, NULL, NULL),
(1433, 'JV22100071', 'JV', 510661, NULL, NULL, 86, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31', 1200.00, NULL, NULL, NULL, NULL),
(1434, 'JV22100071', 'JV', 200300, NULL, NULL, 86, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31', NULL, 1200.00, NULL, NULL, NULL),
(1435, 'JV22100072', 'JV', 510661, NULL, NULL, 87, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31', 1466.00, NULL, NULL, NULL, NULL),
(1436, 'JV22100072', 'JV', 500500, NULL, NULL, 87, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31', 200.00, NULL, NULL, NULL, NULL),
(1437, 'JV22100072', 'JV', 200300, NULL, NULL, 87, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31', NULL, 1666.00, NULL, NULL, NULL),
(1438, 'JV22100073', 'JV', 510661, NULL, NULL, 88, NULL, NULL, NULL, NULL, NULL, 'Jade Albern Buendia', '2022-05-31', 816.67, NULL, NULL, NULL, NULL),
(1439, 'JV22100073', 'JV', 510661, NULL, NULL, 88, NULL, NULL, NULL, NULL, NULL, 'Ngonzi, Phionah', '2022-05-31', 500.00, NULL, NULL, NULL, NULL),
(1440, 'JV22100073', 'JV', 200300, NULL, NULL, 88, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31', NULL, 1316.67, NULL, NULL, NULL),
(1441, 'JV22100074', 'JV', 510661, NULL, NULL, 89, NULL, NULL, NULL, NULL, NULL, 'staff', '2022-05-31', 77533.33, NULL, NULL, NULL, NULL),
(1442, 'JV22100074', 'JV', 510661, NULL, NULL, 89, NULL, NULL, NULL, NULL, NULL, 'Mr. Babar', '2022-05-31', 8000.00, NULL, NULL, NULL, NULL),
(1443, 'JV22100074', 'JV', 500500, NULL, NULL, 89, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31', 24254.91, NULL, NULL, NULL, NULL),
(1444, 'JV22100074', 'JV', 112200, NULL, NULL, 89, NULL, NULL, NULL, NULL, NULL, 'Jason Toledo', '2022-05-31', NULL, 7805.00, NULL, NULL, NULL),
(1445, 'JV22100074', 'JV', 112200, NULL, NULL, 89, NULL, NULL, NULL, NULL, NULL, 'Sangeen', '2022-05-31', NULL, 500.00, NULL, NULL, NULL),
(1446, 'JV22100074', 'JV', 112200, NULL, NULL, 89, NULL, NULL, NULL, NULL, NULL, 'Pheona', '2022-05-31', NULL, 500.00, NULL, NULL, NULL),
(1447, 'JV22100074', 'JV', 112200, NULL, NULL, 89, NULL, NULL, NULL, NULL, NULL, 'Isaac', '2022-05-31', NULL, 1000.00, NULL, NULL, NULL),
(1448, 'JV22100074', 'JV', 200300, NULL, NULL, 89, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31', NULL, 99983.24, NULL, NULL, NULL),
(1449, 'JV22100075', 'JV', 550115, NULL, NULL, 90, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31', 1647.50, NULL, NULL, NULL, NULL),
(1450, 'JV22100075', 'JV', 130300, NULL, NULL, 90, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31', NULL, 1647.50, NULL, NULL, NULL),
(1451, 'JV22100075', 'JV', 550240, NULL, NULL, 90, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31', 5000.00, NULL, NULL, NULL, NULL),
(1452, 'JV22100075', 'JV', 112300, NULL, NULL, 90, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31', NULL, 5000.00, NULL, NULL, NULL),
(1453, 'JV22100075', 'JV', 560211, NULL, NULL, 90, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31', 1398.92, NULL, NULL, NULL, NULL),
(1454, 'JV22100075', 'JV', 150200, NULL, NULL, 90, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31', NULL, 1398.92, NULL, NULL, NULL),
(1455, 'JV22100075', 'JV', 550115, NULL, NULL, 90, NULL, NULL, NULL, NULL, NULL, 'processing fee for tenancy contract', '2022-05-31', 41.67, NULL, NULL, NULL, NULL),
(1456, 'JV22100075', 'JV', 550340, NULL, NULL, 90, NULL, NULL, NULL, NULL, NULL, 'letter head', '2022-05-31', 26.25, NULL, NULL, NULL, NULL),
(1457, 'JV22100075', 'JV', 500700, NULL, NULL, 90, NULL, NULL, NULL, NULL, NULL, 'insurance of Mr. Babar', '2022-05-31', 185.94, NULL, NULL, NULL, NULL),
(1458, 'JV22100075', 'JV', 140400, NULL, NULL, 90, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31', NULL, 253.86, NULL, NULL, NULL),
(1459, 'JV22100076', 'JV', 520100, NULL, NULL, 91, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31', 1491.16, NULL, NULL, NULL, NULL),
(1460, 'JV22100076', 'JV', 112000, NULL, NULL, 91, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31', NULL, 1035.91, NULL, NULL, NULL),
(1461, 'JV22100076', 'JV', 111700, NULL, NULL, 91, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31', NULL, 455.25, NULL, NULL, NULL),
(1462, 'JV22100077', 'JV', 550540, NULL, NULL, 92, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31', 1193.18, NULL, NULL, NULL, NULL),
(1463, 'JV22100077', 'JV', 220100, NULL, NULL, 92, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31', NULL, 1224.68, NULL, NULL, NULL),
(1464, 'JV22100077', 'JV', 550540, NULL, NULL, 92, NULL, NULL, NULL, NULL, NULL, 'April 2022 adjustment', '2022-05-31', 31.50, NULL, NULL, NULL, NULL),
(1465, 'JV22100078', 'JV', 510400, NULL, NULL, 93, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-02', 115.70, NULL, NULL, NULL, NULL),
(1466, 'JV22100078', 'JV', 210403, NULL, NULL, 93, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-02', NULL, 115.70, NULL, NULL, NULL),
(1467, 'JV22100079', 'JV', 112200, NULL, NULL, 94, NULL, NULL, NULL, NULL, NULL, 'Sangeen Amin', '2022-06-03', 500.00, NULL, NULL, NULL, NULL),
(1468, 'JV22100079', 'JV', 111300, NULL, NULL, 94, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-03', NULL, 500.00, NULL, NULL, NULL),
(1469, 'JV22100080', 'JV', 510400, NULL, NULL, 95, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-06', 4200.00, NULL, NULL, NULL, NULL),
(1470, 'JV22100080', 'JV', 210403, NULL, NULL, 95, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-06', NULL, 4200.00, NULL, NULL, NULL),
(1471, 'JV22100081', 'JV', 112200, NULL, NULL, 96, NULL, NULL, NULL, NULL, NULL, 'D\'Arcy Barnett', '2022-06-09', 1000.00, NULL, NULL, NULL, NULL),
(1472, 'JV22100081', 'JV', 112200, NULL, NULL, 96, NULL, NULL, NULL, NULL, NULL, 'Nauman Faris', '2022-06-09', 500.00, NULL, NULL, NULL, NULL),
(1473, 'JV22100081', 'JV', 210403, NULL, NULL, 96, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-09', NULL, 1500.00, NULL, NULL, NULL),
(1474, 'JV22100082', 'JV', 200300, NULL, NULL, 97, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-13', 99983.24, NULL, NULL, NULL, NULL),
(1475, 'JV22100082', 'JV', 210403, NULL, NULL, 97, NULL, NULL, NULL, NULL, NULL, 'deposited to his ENBD bank', '2022-05-13', 12000.00, NULL, NULL, NULL, NULL),
(1476, 'JV22100082', 'JV', 111300, NULL, NULL, 97, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-13', 5500.00, NULL, NULL, NULL, NULL),
(1477, 'JV22100082', 'JV', 210403, NULL, NULL, 97, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-13', NULL, 116983.24, NULL, NULL, NULL),
(1478, 'JV22100082', 'JV', 112200, NULL, NULL, 97, NULL, NULL, NULL, NULL, NULL, 'Nauman', '2022-05-13', NULL, 500.00, NULL, NULL, NULL),
(1479, 'JV22100083', 'JV', 112200, NULL, NULL, 98, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-13', 5000.00, NULL, NULL, NULL, NULL),
(1480, 'JV22100083', 'JV', 200200, NULL, NULL, 98, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-13', NULL, 5000.00, NULL, NULL, NULL),
(1481, 'JV22100084', 'JV', 210403, NULL, NULL, 99, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-14', 38850.00, NULL, NULL, NULL, NULL),
(1482, 'JV22100084', 'JV', 200100, NULL, NULL, 99, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-14', NULL, 38850.00, NULL, NULL, NULL),
(1483, 'JV22100085', 'JV', 200300, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-14', 1200.00, NULL, NULL, NULL, NULL),
(1484, 'JV22100085', 'JV', 111300, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-14', NULL, 1200.00, NULL, NULL, NULL),
(1485, 'JV22100086', 'JV', 200300, NULL, NULL, 101, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-14', 1316.67, NULL, NULL, NULL, NULL),
(1486, 'JV22100086', 'JV', 111300, NULL, NULL, 101, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-14', NULL, 1316.67, NULL, NULL, NULL),
(1487, 'JV22100087', 'JV', 200300, NULL, NULL, 102, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-14', 1666.00, NULL, NULL, NULL, NULL),
(1488, 'JV22100087', 'JV', 111300, NULL, NULL, 102, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-14', NULL, 1666.00, NULL, NULL, NULL),
(1489, 'JV22100088', 'JV', 112200, NULL, NULL, 103, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-15', 1000.00, NULL, NULL, NULL, NULL),
(1490, 'JV22100088', 'JV', 111300, NULL, NULL, 103, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-15', NULL, 1000.00, NULL, NULL, NULL),
(1491, 'JV22100089', 'JV', 130300, NULL, NULL, 104, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-25', 4369.11, NULL, NULL, NULL, NULL),
(1492, 'JV22100089', 'JV', 551040, NULL, NULL, 104, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-25', 154.00, NULL, NULL, NULL, NULL),
(1493, 'JV22100089', 'JV', 550000, NULL, NULL, 104, NULL, NULL, NULL, NULL, NULL, 'photocopy and top up', '2022-06-25', 8.00, NULL, NULL, NULL, NULL),
(1494, 'JV22100089', 'JV', 210403, NULL, NULL, 104, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-25', NULL, 2000.00, NULL, NULL, NULL),
(1495, 'JV22100089', 'JV', 210102, NULL, NULL, 104, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-25', NULL, 2531.11, NULL, NULL, NULL),
(1496, 'JV22100090', 'JV', 112200, NULL, NULL, 105, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-25', 500.00, NULL, NULL, NULL, NULL),
(1497, 'JV22100090', 'JV', 200200, NULL, NULL, 105, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-25', NULL, 500.00, NULL, NULL, NULL),
(1498, 'JV22100091', 'JV', 150200, NULL, NULL, 106, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-27', 4802.62, NULL, NULL, NULL, NULL),
(1499, 'JV22100091', 'JV', 112100, NULL, NULL, 106, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-27', NULL, 4500.00, NULL, NULL, NULL),
(1500, 'JV22100091', 'JV', 210102, NULL, NULL, 106, NULL, NULL, NULL, NULL, NULL, 'Anne', '2022-06-27', NULL, 302.62, NULL, NULL, NULL),
(1501, 'JV22100092', 'JV', 150200, NULL, NULL, 107, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-27', 4802.62, NULL, NULL, NULL, NULL),
(1502, 'JV22100092', 'JV', 210102, NULL, NULL, 107, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-27', NULL, 4500.00, NULL, NULL, NULL),
(1503, 'JV22100092', 'JV', 210102, NULL, NULL, 107, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-27', NULL, 302.62, NULL, NULL, NULL),
(1504, 'JV22100093', 'JV', 150200, NULL, NULL, 108, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-27', 5400.22, NULL, NULL, NULL, NULL),
(1505, 'JV22100093', 'JV', 112100, NULL, NULL, 108, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-27', NULL, 4500.00, NULL, NULL, NULL),
(1506, 'JV22100093', 'JV', 210102, NULL, NULL, 108, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-27', NULL, 900.22, NULL, NULL, NULL),
(1507, 'JV22100094', 'JV', 150200, NULL, NULL, 109, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-27', 4783.22, NULL, NULL, NULL, NULL),
(1508, 'JV22100094', 'JV', 112100, NULL, NULL, 109, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-27', NULL, 4500.00, NULL, NULL, NULL),
(1509, 'JV22100094', 'JV', 210102, NULL, NULL, 109, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-27', NULL, 283.22, NULL, NULL, NULL),
(1510, 'JV22100095', 'JV', 111300, NULL, NULL, 110, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-17', 1000.00, NULL, NULL, NULL, NULL),
(1511, 'JV22100095', 'JV', 210403, NULL, NULL, 110, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-17', NULL, 4540.60, NULL, NULL, NULL),
(1512, 'JV22100095', 'JV', 110402, NULL, NULL, 110, NULL, NULL, NULL, NULL, NULL, 'still in GACB bank account', '2022-10-17', 3540.60, NULL, NULL, NULL, NULL),
(1513, 'JV22100096', 'JV', 112100, NULL, NULL, 111, NULL, NULL, NULL, NULL, NULL, 'visa of Mr. Umair', '2022-06-27', 7847.22, NULL, NULL, NULL, NULL),
(1514, 'JV22100096', 'JV', 210102, NULL, NULL, 111, NULL, NULL, NULL, NULL, NULL, 'Anne', '2022-06-27', 7037.78, NULL, NULL, NULL, NULL),
(1515, 'JV22100096', 'JV', 210403, NULL, NULL, 111, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-27', NULL, 14885.00, NULL, NULL, NULL),
(1516, 'JV22100097', 'JV', 510661, NULL, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-28', 1000.00, NULL, NULL, NULL, NULL),
(1517, 'JV22100097', 'JV', 111300, NULL, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-28', NULL, 1000.00, NULL, NULL, NULL),
(1518, 'JV22100098', 'JV', 550540, NULL, NULL, 113, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-30', 1416.17, NULL, NULL, NULL, NULL),
(1519, 'JV22100098', 'JV', 220100, NULL, NULL, 113, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-30', NULL, 1416.17, NULL, NULL, NULL),
(1520, 'JV22100099', 'JV', 500500, NULL, NULL, 114, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-30', 600.00, NULL, NULL, NULL, NULL),
(1521, 'JV22100099', 'JV', 200300, NULL, NULL, 114, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-30', NULL, 600.00, NULL, NULL, NULL),
(1522, 'JV22100100', 'JV', 510661, NULL, NULL, 115, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-30', 83216.00, NULL, NULL, NULL, NULL),
(1523, 'JV22100100', 'JV', 500500, NULL, NULL, 115, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-30', 38337.75, NULL, NULL, NULL, NULL),
(1524, 'JV22100100', 'JV', 112200, NULL, NULL, 115, NULL, NULL, NULL, NULL, NULL, 'Darcy', '2022-06-30', NULL, 2600.00, NULL, NULL, NULL),
(1525, 'JV22100100', 'JV', 510661, NULL, NULL, 115, NULL, NULL, NULL, NULL, NULL, 'Mr. Babar', '2022-06-30', 8000.00, NULL, NULL, NULL, NULL),
(1526, 'JV22100100', 'JV', 200300, NULL, NULL, 115, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-30', NULL, 126953.75, NULL, NULL, NULL),
(1527, 'JV22100101', 'JV', 530110, NULL, NULL, 116, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-30', 808.33, NULL, NULL, NULL, NULL),
(1528, 'JV22100101', 'JV', 530111, NULL, NULL, 116, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-30', 282.92, NULL, NULL, NULL, NULL),
(1529, 'JV22100101', 'JV', 230300, NULL, NULL, 116, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-30', NULL, 808.33, NULL, NULL, NULL),
(1530, 'JV22100101', 'JV', 230400, NULL, NULL, 116, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-30', NULL, 282.92, NULL, NULL, NULL),
(1531, 'JV22100102', 'JV', 550115, NULL, NULL, 117, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-30', 41.67, NULL, NULL, NULL, NULL),
(1532, 'JV22100102', 'JV', 550340, NULL, NULL, 117, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-30', 26.25, NULL, NULL, NULL, NULL),
(1533, 'JV22100102', 'JV', 500700, NULL, NULL, 117, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-30', 185.94, NULL, NULL, NULL, NULL),
(1534, 'JV22100102', 'JV', 130400, NULL, NULL, 117, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-30', NULL, 253.86, NULL, NULL, NULL),
(1535, 'JV22100102', 'JV', 550115, NULL, NULL, 117, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-30', 2011.59, NULL, NULL, NULL, NULL),
(1536, 'JV22100102', 'JV', 130300, NULL, NULL, 117, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-30', NULL, 2011.59, NULL, NULL, NULL),
(1537, 'JV22100102', 'JV', 550240, NULL, NULL, 117, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-30', 5000.00, NULL, NULL, NULL, NULL),
(1538, 'JV22100102', 'JV', 112300, NULL, NULL, 117, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-30', NULL, 5000.00, NULL, NULL, NULL),
(1539, 'JV22100102', 'JV', 560211, NULL, NULL, 117, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-30', 1794.70, NULL, NULL, NULL, NULL),
(1540, 'JV22100102', 'JV', 150200, NULL, NULL, 117, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-30', NULL, 1794.70, NULL, NULL, NULL),
(1541, 'JV22100103', 'JV', 520100, NULL, NULL, 118, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-30', 1491.16, NULL, NULL, NULL, NULL),
(1542, 'JV22100103', 'JV', 112000, NULL, NULL, 118, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-30', NULL, 1035.91, NULL, NULL, NULL),
(1543, 'JV22100103', 'JV', 111700, NULL, NULL, 118, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-30', NULL, 455.25, NULL, NULL, NULL),
(1549, 'JV22100105', 'JV', 510761, NULL, NULL, 120, NULL, NULL, NULL, NULL, NULL, 'staff water', '2022-07-06', 168.00, NULL, NULL, NULL, NULL),
(1550, 'JV22100105', 'JV', 112200, NULL, NULL, 120, NULL, NULL, NULL, NULL, NULL, 'D\'arcy', '2022-07-06', 100.00, NULL, NULL, NULL, NULL),
(1551, 'JV22100105', 'JV', 560211, NULL, NULL, 120, NULL, NULL, NULL, NULL, NULL, 'pcr test for visa medical', '2022-07-06', 80.00, NULL, NULL, NULL, NULL),
(1552, 'JV22100105', 'JV', 112200, NULL, NULL, 120, NULL, NULL, NULL, NULL, NULL, 'D\'arcy', '2022-07-06', 1900.00, NULL, NULL, NULL, NULL),
(1553, 'JV22100105', 'JV', 200200, NULL, NULL, 120, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-06', NULL, 2248.00, NULL, NULL, NULL),
(1556, 'JV22100107', 'JV', 111100, NULL, NULL, 122, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13', 12178.73, NULL, NULL, NULL, NULL),
(1557, 'JV22100107', 'JV', 111000, NULL, NULL, 122, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13', NULL, 12178.73, NULL, NULL, NULL),
(1558, 'JV22100108', 'JV', 130400, NULL, NULL, 123, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13', 4116.00, NULL, NULL, NULL, NULL),
(1559, 'JV22100108', 'JV', 210102, NULL, NULL, 123, NULL, NULL, NULL, NULL, NULL, 'GACB', '2022-07-13', NULL, 3540.60, NULL, NULL, NULL),
(1560, 'JV22100108', 'JV', 200200, NULL, NULL, 123, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13', NULL, 575.40, NULL, NULL, NULL),
(1561, 'JV22100109', 'JV', 111300, NULL, NULL, 124, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-14', 81053.75, NULL, NULL, NULL, NULL),
(1562, 'JV22100109', 'JV', 210403, NULL, NULL, 124, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-14', NULL, 81053.75, NULL, NULL, NULL),
(1572, 'JV22100111', 'JV', 510661, NULL, NULL, 126, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-18', 3425.00, NULL, NULL, NULL, NULL),
(1573, 'JV22100111', 'JV', 210403, NULL, NULL, 126, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-18', NULL, 1600.00, NULL, NULL, NULL),
(1574, 'JV22100111', 'JV', 200200, NULL, NULL, 126, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-18', NULL, 1825.00, NULL, NULL, NULL),
(1575, 'JV22100112', 'JV', 200200, NULL, NULL, 127, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-19', 6474.00, NULL, NULL, NULL, NULL),
(1576, 'JV22100112', 'JV', 210100, NULL, NULL, 127, NULL, NULL, NULL, NULL, NULL, 'uncollected Salary', '2022-07-19', NULL, 6474.00, NULL, NULL, NULL),
(1577, 'JV22100113', 'JV', 111300, NULL, NULL, 128, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-19', 9000.00, NULL, NULL, NULL, NULL),
(1578, 'JV22100113', 'JV', 200200, NULL, NULL, 128, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-19', NULL, 9000.00, NULL, NULL, NULL),
(1579, 'JV22100114', 'JV', 111300, NULL, NULL, 129, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-20', 1000.00, NULL, NULL, NULL, NULL),
(1580, 'JV22100114', 'JV', 111100, NULL, NULL, 129, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-20', 1631.80, NULL, NULL, NULL, NULL),
(1581, 'JV22100114', 'JV', 210100, NULL, NULL, 129, NULL, NULL, NULL, NULL, NULL, 'April 2022', '2022-07-20', NULL, 133.00, NULL, NULL, NULL),
(1582, 'JV22100114', 'JV', 210100, NULL, NULL, 129, NULL, NULL, NULL, NULL, NULL, 'May 2022', '2022-07-20', NULL, 900.00, NULL, NULL, NULL),
(1583, 'JV22100114', 'JV', 210100, NULL, NULL, 129, NULL, NULL, NULL, NULL, NULL, 'June 2022', '2022-07-20', NULL, 2200.00, NULL, NULL, NULL),
(1584, 'JV22100114', 'JV', 210100, NULL, NULL, 129, NULL, NULL, NULL, NULL, NULL, 'bonus of Abishek', '2022-07-20', 600.00, NULL, NULL, NULL, NULL),
(1585, 'JV22100114', 'JV', 560110, NULL, NULL, 129, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-20', 1.20, NULL, NULL, NULL, NULL),
(1586, 'JV22100115', 'JV', 200700, NULL, NULL, 130, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-25', 30184.03, NULL, NULL, NULL, NULL),
(1587, 'JV22100115', 'JV', 210403, NULL, NULL, 130, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-25', NULL, 30184.03, NULL, NULL, NULL),
(1588, 'JV22100116', 'JV', 560110, NULL, NULL, 131, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-26', 105.00, NULL, NULL, NULL, NULL),
(1589, 'JV22100116', 'JV', 111100, NULL, NULL, 131, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-26', NULL, 105.00, NULL, NULL, NULL),
(1590, 'JV22100116', 'JV', 560110, NULL, NULL, 131, NULL, NULL, NULL, NULL, NULL, 'relationship fees', '2022-07-26', 210.00, NULL, NULL, NULL, NULL),
(1591, 'JV22100116', 'JV', 560110, NULL, NULL, 131, NULL, NULL, NULL, NULL, NULL, 'WPS', '2022-07-26', 105.00, NULL, NULL, NULL, NULL),
(1592, 'JV22100116', 'JV', 560110, NULL, NULL, 131, NULL, NULL, NULL, NULL, NULL, 'fund transfer', '2022-07-26', 2.10, NULL, NULL, NULL, NULL),
(1593, 'JV22100116', 'JV', 111000, NULL, NULL, 131, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-26', NULL, 317.10, NULL, NULL, NULL),
(1594, 'JV22070117', 'JV', 510661, NULL, NULL, 132, NULL, NULL, NULL, NULL, NULL, 'staff', '2022-07-31', 61750.00, NULL, NULL, NULL, NULL),
(1595, 'JV22070117', 'JV', 510661, NULL, NULL, 132, NULL, NULL, NULL, NULL, NULL, 'shared salary from FMM', '2022-07-31', 12710.35, NULL, NULL, NULL, NULL),
(1596, 'JV22070117', 'JV', 200200, NULL, NULL, 132, NULL, NULL, NULL, NULL, NULL, 'shared salary for office boy', '2022-07-31', 1000.00, NULL, NULL, NULL, NULL),
(1597, 'JV22070117', 'JV', 210100, NULL, NULL, 132, NULL, NULL, NULL, NULL, NULL, 'GACB', '2022-07-31', 1000.00, NULL, NULL, NULL, NULL),
(1598, 'JV22070117', 'JV', 510661, NULL, NULL, 132, NULL, NULL, NULL, NULL, NULL, 'Mr. Babar', '2022-07-31', 8000.00, NULL, NULL, NULL, NULL),
(1599, 'JV22070117', 'JV', 200200, NULL, NULL, 132, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-31', NULL, 12710.35, NULL, NULL, NULL),
(1600, 'JV22070117', 'JV', 210100, NULL, NULL, 132, NULL, NULL, NULL, NULL, NULL, 'salary', '2022-07-31', NULL, 106064.06, NULL, NULL, NULL),
(1601, 'JV22070117', 'JV', 500500, NULL, NULL, 132, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-31', 34314.06, NULL, NULL, NULL, NULL),
(1602, 'JV22070118', 'JV', 510400, NULL, NULL, 133, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-31', 1000.00, NULL, NULL, NULL, NULL),
(1603, 'JV22070118', 'JV', 200200, NULL, NULL, 133, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-31', NULL, 1000.00, NULL, NULL, NULL),
(1609, 'JV22070120', 'JV', 510761, NULL, NULL, 135, NULL, NULL, NULL, NULL, NULL, 'staff water', '2022-07-31', 168.00, NULL, NULL, NULL, NULL),
(1610, 'JV22070120', 'JV', 550340, NULL, NULL, 135, NULL, NULL, NULL, NULL, NULL, 'letter head', '2022-07-31', 400.00, NULL, NULL, NULL, NULL),
(1611, 'JV22070120', 'JV', 200200, NULL, NULL, 135, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-31', NULL, 568.00, NULL, NULL, NULL),
(1612, 'JV22070121', 'JV', 550115, NULL, NULL, 136, NULL, NULL, NULL, NULL, NULL, 'processing free for tenancy contract', '2022-07-31', 41.67, NULL, NULL, NULL, NULL),
(1613, 'JV22070121', 'JV', 550340, NULL, NULL, 136, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-31', 26.25, NULL, NULL, NULL, NULL),
(1614, 'JV22070121', 'JV', 500700, NULL, NULL, 136, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-31', 528.94, NULL, NULL, NULL, NULL),
(1615, 'JV22070121', 'JV', 130400, NULL, NULL, 136, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-31', NULL, 596.86, NULL, NULL, NULL),
(1616, 'JV22070121', 'JV', 550115, NULL, NULL, 136, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-31', 2011.59, NULL, NULL, NULL, NULL),
(1617, 'JV22070121', 'JV', 130300, NULL, NULL, 136, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-31', NULL, 2011.59, NULL, NULL, NULL),
(1618, 'JV22070121', 'JV', 550240, NULL, NULL, 136, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-31', 5000.00, NULL, NULL, NULL, NULL),
(1619, 'JV22070121', 'JV', 112300, NULL, NULL, 136, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-31', NULL, 5000.00, NULL, NULL, NULL),
(1620, 'JV22070121', 'JV', 560211, NULL, NULL, 136, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-31', 1794.70, NULL, NULL, NULL, NULL),
(1621, 'JV22070121', 'JV', 150200, NULL, NULL, 136, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-31', NULL, 1794.70, NULL, NULL, NULL),
(1622, 'JV22070122', 'JV', 520100, NULL, NULL, 137, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-31', 1491.16, NULL, NULL, NULL, NULL),
(1623, 'JV22070122', 'JV', 112000, NULL, NULL, 137, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-31', NULL, 1035.91, NULL, NULL, NULL),
(1624, 'JV22070122', 'JV', 111700, NULL, NULL, 137, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-31', NULL, 455.25, NULL, NULL, NULL),
(1625, 'JV22070123', 'JV', 530110, NULL, NULL, 138, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-31', 1683.33, NULL, NULL, NULL, NULL),
(1626, 'JV22070123', 'JV', 530111, NULL, NULL, 138, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-31', 589.17, NULL, NULL, NULL, NULL),
(1627, 'JV22070123', 'JV', 230300, NULL, NULL, 138, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-31', NULL, 1683.33, NULL, NULL, NULL),
(1628, 'JV22070123', 'JV', 230400, NULL, NULL, 138, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-31', NULL, 589.17, NULL, NULL, NULL),
(1629, 'JV22070124', 'JV', 551140, NULL, NULL, 139, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-31', 1321.51, NULL, NULL, NULL, NULL),
(1630, 'JV22070124', 'JV', 220100, NULL, NULL, 139, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-31', NULL, 1321.51, NULL, NULL, NULL),
(1631, 'JV22100125', 'JV', 111000, NULL, NULL, 140, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-02', 211.05, NULL, NULL, NULL, NULL),
(1632, 'JV22100125', 'JV', 560110, NULL, NULL, 140, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-02', NULL, 211.05, NULL, NULL, NULL),
(1635, 'JV22100127', 'JV', 510761, NULL, NULL, 142, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-05', 173.25, NULL, NULL, NULL, NULL),
(1636, 'JV22100127', 'JV', 200200, NULL, NULL, 142, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-05', NULL, 173.25, NULL, NULL, NULL),
(1637, 'JV22100128', 'JV', 111100, NULL, NULL, 143, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12', 56550.27, NULL, NULL, NULL, NULL),
(1638, 'JV22100128', 'JV', 111000, NULL, NULL, 143, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12', NULL, 56550.27, NULL, NULL, NULL),
(1639, 'JV22100129', 'JV', 210100, NULL, NULL, 144, NULL, NULL, NULL, NULL, NULL, 'salary payable', '2022-08-12', 49664.00, NULL, NULL, NULL, NULL),
(1640, 'JV22100129', 'JV', 210403, NULL, NULL, 144, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12', NULL, 66664.00, NULL, NULL, NULL),
(1641, 'JV22100129', 'JV', 210403, NULL, NULL, 144, NULL, NULL, NULL, NULL, NULL, 'Mr. Babar returned to Mr. Asim', '2022-08-12', 17000.00, NULL, NULL, NULL, NULL),
(1642, 'JV22100130', 'JV', 550000, NULL, NULL, 145, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12', 34.75, NULL, NULL, NULL, NULL),
(1643, 'JV22100130', 'JV', 510761, NULL, NULL, 145, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12', 50.00, NULL, NULL, NULL, NULL),
(1644, 'JV22100130', 'JV', 200200, NULL, NULL, 145, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-12', NULL, 84.75, NULL, NULL, NULL),
(1645, 'JV22100131', 'JV', 200300, NULL, NULL, 146, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-13', 56400.27, NULL, NULL, NULL, NULL),
(1646, 'JV22100131', 'JV', 111100, NULL, NULL, 146, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-13', NULL, 56400.27, NULL, NULL, NULL),
(1647, 'JV22100132', 'JV', 200700, NULL, NULL, 147, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15', 16978.55, NULL, NULL, NULL, NULL),
(1648, 'JV22100132', 'JV', 210403, NULL, NULL, 147, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15', NULL, 16978.55, NULL, NULL, NULL),
(1649, 'JV22100133', 'JV', 111100, NULL, NULL, 148, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15', 2000.00, NULL, NULL, NULL, NULL),
(1650, 'JV22100133', 'JV', 200200, NULL, NULL, 148, NULL, NULL, NULL, NULL, NULL, 'PHUB182099765', '2022-08-15', NULL, 1000.00, NULL, NULL, NULL),
(1651, 'JV22100133', 'JV', 210100, NULL, NULL, 148, NULL, NULL, NULL, NULL, NULL, 'GACB PHUB182106743', '2022-08-15', NULL, 1000.00, NULL, NULL, NULL),
(1652, 'JV22100134', 'JV', 112300, NULL, NULL, 149, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15', 15000.00, NULL, NULL, NULL, NULL),
(1653, 'JV22100134', 'JV', 210403, NULL, NULL, 149, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-15', NULL, 15000.00, NULL, NULL, NULL),
(1654, 'JV22100135', 'JV', 220100, NULL, NULL, 150, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-16', 1321.51, NULL, NULL, NULL, NULL),
(1655, 'JV22100135', 'JV', 111100, NULL, NULL, 150, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-16', NULL, 1321.51, NULL, NULL, NULL),
(1656, 'JV22100136', 'JV', 550340, NULL, NULL, 151, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-19', 100.00, NULL, NULL, NULL, NULL),
(1657, 'JV22100136', 'JV', 130400, NULL, NULL, 151, NULL, NULL, NULL, NULL, NULL, 'for Sep and Oct expense', '2022-08-19', 200.00, NULL, NULL, NULL, NULL),
(1658, 'JV22100136', 'JV', 111100, NULL, NULL, 151, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-19', NULL, 300.00, NULL, NULL, NULL),
(1659, 'JV22100137', 'JV', 510400, NULL, NULL, 152, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-23', 1000.00, NULL, NULL, NULL, NULL),
(1660, 'JV22100137', 'JV', 200200, NULL, NULL, 152, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-23', NULL, 1000.00, NULL, NULL, NULL),
(1661, 'JV22100138', 'JV', 111100, NULL, NULL, 153, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-26', 407.00, NULL, NULL, NULL, NULL),
(1662, 'JV22100138', 'JV', 110402, NULL, NULL, 153, NULL, NULL, NULL, NULL, NULL, 'Aug 1-18', '2022-08-26', NULL, 407.00, NULL, NULL, NULL),
(1663, 'JV22100139', 'JV', 550540, NULL, NULL, 154, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31', 1472.56, NULL, NULL, NULL, NULL),
(1664, 'JV22100139', 'JV', 220100, NULL, NULL, 154, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31', NULL, 1472.56, NULL, NULL, NULL),
(1665, 'JV22100140', 'JV', 510661, NULL, NULL, 155, NULL, NULL, NULL, NULL, NULL, 'staff', '2022-08-31', 53685.41, NULL, NULL, NULL, NULL),
(1666, 'JV22100140', 'JV', 500500, NULL, NULL, 155, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31', 48863.64, NULL, NULL, NULL, NULL),
(1667, 'JV22100140', 'JV', 510661, NULL, NULL, 155, NULL, NULL, NULL, NULL, NULL, 'Mr. Babar', '2022-08-31', 8000.00, NULL, NULL, NULL, NULL),
(1668, 'JV22100140', 'JV', 510661, NULL, NULL, 155, NULL, NULL, NULL, NULL, NULL, 'Payable to FMM', '2022-08-31', 1819.00, NULL, NULL, NULL, NULL),
(1669, 'JV22100140', 'JV', 510661, NULL, NULL, 155, NULL, NULL, NULL, NULL, NULL, 'payable to GACB', '2022-08-31', 2644.87, NULL, NULL, NULL, NULL),
(1670, 'JV22100140', 'JV', 200200, NULL, NULL, 155, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31', NULL, 1819.00, NULL, NULL, NULL),
(1671, 'JV22100140', 'JV', 210100, NULL, NULL, 155, NULL, NULL, NULL, NULL, NULL, 'GACB', '2022-08-31', NULL, 2644.87, NULL, NULL, NULL),
(1672, 'JV22100140', 'JV', 200300, NULL, NULL, 155, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31', NULL, 111349.05, NULL, NULL, NULL),
(1673, 'JV22100140', 'JV', 510661, NULL, NULL, 155, NULL, NULL, NULL, NULL, NULL, 'Nauman and Ojee payroll adjustment', '2022-08-31', 800.00, NULL, NULL, NULL, NULL),
(1674, 'JV22100141', 'JV', 550740, NULL, NULL, 156, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31', 33274.28, NULL, NULL, NULL, NULL),
(1675, 'JV22100141', 'JV', 200700, NULL, NULL, 156, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31', NULL, 33274.28, NULL, NULL, NULL),
(1676, 'JV22100142', 'JV', 510661, NULL, NULL, 157, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31', 533.00, NULL, NULL, NULL, NULL),
(1677, 'JV22100142', 'JV', 200300, NULL, NULL, 157, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31', NULL, 533.00, NULL, NULL, NULL),
(1678, 'JV22100143', 'JV', 551040, NULL, NULL, 158, NULL, NULL, NULL, NULL, NULL, 'PRO fare', '2022-08-31', 778.00, NULL, NULL, NULL, NULL),
(1679, 'JV22100143', 'JV', 130300, NULL, NULL, 158, NULL, NULL, NULL, NULL, NULL, 'adding partner in the trade license, adding pro, side agreement', '2022-08-31', 5197.38, NULL, NULL, NULL, NULL),
(1680, 'JV22100143', 'JV', 560211, NULL, NULL, 158, NULL, NULL, NULL, NULL, NULL, 'jason, wynsther and abisheck cancellation', '2022-08-31', 2212.16, NULL, NULL, NULL, NULL);
INSERT INTO `journal` (`JournalID`, `VHNO`, `JournalType`, `ChartOfAccountID`, `PartyID`, `SupplierID`, `VoucherMstID`, `PettyMstID`, `InvoiceMasterID`, `ExpenseMasterID`, `PaymentMasterID`, `PurchasePaymentMasterID`, `Narration`, `Date`, `Dr`, `Cr`, `Trace`, `BankReconcile`, `ReconcileDate`) VALUES
(1681, 'JV22100143', 'JV', 210403, NULL, NULL, 158, NULL, NULL, NULL, NULL, NULL, '9k for the visa of Nauman and Abishek', '2022-08-31', NULL, 14000.00, NULL, NULL, NULL),
(1682, 'JV22100143', 'JV', 150200, NULL, NULL, 158, NULL, NULL, NULL, NULL, NULL, 'visa of Nauman', '2022-08-31', 7891.22, NULL, NULL, NULL, NULL),
(1683, 'JV22100143', 'JV', 150200, NULL, NULL, 158, NULL, NULL, NULL, NULL, NULL, 'visa of Abishek', '2022-08-31', 6716.99, NULL, NULL, NULL, NULL),
(1684, 'JV22100143', 'JV', 210102, NULL, NULL, 158, NULL, NULL, NULL, NULL, NULL, 'Anne', '2022-08-31', NULL, 8795.75, NULL, NULL, NULL),
(1685, 'JV22100144', 'JV', 510661, NULL, NULL, 159, NULL, NULL, NULL, NULL, NULL, 'abishek', '2022-08-31', 1400.00, NULL, NULL, NULL, NULL),
(1686, 'JV22100144', 'JV', 510661, NULL, NULL, 159, NULL, NULL, NULL, NULL, NULL, 'Varun plus bonus', '2022-08-31', 1119.88, NULL, NULL, NULL, NULL),
(1687, 'JV22100144', 'JV', 200300, NULL, NULL, 159, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31', NULL, 2519.88, NULL, NULL, NULL),
(1688, 'JV22100145', 'JV', 230000, NULL, NULL, 160, NULL, NULL, NULL, NULL, NULL, 'uncollected salary', '2022-08-31', 6474.00, NULL, NULL, NULL, NULL),
(1689, 'JV22100145', 'JV', 410200, NULL, NULL, 160, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31', NULL, 6474.00, NULL, NULL, NULL),
(1690, 'JV22100146', 'JV', 200700, NULL, NULL, 161, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31', 28022.34, NULL, NULL, NULL, NULL),
(1691, 'JV22100146', 'JV', 210403, NULL, NULL, 161, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31', NULL, 28022.34, NULL, NULL, NULL),
(1692, 'JV22100147', 'JV', 550115, NULL, NULL, 162, NULL, NULL, NULL, NULL, NULL, 'processing fee for tenancy contract', '2022-08-31', 41.67, NULL, NULL, NULL, NULL),
(1693, 'JV22100147', 'JV', 550340, NULL, NULL, 162, NULL, NULL, NULL, NULL, NULL, 'letter head', '2022-08-31', 26.25, NULL, NULL, NULL, NULL),
(1694, 'JV22100147', 'JV', 500700, NULL, NULL, 162, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31', 528.94, NULL, NULL, NULL, NULL),
(1695, 'JV22100147', 'JV', 130400, NULL, NULL, 162, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31', NULL, 596.86, NULL, NULL, NULL),
(1696, 'JV22100147', 'JV', 550115, NULL, NULL, 162, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31', 2444.71, NULL, NULL, NULL, NULL),
(1697, 'JV22100147', 'JV', 130300, NULL, NULL, 162, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31', NULL, 2444.71, NULL, NULL, NULL),
(1698, 'JV22100147', 'JV', 550240, NULL, NULL, 162, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31', 5000.00, NULL, NULL, NULL, NULL),
(1699, 'JV22100147', 'JV', 112300, NULL, NULL, 162, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31', NULL, 5000.00, NULL, NULL, NULL),
(1700, 'JV22100147', 'JV', 560211, NULL, NULL, 162, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31', 1794.70, NULL, NULL, NULL, NULL),
(1701, 'JV22100147', 'JV', 150200, NULL, NULL, 162, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31', NULL, 1794.70, NULL, NULL, NULL),
(1702, 'JV22100148', 'JV', 520100, NULL, NULL, 163, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31', 1491.16, NULL, NULL, NULL, NULL),
(1703, 'JV22100148', 'JV', 112000, NULL, NULL, 163, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31', NULL, 1035.91, NULL, NULL, NULL),
(1704, 'JV22100148', 'JV', 111700, NULL, NULL, 163, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31', NULL, 455.25, NULL, NULL, NULL),
(1705, 'JV22100149', 'JV', 530110, NULL, NULL, 164, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31', 2140.30, NULL, NULL, NULL, NULL),
(1706, 'JV22100149', 'JV', 530111, NULL, NULL, 164, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31', 1122.50, NULL, NULL, NULL, NULL),
(1707, 'JV22100149', 'JV', 551040, NULL, NULL, 164, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31', 1283.20, NULL, NULL, NULL, NULL),
(1708, 'JV22100149', 'JV', 230300, NULL, NULL, 164, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31', NULL, 2140.30, NULL, NULL, NULL),
(1709, 'JV22100149', 'JV', 230400, NULL, NULL, 164, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31', NULL, 1122.50, NULL, NULL, NULL),
(1710, 'JV22100149', 'JV', 250000, NULL, NULL, 164, NULL, NULL, NULL, NULL, NULL, 'staff air ticket payable', '2022-08-31', NULL, 1283.20, NULL, NULL, NULL),
(1711, 'JV22100150', 'JV', 510661, NULL, NULL, 165, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31', 1433.00, NULL, NULL, NULL, NULL),
(1712, 'JV22100150', 'JV', 200300, NULL, NULL, 165, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-31', NULL, 1433.00, NULL, NULL, NULL),
(1713, 'JV22100151', 'JV', 111100, NULL, NULL, 166, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-08', 2787.80, NULL, NULL, NULL, NULL),
(1714, 'JV22100151', 'JV', 111300, NULL, NULL, 166, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-08', 1000.00, NULL, NULL, NULL, NULL),
(1715, 'JV22100151', 'JV', 230000, NULL, NULL, 166, NULL, NULL, NULL, NULL, NULL, 'uncollected salary of Nichole, Juan & Natacha Anna', '2022-09-08', NULL, 1350.00, NULL, NULL, NULL),
(1716, 'JV22100151', 'JV', 200300, NULL, NULL, 166, NULL, NULL, NULL, NULL, NULL, 'Abishek & Varun', '2022-09-08', 2519.88, NULL, NULL, NULL, NULL),
(1717, 'JV22100151', 'JV', 410200, NULL, NULL, 166, NULL, NULL, NULL, NULL, NULL, 'Notice period of Abishek', '2022-09-08', NULL, 2999.54, NULL, NULL, NULL),
(1718, 'JV22100151', 'JV', 410200, NULL, NULL, 166, NULL, NULL, NULL, NULL, NULL, 'notice period of Varun', '2022-09-08', NULL, 1400.00, NULL, NULL, NULL),
(1719, 'JV22100151', 'JV', 410200, NULL, NULL, 166, NULL, NULL, NULL, NULL, NULL, 'notice period of Wynsther Toledo', '2022-09-08', NULL, 1700.00, NULL, NULL, NULL),
(1720, 'JV22100151', 'JV', 510761, NULL, NULL, 166, NULL, NULL, NULL, NULL, NULL, 'staff water', '2022-09-08', 173.25, NULL, NULL, NULL, NULL),
(1721, 'JV22100151', 'JV', 550000, NULL, NULL, 166, NULL, NULL, NULL, NULL, NULL, 'cleaning supplies', '2022-09-08', 148.00, NULL, NULL, NULL, NULL),
(1722, 'JV22100151', 'JV', 120327, NULL, NULL, 166, NULL, NULL, NULL, NULL, NULL, '50% payment to EIS for time attendance', '2022-09-08', 412.00, NULL, NULL, NULL, NULL),
(1723, 'JV22100151', 'JV', 560110, NULL, NULL, 166, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-08', 1.61, NULL, NULL, NULL, NULL),
(1724, 'JV22100151', 'JV', 110402, NULL, NULL, 166, NULL, NULL, NULL, NULL, NULL, 'Abishek', '2022-09-08', 407.00, NULL, NULL, NULL, NULL),
(1725, 'JV22100152', 'JV', 210102, NULL, NULL, 167, NULL, NULL, NULL, NULL, NULL, 'payment to Mr. Babar', '2022-09-09', 270.00, NULL, NULL, NULL, NULL),
(1726, 'JV22100152', 'JV', 111100, NULL, NULL, 167, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-09', NULL, 270.00, NULL, NULL, NULL),
(1727, 'JV22100153', 'JV', 200300, NULL, NULL, 168, NULL, NULL, NULL, NULL, NULL, 'SLU816046', '2022-09-14', 43416.59, NULL, NULL, NULL, NULL),
(1728, 'JV22100153', 'JV', 200300, NULL, NULL, 168, NULL, NULL, NULL, NULL, NULL, 'PHUB186919393', '2022-09-14', 8667.00, NULL, NULL, NULL, NULL),
(1729, 'JV22100153', 'JV', 200300, NULL, NULL, 168, NULL, NULL, NULL, NULL, NULL, 'PHUB186920460', '2022-09-14', 2023.09, NULL, NULL, NULL, NULL),
(1730, 'JV22100153', 'JV', 200300, NULL, NULL, 168, NULL, NULL, NULL, NULL, NULL, 'PHUB18725116', '2022-09-14', 1333.33, NULL, NULL, NULL, NULL),
(1731, 'JV22100153', 'JV', 510661, NULL, NULL, 168, NULL, NULL, NULL, NULL, NULL, 'BINU SEPT 1-4', '2022-09-14', 467.00, NULL, NULL, NULL, NULL),
(1732, 'JV22100153', 'JV', 230300, NULL, NULL, 168, NULL, NULL, NULL, NULL, NULL, 'BINU', '2022-09-14', 1126.00, NULL, NULL, NULL, NULL),
(1733, 'JV22100153', 'JV', 410200, NULL, NULL, 168, NULL, NULL, NULL, NULL, NULL, 'VISA OF BINU', '2022-09-14', NULL, 2500.00, NULL, NULL, NULL),
(1734, 'JV22100153', 'JV', 200300, NULL, NULL, 168, NULL, NULL, NULL, NULL, NULL, 'CASH PAYROLL PLUS 8K OF MR. BABAR', '2022-09-14', 50001.44, NULL, NULL, NULL, NULL),
(1735, 'JV22100153', 'JV', 210403, NULL, NULL, 168, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-14', NULL, 71062.00, NULL, NULL, NULL),
(1736, 'JV22100153', 'JV', 111100, NULL, NULL, 168, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-14', NULL, 55440.01, NULL, NULL, NULL),
(1737, 'JV22100153', 'JV', 200300, NULL, NULL, 168, NULL, NULL, NULL, NULL, NULL, 'ADVANCE SALARY OF ISAAC RIEGO', '2022-09-14', 5000.00, NULL, NULL, NULL, NULL),
(1738, 'JV22100153', 'JV', 210403, NULL, NULL, 168, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-14', NULL, 5000.00, NULL, NULL, NULL),
(1739, 'JV22100153', 'JV', 111100, NULL, NULL, 168, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-14', 21000.00, NULL, NULL, NULL, NULL),
(1740, 'JV22100153', 'JV', 111300, NULL, NULL, 168, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-14', 59.96, NULL, NULL, NULL, NULL),
(1741, 'JV22100153', 'JV', 200300, NULL, NULL, 168, NULL, NULL, NULL, NULL, NULL, 'Binu (1,592.40 - 2,500)', '2022-09-14', 907.60, NULL, NULL, NULL, NULL),
(1742, 'JV22100154', 'JV', 111100, NULL, NULL, 169, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-14', 33000.00, NULL, NULL, NULL, NULL),
(1743, 'JV22100154', 'JV', 111000, NULL, NULL, 169, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-14', NULL, 33000.00, NULL, NULL, NULL),
(1744, 'JV22100155', 'JV', 111100, NULL, NULL, 170, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-14', 21000.00, NULL, NULL, NULL, NULL),
(1745, 'JV22100155', 'JV', 210403, NULL, NULL, 170, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-14', NULL, 21000.00, NULL, NULL, NULL),
(1746, 'JV22100156', 'JV', 111100, NULL, NULL, 171, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-20', 400.00, NULL, NULL, NULL, NULL),
(1747, 'JV22100156', 'JV', 111300, NULL, NULL, 171, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-20', NULL, 400.00, NULL, NULL, NULL),
(1748, 'JV22100157', 'JV', 200700, NULL, NULL, 172, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-20', 33274.28, NULL, NULL, NULL, NULL),
(1749, 'JV22100157', 'JV', 210403, NULL, NULL, 172, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-20', NULL, 33274.28, NULL, NULL, NULL),
(1750, 'JV22100158', 'JV', 200300, NULL, NULL, 173, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-22', 533.00, NULL, NULL, NULL, NULL),
(1751, 'JV22100158', 'JV', 111300, NULL, NULL, 173, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-22', NULL, 533.00, NULL, NULL, NULL),
(1752, 'EXP-00001', NULL, 200100, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, '', '2022-02-23', NULL, 400.00, '614', NULL, NULL),
(1753, 'EXP-00001', NULL, 540000, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, '', '2022-02-23', 400.00, NULL, '615', NULL, NULL),
(1754, 'EXP-00002', NULL, 200100, NULL, 1, NULL, NULL, NULL, 2, NULL, NULL, '', '2022-03-01', NULL, 532.45, '614', NULL, NULL),
(1755, 'EXP-00002', NULL, 550000, NULL, 1, NULL, NULL, NULL, 2, NULL, NULL, '', '2022-03-01', 154.45, NULL, '615', NULL, NULL),
(1756, 'EXP-00002', NULL, 550340, NULL, 1, NULL, NULL, NULL, 2, NULL, NULL, '', '2022-03-01', 378.00, NULL, '615', NULL, NULL),
(1759, 'EXP-00004', NULL, 210403, NULL, 1, NULL, NULL, NULL, 4, NULL, NULL, '', '2022-03-22', NULL, 500.00, '614', NULL, NULL),
(1760, 'EXP-00004', NULL, 120227, NULL, 1, NULL, NULL, NULL, 4, NULL, NULL, '', '2022-03-22', 500.00, NULL, '615', NULL, NULL),
(1761, 'EXP-00005', NULL, 210403, NULL, 1, NULL, NULL, NULL, 5, NULL, NULL, '', '2022-05-01', NULL, 1417.39, '614', NULL, NULL),
(1762, 'EXP-00005', NULL, 510400, NULL, 1, NULL, NULL, NULL, 5, NULL, NULL, '', '2022-05-01', 1417.39, NULL, '615', NULL, NULL),
(1763, 'EXP-00006', NULL, 210403, NULL, 1, NULL, NULL, NULL, 6, NULL, NULL, '', '2022-05-01', NULL, 302.56, '614', NULL, NULL),
(1764, 'EXP-00006', NULL, 560110, NULL, 1, NULL, NULL, NULL, 6, NULL, NULL, '', '2022-05-01', 302.56, NULL, '615', NULL, NULL),
(1765, 'EXP-00007', NULL, 111300, NULL, 1, NULL, NULL, NULL, 7, NULL, NULL, '', '2022-05-31', NULL, 1168.02, '614', NULL, NULL),
(1766, 'EXP-00007', NULL, 510761, NULL, 1, NULL, NULL, NULL, 7, NULL, NULL, '', '2022-05-31', 23.00, NULL, '615', NULL, NULL),
(1767, 'EXP-00007', NULL, 510761, NULL, 1, NULL, NULL, NULL, 7, NULL, NULL, '', '2022-05-31', 69.97, NULL, '615', NULL, NULL),
(1768, 'EXP-00007', NULL, 510761, NULL, 1, NULL, NULL, NULL, 7, NULL, NULL, '', '2022-05-31', 31.05, NULL, '615', NULL, NULL),
(1769, 'EXP-00007', NULL, 112200, NULL, 1, NULL, NULL, NULL, 7, NULL, NULL, '', '2022-05-31', 1000.00, NULL, '615', NULL, NULL),
(1770, 'EXP-00007', NULL, 550000, NULL, 1, NULL, NULL, NULL, 7, NULL, NULL, '', '2022-05-31', 44.00, NULL, '615', NULL, NULL),
(1771, 'EXP-00008', NULL, 111300, NULL, 1, NULL, NULL, NULL, 8, NULL, NULL, '', '2022-06-09', NULL, 147.00, '614', NULL, NULL),
(1772, 'EXP-00008', NULL, 510761, NULL, 1, NULL, NULL, NULL, 8, NULL, NULL, '', '2022-06-09', 47.00, NULL, '615', NULL, NULL),
(1773, 'EXP-00008', NULL, 550000, NULL, 1, NULL, NULL, NULL, 8, NULL, NULL, '', '2022-06-09', 100.00, NULL, '615', NULL, NULL),
(1774, 'EXP-00009', NULL, 111300, NULL, 1, NULL, NULL, NULL, 9, NULL, NULL, '', '2022-09-20', NULL, 473.26, '614', NULL, NULL),
(1775, 'EXP-00009', NULL, 510761, NULL, 1, NULL, NULL, NULL, 9, NULL, NULL, '', '2022-09-20', 461.26, NULL, '615', NULL, NULL),
(1776, 'EXP-00009', NULL, 551040, NULL, 1, NULL, NULL, NULL, 9, NULL, NULL, '', '2022-09-20', 12.00, NULL, '615', NULL, NULL),
(1777, 'EXP-00010', NULL, 111300, NULL, 1, NULL, NULL, NULL, 10, NULL, NULL, '', '2022-06-24', NULL, 279.00, '614', NULL, NULL),
(1778, 'EXP-00010', NULL, 510761, NULL, 1, NULL, NULL, NULL, 10, NULL, NULL, '', '2022-06-24', 168.00, NULL, '615', NULL, NULL),
(1779, 'EXP-00010', NULL, 550340, NULL, 1, NULL, NULL, NULL, 10, NULL, NULL, '', '2022-06-24', 111.00, NULL, '615', NULL, NULL),
(1780, 'EXP-00011', NULL, 210102, NULL, 1, NULL, NULL, NULL, 11, NULL, NULL, '', '2022-06-27', NULL, 270.00, '614', NULL, NULL),
(1781, 'EXP-00011', NULL, 500600, NULL, 1, NULL, NULL, NULL, 11, NULL, NULL, '', '2022-06-27', 270.00, NULL, '615', NULL, NULL),
(1784, 'EXP-00013', NULL, 111300, NULL, 1, NULL, NULL, NULL, 13, NULL, NULL, '', '2022-07-26', NULL, 559.25, '614', NULL, NULL),
(1785, 'EXP-00013', NULL, 550000, NULL, 1, NULL, NULL, NULL, 13, NULL, NULL, '', '2022-07-26', 559.25, NULL, '615', NULL, NULL),
(1786, 'EXP-00014', NULL, 111100, NULL, 1, NULL, NULL, NULL, 14, NULL, NULL, '', '2022-08-02', NULL, 105.00, '614', NULL, NULL),
(1787, 'EXP-00014', NULL, 560110, NULL, 1, NULL, NULL, NULL, 14, NULL, NULL, '', '2022-08-02', 105.00, NULL, '615', NULL, NULL),
(1788, 'EXP-00015', NULL, 111000, NULL, 1, NULL, NULL, NULL, 15, NULL, NULL, '', '2022-08-12', NULL, 4.20, '614', NULL, NULL),
(1789, 'EXP-00015', NULL, 560110, NULL, 1, NULL, NULL, NULL, 15, NULL, NULL, '', '2022-08-12', 4.20, NULL, '615', NULL, NULL),
(1790, 'EXP-00016', NULL, 111300, NULL, 1, NULL, NULL, NULL, 16, NULL, NULL, '', '2022-08-15', NULL, 173.25, '614', NULL, NULL),
(1791, 'EXP-00016', NULL, 510761, NULL, 1, NULL, NULL, NULL, 16, NULL, NULL, '', '2022-08-15', 173.25, NULL, '615', NULL, NULL),
(1792, 'EXP-00017', NULL, 111100, NULL, 1, NULL, NULL, NULL, 17, NULL, NULL, '', '2022-08-26', NULL, 105.00, '614', NULL, NULL),
(1793, 'EXP-00017', NULL, 560110, NULL, 1, NULL, NULL, NULL, 17, NULL, NULL, '', '2022-08-26', 105.00, NULL, '615', NULL, NULL),
(1794, 'EXP-00018', NULL, 111100, NULL, 1, NULL, NULL, NULL, 18, NULL, NULL, '', '2022-08-30', NULL, 250.00, '614', NULL, NULL),
(1795, 'EXP-00018', NULL, 550000, NULL, 1, NULL, NULL, NULL, 18, NULL, NULL, '', '2022-08-30', 250.00, NULL, '615', NULL, NULL),
(1798, 'EXP-00020', NULL, 111300, NULL, 1, NULL, NULL, NULL, 20, NULL, NULL, '', '2022-09-14', NULL, 176.25, '614', NULL, NULL),
(1799, 'EXP-00020', NULL, 510761, NULL, 1, NULL, NULL, NULL, 20, NULL, NULL, '', '2022-09-14', 173.25, NULL, '615', NULL, NULL),
(1800, 'EXP-00020', NULL, 510761, NULL, 1, NULL, NULL, NULL, 20, NULL, NULL, '', '2022-09-14', 3.00, NULL, '615', NULL, NULL),
(1803, 'TAX-00001', NULL, 110400, 2214, NULL, NULL, NULL, 132, NULL, NULL, NULL, '3097758000000314026', '2022-04-30', 49785.75, NULL, '123', NULL, NULL),
(1804, 'TAX-00001', NULL, 410100, 2214, NULL, NULL, NULL, 132, NULL, NULL, NULL, '3097758000000314026', '2022-04-30', NULL, 49785.75, '12345', NULL, NULL),
(1805, 'TAX-00002', NULL, 110400, 2214, NULL, NULL, NULL, 133, NULL, NULL, NULL, '309775800000326333', '2022-05-31', 82423.28, NULL, '123', NULL, NULL),
(1806, 'TAX-00002', NULL, 410100, 2214, NULL, NULL, NULL, 133, NULL, NULL, NULL, '309775800000326333', '2022-05-31', NULL, 82423.28, '12345', NULL, NULL),
(1807, 'TAX-00003', NULL, 110400, 2214, NULL, NULL, NULL, 134, NULL, NULL, NULL, '3097758000000336001', '2022-06-30', 46578.40, NULL, '123', NULL, NULL),
(1808, 'TAX-00003', NULL, 410100, 2214, NULL, NULL, NULL, 134, NULL, NULL, NULL, '3097758000000336001', '2022-06-30', NULL, 46578.40, '12345', NULL, NULL),
(1809, 'TAX-00004', NULL, 110400, 2214, NULL, NULL, NULL, 135, NULL, NULL, NULL, '3097758000000340001', '2022-07-31', 56704.94, NULL, '123', NULL, NULL),
(1810, 'TAX-00004', NULL, 410100, 2214, NULL, NULL, NULL, 135, NULL, NULL, NULL, '3097758000000340001', '2022-07-31', NULL, 56704.94, '12345', NULL, NULL),
(1811, 'TAX-00005', NULL, 110400, 2214, NULL, NULL, NULL, 136, NULL, NULL, NULL, '3097758000000357059', '2022-08-31', 33045.84, NULL, '123', NULL, NULL),
(1812, 'TAX-00005', NULL, 410100, 2214, NULL, NULL, NULL, 136, NULL, NULL, NULL, '3097758000000357059', '2022-08-31', NULL, 33045.84, '12345', NULL, NULL),
(1823, 'JV22010012', 'JV', 112200, NULL, NULL, 27, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-21', 1000.00, NULL, NULL, NULL, NULL),
(1824, 'JV22010012', 'JV', 200200, NULL, NULL, 27, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-21', NULL, 1000.00, NULL, NULL, NULL),
(1825, 'JV22010013', 'JV', 112200, NULL, NULL, 28, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-21', 750.00, NULL, NULL, NULL, NULL),
(1826, 'JV22010013', 'JV', 200200, NULL, NULL, 28, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-21', NULL, 750.00, NULL, NULL, NULL),
(1850, 'JV22100022', 'JV', 550000, NULL, NULL, 37, NULL, NULL, NULL, NULL, NULL, 'cleaning supplies', '2022-03-31', 129.60, NULL, NULL, NULL, NULL),
(1851, 'JV22100022', 'JV', 112200, NULL, NULL, 37, NULL, NULL, NULL, NULL, NULL, 'Asma Khan', '2022-03-31', 500.00, NULL, NULL, NULL, NULL),
(1852, 'JV22100022', 'JV', 111300, NULL, NULL, 37, NULL, NULL, NULL, NULL, NULL, 'visa of Jayson', '2022-03-31', 4500.00, NULL, NULL, NULL, NULL),
(1853, 'JV22100022', 'JV', 550000, NULL, NULL, 37, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31', 434.00, NULL, NULL, NULL, NULL),
(1854, 'JV22100022', 'JV', 120327, NULL, NULL, 37, NULL, NULL, NULL, NULL, NULL, '6 chairs and 4 white bars', '2022-03-31', 680.00, NULL, NULL, NULL, NULL),
(1855, 'JV22100022', 'JV', 500600, NULL, NULL, 37, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31', 140.00, NULL, NULL, NULL, NULL),
(1856, 'JV22100022', 'JV', 200200, NULL, NULL, 37, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31', NULL, 6383.60, NULL, NULL, NULL),
(1857, 'JV22100024', 'JV', 550540, NULL, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31', 794.66, NULL, NULL, NULL, NULL),
(1858, 'JV22100024', 'JV', 220100, NULL, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31', NULL, 794.66, NULL, NULL, NULL),
(1859, 'JV22100026', 'JV', 550740, NULL, NULL, 41, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31', 22007.07, NULL, NULL, NULL, NULL),
(1860, 'JV22100026', 'JV', 210403, NULL, NULL, 41, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31', NULL, 22007.07, NULL, NULL, NULL),
(1867, 'JV22100031', 'JV', 550740, NULL, NULL, 46, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31', 13155.27, NULL, NULL, NULL, NULL),
(1868, 'JV22100031', 'JV', 200700, NULL, NULL, 46, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31', NULL, 13155.27, NULL, NULL, NULL),
(1869, 'JV22100034', 'JV', 500600, NULL, NULL, 49, NULL, NULL, NULL, NULL, NULL, 'staff coffee', '2022-04-11', 103.00, NULL, NULL, NULL, NULL),
(1870, 'JV22100034', 'JV', 551040, NULL, NULL, 49, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-11', 24.00, NULL, NULL, NULL, NULL),
(1871, 'JV22100034', 'JV', 500600, NULL, NULL, 49, NULL, NULL, NULL, NULL, NULL, 'staff coffee', '2022-04-11', 112.00, NULL, NULL, NULL, NULL),
(1872, 'JV22100034', 'JV', 500600, NULL, NULL, 49, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-11', 168.00, NULL, NULL, NULL, NULL),
(1873, 'JV22100034', 'JV', 200200, NULL, NULL, 49, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-11', NULL, 407.00, NULL, NULL, NULL),
(1874, 'JV22100035', 'JV', 200300, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-11', 80344.45, NULL, NULL, NULL, NULL),
(1875, 'JV22100035', 'JV', 111300, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, 'Anne for the visa of Binu Sharma', '2022-04-11', 4500.00, NULL, NULL, NULL, NULL),
(1876, 'JV22100035', 'JV', 112200, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, 'visa of Armando Nares', '2022-04-11', 1350.00, NULL, NULL, NULL, NULL),
(1877, 'JV22100035', 'JV', 111300, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-11', 17000.00, NULL, NULL, NULL, NULL),
(1878, 'JV22100035', 'JV', 550000, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, 'rounding off', '2022-04-11', 0.55, NULL, NULL, NULL, NULL),
(1879, 'JV22100035', 'JV', 210403, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-11', NULL, 103195.00, NULL, NULL, NULL),
(1880, 'JV22100039', 'JV', 500600, NULL, NULL, 54, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-25', 168.00, NULL, NULL, NULL, NULL),
(1881, 'JV22100039', 'JV', 200200, NULL, NULL, 54, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-25', NULL, 168.00, NULL, NULL, NULL),
(1882, 'JV22100045', 'JV', 200300, NULL, NULL, 60, NULL, NULL, NULL, NULL, NULL, 'March adjustment', '2022-04-30', 3116.66, NULL, NULL, NULL, NULL),
(1883, 'JV22100045', 'JV', 220100, NULL, NULL, 60, NULL, NULL, NULL, NULL, NULL, 'Cooling Charges', '2022-04-30', 794.66, NULL, NULL, NULL, NULL),
(1884, 'JV22100045', 'JV', 130400, NULL, NULL, 60, NULL, NULL, NULL, NULL, NULL, 'insurance of babar', '2022-04-30', 2231.25, NULL, NULL, NULL, NULL),
(1885, 'JV22100045', 'JV', 111300, NULL, NULL, 60, NULL, NULL, NULL, NULL, NULL, 'Anne for Sangeen & Wynsther', '2022-04-30', 9000.00, NULL, NULL, NULL, NULL),
(1886, 'JV22100045', 'JV', 112200, NULL, NULL, 60, NULL, NULL, NULL, NULL, NULL, '3mos visa Ahmed Manzoor', '2022-04-30', 1350.00, NULL, NULL, NULL, NULL),
(1887, 'JV22100045', 'JV', 120327, NULL, NULL, 60, NULL, NULL, NULL, NULL, NULL, 'Dell powerage R240-Rack 1U', '2022-04-30', 6415.50, NULL, NULL, NULL, NULL),
(1888, 'JV22100045', 'JV', 200300, NULL, NULL, 60, NULL, NULL, NULL, NULL, NULL, 'Illhem Meddour- March', '2022-04-30', 650.00, NULL, NULL, NULL, NULL),
(1889, 'JV22100045', 'JV', 200300, NULL, NULL, 60, NULL, NULL, NULL, NULL, NULL, 'Ahmad Kamal- March', '2022-04-30', 900.00, NULL, NULL, NULL, NULL),
(1890, 'JV22100045', 'JV', 112200, NULL, NULL, 60, NULL, NULL, NULL, NULL, NULL, 'Ahmed Manzoor visa fine', '2022-04-30', 455.00, NULL, NULL, NULL, NULL),
(1891, 'JV22100045', 'JV', 210403, NULL, NULL, 60, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-30', NULL, 4692.25, NULL, NULL, NULL),
(1892, 'JV22100045', 'JV', 200200, NULL, NULL, 60, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-30', NULL, 13.07, NULL, NULL, NULL),
(1893, 'JV22100045', 'JV', 200100, NULL, NULL, 60, NULL, NULL, NULL, NULL, NULL, 'from FBC revenue', '2022-04-30', NULL, 3207.75, NULL, NULL, NULL),
(1894, 'JV22100045', 'JV', 111300, NULL, NULL, 60, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-30', NULL, 17000.00, NULL, NULL, NULL),
(1903, 'JV22100061', 'JV', 112200, NULL, NULL, 76, NULL, NULL, NULL, NULL, NULL, 'Phiona', '2022-05-24', 500.00, NULL, NULL, NULL, NULL),
(1904, 'JV22100061', 'JV', 210102, NULL, NULL, 76, NULL, NULL, NULL, NULL, NULL, 'compensation for damage television during party', '2022-05-24', NULL, 500.00, NULL, NULL, NULL),
(1910, 'JV22100106', 'JV', 500400, NULL, NULL, 121, NULL, NULL, NULL, NULL, NULL, 'dewa', '2022-07-06', 503.27, NULL, NULL, NULL, NULL),
(1911, 'JV22100106', 'JV', 200200, NULL, NULL, 121, NULL, NULL, NULL, NULL, NULL, 'for June 2022', '2022-07-06', NULL, 503.27, NULL, NULL, NULL),
(1917, 'JV22070119', 'JV', 550740, NULL, NULL, 134, NULL, NULL, NULL, NULL, NULL, 'Du', '2022-07-31', 3339.00, NULL, NULL, NULL, NULL),
(1918, 'JV22070119', 'JV', 550740, NULL, NULL, 134, NULL, NULL, NULL, NULL, NULL, 'Etisalat', '2022-07-31', 28022.34, NULL, NULL, NULL, NULL),
(1919, 'JV22070119', 'JV', 200700, NULL, NULL, 134, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-31', NULL, 31361.34, NULL, NULL, NULL),
(1920, 'JV22070119', 'JV', 500400, NULL, NULL, 134, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-31', 511.21, NULL, NULL, NULL, NULL),
(1921, 'JV22070119', 'JV', 200800, NULL, NULL, 134, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-31', NULL, 511.21, NULL, NULL, NULL),
(1922, 'JV22100126', 'JV', 500400, NULL, NULL, 141, NULL, NULL, NULL, NULL, NULL, 'DEWA', '2022-08-04', 511.21, NULL, NULL, NULL, NULL),
(1923, 'JV22100126', 'JV', 111300, NULL, NULL, 141, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-04', NULL, 511.21, NULL, NULL, NULL),
(1929, 'JV22100104', 'JV', 500400, NULL, NULL, 119, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-30', 503.27, NULL, NULL, NULL, NULL),
(1930, 'JV22100104', 'JV', 200800, NULL, NULL, 119, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-30', NULL, 503.27, NULL, NULL, NULL),
(1931, 'JV22100104', 'JV', 550740, NULL, NULL, 119, NULL, NULL, NULL, NULL, NULL, 'Etisalat', '2022-06-30', 30184.03, NULL, NULL, NULL, NULL),
(1932, 'JV22100104', 'JV', 550740, NULL, NULL, 119, NULL, NULL, NULL, NULL, NULL, 'DU', '2022-06-30', 3339.00, NULL, NULL, NULL, NULL),
(1933, 'JV22100104', 'JV', 200700, NULL, NULL, 119, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-30', NULL, 33523.03, NULL, NULL, NULL),
(1934, 'JV22100051', 'JV', 510661, NULL, NULL, 66, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-30', 89233.33, NULL, NULL, NULL, NULL),
(1935, 'JV22100051', 'JV', 500500, NULL, NULL, 66, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-30', 17192.15, NULL, NULL, NULL, NULL),
(1936, 'JV22100051', 'JV', 112200, NULL, NULL, 66, NULL, NULL, NULL, NULL, NULL, 'Manzoor Salary', '2022-04-30', NULL, 1000.00, NULL, NULL, NULL),
(1937, 'JV22100051', 'JV', 112200, NULL, NULL, 66, NULL, NULL, NULL, NULL, NULL, 'Jason Toledo', '2022-04-30', NULL, 3000.00, NULL, NULL, NULL),
(1938, 'JV22100051', 'JV', 112200, NULL, NULL, 66, NULL, NULL, NULL, NULL, NULL, 'Wynster', '2022-04-30', NULL, 700.00, NULL, NULL, NULL),
(1939, 'JV22100051', 'JV', 112200, NULL, NULL, 66, NULL, NULL, NULL, NULL, NULL, 'armando', '2022-04-30', NULL, 1350.00, NULL, NULL, NULL),
(1940, 'JV22100051', 'JV', 510661, NULL, NULL, 66, NULL, NULL, NULL, NULL, NULL, 'Mr. Babar', '2022-04-30', 8000.00, NULL, NULL, NULL, NULL),
(1941, 'JV22100051', 'JV', 200300, NULL, NULL, 66, NULL, NULL, NULL, NULL, NULL, 'April month', '2022-04-30', NULL, 108375.48, NULL, NULL, NULL),
(1942, 'JV22010015', 'JV', 130400, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, 'letter head', '2022-02-28', 315.00, NULL, NULL, NULL, NULL),
(1943, 'JV22010015', 'JV', 500600, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, 'drinks for the staff', '2022-02-28', 366.00, NULL, NULL, NULL, NULL),
(1944, 'JV22010015', 'JV', 500600, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, 'pizza for the staff', '2022-02-28', 402.36, NULL, NULL, NULL, NULL),
(1945, 'JV22010015', 'JV', 200200, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-28', NULL, 1083.36, NULL, NULL, NULL),
(1946, 'EXP-00019', NULL, 111000, NULL, 1, NULL, NULL, NULL, 19, NULL, NULL, '', '2022-08-31', NULL, 210.00, '614', NULL, NULL),
(1947, 'EXP-00019', NULL, 560110, NULL, 1, NULL, NULL, NULL, 19, NULL, NULL, '', '2022-08-31', 210.00, NULL, '615', NULL, NULL),
(1948, 'EXP-00012', NULL, 111300, NULL, 1, NULL, NULL, NULL, 12, NULL, NULL, '', '2022-06-27', NULL, 53.50, '614', NULL, NULL),
(1949, 'EXP-00012', NULL, 550340, NULL, 1, NULL, NULL, NULL, 12, NULL, NULL, '', '2022-06-27', 53.50, NULL, '615', NULL, NULL),
(1950, 'EXP-00003', NULL, 210403, NULL, 1, NULL, NULL, NULL, 3, NULL, NULL, '', '2022-03-13', NULL, 694.00, '614', NULL, NULL),
(1951, 'EXP-00003', NULL, 120327, NULL, 1, NULL, NULL, NULL, 3, NULL, NULL, '', '2022-03-13', 694.00, NULL, '615', NULL, NULL),
(1952, 'JV23030159', 'JV', 111100, NULL, NULL, 174, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-14', 33000.00, NULL, NULL, NULL, NULL),
(1953, 'JV23030159', 'JV', 111000, NULL, NULL, 174, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-14', NULL, 33000.00, NULL, NULL, NULL),
(1954, 'JV23030160', 'JV', 500400, NULL, NULL, 175, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-22', 532.66, NULL, NULL, NULL, NULL),
(1955, 'JV23030160', 'JV', 200800, NULL, NULL, 175, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-22', NULL, 532.66, NULL, NULL, NULL),
(1956, 'JV23030161', 'JV', 200300, NULL, NULL, 176, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30', 800.00, NULL, NULL, NULL, NULL),
(1957, 'JV23030161', 'JV', 500500, NULL, NULL, 176, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30', NULL, 800.00, NULL, NULL, NULL),
(1958, 'JV23030162', 'JV', 111300, NULL, NULL, 177, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-14', 40.00, NULL, NULL, NULL, NULL),
(1959, 'JV23030162', 'JV', 550000, NULL, NULL, 177, NULL, NULL, NULL, NULL, NULL, 'cleaning materials and tea', '2022-10-14', 760.00, NULL, NULL, NULL, NULL),
(1960, 'JV23030162', 'JV', 200300, NULL, NULL, 177, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-14', NULL, 800.00, NULL, NULL, NULL),
(1961, 'JV23030163', 'JV', 111100, NULL, NULL, 178, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-12', 85000.00, NULL, NULL, NULL, NULL),
(1962, 'JV23030163', 'JV', 111000, NULL, NULL, 178, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-12', NULL, 85000.00, NULL, NULL, NULL),
(1963, 'JV23030164', 'JV', 112200, NULL, NULL, 179, NULL, NULL, NULL, NULL, NULL, 'Faisal Ijaz', '2022-09-20', 1100.00, NULL, NULL, NULL, NULL),
(1964, 'JV23030164', 'JV', 210403, NULL, NULL, 179, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-20', NULL, 1100.00, NULL, NULL, NULL),
(1965, 'JV23030165', 'JV', 111300, NULL, NULL, 180, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-22', 1900.00, NULL, NULL, NULL, NULL),
(1966, 'JV23030165', 'JV', 210403, NULL, NULL, 180, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-22', NULL, 1900.00, NULL, NULL, NULL),
(1967, 'JV23030166', 'JV', 200300, NULL, NULL, 181, NULL, NULL, NULL, NULL, NULL, 'Aug. 1 - 18', '2022-09-23', 900.00, NULL, NULL, NULL, NULL),
(1968, 'JV23030166', 'JV', 111300, NULL, NULL, 181, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-23', NULL, 900.00, NULL, NULL, NULL),
(1969, 'JV23030167', 'JV', 200801, NULL, NULL, 182, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-26', 8795.85, NULL, NULL, NULL, NULL),
(1970, 'JV23030167', 'JV', 112100, NULL, NULL, 182, NULL, NULL, NULL, NULL, NULL, 'Mohd Fardin Sofi', '2022-09-26', 7800.00, NULL, NULL, NULL, NULL),
(1971, 'JV23030167', 'JV', 210403, NULL, NULL, 182, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-26', NULL, 16595.85, NULL, NULL, NULL),
(1972, 'JV23030168', 'JV', 560110, NULL, NULL, 183, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-26', 105.00, NULL, NULL, NULL, NULL),
(1973, 'JV23030168', 'JV', 111100, NULL, NULL, 183, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-26', NULL, 105.00, NULL, NULL, NULL),
(1974, 'JV23030169', 'JV', 510661, NULL, NULL, 184, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30', 733.00, NULL, NULL, NULL, NULL),
(1975, 'JV23030169', 'JV', 200300, NULL, NULL, 184, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30', NULL, 733.00, NULL, NULL, NULL),
(1976, 'JV23030170', 'JV', 410200, NULL, NULL, 185, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30', 2500.00, NULL, NULL, NULL, NULL),
(1977, 'JV23030170', 'JV', 150200, NULL, NULL, 185, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30', NULL, 2500.00, NULL, NULL, NULL),
(1981, 'JV22010001', 'JV', 111200, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'Rent security deposit', '2022-01-23', 3000.00, NULL, NULL, NULL, NULL),
(1982, 'JV22010001', 'JV', 130400, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 'processing for the tenancy contract', '2022-01-23', 500.00, NULL, NULL, NULL, NULL),
(1983, 'JV22010001', 'JV', 210403, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-23', NULL, 3500.00, NULL, NULL, NULL),
(1984, 'JV23030171', 'JV', 410200, NULL, NULL, 186, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30', 4405.97, NULL, NULL, NULL, NULL),
(1985, 'JV23030171', 'JV', 150200, NULL, NULL, 186, NULL, NULL, NULL, NULL, NULL, 'notice period of Abishek', '2022-09-30', NULL, 2999.54, NULL, NULL, NULL),
(1986, 'JV23030171', 'JV', 510661, NULL, NULL, 186, NULL, NULL, NULL, NULL, NULL, 'notice period of Varun', '2022-09-30', NULL, 1400.00, NULL, NULL, NULL),
(1987, 'JV23030171', 'JV', 150200, NULL, NULL, 186, NULL, NULL, NULL, NULL, NULL, 'excess on the visa exp', '2022-09-30', NULL, 6.43, NULL, NULL, NULL),
(1998, 'JV23030172', 'JV', 510661, NULL, NULL, 187, NULL, NULL, NULL, NULL, NULL, 'staff', '2022-09-30', 50900.00, NULL, NULL, NULL, NULL),
(1999, 'JV23030172', 'JV', 230300, NULL, NULL, 187, NULL, NULL, NULL, NULL, NULL, 'Isaac', '2022-09-30', 300.00, NULL, NULL, NULL, NULL),
(2000, 'JV23030172', 'JV', 500500, NULL, NULL, 187, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30', 44674.09, NULL, NULL, NULL, NULL),
(2001, 'JV23030172', 'JV', 510661, NULL, NULL, 187, NULL, NULL, NULL, NULL, NULL, 'Mr. Babar', '2022-09-30', 8000.00, NULL, NULL, NULL, NULL),
(2002, 'JV23030172', 'JV', 112200, NULL, NULL, 187, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30', NULL, 1100.00, NULL, NULL, NULL),
(2003, 'JV23030172', 'JV', 200300, NULL, NULL, 187, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30', NULL, 94990.76, NULL, NULL, NULL),
(2004, 'JV23030172', 'JV', 530110, NULL, NULL, 187, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30', 100.00, NULL, NULL, NULL, NULL),
(2005, 'JV23030172', 'JV', 200200, NULL, NULL, 187, NULL, NULL, NULL, NULL, NULL, 'shared salary for office boy', '2022-09-30', 1000.00, NULL, NULL, NULL, NULL),
(2006, 'JV23030172', 'JV', 210404, NULL, NULL, 187, NULL, NULL, NULL, NULL, NULL, 'Shrinnivasan and Nadir', '2022-09-30', NULL, 5883.33, NULL, NULL, NULL),
(2007, 'JV23030172', 'JV', 200200, NULL, NULL, 187, NULL, NULL, NULL, NULL, NULL, 'Zain', '2022-09-30', NULL, 4000.00, NULL, NULL, NULL),
(2008, 'JV23030172', 'JV', 210404, NULL, NULL, 187, NULL, NULL, NULL, NULL, NULL, 'shared salary for office boy', '2022-09-30', 1000.00, NULL, NULL, NULL, NULL),
(2009, 'JV23030173', 'JV', 560110, NULL, NULL, 188, NULL, NULL, NULL, NULL, NULL, 'bank transfer fee plus vat', '2022-09-30', 3.15, NULL, NULL, NULL, NULL),
(2010, 'JV23030173', 'JV', 560110, NULL, NULL, 188, NULL, NULL, NULL, NULL, NULL, 'relationship fees plus vat', '2022-09-30', 210.00, NULL, NULL, NULL, NULL),
(2011, 'JV23030173', 'JV', 560110, NULL, NULL, 188, NULL, NULL, NULL, NULL, NULL, 'fee salam plus output vat', '2022-09-30', NULL, 2.10, NULL, NULL, NULL),
(2012, 'JV23030173', 'JV', 111000, NULL, NULL, 188, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30', NULL, 211.05, NULL, NULL, NULL),
(2013, 'JV23030174', 'JV', 550115, NULL, NULL, 189, NULL, NULL, NULL, NULL, NULL, 'processing fee for tenancy contract', '2022-09-30', 41.67, NULL, NULL, NULL, NULL),
(2014, 'JV23030174', 'JV', 550340, NULL, NULL, 189, NULL, NULL, NULL, NULL, NULL, 'letter head', '2022-09-30', 157.50, NULL, NULL, NULL, NULL),
(2015, 'JV23030174', 'JV', 500700, NULL, NULL, 189, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30', 528.94, NULL, NULL, NULL, NULL),
(2016, 'JV23030174', 'JV', 140400, NULL, NULL, 189, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30', NULL, 728.11, NULL, NULL, NULL),
(2017, 'JV23030174', 'JV', 550115, NULL, NULL, 189, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30', 2444.71, NULL, NULL, NULL, NULL),
(2018, 'JV23030174', 'JV', 130300, NULL, NULL, 189, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30', NULL, 2444.71, NULL, NULL, NULL),
(2019, 'JV23030174', 'JV', 550240, NULL, NULL, 189, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30', 5000.00, NULL, NULL, NULL, NULL),
(2020, 'JV23030174', 'JV', 112300, NULL, NULL, 189, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30', NULL, 5000.00, NULL, NULL, NULL),
(2021, 'JV23030174', 'JV', 560211, NULL, NULL, 189, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30', 1405.77, NULL, NULL, NULL, NULL),
(2022, 'JV23030174', 'JV', 150200, NULL, NULL, 189, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30', NULL, 1405.77, NULL, NULL, NULL),
(2026, 'JV22100028', 'JV', 520100, NULL, NULL, 43, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31', 1088.47, NULL, NULL, NULL, NULL),
(2027, 'JV22100028', 'JV', 112000, NULL, NULL, 43, NULL, NULL, NULL, NULL, NULL, 'office equipment', '2022-03-31', NULL, 859.00, NULL, NULL, NULL),
(2028, 'JV22100028', 'JV', 111700, NULL, NULL, 43, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31', NULL, 229.47, NULL, NULL, NULL),
(2029, 'JV22100110', 'JV', 200300, NULL, NULL, 125, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-14', 126953.75, NULL, NULL, NULL, NULL),
(2030, 'JV22100110', 'JV', 111300, NULL, NULL, 125, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-14', NULL, 81053.75, NULL, NULL, NULL),
(2031, 'JV22100110', 'JV', 111000, NULL, NULL, 125, NULL, NULL, NULL, NULL, NULL, 'WPS', '2022-07-14', NULL, 33970.69, NULL, NULL, NULL),
(2032, 'JV22100110', 'JV', 111100, NULL, NULL, 125, NULL, NULL, NULL, NULL, NULL, 'staff with their own bank account', '2022-07-14', NULL, 11928.73, NULL, NULL, NULL),
(2033, 'JV22100110', 'JV', 560110, NULL, NULL, 125, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-14', NULL, 0.58, NULL, NULL, NULL),
(2034, 'JV22100020', 'JV', 112200, NULL, NULL, 35, NULL, NULL, NULL, NULL, NULL, 'Asma Khan', '2022-03-14', NULL, 500.00, NULL, NULL, NULL),
(2035, 'JV22100020', 'JV', 510661, NULL, NULL, 35, NULL, NULL, NULL, NULL, NULL, 'salary of staff who worked until March 5, 2022', '2022-03-14', 4083.33, NULL, NULL, NULL, NULL),
(2036, 'JV22100020', 'JV', 200100, NULL, NULL, 35, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-14', NULL, 14530.00, NULL, NULL, NULL),
(2037, 'JV22100020', 'JV', 210403, NULL, NULL, 35, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-14', NULL, 13270.00, NULL, NULL, NULL),
(2038, 'JV22100020', 'JV', 500500, NULL, NULL, 35, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-14', 268.00, NULL, NULL, NULL, NULL),
(2039, 'JV22100020', 'JV', 200200, NULL, NULL, 35, NULL, NULL, NULL, NULL, NULL, 'from petty cash', '2022-03-14', NULL, 11.33, NULL, NULL, NULL),
(2040, 'JV22100020', 'JV', 200300, NULL, NULL, 35, NULL, NULL, NULL, NULL, NULL, 'Feb. 2022 payroll', '2022-03-14', 23960.00, NULL, NULL, NULL, NULL),
(2041, 'JV22100027', 'JV', 510661, NULL, NULL, 42, NULL, NULL, NULL, NULL, NULL, 'staff', '2022-03-31', 61766.67, NULL, NULL, NULL, NULL),
(2042, 'JV22100027', 'JV', 510661, NULL, NULL, 42, NULL, NULL, NULL, NULL, NULL, 'Mr. Babar', '2022-03-31', 8000.00, NULL, NULL, NULL, NULL),
(2043, 'JV22100027', 'JV', 500500, NULL, NULL, 42, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31', 12327.78, NULL, NULL, NULL, NULL),
(2044, 'JV22100027', 'JV', 112200, NULL, NULL, 42, NULL, NULL, NULL, NULL, NULL, 'Ronfer', '2022-03-31', NULL, 750.00, NULL, NULL, NULL),
(2045, 'JV22100027', 'JV', 112200, NULL, NULL, 42, NULL, NULL, NULL, NULL, NULL, 'Ashik', '2022-03-31', NULL, 1000.00, NULL, NULL, NULL),
(2046, 'JV22100027', 'JV', 200300, NULL, NULL, 42, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-31', NULL, 80344.45, NULL, NULL, NULL),
(2047, 'JV22040033', 'JV', 500500, NULL, NULL, 48, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-10', 500.00, NULL, NULL, NULL, NULL),
(2048, 'JV22040033', 'JV', 210403, NULL, NULL, 48, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-10', NULL, 500.00, NULL, NULL, NULL),
(2049, 'JV22100038', 'JV', 500500, NULL, NULL, 53, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-22', 300.00, NULL, NULL, NULL, NULL),
(2050, 'JV22100038', 'JV', 200100, NULL, NULL, 53, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-22', NULL, 300.00, NULL, NULL, NULL),
(2051, 'JV22010008', 'JV', 111200, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, 'dewa', '2022-02-10', 2000.00, NULL, NULL, NULL, NULL),
(2052, 'JV22010008', 'JV', 550000, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, 'activation fee', '2022-02-10', 130.00, NULL, NULL, NULL, NULL),
(2053, 'JV22010008', 'JV', 210403, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-10', NULL, 2130.00, NULL, NULL, NULL),
(2054, 'JV22010009', 'JV', 130300, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, 'Smart Dubai Government', '2022-02-10', 2130.00, NULL, NULL, NULL, NULL),
(2055, 'JV22010009', 'JV', 120327, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, 'refrigerator', '2022-02-10', 1968.00, NULL, NULL, NULL, NULL),
(2056, 'JV22010009', 'JV', 500600, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-10', 427.50, NULL, NULL, NULL, NULL),
(2057, 'JV22010009', 'JV', 550000, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-10', 579.00, NULL, NULL, NULL, NULL),
(2058, 'JV22010009', 'JV', 210403, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-10', NULL, 5104.50, NULL, NULL, NULL),
(2059, 'JV22100017', 'JV', 550340, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, 'various supplies', '2022-03-01', 488.25, NULL, NULL, NULL, NULL),
(2060, 'JV22100017', 'JV', 550000, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, 'cleaning supplies', '2022-03-01', 119.80, NULL, NULL, NULL, NULL),
(2061, 'JV22100017', 'JV', 550000, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, 't-shirt for staff reward', '2022-03-01', 435.00, NULL, NULL, NULL, NULL),
(2062, 'JV22100017', 'JV', 200200, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-01', NULL, 1043.05, NULL, NULL, NULL),
(2063, 'JV23030175', 'JV', 520100, NULL, NULL, 190, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30', 1491.16, NULL, NULL, NULL, NULL),
(2064, 'JV23030175', 'JV', 112000, NULL, NULL, 190, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30', NULL, 1035.91, NULL, NULL, NULL),
(2065, 'JV23030175', 'JV', 111700, NULL, NULL, 190, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30', NULL, 455.25, NULL, NULL, NULL),
(2066, 'JV23030176', 'JV', 530110, NULL, NULL, 191, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30', 2162.67, NULL, NULL, NULL, NULL),
(2067, 'JV23030176', 'JV', 530111, NULL, NULL, 191, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30', 1321.78, NULL, NULL, NULL, NULL),
(2068, 'JV23030176', 'JV', 520101, NULL, NULL, 191, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30', 1049.93, NULL, NULL, NULL, NULL),
(2069, 'JV23030176', 'JV', 230300, NULL, NULL, 191, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30', NULL, 2162.67, NULL, NULL, NULL),
(2070, 'JV23030176', 'JV', 230400, NULL, NULL, 191, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30', NULL, 1321.78, NULL, NULL, NULL),
(2071, 'JV23030176', 'JV', 230401, NULL, NULL, 191, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30', NULL, 1049.93, NULL, NULL, NULL),
(2072, 'JV23030177', 'JV', 550740, NULL, NULL, 192, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30', 17857.80, NULL, NULL, NULL, NULL),
(2073, 'JV23030177', 'JV', 200700, NULL, NULL, 192, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30', NULL, 17857.80, NULL, NULL, NULL),
(2074, 'JV23030178', 'JV', 551140, NULL, NULL, 193, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30', 1232.48, NULL, NULL, NULL, NULL),
(2075, 'JV23030178', 'JV', 220100, NULL, NULL, 193, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30', NULL, 1232.48, NULL, NULL, NULL),
(2076, 'JV23030179', 'JV', 510661, NULL, NULL, 194, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30', 300.00, NULL, NULL, NULL, NULL),
(2077, 'JV23030179', 'JV', 200300, NULL, NULL, 194, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30', NULL, 300.00, NULL, NULL, NULL),
(2078, 'JV23030180', 'JV', 550340, NULL, NULL, 195, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30', 100.00, NULL, NULL, NULL, NULL),
(2079, 'JV23030180', 'JV', 130400, NULL, NULL, 195, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30', NULL, 100.00, NULL, NULL, NULL),
(2080, 'JV23030181', 'JV', 550740, NULL, NULL, 196, NULL, NULL, NULL, NULL, NULL, 'inv0125776837', '2022-09-30', 3339.00, NULL, NULL, NULL, NULL),
(2081, 'JV23030181', 'JV', 200700, NULL, NULL, 196, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-30', NULL, 3339.00, NULL, NULL, NULL),
(2082, 'JV23030182', 'JV', 111100, NULL, NULL, 197, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-03', 3400.00, NULL, NULL, NULL, NULL),
(2083, 'JV23030182', 'JV', 111100, NULL, NULL, 197, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-03', 100.00, NULL, NULL, NULL, NULL),
(2084, 'JV23030182', 'JV', 110402, NULL, NULL, 197, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-03', NULL, 3500.00, NULL, NULL, NULL),
(2085, 'JV23030183', 'JV', 110402, NULL, NULL, 198, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-03', 3500.00, NULL, NULL, NULL, NULL),
(2086, 'JV23030183', 'JV', 111100, NULL, NULL, 198, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-03', NULL, 3500.00, NULL, NULL, NULL),
(2087, 'JV23030184', 'JV', 200300, NULL, NULL, 199, NULL, NULL, NULL, NULL, NULL, 'transfer to Extensive', '2022-10-12', 8000.00, NULL, NULL, NULL, NULL),
(2088, 'JV23030184', 'JV', 111100, NULL, NULL, 199, NULL, NULL, NULL, NULL, NULL, 'salary of Mr. Babar', '2022-10-12', NULL, 25000.00, NULL, NULL, NULL),
(2089, 'JV23030184', 'JV', 210403, NULL, NULL, 199, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-12', 17000.00, NULL, NULL, NULL, NULL),
(2090, 'JV23030185', 'JV', 111100, NULL, NULL, 200, NULL, NULL, NULL, NULL, NULL, 'PHUB191846127', '2022-10-13', 2000.00, NULL, NULL, NULL, NULL),
(2091, 'JV23030185', 'JV', 200200, NULL, NULL, 200, NULL, NULL, NULL, NULL, NULL, 'shared salary of Ismail', '2022-10-13', NULL, 2000.00, NULL, NULL, NULL),
(2092, 'JV23030186', 'JV', 200300, NULL, NULL, 201, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-13', 86991.09, NULL, NULL, NULL, NULL),
(2093, 'JV23030186', 'JV', 111100, NULL, NULL, 201, NULL, NULL, NULL, NULL, NULL, 'SLSU832564', '2022-10-13', NULL, 49074.09, NULL, NULL, NULL),
(2094, 'JV23030186', 'JV', 111100, NULL, NULL, 201, NULL, NULL, NULL, NULL, NULL, 'CHEQUE WITHDRAWAL', '2022-10-13', NULL, 5317.00, NULL, NULL, NULL),
(2095, 'JV23030186', 'JV', 111100, NULL, NULL, 201, NULL, NULL, NULL, NULL, NULL, 'PHUB191844054', '2022-10-13', NULL, 5300.00, NULL, NULL, NULL),
(2096, 'JV23030186', 'JV', 210403, NULL, NULL, 201, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-13', NULL, 27300.00, NULL, NULL, NULL),
(2097, 'JV23030187', 'JV', 200300, NULL, NULL, 202, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-14', 733.00, NULL, NULL, NULL, NULL),
(2098, 'JV23030187', 'JV', 111100, NULL, NULL, 202, NULL, NULL, NULL, NULL, NULL, 'PHUB191954009', '2022-10-14', NULL, 733.00, NULL, NULL, NULL),
(2099, 'JV23030188', 'JV', 111100, NULL, NULL, 203, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-20', 1050.00, NULL, NULL, NULL, NULL),
(2100, 'JV23030188', 'JV', 111300, NULL, NULL, 203, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-20', 1250.00, NULL, NULL, NULL, NULL),
(2101, 'JV23030188', 'JV', 210403, NULL, NULL, 203, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-20', NULL, 2300.00, NULL, NULL, NULL),
(2102, 'JV23030189', 'JV', 150200, NULL, NULL, 204, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-20', 1050.00, NULL, NULL, NULL, NULL),
(2103, 'JV23030189', 'JV', 111100, NULL, NULL, 204, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-20', NULL, 1050.00, NULL, NULL, NULL),
(2104, 'JV23030190', 'JV', 200300, NULL, NULL, 205, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-20', 300.00, NULL, NULL, NULL, NULL),
(2105, 'JV23030190', 'JV', 111300, NULL, NULL, 205, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-20', NULL, 300.00, NULL, NULL, NULL),
(2106, 'JV23030191', 'JV', 500400, NULL, NULL, 206, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31', 496.12, NULL, NULL, NULL, NULL),
(2107, 'JV23030191', 'JV', 200800, NULL, NULL, 206, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31', NULL, 496.12, NULL, NULL, NULL),
(2108, 'JV23030191', 'JV', 550540, NULL, NULL, 206, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31', 1245.89, NULL, NULL, NULL, NULL),
(2109, 'JV23030191', 'JV', 220100, NULL, NULL, 206, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31', NULL, 1245.89, NULL, NULL, NULL),
(2110, 'JV23030192', 'JV', 510661, NULL, NULL, 207, NULL, NULL, NULL, NULL, NULL, 'staff', '2022-10-31', 54516.67, NULL, NULL, NULL, NULL),
(2111, 'JV23030192', 'JV', 510661, NULL, NULL, 207, NULL, NULL, NULL, NULL, NULL, 'Mr. Babar', '2022-10-31', 8000.00, NULL, NULL, NULL, NULL),
(2112, 'JV23030192', 'JV', 500500, NULL, NULL, 207, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31', 49621.24, NULL, NULL, NULL, NULL),
(2113, 'JV23030192', 'JV', 210404, NULL, NULL, 207, NULL, NULL, NULL, NULL, NULL, 'shared salary for office boy', '2022-10-31', 1000.00, NULL, NULL, NULL, NULL),
(2114, 'JV23030192', 'JV', 200200, NULL, NULL, 207, NULL, NULL, NULL, NULL, NULL, 'shared salary for office boy', '2022-10-31', 1000.00, NULL, NULL, NULL, NULL),
(2115, 'JV23030192', 'JV', 200200, NULL, NULL, 207, NULL, NULL, NULL, NULL, NULL, 'Zain Munir', '2022-10-31', NULL, 3000.00, NULL, NULL, NULL),
(2116, 'JV23030192', 'JV', 112200, NULL, NULL, 207, NULL, NULL, NULL, NULL, NULL, 'Mohd Fardin', '2022-10-31', NULL, 3500.00, NULL, NULL, NULL),
(2117, 'JV23030192', 'JV', 200300, NULL, NULL, 207, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31', NULL, 107637.91, NULL, NULL, NULL),
(2118, 'JV23030193', 'JV', 530110, NULL, NULL, 208, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31', 3343.20, NULL, NULL, NULL, NULL),
(2119, 'JV23030193', 'JV', 530111, NULL, NULL, 208, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31', 1872.50, NULL, NULL, NULL, NULL),
(2120, 'JV23030193', 'JV', 520101, NULL, NULL, 208, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31', 1464.12, NULL, NULL, NULL, NULL),
(2121, 'JV23030193', 'JV', 230300, NULL, NULL, 208, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31', NULL, 3343.20, NULL, NULL, NULL),
(2122, 'JV23030193', 'JV', 230400, NULL, NULL, 208, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31', NULL, 1872.50, NULL, NULL, NULL),
(2123, 'JV23030193', 'JV', 230401, NULL, NULL, 208, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31', NULL, 1464.12, NULL, NULL, NULL),
(2124, 'JV23030194', 'JV', 550115, NULL, NULL, 209, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31', 41.67, NULL, NULL, NULL, NULL),
(2125, 'JV23030194', 'JV', 500700, NULL, NULL, 209, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31', 528.94, NULL, NULL, NULL, NULL),
(2126, 'JV23030194', 'JV', 130400, NULL, NULL, 209, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31', NULL, 570.61, NULL, NULL, NULL);
INSERT INTO `journal` (`JournalID`, `VHNO`, `JournalType`, `ChartOfAccountID`, `PartyID`, `SupplierID`, `VoucherMstID`, `PettyMstID`, `InvoiceMasterID`, `ExpenseMasterID`, `PaymentMasterID`, `PurchasePaymentMasterID`, `Narration`, `Date`, `Dr`, `Cr`, `Trace`, `BankReconcile`, `ReconcileDate`) VALUES
(2127, 'JV23030194', 'JV', 500700, NULL, NULL, 209, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31', 2444.71, NULL, NULL, NULL, NULL),
(2128, 'JV23030194', 'JV', 130400, NULL, NULL, 209, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31', NULL, 2444.71, NULL, NULL, NULL),
(2129, 'JV23030194', 'JV', 550240, NULL, NULL, 209, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31', 5000.00, NULL, NULL, NULL, NULL),
(2130, 'JV23030194', 'JV', 112300, NULL, NULL, 209, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31', NULL, 5000.00, NULL, NULL, NULL),
(2131, 'JV23030194', 'JV', 560211, NULL, NULL, 209, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31', 3452.18, NULL, NULL, NULL, NULL),
(2132, 'JV23030194', 'JV', 150200, NULL, NULL, 209, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31', NULL, 3452.18, NULL, NULL, NULL),
(2133, 'JV23030195', 'JV', 520100, NULL, NULL, 210, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31', 1491.16, NULL, NULL, NULL, NULL),
(2134, 'JV23030195', 'JV', 112000, NULL, NULL, 210, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31', NULL, 1035.91, NULL, NULL, NULL),
(2135, 'JV23030195', 'JV', 111700, NULL, NULL, 210, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31', NULL, 455.25, NULL, NULL, NULL),
(2136, 'JV23030196', 'JV', 550340, NULL, NULL, 211, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31', 100.00, NULL, NULL, NULL, NULL),
(2137, 'JV23030196', 'JV', 130400, NULL, NULL, 211, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31', NULL, 100.00, NULL, NULL, NULL),
(2138, 'JV23050197', 'JV', 550740, NULL, NULL, 212, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31', 18144.81, NULL, NULL, NULL, NULL),
(2139, 'JV23050197', 'JV', 200700, NULL, NULL, 212, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31', NULL, 18144.81, NULL, NULL, NULL),
(2140, 'JV23050198', 'JV', 560110, NULL, NULL, 213, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31', 105.00, NULL, NULL, NULL, NULL),
(2141, 'JV23050198', 'JV', 111100, NULL, NULL, 213, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31', NULL, 105.00, NULL, NULL, NULL),
(2142, 'JV23050199', 'JV', 560110, NULL, NULL, 214, NULL, NULL, NULL, NULL, NULL, 'bank transfer fee plus vat', '2022-10-31', 3.15, NULL, NULL, NULL, NULL),
(2143, 'JV23050199', 'JV', 560110, NULL, NULL, 214, NULL, NULL, NULL, NULL, NULL, 'relationship fees plus vat', '2022-10-31', 210.00, NULL, NULL, NULL, NULL),
(2144, 'JV23050199', 'JV', 560110, NULL, NULL, 214, NULL, NULL, NULL, NULL, NULL, 'fee salam plus output vat', '2022-10-31', NULL, 2.10, NULL, NULL, NULL),
(2145, 'JV23050199', 'JV', 111000, NULL, NULL, 214, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-31', NULL, 211.05, NULL, NULL, NULL),
(2146, 'JV23050200', 'JV', 112200, NULL, NULL, 215, NULL, NULL, NULL, NULL, NULL, 'Mohd Fardin', '2022-11-03', 3500.00, NULL, NULL, NULL, NULL),
(2147, 'JV23050200', 'JV', 200001, NULL, NULL, 215, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-03', NULL, 3500.00, NULL, NULL, NULL),
(2148, 'JV23050201', 'JV', 112200, NULL, NULL, 216, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-04', 300.00, NULL, NULL, NULL, NULL),
(2149, 'JV23050201', 'JV', 111300, NULL, NULL, 216, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-04', NULL, 300.00, NULL, NULL, NULL),
(2150, 'JV23050202', 'JV', 111100, NULL, NULL, 217, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-07', 3500.00, NULL, NULL, NULL, NULL),
(2151, 'JV23050202', 'JV', 110402, NULL, NULL, 217, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-07', NULL, 3500.00, NULL, NULL, NULL),
(2152, 'JV23050203', 'JV', 110402, NULL, NULL, 218, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-07', 3500.00, NULL, NULL, NULL, NULL),
(2153, 'JV23050203', 'JV', 111100, NULL, NULL, 218, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-07', NULL, 3500.00, NULL, NULL, NULL),
(2154, 'JV23050204', 'JV', 111100, NULL, NULL, 219, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-09', 350.00, NULL, NULL, NULL, NULL),
(2155, 'JV23050204', 'JV', 230402, NULL, NULL, 219, NULL, NULL, NULL, NULL, NULL, 'Faisal Ijaz', '2022-11-09', NULL, 100.00, NULL, NULL, NULL),
(2156, 'JV23050204', 'JV', 230402, NULL, NULL, 219, NULL, NULL, NULL, NULL, NULL, 'Mingma', '2022-11-09', NULL, 250.00, NULL, NULL, NULL),
(2157, 'JV23050205', 'JV', 500600, NULL, NULL, 220, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-12', 1200.00, NULL, NULL, NULL, NULL),
(2158, 'JV23050205', 'JV', 200001, NULL, NULL, 220, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-12', NULL, 1200.00, NULL, NULL, NULL),
(2159, 'JV23050206', 'JV', 200300, NULL, NULL, 221, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-15', 66204.57, NULL, NULL, NULL, NULL),
(2160, 'JV23050206', 'JV', 111100, NULL, NULL, 221, NULL, NULL, NULL, NULL, NULL, 'SLSU850920', '2022-11-15', NULL, 54137.90, NULL, NULL, NULL),
(2161, 'JV23050206', 'JV', 111100, NULL, NULL, 221, NULL, NULL, NULL, NULL, NULL, 'PHUB197433560', '2022-11-15', NULL, 4066.67, NULL, NULL, NULL),
(2162, 'JV23050206', 'JV', 111100, NULL, NULL, 221, NULL, NULL, NULL, NULL, NULL, 'PHUB197423346', '2022-11-15', NULL, 8000.00, NULL, NULL, NULL),
(2163, 'JV23050207', 'JV', 111100, NULL, NULL, 222, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-15', 66205.00, NULL, NULL, NULL, NULL),
(2164, 'JV23050207', 'JV', 111000, NULL, NULL, 222, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-15', NULL, 66205.00, NULL, NULL, NULL),
(2165, 'JV23050208', 'JV', 200300, NULL, NULL, 223, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-15', 41433.50, NULL, NULL, NULL, NULL),
(2166, 'JV23050208', 'JV', 111000, NULL, NULL, 223, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-15', NULL, 41433.50, NULL, NULL, NULL),
(2167, 'JV23050209', 'JV', 112300, NULL, NULL, 224, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-15', 15000.00, NULL, NULL, NULL, NULL),
(2168, 'JV23050209', 'JV', 200002, NULL, NULL, 224, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-15', NULL, 15000.00, NULL, NULL, NULL),
(2169, 'JV23050210', 'JV', 111300, NULL, NULL, 225, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-17', 1682.00, NULL, NULL, NULL, NULL),
(2170, 'JV23050210', 'JV', 111100, NULL, NULL, 225, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-17', NULL, 1682.00, NULL, NULL, NULL),
(2171, 'JV23050211', 'JV', 200200, NULL, NULL, 226, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-17', 3000.00, NULL, NULL, NULL, NULL),
(2172, 'JV23050211', 'JV', 111100, NULL, NULL, 226, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-17', NULL, 3000.00, NULL, NULL, NULL),
(2173, 'JV23050212', 'JV', 111100, NULL, NULL, 227, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-17', 4682.00, NULL, NULL, NULL, NULL),
(2174, 'JV23050212', 'JV', 111000, NULL, NULL, 227, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-17', NULL, 4682.00, NULL, NULL, NULL),
(2175, 'JV23050213', 'JV', 111100, NULL, NULL, 228, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-17', 1245.89, NULL, NULL, NULL, NULL),
(2176, 'JV23050213', 'JV', 111000, NULL, NULL, 228, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-17', NULL, 1245.89, NULL, NULL, NULL),
(2177, 'JV23050214', 'JV', 510661, NULL, NULL, 229, NULL, NULL, NULL, NULL, NULL, 'Nov. 1-17, 2022', '2022-11-22', 1650.00, NULL, NULL, NULL, NULL),
(2178, 'JV23050214', 'JV', 111300, NULL, NULL, 229, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-22', NULL, 1650.00, NULL, NULL, NULL),
(2179, 'JV23050215', 'JV', 111300, NULL, NULL, 230, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-22', 2900.00, NULL, NULL, NULL, NULL),
(2180, 'JV23050215', 'JV', 200001, NULL, NULL, 230, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-22', NULL, 2900.00, NULL, NULL, NULL),
(2181, 'JV23050216', 'JV', 510761, NULL, NULL, 231, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-22', 2400.00, NULL, NULL, NULL, NULL),
(2182, 'JV23050216', 'JV', 200001, NULL, NULL, 231, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-22', NULL, 2400.00, NULL, NULL, NULL),
(2183, 'JV23050217', 'JV', 550340, NULL, NULL, 232, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-23', 315.00, NULL, NULL, NULL, NULL),
(2184, 'JV23050217', 'JV', 111100, NULL, NULL, 232, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-23', NULL, 315.00, NULL, NULL, NULL),
(2185, 'JV23050218', 'JV', 560110, NULL, NULL, 233, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-26', 105.00, NULL, NULL, NULL, NULL),
(2186, 'JV23050218', 'JV', 111100, NULL, NULL, 233, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-26', NULL, 105.00, NULL, NULL, NULL),
(2187, 'JV23050219', 'JV', 200700, NULL, NULL, 234, NULL, NULL, NULL, NULL, NULL, 'September 2022', '2022-11-29', 17857.80, NULL, NULL, NULL, NULL),
(2188, 'JV23050219', 'JV', 200700, NULL, NULL, 234, NULL, NULL, NULL, NULL, NULL, 'October 2022', '2022-11-29', 18144.81, NULL, NULL, NULL, NULL),
(2189, 'JV23050219', 'JV', 200002, NULL, NULL, 234, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-29', NULL, 36002.61, NULL, NULL, NULL),
(2190, 'JV23050220', 'JV', 500400, NULL, NULL, 235, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-30', 479.37, NULL, NULL, NULL, NULL),
(2191, 'JV23050220', 'JV', 200800, NULL, NULL, 235, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-30', NULL, 479.37, NULL, NULL, NULL),
(2192, 'JV23050221', 'JV', 510661, NULL, NULL, 236, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-30', 59683.33, NULL, NULL, NULL, NULL),
(2193, 'JV23050221', 'JV', 230300, NULL, NULL, 236, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-30', 93.33, NULL, NULL, NULL, NULL),
(2194, 'JV23050221', 'JV', 500500, NULL, NULL, 236, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-30', 84379.77, NULL, NULL, NULL, NULL),
(2195, 'JV23050221', 'JV', 200200, NULL, NULL, 236, NULL, NULL, NULL, NULL, NULL, 'shared salary for office boy', '2022-11-30', 1000.00, NULL, NULL, NULL, NULL),
(2196, 'JV23050221', 'JV', 210404, NULL, NULL, 236, NULL, NULL, NULL, NULL, NULL, 'shared salary for office boy', '2022-11-30', 1000.00, NULL, NULL, NULL, NULL),
(2197, 'JV23050221', 'JV', 200300, NULL, NULL, 236, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-30', NULL, 146156.43, NULL, NULL, NULL),
(2198, 'JV23050222', 'JV', 510661, NULL, NULL, 237, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-30', 1916.67, NULL, NULL, NULL, NULL),
(2199, 'JV23050222', 'JV', 200300, NULL, NULL, 237, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-30', NULL, 1916.67, NULL, NULL, NULL),
(2200, 'JV23050223', 'JV', 560110, NULL, NULL, 238, NULL, NULL, NULL, NULL, NULL, 'fee salaam', '2022-11-30', NULL, 2.10, NULL, NULL, NULL),
(2201, 'JV23050223', 'JV', 560110, NULL, NULL, 238, NULL, NULL, NULL, NULL, NULL, 'fund transfer charges', '2022-11-30', 3.10, NULL, NULL, NULL, NULL),
(2202, 'JV23050223', 'JV', 560110, NULL, NULL, 238, NULL, NULL, NULL, NULL, NULL, 'relationship fees', '2022-11-30', 210.00, NULL, NULL, NULL, NULL),
(2203, 'JV23050223', 'JV', 111000, NULL, NULL, 238, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-30', NULL, 211.00, NULL, NULL, NULL),
(2204, 'JV23050224', 'JV', 550115, NULL, NULL, 239, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-30', 41.67, NULL, NULL, NULL, NULL),
(2205, 'JV23050224', 'JV', 500700, NULL, NULL, 239, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-30', 528.94, NULL, NULL, NULL, NULL),
(2206, 'JV23050224', 'JV', 130400, NULL, NULL, 239, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-30', NULL, 570.61, NULL, NULL, NULL),
(2207, 'JV23050224', 'JV', 550115, NULL, NULL, 239, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-30', 2444.71, NULL, NULL, NULL, NULL),
(2208, 'JV23050224', 'JV', 130300, NULL, NULL, 239, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-30', NULL, 2444.71, NULL, NULL, NULL),
(2209, 'JV23050224', 'JV', 550240, NULL, NULL, 239, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-30', 5000.00, NULL, NULL, NULL, NULL),
(2210, 'JV23050224', 'JV', 112300, NULL, NULL, 239, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-30', NULL, 5000.00, NULL, NULL, NULL),
(2211, 'JV23050224', 'JV', 560212, NULL, NULL, 239, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-30', 9817.25, NULL, NULL, NULL, NULL),
(2212, 'JV23050224', 'JV', 150200, NULL, NULL, 239, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-30', NULL, 9817.25, NULL, NULL, NULL),
(2213, 'JV23050225', 'JV', 520100, NULL, NULL, 240, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-30', 1491.16, NULL, NULL, NULL, NULL),
(2214, 'JV23050225', 'JV', 112000, NULL, NULL, 240, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-30', NULL, 1035.91, NULL, NULL, NULL),
(2215, 'JV23050225', 'JV', 111700, NULL, NULL, 240, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-30', NULL, 455.25, NULL, NULL, NULL),
(2216, 'JV23050226', 'JV', 530110, NULL, NULL, 241, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-30', 4346.12, NULL, NULL, NULL, NULL),
(2217, 'JV23050226', 'JV', 530111, NULL, NULL, 241, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-30', 2262.71, NULL, NULL, NULL, NULL),
(2218, 'JV23050226', 'JV', 520101, NULL, NULL, 241, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-30', 1335.81, NULL, NULL, NULL, NULL),
(2219, 'JV23050226', 'JV', 230300, NULL, NULL, 241, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-30', NULL, 4346.12, NULL, NULL, NULL),
(2220, 'JV23050226', 'JV', 200600, NULL, NULL, 241, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-30', NULL, 2262.71, NULL, NULL, NULL),
(2221, 'JV23050226', 'JV', 230401, NULL, NULL, 241, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-30', NULL, 1335.81, NULL, NULL, NULL),
(2222, 'JV23050227', 'JV', 550740, NULL, NULL, 242, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-30', 20019.29, NULL, NULL, NULL, NULL),
(2223, 'JV23050227', 'JV', 200700, NULL, NULL, 242, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-30', NULL, 20019.29, NULL, NULL, NULL),
(2224, 'JV23050227', 'JV', 551140, NULL, NULL, 242, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-30', 1110.20, NULL, NULL, NULL, NULL),
(2225, 'JV23050227', 'JV', 220100, NULL, NULL, 242, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-30', NULL, 1110.20, NULL, NULL, NULL),
(2226, 'JV23050227', 'JV', NULL, NULL, NULL, 242, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-30', NULL, NULL, NULL, NULL, NULL),
(2227, 'JV23050228', 'JV', 560213, NULL, NULL, 243, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-30', 8000.00, NULL, NULL, NULL, NULL),
(2228, 'JV23050228', 'JV', 210403, NULL, NULL, 243, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-30', NULL, 8000.00, NULL, NULL, NULL),
(2229, 'JV23050229', 'JV', 220100, NULL, NULL, 244, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-01', 52.87, NULL, NULL, NULL, NULL),
(2230, 'JV23050229', 'JV', 551140, NULL, NULL, 244, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-01', NULL, 52.87, NULL, NULL, NULL),
(2231, 'JV23050230', 'JV', 150200, NULL, NULL, 245, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-01', 7847.22, NULL, NULL, NULL, NULL),
(2232, 'JV23050230', 'JV', 112100, NULL, NULL, 245, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-01', NULL, 15647.22, NULL, NULL, NULL),
(2233, 'JV23050230', 'JV', 560212, NULL, NULL, 245, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-01', 7800.00, NULL, NULL, NULL, NULL),
(2234, 'JV23050231', 'JV', 111000, NULL, NULL, 246, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-05', 2.05, NULL, NULL, NULL, NULL),
(2235, 'JV23050231', 'JV', 560110, NULL, NULL, 246, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-05', NULL, 2.05, NULL, NULL, NULL),
(2236, 'JV23050232', 'JV', 200800, NULL, NULL, 247, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-07', 479.37, NULL, NULL, NULL, NULL),
(2237, 'JV23050232', 'JV', 200001, NULL, NULL, 247, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-07', NULL, 479.37, NULL, NULL, NULL),
(2238, 'JV23050233', 'JV', 111100, NULL, NULL, 248, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-15', 24866.67, NULL, NULL, NULL, NULL),
(2239, 'JV23050233', 'JV', 210403, NULL, NULL, 248, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-15', NULL, 24866.67, NULL, NULL, NULL),
(2240, 'JV23050234', 'JV', 200300, NULL, NULL, 249, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-15', 8000.00, NULL, NULL, NULL, NULL),
(2241, 'JV23050234', 'JV', 210403, NULL, NULL, 249, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-15', NULL, 8000.00, NULL, NULL, NULL),
(2242, 'JV23050235', 'JV', 200300, NULL, NULL, 250, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-16', 16833.33, NULL, NULL, NULL, NULL),
(2243, 'JV23050235', 'JV', 111300, NULL, NULL, 250, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-16', 441.67, NULL, NULL, NULL, NULL),
(2244, 'JV23050235', 'JV', 310205, NULL, NULL, 250, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-16', NULL, 17275.00, NULL, NULL, NULL),
(2245, 'JV23050236', 'JV', 111100, NULL, NULL, 251, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-17', 67981.47, NULL, NULL, NULL, NULL),
(2246, 'JV23050236', 'JV', 111000, NULL, NULL, 251, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-17', NULL, 67981.47, NULL, NULL, NULL),
(2247, 'JV23050237', 'JV', 200300, NULL, NULL, 252, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-22', 30035.00, NULL, NULL, NULL, NULL),
(2248, 'JV23050237', 'JV', 210403, NULL, NULL, 252, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-22', NULL, 30035.00, NULL, NULL, NULL),
(2249, 'JV23050238', 'JV', 200300, NULL, NULL, 253, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-22', 88028.44, NULL, NULL, NULL, NULL),
(2250, 'JV23050238', 'JV', 111100, NULL, NULL, 253, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-22', NULL, 88028.44, NULL, NULL, NULL),
(2251, 'JV22120239', 'JV', 560110, NULL, NULL, 254, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-25', 105.00, NULL, NULL, NULL, NULL),
(2252, 'JV22120239', 'JV', 111100, NULL, NULL, 254, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-25', NULL, 105.00, NULL, NULL, NULL),
(2253, 'JV23050240', 'JV', 560213, NULL, NULL, 255, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-28', 1000.00, NULL, NULL, NULL, NULL),
(2254, 'JV23050240', 'JV', 210403, NULL, NULL, 255, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-28', NULL, 1000.00, NULL, NULL, NULL),
(2255, 'JV23050241', 'JV', 500400, NULL, NULL, 256, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', 498.30, NULL, NULL, NULL, NULL),
(2256, 'JV23050241', 'JV', 200800, NULL, NULL, 256, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', NULL, 498.30, NULL, NULL, NULL),
(2257, 'JV22120242', 'JV', 510661, NULL, NULL, 257, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', 57700.00, NULL, NULL, NULL, NULL),
(2258, 'JV22120242', 'JV', 230300, NULL, NULL, 257, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', 666.49, NULL, NULL, NULL, NULL),
(2259, 'JV22120242', 'JV', 500500, NULL, NULL, 257, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', 14090.02, NULL, NULL, NULL, NULL),
(2260, 'JV22120242', 'JV', 200200, NULL, NULL, 257, NULL, NULL, NULL, NULL, NULL, 'shared salary for office boy', '2022-12-31', 1000.00, NULL, NULL, NULL, NULL),
(2261, 'JV22120242', 'JV', 210404, NULL, NULL, 257, NULL, NULL, NULL, NULL, NULL, 'shared salary for office boy', '2022-12-31', 1000.00, NULL, NULL, NULL, NULL),
(2262, 'JV22120242', 'JV', 510661, NULL, NULL, 257, NULL, NULL, NULL, NULL, NULL, 'notice period of Isaac', '2022-12-31', NULL, 4000.00, NULL, NULL, NULL),
(2263, 'JV22120242', 'JV', 230300, NULL, NULL, 257, NULL, NULL, NULL, NULL, NULL, 'Isaac EOS', '2022-12-31', 1514.67, NULL, NULL, NULL, NULL),
(2264, 'JV22120242', 'JV', 510661, NULL, NULL, 257, NULL, NULL, NULL, NULL, NULL, 'notice period of Shrinnivasan', '2022-12-31', NULL, 3500.00, NULL, NULL, NULL),
(2265, 'JV22120242', 'JV', 230300, NULL, NULL, 257, NULL, NULL, NULL, NULL, NULL, 'Shrinnivasan', '2022-12-31', 482.53, NULL, NULL, NULL, NULL),
(2266, 'JV22120242', 'JV', 230400, NULL, NULL, 257, NULL, NULL, NULL, NULL, NULL, 'Shrinnivasan', '2022-12-31', 432.47, NULL, NULL, NULL, NULL),
(2267, 'JV22120242', 'JV', 200300, NULL, NULL, 257, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', NULL, 69386.18, NULL, NULL, NULL),
(2268, 'JV23050243', 'JV', 551140, NULL, NULL, 258, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', 399.51, NULL, NULL, NULL, NULL),
(2269, 'JV23050243', 'JV', 220100, NULL, NULL, 258, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', NULL, 399.51, NULL, NULL, NULL),
(2270, 'JV23050244', 'JV', 200300, NULL, NULL, 259, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', 5176.67, NULL, NULL, NULL, NULL),
(2271, 'JV23050244', 'JV', 210404, NULL, NULL, 259, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', NULL, 3476.67, NULL, NULL, NULL),
(2272, 'JV23050244', 'JV', 510661, NULL, NULL, 259, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', NULL, 1700.00, NULL, NULL, NULL),
(2273, 'JV23050244', 'JV', 510661, NULL, NULL, 259, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', 1.04, NULL, NULL, NULL, NULL),
(2274, 'JV23050244', 'JV', 200300, NULL, NULL, 259, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', NULL, 1.04, NULL, NULL, NULL),
(2275, 'JV23050245', 'JV', 550740, NULL, NULL, 260, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', 14720.45, NULL, NULL, NULL, NULL),
(2276, 'JV23050245', 'JV', 200700, NULL, NULL, 260, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', NULL, 14720.45, NULL, NULL, NULL),
(2277, 'JV23050246', 'JV', 230402, NULL, NULL, 261, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', 4933.00, NULL, NULL, NULL, NULL),
(2278, 'JV23050246', 'JV', 510661, NULL, NULL, 261, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', NULL, 4933.00, NULL, NULL, NULL),
(2279, 'JV23050247', 'JV', 500700, NULL, NULL, 262, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', 528.94, NULL, NULL, NULL, NULL),
(2280, 'JV23050247', 'JV', 130400, NULL, NULL, 262, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', NULL, 528.94, NULL, NULL, NULL),
(2281, 'JV23050247', 'JV', 550115, NULL, NULL, 262, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', 2444.71, NULL, NULL, NULL, NULL),
(2282, 'JV23050247', 'JV', 130300, NULL, NULL, 262, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', NULL, 2444.71, NULL, NULL, NULL),
(2283, 'JV23050247', 'JV', 550240, NULL, NULL, 262, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', 5000.00, NULL, NULL, NULL, NULL),
(2284, 'JV23050247', 'JV', 112300, NULL, NULL, 262, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', NULL, 5000.00, NULL, NULL, NULL),
(2285, 'JV23050247', 'JV', 560212, NULL, NULL, 262, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', 5981.08, NULL, NULL, NULL, NULL),
(2286, 'JV23050247', 'JV', 150200, NULL, NULL, 262, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', NULL, 5981.08, NULL, NULL, NULL),
(2287, 'JV23050248', 'JV', 520100, NULL, NULL, 263, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', 1491.16, NULL, NULL, NULL, NULL),
(2288, 'JV23050248', 'JV', 112000, NULL, NULL, 263, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', NULL, 1035.91, NULL, NULL, NULL),
(2289, 'JV23050248', 'JV', 111700, NULL, NULL, 263, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', NULL, 455.25, NULL, NULL, NULL),
(2290, 'JV23050249', 'JV', 530110, NULL, NULL, 264, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', NULL, 350.93, NULL, NULL, NULL),
(2291, 'JV23050249', 'JV', 530111, NULL, NULL, 264, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', NULL, 1054.83, NULL, NULL, NULL),
(2292, 'JV23050249', 'JV', 520101, NULL, NULL, 264, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', NULL, 908.06, NULL, NULL, NULL),
(2293, 'JV23050249', 'JV', 230300, NULL, NULL, 264, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', 350.93, NULL, NULL, NULL, NULL),
(2294, 'JV23050249', 'JV', 230400, NULL, NULL, 264, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', 1054.83, NULL, NULL, NULL, NULL),
(2295, 'JV23050249', 'JV', 230401, NULL, NULL, 264, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', 908.06, NULL, NULL, NULL, NULL),
(2296, 'JV23050250', 'JV', 510661, NULL, NULL, 265, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', 1167.00, NULL, NULL, NULL, NULL),
(2297, 'JV23050250', 'JV', 200300, NULL, NULL, 265, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', NULL, 1167.00, NULL, NULL, NULL),
(2298, 'JV23050251', 'JV', 200200, NULL, NULL, 266, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', 44119.16, NULL, NULL, NULL, NULL),
(2299, 'JV23050251', 'JV', 200002, NULL, NULL, 266, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', NULL, 44119.16, NULL, NULL, NULL),
(2300, 'JV23050251', 'JV', 210404, NULL, NULL, 266, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', 7504.87, NULL, NULL, NULL, NULL),
(2301, 'JV23050251', 'JV', 200002, NULL, NULL, 266, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-31', NULL, 7504.87, NULL, NULL, NULL),
(2302, 'JV23050252', 'JV', 111100, NULL, NULL, 267, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-03', 5000.00, NULL, NULL, NULL, NULL),
(2303, 'JV23050252', 'JV', 110402, NULL, NULL, 267, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-03', NULL, 5000.00, NULL, NULL, NULL),
(2304, 'JV23050253', 'JV', 110402, NULL, NULL, 268, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-04', 5000.00, NULL, NULL, NULL, NULL),
(2305, 'JV23050253', 'JV', 111100, NULL, NULL, 268, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-04', NULL, 5000.00, NULL, NULL, NULL),
(2306, 'JV23050254', 'JV', 510761, NULL, NULL, 269, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-14', 121.80, NULL, NULL, NULL, NULL),
(2307, 'JV23050254', 'JV', 200001, NULL, NULL, 269, NULL, NULL, NULL, NULL, NULL, 'through credit card', '2023-01-14', NULL, 121.80, NULL, NULL, NULL),
(2308, 'JV23050255', 'JV', 111100, NULL, NULL, 270, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-18', 42200.00, NULL, NULL, NULL, NULL),
(2309, 'JV23050255', 'JV', 111300, NULL, NULL, 270, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-18', 20536.25, NULL, NULL, NULL, NULL),
(2310, 'JV23050255', 'JV', 210403, NULL, NULL, 270, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-18', NULL, 62736.25, NULL, NULL, NULL),
(2311, 'JV23050255', 'JV', 200300, NULL, NULL, 270, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-18', 69386.18, NULL, NULL, NULL, NULL),
(2312, 'JV23050255', 'JV', 111300, NULL, NULL, 270, NULL, NULL, NULL, NULL, NULL, 'cash salary', '2023-01-18', NULL, 19653.67, NULL, NULL, NULL),
(2313, 'JV23050255', 'JV', 111100, NULL, NULL, 270, NULL, NULL, NULL, NULL, NULL, 'PHUB208962998', '2023-01-18', NULL, 2533.33, NULL, NULL, NULL),
(2314, 'JV23050255', 'JV', 111100, NULL, NULL, 270, NULL, NULL, NULL, NULL, NULL, 'PHUB208964393', '2023-01-18', NULL, 5233.33, NULL, NULL, NULL),
(2315, 'JV23050255', 'JV', 111100, NULL, NULL, 270, NULL, NULL, NULL, NULL, NULL, 'PHUB208965468', '2023-01-18', NULL, 666.49, NULL, NULL, NULL),
(2316, 'JV23050255', 'JV', 111100, NULL, NULL, 270, NULL, NULL, NULL, NULL, NULL, 'PHUB208967845', '2023-01-18', NULL, 1148.00, NULL, NULL, NULL),
(2317, 'JV23050255', 'JV', 111100, NULL, NULL, 270, NULL, NULL, NULL, NULL, NULL, 'SLSU888932', '2023-01-18', NULL, 1381.00, NULL, NULL, NULL),
(2318, 'JV23050255', 'JV', 111100, NULL, NULL, 270, NULL, NULL, NULL, NULL, NULL, 'SLSU889007', '2023-01-18', NULL, 3120.00, NULL, NULL, NULL),
(2319, 'JV23050255', 'JV', 111300, NULL, NULL, 270, NULL, NULL, NULL, NULL, NULL, 'NAUMAN', '2023-01-18', NULL, 2000.00, NULL, NULL, NULL),
(2320, 'JV23050255', 'JV', 111100, NULL, NULL, 270, NULL, NULL, NULL, NULL, NULL, 'SLSU888665', '2023-01-18', NULL, 27000.02, NULL, NULL, NULL),
(2321, 'JV23050255', 'JV', 111100, NULL, NULL, 270, NULL, NULL, NULL, NULL, NULL, 'PHUB209752698', '2023-01-18', NULL, 25000.00, NULL, NULL, NULL),
(2322, 'JV23050255', 'JV', 200002, NULL, NULL, 270, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-18', 17000.00, NULL, NULL, NULL, NULL),
(2323, 'JV23050255', 'JV', 590104, NULL, NULL, 270, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-18', NULL, 0.34, NULL, NULL, NULL),
(2324, 'JV23050255', 'JV', 510661, NULL, NULL, 270, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-18', 1350.00, NULL, NULL, NULL, NULL),
(2325, 'JV23050256', 'JV', 111300, NULL, NULL, 271, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-19', 1167.00, NULL, NULL, NULL, NULL),
(2326, 'JV23050256', 'JV', 111100, NULL, NULL, 271, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-19', NULL, 1167.00, NULL, NULL, NULL),
(2327, 'JV23050257', 'JV', 550740, NULL, NULL, 272, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-24', 2642.40, NULL, NULL, NULL, NULL),
(2328, 'JV23050257', 'JV', 200001, NULL, NULL, 272, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-24', NULL, 2642.40, NULL, NULL, NULL),
(2329, 'JV23050258', 'JV', 111100, NULL, NULL, 273, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-24', 25000.00, NULL, NULL, NULL, NULL),
(2330, 'JV23050258', 'JV', 111000, NULL, NULL, 273, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-24', NULL, 25000.00, NULL, NULL, NULL),
(2331, 'JV23050259', 'JV', 111100, NULL, NULL, 274, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-25', 13327.59, NULL, NULL, NULL, NULL),
(2332, 'JV23050259', 'JV', 111000, NULL, NULL, 274, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-25', NULL, 13327.59, NULL, NULL, NULL),
(2333, 'JV23050260', 'JV', 210403, NULL, NULL, 275, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-25', 62736.25, NULL, NULL, NULL, NULL),
(2334, 'JV23050260', 'JV', 111000, NULL, NULL, 275, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-25', NULL, 62736.25, NULL, NULL, NULL),
(2335, 'JV23050261', 'JV', 500500, NULL, NULL, 276, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-26', 1000.00, NULL, NULL, NULL, NULL),
(2336, 'JV23050261', 'JV', 510661, NULL, NULL, 276, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-26', 133.00, NULL, NULL, NULL, NULL),
(2337, 'JV23050261', 'JV', 111100, NULL, NULL, 276, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-26', NULL, 1133.00, NULL, NULL, NULL),
(2338, 'JV23050262', 'JV', 111300, NULL, NULL, 277, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-26', 5077.59, NULL, NULL, NULL, NULL),
(2339, 'JV23050262', 'JV', 111100, NULL, NULL, 277, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-26', NULL, 5077.59, NULL, NULL, NULL),
(2340, 'JV23050263', 'JV', 112100, NULL, NULL, 278, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-26', 6950.00, NULL, NULL, NULL, NULL),
(2341, 'JV23050263', 'JV', 111100, NULL, NULL, 278, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-26', NULL, 6950.00, NULL, NULL, NULL),
(2342, 'JV23050264', 'JV', 560110, NULL, NULL, 279, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-26', 105.00, NULL, NULL, NULL, NULL),
(2343, 'JV23050264', 'JV', 111100, NULL, NULL, 279, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-26', NULL, 105.00, NULL, NULL, NULL),
(2344, 'JV23050265', 'JV', 111100, NULL, NULL, 280, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-26', 2000.00, NULL, NULL, NULL, NULL),
(2345, 'JV23050265', 'JV', 111000, NULL, NULL, 280, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-26', NULL, 2000.00, NULL, NULL, NULL),
(2346, 'JV23050266', 'JV', 112200, NULL, NULL, 281, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-28', 1000.00, NULL, NULL, NULL, NULL),
(2347, 'JV23050266', 'JV', 111300, NULL, NULL, 281, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-28', NULL, 1000.00, NULL, NULL, NULL),
(2348, 'JV23050267', 'JV', 112100, NULL, NULL, 282, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-30', 5000.00, NULL, NULL, NULL, NULL),
(2349, 'JV23050267', 'JV', 111000, NULL, NULL, 282, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-30', NULL, 5000.00, NULL, NULL, NULL),
(2350, 'JV23050268', 'JV', 112200, NULL, NULL, 283, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31', 1000.00, NULL, NULL, NULL, NULL),
(2351, 'JV23050268', 'JV', 111300, NULL, NULL, 283, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31', NULL, 1000.00, NULL, NULL, NULL),
(2352, 'JV23050269', 'JV', 111300, NULL, NULL, 284, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31', 2000.00, NULL, NULL, NULL, NULL),
(2353, 'JV23050269', 'JV', 111000, NULL, NULL, 284, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31', NULL, 2000.00, NULL, NULL, NULL),
(2354, 'JV23050270', 'JV', 551140, NULL, NULL, 285, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31', 1344.86, NULL, NULL, NULL, NULL),
(2355, 'JV23050270', 'JV', 220100, NULL, NULL, 285, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31', NULL, 1344.86, NULL, NULL, NULL),
(2356, 'JV23050271', 'JV', 500400, NULL, NULL, 286, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31', 449.29, NULL, NULL, NULL, NULL),
(2357, 'JV23050271', 'JV', 200800, NULL, NULL, 286, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31', NULL, 449.29, NULL, NULL, NULL),
(2358, 'JV23050272', 'JV', 510661, NULL, NULL, 287, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31', 49483.33, NULL, NULL, NULL, NULL),
(2359, 'JV23050272', 'JV', 500500, NULL, NULL, 287, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31', 17325.28, NULL, NULL, NULL, NULL),
(2360, 'JV23050272', 'JV', 200200, NULL, NULL, 287, NULL, NULL, NULL, NULL, NULL, 'shared salary for office boy', '2023-01-31', 1000.00, NULL, NULL, NULL, NULL),
(2361, 'JV23050272', 'JV', 210404, NULL, NULL, 287, NULL, NULL, NULL, NULL, NULL, 'shared salary for office boy', '2023-01-31', 1000.00, NULL, NULL, NULL, NULL),
(2362, 'JV23050272', 'JV', 112200, NULL, NULL, 287, NULL, NULL, NULL, NULL, NULL, 'Sangeen', '2023-01-31', NULL, 100.00, NULL, NULL, NULL),
(2363, 'JV23050272', 'JV', 112200, NULL, NULL, 287, NULL, NULL, NULL, NULL, NULL, 'Abhijith', '2023-01-31', NULL, 300.00, NULL, NULL, NULL),
(2364, 'JV23050272', 'JV', 112200, NULL, NULL, 287, NULL, NULL, NULL, NULL, NULL, 'Ahmed Baker', '2023-01-31', NULL, 1000.00, NULL, NULL, NULL),
(2365, 'JV23050272', 'JV', 112200, NULL, NULL, 287, NULL, NULL, NULL, NULL, NULL, 'Primrose', '2023-01-31', NULL, 1000.00, NULL, NULL, NULL),
(2366, 'JV23050272', 'JV', 200300, NULL, NULL, 287, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31', NULL, 66408.61, NULL, NULL, NULL),
(2377, 'JV23050274', 'JV', 520100, NULL, NULL, 289, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31', 1491.16, NULL, NULL, NULL, NULL),
(2378, 'JV23050274', 'JV', 112000, NULL, NULL, 289, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31', NULL, 1035.91, NULL, NULL, NULL),
(2379, 'JV23050274', 'JV', 111700, NULL, NULL, 289, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31', NULL, 455.25, NULL, NULL, NULL),
(2380, 'JV23050275', 'JV', 530110, NULL, NULL, 290, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31', 1113.24, NULL, NULL, NULL, NULL),
(2381, 'JV23050275', 'JV', 530111, NULL, NULL, 290, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31', 605.04, NULL, NULL, NULL, NULL),
(2382, 'JV23050275', 'JV', 520101, NULL, NULL, 290, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31', 430.56, NULL, NULL, NULL, NULL),
(2383, 'JV23050275', 'JV', 230300, NULL, NULL, 290, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31', NULL, 1113.24, NULL, NULL, NULL),
(2384, 'JV23050275', 'JV', 230400, NULL, NULL, 290, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31', NULL, 605.04, NULL, NULL, NULL),
(2385, 'JV23050275', 'JV', 230401, NULL, NULL, 290, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31', NULL, 430.56, NULL, NULL, NULL),
(2386, 'JV23050276', 'JV', 550740, NULL, NULL, 291, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31', 18563.50, NULL, NULL, NULL, NULL),
(2387, 'JV23050276', 'JV', 200700, NULL, NULL, 291, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31', NULL, 18563.50, NULL, NULL, NULL),
(2388, 'JV23050277', 'JV', 200001, NULL, NULL, 292, NULL, NULL, NULL, NULL, NULL, 'fund for petty cash', '2023-01-31', 1900.00, NULL, NULL, NULL, NULL),
(2389, 'JV23050277', 'JV', 200001, NULL, NULL, 292, NULL, NULL, NULL, NULL, NULL, 'salary advance of Mohd Fardin', '2023-01-31', 3500.00, NULL, NULL, NULL, NULL),
(2390, 'JV23050277', 'JV', 200001, NULL, NULL, 292, NULL, NULL, NULL, NULL, NULL, 'downpayment for the yacht party', '2023-01-31', 1200.00, NULL, NULL, NULL, NULL),
(2391, 'JV23050277', 'JV', 200001, NULL, NULL, 292, NULL, NULL, NULL, NULL, NULL, 'dewa payment through credit card', '2023-01-31', 496.12, NULL, NULL, NULL, NULL),
(2392, 'JV23050277', 'JV', 200001, NULL, NULL, 292, NULL, NULL, NULL, NULL, NULL, 'dewa payment through credit card', '2023-01-31', 479.37, NULL, NULL, NULL, NULL),
(2393, 'JV23050277', 'JV', 200001, NULL, NULL, 292, NULL, NULL, NULL, NULL, NULL, 'payment for cooling charges', '2023-01-31', 420.00, NULL, NULL, NULL, NULL),
(2394, 'JV23050277', 'JV', 200001, NULL, NULL, 292, NULL, NULL, NULL, NULL, NULL, 'received from Sir Asim', '2023-01-31', 4600.00, NULL, NULL, NULL, NULL),
(2395, 'JV23050277', 'JV', 210403, NULL, NULL, 292, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31', NULL, 12595.49, NULL, NULL, NULL),
(2396, 'JV23050278', 'JV', 112300, NULL, NULL, 293, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-01', 17250.00, NULL, NULL, NULL, NULL),
(2397, 'JV23050278', 'JV', 111000, NULL, NULL, 293, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-01', NULL, 17250.00, NULL, NULL, NULL),
(2398, 'JV23050279', 'JV', 112100, NULL, NULL, 294, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-01', 2050.00, NULL, NULL, NULL, NULL),
(2399, 'JV23050279', 'JV', 150200, NULL, NULL, 294, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-01', NULL, 2050.00, NULL, NULL, NULL),
(2400, 'JV23050280', 'JV', 510661, NULL, NULL, 295, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-02', 1208.00, NULL, NULL, NULL, NULL),
(2401, 'JV23050280', 'JV', 111100, NULL, NULL, 295, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-02', NULL, 1208.00, NULL, NULL, NULL),
(2402, 'JV23050281', 'JV', 210403, NULL, NULL, 296, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-02', 45897.60, NULL, NULL, NULL, NULL),
(2403, 'JV23050281', 'JV', 111000, NULL, NULL, 296, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-02', NULL, 48540.00, NULL, NULL, NULL),
(2404, 'JV23050281', 'JV', 200001, NULL, NULL, 296, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-02', 2642.40, NULL, NULL, NULL, NULL),
(2405, 'JV23050282', 'JV', 111100, NULL, NULL, 297, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-02', 5000.00, NULL, NULL, NULL, NULL),
(2406, 'JV23050282', 'JV', 110402, NULL, NULL, 297, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-02', NULL, 5000.00, NULL, NULL, NULL),
(2407, 'JV23050283', 'JV', 110402, NULL, NULL, 298, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-03', 5000.00, NULL, NULL, NULL, NULL),
(2408, 'JV23050283', 'JV', 111100, NULL, NULL, 298, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-03', NULL, 5000.00, NULL, NULL, NULL),
(2409, 'JV23050284', 'JV', 110402, NULL, NULL, 299, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-03', 471.87, NULL, NULL, NULL, NULL),
(2410, 'JV23050284', 'JV', 200001, NULL, NULL, 299, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-03', NULL, 471.87, NULL, NULL, NULL),
(2411, 'JV23050285', 'JV', 560110, NULL, NULL, 300, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-06', NULL, 4.15, NULL, NULL, NULL),
(2412, 'JV23050285', 'JV', 111000, NULL, NULL, 300, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-06', 4.15, NULL, NULL, NULL, NULL),
(2413, 'JV23050286', 'JV', 111300, NULL, NULL, 301, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-14', 1104.50, NULL, NULL, NULL, NULL),
(2414, 'JV23050286', 'JV', 111100, NULL, NULL, 301, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-14', NULL, 1104.50, NULL, NULL, NULL),
(2415, 'JV23050287', 'JV', 111100, NULL, NULL, 302, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-14', 85900.00, NULL, NULL, NULL, NULL),
(2416, 'JV23050287', 'JV', 111000, NULL, NULL, 302, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-14', NULL, 85900.00, NULL, NULL, NULL),
(2417, 'JV23050288', 'JV', 210404, NULL, NULL, 303, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-14', NULL, 1000.00, NULL, NULL, NULL),
(2418, 'JV23050288', 'JV', 111100, NULL, NULL, 303, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-14', 1000.00, NULL, NULL, NULL, NULL),
(2419, 'JV23050288', 'JV', 200200, NULL, NULL, 303, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-14', NULL, 1000.00, NULL, NULL, NULL),
(2420, 'JV23050288', 'JV', 111100, NULL, NULL, 303, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-14', 1000.00, NULL, NULL, NULL, NULL),
(2421, 'JV23050289', 'JV', 200300, NULL, NULL, 304, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-14', 8000.00, NULL, NULL, NULL, NULL),
(2422, 'JV23050289', 'JV', 200001, NULL, NULL, 304, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-14', 17000.00, NULL, NULL, NULL, NULL),
(2423, 'JV23050289', 'JV', 111100, NULL, NULL, 304, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-14', NULL, 25000.00, NULL, NULL, NULL),
(2424, 'JV23050290', 'JV', 200300, NULL, NULL, 305, NULL, NULL, NULL, NULL, NULL, 'SLSU905158', '2023-02-14', 33362.59, NULL, NULL, NULL, NULL),
(2425, 'JV23050290', 'JV', 200300, NULL, NULL, 305, NULL, NULL, NULL, NULL, NULL, 'cheque withdrawal for cash payroll', '2023-02-14', 20263.25, NULL, NULL, NULL, NULL),
(2426, 'JV23050290', 'JV', 111100, NULL, NULL, 305, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-14', NULL, 53625.84, NULL, NULL, NULL),
(2427, 'JV23050290', 'JV', 200300, NULL, NULL, 305, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-14', 4782.78, NULL, NULL, NULL, NULL),
(2428, 'JV23050290', 'JV', 111100, NULL, NULL, 305, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-14', NULL, 4782.78, NULL, NULL, NULL),
(2429, 'JV23050290', 'JV', 200300, NULL, NULL, 305, NULL, NULL, NULL, NULL, NULL, 'round off', '2023-02-14', NULL, 0.01, NULL, NULL, NULL),
(2430, 'JV23050290', 'JV', 510661, NULL, NULL, 305, NULL, NULL, NULL, NULL, NULL, 'round off', '2023-02-14', 0.01, NULL, NULL, NULL, NULL),
(2431, 'JV23050291', 'JV', 112100, NULL, NULL, 306, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-16', 18600.00, NULL, NULL, NULL, NULL),
(2432, 'JV23050291', 'JV', 200001, NULL, NULL, 306, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-16', NULL, 17000.00, NULL, NULL, NULL),
(2433, 'JV23050291', 'JV', 111100, NULL, NULL, 306, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-16', NULL, 1600.00, NULL, NULL, NULL),
(2434, 'JV23050292', 'JV', 510661, NULL, NULL, 307, NULL, NULL, NULL, NULL, NULL, 'FOR 16 DAYS', '2023-02-18', 1067.00, NULL, NULL, NULL, NULL),
(2435, 'JV23050292', 'JV', 111000, NULL, NULL, 307, NULL, NULL, NULL, NULL, NULL, '#579089174481155', '2023-02-18', NULL, 1067.00, NULL, NULL, NULL),
(2436, 'JV23050293', 'JV', 111300, NULL, NULL, 308, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-23', 803.25, NULL, NULL, NULL, NULL),
(2437, 'JV23050293', 'JV', 111100, NULL, NULL, 308, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-23', NULL, 803.25, NULL, NULL, NULL),
(2438, 'JV23050294', 'JV', 111300, NULL, NULL, 309, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-24', 2000.00, NULL, NULL, NULL, NULL),
(2439, 'JV23050294', 'JV', 111000, NULL, NULL, 309, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-24', NULL, 2000.00, NULL, NULL, NULL),
(2440, 'JV23050295', 'JV', 500500, NULL, NULL, 310, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28', 30925.62, NULL, NULL, NULL, NULL),
(2441, 'JV23050295', 'JV', 112200, NULL, NULL, 310, NULL, NULL, NULL, NULL, NULL, 'Sangeen', '2023-02-28', NULL, 100.00, NULL, NULL, NULL),
(2442, 'JV23050295', 'JV', 112200, NULL, NULL, 310, NULL, NULL, NULL, NULL, NULL, 'Daisy Ivy', '2023-02-28', NULL, 300.00, NULL, NULL, NULL),
(2443, 'JV23050295', 'JV', 112200, NULL, NULL, 310, NULL, NULL, NULL, NULL, NULL, 'Sharuk', '2023-02-28', NULL, 400.00, NULL, NULL, NULL),
(2444, 'JV23050295', 'JV', 200300, NULL, NULL, 310, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28', NULL, 89542.28, NULL, NULL, NULL),
(2445, 'JV23050295', 'JV', 510661, NULL, NULL, 310, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28', 57416.66, NULL, NULL, NULL, NULL),
(2446, 'JV23050295', 'JV', 210404, NULL, NULL, 310, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28', 1000.00, NULL, NULL, NULL, NULL),
(2447, 'JV23050295', 'JV', 200200, NULL, NULL, 310, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28', 1000.00, NULL, NULL, NULL, NULL),
(2448, 'JV23050296', 'JV', 551140, NULL, NULL, 311, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28', 711.67, NULL, NULL, NULL, NULL),
(2449, 'JV23050296', 'JV', 500400, NULL, NULL, 311, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28', 444.65, NULL, NULL, NULL, NULL),
(2450, 'JV23050296', 'JV', 550740, NULL, NULL, 311, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28', 20248.16, NULL, NULL, NULL, NULL),
(2451, 'JV23050296', 'JV', 220100, NULL, NULL, 311, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28', NULL, 711.67, NULL, NULL, NULL),
(2452, 'JV23050296', 'JV', 200800, NULL, NULL, 311, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28', NULL, 444.65, NULL, NULL, NULL),
(2453, 'JV23050296', 'JV', 200700, NULL, NULL, 311, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28', NULL, 20248.16, NULL, NULL, NULL),
(2454, 'JV23050297', 'JV', 530110, NULL, NULL, 312, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28', 3505.09, NULL, NULL, NULL, NULL),
(2455, 'JV23050297', 'JV', 530111, NULL, NULL, 312, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28', 1457.76, NULL, NULL, NULL, NULL),
(2456, 'JV23050297', 'JV', 520101, NULL, NULL, 312, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28', 1297.91, NULL, NULL, NULL, NULL),
(2457, 'JV23050297', 'JV', 230300, NULL, NULL, 312, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28', NULL, 3505.09, NULL, NULL, NULL),
(2458, 'JV23050297', 'JV', 230400, NULL, NULL, 312, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28', NULL, 1457.76, NULL, NULL, NULL),
(2459, 'JV23050297', 'JV', 230401, NULL, NULL, 312, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28', NULL, 1297.91, NULL, NULL, NULL),
(2460, 'JV23050298', 'JV', 500700, NULL, NULL, 313, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28', 649.69, NULL, NULL, NULL, NULL),
(2461, 'JV23050298', 'JV', 130400, NULL, NULL, 313, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28', NULL, 649.69, NULL, NULL, NULL),
(2462, 'JV23050298', 'JV', 550115, NULL, NULL, 313, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28', 2431.80, NULL, NULL, NULL, NULL),
(2463, 'JV23050298', 'JV', 130300, NULL, NULL, 313, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28', NULL, 2431.80, NULL, NULL, NULL),
(2464, 'JV23050298', 'JV', 550240, NULL, NULL, 313, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28', 5750.00, NULL, NULL, NULL, NULL),
(2465, 'JV23050298', 'JV', 112300, NULL, NULL, 313, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28', NULL, 5750.00, NULL, NULL, NULL),
(2466, 'JV23050298', 'JV', 560212, NULL, NULL, 313, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28', 3255.94, NULL, NULL, NULL, NULL),
(2467, 'JV23050298', 'JV', 150200, NULL, NULL, 313, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28', NULL, 3255.94, NULL, NULL, NULL),
(2468, 'JV23050299', 'JV', 520100, NULL, NULL, 314, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28', 1491.16, NULL, NULL, NULL, NULL),
(2469, 'JV23050299', 'JV', 112000, NULL, NULL, 314, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28', NULL, 1035.91, NULL, NULL, NULL),
(2470, 'JV23050299', 'JV', 111700, NULL, NULL, 314, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28', NULL, 455.25, NULL, NULL, NULL),
(2471, 'JV23050300', 'JV', 560110, NULL, NULL, 315, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28', 105.00, NULL, NULL, NULL, NULL),
(2472, 'JV23050300', 'JV', 111100, NULL, NULL, 315, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28', NULL, 105.00, NULL, NULL, NULL),
(2473, 'JV23050301', 'JV', 500400, NULL, NULL, 316, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28', 0.11, NULL, NULL, NULL, NULL),
(2474, 'JV23050301', 'JV', 200800, NULL, NULL, 316, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28', NULL, 0.11, NULL, NULL, NULL),
(2475, 'JV23050302', 'JV', 550740, NULL, NULL, 317, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28', 16548.16, NULL, NULL, NULL, NULL),
(2476, 'JV23050302', 'JV', 550740, NULL, NULL, 317, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28', 3700.00, NULL, NULL, NULL, NULL),
(2477, 'JV23050302', 'JV', 200700, NULL, NULL, 317, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-28', NULL, 20248.16, NULL, NULL, NULL),
(2478, 'JV23050303', 'JV', 111300, NULL, NULL, 318, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-01', 764.50, NULL, NULL, NULL, NULL),
(2479, 'JV23050303', 'JV', 111000, NULL, NULL, 318, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-01', NULL, 764.50, NULL, NULL, NULL),
(2480, 'JV23050304', 'JV', 112100, NULL, NULL, 319, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-02', 3485.30, NULL, NULL, NULL, NULL),
(2481, 'JV23050304', 'JV', 111000, NULL, NULL, 319, NULL, NULL, NULL, NULL, NULL, '175933178419335', '2023-03-02', NULL, 3485.30, NULL, NULL, NULL),
(2482, 'JV23050305', 'JV', 111100, NULL, NULL, 320, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-10', 333.00, NULL, NULL, NULL, NULL),
(2483, 'JV23050305', 'JV', 110402, NULL, NULL, 320, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-10', NULL, 333.00, NULL, NULL, NULL),
(2484, 'JV23050306', 'JV', 111100, NULL, NULL, 321, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13', 100000.00, NULL, NULL, NULL, NULL),
(2485, 'JV23050306', 'JV', 111000, NULL, NULL, 321, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13', NULL, 100000.00, NULL, NULL, NULL),
(2486, 'JV23050307', 'JV', 111100, NULL, NULL, 322, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13', 1000.00, NULL, NULL, NULL, NULL),
(2487, 'JV23050307', 'JV', 210404, NULL, NULL, 322, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13', NULL, 1000.00, NULL, NULL, NULL),
(2488, 'JV23050307', 'JV', 111100, NULL, NULL, 322, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13', 1000.00, NULL, NULL, NULL, NULL),
(2489, 'JV23050307', 'JV', 200200, NULL, NULL, 322, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13', NULL, 1000.00, NULL, NULL, NULL),
(2496, 'JV23050308', 'JV', 111100, NULL, NULL, 323, NULL, NULL, NULL, NULL, NULL, 'SLSU923333000000', '2023-03-13', NULL, 35522.78, NULL, NULL, NULL),
(2497, 'JV23050308', 'JV', 111100, NULL, NULL, 323, NULL, NULL, NULL, NULL, NULL, 'PHUB219603020SAL', '2023-03-13', NULL, 2804.57, NULL, NULL, NULL),
(2498, 'JV23050308', 'JV', 111100, NULL, NULL, 323, NULL, NULL, NULL, NULL, NULL, 'PHUB219624524YAS', '2023-03-13', NULL, 16460.69, NULL, NULL, NULL),
(2499, 'JV23050308', 'JV', 111100, NULL, NULL, 323, NULL, NULL, NULL, NULL, NULL, 'CHEQUE WITHDRAWAL', '2023-03-13', NULL, 22180.25, NULL, NULL, NULL),
(2500, 'JV23050308', 'JV', 111100, NULL, NULL, 323, NULL, NULL, NULL, NULL, NULL, 'PHUB219792988WAS', '2023-03-13', NULL, 4573.99, NULL, NULL, NULL),
(2501, 'JV23050308', 'JV', 200300, NULL, NULL, 323, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13', 81542.28, NULL, NULL, NULL, NULL),
(2502, 'JV23050308', 'JV', 111100, NULL, NULL, 323, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13', NULL, 25000.00, NULL, NULL, NULL),
(2503, 'JV23050308', 'JV', 200300, NULL, NULL, 323, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13', 8000.00, NULL, NULL, NULL, NULL),
(2504, 'JV23050308', 'JV', 200001, NULL, NULL, 323, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13', 17000.00, NULL, NULL, NULL, NULL),
(2505, 'JV23050309', 'JV', 111100, NULL, NULL, 324, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-14', 9500.00, NULL, NULL, NULL, NULL),
(2506, 'JV23050309', 'JV', 111000, NULL, NULL, 324, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-14', NULL, 9500.00, NULL, NULL, NULL);
INSERT INTO `journal` (`JournalID`, `VHNO`, `JournalType`, `ChartOfAccountID`, `PartyID`, `SupplierID`, `VoucherMstID`, `PettyMstID`, `InvoiceMasterID`, `ExpenseMasterID`, `PaymentMasterID`, `PurchasePaymentMasterID`, `Narration`, `Date`, `Dr`, `Cr`, `Trace`, `BankReconcile`, `ReconcileDate`) VALUES
(2507, 'JV23050310', 'JV', 111100, NULL, NULL, 325, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16', 1500.00, NULL, NULL, NULL, NULL),
(2508, 'JV23050310', 'JV', 112200, NULL, NULL, 325, NULL, NULL, NULL, NULL, NULL, 'DAISY IVY', '2023-03-16', NULL, 1500.00, NULL, NULL, NULL),
(2509, 'JV23050311', 'JV', 551140, NULL, NULL, 326, NULL, NULL, NULL, NULL, NULL, 'INV1000434360', '2023-03-17', 711.67, NULL, NULL, NULL, NULL),
(2510, 'JV23050311', 'JV', 220100, NULL, NULL, 326, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17', NULL, 711.67, NULL, NULL, NULL),
(2511, 'JV23050312', 'JV', 200001, NULL, NULL, 327, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-20', 19000.00, NULL, NULL, NULL, NULL),
(2512, 'JV23050312', 'JV', 111000, NULL, NULL, 327, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-20', NULL, 19000.00, NULL, NULL, NULL),
(2513, 'JV23050313', 'JV', 112300, NULL, NULL, 328, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-01', 17250.00, NULL, NULL, NULL, NULL),
(2514, 'JV23050313', 'JV', 200500, NULL, NULL, 328, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-01', NULL, 17250.00, NULL, NULL, NULL),
(2515, 'JV23050314', 'JV', 112300, NULL, NULL, 329, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-01', 17250.00, NULL, NULL, NULL, NULL),
(2516, 'JV23050314', 'JV', 200500, NULL, NULL, 329, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-01', NULL, 17250.00, NULL, NULL, NULL),
(2517, 'JV23050315', 'JV', 112300, NULL, NULL, 330, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-01', 17250.00, NULL, NULL, NULL, NULL),
(2518, 'JV23050315', 'JV', 200500, NULL, NULL, 330, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-01', NULL, 17250.00, NULL, NULL, NULL),
(2519, 'JV23050316', 'JV', 560110, NULL, NULL, 331, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-04', NULL, 4.60, NULL, NULL, NULL),
(2520, 'JV23050316', 'JV', 111000, NULL, NULL, 331, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-04', 4.60, NULL, NULL, NULL, NULL),
(2521, 'JV23050317', 'JV', 111000, NULL, NULL, 332, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17', 18.00, NULL, NULL, NULL, NULL),
(2522, 'JV23050317', 'JV', 110402, NULL, NULL, 332, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17', NULL, 18.00, NULL, NULL, NULL),
(2523, 'JV23050318', 'JV', 510661, NULL, NULL, 333, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31', 750.00, NULL, NULL, NULL, NULL),
(2524, 'JV23050318', 'JV', 200300, NULL, NULL, 333, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31', NULL, 750.00, NULL, NULL, NULL),
(2525, 'JV23050319', 'JV', 500400, NULL, NULL, 334, NULL, NULL, NULL, NULL, NULL, 'INV100190406194', '2023-03-31', 410.09, NULL, NULL, NULL, NULL),
(2526, 'JV23050319', 'JV', 500400, NULL, NULL, 334, NULL, NULL, NULL, NULL, NULL, 'FEB 14-MAR 13', '2023-03-31', NULL, 4.87, NULL, NULL, NULL),
(2527, 'JV23050319', 'JV', 200800, NULL, NULL, 334, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31', NULL, 405.22, NULL, NULL, NULL),
(2528, 'JV23050319', 'JV', 551140, NULL, NULL, 334, NULL, NULL, NULL, NULL, NULL, 'MARCH 1 - 31', '2023-03-31', 962.57, NULL, NULL, NULL, NULL),
(2529, 'JV23050319', 'JV', 220100, NULL, NULL, 334, NULL, NULL, NULL, NULL, NULL, 'INV1000438117', '2023-03-31', NULL, 962.57, NULL, NULL, NULL),
(2530, 'JV23050319', 'JV', 550740, NULL, NULL, 334, NULL, NULL, NULL, NULL, NULL, 'SERVICE RENTALS', '2023-03-31', 3214.84, NULL, NULL, NULL, NULL),
(2531, 'JV23050319', 'JV', 550740, NULL, NULL, 334, NULL, NULL, NULL, NULL, NULL, 'USAGE RENTALS', '2023-03-31', 16676.53, NULL, NULL, NULL, NULL),
(2532, 'JV23050319', 'JV', 200700, NULL, NULL, 334, NULL, NULL, NULL, NULL, NULL, 'INV1847468733', '2023-03-31', NULL, 19891.37, NULL, NULL, NULL),
(2533, 'JV23050320', 'JV', 510661, NULL, NULL, 335, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31', 100.00, NULL, NULL, NULL, NULL),
(2534, 'JV23050320', 'JV', 111300, NULL, NULL, 335, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31', NULL, 100.00, NULL, NULL, NULL),
(2535, 'JV23050321', 'JV', 510661, NULL, NULL, 336, NULL, NULL, NULL, NULL, NULL, 'SIR BABAR', '2023-03-31', 57916.67, NULL, NULL, NULL, NULL),
(2536, 'JV23050321', 'JV', 230300, NULL, NULL, 336, NULL, NULL, NULL, NULL, NULL, '5 DAYS NAUMAN FARIS', '2023-03-31', 375.00, NULL, NULL, NULL, NULL),
(2537, 'JV23050321', 'JV', 500500, NULL, NULL, 336, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31', 34380.35, NULL, NULL, NULL, NULL),
(2538, 'JV23050321', 'JV', 112200, NULL, NULL, 336, NULL, NULL, NULL, NULL, NULL, 'Sangeen', '2023-03-31', NULL, 100.00, NULL, NULL, NULL),
(2539, 'JV23050321', 'JV', 112200, NULL, NULL, 336, NULL, NULL, NULL, NULL, NULL, 'NAUMAN', '2023-03-31', NULL, 800.00, NULL, NULL, NULL),
(2540, 'JV23050321', 'JV', 112200, NULL, NULL, 336, NULL, NULL, NULL, NULL, NULL, 'DAISY IVY', '2023-03-31', NULL, 750.00, NULL, NULL, NULL),
(2541, 'JV23050321', 'JV', 112200, NULL, NULL, 336, NULL, NULL, NULL, NULL, NULL, 'SHAYAR', '2023-03-31', NULL, 750.00, NULL, NULL, NULL),
(2542, 'JV23050321', 'JV', 112200, NULL, NULL, 336, NULL, NULL, NULL, NULL, NULL, 'Sharuk', '2023-03-31', NULL, 500.00, NULL, NULL, NULL),
(2543, 'JV23050321', 'JV', 200200, NULL, NULL, 336, NULL, NULL, NULL, NULL, NULL, 'SHARED SALARY FOR OFFICE BOY', '2023-03-31', 1000.00, NULL, NULL, NULL, NULL),
(2544, 'JV23050321', 'JV', 210404, NULL, NULL, 336, NULL, NULL, NULL, NULL, NULL, 'SHARED SALARY FOR OFFICE BOY', '2023-03-31', 1000.00, NULL, NULL, NULL, NULL),
(2545, 'JV23050321', 'JV', 200300, NULL, NULL, 336, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31', NULL, 91772.02, NULL, NULL, NULL),
(2546, 'JV23050322', 'JV', 520100, NULL, NULL, 337, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31', 1431.99, NULL, NULL, NULL, NULL),
(2547, 'JV23050322', 'JV', 112000, NULL, NULL, 337, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31', NULL, 976.74, NULL, NULL, NULL),
(2548, 'JV23050322', 'JV', 111700, NULL, NULL, 337, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31', NULL, 455.25, NULL, NULL, NULL),
(2549, 'JV23050323', 'JV', 500700, NULL, NULL, 338, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31', 559.13, NULL, NULL, NULL, NULL),
(2550, 'JV23050323', 'JV', 130400, NULL, NULL, 338, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31', NULL, 559.13, NULL, NULL, NULL),
(2551, 'JV23050323', 'JV', 550115, NULL, NULL, 338, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31', 2431.80, NULL, NULL, NULL, NULL),
(2552, 'JV23050323', 'JV', 130300, NULL, NULL, 338, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31', NULL, 2431.80, NULL, NULL, NULL),
(2553, 'JV23050323', 'JV', 550240, NULL, NULL, 338, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31', 5750.00, NULL, NULL, NULL, NULL),
(2554, 'JV23050323', 'JV', 112300, NULL, NULL, 338, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31', NULL, 5750.00, NULL, NULL, NULL),
(2555, 'JV23050323', 'JV', 560212, NULL, NULL, 338, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31', 3255.94, NULL, NULL, NULL, NULL),
(2556, 'JV23050323', 'JV', 150200, NULL, NULL, 338, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31', NULL, 3255.94, NULL, NULL, NULL),
(2557, 'JV23050324', 'JV', 530110, NULL, NULL, 339, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31', 3190.89, NULL, NULL, NULL, NULL),
(2558, 'JV23050324', 'JV', 530111, NULL, NULL, 339, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31', 1741.19, NULL, NULL, NULL, NULL),
(2559, 'JV23050324', 'JV', 520101, NULL, NULL, 339, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31', 1349.31, NULL, NULL, NULL, NULL),
(2560, 'JV23050324', 'JV', 230300, NULL, NULL, 339, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31', NULL, 3190.89, NULL, NULL, NULL),
(2561, 'JV23050324', 'JV', 230400, NULL, NULL, 339, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31', NULL, 1741.19, NULL, NULL, NULL),
(2562, 'JV23050324', 'JV', 230401, NULL, NULL, 339, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-31', NULL, 1349.31, NULL, NULL, NULL),
(2563, 'JV23050325', 'JV', 560110, NULL, NULL, 340, NULL, NULL, NULL, NULL, NULL, 'cashback reward', '2023-04-04', NULL, 12.00, NULL, NULL, NULL),
(2564, 'JV23050325', 'JV', 560110, NULL, NULL, 340, NULL, NULL, NULL, NULL, NULL, 'fee salam', '2023-04-04', NULL, 3.96, NULL, NULL, NULL),
(2565, 'JV23050325', 'JV', 560110, NULL, NULL, 340, NULL, NULL, NULL, NULL, NULL, 'vat reversal', '2023-04-04', NULL, 0.19, NULL, NULL, NULL),
(2566, 'JV23050325', 'JV', 111000, NULL, NULL, 340, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-04', 16.15, NULL, NULL, NULL, NULL),
(2567, 'JV23050326', 'JV', 112200, NULL, NULL, 341, NULL, NULL, NULL, NULL, NULL, 'shayar khan', '2023-04-04', 1500.00, NULL, NULL, NULL, NULL),
(2568, 'JV23050326', 'JV', 112200, NULL, NULL, 341, NULL, NULL, NULL, NULL, NULL, 'sharukh amin', '2023-04-04', 500.00, NULL, NULL, NULL, NULL),
(2569, 'JV23050326', 'JV', 111300, NULL, NULL, 341, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-04', NULL, 2000.00, NULL, NULL, NULL),
(2570, 'JV23050327', 'JV', 111100, NULL, NULL, 342, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-11', 3500.00, NULL, NULL, NULL, NULL),
(2571, 'JV23050327', 'JV', 110402, NULL, NULL, 342, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-11', NULL, 3500.00, NULL, NULL, NULL),
(2572, 'JV23050328', 'JV', 111100, NULL, NULL, 343, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-11', 2000.00, NULL, NULL, NULL, NULL),
(2573, 'JV23050328', 'JV', 200200, NULL, NULL, 343, NULL, NULL, NULL, NULL, NULL, 'shared salary for office boy', '2023-04-11', NULL, 1000.00, NULL, NULL, NULL),
(2574, 'JV23050328', 'JV', 210404, NULL, NULL, 343, NULL, NULL, NULL, NULL, NULL, 'shared salary for office boy', '2023-04-11', NULL, 1000.00, NULL, NULL, NULL),
(2575, 'JV23050329', 'JV', 110402, NULL, NULL, 344, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-12', 3500.00, NULL, NULL, NULL, NULL),
(2576, 'JV23050329', 'JV', 111100, NULL, NULL, 344, NULL, NULL, NULL, NULL, NULL, 'SLSU941601', '2023-04-12', NULL, 3500.00, NULL, NULL, NULL),
(2577, 'JV23050330', 'JV', 500500, NULL, NULL, 345, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-13', 2500.00, NULL, NULL, NULL, NULL),
(2578, 'JV23050330', 'JV', 111100, NULL, NULL, 345, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-13', NULL, 2500.00, NULL, NULL, NULL),
(2579, 'JV23050331', 'JV', 200300, NULL, NULL, 346, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-13', 91771.91, NULL, NULL, NULL, NULL),
(2580, 'JV23050331', 'JV', 200001, NULL, NULL, 346, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-13', 17000.00, NULL, NULL, NULL, NULL),
(2581, 'JV23050331', 'JV', 111100, NULL, NULL, 346, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-13', NULL, 108771.91, NULL, NULL, NULL),
(2582, 'JV23050332', 'JV', 500400, NULL, NULL, 347, NULL, NULL, NULL, NULL, NULL, 'ELECTRICITY', '2023-04-13', 213.35, NULL, NULL, NULL, NULL),
(2583, 'JV23050332', 'JV', 500400, NULL, NULL, 347, NULL, NULL, NULL, NULL, NULL, 'WATER', '2023-04-13', 22.50, NULL, NULL, NULL, NULL),
(2584, 'JV23050332', 'JV', 200800, NULL, NULL, 347, NULL, NULL, NULL, NULL, NULL, 'INV100361668134', '2023-04-13', NULL, 235.85, NULL, NULL, NULL),
(2585, 'JV23050333', 'JV', 111100, NULL, NULL, 348, NULL, NULL, NULL, NULL, NULL, 'PHUB226211267', '2023-04-14', 25000.00, NULL, NULL, NULL, NULL),
(2586, 'JV23050333', 'JV', 111000, NULL, NULL, 348, NULL, NULL, NULL, NULL, NULL, 'PHUB226215706', '2023-04-14', NULL, 25000.00, NULL, NULL, NULL),
(2587, 'JV23050333', 'JV', 111100, NULL, NULL, 348, NULL, NULL, NULL, NULL, NULL, 'PHUB225969308', '2023-04-14', 90000.00, NULL, NULL, NULL, NULL),
(2588, 'JV23050333', 'JV', 111000, NULL, NULL, 348, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-14', NULL, 90000.00, NULL, NULL, NULL),
(2589, 'JV23050334', 'JV', 111100, NULL, NULL, 349, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-14', 10000.00, NULL, NULL, NULL, NULL),
(2590, 'JV23050334', 'JV', 110402, NULL, NULL, 349, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-14', NULL, 10000.00, NULL, NULL, NULL),
(2591, 'JV23050335', 'JV', 200300, NULL, NULL, 350, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-15', 750.00, NULL, NULL, NULL, NULL),
(2592, 'JV23050335', 'JV', 111100, NULL, NULL, 350, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-15', NULL, 750.00, NULL, NULL, NULL),
(2593, 'JV23050336', 'JV', 200001, NULL, NULL, 351, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-15', 20000.00, NULL, NULL, NULL, NULL),
(2594, 'JV23050336', 'JV', 111000, NULL, NULL, 351, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-15', NULL, 20000.00, NULL, NULL, NULL),
(2595, 'JV23050337', 'JV', 111300, NULL, NULL, 352, NULL, NULL, NULL, NULL, NULL, 'PV 0116', '2023-04-15', 215.25, NULL, NULL, NULL, NULL),
(2596, 'JV23050337', 'JV', 111300, NULL, NULL, 352, NULL, NULL, NULL, NULL, NULL, 'PV 0119', '2023-04-15', 2000.00, NULL, NULL, NULL, NULL),
(2597, 'JV23050337', 'JV', 111300, NULL, NULL, 352, NULL, NULL, NULL, NULL, NULL, 'PV 0121', '2023-04-15', 100.00, NULL, NULL, NULL, NULL),
(2598, 'JV23050337', 'JV', 111100, NULL, NULL, 352, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-15', NULL, 2315.25, NULL, NULL, NULL),
(2599, 'JV23050338', 'JV', 110402, NULL, NULL, 353, NULL, NULL, NULL, NULL, NULL, 'SLSU943558', '2023-04-15', 10000.00, NULL, NULL, NULL, NULL),
(2600, 'JV23050338', 'JV', 111100, NULL, NULL, 353, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-15', NULL, 10000.00, NULL, NULL, NULL),
(2601, 'JV23050339', 'JV', 200001, NULL, NULL, 354, NULL, NULL, NULL, NULL, NULL, 'CREDIT CARD', '2023-04-16', 41190.00, NULL, NULL, NULL, NULL),
(2602, 'JV23050339', 'JV', 200001, NULL, NULL, 354, NULL, NULL, NULL, NULL, NULL, 'FROM SALARY', '2023-04-16', NULL, 17000.00, NULL, NULL, NULL),
(2603, 'JV23050339', 'JV', 200001, NULL, NULL, 354, NULL, NULL, NULL, NULL, NULL, 'PV 0128', '2023-04-16', NULL, 20000.00, NULL, NULL, NULL),
(2604, 'JV23050339', 'JV', 200001, NULL, NULL, 354, NULL, NULL, NULL, NULL, NULL, 'PENDING PAYMENT', '2023-04-16', NULL, 4190.00, NULL, NULL, NULL),
(2605, 'JV23050340', 'JV', 130300, NULL, NULL, 355, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-27', 9380.73, NULL, NULL, NULL, NULL),
(2606, 'JV23050340', 'JV', 200001, NULL, NULL, 355, NULL, NULL, NULL, NULL, NULL, 'paid through credit card', '2023-04-27', NULL, 9380.73, NULL, NULL, NULL),
(2607, 'JV23050341', 'JV', 111000, NULL, NULL, 356, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-29', 16250.00, NULL, NULL, NULL, NULL),
(2608, 'JV23050341', 'JV', 210403, NULL, NULL, 356, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-29', NULL, 16250.00, NULL, NULL, NULL),
(2609, 'JV23040342', 'JV', 551140, NULL, NULL, 357, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-30', 805.66, NULL, NULL, NULL, NULL),
(2610, 'JV23040342', 'JV', 220100, NULL, NULL, 357, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-30', NULL, 805.66, NULL, NULL, NULL),
(2611, 'JV23040342', 'JV', 550740, NULL, NULL, 357, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-30', 3380.00, NULL, NULL, NULL, NULL),
(2612, 'JV23040342', 'JV', 550740, NULL, NULL, 357, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-30', 16610.59, NULL, NULL, NULL, NULL),
(2613, 'JV23040342', 'JV', 200700, NULL, NULL, 357, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-30', NULL, 19990.59, NULL, NULL, NULL),
(2614, 'JV23060343', 'JV', 112100, NULL, NULL, 358, NULL, NULL, NULL, NULL, NULL, 'he paid the visa of allianz staff', '2023-06-12', 3700.00, NULL, NULL, NULL, NULL),
(2615, 'JV23060343', 'JV', 200002, NULL, NULL, 358, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-12', NULL, 3700.00, NULL, NULL, NULL),
(2616, 'JV23060344', 'JV', 551140, NULL, NULL, 359, NULL, NULL, NULL, NULL, NULL, 'INV1000469150', '2023-03-05', 787.01, NULL, NULL, NULL, NULL),
(2617, 'JV23060344', 'JV', 220100, NULL, NULL, 359, NULL, NULL, NULL, NULL, NULL, 'May 2023- Office 1212', '2023-03-05', NULL, 787.01, NULL, NULL, NULL),
(2620, 'EXP-00021', NULL, 111100, NULL, 1, NULL, NULL, NULL, 21, NULL, NULL, '', '2023-06-15', NULL, 1648.50, '614', NULL, NULL),
(2621, 'EXP-00021', NULL, 551040, NULL, 1, NULL, NULL, NULL, 21, NULL, NULL, '', '2023-06-15', 64.00, NULL, '615', NULL, NULL),
(2622, 'EXP-00021', NULL, 590104, NULL, 1, NULL, NULL, NULL, 21, NULL, NULL, '', '2023-06-15', 128.00, NULL, '615', NULL, NULL),
(2623, 'EXP-00021', NULL, 210300, NULL, 1, NULL, NULL, NULL, 21, NULL, NULL, '', '2023-06-15', 6.40, NULL, '617', NULL, NULL),
(2624, 'EXP-00021', NULL, 590104, NULL, 1, NULL, NULL, NULL, 21, NULL, NULL, '', '2023-06-15', 250.00, NULL, '615', NULL, NULL),
(2625, 'EXP-00021', NULL, 200300, NULL, 1, NULL, NULL, NULL, 21, NULL, NULL, '', '2023-06-15', 1200.00, NULL, '615', NULL, NULL),
(2626, 'EXP-00021', NULL, 590104, NULL, 1, NULL, NULL, NULL, 21, NULL, NULL, '', '2023-06-15', 0.10, NULL, '615', NULL, NULL),
(2638, 'JV23060346', 'JV', 112200, NULL, NULL, 361, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-15', 220.00, NULL, NULL, NULL, NULL),
(2639, 'JV23060346', 'JV', 111100, NULL, NULL, 361, NULL, NULL, NULL, NULL, NULL, 'PHUB239711111', '2023-06-15', NULL, 220.00, NULL, NULL, NULL),
(2640, 'JV23060347', 'JV', 500500, NULL, NULL, 362, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-14', 3000.00, NULL, NULL, NULL, NULL),
(2641, 'JV23060347', 'JV', 111100, NULL, NULL, 362, NULL, NULL, NULL, NULL, NULL, 'PHUB239624717', '2023-06-14', NULL, 3000.00, NULL, NULL, NULL),
(2642, 'JV23060345', 'JV', 200300, NULL, NULL, 360, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-15', 63151.79, NULL, NULL, NULL, NULL),
(2643, 'JV23060345', 'JV', 111100, NULL, NULL, 360, NULL, NULL, NULL, NULL, NULL, 'staff wps', '2023-06-15', NULL, 31938.09, NULL, NULL, NULL),
(2644, 'JV23060345', 'JV', 111100, NULL, NULL, 360, NULL, NULL, NULL, NULL, NULL, 'Mr. Babar', '2023-06-15', NULL, 25000.00, NULL, NULL, NULL),
(2645, 'JV23060345', 'JV', 111500, NULL, NULL, 360, NULL, NULL, NULL, NULL, NULL, 'from 25k of Mr. Babar', '2023-06-15', 21234.00, NULL, NULL, NULL, NULL),
(2646, 'JV23060345', 'JV', 111100, NULL, NULL, 360, NULL, NULL, NULL, NULL, NULL, 'Lucy & Abhijith', '2023-06-15', NULL, 8931.97, NULL, NULL, NULL),
(2647, 'JV23060345', 'JV', 111100, NULL, NULL, 360, NULL, NULL, NULL, NULL, NULL, 'Peter Awe', '2023-06-15', NULL, 1300.00, NULL, NULL, NULL),
(2648, 'JV23060345', 'JV', 111100, NULL, NULL, 360, NULL, NULL, NULL, NULL, NULL, 'Cindy Lasco', '2023-06-15', NULL, 1300.00, NULL, NULL, NULL),
(2649, 'JV23060345', 'JV', 111100, NULL, NULL, 360, NULL, NULL, NULL, NULL, NULL, 'Theo', '2023-06-15', NULL, 3071.23, NULL, NULL, NULL),
(2650, 'JV23060345', 'JV', 111100, NULL, NULL, 360, NULL, NULL, NULL, NULL, NULL, 'Alex', '2023-06-15', NULL, 250.00, NULL, NULL, NULL),
(2651, 'JV23060345', 'JV', 111100, NULL, NULL, 360, NULL, NULL, NULL, NULL, NULL, 'Wali Vohra', '2023-06-15', NULL, 2500.00, NULL, NULL, NULL),
(2652, 'JV23060345', 'JV', 111100, NULL, NULL, 360, NULL, NULL, NULL, NULL, NULL, 'cash payroll', '2023-06-15', NULL, 10094.50, NULL, NULL, NULL),
(2653, 'JV23060348', 'JV', 200001, NULL, NULL, 363, NULL, NULL, NULL, NULL, NULL, 'LOAN PAYMENT', '2023-06-15', 10365.57, NULL, NULL, NULL, NULL),
(2654, 'JV23060348', 'JV', 200300, NULL, NULL, 363, NULL, NULL, NULL, NULL, NULL, 'SIR BABAR', '2023-06-15', 4234.00, NULL, NULL, NULL, NULL),
(2655, 'JV23060348', 'JV', 111000, NULL, NULL, 363, NULL, NULL, NULL, NULL, NULL, '449751216735823', '2023-06-15', NULL, 14599.57, NULL, NULL, NULL),
(2656, 'JV23060349', 'JV', 200300, NULL, NULL, 364, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-10', 100.00, NULL, NULL, NULL, NULL),
(2657, 'JV23060349', 'JV', 112200, NULL, NULL, 364, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-10', NULL, 100.00, NULL, NULL, NULL),
(2658, 'JV23060350', 'JV', 550000, NULL, NULL, 365, NULL, NULL, NULL, NULL, NULL, 'bought from Amazon', '2023-06-15', 60.00, NULL, NULL, NULL, NULL),
(2659, 'JV23060350', 'JV', 200001, NULL, NULL, 365, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-15', NULL, 60.00, NULL, NULL, NULL),
(2660, 'JV23060351', 'JV', 500400, NULL, NULL, 366, NULL, NULL, NULL, NULL, NULL, 'ELECTRICITY', '2023-06-13', 240.90, NULL, NULL, NULL, NULL),
(2661, 'JV23060351', 'JV', 500400, NULL, NULL, 366, NULL, NULL, NULL, NULL, NULL, 'WATER', '2023-06-13', 22.50, NULL, NULL, NULL, NULL),
(2662, 'JV23060351', 'JV', 200800, NULL, NULL, 366, NULL, NULL, NULL, NULL, NULL, 'INV100103088440', '2023-06-13', NULL, 263.40, NULL, NULL, NULL),
(2663, 'EXP-00022', NULL, 111000, NULL, 2215, NULL, NULL, NULL, 22, NULL, NULL, '', '2023-06-16', NULL, 4312.83, '614', NULL, NULL),
(2664, 'EXP-00022', NULL, 140400, NULL, 2215, NULL, NULL, NULL, 22, NULL, NULL, '', '2023-06-16', 3920.00, NULL, '615', NULL, NULL),
(2665, 'EXP-00022', NULL, 210300, NULL, 2215, NULL, NULL, NULL, 22, NULL, NULL, '', '2023-06-16', 196.00, NULL, '617', NULL, NULL),
(2666, 'EXP-00022', NULL, 140400, NULL, 2215, NULL, NULL, NULL, 22, NULL, NULL, '', '2023-06-16', 187.45, NULL, '615', NULL, NULL),
(2667, 'EXP-00022', NULL, 210300, NULL, 2215, NULL, NULL, NULL, 22, NULL, NULL, '', '2023-06-16', 9.38, NULL, '617', NULL, NULL),
(2668, 'JV23060352', 'JV', 500400, NULL, NULL, 367, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-31', 238.46, NULL, NULL, NULL, NULL),
(2669, 'JV23060352', 'JV', 200800, NULL, NULL, 367, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-31', NULL, 238.46, NULL, NULL, NULL),
(2670, 'JV23060353', 'JV', 111000, NULL, NULL, 368, NULL, NULL, NULL, NULL, NULL, 'Salaam + VAT output reversal', '2023-05-04', 5.25, NULL, NULL, NULL, NULL),
(2671, 'JV23060353', 'JV', 560110, NULL, NULL, 368, NULL, NULL, NULL, NULL, NULL, 'Bank charge + VAT', '2023-05-04', NULL, 5.25, NULL, NULL, NULL),
(2672, 'EXP-00023', NULL, 560110, NULL, 1, NULL, NULL, NULL, 23, NULL, NULL, '', '2023-05-12', NULL, 2.10, '614', NULL, NULL),
(2673, 'EXP-00023', NULL, 560110, NULL, 1, NULL, NULL, NULL, 23, NULL, NULL, '', '2023-05-12', 2.00, NULL, '615', NULL, NULL),
(2674, 'EXP-00023', NULL, 210300, NULL, 1, NULL, NULL, NULL, 23, NULL, NULL, '', '2023-05-12', 0.10, NULL, '617', NULL, NULL),
(2675, 'JV23060354', 'JV', 510661, NULL, NULL, 369, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-31', 39366.67, NULL, NULL, NULL, NULL),
(2676, 'JV23060354', 'JV', 230300, NULL, NULL, 369, NULL, NULL, NULL, NULL, NULL, 'Sangeen 30 days', '2023-05-31', 3200.00, NULL, NULL, NULL, NULL),
(2677, 'JV23060354', 'JV', 230300, NULL, NULL, 369, NULL, NULL, NULL, NULL, NULL, 'Rohan 25 days', '2023-05-31', 2000.00, NULL, NULL, NULL, NULL),
(2678, 'JV23060354', 'JV', 500500, NULL, NULL, 369, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-31', 23039.14, NULL, NULL, NULL, NULL),
(2679, 'JV23060354', 'JV', 112200, NULL, NULL, 369, NULL, NULL, NULL, NULL, NULL, 'Nauman', '2023-05-31', NULL, 800.00, NULL, NULL, NULL),
(2680, 'JV23060354', 'JV', 112200, NULL, NULL, 369, NULL, NULL, NULL, NULL, NULL, 'Daisy Ivy', '2023-05-31', NULL, 220.00, NULL, NULL, NULL),
(2681, 'JV23060354', 'JV', 200300, NULL, NULL, 369, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-31', NULL, 68585.81, NULL, NULL, NULL),
(2682, 'JV23060354', 'JV', 200200, NULL, NULL, 369, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-31', 1000.00, NULL, NULL, NULL, NULL),
(2683, 'JV23060354', 'JV', 210404, NULL, NULL, 369, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-31', 1000.00, NULL, NULL, NULL, NULL),
(2684, 'JV23060355', 'JV', 550740, NULL, NULL, 370, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-31', 24950.37, NULL, NULL, NULL, NULL),
(2685, 'JV23060355', 'JV', 200700, NULL, NULL, 370, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-31', NULL, 24950.37, NULL, NULL, NULL),
(2686, 'JV23060356', 'JV', 551140, NULL, NULL, 371, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-31', 749.53, NULL, NULL, NULL, NULL),
(2687, 'JV23060356', 'JV', 220100, NULL, NULL, 371, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-31', NULL, 749.53, NULL, NULL, NULL),
(2688, 'JV23060357', 'JV', 200500, NULL, NULL, 372, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-05', 17250.00, NULL, NULL, NULL, NULL),
(2689, 'JV23060357', 'JV', 111000, NULL, NULL, 372, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-05', NULL, 17250.00, NULL, NULL, NULL),
(2700, 'JV23060358', 'JV', 510661, NULL, NULL, 373, NULL, NULL, NULL, NULL, NULL, 'w/ Babar', '2023-04-30', 37808.33, NULL, NULL, NULL, NULL),
(2701, 'JV23060358', 'JV', 230300, NULL, NULL, 373, NULL, NULL, NULL, NULL, NULL, 'Sangeen, Rohan, Nauman', '2023-04-30', 1900.00, NULL, NULL, NULL, NULL),
(2702, 'JV23060358', 'JV', 500500, NULL, NULL, 373, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-30', 15648.70, NULL, NULL, NULL, NULL),
(2703, 'JV23060358', 'JV', 200200, NULL, NULL, 373, NULL, NULL, NULL, NULL, NULL, 'shared salary office boy', '2023-04-30', 1000.00, NULL, NULL, NULL, NULL),
(2704, 'JV23060358', 'JV', 210404, NULL, NULL, 373, NULL, NULL, NULL, NULL, NULL, 'shared salary office boy', '2023-04-30', 1750.00, NULL, NULL, NULL, NULL),
(2705, 'JV23060358', 'JV', 530110, NULL, NULL, 373, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-30', 133.33, NULL, NULL, NULL, NULL),
(2706, 'JV23060358', 'JV', 112200, NULL, NULL, 373, NULL, NULL, NULL, NULL, NULL, 'Nauman', '2023-04-30', NULL, 350.00, NULL, NULL, NULL),
(2707, 'JV23060358', 'JV', 112200, NULL, NULL, 373, NULL, NULL, NULL, NULL, NULL, 'Daisy Ivy', '2023-04-30', NULL, 750.00, NULL, NULL, NULL),
(2708, 'JV23060358', 'JV', 200300, NULL, NULL, 373, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-30', NULL, 56390.36, NULL, NULL, NULL),
(2709, 'JV23060358', 'JV', 112200, NULL, NULL, 373, NULL, NULL, NULL, NULL, NULL, 'Shayar', '2023-04-30', NULL, 750.00, NULL, NULL, NULL),
(2710, 'JV23060359', 'JV', 500700, NULL, NULL, 374, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-30', 373.19, NULL, NULL, NULL, NULL),
(2711, 'JV23060359', 'JV', 140400, NULL, NULL, 374, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-30', NULL, 373.19, NULL, NULL, NULL),
(2712, 'JV23060359', 'JV', 550115, NULL, NULL, 374, NULL, NULL, NULL, NULL, NULL, 'license expense', '2023-04-30', 3213.53, NULL, NULL, NULL, NULL),
(2713, 'JV23060359', 'JV', 130300, NULL, NULL, 374, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-30', NULL, 3213.53, NULL, NULL, NULL),
(2714, 'JV23060359', 'JV', 550240, NULL, NULL, 374, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-30', 5750.00, NULL, NULL, NULL, NULL),
(2715, 'JV23060359', 'JV', 112300, NULL, NULL, 374, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-30', NULL, 5750.00, NULL, NULL, NULL),
(2716, 'JV23060359', 'JV', 560212, NULL, NULL, 374, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-30', 3255.94, NULL, NULL, NULL, NULL),
(2717, 'JV23060359', 'JV', 150200, NULL, NULL, 374, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-30', NULL, 3255.94, NULL, NULL, NULL),
(2718, 'JV23060360', 'JV', 520100, NULL, NULL, 375, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-30', 1431.99, NULL, NULL, NULL, NULL),
(2719, 'JV23060360', 'JV', 112000, NULL, NULL, 375, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-30', NULL, 976.74, NULL, NULL, NULL),
(2720, 'JV23060360', 'JV', 111700, NULL, NULL, 375, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-30', NULL, 455.25, NULL, NULL, NULL),
(2721, 'JV23060361', 'JV', 530110, NULL, NULL, 376, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-30', 2529.11, NULL, NULL, NULL, NULL),
(2722, 'JV23060361', 'JV', 530111, NULL, NULL, 376, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-30', 1274.52, NULL, NULL, NULL, NULL),
(2723, 'JV23060361', 'JV', 520101, NULL, NULL, 376, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-30', 931.94, NULL, NULL, NULL, NULL),
(2724, 'JV23060361', 'JV', 230300, NULL, NULL, 376, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-30', NULL, 2529.11, NULL, NULL, NULL),
(2725, 'JV23060361', 'JV', 200600, NULL, NULL, 376, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-30', NULL, 1274.52, NULL, NULL, NULL),
(2726, 'JV23060361', 'JV', 230401, NULL, NULL, 376, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-30', NULL, 931.94, NULL, NULL, NULL),
(2727, 'TAX-00016', NULL, 110400, 2214, NULL, NULL, NULL, 154, NULL, NULL, NULL, NULL, '2023-04-30', 63073.12, NULL, '123', NULL, NULL),
(2728, 'TAX-00016', NULL, 410100, 2214, NULL, NULL, NULL, 154, NULL, NULL, NULL, NULL, '2023-04-30', NULL, 63073.12, '12345', NULL, NULL),
(2731, 'JV23060362', 'JV', 111000, NULL, NULL, 377, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-11', 63073.12, NULL, NULL, NULL, NULL),
(2732, 'JV23060362', 'JV', 110400, NULL, NULL, 377, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-11', NULL, 63073.12, NULL, NULL, NULL),
(2733, 'JV23060363', 'JV', 111100, NULL, NULL, 378, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-12', 60000.00, NULL, NULL, NULL, NULL),
(2734, 'JV23060363', 'JV', 111000, NULL, NULL, 378, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-12', NULL, 60000.00, NULL, NULL, NULL),
(2735, 'EXP-00024', NULL, 111000, NULL, 1, NULL, NULL, NULL, 24, NULL, NULL, '', '2023-05-31', NULL, 212.10, '614', NULL, NULL),
(2736, 'EXP-00024', NULL, 560110, NULL, 1, NULL, NULL, NULL, 24, NULL, NULL, '', '2023-05-31', 2.00, NULL, '615', NULL, NULL),
(2737, 'EXP-00024', NULL, 210300, NULL, 1, NULL, NULL, NULL, 24, NULL, NULL, '', '2023-05-31', 0.10, NULL, '617', NULL, NULL),
(2738, 'EXP-00024', NULL, 560110, NULL, 1, NULL, NULL, NULL, 24, NULL, NULL, '', '2023-05-31', 200.00, NULL, '615', NULL, NULL),
(2739, 'EXP-00024', NULL, 210300, NULL, 1, NULL, NULL, NULL, 24, NULL, NULL, '', '2023-05-31', 10.00, NULL, '617', NULL, NULL),
(2740, 'JV23060364', 'JV', 111100, NULL, NULL, 379, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-06', 3500.00, NULL, NULL, NULL, NULL),
(2741, 'JV23060364', 'JV', 110402, NULL, NULL, 379, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-06', NULL, 3500.00, NULL, NULL, NULL),
(2742, 'JV23060365', 'JV', 110402, NULL, NULL, 380, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-08', 3500.00, NULL, NULL, NULL, NULL),
(2743, 'JV23060365', 'JV', 111100, NULL, NULL, 380, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-08', NULL, 3500.00, NULL, NULL, NULL),
(2744, 'JV23060366', 'JV', 111100, NULL, NULL, 381, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-08', 2000.00, NULL, NULL, NULL, NULL),
(2745, 'JV23060366', 'JV', 110402, NULL, NULL, 381, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-08', NULL, 2000.00, NULL, NULL, NULL),
(2746, 'JV23060367', 'JV', 110402, NULL, NULL, 382, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-09', 2000.00, NULL, NULL, NULL, NULL),
(2747, 'JV23060367', 'JV', 111100, NULL, NULL, 382, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-09', NULL, 2000.00, NULL, NULL, NULL),
(2748, 'JV23060368', 'JV', 111100, NULL, NULL, 383, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-11', 1750.00, NULL, NULL, NULL, NULL),
(2749, 'JV23060368', 'JV', 210404, NULL, NULL, 383, NULL, NULL, NULL, NULL, NULL, 'office boy', '2023-05-11', NULL, 1000.00, NULL, NULL, NULL),
(2750, 'JV23060368', 'JV', 112200, NULL, NULL, 383, NULL, NULL, NULL, NULL, NULL, 'Shayar', '2023-05-11', NULL, 750.00, NULL, NULL, NULL),
(2751, 'JV23060369', 'JV', 111100, NULL, NULL, 384, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-11', 1000.00, NULL, NULL, NULL, NULL),
(2752, 'JV23060369', 'JV', 200200, NULL, NULL, 384, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-11', NULL, 1000.00, NULL, NULL, NULL),
(2753, 'EXP-00025', NULL, 111100, NULL, 1, NULL, NULL, NULL, 25, NULL, NULL, '', '2023-05-12', NULL, 1250.00, '614', NULL, NULL),
(2754, 'EXP-00025', NULL, 150200, NULL, 1, NULL, NULL, NULL, 25, NULL, NULL, '', '2023-05-12', 66.60, NULL, '615', NULL, NULL),
(2755, 'EXP-00025', NULL, 210300, NULL, 1, NULL, NULL, NULL, 25, NULL, NULL, '', '2023-05-12', 3.33, NULL, '617', NULL, NULL),
(2756, 'EXP-00025', NULL, 150200, NULL, 1, NULL, NULL, NULL, 25, NULL, NULL, '', '2023-05-12', 1180.07, NULL, '615', NULL, NULL),
(2757, 'EXP-00026', NULL, 111100, NULL, 2216, NULL, NULL, NULL, 26, NULL, NULL, '', '2023-05-12', NULL, 845.94, '614', NULL, NULL),
(2758, 'EXP-00026', NULL, 220100, NULL, 2216, NULL, NULL, NULL, 26, NULL, NULL, '', '2023-05-12', 805.66, NULL, '615', NULL, NULL),
(2759, 'EXP-00026', NULL, 210300, NULL, 2216, NULL, NULL, NULL, 26, NULL, NULL, '', '2023-05-12', 40.28, NULL, '617', NULL, NULL),
(2762, 'JV23060371', 'JV', 111100, NULL, NULL, 386, NULL, NULL, NULL, NULL, NULL, 'SLSU961801', '2023-05-12', NULL, 27337.83, NULL, NULL, NULL),
(2763, 'JV23060371', 'JV', 111100, NULL, NULL, 386, NULL, NULL, NULL, NULL, NULL, 'PHUB232229804 THEO APRIL 23 PAY', '2023-05-12', NULL, 5287.22, NULL, NULL, NULL),
(2764, 'JV23060371', 'JV', 111100, NULL, NULL, 386, NULL, NULL, NULL, NULL, NULL, 'PHUB232230974 WALI VOHRA APRIL PAY', '2023-05-12', NULL, 2921.64, NULL, NULL, NULL),
(2765, 'JV23060371', 'JV', 111100, NULL, NULL, 386, NULL, NULL, NULL, NULL, NULL, 'PHUB232236363 APRIL23 CASH PAY', '2023-05-12', NULL, 6821.50, NULL, NULL, NULL),
(2766, 'JV23060371', 'JV', 111100, NULL, NULL, 386, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-12', NULL, 6022.04, NULL, NULL, NULL),
(2767, 'JV23060371', 'JV', 200300, NULL, NULL, 386, NULL, NULL, NULL, NULL, NULL, 'April 1-30', '2023-05-12', 48390.23, NULL, NULL, NULL, NULL),
(2768, 'JV23060372', 'JV', 200300, NULL, NULL, 387, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-16', 8000.00, NULL, NULL, NULL, NULL),
(2769, 'JV23060372', 'JV', 111100, NULL, NULL, 387, NULL, NULL, NULL, NULL, NULL, 'PHUB232946164', '2023-05-16', NULL, 8000.00, NULL, NULL, NULL),
(2770, 'JV23060373', 'JV', 112200, NULL, NULL, 388, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-27', 800.00, NULL, NULL, NULL, NULL),
(2771, 'JV23060373', 'JV', 111100, NULL, NULL, 388, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-27', NULL, 800.00, NULL, NULL, NULL),
(2772, 'JV23060370', 'JV', 200300, NULL, NULL, 385, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-16', 750.00, NULL, NULL, NULL, NULL),
(2773, 'JV23060370', 'JV', 111100, NULL, NULL, 385, NULL, NULL, NULL, NULL, NULL, 'PHUB233027327', '2023-05-16', NULL, 750.00, NULL, NULL, NULL),
(2774, 'JV23040374', 'JV', 500500, NULL, NULL, 389, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-30', 750.00, NULL, NULL, NULL, NULL),
(2775, 'JV23040374', 'JV', 200300, NULL, NULL, 389, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-30', NULL, 750.00, NULL, NULL, NULL),
(2776, 'JV23060375', 'JV', 111100, NULL, NULL, 390, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-19', 10000.00, NULL, NULL, NULL, NULL),
(2777, 'JV23060375', 'JV', 110402, NULL, NULL, 390, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-19', NULL, 10000.00, NULL, NULL, NULL),
(2778, 'JV23060376', 'JV', 110402, NULL, NULL, 391, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-19', 10000.00, NULL, NULL, NULL, NULL),
(2779, 'JV23060376', 'JV', 111100, NULL, NULL, 391, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-19', NULL, 10000.00, NULL, NULL, NULL),
(2780, 'JV23060377', 'JV', 560110, NULL, NULL, 392, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-26', 105.00, NULL, NULL, NULL, NULL),
(2781, 'JV23060377', 'JV', 111100, NULL, NULL, 392, NULL, NULL, NULL, NULL, NULL, '2305260114155146', '2023-05-26', NULL, 105.00, NULL, NULL, NULL),
(2782, 'JV23050273', 'JV', 500700, NULL, NULL, 288, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31', 528.94, NULL, NULL, NULL, NULL),
(2783, 'JV23050273', 'JV', 130400, NULL, NULL, 288, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31', NULL, 528.94, NULL, NULL, NULL),
(2784, 'JV23050273', 'JV', 550115, NULL, NULL, 288, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31', 2444.71, NULL, NULL, NULL, NULL),
(2785, 'JV23050273', 'JV', 130300, NULL, NULL, 288, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31', NULL, 2444.71, NULL, NULL, NULL),
(2786, 'JV23050273', 'JV', 550240, NULL, NULL, 288, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31', 5000.00, NULL, NULL, NULL, NULL),
(2787, 'JV23050273', 'JV', 112300, NULL, NULL, 288, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31', NULL, 5000.00, NULL, NULL, NULL),
(2788, 'JV23050273', 'JV', 560212, NULL, NULL, 288, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31', 3015.34, NULL, NULL, NULL, NULL),
(2789, 'JV23050273', 'JV', 150200, NULL, NULL, 288, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31', NULL, 3015.34, NULL, NULL, NULL),
(2790, 'JV23050273', 'JV', 550115, NULL, NULL, 288, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31', 41.67, NULL, NULL, NULL, NULL),
(2791, 'JV23050273', 'JV', 130400, NULL, NULL, 288, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31', NULL, 41.67, NULL, NULL, NULL),
(2792, 'JV23060378', 'JV', 500700, NULL, NULL, 393, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-31', 373.19, NULL, NULL, NULL, NULL),
(2793, 'JV23060378', 'JV', 140400, NULL, NULL, 393, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-31', NULL, 373.19, NULL, NULL, NULL),
(2794, 'JV23060378', 'JV', 550115, NULL, NULL, 393, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-31', 3213.56, NULL, NULL, NULL, NULL),
(2795, 'JV23060378', 'JV', 130300, NULL, NULL, 393, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-31', NULL, 3213.56, NULL, NULL, NULL),
(2796, 'JV23060378', 'JV', 550240, NULL, NULL, 393, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-31', 5750.00, NULL, NULL, NULL, NULL),
(2797, 'JV23060378', 'JV', 112300, NULL, NULL, 393, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-31', NULL, 5750.00, NULL, NULL, NULL),
(2798, 'JV23060378', 'JV', 560212, NULL, NULL, 393, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-31', 5780.94, NULL, NULL, NULL, NULL),
(2799, 'JV23060378', 'JV', 150200, NULL, NULL, 393, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-31', NULL, 5780.94, NULL, NULL, NULL),
(2800, 'JV23060379', 'JV', 520100, NULL, NULL, 394, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-31', 1431.99, NULL, NULL, NULL, NULL),
(2801, 'JV23060379', 'JV', 112000, NULL, NULL, 394, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-31', NULL, 976.74, NULL, NULL, NULL),
(2802, 'JV23060379', 'JV', 111700, NULL, NULL, 394, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-31', NULL, 455.25, NULL, NULL, NULL),
(2805, 'TAX-00017', NULL, 110400, 2214, NULL, NULL, NULL, 155, NULL, NULL, NULL, NULL, '2023-05-31', 154192.17, NULL, '123', NULL, NULL),
(2806, 'TAX-00017', NULL, 410100, 2214, NULL, NULL, NULL, 155, NULL, NULL, NULL, NULL, '2023-05-31', NULL, 154192.17, '12345', NULL, NULL),
(2807, 'JV23060380', 'JV', 530110, NULL, NULL, 395, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-31', 3422.56, NULL, NULL, NULL, NULL),
(2808, 'JV23060380', 'JV', 230300, NULL, NULL, 395, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-31', NULL, 3422.56, NULL, NULL, NULL),
(2809, 'JV23060380', 'JV', 530111, NULL, NULL, 395, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-31', 1044.93, NULL, NULL, NULL, NULL),
(2810, 'JV23060380', 'JV', 200600, NULL, NULL, 395, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-31', NULL, 1044.93, NULL, NULL, NULL),
(2811, 'JV23060380', 'JV', 520101, NULL, NULL, 395, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-31', 796.53, NULL, NULL, NULL, NULL),
(2812, 'JV23060380', 'JV', 230401, NULL, NULL, 395, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-31', NULL, 796.53, NULL, NULL, NULL),
(2817, 'PAY-2', 'BP', 110201, 2214, NULL, NULL, NULL, 133, NULL, 2, NULL, 'Payment made with payment refno 2', '2023-06-22', 82423.28, NULL, '514', NULL, NULL),
(2818, 'PAY-2', 'BP', 110400, 2214, NULL, NULL, NULL, 133, NULL, 2, NULL, 'Payment made with payment refno 2', '2023-06-22', NULL, 82423.28, '515', NULL, NULL),
(2819, 'PAY-1', 'BP', 110201, 2214, NULL, NULL, NULL, 132, NULL, 1, NULL, 'Payment made with payment refno 1', '2023-06-22', 49785.75, NULL, '514', NULL, NULL),
(2820, 'PAY-1', 'BP', 110400, 2214, NULL, NULL, NULL, 132, NULL, 1, NULL, 'Payment made with payment refno 1', '2023-06-22', NULL, 49785.75, '515', NULL, NULL),
(2823, 'JV23060382', 'JV', 550123, NULL, NULL, 397, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-22', 200.00, NULL, NULL, NULL, NULL),
(2824, 'JV23060382', 'JV', 510661, NULL, NULL, 397, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-22', 83.25, NULL, NULL, NULL, NULL),
(2825, 'JV23060382', 'JV', 112200, NULL, NULL, 397, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-22', 2700.00, NULL, NULL, NULL, NULL),
(2826, 'JV23060382', 'JV', 111100, NULL, NULL, 397, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-22', NULL, 2983.25, NULL, NULL, NULL),
(2827, 'JV23060383', 'JV', 551140, NULL, NULL, 398, NULL, NULL, NULL, NULL, NULL, 'INV1000452470', '2023-05-05', 805.66, NULL, NULL, NULL, NULL),
(2828, 'JV23060383', 'JV', 220100, NULL, NULL, 398, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-05', NULL, 805.66, NULL, NULL, NULL),
(2829, 'JV23060384', 'JV', 112300, NULL, NULL, 399, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-05', 17250.00, NULL, NULL, NULL, NULL),
(2830, 'JV23060384', 'JV', 111000, NULL, NULL, 399, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-05', NULL, 17250.00, NULL, NULL, NULL),
(2831, 'JV23060385', 'JV', 111100, NULL, NULL, 400, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-06', 3500.00, NULL, NULL, NULL, NULL),
(2832, 'JV23060385', 'JV', 110400, NULL, NULL, 400, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-06', NULL, 3500.00, NULL, NULL, NULL),
(2833, 'JV23060386', 'JV', 110400, NULL, NULL, 401, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-08', 3500.00, NULL, NULL, NULL, NULL),
(2834, 'JV23060386', 'JV', 111100, NULL, NULL, 401, NULL, NULL, NULL, NULL, NULL, 'SLSU958823', '2023-05-08', NULL, 3500.00, NULL, NULL, NULL),
(2835, 'JV23060387', 'JV', 111100, NULL, NULL, 402, NULL, NULL, NULL, NULL, NULL, 'PHUB231436967 	JUNAID SALARY APR23', '2023-05-08', 2000.00, NULL, NULL, NULL, NULL),
(2836, 'JV23060387', 'JV', 200200, NULL, NULL, 402, NULL, NULL, NULL, NULL, NULL, 'PHUB231436967', '2023-05-08', NULL, 2000.00, NULL, NULL, NULL),
(2837, 'JV23060388', 'JV', 111100, NULL, NULL, 403, NULL, NULL, NULL, NULL, NULL, 'Ismail salary', '2023-05-08', 1000.00, NULL, NULL, NULL, NULL),
(2838, 'JV23060388', 'JV', 111100, NULL, NULL, 403, NULL, NULL, NULL, NULL, NULL, 'Shayar salary', '2023-05-08', 750.00, NULL, NULL, NULL, NULL),
(2839, 'JV23060388', 'JV', 210404, NULL, NULL, 403, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-08', NULL, 1750.00, NULL, NULL, NULL),
(2840, 'JV23060389', 'JV', 111100, NULL, NULL, 404, NULL, NULL, NULL, NULL, NULL, 'PHUB232125209 SHARED SALARY AM', '2023-05-11', 1000.00, NULL, NULL, NULL, NULL),
(2841, 'JV23060389', 'JV', 200200, NULL, NULL, 404, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-11', NULL, 1000.00, NULL, NULL, NULL),
(2842, 'JV23060390', 'JV', 111100, NULL, NULL, 405, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-12', 60000.00, NULL, NULL, NULL, NULL),
(2843, 'JV23060390', 'JV', 111000, NULL, NULL, 405, NULL, NULL, NULL, NULL, NULL, '\"Online Local Fund Transfer / AE520030012387035920001 ALLIANZ MARKETING MANAGEMENT LLC ADCBAEAAXXX SRN: 258954199960965\"', '2023-05-12', NULL, 60000.00, NULL, NULL, NULL),
(2844, 'JV23060391', 'JV', 200300, NULL, NULL, 406, NULL, NULL, NULL, NULL, NULL, 'Salary- Lucy & Abijith', '2023-05-12', 6022.04, NULL, NULL, NULL, NULL),
(2845, 'JV23060391', 'JV', 111100, NULL, NULL, 406, NULL, NULL, NULL, NULL, NULL, '\"PHUB232227692	LUCY AND ABHIJITH	TRF TO GRAND ALLIANCE COMMER.BROKERAGE L \"', '2023-05-12', NULL, 6022.04, NULL, NULL, NULL),
(2846, 'JV23060392', 'JV', 200300, NULL, NULL, 407, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-12', 48390.23, NULL, NULL, NULL, NULL),
(2847, 'JV23060392', 'JV', 111100, NULL, NULL, 407, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-12', NULL, 27337.83, NULL, NULL, NULL),
(2848, 'JV23060392', 'JV', 111100, NULL, NULL, 407, NULL, NULL, NULL, NULL, NULL, 'PHUB232229804 THEO APRIL 23 PAY', '2023-05-12', NULL, 5287.22, NULL, NULL, NULL),
(2849, 'JV23060392', 'JV', 111100, NULL, NULL, 407, NULL, NULL, NULL, NULL, NULL, 'PHUB232230974 	WALI VOHR A APRIL PAY', '2023-05-12', NULL, 2921.64, NULL, NULL, NULL),
(2850, 'JV23060392', 'JV', 111100, NULL, NULL, 407, NULL, NULL, NULL, NULL, NULL, 'PHUB232236363 APRIL23 CASH PAY', '2023-05-12', NULL, 6821.50, NULL, NULL, NULL),
(2851, 'JV23060392', 'JV', 111100, NULL, NULL, 407, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-12', NULL, 6022.04, NULL, NULL, NULL),
(2852, 'JV23060393', 'JV', 200200, NULL, NULL, 408, NULL, NULL, NULL, NULL, NULL, 'Junaid salary', '2023-05-15', 2000.00, NULL, NULL, NULL, NULL),
(2853, 'JV23060393', 'JV', 111100, NULL, NULL, 408, NULL, NULL, NULL, NULL, NULL, '\"SLSU959278', '2023-05-15', NULL, 2000.00, NULL, NULL, NULL),
(2854, 'JV23060394', 'JV', 200300, NULL, NULL, 409, NULL, NULL, NULL, NULL, NULL, 'PHUB232946164', '2023-05-16', 8000.00, NULL, NULL, NULL, NULL),
(2855, 'JV23060394', 'JV', 111100, NULL, NULL, 409, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-16', NULL, 8000.00, NULL, NULL, NULL),
(2856, 'JV23060395', 'JV', 111500, NULL, NULL, 410, NULL, NULL, NULL, NULL, NULL, 'Payable to Asim + PTC', '2023-05-19', 30520.00, NULL, NULL, NULL, NULL),
(2857, 'JV23060395', 'JV', 200002, NULL, NULL, 410, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-19', NULL, 30515.00, NULL, NULL, NULL),
(2858, 'JV23060395', 'JV', 111300, NULL, NULL, 410, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-19', NULL, 5.00, NULL, NULL, NULL),
(2859, 'JV23060396', 'JV', 112200, NULL, NULL, 411, NULL, NULL, NULL, NULL, NULL, 'Nauman cash advance', '2023-05-27', 800.00, NULL, NULL, NULL, NULL),
(2860, 'JV23060396', 'JV', 111100, NULL, NULL, 411, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-27', NULL, 800.00, NULL, NULL, NULL),
(2861, 'JV23060381', 'JV', 112200, NULL, NULL, 396, NULL, NULL, NULL, NULL, NULL, 'Nauman CA', '2023-06-22', 600.00, NULL, NULL, NULL, NULL),
(2862, 'JV23060381', 'JV', 111100, NULL, NULL, 396, NULL, NULL, NULL, NULL, NULL, 'Nauman CA- PHUB241066191', '2023-06-22', NULL, 600.00, NULL, NULL, NULL),
(2866, 'EXP-00027', NULL, 111500, NULL, 2217, NULL, NULL, NULL, 27, NULL, NULL, '', '2023-05-24', NULL, 250.39, '614', NULL, NULL),
(2867, 'EXP-00027', NULL, 200800, NULL, 2217, NULL, NULL, NULL, 27, NULL, NULL, '', '2023-05-24', 238.46, NULL, '615', NULL, NULL),
(2868, 'EXP-00027', NULL, 210300, NULL, 2217, NULL, NULL, NULL, 27, NULL, NULL, '', '2023-05-24', 11.93, NULL, '617', NULL, NULL),
(2872, 'EXP-00028', NULL, 111500, NULL, 2218, NULL, NULL, NULL, 28, NULL, NULL, '', '2023-05-19', NULL, 20990.13, '614', NULL, NULL),
(2873, 'EXP-00028', NULL, 200700, NULL, 2218, NULL, NULL, NULL, 28, NULL, NULL, '', '2023-05-19', 19990.59, NULL, '615', NULL, NULL),
(2874, 'EXP-00028', NULL, 210300, NULL, 2218, NULL, NULL, NULL, 28, NULL, NULL, '', '2023-05-19', 999.54, NULL, '617', NULL, NULL),
(2875, 'EXP-00029', NULL, 111500, NULL, 2218, NULL, NULL, NULL, 29, NULL, NULL, '', '2023-06-19', NULL, 26197.89, '614', NULL, NULL),
(2876, 'EXP-00029', NULL, 200800, NULL, 2218, NULL, NULL, NULL, 29, NULL, NULL, '', '2023-06-19', 24950.37, NULL, '615', NULL, NULL),
(2877, 'EXP-00029', NULL, 210300, NULL, 2218, NULL, NULL, NULL, 29, NULL, NULL, '', '2023-06-19', 1247.52, NULL, '617', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_10_10_143303_create_attendances_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `party`
--

CREATE TABLE `party` (
  `PartyID` int NOT NULL,
  `PartyName` varchar(150) DEFAULT NULL,
  `TRN` varchar(150) DEFAULT '',
  `Address` varchar(75) DEFAULT NULL,
  `City` varchar(155) DEFAULT NULL,
  `Mobile` varchar(150) DEFAULT NULL,
  `Phone` varchar(25) DEFAULT NULL,
  `Email` varchar(25) DEFAULT NULL,
  `Website` varchar(150) DEFAULT NULL,
  `Active` varchar(3) DEFAULT NULL,
  `InvoiceDueDays` int DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `party`
--

INSERT INTO `party` (`PartyID`, `PartyName`, `TRN`, `Address`, `City`, `Mobile`, `Phone`, `Email`, `Website`, `Active`, `InvoiceDueDays`, `eDate`) VALUES
(1, 'Walkin Customer', '00000', '000000', NULL, '0000', '00000', '00000', '0000', 'Yes', 0, '2022-07-08 04:12:14');

-- --------------------------------------------------------

--
-- Table structure for table `payment_detail`
--

CREATE TABLE `payment_detail` (
  `PaymentDetailID` int NOT NULL,
  `PaymentMasterID` int DEFAULT NULL,
  `PaymentDate` date DEFAULT NULL,
  `InvoiceMasterID` int DEFAULT NULL,
  `Payment` double(8,2) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment_master`
--

CREATE TABLE `payment_master` (
  `PaymentMasterID` int NOT NULL,
  `PartyID` int DEFAULT NULL,
  `PaymentDate` date DEFAULT NULL,
  `PaymentAmount` double(8,2) DEFAULT NULL,
  `PaymentMode` varchar(25) DEFAULT NULL,
  `ChartOfAccountID` int DEFAULT NULL,
  `ReferenceNo` varchar(255) DEFAULT NULL,
  `File` varchar(35) DEFAULT NULL,
  `Notes` longtext,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment_mode`
--

CREATE TABLE `payment_mode` (
  `ID` int NOT NULL,
  `PaymentMode` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_mode`
--

INSERT INTO `payment_mode` (`ID`, `PaymentMode`) VALUES
(1, 'Cash'),
(2, 'Bank Transfer'),
(3, 'Cheque'),
(4, 'Credit Card');

-- --------------------------------------------------------

--
-- Table structure for table `pettycash_detail`
--

CREATE TABLE `pettycash_detail` (
  `PettyDetID` int NOT NULL,
  `PettyMstID` int DEFAULT NULL,
  `PettyVoucher` varchar(12) DEFAULT NULL,
  `SupplierID` int DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `ChOfAcc` int DEFAULT NULL,
  `Narration` varchar(255) DEFAULT NULL,
  `Invoice` varchar(35) DEFAULT NULL,
  `RefNo` varchar(35) DEFAULT NULL,
  `Debit` double(10,2) DEFAULT NULL,
  `FromChOfAcc` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `pettycash_detail`
--
DELIMITER $$
CREATE TRIGGER `delete` AFTER DELETE ON `pettycash_detail` FOR EACH ROW begin
delete from journal where PettyMstID = old.PettyMstID;
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `journal` AFTER INSERT ON `pettycash_detail` FOR EACH ROW begin
declare chart_name varchar(25);
select ChartOfAccountName into chart_name from chartofaccount where ChartOfAccountID=new.ChOfAcc;

INSERT INTO journal (VHNO,JournalType,ChartOfAccountID,PettyMstID,Narration,Date,Cr)
values (new.PettyVoucher,SUBSTRING(new.PettyVoucher,1,2),new.FromChOfAcc,new.PettyMstID,concat(new.Narration,' (', chart_name,') '),new.Date,new.Debit);


INSERT INTO journal (VHNO,JournalType,ChartOfAccountID,PettyMstID,Narration,Date,Dr)
values (new.PettyVoucher,SUBSTRING(new.PettyVoucher,1,2),new.ChOfAcc,new.PettyMstID,new.Narration,new.Date,new.Debit);


end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `pettycash_master`
--

CREATE TABLE `pettycash_master` (
  `PettyMstID` int NOT NULL,
  `PettyVoucher` varchar(11) DEFAULT NULL,
  `ChOfAcc` int DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Narration` varchar(255) DEFAULT NULL,
  `Credit` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `name` varchar(55) DEFAULT NULL,
  `price` varchar(55) DEFAULT NULL,
  `details` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `details`) VALUES
(1, 'Kashif', '55', '55'),
(2, 'Mu', '55', '66'),
(3, 'usma', NULL, NULL),
(4, 'khan', NULL, NULL),
(5, 'pakistna', NULL, NULL),
(6, 'india', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchasepayment_detail`
--

CREATE TABLE `purchasepayment_detail` (
  `PurchasePaymentDetailID` int NOT NULL,
  `PurchasePaymentMasterID` int DEFAULT NULL,
  `PaymentDate` date DEFAULT NULL,
  `InvoiceMasterID` int DEFAULT NULL,
  `Payment` double(8,2) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchasepayment_master`
--

CREATE TABLE `purchasepayment_master` (
  `PurchasePaymentMasterID` int NOT NULL,
  `SupplierID` int DEFAULT NULL,
  `PaymentDate` date DEFAULT NULL,
  `PaymentAmount` double(8,2) DEFAULT NULL,
  `PaymentMode` varchar(25) DEFAULT NULL,
  `ChartOfAccountID` int DEFAULT NULL,
  `ReferenceNo` varchar(35) DEFAULT NULL,
  `File` varchar(35) DEFAULT NULL,
  `Notes` longtext,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_detail`
--

CREATE TABLE `purchase_order_detail` (
  `PurchaseOrderDetailID` int NOT NULL,
  `PurchaseOrderMasterID` int NOT NULL,
  `Date` date DEFAULT NULL,
  `ItemID` int DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Rate` double(8,2) DEFAULT NULL,
  `Qty` varchar(10) DEFAULT NULL,
  `Unit` varchar(10) DEFAULT NULL,
  `DiscountPer` double(8,2) DEFAULT NULL,
  `Discount` double(8,2) DEFAULT NULL,
  `Tax` double(8,2) DEFAULT NULL,
  `TaxPer` double(8,2) DEFAULT NULL,
  `Amount` double(8,2) DEFAULT NULL,
  `Remarks` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_master`
--

CREATE TABLE `purchase_order_master` (
  `PurchaseOrderMasterID` int NOT NULL,
  `PON` varchar(10) DEFAULT NULL,
  `SupplierID` int DEFAULT NULL,
  `ReferenceNo` varchar(255) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `DeliveryDate` date DEFAULT NULL,
  `PONotes` varchar(255) DEFAULT NULL,
  `DeliveryNotes` longtext,
  `UserID` int DEFAULT NULL,
  `Subject` varchar(255) DEFAULT NULL,
  `DiscountPer` double(8,2) DEFAULT NULL,
  `Discount` double(8,2) DEFAULT NULL,
  `Tax` double(8,2) DEFAULT NULL,
  `SubTotal` double(8,2) DEFAULT NULL,
  `GrandTotal` double(8,2) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `RoleID` int NOT NULL,
  `Table` varchar(55) DEFAULT NULL,
  `Action` varchar(55) DEFAULT NULL,
  `Allow` varchar(1) DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`RoleID`, `Table`, `Action`, `Allow`) VALUES
(1, 'Invoice', 'List', 'Y'),
(12, 'Invoice', 'Create', 'Y'),
(13, 'Invoice', 'Update', 'Y'),
(14, 'Invoice', 'Delete', 'Y'),
(15, 'Invoice', 'View', 'Y'),
(16, 'Invoice', 'PDF', 'Y'),
(63, 'Voucher', 'List', 'Y'),
(64, 'Voucher', 'Create', 'Y'),
(65, 'Voucher', 'Update', 'Y'),
(66, 'Voucher', 'Delete', 'Y'),
(67, 'Voucher', 'View', 'Y'),
(68, 'Petty Cash', 'List', 'Y'),
(69, 'Petty Cash', 'Create', 'Y'),
(70, 'Petty Cash', 'Update', 'Y'),
(71, 'Petty Cash', 'Delete', 'Y'),
(72, 'Petty Cash', 'View', 'Y'),
(73, 'Adjustment Balance', 'Create', 'Y'),
(74, 'Chart of Account', 'List / Create', 'Y'),
(75, 'Chart of Account', 'Update', 'Y'),
(76, 'Chart of Account', 'Delete', 'Y'),
(77, 'Item/Inventory', 'List / Create', 'Y'),
(78, 'Item/Inventory', 'Update', 'Y'),
(79, 'Item/Inventory', 'Delete', 'Y'),
(80, 'Party / Customers', 'List / Create', 'Y'),
(81, 'Party / Customers', 'Update', 'Y'),
(82, 'Party / Customers', 'Delete', 'Y'),
(83, 'Supplier', 'List / Create', 'Y'),
(84, 'Supplier', 'Update', 'Y'),
(85, 'Supplier', 'Delete', 'Y'),
(86, 'User', 'List / Create', 'Y'),
(87, 'User', 'Update', 'Y'),
(88, 'User', 'Delete', 'Y'),
(89, 'User Rights', 'Assign', 'Y'),
(90, 'Party Ledger', 'View', 'Y'),
(91, 'Party Ledger', 'PDF', 'Y'),
(92, 'Party Balance', 'View', 'Y'),
(93, 'Party Balance', 'PDF', 'Y'),
(94, 'Yearly Report', 'View', 'Y'),
(95, 'Yearly Report', 'PDF', 'Y'),
(96, 'Ageing Report', 'View', 'Y'),
(97, 'Ageing Report', 'PDF', 'Y'),
(98, 'Party Analysis', 'View', 'Y'),
(99, 'Party Analysis', 'PDF', 'Y'),
(100, 'Party List', 'View', 'Y'),
(101, 'Party List', 'PDF', 'Y'),
(102, 'Outstanding Invoices', 'View', 'Y'),
(103, 'Outstanding Invoices', 'PDF', 'Y'),
(104, 'Supplier Ledger', 'View', 'Y'),
(105, 'Supplier Ledger', 'PDF', 'Y'),
(106, 'Supplier Balance', 'View', 'Y'),
(107, 'Supplier Balance', 'PDF', 'Y'),
(108, 'Sale Invoice', 'View', 'Y'),
(109, 'Sale Invoice', 'PDF', 'Y'),
(110, 'Ticket Register', 'View', 'Y'),
(111, 'Ticket Register', 'PDF', 'Y'),
(112, 'Airline Summary', 'View', 'Y'),
(113, 'Airline Summary', 'PDF', 'Y'),
(114, 'Sale Man Report', 'View', 'Y'),
(115, 'Sale Man Report', 'PDF', 'Y'),
(116, 'Tax Report', 'View', 'Y'),
(117, 'Tax Report', 'PDF', 'Y'),
(118, 'Sales Report', 'View', 'Y'),
(119, 'Sales Report', 'PDF', 'Y'),
(120, 'Voucher Report', 'View', 'Y'),
(121, 'Voucher Report', 'PDF', 'Y'),
(122, 'Cash Book', 'View', 'Y'),
(123, 'Cash Book', 'PDF', 'Y'),
(124, 'Day Book', 'View', 'Y'),
(125, 'Day Book', 'PDF', 'Y'),
(126, 'General Ledger', 'View', 'Y'),
(127, 'General Ledger', 'PDF', 'Y'),
(128, 'Trial Balance', 'View', 'Y'),
(129, 'Trial Balance', 'PDF', 'Y'),
(130, 'Trial with Activity', 'View', 'Y'),
(131, 'Trial with Activity', 'PDF', 'Y'),
(132, 'Yearly Summary', 'View', 'Y'),
(133, 'Yearly Summary', 'PDF', 'Y'),
(134, 'Profit & Loss ', 'View', 'Y'),
(135, 'Profit & Loss ', 'PDF', 'Y'),
(136, 'Balance Sheet', 'View', 'Y'),
(137, 'Balance Sheet', 'PDF', 'Y'),
(138, 'Invoice Summary', 'View', 'Y'),
(139, 'Invoice Summary', 'PDF', 'Y'),
(140, 'Party Wise Sale', 'View', 'Y'),
(141, 'Party Wise Sale', 'PDF', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `runtotaltestdata`
--

CREATE TABLE `runtotaltestdata` (
  `id` int NOT NULL,
  `value` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `runtotaltestdata`
--

INSERT INTO `runtotaltestdata` (`id`, `value`) VALUES
(1, 1),
(2, 2),
(3, 4),
(4, 7),
(5, 9),
(6, 12),
(7, 13),
(8, 16),
(9, 22),
(10, 42),
(11, 57),
(12, 58),
(13, 59),
(14, 60);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SupplierID` int NOT NULL,
  `SupplierName` varchar(150) DEFAULT NULL,
  `TRN` varchar(75) DEFAULT NULL COMMENT 'tax regsitration no',
  `Address` varchar(75) DEFAULT NULL,
  `Mobile` varchar(150) DEFAULT NULL,
  `Phone` varchar(150) DEFAULT NULL,
  `Email` varchar(150) DEFAULT NULL,
  `Website` varchar(150) DEFAULT NULL,
  `Active` varchar(3) DEFAULT NULL,
  `InvoiceDueDays` int DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SupplierID`, `SupplierName`, `TRN`, `Address`, `Mobile`, `Phone`, `Email`, `Website`, `Active`, `InvoiceDueDays`, `eDate`) VALUES
(1, 'Walkin Supplier', NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', NULL, '2022-07-20 18:35:02'),
(2214, 'Hamad Sultan', NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', NULL, '2022-09-19 13:05:06'),
(2215, 'Oman Insurance Company PSC', '100258594900003', 'PO Box: 5209 Dubai', NULL, NULL, NULL, NULL, 'Yes', NULL, '2023-06-19 10:46:36'),
(2216, 'Techem Energy Services LLC', '100558937700003', NULL, NULL, NULL, NULL, NULL, 'Yes', NULL, '2023-06-22 08:48:46'),
(2217, 'Dubai Electricity & Water Authority', '1 0 0 02 7 62020 0 0 03', NULL, NULL, NULL, NULL, NULL, 'Yes', NULL, '2023-06-24 06:03:21'),
(2218, 'Emirates Telecommunications Group Company (Etisalat Group) P.J.S.C.', '100023129800003', NULL, NULL, NULL, NULL, NULL, 'Yes', NULL, '2023-06-24 06:24:13');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_category`
--

CREATE TABLE `supplier_category` (
  `SupplierCatID` int NOT NULL,
  `SupplierCode` varchar(10) DEFAULT NULL,
  `SupplierCategory` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier_category`
--

INSERT INTO `supplier_category` (`SupplierCatID`, `SupplierCode`, `SupplierCategory`) VALUES
(1, 'C', 'Customer'),
(2, 'VC', 'Airline Customer'),
(3, 'EC', 'Employee'),
(4, 'X', 'Discontinued'),
(5, 'XC', 'Bad Debds'),
(6, 'VS', 'Supplier'),
(7, 'BC', 'Old Bad Debts');

-- --------------------------------------------------------

--
-- Table structure for table `tax`
--

CREATE TABLE `tax` (
  `TaxID` int NOT NULL,
  `TaxPer` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Section` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tax`
--

INSERT INTO `tax` (`TaxID`, `TaxPer`, `Description`, `Section`) VALUES
(1, '0', '[0%] Tax ', 'Invoice'),
(2, '4.76', '[4.76%] Tax', 'Invoice'),
(3, '0', '[0%] Tax ', 'Estimate'),
(4, '4.76', '[5%] Tax', 'Estimate');

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `UnitID` int NOT NULL,
  `UnitName` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`UnitID`, `UnitName`) VALUES
(1, 'box'),
(2, 'cm'),
(3, 'dz'),
(4, 'ft'),
(5, 'g'),
(6, 'in'),
(7, 'kg'),
(8, 'km'),
(9, 'lb'),
(10, 'mg'),
(11, 'm'),
(12, 'pcs');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int NOT NULL,
  `FullName` varchar(55) DEFAULT NULL,
  `Email` varchar(55) DEFAULT NULL,
  `Password` varchar(75) DEFAULT NULL,
  `UserType` varchar(25) DEFAULT NULL,
  `eDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Active` varchar(5) DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `FullName`, `Email`, `Password`, `UserType`, `eDate`, `Active`) VALUES
(1, 'Ext Boosk', 'demo@extbooks.com', '123456', 'Admin', '2022-10-06 10:36:24', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `RoleId` int NOT NULL,
  `UserID` int DEFAULT NULL,
  `Table` varchar(55) DEFAULT NULL,
  `Action` varchar(55) DEFAULT NULL,
  `Allow` varchar(10) DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`RoleId`, `UserID`, `Table`, `Action`, `Allow`) VALUES
(4301, 1, 'Invoice', 'List', 'Y'),
(4302, 1, 'Invoice', 'Create', 'Y'),
(4303, 1, 'Invoice', 'Update', 'Y'),
(4304, 1, 'Invoice', 'Delete', 'Y'),
(4305, 1, 'Invoice', 'View', 'Y'),
(4306, 1, 'Invoice', 'PDF', 'Y'),
(4307, 1, 'Voucher', 'List', 'Y'),
(4308, 1, 'Voucher', 'Create', 'Y'),
(4309, 1, 'Voucher', 'Update', 'Y'),
(4310, 1, 'Voucher', 'Delete', 'Y'),
(4311, 1, 'Voucher', 'View', 'Y'),
(4312, 1, 'Petty Cash', 'List', 'Y'),
(4313, 1, 'Petty Cash', 'Create', 'Y'),
(4314, 1, 'Petty Cash', 'Update', 'Y'),
(4315, 1, 'Petty Cash', 'Delete', 'Y'),
(4316, 1, 'Petty Cash', 'View', 'Y'),
(4317, 1, 'Adjustment Balance', 'Create', 'Y'),
(4318, 1, 'Chart of Account', 'List / Create', 'Y'),
(4319, 1, 'Chart of Account', 'Update', 'Y'),
(4320, 1, 'Chart of Account', 'Delete', 'Y'),
(4321, 1, 'Item/Inventory', 'List / Create', 'Y'),
(4322, 1, 'Item/Inventory', 'Update', 'Y'),
(4323, 1, 'Item/Inventory', 'Delete', 'Y'),
(4324, 1, 'Party / Customers', 'List / Create', 'Y'),
(4325, 1, 'Party / Customers', 'Update', 'Y'),
(4326, 1, 'Party / Customers', 'Delete', 'Y'),
(4327, 1, 'Supplier', 'List / Create', 'Y'),
(4328, 1, 'Supplier', 'Update', 'Y'),
(4329, 1, 'Supplier', 'Delete', 'Y'),
(4330, 1, 'User', 'List / Create', 'Y'),
(4331, 1, 'User', 'Update', 'Y'),
(4332, 1, 'User', 'Delete', 'Y'),
(4333, 1, 'User Rights', 'Assign', 'Y'),
(4334, 1, 'Party Ledger', 'View', 'Y'),
(4335, 1, 'Party Ledger', 'PDF', 'Y'),
(4336, 1, 'Party Balance', 'View', 'Y'),
(4337, 1, 'Party Balance', 'PDF', 'Y'),
(4338, 1, 'Yearly Report', 'View', 'Y'),
(4339, 1, 'Yearly Report', 'PDF', 'Y'),
(4340, 1, 'Ageing Report', 'View', 'Y'),
(4341, 1, 'Ageing Report', 'PDF', 'Y'),
(4342, 1, 'Party Analysis', 'View', 'Y'),
(4343, 1, 'Party Analysis', 'PDF', 'Y'),
(4344, 1, 'Party List', 'View', 'Y'),
(4345, 1, 'Party List', 'PDF', 'Y'),
(4346, 1, 'Outstanding Invoices', 'View', 'Y'),
(4347, 1, 'Outstanding Invoices', 'PDF', 'Y'),
(4348, 1, 'Supplier Ledger', 'View', 'Y'),
(4349, 1, 'Supplier Ledger', 'PDF', 'Y'),
(4350, 1, 'Supplier Balance', 'View', 'Y'),
(4351, 1, 'Supplier Balance', 'PDF', 'Y'),
(4352, 1, 'Sale Invoice', 'View', 'Y'),
(4353, 1, 'Sale Invoice', 'PDF', 'Y'),
(4354, 1, 'Ticket Register', 'View', 'Y'),
(4355, 1, 'Ticket Register', 'PDF', 'Y'),
(4356, 1, 'Airline Summary', 'View', 'Y'),
(4357, 1, 'Airline Summary', 'PDF', 'Y'),
(4358, 1, 'Sale Man Report', 'View', 'Y'),
(4359, 1, 'Sale Man Report', 'PDF', 'Y'),
(4360, 1, 'Tax Report', 'View', 'Y'),
(4361, 1, 'Tax Report', 'PDF', 'Y'),
(4362, 1, 'Sales Report', 'View', 'Y'),
(4363, 1, 'Sales Report', 'PDF', 'Y'),
(4364, 1, 'Voucher Report', 'View', 'Y'),
(4365, 1, 'Voucher Report', 'PDF', 'Y'),
(4366, 1, 'Cash Book', 'View', 'Y'),
(4367, 1, 'Cash Book', 'PDF', 'Y'),
(4368, 1, 'Day Book', 'View', 'Y'),
(4369, 1, 'Day Book', 'PDF', 'Y'),
(4370, 1, 'General Ledger', 'View', 'Y'),
(4371, 1, 'General Ledger', 'PDF', 'Y'),
(4372, 1, 'Trial Balance', 'View', 'Y'),
(4373, 1, 'Trial Balance', 'PDF', 'Y'),
(4374, 1, 'Trial with Activity', 'View', 'Y'),
(4375, 1, 'Trial with Activity', 'PDF', 'Y'),
(4376, 1, 'Yearly Summary', 'View', 'Y'),
(4377, 1, 'Yearly Summary', 'PDF', 'Y'),
(4378, 1, 'Profit & Loss', 'View', 'Y'),
(4379, 1, 'Profit & Loss', 'PDF', 'Y'),
(4380, 1, 'Balance Sheet', 'View', 'Y'),
(4381, 1, 'Balance Sheet', 'PDF', 'Y'),
(4382, 1, 'Invoice Summary', 'View', 'Y'),
(4383, 1, 'Invoice Summary', 'PDF', 'Y'),
(4384, 1, 'Party Wise Sale', 'View', 'Y'),
(4385, 1, 'Party Wise Sale', 'PDF', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `voucher_detail`
--

CREATE TABLE `voucher_detail` (
  `VoucherDetID` int NOT NULL,
  `VoucherMstID` int DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Voucher` varchar(15) DEFAULT NULL,
  `ChOfAcc` int DEFAULT NULL,
  `PartyID` int DEFAULT NULL,
  `SupplierID` int DEFAULT NULL,
  `Narration` varchar(255) DEFAULT NULL,
  `InvoiceNo` varchar(75) DEFAULT NULL,
  `RefNo` varchar(75) DEFAULT NULL,
  `Debit` double(10,2) DEFAULT NULL,
  `Credit` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `voucher_detail`
--
DELIMITER $$
CREATE TRIGGER `beforeinsert` AFTER INSERT ON `voucher_detail` FOR EACH ROW begin
 
INSERT INTO journal (VHNO,JournalType,ChartOfAccountID,SupplierID,VoucherMstID,Narration,Date,Dr,Cr,PartyID) 
values (new.Voucher,SUBSTRING(new.Voucher,1,2),new.ChOfAcc,new.SupplierID,new.VoucherMstID,new.Narration,new.Date,new.Debit,new.Credit,new.PartyID);
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `voucher_master`
--

CREATE TABLE `voucher_master` (
  `VoucherMstID` int NOT NULL,
  `VoucherCodeID` int DEFAULT NULL,
  `Voucher` varchar(15) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voucher_master`
--

INSERT INTO `voucher_master` (`VoucherMstID`, `VoucherCodeID`, `Voucher`, `Date`, `Narration`) VALUES
(3, 7, 'JV22010001', '2022-01-23', 'Rent Security Deposit and Processing Fee'),
(4, 7, 'JV22010002', '2022-01-23', 'Rent payment for Feb - April 2022'),
(5, 7, 'JV22010003', '2022-01-31', 'monthly prepaid amortization'),
(6, 7, 'JV22010004', '2022-02-01', 'investment issued'),
(7, 7, 'JV22010005', '2022-02-07', 'payment to Al Manara Centre'),
(8, 7, 'JV22010006', '2022-02-08', 'license'),
(9, 7, 'JV22010007', '2022-02-08', 'supply services shifting table from 28th floor to 12th floor'),
(10, 7, 'JV22010008', '2022-02-10', 'dewa activation'),
(11, 7, 'JV22010009', '2022-02-10', 'credit card ENBD'),
(25, 7, 'JV22010010', '2022-02-11', 'supply and installation of chairs'),
(26, 7, 'JV22010011', '2022-02-16', 'payment of Mr. Kaleem to Mr. Asim'),
(27, 7, 'JV22010012', '2022-02-21', 'salary advance of Aashik'),
(28, 7, 'JV22010013', '2022-02-21', 'salary advance of Ramos'),
(29, 7, 'JV22010014', '2022-02-28', 'payroll for the month of February 2022'),
(30, 7, 'JV22010015', '2022-02-28', 'loan from FMM'),
(31, 7, 'JV22010016', '2022-02-28', 'monthly prepaid amortization'),
(32, 7, 'JV22100017', '2022-03-01', 'payable to FMM'),
(33, 7, 'JV22100018', '2022-03-01', '13 window including fix and delivery'),
(34, 7, 'JV22100019', '2022-03-04', 'credit card'),
(35, 7, 'JV22100020', '2022-03-14', 'payment for Feb. 2022 salary'),
(36, 7, 'JV22100021', '2022-03-31', 'salary of Kashif Mahmood for March 2022'),
(37, 7, 'JV22100022', '2022-03-31', 'loan from FMM for the month of March 2022'),
(38, 7, 'JV22100023', '2022-03-31', 'payroll adjustment'),
(39, 7, 'JV22100024', '2022-03-31', 'cooling charges'),
(40, 7, 'JV22100025', '2022-03-31', 'salaries adjustment'),
(41, 7, 'JV22100026', '2022-03-31', 'Du for the month'),
(42, 7, 'JV22100027', '2022-03-31', 'salary for the month of March 2022'),
(43, 7, 'JV22100028', '2022-03-31', 'depreciation for March 2022'),
(44, 7, 'JV22100029', '2022-03-31', 'monthly prepaid amortization'),
(45, 7, 'JV22100030', '2022-03-31', 'Adnan salary for March 21-26'),
(46, 7, 'JV22100031', '2022-03-31', 'Etisalat for the month'),
(47, 7, 'JV22100032', '2022-03-31', 'visa of Mr. Babar'),
(48, 7, 'JV22040033', '2022-04-10', 'staff cash bonus from Mr. Asim'),
(49, 7, 'JV22100034', '2022-04-11', 'expenses paid by FMM from PCF'),
(50, 7, 'JV22100035', '2022-04-11', 'payment for salary March 2022'),
(51, 7, 'JV22100036', '2022-04-11', 'shared fund of Mr. Kaleem to Mr. Asim'),
(52, 7, 'JV22100037', '2022-04-12', 'employment visa of Ismail paid by Mr. Asim'),
(53, 7, 'JV22100038', '2022-04-22', 'staff bonus'),
(54, 7, 'JV22100039', '2022-04-25', 'staff water'),
(55, 7, 'JV22100040', '2022-04-27', 'adjustment salary (March & April)'),
(56, 7, 'JV22100041', '2022-10-15', 'Iphone 13- payable to Asim Jan'),
(57, 7, 'JV22100042', '2022-04-29', 'Leads Expense- Payable to Asim Jan'),
(58, 7, 'JV22100043', '2022-04-29', '10 booklets PV'),
(59, 7, 'JV22100044', '2022-04-30', 'Payroll Adjustment'),
(60, 7, 'JV22100045', '2022-04-30', 'Expenses paid by Asim Jan'),
(61, 7, 'JV22100046', '2022-04-30', 'DU April Month'),
(62, 7, 'JV22100047', '2022-04-30', 'Depreciation- April'),
(63, 7, 'JV22100048', '2022-04-30', 'Monthly prepaid amortization'),
(64, 7, 'JV22100049', '2022-04-30', 'Monthly Prepaid Amortization'),
(65, 7, 'JV22100050', '2022-04-30', 'Cooling Expense'),
(66, 7, 'JV22100051', '2022-04-30', 'Salary- April 2022'),
(67, 7, 'JV22100052', '2022-04-30', 'Etisalat- April 2022'),
(68, 7, 'JV22100053', '2022-10-15', 'April Salary Adjustment'),
(69, 7, 'JV22100054', '2022-04-05', 'Jayson- salary advance'),
(70, 7, 'JV22100055', '2022-05-11', 'Furniture & Equipment'),
(71, 7, 'JV22100056', '2022-10-15', 'Office Expense- Payable to Asim Jan'),
(72, 7, 'JV22100057', '2022-05-13', 'Meal & Entertainment'),
(73, 7, 'JV22100058', '2022-05-14', 'Etisalat- May 2022'),
(74, 7, 'JV22100059', '2022-10-15', 'Prepaid Rent'),
(75, 7, 'JV22100060', '2022-05-20', 'PFC- loan of Allianz'),
(76, 7, 'JV22100061', '2022-05-24', 'Phiona Advance'),
(77, 7, 'JV22100062', '2022-05-26', 'Office Expense'),
(78, 7, 'JV22100063', '2022-05-31', 'Telephone Expense- April 2022'),
(79, 7, 'JV22100064', '2022-05-31', 'employment visa of Wynsther'),
(80, 7, 'JV22050065', '2022-05-31', 'employment visa of Binu'),
(81, 7, 'JV22100066', '2022-05-31', 'visa of Sangeen'),
(82, 7, 'JV22100067', '2022-05-31', 'visa of Jason'),
(83, 7, 'JV22100068', '2022-05-31', 'du for the month of May 2022 Account #6.210844'),
(84, 7, 'JV22100069', '2022-05-31', 'etisalat for the month of May 2022 04-4911300'),
(85, 7, 'JV22100070', '2022-05-31', 'leads for April 2022'),
(86, 7, 'JV22100071', '2022-05-31', 'Oladapo May 1-9'),
(87, 7, 'JV22100072', '2022-05-31', 'Tosan Daniel 11 days plus bonus'),
(88, 7, 'JV22100073', '2022-05-31', 'salary adjustment for May 2022'),
(89, 7, 'JV22100074', '2022-05-31', 'payroll for the month of May 2022'),
(90, 7, 'JV22100075', '2022-05-31', 'prepaid amortization for the month'),
(91, 7, 'JV22100076', '2022-05-31', 'depreciation for the month'),
(92, 7, 'JV22100077', '2022-05-31', 'cooling charges for May 2022'),
(93, 7, 'JV22100078', '2022-06-02', 'indeed'),
(94, 7, 'JV22100079', '2022-06-03', 'salary advance'),
(95, 7, 'JV22100080', '2022-06-06', '300k leads'),
(96, 7, 'JV22100081', '2022-06-09', 'salary advance of D\'Arcy Barnett'),
(97, 7, 'JV22100082', '2022-05-13', 'salary for May 2022'),
(98, 7, 'JV22100083', '2022-06-13', 'salary advance of Jason'),
(99, 7, 'JV22100084', '2022-06-14', 'payment of Mr. Kaleem to Mr. Asim'),
(100, 7, 'JV22100085', '2022-06-14', 'Oladapo May 1-9'),
(101, 7, 'JV22100086', '2022-06-14', 'salary adjustment for May 2022'),
(102, 7, 'JV22100087', '2022-06-14', 'salary of Tosan Daniel'),
(103, 7, 'JV22100088', '2022-06-15', 'salary advance of Darcy Barnett'),
(104, 7, 'JV22100089', '2022-06-25', 'license, visa and labor processing fees'),
(105, 7, 'JV22100090', '2022-06-25', 'salary advance of D\'arcy Barrett'),
(106, 7, 'JV22100091', '2022-06-27', 'employment visa of Isaac'),
(107, 7, 'JV22100092', '2022-06-27', 'Rohan Laxman employment visa'),
(108, 7, 'JV22100093', '2022-06-27', 'Ronfer Arwin employment visa'),
(109, 7, 'JV22100094', '2022-06-27', 'Ismail employment visa'),
(110, 7, 'JV22100095', '2022-10-17', 'petty cash from Mr. Asim for 1k salary of Maileen Orinada and 3,540.60 for the insurance of 6 staff'),
(111, 7, 'JV22100096', '2022-06-27', 'visa processing'),
(112, 7, 'JV22100097', '2022-06-28', 'salary of Maileen Orfinada May 1 - 10, 2022'),
(113, 7, 'JV22100098', '2022-06-30', 'cooling charges for the month of June 2022'),
(114, 7, 'JV22100099', '2022-06-30', 'adjustment bonus for Abhishek and Nauman'),
(115, 7, 'JV22100100', '2022-06-30', 'payroll for the month of June 2022'),
(116, 7, 'JV22100101', '2022-06-30', 'staff benefit for the month'),
(117, 7, 'JV22100102', '2022-06-30', 'monthly prepaid amortization'),
(118, 7, 'JV22100103', '2022-06-30', 'depreciation for the month'),
(119, 7, 'JV22100104', '2022-06-30', 'accrual expense for the month'),
(120, 7, 'JV22100105', '2022-07-06', 'payable to FMM'),
(121, 7, 'JV22100106', '2022-07-06', 'payment for DEWA'),
(122, 7, 'JV22100107', '2022-07-13', 'fund transfer'),
(123, 7, 'JV22100108', '2022-07-13', 'staff insurance'),
(124, 7, 'JV22100109', '2022-07-14', 'LOAN FROM SIR ASIM FOR JUNE 2022 PAYROLL'),
(125, 7, 'JV22100110', '2022-07-14', 'salary for June 2022'),
(126, 7, 'JV22100111', '2022-07-18', 'salary of Darcy Johnattan Barrett for July 1 - 15, 2022'),
(127, 7, 'JV22100112', '2022-07-19', 'salary of Jason and Wynsther'),
(128, 7, 'JV22100113', '2022-07-19', 'visa of Abishek and Nauman'),
(129, 7, 'JV22100114', '2022-07-20', 'to record the uncollected salary of the staff'),
(130, 7, 'JV22100115', '2022-07-25', 'payment for Etisalat'),
(131, 7, 'JV22100116', '2022-07-26', 'smartstart account monthly service fee'),
(132, 7, 'JV22070117', '2022-07-31', 'payroll for the month of July 2022'),
(133, 7, 'JV22070118', '2022-07-31', 'leads expense for July 2022'),
(134, 7, 'JV22070119', '2022-07-31', 'expense accrual for the month of July 2022'),
(135, 7, 'JV22070120', '2022-07-31', 'expenses paid through PCF of FMM'),
(136, 7, 'JV22070121', '2022-07-31', 'prepaid amortization for the month'),
(137, 7, 'JV22070122', '2022-07-31', 'depreciation for the month'),
(138, 7, 'JV22070123', '2022-07-31', 'staff benefit provision for the month'),
(139, 7, 'JV22070124', '2022-07-31', 'cooling charges for the month'),
(140, 7, 'JV22100125', '2022-08-02', 'VAT output reversal'),
(141, 7, 'JV22100126', '2022-08-04', 'payment for DEWA month of July'),
(142, 7, 'JV22100127', '2022-08-05', 'staff water'),
(143, 7, 'JV22100128', '2022-08-12', 'fund transfer for payroll July 2022'),
(144, 7, 'JV22100129', '2022-08-12', 'salary for the month of July 2022'),
(145, 7, 'JV22100130', '2022-08-12', 'due to FMM'),
(146, 7, 'JV22100131', '2022-08-13', 'payroll for the month of July 2022'),
(147, 7, 'JV22100132', '2022-08-15', 'payment for Du'),
(148, 7, 'JV22100133', '2022-08-15', 'shared salary for July 2022 (office boy)'),
(149, 7, 'JV22100134', '2022-08-15', 'Rent for the period of August to October'),
(150, 7, 'JV22100135', '2022-08-16', 'payment for cooling charges month of July 2022'),
(151, 7, 'JV22100136', '2022-08-19', 'extensive books accounting software (Aug. to Oct )'),
(152, 7, 'JV22100137', '2022-08-23', 'lead for August 2022'),
(153, 7, 'JV22100138', '2022-08-26', 'final settlement of Abhishek Jaiswal'),
(154, 7, 'JV22100139', '2022-08-31', 'cooling charges for Aug 2022'),
(155, 7, 'JV22100140', '2022-08-31', 'salary for August 2022'),
(156, 7, 'JV22100141', '2022-08-31', 'Etisalat for the month'),
(157, 7, 'JV22100142', '2022-08-31', 'salary of Sadeed Abrar'),
(158, 7, 'JV22100143', '2022-08-31', 'license and visa processing'),
(159, 7, 'JV22100144', '2022-08-31', 'Salary of Abishek and Varun for the month of August 2022'),
(160, 7, 'JV22100145', '2022-08-31', 'uncollected salary of Jayson and Wynsther to cover their 30 days notice period'),
(161, 7, 'JV22100146', '2022-08-31', 'Etisalat payment'),
(162, 7, 'JV22100147', '2022-08-31', 'prepaid amortization for the month'),
(163, 7, 'JV22100148', '2022-08-31', 'depreciation for the month'),
(164, 7, 'JV22100149', '2022-08-31', 'staff provision for the month'),
(165, 7, 'JV22100150', '2022-08-31', 'Ronson Pinto and Sadeed Abrar'),
(166, 7, 'JV22100151', '2022-09-08', 'uncollected salary for July/notice period'),
(167, 7, 'JV22100152', '2022-09-09', 'payment to Mr. Babar'),
(168, 7, 'JV22100153', '2022-09-14', 'payroll for August 2022'),
(169, 7, 'JV22100154', '2022-09-14', 'fund transfer'),
(170, 7, 'JV22100155', '2022-09-14', 'fund for payroll from Mr. Asim'),
(171, 7, 'JV22100156', '2022-09-20', 'fund transfer from PCF to ADCB account for cooling charges'),
(172, 7, 'JV22100157', '2022-09-20', 'payment for August 2022 Etisalat'),
(173, 7, 'JV22100158', '2022-09-22', 'final settlement of Sadeed Abrar'),
(174, 7, 'JV23030159', '2022-09-14', 'fund transfer'),
(175, 7, 'JV23030160', '2023-03-22', 'dewa for September 2022 INV100247632665'),
(176, 7, 'JV23030161', '2022-09-30', 'salary adjustment of Mohd Fardin Sofi'),
(177, 7, 'JV23030162', '2022-10-14', 'adjustment from Sept. salary of Mohd Fardin Sofi'),
(178, 7, 'JV23030163', '2022-09-12', 'fund transfer for September payroll'),
(179, 7, 'JV23030164', '2022-09-20', 'visit visa of Faisal Ijaz'),
(180, 7, 'JV23030165', '2022-09-22', 'fund from Mr. Babar'),
(181, 7, 'JV23030166', '2022-09-23', 'final settlement of Ronson Pinto'),
(182, 7, 'JV23030167', '2022-09-26', 'payment to PRO'),
(183, 7, 'JV23030168', '2022-09-26', 'SmartStart Account Monthly Service Fee'),
(184, 7, 'JV23030169', '2022-09-30', 'salary of Rakesh Yadan'),
(185, 7, 'JV23030170', '2022-09-30', 'payment from Binu for her visa should not be recorded as other income'),
(186, 7, 'JV23030171', '2022-09-30', 'Abishek and Varun notice period'),
(187, 7, 'JV23030172', '2022-09-30', 'payroll for September 2022'),
(188, 7, 'JV23030173', '2022-09-30', 'bank charges for the month (Mashreq)'),
(189, 7, 'JV23030174', '2022-09-30', 'prepaid amortization for the month'),
(190, 7, 'JV23030175', '2022-09-30', 'depreciation for the month'),
(191, 7, 'JV23030176', '2022-09-30', 'staff provision for the month'),
(192, 7, 'JV23030177', '2022-09-30', 'Etisalat for the month'),
(193, 7, 'JV23030178', '2022-09-30', 'cooling charges for the month'),
(194, 7, 'JV23030179', '2022-09-30', '3 days salary adjustment of Shahrukh Amin'),
(195, 7, 'JV23030180', '2022-09-30', 'extensive books accounting software September 2022'),
(196, 7, 'JV23030181', '2022-09-30', 'Sept 2022'),
(197, 7, 'JV23030182', '2022-10-03', 'Sept 2022'),
(198, 7, 'JV23030183', '2022-10-03', 'Sept 2022'),
(199, 7, 'JV23030184', '2022-10-12', 'salary of Mr. Babar'),
(200, 7, 'JV23030185', '2022-10-13', 'shared salary Ismail (August & September)'),
(201, 7, 'JV23030186', '2022-10-13', 'salary September 2022'),
(202, 7, 'JV23030187', '2022-10-14', 'FINAL SETTLEMENT OF RAKESH YADAN'),
(203, 7, 'JV23030188', '2022-10-20', 'RECEIVED FUND FROM MR. ASIM'),
(204, 7, 'JV23030189', '2022-10-20', 'VISIT VISA OF OJEE AHMED'),
(205, 7, 'JV23030190', '2022-10-20', '3 DAYS SALARY'),
(206, 7, 'JV23030191', '2022-10-31', 'ACCRUAL OF DEWA AND COOLING CHARGES'),
(207, 7, 'JV23030192', '2022-10-31', 'payroll for the month of October 2022'),
(208, 7, 'JV23030193', '2022-10-31', 'staff provision for the month'),
(209, 7, 'JV23030194', '2022-10-31', 'prepaid amortization for the month'),
(210, 7, 'JV23030195', '2022-10-31', 'depreciation for the month'),
(211, 7, 'JV23030196', '2022-10-31', 'extensive books accounting software October 2022'),
(212, 7, 'JV23050197', '2022-10-31', 'Etisalat for the month'),
(213, 7, 'JV23050198', '2022-10-31', 'SmartStart Account Monthly Service Fee'),
(214, 7, 'JV23050199', '2022-10-31', 'bank charges for the month (Mashreq)'),
(215, 7, 'JV23050200', '2022-11-03', 'salary advance of Mohd Fardin'),
(216, 7, 'JV23050201', '2022-11-04', 'Sangeen cash advance'),
(217, 7, 'JV23050202', '2022-11-07', 'fund from freelance for wps'),
(218, 7, 'JV23050203', '2022-11-07', 'wps of freelance'),
(219, 7, 'JV23050204', '2022-11-09', 'uncollected salary for the month of September 2022'),
(220, 7, 'JV23050205', '2022-11-12', 'downpayment for the yachts party'),
(221, 7, 'JV23050206', '2022-11-15', 'October 2022 salary for WPS'),
(222, 7, 'JV23050207', '2022-11-15', 'FUND TRANSFER FOR PAYROLL'),
(223, 7, 'JV23050208', '2022-11-15', 'CASH PAYROLL FOR OCT. 2022'),
(224, 7, 'JV23050209', '2022-11-15', 'quarterly rent Nov. 15, 2022 - Feb. 15, 2023'),
(225, 7, 'JV23050210', '2022-11-17', 'petty cash reimbursement'),
(226, 7, 'JV23050211', '2022-11-17', 'payment for October salary of Zain'),
(227, 7, 'JV23050212', '2022-11-17', 'fund transfer for expenses'),
(228, 7, 'JV23050213', '2022-11-17', 'fund transfer from Mashreq to ADCB for cooling charges'),
(229, 7, 'JV23050214', '2022-11-22', 'final settlement of Muhammad Shahrukh'),
(230, 7, 'JV23050215', '2022-11-22', 'fund from Mr. Babar for final settlement of Muhammad Shahrukh'),
(231, 7, 'JV23050216', '2022-11-22', 'final payment for the staff yacht party'),
(232, 7, 'JV23050217', '2022-11-23', 'letter head'),
(233, 7, 'JV23050218', '2022-11-26', 'smartstart monthly service fee'),
(234, 7, 'JV23050219', '2022-11-29', 'payment for Etisalat'),
(235, 7, 'JV23050220', '2022-11-30', 'dewa for the month of November'),
(236, 7, 'JV23050221', '2022-11-30', 'November 2022 payroll'),
(237, 7, 'JV23050222', '2022-11-30', 'salary adjustment of Furaha Khanali for November 2022'),
(238, 7, 'JV23050223', '2022-11-30', 'bank fee and charges for the month'),
(239, 7, 'JV23050224', '2022-11-30', 'prepaid amortization for the month'),
(240, 7, 'JV23050225', '2022-11-30', 'depreciation for the month'),
(241, 7, 'JV23050226', '2022-11-30', 'staff provision for the month'),
(242, 7, 'JV23050227', '2022-11-30', 'accrual of utilities for the month'),
(243, 7, 'JV23050228', '2022-11-30', 'Leads'),
(244, 7, 'JV23050229', '2022-12-01', 'November 2022 cooling charges adjustment because of VAT'),
(245, 7, 'JV23050230', '2022-12-01', 'visa of Mohd Fardin and Umair'),
(246, 7, 'JV23050231', '2022-12-05', 'fee salam'),
(247, 7, 'JV23050232', '2022-12-07', 'payment for November 2022 DEWA'),
(248, 7, 'JV23050233', '2022-12-15', 'fund from Mr. Asim for the salary'),
(249, 7, 'JV23050234', '2022-12-15', 'Mr. Babar\'s salary'),
(250, 7, 'JV23050235', '2022-12-16', 'fund received from Mr. Babar for basic salary of November 2022'),
(251, 7, 'JV23050236', '2022-12-17', 'fund transfer for the salary'),
(252, 7, 'JV23050237', '2022-12-22', 'fund from Mr. Asim for November cash bonus'),
(253, 7, 'JV23050238', '2022-12-22', 'Basic & Bonus Nov. 2022'),
(254, 7, 'JV22120239', '2022-12-25', 'monthly service fee'),
(255, 7, 'JV23050240', '2022-12-28', 'Leads'),
(256, 7, 'JV23050241', '2022-12-31', 'dewa for December 2022'),
(257, 7, 'JV22120242', '2022-12-31', 'December 2022 payroll'),
(258, 7, 'JV23050243', '2022-12-31', 'accrual of cooling charges for the month'),
(259, 7, 'JV23050244', '2022-12-31', 'salary adjustment for November'),
(260, 7, 'JV23050245', '2022-12-31', 'accrual of utilities for the month'),
(261, 7, 'JV23050246', '2022-12-31', 'uncollected salary for the year'),
(262, 7, 'JV23050247', '2022-12-31', 'prepaid amortization for the month'),
(263, 7, 'JV23050248', '2022-12-31', 'depreciation for the month'),
(264, 7, 'JV23050249', '2022-12-31', 'staff provision adjustment for the year'),
(265, 7, 'JV23050250', '2022-12-31', 'final pay of Furaha Chessoni'),
(266, 7, 'JV23050251', '2022-12-31', 'to adjust the payable to FCB and GACB and charge to Mr. Asim'),
(267, 7, 'JV23050252', '2023-01-03', 'fund from freelance'),
(268, 7, 'JV23050253', '2023-01-04', 'freelance wps'),
(269, 7, 'JV23050254', '2023-01-14', 'donut for the staff'),
(270, 7, 'JV23050255', '2023-01-18', 'payroll for the month of December 2022'),
(271, 7, 'JV23050256', '2022-01-19', 'PETTY CASH REIMBURSEMENT FOR FURAHA FINAL PAY'),
(272, 7, 'JV23050257', '2022-01-24', 'FINAL DU PAYMENT'),
(273, 7, 'JV23050258', '2023-01-24', 'FUND TRANSFER FOR SALARY OF SIR BABAR'),
(274, 7, 'JV23050259', '2023-01-25', 'FUND TRANSFER FOR OFFICE EXPENSES'),
(275, 7, 'JV23050260', '2023-01-25', 'LOAN PAYMENT TO SIR ASIM (DECEMBER 2022 PAYROLL)'),
(276, 7, 'JV23050261', '2023-01-26', 'Sangeen salary'),
(277, 7, 'JV23050262', '2023-01-26', 'petty cash reimbursement'),
(278, 7, 'JV23050263', '2023-01-26', 'Abhijith employment visa'),
(279, 7, 'JV23050264', '2023-01-26', 'smartstart account monthly service fee'),
(280, 7, 'JV23050265', '2023-01-26', 'fund transfer from Mashreq to ADCB'),
(281, 7, 'JV23050266', '2023-01-28', 'salary advance of Primrose'),
(282, 7, 'JV23050267', '2023-01-30', 'Lucy visa renewal'),
(283, 7, 'JV23050268', '2023-01-31', 'salary advance of Ahmed Baker'),
(284, 7, 'JV23050269', '2023-01-31', 'petty cash reimbursement'),
(285, 7, 'JV23050270', '2023-01-31', 'accrual of cooling charges for the month'),
(286, 7, 'JV23050271', '2023-01-31', 'dewa for January 2022'),
(287, 7, 'JV23050272', '2023-01-31', 'January 2023 payroll'),
(288, 7, 'JV23050273', '2023-01-31', 'prepaid amortization for the month'),
(289, 7, 'JV23050274', '2023-01-31', 'depreciation for the month'),
(290, 7, 'JV23050275', '2023-01-31', 'staff provision for the month'),
(291, 7, 'JV23050276', '2023-01-31', 'accrual of utilities for the month'),
(292, 7, 'JV23050277', '2023-01-31', 'payment adjustment for Sir Asim & Sir Babar'),
(293, 7, 'JV23050278', '2023-02-01', 'office rent February to April 2023'),
(294, 7, 'JV23050279', '2023-02-01', 'visit visa of Abhijith paid to Falak Travel'),
(295, 7, 'JV23050280', '2023-02-02', 'Michael Nbugua salary'),
(296, 7, 'JV23050281', '2023-02-02', 'Du payment'),
(297, 7, 'JV23050282', '2023-02-02', 'frund from freelance (Binu Sharma)'),
(298, 7, 'JV23050283', '2023-02-03', 'freelance WPS'),
(299, 7, 'JV23050284', '2023-02-03', 'double payment of dewa for January 2023'),
(300, 7, 'JV23050285', '2023-02-06', 'fee salaam adv. sme remittance/rever'),
(301, 7, 'JV23050286', '2023-02-14', 'petty cash reimbursement'),
(302, 7, 'JV23050287', '2023-02-14', 'for payroll funds'),
(303, 7, 'JV23050288', '2023-02-14', 'PHUB2114022384/PHUB214023083'),
(304, 7, 'JV23050289', '2023-02-14', 'Babar salary'),
(305, 7, 'JV23050290', '2023-02-14', 'Jan 2023'),
(306, 7, 'JV23050291', '2023-02-16', 'fund for license renewal 2023'),
(307, 7, 'JV23050292', '2023-02-18', 'EOS'),
(308, 7, 'JV23050293', '2023-02-23', 'PHUB215501292'),
(309, 7, 'JV23050294', '2023-02-24', 'MASHREQ'),
(310, 7, 'JV23050295', '2023-02-28', 'Feb 2023'),
(311, 7, 'JV23050296', '2023-02-28', 'accrual of utilities for the month'),
(312, 7, 'JV23050297', '2023-02-28', 'staff provision for the month'),
(313, 7, 'JV23050298', '2023-02-28', 'prepaid amortization for the month'),
(314, 7, 'JV23050299', '2023-02-28', 'depreciation for the month'),
(315, 7, 'JV23050300', '2023-02-28', 'smartstart account monthly service fee'),
(316, 7, 'JV23050301', '2023-02-28', 'to adjust the amount of dewa'),
(317, 7, 'JV23050302', '2023-02-28', 'February 2023'),
(318, 7, 'JV23050303', '2023-03-01', 'petty cash'),
(319, 7, 'JV23050304', '2023-03-02', 'Payable to PRO for visa processing'),
(320, 7, 'JV23050305', '2023-03-10', NULL),
(321, 7, 'JV23050306', '2023-03-13', 'funds'),
(322, 7, 'JV23050307', '2023-03-13', 'GACB, FMM SHARED SALARY (OFFICE BOY)'),
(323, 7, 'JV23050308', '2023-03-13', 'PAYROLL FOR FEBRUARY 2023'),
(324, 7, 'JV23050309', '2023-03-14', 'Funds'),
(325, 7, 'JV23050310', '2023-03-16', 'PHUB220198987'),
(326, 7, 'JV23050311', '2023-03-17', 'FEB. 2023'),
(327, 7, 'JV23050312', '2023-03-20', 'Etisalat expense'),
(328, 7, 'JV23050313', '2023-05-01', 'office rent for the period of May to July 2023'),
(329, 7, 'JV23050314', '2023-08-01', 'rent expense for the period of Aug to Oct 2023'),
(330, 7, 'JV23050315', '2023-11-01', 'rent expense for the period of Nov. 2022 to Jan 2023'),
(331, 7, 'JV23050316', '2023-03-04', 'vat reversal'),
(332, 7, 'JV23050317', '2023-03-17', 'For January 2023'),
(333, 7, 'JV23050318', '2023-03-31', 'Wali Vohra March 23-31, 2023'),
(334, 7, 'JV23050319', '2023-03-31', 'March 2023'),
(335, 7, 'JV23050320', '2023-03-31', 'WAVE FINE OF CHINASA RACHAEL'),
(336, 7, 'JV23050321', '2023-03-31', 'PAYROLL FOR THE MONTH OF MARCH 2023'),
(337, 7, 'JV23050322', '2023-03-31', 'DEPRECIATION FOR THE MONTH'),
(338, 7, 'JV23050323', '2023-03-31', 'PREPAID AMORTIZATION FOR THE MONTH'),
(339, 7, 'JV23050324', '2023-03-31', 'STAFF PROVISION FOR THE MONTH'),
(340, 7, 'JV23050325', '2023-04-04', 'February 2023'),
(341, 7, 'JV23050326', '2023-04-04', 'petty cash April 1 - 11, 2023'),
(342, 7, 'JV23050327', '2023-04-11', 'fund from freelance'),
(343, 7, 'JV23050328', '2023-04-11', 'April 2023'),
(344, 7, 'JV23050329', '2023-04-12', 'freelance WPS'),
(345, 7, 'JV23050330', '2023-04-13', 'BONUS ADJUSTMENT'),
(346, 7, 'JV23050331', '2023-04-13', 'PAYMENT FOR THE SALARY OF MARCH 2023'),
(347, 7, 'JV23050332', '2023-04-13', 'APRIL 2023'),
(348, 7, 'JV23050333', '2023-04-14', 'ADCB'),
(349, 7, 'JV23050334', '2023-04-14', 'PHUB226259560'),
(350, 7, 'JV23050335', '2023-04-15', 'WALI VOHRA'),
(351, 7, 'JV23050336', '2023-04-15', 'PAYMENT FOR THE CREDIT CARD'),
(352, 7, 'JV23050337', '2023-04-15', 'PETTY CASH REIMBURSEMENT'),
(353, 7, 'JV23050338', '2023-04-15', 'SLSU943558'),
(354, 7, 'JV23050339', '2023-04-16', 'PAYMENT TO CREDIT CARD'),
(355, 7, 'JV23050340', '2023-04-27', '3CX 64SC pro edition 12 months renewal annual license'),
(356, 7, 'JV23050341', '2023-04-29', 'loan from Mr. Asim'),
(357, 7, 'JV23040342', '2023-04-30', 'April 2023'),
(358, 7, 'JV23060343', '2023-06-12', 'Payable to Asim Jan'),
(359, 7, 'JV23060344', '2023-03-05', 'Cooling Expense- May 2023- PV 0145'),
(360, 7, 'JV23060345', '2023-06-15', 'payroll for the month of May 2023'),
(361, 7, 'JV23060346', '2023-06-15', 'PV 0153 police clearance of Daisy Ivy paid to the PRO'),
(362, 7, 'JV23060347', '2023-06-14', 'PV 0146 - 0150 EXTRA BONUS'),
(363, 7, 'JV23060348', '2023-06-15', 'PV 0154 PAYMENT TO MR. BABAR'),
(364, 7, 'JV23060349', '2023-06-10', 'PV 0144 AHMED BAKER CASH ADVANCE'),
(365, 7, 'JV23060350', '2023-06-15', 'clear plastic thermostat guard'),
(366, 7, 'JV23060351', '2023-06-13', 'Office DEWA- June 2023 PV 0156'),
(367, 7, 'JV23060352', '2023-05-31', 'DEWA FOR THE MONTH OF MAY 2023'),
(368, 7, 'JV23060353', '2023-05-04', 'Output Reversal\r\nVAT REVERSAL'),
(369, 7, 'JV23060354', '2023-05-31', 'salary for the month of May 2023'),
(370, 7, 'JV23060355', '2023-05-31', 'Etisalat for the month'),
(371, 7, 'JV23060356', '2023-05-31', 'cooling charges for the month'),
(372, 7, 'JV23060357', '2023-05-05', 'rent payment for the period of May to July 2023'),
(373, 7, 'JV23060358', '2023-04-30', 'Staff Salary month of April 2023'),
(374, 7, 'JV23060359', '2023-04-30', 'Prepaid Amortization Month of April 2023'),
(375, 7, 'JV23060360', '2023-04-30', 'Depreciation month of April 2023'),
(376, 7, 'JV23060361', '2023-04-30', 'Staff Provision Month of April 2023'),
(377, 7, 'JV23060362', '2023-05-11', 'payment received from April 2023 sales SRN:2023051100227464'),
(378, 7, 'JV23060363', '2023-05-12', 'fund transfer from Mashreq to ADCB'),
(379, 7, 'JV23060364', '2023-05-06', 'fund from freelance'),
(380, 7, 'JV23060365', '2023-05-08', 'wps of freelance'),
(381, 7, 'JV23060366', '2023-05-08', 'fund from FMM staff'),
(382, 7, 'JV23060367', '2023-05-09', 'wps of FMM staff'),
(383, 7, 'JV23060368', '2023-05-11', 'April 2023 shared salary AMM'),
(384, 7, 'JV23060369', '2023-05-11', 'April shared salary'),
(385, 7, 'JV23060370', '2023-05-16', 'Sangeen bonus adjustment'),
(386, 7, 'JV23060371', '2023-05-12', 'April 2023'),
(387, 7, 'JV23060372', '2023-05-16', 'GM Salary- April 2023'),
(388, 7, 'JV23060373', '2023-05-27', 'salary advance of Nauman'),
(389, 7, 'JV23040374', '2023-04-30', 'Sangeen bonus adjustment'),
(390, 7, 'JV23060375', '2023-05-19', 'fund from Golden Pearl staff'),
(391, 7, 'JV23060376', '2023-05-19', 'wps of Golden Pearl staff'),
(392, 7, 'JV23060377', '2023-05-26', 'smartstart account monthly service fee'),
(393, 7, 'JV23060378', '2023-05-31', 'prepaid amortization for the month'),
(394, 7, 'JV23060379', '2023-05-31', 'depreciation for the month'),
(395, 7, 'JV23060380', '2023-05-31', 'staff benefits for the month'),
(396, 7, 'JV23060381', '2023-06-22', 'Nauman CA- PV 0159'),
(397, 7, 'JV23060382', '2023-06-22', 'PCF PV 0161'),
(398, 7, 'JV23060383', '2023-05-05', 'Cooling Expense month of April 2023'),
(399, 7, 'JV23060384', '2023-05-05', 'Prepaid Rent for Mar, Apr, May 2023'),
(400, 7, 'JV23060385', '2023-05-06', 'Binu Salary- April 2023'),
(401, 7, 'JV23060386', '2023-05-08', 'Binu Salary- April 2023'),
(402, 7, 'JV23060387', '2023-05-08', 'Junaid salary- April 2023'),
(403, 7, 'JV23060388', '2023-05-08', 'GACB Shared Salary- April 2023'),
(404, 7, 'JV23060389', '2023-05-11', 'Office Boy Shared Salary- April 2023'),
(405, 7, 'JV23060390', '2023-05-12', 'To transfer funds to ADCB from Mashreq'),
(406, 7, 'JV23060391', '2023-05-12', 'Salary- Lucy & Abijith, April 2023'),
(407, 7, 'JV23060392', '2023-05-12', 'Staff Salary- April 2023'),
(408, 7, 'JV23060393', '2023-05-15', 'Junaid Salary- April 2023'),
(409, 7, 'JV23060394', '2023-05-16', 'GM Salary- April 2023'),
(410, 7, 'JV23060395', '2023-05-19', 'CC 0002- Payable to Asim + PTC'),
(411, 7, 'JV23060396', '2023-05-27', 'Nauman Salary Advance');

-- --------------------------------------------------------

--
-- Table structure for table `voucher_type`
--

CREATE TABLE `voucher_type` (
  `VoucherTypeID` int NOT NULL,
  `VoucherCode` varchar(35) DEFAULT NULL,
  `VoucherTypeName` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voucher_type`
--

INSERT INTO `voucher_type` (`VoucherTypeID`, `VoucherCode`, `VoucherTypeName`) VALUES
(1, 'BP', 'BANK PAYMENT'),
(2, 'BR', 'BANK RECEIPT'),
(3, 'CN', 'CREDIT NOTE'),
(4, 'CP', 'CASH PAYMENT'),
(5, 'CR', 'CASH RECEIPT'),
(6, 'DN', 'DEBIT NOTES'),
(7, 'JV', 'JOURNAL VOUCHER'),
(8, 'CC', 'CREDIT CARD');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_bill_balance`
-- (See below for the actual view)
--
CREATE TABLE `v_bill_balance` (
`INVOICE` double(19,2)
,`InvoiceMasterID` int
,`Payment` double(19,2)
,`Remaining` double(22,2)
,`SupplierID` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_cashflow`
-- (See below for the actual view)
--
CREATE TABLE `v_cashflow` (
`Balance` double(22,2)
,`Cr` double(19,2)
,`Dr` double(19,2)
,`MonthName` varchar(37)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_challan_detail`
-- (See below for the actual view)
--
CREATE TABLE `v_challan_detail` (
`ChallanDate` date
,`ChallanDetailID` int
,`ChallanMasterID` int
,`ChallanNo` varchar(10)
,`Description` varchar(255)
,`Discount` double(8,2)
,`ItemCode` varchar(5)
,`ItemID` int
,`ItemName` varchar(55)
,`ItemType` varchar(55)
,`Qty` int
,`Rate` double(8,2)
,`TaxAmount` double(8,2)
,`TaxPer` double(8,2)
,`Total` double(8,2)
,`UnitName` varchar(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_challan_master`
-- (See below for the actual view)
--
CREATE TABLE `v_challan_master` (
`Active` varchar(3)
,`Address` varchar(75)
,`ChallanDate` varchar(10)
,`ChallanMasterID` int
,`ChallanNo` varchar(10)
,`ChallanType` varchar(25)
,`CustomerNotes` varchar(255)
,`DescriptionNotes` varchar(255)
,`DiscountAmount` double(8,2)
,`DiscountPer` double(8,2)
,`eDate` timestamp
,`Email` varchar(25)
,`File` varchar(75)
,`GrandTotal` double(8,2)
,`InvoiceDueDays` int
,`Mobile` varchar(150)
,`PartyID` int
,`PartyName` varchar(150)
,`Phone` varchar(25)
,`PlaceOfSupply` varchar(25)
,`ReferenceNo` varchar(25)
,`Shipping` double(8,2)
,`Subject` varchar(255)
,`SubTotal` double(8,2)
,`Tax` double(8,2)
,`TaxPer` double(8,2)
,`TermAndCondition` varchar(255)
,`Total` double(8,2)
,`TRN` varchar(150)
,`WalkinCustomerName` varchar(75)
,`Website` varchar(150)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_chartofaccount`
-- (See below for the actual view)
--
CREATE TABLE `v_chartofaccount` (
`ChartOfAccountID` int
,`ChartOfAccountName` varchar(75)
,`CODE` varchar(15)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_chartofaccount_mini`
-- (See below for the actual view)
--
CREATE TABLE `v_chartofaccount_mini` (
`Category` varchar(55)
,`ChartOfAccountID` int
,`ChartOfAccountName` varchar(75)
,`CODE` varchar(15)
,`L1` int
,`L2` int
,`L3` int
,`OpenCredit` int
,`OpenDebit` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_delivery_challan`
-- (See below for the actual view)
--
CREATE TABLE `v_delivery_challan` (
`Active` varchar(3)
,`Address` varchar(75)
,`Balance` double(8,2)
,`ChallanDate` date
,`ChallanMasterID` int
,`ChallanNo` varchar(10)
,`ChallanType` varchar(25)
,`CustomerNotes` varchar(255)
,`DescriptionNotes` varchar(255)
,`DiscountAmount` double(8,2)
,`DiscountPer` double(8,2)
,`eDate` timestamp
,`Email` varchar(25)
,`File` varchar(75)
,`GrandTotal` double(8,2)
,`InvoiceDueDays` int
,`Mobile` varchar(150)
,`Paid` double(8,2)
,`PartyID` int
,`PartyName` varchar(150)
,`Phone` varchar(25)
,`PlaceOfSupply` varchar(25)
,`ReferenceNo` varchar(25)
,`Shipping` double(8,2)
,`Subject` varchar(255)
,`SubTotal` double(8,2)
,`Tax` double(8,2)
,`TaxPer` double(8,2)
,`TermAndCondition` varchar(255)
,`Total` double(8,2)
,`TRN` varchar(150)
,`UserID` int
,`WalkinCustomerName` varchar(75)
,`Website` varchar(150)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_estimate_detail`
-- (See below for the actual view)
--
CREATE TABLE `v_estimate_detail` (
`Description` varchar(255)
,`EstimateDate` date
,`EstimateDetailID` int
,`EstimateMasterID` int
,`EstimateNo` varchar(10)
,`ItemID` int
,`ItemName` varchar(55)
,`Qty` int
,`Rate` double(8,2)
,`Tax` double(8,2)
,`TaxPer` double(8,2)
,`Total` double(8,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_estimate_master`
-- (See below for the actual view)
--
CREATE TABLE `v_estimate_master` (
`Active` varchar(3)
,`Address` varchar(75)
,`CustomerNotes` varchar(255)
,`Date` date
,`DescriptionNotes` varchar(255)
,`Discount` double(8,2)
,`DiscountPer` double(8,2)
,`eDate` timestamp
,`Email` varchar(25)
,`EstimateDate` date
,`EstimateMasterID` int
,`EstimateNo` varchar(10)
,`ExpiryDate` date
,`File` varchar(75)
,`GrandTotal` double(8,2)
,`InvoiceDueDays` int
,`Mobile` varchar(150)
,`PartyID` int
,`PartyName` varchar(150)
,`Phone` varchar(25)
,`PlaceOfSupply` varchar(25)
,`ReferenceNo` varchar(25)
,`Shipping` double(8,2)
,`Subject` varchar(255)
,`SubTotal` double(8,2)
,`Tax` double(8,2)
,`TaxPer` double(8,2)
,`TermAndCondition` varchar(255)
,`Total` double(8,2)
,`TRN` varchar(150)
,`UserID` int
,`WalkinCustomerName` varchar(55)
,`Website` varchar(150)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_expense`
-- (See below for the actual view)
--
CREATE TABLE `v_expense` (
`ChartOfAccountID` int
,`ChartOfAccountName` varchar(75)
,`Date` date
,`Date1` varchar(10)
,`ExpenseMasterID` int
,`ExpenseNo` varchar(55)
,`GrantTotal` double(8,2)
,`ReferenceNo` varchar(55)
,`SupplierID` int
,`SupplierName` varchar(150)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_expense_chart`
-- (See below for the actual view)
--
CREATE TABLE `v_expense_chart` (
`Balance` double(22,2)
,`ChartOfAccountName` varchar(75)
,`MonthName` varchar(69)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_expense_detail`
-- (See below for the actual view)
--
CREATE TABLE `v_expense_detail` (
`Amount` double(8,2)
,`ChartOfAccountID` int
,`ChartOfAccountName` varchar(75)
,`Date` date
,`ExpenseDetailID` int
,`ExpenseMasterID` int
,`ExpenseNo` varchar(55)
,`Notes` varchar(255)
,`SupplierName` varchar(150)
,`Tax` double(8,2)
,`TaxPer` double(8,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_expense_master`
-- (See below for the actual view)
--
CREATE TABLE `v_expense_master` (
`ChartOfAccountName` varchar(75)
,`Date` date
,`ExpenseNo` varchar(55)
,`GrantTotal` double(8,2)
,`ReferenceNo` varchar(55)
,`SupplierName` varchar(150)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_income_exp_chart`
-- (See below for the actual view)
--
CREATE TABLE `v_income_exp_chart` (
`Balance` double(22,2)
,`Cr` double(19,2)
,`Dr` double(19,2)
,`MonthName` varchar(37)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_invoice_bal`
-- (See below for the actual view)
--
CREATE TABLE `v_invoice_bal` (
`due` double(22,2)
,`INVOICE` double(19,2)
,`InvoiceMasterID` int
,`PAID` double(19,2)
,`PartyID` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_invoice_balance`
-- (See below for the actual view)
--
CREATE TABLE `v_invoice_balance` (
`BALANCE` double(19,2)
,`Date` date
,`DueDate` date
,`GrandTotal` double(8,2)
,`INVOICE` double(19,2)
,`InvoiceMasterID` int
,`InvoiceNo` varchar(10)
,`PAID` double(19,2)
,`PartyID` int
,`PartyName` varchar(150)
,`ReferenceNo` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_invoice_both`
-- (See below for the actual view)
--
CREATE TABLE `v_invoice_both` (
`Active` varchar(3)
,`Address` varchar(75)
,`Balance` double(22,2)
,`CustomerNotes` varchar(255)
,`Date` date
,`DescriptionNotes` varchar(255)
,`DiscountAmount` double(8,2)
,`DiscountPer` double(8,2)
,`DueDate` date
,`eDate` timestamp
,`Email` varchar(25)
,`FullName` varchar(55)
,`GrandTotal` double(8,2)
,`InvoiceDueDays` int
,`InvoiceMasterID` int
,`InvoiceNo` varchar(10)
,`InvoiceType` varchar(30)
,`Mobile` varchar(150)
,`Paid` double(8,2)
,`PartyID` int
,`PartyName` varchar(150)
,`PaymentDetails` varchar(255)
,`PaymentMode` varchar(25)
,`Phone` varchar(25)
,`ReferenceNo` varchar(255)
,`Shipping` double(8,2)
,`Subject` varchar(255)
,`SubTotal` double(8,2)
,`SupplierID` int
,`SupplierName` varchar(150)
,`Tax` double(8,2)
,`TaxPer` double(8,2)
,`Total` double(8,2)
,`TRN` varchar(150)
,`UserID` int
,`WalkinCustomerName` varchar(155)
,`Website` varchar(150)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_invoice_detail`
-- (See below for the actual view)
--
CREATE TABLE `v_invoice_detail` (
`Date` date
,`Description` varchar(255)
,`InvoiceDetailID` int
,`InvoiceMasterID` int
,`InvoiceNo` varchar(10)
,`InvoiceType` varchar(30)
,`ItemCode` varchar(5)
,`ItemID` int
,`ItemName` varchar(55)
,`PartyID` int
,`Qty` int
,`Rate` double(8,2)
,`SupplierID` int
,`Tax` double(8,2)
,`TaxPer` double(8,2)
,`Total` double(8,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_invoice_master`
-- (See below for the actual view)
--
CREATE TABLE `v_invoice_master` (
`Active` varchar(3)
,`Address` varchar(75)
,`Balance` double(22,2)
,`CustomerNotes` varchar(255)
,`Date` date
,`DescriptionNotes` varchar(255)
,`DiscountAmount` double(8,2)
,`DiscountPer` double(8,2)
,`DueDate` date
,`eDate` timestamp
,`Email` varchar(25)
,`FullName` varchar(55)
,`GrandTotal` double(8,2)
,`InvoiceDueDays` int
,`InvoiceMasterID` int
,`InvoiceNo` varchar(10)
,`InvoiceType` varchar(30)
,`Mobile` varchar(150)
,`Paid` double(8,2)
,`PartyID` int
,`PartyName` varchar(150)
,`PaymentDetails` varchar(255)
,`PaymentMode` varchar(25)
,`Phone` varchar(25)
,`ReferenceNo` varchar(255)
,`Shipping` double(8,2)
,`Subject` varchar(255)
,`SubTotal` double(8,2)
,`SupplierID` int
,`Tax` double(8,2)
,`TaxPer` double(8,2)
,`TaxType` varchar(55)
,`Total` double(8,2)
,`TRN` varchar(150)
,`UserID` int
,`WalkinCustomerName` varchar(155)
,`Website` varchar(150)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_invoice_master_supplier`
-- (See below for the actual view)
--
CREATE TABLE `v_invoice_master_supplier` (
`Active` varchar(3)
,`Address` varchar(75)
,`Balance` double(19,2)
,`CustomerNotes` varchar(255)
,`Date` date
,`DescriptionNotes` varchar(255)
,`DiscountAmount` double(8,2)
,`DiscountPer` double(8,2)
,`DueDate` date
,`Email` varchar(150)
,`GrandTotal` double(8,2)
,`InvoiceDueDays` int
,`InvoiceMasterID` int
,`InvoiceNo` varchar(10)
,`Paid` double(19,2)
,`PartyID` int
,`Payment` double(19,2)
,`PaymentDetails` varchar(255)
,`PaymentMode` varchar(25)
,`Phone` varchar(150)
,`ReferenceNo` varchar(255)
,`Remaining` double(19,2)
,`Shipping` double(8,2)
,`Subject` varchar(255)
,`SubTotal` double(8,2)
,`SupplierID` int
,`SupplierName` varchar(150)
,`Tax` double(8,2)
,`TaxPer` double(8,2)
,`Total` double(8,2)
,`TRN` varchar(75)
,`UserID` int
,`WalkinCustomerName` varchar(155)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_invoice_party_balance`
-- (See below for the actual view)
--
CREATE TABLE `v_invoice_party_balance` (
`BALANCE` double(19,2)
,`PartyID` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_inv_balance`
-- (See below for the actual view)
--
CREATE TABLE `v_inv_balance` (
`Balance` double(19,2)
,`InvoiceMasterID` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_journal`
-- (See below for the actual view)
--
CREATE TABLE `v_journal` (
`BankReconcile` varchar(15)
,`Category` varchar(55)
,`ChartOfAccountID` int
,`ChartOfAccountName` varchar(75)
,`CODE` varchar(15)
,`Cr` double(10,2)
,`Date` date
,`Dr` double(10,2)
,`ExpenseMasterID` int
,`InvoiceMasterID` int
,`JournalID` int
,`JournalType` varchar(10)
,`L1` int
,`L2` int
,`L3` int
,`Narration` varchar(255)
,`PartyID` int
,`PaymentMasterID` int
,`PettyMstID` int
,`PurchasePaymentMasterID` int
,`ReconcileDate` timestamp
,`SupplierID` int
,`Trace` decimal(10,0)
,`VHNO` varchar(15)
,`VoucherMstID` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_journal_report`
-- (See below for the actual view)
--
CREATE TABLE `v_journal_report` (
`Date` date
,`INVOICE` varchar(7)
,`InvoiceMasterID` int
,`InvoiceNo` varchar(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_partywise_sale`
-- (See below for the actual view)
--
CREATE TABLE `v_partywise_sale` (
`Balance` double(8,2)
,`CustomerNotes` varchar(255)
,`Date` date
,`DescriptionNotes` varchar(255)
,`DiscountAmount` double(8,2)
,`DiscountPer` double(8,2)
,`DueDate` date
,`GrandTotal` double(8,2)
,`InvoiceMasterID` int
,`InvoiceNo` varchar(10)
,`InvoiceType` varchar(30)
,`Paid` double(8,2)
,`PartyID` int
,`PartyName` varchar(150)
,`PaymentDetails` varchar(255)
,`PaymentMode` varchar(25)
,`ReferenceNo` varchar(255)
,`Shipping` double(8,2)
,`Subject` varchar(255)
,`SubTotal` double(8,2)
,`SupplierID` int
,`Tax` double(8,2)
,`TaxPer` double(8,2)
,`Total` double(8,2)
,`UserID` int
,`WalkinCustomerName` varchar(155)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_party_aging`
-- (See below for the actual view)
--
CREATE TABLE `v_party_aging` (
`age15Days` double(19,2)
,`age30Days` double(19,2)
,`age60Days` double(19,2)
,`age7Days` double(19,2)
,`age90Days` double(19,2)
,`age90plusDays` double(19,2)
,`PartyID` int
,`PartyName` varchar(150)
,`Total` double(19,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_party_balance`
-- (See below for the actual view)
--
CREATE TABLE `v_party_balance` (
`ChartOfAccountID` int
,`ChartOfAccountName` varchar(75)
,`Cr` double(10,2)
,`Date` date
,`Dr` double(10,2)
,`InvoiceMasterID` int
,`JournalType` varchar(10)
,`Narration` varchar(255)
,`PartyID` int
,`PartyName` varchar(150)
,`PettyMstID` int
,`SupplierID` int
,`VHNO` varchar(15)
,`VoucherMstID` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_party_montly_balance`
-- (See below for the actual view)
--
CREATE TABLE `v_party_montly_balance` (
`Balance` double(22,2)
,`Cr` double(19,2)
,`Date` varchar(37)
,`Dr` double(19,2)
,`PartyID` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_payment`
-- (See below for the actual view)
--
CREATE TABLE `v_payment` (
`Active` varchar(3)
,`Address` varchar(75)
,`ChartOfAccountID` int
,`eDate` timestamp
,`Email` varchar(25)
,`File` varchar(35)
,`InvoiceDueDays` int
,`Mobile` varchar(150)
,`Notes` longtext
,`PartyID` int
,`PartyName` varchar(150)
,`PaymentAmount` double(8,2)
,`PaymentDate` date
,`PaymentMasterID` int
,`PaymentMode` varchar(25)
,`Phone` varchar(25)
,`ReferenceNo` varchar(255)
,`TRN` varchar(150)
,`Website` varchar(150)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_payment_detail`
-- (See below for the actual view)
--
CREATE TABLE `v_payment_detail` (
`eDate` timestamp
,`InvoiceMasterID` int
,`InvoiceNo` varchar(10)
,`Payment` double(8,2)
,`PaymentDate` date
,`PaymentDetailID` int
,`PaymentMasterID` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_payment_summary`
-- (See below for the actual view)
--
CREATE TABLE `v_payment_summary` (
`InvoiceMasterID` int
,`Paid` double(19,2)
,`PaymentMasterID` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_pettycash_master`
-- (See below for the actual view)
--
CREATE TABLE `v_pettycash_master` (
`ChartOfAccountID` int
,`ChartOfAccountName` varchar(75)
,`CODE` varchar(15)
,`Credit` double(10,2)
,`Date` date
,`Narration` varchar(255)
,`PettyMstID` int
,`PettyVoucher` varchar(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_purchase_order_detail`
-- (See below for the actual view)
--
CREATE TABLE `v_purchase_order_detail` (
`Amount` double(8,2)
,`Date` date
,`Description` varchar(255)
,`Discount` double(8,2)
,`DiscountPer` double(8,2)
,`ItemID` int
,`ItemName` varchar(55)
,`PurchaseOrderDetailID` int
,`PurchaseOrderMasterID` int
,`Qty` varchar(10)
,`Rate` double(8,2)
,`Remarks` varchar(255)
,`Tax` double(8,2)
,`TaxPer` double(8,2)
,`Unit` varchar(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_purchase_order_master`
-- (See below for the actual view)
--
CREATE TABLE `v_purchase_order_master` (
`Active` varchar(3)
,`Address` varchar(75)
,`Date` date
,`DeliveryDate` date
,`DeliveryNotes` longtext
,`Discount` double(8,2)
,`DiscountPer` double(8,2)
,`eDate` timestamp
,`Email` varchar(150)
,`GrandTotal` double(8,2)
,`InvoiceDueDays` int
,`Mobile` varchar(150)
,`Phone` varchar(150)
,`PON` varchar(10)
,`PONotes` varchar(255)
,`PurchaseOrderMasterID` int
,`ReferenceNo` varchar(255)
,`Subject` varchar(255)
,`SubTotal` double(8,2)
,`SupplierID` int
,`SupplierName` varchar(150)
,`Tax` double(8,2)
,`TRN` varchar(75)
,`UserID` int
,`Website` varchar(150)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_purchase_payment`
-- (See below for the actual view)
--
CREATE TABLE `v_purchase_payment` (
`ChartOfAccountID` int
,`eDate` timestamp
,`File` varchar(35)
,`Notes` longtext
,`PaymentAmount` double(8,2)
,`PaymentDate` date
,`PaymentMode` varchar(25)
,`PurchasePaymentMasterID` int
,`ReferenceNo` varchar(35)
,`SupplierID` int
,`SupplierName` varchar(150)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_purchase_payment_detail`
-- (See below for the actual view)
--
CREATE TABLE `v_purchase_payment_detail` (
`eDate` timestamp
,`InvoiceMasterID` int
,`InvoiceNo` varchar(10)
,`Payment` double(8,2)
,`PaymentDate` date
,`PurchasePaymentDetailID` int
,`PurchasePaymentMasterID` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_purchase_payment_master`
-- (See below for the actual view)
--
CREATE TABLE `v_purchase_payment_master` (
`Active` varchar(3)
,`Address` varchar(75)
,`ChartOfAccountID` int
,`eDate` timestamp
,`Email` varchar(150)
,`File` varchar(35)
,`Notes` longtext
,`PaymentAmount` double(8,2)
,`PaymentDate` date
,`PaymentMode` varchar(25)
,`Phone` varchar(150)
,`PurchasePaymentMasterID` int
,`ReferenceNo` varchar(35)
,`SupplierID` int
,`SupplierName` varchar(150)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_receivabledetail`
-- (See below for the actual view)
--
CREATE TABLE `v_receivabledetail` (
`Address` varchar(75)
,`Balance` double(8,2)
,`Date` date
,`InvoiceDetailID` int
,`InvoiceMasterID` int
,`InvoiceNo` varchar(10)
,`ItemID` int
,`Paid` double(8,2)
,`PartyID` int
,`PartyName` varchar(150)
,`Qty` int
,`ReferenceNo` varchar(255)
,`SubTotal` double(8,2)
,`Total` double(8,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_rev_exp`
-- (See below for the actual view)
--
CREATE TABLE `v_rev_exp` (
`date_format(``v_journal``.``Date``,'%m-%Y')` varchar(7)
,`DATE_FORMAT(date,'%M-%Y')` varchar(69)
,`Exp` double(19,2)
,`Rev` double(19,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_rev_exp_chart`
-- (See below for the actual view)
--
CREATE TABLE `v_rev_exp_chart` (
`Exp` double
,`MonthName` varchar(69)
,`Rev` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_supplier`
-- (See below for the actual view)
--
CREATE TABLE `v_supplier` (
`Active` varchar(3)
,`Address` varchar(75)
,`eDate` timestamp
,`Email` varchar(150)
,`InvoiceDueDays` int
,`Mobile` varchar(150)
,`Phone` varchar(150)
,`SupplierID` int
,`SupplierName` varchar(150)
,`TRN` varchar(75)
,`Website` varchar(150)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_supplier_balance`
-- (See below for the actual view)
--
CREATE TABLE `v_supplier_balance` (
`Balance` double(19,2)
,`Cr` double(19,2)
,`Date` varchar(37)
,`Dr` double(19,2)
,`SupplierID` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_supplier_outstanding`
-- (See below for the actual view)
--
CREATE TABLE `v_supplier_outstanding` (
`BALANCE` double(22,2)
,`ChartOfAccountID` int
,`ChartOfAccountName` varchar(75)
,`Date` date
,`DueDate` date
,`GrandTotal` double(8,2)
,`InvoiceMasterID` int
,`InvoiceNo` varchar(10)
,`PAID` double(19,2)
,`PartyID` int
,`SupplierID` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_supplier_over_balance`
-- (See below for the actual view)
--
CREATE TABLE `v_supplier_over_balance` (
`BALANCE` double(19,2)
,`SupplierID` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_trial`
-- (See below for the actual view)
--
CREATE TABLE `v_trial` (
`Balance` double(22,2)
,`ChartOfAccountID` int
,`ChartOfAccountName` varchar(75)
,`Cr` double(19,2)
,`Dr` double(19,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_trialreport`
-- (See below for the actual view)
--
CREATE TABLE `v_trialreport` (
`Balance` double(22,2)
,`ChartOfAccountID` int
,`ChartOfAccountName` varchar(75)
,`Cr` double(19,2)
,`Dr` double(19,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_trial_balance`
-- (See below for the actual view)
--
CREATE TABLE `v_trial_balance` (
`ChartOfAccountID` int
,`ChartOfAccountName` varchar(75)
,`Cr` double(22,2)
,`Dr` double(22,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_voucher`
-- (See below for the actual view)
--
CREATE TABLE `v_voucher` (
`Amount` double(19,2)
,`Date` date
,`Narration` varchar(255)
,`Voucher` varchar(15)
,`VoucherCode` varchar(35)
,`VoucherMstID` int
,`VoucherTypeName` varchar(35)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_voucher_amount`
-- (See below for the actual view)
--
CREATE TABLE `v_voucher_amount` (
`Amount` double(22,2)
,`Voucher` varchar(15)
,`VoucherMstID` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_voucher_detail`
-- (See below for the actual view)
--
CREATE TABLE `v_voucher_detail` (
`ChartOfAccountName` varchar(75)
,`ChOfAcc` int
,`Credit` double(10,2)
,`Date` date
,`Debit` double(10,2)
,`InvoiceNo` varchar(75)
,`Narration` varchar(255)
,`NarrationMaster` varchar(255)
,`PartyID` int
,`PartyName` varchar(150)
,`RefNo` varchar(75)
,`SupplierID` int
,`SupplierName` varchar(150)
,`Voucher` varchar(15)
,`VoucherCodeID` int
,`VoucherMstID` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_voucher_master`
-- (See below for the actual view)
--
CREATE TABLE `v_voucher_master` (
`Credit` double(10,2)
,`Date` date
,`Debit` double(10,2)
,`Narration` varchar(255)
,`PartyID` int
,`PartyName` varchar(150)
,`SupplierID` int
,`SupplierName` varchar(150)
,`Voucher` varchar(15)
,`VoucherCode` varchar(35)
,`VoucherCodeID` int
,`VoucherMstID` int
,`VoucherTypeID` int
,`VoucherTypeName` varchar(35)
);

-- --------------------------------------------------------

--
-- Structure for view `v_bill_balance`
--
DROP TABLE IF EXISTS `v_bill_balance`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_bill_balance`  AS SELECT `journal`.`InvoiceMasterID` AS `InvoiceMasterID`, sum(ifnull(`journal`.`Cr`,0)) AS `INVOICE`, sum(ifnull(`journal`.`Dr`,0)) AS `Payment`, (sum(ifnull(`journal`.`Cr`,0)) - sum(ifnull(`journal`.`Dr`,0))) AS `Remaining`, `journal`.`SupplierID` AS `SupplierID` FROM `journal` WHERE (`journal`.`ChartOfAccountID` = 210100) GROUP BY `journal`.`SupplierID`, `journal`.`InvoiceMasterID``InvoiceMasterID`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_cashflow`
--
DROP TABLE IF EXISTS `v_cashflow`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_cashflow`  AS SELECT sum(ifnull(`journal`.`Dr`,0)) AS `Dr`, sum(ifnull(`journal`.`Cr`,0)) AS `Cr`, (sum(ifnull(`journal`.`Dr`,0)) - sum(ifnull(`journal`.`Cr`,0))) AS `Balance`, date_format(`journal`.`Date`,'%b-%Y') AS `MonthName` FROM `journal` WHERE (`journal`.`ChartOfAccountID` in (110201,110250,110101,110200)) GROUP BY date_format(`journal`.`Date`,'%b-%Y') ORDER BY date_format(`journal`.`Date`,'%b-%Y') ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `v_challan_detail`
--
DROP TABLE IF EXISTS `v_challan_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_challan_detail`  AS SELECT `challan_detail`.`ChallanDetailID` AS `ChallanDetailID`, `challan_detail`.`ChallanMasterID` AS `ChallanMasterID`, `challan_detail`.`ChallanNo` AS `ChallanNo`, `challan_detail`.`ChallanDate` AS `ChallanDate`, `challan_detail`.`ItemID` AS `ItemID`, `challan_detail`.`Qty` AS `Qty`, `challan_detail`.`Rate` AS `Rate`, `challan_detail`.`TaxAmount` AS `TaxAmount`, `challan_detail`.`TaxPer` AS `TaxPer`, `challan_detail`.`Discount` AS `Discount`, `challan_detail`.`Total` AS `Total`, `item`.`ItemType` AS `ItemType`, `item`.`ItemCode` AS `ItemCode`, `item`.`ItemName` AS `ItemName`, `item`.`UnitName` AS `UnitName`, `challan_detail`.`Description` AS `Description` FROM (`challan_detail` join `item` on((`challan_detail`.`ItemID` = `item`.`ItemID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_challan_master`
--
DROP TABLE IF EXISTS `v_challan_master`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_challan_master`  AS SELECT `challan_master`.`ChallanMasterID` AS `ChallanMasterID`, `challan_master`.`ChallanNo` AS `ChallanNo`, `challan_master`.`PartyID` AS `PartyID`, `party`.`PartyName` AS `PartyName`, `challan_master`.`PlaceOfSupply` AS `PlaceOfSupply`, `challan_master`.`ReferenceNo` AS `ReferenceNo`, date_format(`challan_master`.`ChallanDate`,'%d/%m/%Y') AS `ChallanDate`, `challan_master`.`ChallanType` AS `ChallanType`, `challan_master`.`Total` AS `Total`, `challan_master`.`CustomerNotes` AS `CustomerNotes`, `challan_master`.`TermAndCondition` AS `TermAndCondition`, `challan_master`.`File` AS `File`, `party`.`TRN` AS `TRN`, `party`.`Address` AS `Address`, `party`.`Mobile` AS `Mobile`, `party`.`Phone` AS `Phone`, `party`.`Email` AS `Email`, `party`.`Website` AS `Website`, `party`.`Active` AS `Active`, `party`.`InvoiceDueDays` AS `InvoiceDueDays`, `party`.`eDate` AS `eDate`, `challan_master`.`Subject` AS `Subject`, `challan_master`.`DescriptionNotes` AS `DescriptionNotes`, `challan_master`.`WalkinCustomerName` AS `WalkinCustomerName`, `challan_master`.`DiscountPer` AS `DiscountPer`, `challan_master`.`SubTotal` AS `SubTotal`, `challan_master`.`DiscountAmount` AS `DiscountAmount`, `challan_master`.`TaxPer` AS `TaxPer`, `challan_master`.`Tax` AS `Tax`, `challan_master`.`Shipping` AS `Shipping`, `challan_master`.`GrandTotal` AS `GrandTotal` FROM (`challan_master` join `party` on((`challan_master`.`PartyID` = `party`.`PartyID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_chartofaccount`
--
DROP TABLE IF EXISTS `v_chartofaccount`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_chartofaccount`  AS SELECT `chartofaccount`.`ChartOfAccountID` AS `ChartOfAccountID`, `chartofaccount`.`ChartOfAccountName` AS `ChartOfAccountName`, `chartofaccount`.`CODE` AS `CODE` FROM `chartofaccount` WHERE ((right(`chartofaccount`.`ChartOfAccountID`,5) = 0) AND (`chartofaccount`.`ChartOfAccountName` is not null))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_chartofaccount_mini`
--
DROP TABLE IF EXISTS `v_chartofaccount_mini`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_chartofaccount_mini`  AS SELECT `chartofaccount`.`ChartOfAccountID` AS `ChartOfAccountID`, `chartofaccount`.`CODE` AS `CODE`, `chartofaccount`.`ChartOfAccountName` AS `ChartOfAccountName`, `chartofaccount`.`OpenDebit` AS `OpenDebit`, `chartofaccount`.`OpenCredit` AS `OpenCredit`, `chartofaccount`.`L1` AS `L1`, `chartofaccount`.`L2` AS `L2`, `chartofaccount`.`L3` AS `L3`, `chartofaccount`.`Category` AS `Category` FROM `chartofaccount` WHERE (`chartofaccount`.`Category` in ('CASH','CARD','BANK','AR'))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_delivery_challan`
--
DROP TABLE IF EXISTS `v_delivery_challan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_delivery_challan`  AS SELECT `challan_master`.`ChallanMasterID` AS `ChallanMasterID`, `challan_master`.`ChallanNo` AS `ChallanNo`, `challan_master`.`PartyID` AS `PartyID`, `challan_master`.`PlaceOfSupply` AS `PlaceOfSupply`, `challan_master`.`ReferenceNo` AS `ReferenceNo`, `challan_master`.`ChallanDate` AS `ChallanDate`, `challan_master`.`ChallanType` AS `ChallanType`, `challan_master`.`Total` AS `Total`, `challan_master`.`CustomerNotes` AS `CustomerNotes`, `challan_master`.`TermAndCondition` AS `TermAndCondition`, `challan_master`.`File` AS `File`, `challan_master`.`UserID` AS `UserID`, `party`.`PartyName` AS `PartyName`, `party`.`Address` AS `Address`, `party`.`Phone` AS `Phone`, `party`.`Email` AS `Email`, `party`.`Active` AS `Active`, `party`.`InvoiceDueDays` AS `InvoiceDueDays`, `party`.`TRN` AS `TRN`, `party`.`Mobile` AS `Mobile`, `party`.`Website` AS `Website`, `party`.`eDate` AS `eDate`, `challan_master`.`Subject` AS `Subject`, `challan_master`.`DescriptionNotes` AS `DescriptionNotes`, `challan_master`.`WalkinCustomerName` AS `WalkinCustomerName`, `challan_master`.`SubTotal` AS `SubTotal`, `challan_master`.`DiscountPer` AS `DiscountPer`, `challan_master`.`DiscountAmount` AS `DiscountAmount`, `challan_master`.`TaxPer` AS `TaxPer`, `challan_master`.`Tax` AS `Tax`, `challan_master`.`Shipping` AS `Shipping`, `challan_master`.`GrandTotal` AS `GrandTotal`, `challan_master`.`Paid` AS `Paid`, `challan_master`.`Balance` AS `Balance` FROM (`challan_master` join `party` on((`challan_master`.`PartyID` = `party`.`PartyID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_estimate_detail`
--
DROP TABLE IF EXISTS `v_estimate_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_estimate_detail`  AS SELECT `estimate_detail`.`EstimateDetailID` AS `EstimateDetailID`, `estimate_detail`.`EstimateMasterID` AS `EstimateMasterID`, `estimate_detail`.`EstimateNo` AS `EstimateNo`, `estimate_detail`.`EstimateDate` AS `EstimateDate`, `estimate_detail`.`ItemID` AS `ItemID`, `item`.`ItemName` AS `ItemName`, `estimate_detail`.`Qty` AS `Qty`, `estimate_detail`.`Rate` AS `Rate`, `estimate_detail`.`Total` AS `Total`, `estimate_detail`.`Description` AS `Description`, `estimate_detail`.`TaxPer` AS `TaxPer`, `estimate_detail`.`Tax` AS `Tax` FROM (`estimate_detail` join `item` on((`estimate_detail`.`ItemID` = `item`.`ItemID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_estimate_master`
--
DROP TABLE IF EXISTS `v_estimate_master`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_estimate_master`  AS SELECT `estimate_master`.`EstimateMasterID` AS `EstimateMasterID`, `estimate_master`.`EstimateNo` AS `EstimateNo`, `estimate_master`.`PartyID` AS `PartyID`, `party`.`PartyName` AS `PartyName`, `estimate_master`.`PlaceOfSupply` AS `PlaceOfSupply`, `estimate_master`.`ReferenceNo` AS `ReferenceNo`, `estimate_master`.`EstimateDate` AS `EstimateDate`, `estimate_master`.`Total` AS `Total`, `estimate_master`.`CustomerNotes` AS `CustomerNotes`, `estimate_master`.`TermAndCondition` AS `TermAndCondition`, `estimate_master`.`File` AS `File`, `estimate_master`.`UserID` AS `UserID`, `estimate_master`.`Subject` AS `Subject`, `party`.`Address` AS `Address`, `party`.`Phone` AS `Phone`, `party`.`Email` AS `Email`, `estimate_master`.`Date` AS `Date`, `estimate_master`.`SubTotal` AS `SubTotal`, `estimate_master`.`TaxPer` AS `TaxPer`, `estimate_master`.`Tax` AS `Tax`, `estimate_master`.`DiscountPer` AS `DiscountPer`, `estimate_master`.`Discount` AS `Discount`, `estimate_master`.`WalkinCustomerName` AS `WalkinCustomerName`, `estimate_master`.`Shipping` AS `Shipping`, `estimate_master`.`DescriptionNotes` AS `DescriptionNotes`, `estimate_master`.`ExpiryDate` AS `ExpiryDate`, `estimate_master`.`GrandTotal` AS `GrandTotal`, `party`.`TRN` AS `TRN`, `party`.`Mobile` AS `Mobile`, `party`.`Website` AS `Website`, `party`.`Active` AS `Active`, `party`.`InvoiceDueDays` AS `InvoiceDueDays`, `party`.`eDate` AS `eDate` FROM (`estimate_master` join `party` on((`estimate_master`.`PartyID` = `party`.`PartyID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_expense`
--
DROP TABLE IF EXISTS `v_expense`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_expense`  AS SELECT `expense_master`.`ExpenseMasterID` AS `ExpenseMasterID`, `expense_master`.`Date` AS `Date`, date_format(`expense_master`.`Date`,'%d-%m-%Y') AS `Date1`, `expense_master`.`ChartOfAccountID` AS `ChartOfAccountID`, `chartofaccount`.`ChartOfAccountName` AS `ChartOfAccountName`, `expense_master`.`SupplierID` AS `SupplierID`, `supplier`.`SupplierName` AS `SupplierName`, `expense_master`.`ReferenceNo` AS `ReferenceNo`, `expense_master`.`ExpenseNo` AS `ExpenseNo`, `expense_master`.`GrantTotal` AS `GrantTotal` FROM ((`expense_master` join `chartofaccount` on((`expense_master`.`ChartOfAccountID` = `chartofaccount`.`ChartOfAccountID`))) join `supplier` on((`expense_master`.`SupplierID` = `supplier`.`SupplierID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_expense_chart`
--
DROP TABLE IF EXISTS `v_expense_chart`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_expense_chart`  AS SELECT date_format(`v_journal`.`Date`,'%M-%Y') AS `MonthName`, (sum(if((`v_journal`.`Dr` is null),0,`v_journal`.`Dr`)) - sum(if((`v_journal`.`Cr` is null),0,`v_journal`.`Cr`))) AS `Balance`, `v_journal`.`ChartOfAccountName` AS `ChartOfAccountName` FROM `v_journal` WHERE (`v_journal`.`CODE` = 'E') GROUP BY date_format(`v_journal`.`Date`,'%M-%Y'), `v_journal`.`ChartOfAccountName``ChartOfAccountName`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_expense_detail`
--
DROP TABLE IF EXISTS `v_expense_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_expense_detail`  AS SELECT `expense_master`.`ExpenseNo` AS `ExpenseNo`, `expense_master`.`Date` AS `Date`, `chartofaccount`.`ChartOfAccountName` AS `ChartOfAccountName`, `expense_detail`.`ExpenseDetailID` AS `ExpenseDetailID`, `expense_detail`.`ExpenseMasterID` AS `ExpenseMasterID`, `expense_detail`.`ChartOfAccountID` AS `ChartOfAccountID`, `expense_detail`.`Notes` AS `Notes`, `expense_detail`.`TaxPer` AS `TaxPer`, `expense_detail`.`Tax` AS `Tax`, `expense_detail`.`Amount` AS `Amount`, `supplier`.`SupplierName` AS `SupplierName` FROM (((`expense_detail` join `expense_master` on((`expense_master`.`ExpenseMasterID` = `expense_detail`.`ExpenseMasterID`))) join `chartofaccount` on((`expense_detail`.`ChartOfAccountID` = `chartofaccount`.`ChartOfAccountID`))) join `supplier` on((`expense_master`.`SupplierID` = `supplier`.`SupplierID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_expense_master`
--
DROP TABLE IF EXISTS `v_expense_master`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_expense_master`  AS SELECT `expense_master`.`Date` AS `Date`, `expense_master`.`ExpenseNo` AS `ExpenseNo`, `chartofaccount`.`ChartOfAccountName` AS `ChartOfAccountName`, `expense_master`.`ReferenceNo` AS `ReferenceNo`, `supplier`.`SupplierName` AS `SupplierName`, `expense_master`.`GrantTotal` AS `GrantTotal` FROM ((`expense_master` join `chartofaccount` on((`expense_master`.`ChartOfAccountID` = `chartofaccount`.`ChartOfAccountID`))) join `supplier` on((`expense_master`.`SupplierID` = `supplier`.`SupplierID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_income_exp_chart`
--
DROP TABLE IF EXISTS `v_income_exp_chart`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_income_exp_chart`  AS SELECT sum(ifnull(`journal`.`Dr`,0)) AS `Dr`, sum(ifnull(`journal`.`Cr`,0)) AS `Cr`, (sum(ifnull(`journal`.`Dr`,0)) - sum(ifnull(`journal`.`Cr`,0))) AS `Balance`, date_format(`journal`.`Date`,'%b-%Y') AS `MonthName` FROM `journal` WHERE (`journal`.`ChartOfAccountID` in (110201,110250,110101,110200)) GROUP BY date_format(`journal`.`Date`,'%b-%Y')  ;

-- --------------------------------------------------------

--
-- Structure for view `v_invoice_bal`
--
DROP TABLE IF EXISTS `v_invoice_bal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_invoice_bal`  AS SELECT `journal`.`PartyID` AS `PartyID`, `journal`.`InvoiceMasterID` AS `InvoiceMasterID`, sum(ifnull(`journal`.`Dr`,0)) AS `INVOICE`, sum(ifnull(`journal`.`Cr`,0)) AS `PAID`, (sum(ifnull(`journal`.`Dr`,0)) - sum(ifnull(`journal`.`Cr`,0))) AS `due` FROM `journal` WHERE (`journal`.`ChartOfAccountID` = 110400) GROUP BY `journal`.`PartyID`, `journal`.`InvoiceMasterID``InvoiceMasterID`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_invoice_balance`
--
DROP TABLE IF EXISTS `v_invoice_balance`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_invoice_balance`  AS SELECT `invoice_master`.`InvoiceMasterID` AS `InvoiceMasterID`, `v_invoice_bal`.`PartyID` AS `PartyID`, `invoice_master`.`InvoiceNo` AS `InvoiceNo`, `v_invoice_bal`.`INVOICE` AS `INVOICE`, `v_invoice_bal`.`PAID` AS `PAID`, `v_invoice_bal`.`due` AS `BALANCE`, `invoice_master`.`Date` AS `Date`, `invoice_master`.`DueDate` AS `DueDate`, `invoice_master`.`ReferenceNo` AS `ReferenceNo`, `party`.`PartyName` AS `PartyName`, `invoice_master`.`GrandTotal` AS `GrandTotal` FROM ((`invoice_master` join `v_invoice_bal` on((`invoice_master`.`InvoiceMasterID` = `v_invoice_bal`.`InvoiceMasterID`))) join `party` on((`invoice_master`.`PartyID` = `party`.`PartyID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_invoice_both`
--
DROP TABLE IF EXISTS `v_invoice_both`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_invoice_both`  AS SELECT `invoice_master`.`InvoiceMasterID` AS `InvoiceMasterID`, `invoice_master`.`Date` AS `Date`, `invoice_master`.`UserID` AS `UserID`, `invoice_master`.`PaymentMode` AS `PaymentMode`, `invoice_master`.`Total` AS `Total`, `invoice_master`.`Paid` AS `Paid`, (`invoice_master`.`GrandTotal` - `invoice_master`.`Paid`) AS `Balance`, `invoice_master`.`DueDate` AS `DueDate`, `party`.`PartyName` AS `PartyName`, `party`.`Address` AS `Address`, `party`.`Phone` AS `Phone`, `party`.`Email` AS `Email`, `invoice_master`.`InvoiceNo` AS `InvoiceNo`, `invoice_master`.`CustomerNotes` AS `CustomerNotes`, `invoice_master`.`Subject` AS `Subject`, `invoice_master`.`ReferenceNo` AS `ReferenceNo`, `invoice_master`.`SupplierID` AS `SupplierID`, `invoice_master`.`PartyID` AS `PartyID`, `invoice_master`.`SubTotal` AS `SubTotal`, `invoice_master`.`DiscountPer` AS `DiscountPer`, `invoice_master`.`DiscountAmount` AS `DiscountAmount`, `invoice_master`.`InvoiceType` AS `InvoiceType`, `invoice_master`.`WalkinCustomerName` AS `WalkinCustomerName`, `invoice_master`.`DescriptionNotes` AS `DescriptionNotes`, `invoice_master`.`TaxPer` AS `TaxPer`, `invoice_master`.`Tax` AS `Tax`, `invoice_master`.`Shipping` AS `Shipping`, `invoice_master`.`GrandTotal` AS `GrandTotal`, `party`.`Mobile` AS `Mobile`, `party`.`TRN` AS `TRN`, `party`.`Website` AS `Website`, `party`.`Active` AS `Active`, `party`.`InvoiceDueDays` AS `InvoiceDueDays`, `party`.`eDate` AS `eDate`, `invoice_master`.`PaymentDetails` AS `PaymentDetails`, `user`.`FullName` AS `FullName`, `supplier`.`SupplierName` AS `SupplierName` FROM (((`invoice_master` left join `party` on((`invoice_master`.`PartyID` = `party`.`PartyID`))) left join `user` on((`invoice_master`.`UserID` = `user`.`UserID`))) left join `supplier` on((`invoice_master`.`SupplierID` = `supplier`.`SupplierID`))) ORDER BY `invoice_master`.`InvoiceMasterID` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `v_invoice_detail`
--
DROP TABLE IF EXISTS `v_invoice_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_invoice_detail`  AS SELECT `invoice_detail`.`InvoiceNo` AS `InvoiceNo`, `invoice_master`.`Date` AS `Date`, `invoice_detail`.`InvoiceDetailID` AS `InvoiceDetailID`, `invoice_detail`.`InvoiceMasterID` AS `InvoiceMasterID`, `invoice_detail`.`ItemID` AS `ItemID`, `invoice_detail`.`SupplierID` AS `SupplierID`, `invoice_detail`.`PartyID` AS `PartyID`, `invoice_detail`.`Qty` AS `Qty`, `invoice_detail`.`Rate` AS `Rate`, `invoice_detail`.`Total` AS `Total`, `item`.`ItemCode` AS `ItemCode`, `item`.`ItemName` AS `ItemName`, `invoice_detail`.`Description` AS `Description`, `invoice_detail`.`TaxPer` AS `TaxPer`, `invoice_detail`.`Tax` AS `Tax`, `invoice_master`.`InvoiceType` AS `InvoiceType` FROM ((`invoice_detail` join `invoice_master` on((`invoice_master`.`InvoiceMasterID` = `invoice_detail`.`InvoiceMasterID`))) join `item` on((`invoice_detail`.`ItemID` = `item`.`ItemID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_invoice_master`
--
DROP TABLE IF EXISTS `v_invoice_master`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_invoice_master`  AS SELECT `invoice_master`.`InvoiceMasterID` AS `InvoiceMasterID`, `invoice_master`.`Date` AS `Date`, `invoice_master`.`UserID` AS `UserID`, `invoice_master`.`PaymentMode` AS `PaymentMode`, `invoice_master`.`Total` AS `Total`, `invoice_master`.`Paid` AS `Paid`, (`invoice_master`.`GrandTotal` - `invoice_master`.`Paid`) AS `Balance`, `invoice_master`.`DueDate` AS `DueDate`, `party`.`PartyName` AS `PartyName`, `party`.`Address` AS `Address`, `party`.`Phone` AS `Phone`, `party`.`Email` AS `Email`, `invoice_master`.`InvoiceNo` AS `InvoiceNo`, `invoice_master`.`CustomerNotes` AS `CustomerNotes`, `invoice_master`.`Subject` AS `Subject`, `invoice_master`.`ReferenceNo` AS `ReferenceNo`, `invoice_master`.`SupplierID` AS `SupplierID`, `invoice_master`.`PartyID` AS `PartyID`, `invoice_master`.`SubTotal` AS `SubTotal`, `invoice_master`.`DiscountPer` AS `DiscountPer`, `invoice_master`.`DiscountAmount` AS `DiscountAmount`, `invoice_master`.`InvoiceType` AS `InvoiceType`, `invoice_master`.`WalkinCustomerName` AS `WalkinCustomerName`, `invoice_master`.`DescriptionNotes` AS `DescriptionNotes`, `invoice_master`.`TaxPer` AS `TaxPer`, `invoice_master`.`Tax` AS `Tax`, `invoice_master`.`Shipping` AS `Shipping`, `invoice_master`.`GrandTotal` AS `GrandTotal`, `party`.`Mobile` AS `Mobile`, `party`.`TRN` AS `TRN`, `party`.`Website` AS `Website`, `party`.`Active` AS `Active`, `party`.`InvoiceDueDays` AS `InvoiceDueDays`, `party`.`eDate` AS `eDate`, `invoice_master`.`PaymentDetails` AS `PaymentDetails`, `user`.`FullName` AS `FullName`, `invoice_master`.`TaxType` AS `TaxType` FROM ((`invoice_master` join `party` on((`invoice_master`.`PartyID` = `party`.`PartyID`))) left join `user` on((`invoice_master`.`UserID` = `user`.`UserID`))) ORDER BY `invoice_master`.`InvoiceMasterID` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `v_invoice_master_supplier`
--
DROP TABLE IF EXISTS `v_invoice_master_supplier`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_invoice_master_supplier`  AS SELECT `invoice_master`.`InvoiceMasterID` AS `InvoiceMasterID`, `invoice_master`.`Date` AS `Date`, `invoice_master`.`UserID` AS `UserID`, `invoice_master`.`PaymentMode` AS `PaymentMode`, `invoice_master`.`Total` AS `Total`, `invoice_master`.`DueDate` AS `DueDate`, `invoice_master`.`InvoiceNo` AS `InvoiceNo`, `invoice_master`.`CustomerNotes` AS `CustomerNotes`, `invoice_master`.`Subject` AS `Subject`, `invoice_master`.`ReferenceNo` AS `ReferenceNo`, `invoice_master`.`SupplierID` AS `SupplierID`, `invoice_master`.`PartyID` AS `PartyID`, `invoice_master`.`SubTotal` AS `SubTotal`, `invoice_master`.`DiscountPer` AS `DiscountPer`, `invoice_master`.`DiscountAmount` AS `DiscountAmount`, `supplier`.`SupplierName` AS `SupplierName`, `supplier`.`Address` AS `Address`, `supplier`.`Phone` AS `Phone`, `supplier`.`Email` AS `Email`, `supplier`.`Active` AS `Active`, `supplier`.`InvoiceDueDays` AS `InvoiceDueDays`, `invoice_master`.`WalkinCustomerName` AS `WalkinCustomerName`, `invoice_master`.`PaymentDetails` AS `PaymentDetails`, `invoice_master`.`DescriptionNotes` AS `DescriptionNotes`, `invoice_master`.`GrandTotal` AS `GrandTotal`, `invoice_master`.`Shipping` AS `Shipping`, `invoice_master`.`Tax` AS `Tax`, `invoice_master`.`TaxPer` AS `TaxPer`, `supplier`.`TRN` AS `TRN`, `v_bill_balance`.`Remaining` AS `Remaining`, `v_bill_balance`.`Payment` AS `Payment`, `v_bill_balance`.`Remaining` AS `Paid`, `v_bill_balance`.`Payment` AS `Balance` FROM ((`invoice_master` join `supplier` on((`invoice_master`.`SupplierID` = `supplier`.`SupplierID`))) left join `v_bill_balance` on((`invoice_master`.`InvoiceMasterID` = `v_bill_balance`.`InvoiceMasterID`))) ORDER BY `invoice_master`.`InvoiceMasterID` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `v_invoice_party_balance`
--
DROP TABLE IF EXISTS `v_invoice_party_balance`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_invoice_party_balance`  AS SELECT `v_invoice_balance`.`PartyID` AS `PartyID`, sum(`v_invoice_balance`.`BALANCE`) AS `BALANCE` FROM `v_invoice_balance` GROUP BY `v_invoice_balance`.`PartyID``PartyID`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_inv_balance`
--
DROP TABLE IF EXISTS `v_inv_balance`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_inv_balance`  AS SELECT `journal`.`InvoiceMasterID` AS `InvoiceMasterID`, sum(`journal`.`Dr`) AS `Balance` FROM `journal` WHERE (left(`journal`.`VHNO`,3) = 'PAY') GROUP BY `journal`.`InvoiceMasterID``InvoiceMasterID`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_journal`
--
DROP TABLE IF EXISTS `v_journal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_journal`  AS SELECT `journal`.`VHNO` AS `VHNO`, `journal`.`JournalType` AS `JournalType`, `journal`.`ChartOfAccountID` AS `ChartOfAccountID`, `chartofaccount`.`ChartOfAccountName` AS `ChartOfAccountName`, `journal`.`SupplierID` AS `SupplierID`, `journal`.`VoucherMstID` AS `VoucherMstID`, `journal`.`PettyMstID` AS `PettyMstID`, `journal`.`InvoiceMasterID` AS `InvoiceMasterID`, `journal`.`Date` AS `Date`, `journal`.`Dr` AS `Dr`, `journal`.`Cr` AS `Cr`, `journal`.`PartyID` AS `PartyID`, `journal`.`Narration` AS `Narration`, `chartofaccount`.`L1` AS `L1`, `chartofaccount`.`L2` AS `L2`, `chartofaccount`.`L3` AS `L3`, `chartofaccount`.`CODE` AS `CODE`, `journal`.`Trace` AS `Trace`, `journal`.`BankReconcile` AS `BankReconcile`, `journal`.`ReconcileDate` AS `ReconcileDate`, `journal`.`JournalID` AS `JournalID`, `chartofaccount`.`Category` AS `Category`, `journal`.`ExpenseMasterID` AS `ExpenseMasterID`, `journal`.`PaymentMasterID` AS `PaymentMasterID`, `journal`.`PurchasePaymentMasterID` AS `PurchasePaymentMasterID` FROM (`chartofaccount` join `journal` on((`chartofaccount`.`ChartOfAccountID` = `journal`.`ChartOfAccountID`))) ORDER BY `journal`.`JournalID` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `v_journal_report`
--
DROP TABLE IF EXISTS `v_journal_report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_journal_report`  AS SELECT `invoice_master`.`InvoiceMasterID` AS `InvoiceMasterID`, `invoice_master`.`InvoiceNo` AS `InvoiceNo`, `invoice_master`.`Date` AS `Date`, 'INVOICE' AS `INVOICE` FROM `invoice_master``invoice_master`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_partywise_sale`
--
DROP TABLE IF EXISTS `v_partywise_sale`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_partywise_sale`  AS SELECT `invoice_master`.`PartyID` AS `PartyID`, `party`.`PartyName` AS `PartyName`, `invoice_master`.`InvoiceMasterID` AS `InvoiceMasterID`, `invoice_master`.`InvoiceNo` AS `InvoiceNo`, `invoice_master`.`InvoiceType` AS `InvoiceType`, `invoice_master`.`Date` AS `Date`, `invoice_master`.`DueDate` AS `DueDate`, `invoice_master`.`WalkinCustomerName` AS `WalkinCustomerName`, `invoice_master`.`SupplierID` AS `SupplierID`, `invoice_master`.`ReferenceNo` AS `ReferenceNo`, `invoice_master`.`UserID` AS `UserID`, `invoice_master`.`PaymentMode` AS `PaymentMode`, `invoice_master`.`PaymentDetails` AS `PaymentDetails`, `invoice_master`.`Subject` AS `Subject`, `invoice_master`.`DescriptionNotes` AS `DescriptionNotes`, `invoice_master`.`CustomerNotes` AS `CustomerNotes`, `invoice_master`.`SubTotal` AS `SubTotal`, `invoice_master`.`DiscountPer` AS `DiscountPer`, `invoice_master`.`Total` AS `Total`, `invoice_master`.`DiscountAmount` AS `DiscountAmount`, `invoice_master`.`TaxPer` AS `TaxPer`, `invoice_master`.`Tax` AS `Tax`, `invoice_master`.`Shipping` AS `Shipping`, `invoice_master`.`GrandTotal` AS `GrandTotal`, `invoice_master`.`Paid` AS `Paid`, `invoice_master`.`Balance` AS `Balance` FROM (`invoice_master` join `party` on((`invoice_master`.`PartyID` = `party`.`PartyID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_party_aging`
--
DROP TABLE IF EXISTS `v_party_aging`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_party_aging`  AS SELECT `invoice_master`.`PartyID` AS `PartyID`, sum(if(((to_days(curdate()) - to_days(`invoice_master`.`Date`)) between 1 and 7),`invoice_master`.`GrandTotal`,0)) AS `age7Days`, sum(if(((to_days(curdate()) - to_days(`invoice_master`.`Date`)) between 8 and 16),`invoice_master`.`GrandTotal`,0)) AS `age15Days`, sum(if(((to_days(curdate()) - to_days(`invoice_master`.`Date`)) between 17 and 30),`invoice_master`.`GrandTotal`,0)) AS `age30Days`, sum(if(((to_days(curdate()) - to_days(`invoice_master`.`Date`)) between 31 and 60),`invoice_master`.`GrandTotal`,0)) AS `age60Days`, sum(if(((to_days(curdate()) - to_days(`invoice_master`.`Date`)) between 61 and 90),`invoice_master`.`GrandTotal`,0)) AS `age90Days`, sum(if(((to_days(curdate()) - to_days(`invoice_master`.`Date`)) > 90),`invoice_master`.`GrandTotal`,0)) AS `age90plusDays`, sum(if(((to_days(curdate()) - to_days(`invoice_master`.`Date`)) > 0),`invoice_master`.`GrandTotal`,0)) AS `Total`, `party`.`PartyName` AS `PartyName` FROM (`invoice_master` join `party` on((`invoice_master`.`PartyID` = `party`.`PartyID`))) WHERE (`invoice_master`.`Paid` = 0) GROUP BY `invoice_master`.`PartyID`, `party`.`PartyName``PartyName`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_party_balance`
--
DROP TABLE IF EXISTS `v_party_balance`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_party_balance`  AS SELECT `v_journal`.`VHNO` AS `VHNO`, `v_journal`.`JournalType` AS `JournalType`, `v_journal`.`ChartOfAccountID` AS `ChartOfAccountID`, `v_journal`.`ChartOfAccountName` AS `ChartOfAccountName`, `v_journal`.`SupplierID` AS `SupplierID`, `v_journal`.`VoucherMstID` AS `VoucherMstID`, `v_journal`.`PettyMstID` AS `PettyMstID`, `v_journal`.`InvoiceMasterID` AS `InvoiceMasterID`, `v_journal`.`Date` AS `Date`, `v_journal`.`Dr` AS `Dr`, `v_journal`.`Cr` AS `Cr`, `v_journal`.`PartyID` AS `PartyID`, `v_journal`.`Narration` AS `Narration`, `party`.`PartyName` AS `PartyName` FROM (`v_journal` join `party` on((`v_journal`.`PartyID` = `party`.`PartyID`))) WHERE (`v_journal`.`ChartOfAccountID` = 110400)  ;

-- --------------------------------------------------------

--
-- Structure for view `v_party_montly_balance`
--
DROP TABLE IF EXISTS `v_party_montly_balance`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_party_montly_balance`  AS SELECT date_format(`journal`.`Date`,'%b-%Y') AS `Date`, sum(ifnull(`journal`.`Dr`,0)) AS `Dr`, sum(ifnull(`journal`.`Cr`,0)) AS `Cr`, (sum(ifnull(`journal`.`Dr`,0)) - sum(ifnull(`journal`.`Cr`,0))) AS `Balance`, `journal`.`PartyID` AS `PartyID` FROM `journal` WHERE ((`journal`.`ChartOfAccountID` = 110400) AND (`journal`.`PartyID` is not null)) GROUP BY `journal`.`PartyID`, date_format(`journal`.`Date`,'%b-%Y')  ;

-- --------------------------------------------------------

--
-- Structure for view `v_payment`
--
DROP TABLE IF EXISTS `v_payment`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_payment`  AS SELECT `payment_master`.`PaymentMasterID` AS `PaymentMasterID`, `payment_master`.`PartyID` AS `PartyID`, `party`.`PartyName` AS `PartyName`, `payment_master`.`PaymentDate` AS `PaymentDate`, `payment_master`.`PaymentAmount` AS `PaymentAmount`, `payment_master`.`PaymentMode` AS `PaymentMode`, `payment_master`.`ChartOfAccountID` AS `ChartOfAccountID`, `payment_master`.`ReferenceNo` AS `ReferenceNo`, `payment_master`.`File` AS `File`, `payment_master`.`Notes` AS `Notes`, `payment_master`.`eDate` AS `eDate`, `party`.`TRN` AS `TRN`, `party`.`Address` AS `Address`, `party`.`Mobile` AS `Mobile`, `party`.`Phone` AS `Phone`, `party`.`Email` AS `Email`, `party`.`Website` AS `Website`, `party`.`Active` AS `Active`, `party`.`InvoiceDueDays` AS `InvoiceDueDays` FROM (`payment_master` join `party` on((`payment_master`.`PartyID` = `party`.`PartyID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_payment_detail`
--
DROP TABLE IF EXISTS `v_payment_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_payment_detail`  AS SELECT `invoice_master`.`InvoiceNo` AS `InvoiceNo`, `payment_detail`.`PaymentDetailID` AS `PaymentDetailID`, `payment_detail`.`PaymentMasterID` AS `PaymentMasterID`, `payment_detail`.`PaymentDate` AS `PaymentDate`, `payment_detail`.`InvoiceMasterID` AS `InvoiceMasterID`, `payment_detail`.`Payment` AS `Payment`, `payment_detail`.`eDate` AS `eDate` FROM (`payment_detail` join `invoice_master` on((`invoice_master`.`InvoiceMasterID` = `payment_detail`.`InvoiceMasterID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_payment_summary`
--
DROP TABLE IF EXISTS `v_payment_summary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_payment_summary`  AS SELECT `payment_detail`.`InvoiceMasterID` AS `InvoiceMasterID`, sum(`payment_detail`.`Payment`) AS `Paid`, `payment_detail`.`PaymentMasterID` AS `PaymentMasterID` FROM `payment_detail` GROUP BY `payment_detail`.`InvoiceMasterID`, `payment_detail`.`PaymentMasterID``PaymentMasterID`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_pettycash_master`
--
DROP TABLE IF EXISTS `v_pettycash_master`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_pettycash_master`  AS SELECT `pettycash_master`.`PettyMstID` AS `PettyMstID`, `pettycash_master`.`PettyVoucher` AS `PettyVoucher`, `chartofaccount`.`ChartOfAccountID` AS `ChartOfAccountID`, `chartofaccount`.`CODE` AS `CODE`, `chartofaccount`.`ChartOfAccountName` AS `ChartOfAccountName`, `pettycash_master`.`Date` AS `Date`, `pettycash_master`.`Narration` AS `Narration`, `pettycash_master`.`Credit` AS `Credit` FROM (`chartofaccount` join `pettycash_master` on((`chartofaccount`.`ChartOfAccountID` = `pettycash_master`.`ChOfAcc`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_purchase_order_detail`
--
DROP TABLE IF EXISTS `v_purchase_order_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_purchase_order_detail`  AS SELECT `purchase_order_detail`.`PurchaseOrderDetailID` AS `PurchaseOrderDetailID`, `purchase_order_detail`.`PurchaseOrderMasterID` AS `PurchaseOrderMasterID`, `purchase_order_detail`.`Date` AS `Date`, `purchase_order_detail`.`ItemID` AS `ItemID`, `purchase_order_detail`.`Description` AS `Description`, `purchase_order_detail`.`Rate` AS `Rate`, `purchase_order_detail`.`Qty` AS `Qty`, `purchase_order_detail`.`Unit` AS `Unit`, `purchase_order_detail`.`DiscountPer` AS `DiscountPer`, `purchase_order_detail`.`Discount` AS `Discount`, `purchase_order_detail`.`Tax` AS `Tax`, `purchase_order_detail`.`TaxPer` AS `TaxPer`, `purchase_order_detail`.`Amount` AS `Amount`, `purchase_order_detail`.`Remarks` AS `Remarks`, `item`.`ItemName` AS `ItemName` FROM (`purchase_order_detail` join `item` on((`purchase_order_detail`.`ItemID` = `item`.`ItemID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_purchase_order_master`
--
DROP TABLE IF EXISTS `v_purchase_order_master`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_purchase_order_master`  AS SELECT `purchase_order_master`.`PurchaseOrderMasterID` AS `PurchaseOrderMasterID`, `purchase_order_master`.`PON` AS `PON`, `purchase_order_master`.`SupplierID` AS `SupplierID`, `purchase_order_master`.`Date` AS `Date`, `purchase_order_master`.`PONotes` AS `PONotes`, `purchase_order_master`.`UserID` AS `UserID`, `purchase_order_master`.`Subject` AS `Subject`, `supplier`.`SupplierName` AS `SupplierName`, `supplier`.`TRN` AS `TRN`, `supplier`.`Address` AS `Address`, `supplier`.`Mobile` AS `Mobile`, `supplier`.`Phone` AS `Phone`, `supplier`.`Email` AS `Email`, `supplier`.`Website` AS `Website`, `supplier`.`Active` AS `Active`, `supplier`.`InvoiceDueDays` AS `InvoiceDueDays`, `purchase_order_master`.`ReferenceNo` AS `ReferenceNo`, `purchase_order_master`.`Tax` AS `Tax`, `purchase_order_master`.`GrandTotal` AS `GrandTotal`, `purchase_order_master`.`eDate` AS `eDate`, `purchase_order_master`.`DeliveryDate` AS `DeliveryDate`, `purchase_order_master`.`DeliveryNotes` AS `DeliveryNotes`, `purchase_order_master`.`SubTotal` AS `SubTotal`, `purchase_order_master`.`Discount` AS `Discount`, `purchase_order_master`.`DiscountPer` AS `DiscountPer` FROM (`purchase_order_master` join `supplier` on((`purchase_order_master`.`SupplierID` = `supplier`.`SupplierID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_purchase_payment`
--
DROP TABLE IF EXISTS `v_purchase_payment`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_purchase_payment`  AS SELECT `purchasepayment_master`.`PurchasePaymentMasterID` AS `PurchasePaymentMasterID`, `purchasepayment_master`.`SupplierID` AS `SupplierID`, `purchasepayment_master`.`PaymentDate` AS `PaymentDate`, `purchasepayment_master`.`PaymentAmount` AS `PaymentAmount`, `purchasepayment_master`.`PaymentMode` AS `PaymentMode`, `purchasepayment_master`.`ChartOfAccountID` AS `ChartOfAccountID`, `purchasepayment_master`.`ReferenceNo` AS `ReferenceNo`, `purchasepayment_master`.`File` AS `File`, `purchasepayment_master`.`Notes` AS `Notes`, `purchasepayment_master`.`eDate` AS `eDate`, `supplier`.`SupplierName` AS `SupplierName` FROM (`purchasepayment_master` join `supplier` on((`purchasepayment_master`.`SupplierID` = `supplier`.`SupplierID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_purchase_payment_detail`
--
DROP TABLE IF EXISTS `v_purchase_payment_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_purchase_payment_detail`  AS SELECT `purchasepayment_detail`.`PurchasePaymentDetailID` AS `PurchasePaymentDetailID`, `purchasepayment_detail`.`PurchasePaymentMasterID` AS `PurchasePaymentMasterID`, `purchasepayment_detail`.`PaymentDate` AS `PaymentDate`, `purchasepayment_detail`.`InvoiceMasterID` AS `InvoiceMasterID`, `purchasepayment_detail`.`Payment` AS `Payment`, `purchasepayment_detail`.`eDate` AS `eDate`, `invoice_master`.`InvoiceNo` AS `InvoiceNo` FROM (`purchasepayment_detail` join `invoice_master` on((`purchasepayment_detail`.`InvoiceMasterID` = `invoice_master`.`InvoiceMasterID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_purchase_payment_master`
--
DROP TABLE IF EXISTS `v_purchase_payment_master`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_purchase_payment_master`  AS SELECT `purchasepayment_master`.`PurchasePaymentMasterID` AS `PurchasePaymentMasterID`, `purchasepayment_master`.`SupplierID` AS `SupplierID`, `purchasepayment_master`.`PaymentDate` AS `PaymentDate`, `purchasepayment_master`.`PaymentAmount` AS `PaymentAmount`, `purchasepayment_master`.`PaymentMode` AS `PaymentMode`, `purchasepayment_master`.`ChartOfAccountID` AS `ChartOfAccountID`, `purchasepayment_master`.`ReferenceNo` AS `ReferenceNo`, `purchasepayment_master`.`File` AS `File`, `purchasepayment_master`.`Notes` AS `Notes`, `purchasepayment_master`.`eDate` AS `eDate`, `supplier`.`SupplierName` AS `SupplierName`, `supplier`.`Address` AS `Address`, `supplier`.`Phone` AS `Phone`, `supplier`.`Email` AS `Email`, `supplier`.`Active` AS `Active` FROM (`purchasepayment_master` join `supplier` on((`purchasepayment_master`.`SupplierID` = `supplier`.`SupplierID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_receivabledetail`
--
DROP TABLE IF EXISTS `v_receivabledetail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_receivabledetail`  AS SELECT `invoice_master`.`InvoiceMasterID` AS `InvoiceMasterID`, `invoice_master`.`InvoiceNo` AS `InvoiceNo`, `invoice_master`.`Date` AS `Date`, `invoice_master`.`ReferenceNo` AS `ReferenceNo`, `invoice_detail`.`InvoiceDetailID` AS `InvoiceDetailID`, `invoice_detail`.`ItemID` AS `ItemID`, `invoice_detail`.`Qty` AS `Qty`, `invoice_master`.`Total` AS `Total`, `invoice_master`.`Paid` AS `Paid`, `invoice_master`.`Balance` AS `Balance`, `party`.`PartyName` AS `PartyName`, `party`.`Address` AS `Address`, `party`.`PartyID` AS `PartyID`, `invoice_master`.`SubTotal` AS `SubTotal` FROM ((`invoice_master` join `invoice_detail` on((`invoice_master`.`InvoiceMasterID` = `invoice_detail`.`InvoiceMasterID`))) join `party` on((`invoice_master`.`PartyID` = `party`.`PartyID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_rev_exp`
--
DROP TABLE IF EXISTS `v_rev_exp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_rev_exp`  AS SELECT (sum(if((`v_journal`.`Cr` is null),0,`v_journal`.`Cr`)) - sum(if((`v_journal`.`Dr` is null),0,`v_journal`.`Dr`))) AS `Rev`, 0 AS `Exp`, date_format(`v_journal`.`Date`,'%M-%Y') AS `DATE_FORMAT(date,'%M-%Y')`, date_format(`v_journal`.`Date`,'%m-%Y') AS `date_format(``v_journal``.``Date``,'%m-%Y')` FROM `v_journal` WHERE (`v_journal`.`CODE` = 'r') GROUP BY date_format(`v_journal`.`Date`,'%M-%Y'), date_format(`v_journal`.`Date`,'%m-%Y'), `v_journal`.`CODE` union select 0 AS `Rev`,(sum(if((`v_journal`.`Dr` is null),0,`v_journal`.`Dr`)) - sum(if((`v_journal`.`Cr` is null),0,`v_journal`.`Cr`))) AS `Exp`,date_format(`v_journal`.`Date`,'%M-%Y') AS `DATE_FORMAT(date,'%M-%Y')`,date_format(`v_journal`.`Date`,'%m-%Y') AS `date_format(``v_journal``.``Date``,'%m-%Y')` from `v_journal` where (`v_journal`.`CODE` = 'E') group by date_format(`v_journal`.`Date`,'%M-%Y'),date_format(`v_journal`.`Date`,'%m-%Y'),`v_journal`.`CODE`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_rev_exp_chart`
--
DROP TABLE IF EXISTS `v_rev_exp_chart`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_rev_exp_chart`  AS SELECT abs(round(sum(`v_rev_exp`.`Rev`),0)) AS `Rev`, abs(round(sum(`v_rev_exp`.`Exp`),0)) AS `Exp`, `v_rev_exp`.`DATE_FORMAT(date,'%M-%Y')` AS `MonthName` FROM `v_rev_exp` GROUP BY `v_rev_exp`.`DATE_FORMAT(date,'%M-%Y')` ORDER BY `v_rev_exp`.`DATE_FORMAT(date,'%M-%Y')` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `v_supplier`
--
DROP TABLE IF EXISTS `v_supplier`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_supplier`  AS SELECT `supplier`.`SupplierID` AS `SupplierID`, `supplier`.`SupplierName` AS `SupplierName`, `supplier`.`TRN` AS `TRN`, `supplier`.`Address` AS `Address`, `supplier`.`Mobile` AS `Mobile`, `supplier`.`Phone` AS `Phone`, `supplier`.`Email` AS `Email`, `supplier`.`Website` AS `Website`, `supplier`.`Active` AS `Active`, `supplier`.`InvoiceDueDays` AS `InvoiceDueDays`, `supplier`.`eDate` AS `eDate` FROM `supplier``supplier`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_supplier_balance`
--
DROP TABLE IF EXISTS `v_supplier_balance`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_supplier_balance`  AS SELECT `journal`.`SupplierID` AS `SupplierID`, date_format(`journal`.`Date`,'%b-%Y') AS `Date`, sum(if((`journal`.`Dr` is null),0,`journal`.`Dr`)) AS `Dr`, sum(if((`journal`.`Cr` is null),0,`journal`.`Cr`)) AS `Cr`, sum((if((`journal`.`Dr` is null),0,`journal`.`Dr`) - if((`journal`.`Cr` is null),0,`journal`.`Cr`))) AS `Balance` FROM `journal` WHERE (`journal`.`ChartOfAccountID` = 210100) GROUP BY `journal`.`SupplierID`, date_format(`journal`.`Date`,'%b-%Y')  ;

-- --------------------------------------------------------

--
-- Structure for view `v_supplier_outstanding`
--
DROP TABLE IF EXISTS `v_supplier_outstanding`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_supplier_outstanding`  AS SELECT `v_journal`.`InvoiceMasterID` AS `InvoiceMasterID`, `v_journal`.`PartyID` AS `PartyID`, `v_journal`.`ChartOfAccountID` AS `ChartOfAccountID`, `v_journal`.`ChartOfAccountName` AS `ChartOfAccountName`, `invoice_master`.`InvoiceNo` AS `InvoiceNo`, `invoice_master`.`Date` AS `Date`, `invoice_master`.`DueDate` AS `DueDate`, sum(ifnull(`v_journal`.`Dr`,0)) AS `PAID`, abs((sum(ifnull(`v_journal`.`Dr`,0)) - sum(ifnull(`v_journal`.`Cr`,0)))) AS `BALANCE`, `v_journal`.`SupplierID` AS `SupplierID`, `invoice_master`.`GrandTotal` AS `GrandTotal` FROM (`v_journal` join `invoice_master` on((`invoice_master`.`InvoiceMasterID` = `v_journal`.`InvoiceMasterID`))) WHERE (((`v_journal`.`VHNO` like 'BILL%') OR (`v_journal`.`VHNO` like 'BILLPAY%')) AND (`v_journal`.`ChartOfAccountID` = 210100)) GROUP BY `v_journal`.`InvoiceMasterID`, `v_journal`.`PartyID`, `v_journal`.`ChartOfAccountID`, `v_journal`.`ChartOfAccountName`, `invoice_master`.`InvoiceNo`, `invoice_master`.`Date`, `invoice_master`.`DueDate`, `invoice_master`.`GrandTotal`, `v_journal`.`SupplierID``SupplierID`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_supplier_over_balance`
--
DROP TABLE IF EXISTS `v_supplier_over_balance`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_supplier_over_balance`  AS SELECT `v_supplier_outstanding`.`SupplierID` AS `SupplierID`, sum(`v_supplier_outstanding`.`BALANCE`) AS `BALANCE` FROM `v_supplier_outstanding` GROUP BY `v_supplier_outstanding`.`SupplierID``SupplierID`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_trial`
--
DROP TABLE IF EXISTS `v_trial`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_trial`  AS SELECT `v_journal`.`ChartOfAccountID` AS `ChartOfAccountID`, `v_journal`.`ChartOfAccountName` AS `ChartOfAccountName`, sum(ifnull(`v_journal`.`Dr`,0)) AS `Dr`, sum(ifnull(`v_journal`.`Cr`,0)) AS `Cr`, (sum(ifnull(`v_journal`.`Dr`,0)) - sum(ifnull(`v_journal`.`Cr`,0))) AS `Balance` FROM `v_journal` GROUP BY `v_journal`.`ChartOfAccountID`, `v_journal`.`ChartOfAccountName` ORDER BY `v_journal`.`ChartOfAccountName` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `v_trialreport`
--
DROP TABLE IF EXISTS `v_trialreport`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_trialreport`  AS SELECT `v_journal`.`ChartOfAccountID` AS `ChartOfAccountID`, `v_journal`.`ChartOfAccountName` AS `ChartOfAccountName`, sum(ifnull(`v_journal`.`Dr`,0)) AS `Dr`, sum(ifnull(`v_journal`.`Cr`,0)) AS `Cr`, (sum(ifnull(`v_journal`.`Dr`,0)) - sum(ifnull(`v_journal`.`Cr`,0))) AS `Balance` FROM `v_journal` GROUP BY `v_journal`.`ChartOfAccountID`, `v_journal`.`ChartOfAccountName` ORDER BY `v_journal`.`ChartOfAccountName` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `v_trial_balance`
--
DROP TABLE IF EXISTS `v_trial_balance`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_trial_balance`  AS SELECT `v_trial`.`ChartOfAccountID` AS `ChartOfAccountID`, `v_trial`.`ChartOfAccountName` AS `ChartOfAccountName`, if((`v_trial`.`Balance` >= 0),`v_trial`.`Balance`,0) AS `Dr`, if((`v_trial`.`Balance` < 0),abs(`v_trial`.`Balance`),0) AS `Cr` FROM `v_trial``v_trial`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_voucher`
--
DROP TABLE IF EXISTS `v_voucher`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_voucher`  AS SELECT `voucher_master`.`VoucherMstID` AS `VoucherMstID`, `voucher_type`.`VoucherCode` AS `VoucherCode`, `voucher_type`.`VoucherTypeName` AS `VoucherTypeName`, `voucher_master`.`Voucher` AS `Voucher`, `voucher_master`.`Date` AS `Date`, `voucher_master`.`Narration` AS `Narration`, `v_voucher_amount`.`Amount` AS `Amount` FROM ((`voucher_master` join `voucher_type` on((`voucher_master`.`VoucherCodeID` = `voucher_type`.`VoucherTypeID`))) join `v_voucher_amount` on((`voucher_master`.`VoucherMstID` = `v_voucher_amount`.`VoucherMstID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_voucher_amount`
--
DROP TABLE IF EXISTS `v_voucher_amount`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_voucher_amount`  AS SELECT (case when (left(`voucher_detail`.`Voucher`,2) = 'BR') then sum(`voucher_detail`.`Debit`) when (left(`voucher_detail`.`Voucher`,2) = 'CR') then sum(`voucher_detail`.`Debit`) when (left(`voucher_detail`.`Voucher`,2) = 'BP') then sum(`voucher_detail`.`Credit`) when (left(`voucher_detail`.`Voucher`,2) = 'CP') then sum(`voucher_detail`.`Credit`) else sum(`voucher_detail`.`Debit`) end) AS `Amount`, `voucher_detail`.`VoucherMstID` AS `VoucherMstID`, `voucher_detail`.`Voucher` AS `Voucher` FROM `voucher_detail` GROUP BY `voucher_detail`.`VoucherMstID`, `voucher_detail`.`Voucher``Voucher`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_voucher_detail`
--
DROP TABLE IF EXISTS `v_voucher_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_voucher_detail`  AS SELECT `voucher_master`.`VoucherMstID` AS `VoucherMstID`, `voucher_master`.`VoucherCodeID` AS `VoucherCodeID`, `voucher_master`.`Voucher` AS `Voucher`, `voucher_master`.`Narration` AS `NarrationMaster`, `voucher_detail`.`Date` AS `Date`, `voucher_detail`.`ChOfAcc` AS `ChOfAcc`, `chartofaccount`.`ChartOfAccountName` AS `ChartOfAccountName`, `voucher_detail`.`Debit` AS `Debit`, `voucher_detail`.`Credit` AS `Credit`, `voucher_detail`.`InvoiceNo` AS `InvoiceNo`, `voucher_detail`.`Narration` AS `Narration`, `voucher_detail`.`SupplierID` AS `SupplierID`, `voucher_detail`.`PartyID` AS `PartyID`, `voucher_detail`.`RefNo` AS `RefNo`, `party`.`PartyName` AS `PartyName`, `supplier`.`SupplierName` AS `SupplierName` FROM ((((`voucher_detail` join `voucher_master` on((`voucher_master`.`VoucherMstID` = `voucher_detail`.`VoucherMstID`))) join `chartofaccount` on((`chartofaccount`.`ChartOfAccountID` = `voucher_detail`.`ChOfAcc`))) left join `party` on((`voucher_detail`.`PartyID` = `party`.`PartyID`))) left join `supplier` on((`voucher_detail`.`SupplierID` = `supplier`.`SupplierID`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_voucher_master`
--
DROP TABLE IF EXISTS `v_voucher_master`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_voucher_master`  AS SELECT `voucher_master`.`VoucherMstID` AS `VoucherMstID`, `voucher_master`.`VoucherCodeID` AS `VoucherCodeID`, `voucher_master`.`Voucher` AS `Voucher`, `voucher_master`.`Date` AS `Date`, `voucher_master`.`Narration` AS `Narration`, `voucher_type`.`VoucherTypeID` AS `VoucherTypeID`, `voucher_type`.`VoucherCode` AS `VoucherCode`, `voucher_type`.`VoucherTypeName` AS `VoucherTypeName`, `voucher_detail`.`PartyID` AS `PartyID`, `party`.`PartyName` AS `PartyName`, `voucher_detail`.`Debit` AS `Debit`, `voucher_detail`.`Credit` AS `Credit`, `voucher_detail`.`SupplierID` AS `SupplierID`, `supplier`.`SupplierName` AS `SupplierName` FROM ((((`voucher_master` join `voucher_type` on((`voucher_master`.`VoucherCodeID` = `voucher_type`.`VoucherTypeID`))) join `voucher_detail` on((`voucher_master`.`VoucherMstID` = `voucher_detail`.`VoucherMstID`))) left join `party` on((`voucher_detail`.`PartyID` = `party`.`PartyID`))) left join `supplier` on((`voucher_detail`.`SupplierID` = `supplier`.`SupplierID`)))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airline`
--
ALTER TABLE `airline`
  ADD PRIMARY KEY (`AirLineID`);

--
-- Indexes for table `attachment`
--
ALTER TABLE `attachment`
  ADD PRIMARY KEY (`AttachmentID`);

--
-- Indexes for table `challan_detail`
--
ALTER TABLE `challan_detail`
  ADD PRIMARY KEY (`ChallanDetailID`);

--
-- Indexes for table `challan_master`
--
ALTER TABLE `challan_master`
  ADD PRIMARY KEY (`ChallanMasterID`);

--
-- Indexes for table `challan_type`
--
ALTER TABLE `challan_type`
  ADD PRIMARY KEY (`ChallanTypeID`);

--
-- Indexes for table `chartofaccount`
--
ALTER TABLE `chartofaccount`
  ADD PRIMARY KEY (`ChartOfAccountID`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`CompanyID`);

--
-- Indexes for table `estimate_detail`
--
ALTER TABLE `estimate_detail`
  ADD PRIMARY KEY (`EstimateDetailID`);

--
-- Indexes for table `estimate_master`
--
ALTER TABLE `estimate_master`
  ADD PRIMARY KEY (`EstimateMasterID`);

--
-- Indexes for table `expense_detail`
--
ALTER TABLE `expense_detail`
  ADD PRIMARY KEY (`ExpenseDetailID`);

--
-- Indexes for table `expense_master`
--
ALTER TABLE `expense_master`
  ADD PRIMARY KEY (`ExpenseMasterID`);

--
-- Indexes for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  ADD PRIMARY KEY (`InvoiceDetailID`);

--
-- Indexes for table `invoice_master`
--
ALTER TABLE `invoice_master`
  ADD PRIMARY KEY (`InvoiceMasterID`),
  ADD KEY `InvoiceTypeID` (`InvoiceNo`),
  ADD KEY `invoice_master_ibfk_2` (`PartyID`);

--
-- Indexes for table `invoice_type`
--
ALTER TABLE `invoice_type`
  ADD PRIMARY KEY (`InvoiceTypeID`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`ItemID`);

--
-- Indexes for table `journal`
--
ALTER TABLE `journal`
  ADD PRIMARY KEY (`JournalID`),
  ADD KEY `VoucherMstID` (`VoucherMstID`),
  ADD KEY `PettyMstID` (`PettyMstID`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `party`
--
ALTER TABLE `party`
  ADD PRIMARY KEY (`PartyID`);

--
-- Indexes for table `payment_detail`
--
ALTER TABLE `payment_detail`
  ADD PRIMARY KEY (`PaymentDetailID`);

--
-- Indexes for table `payment_master`
--
ALTER TABLE `payment_master`
  ADD PRIMARY KEY (`PaymentMasterID`);

--
-- Indexes for table `payment_mode`
--
ALTER TABLE `payment_mode`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pettycash_detail`
--
ALTER TABLE `pettycash_detail`
  ADD PRIMARY KEY (`PettyDetID`),
  ADD KEY `PettyMstID` (`PettyMstID`);

--
-- Indexes for table `pettycash_master`
--
ALTER TABLE `pettycash_master`
  ADD PRIMARY KEY (`PettyMstID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchasepayment_detail`
--
ALTER TABLE `purchasepayment_detail`
  ADD PRIMARY KEY (`PurchasePaymentDetailID`);

--
-- Indexes for table `purchasepayment_master`
--
ALTER TABLE `purchasepayment_master`
  ADD PRIMARY KEY (`PurchasePaymentMasterID`);

--
-- Indexes for table `purchase_order_detail`
--
ALTER TABLE `purchase_order_detail`
  ADD PRIMARY KEY (`PurchaseOrderDetailID`);

--
-- Indexes for table `purchase_order_master`
--
ALTER TABLE `purchase_order_master`
  ADD PRIMARY KEY (`PurchaseOrderMasterID`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`RoleID`);

--
-- Indexes for table `runtotaltestdata`
--
ALTER TABLE `runtotaltestdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SupplierID`);

--
-- Indexes for table `supplier_category`
--
ALTER TABLE `supplier_category`
  ADD PRIMARY KEY (`SupplierCatID`);

--
-- Indexes for table `tax`
--
ALTER TABLE `tax`
  ADD PRIMARY KEY (`TaxID`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`UnitID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`RoleId`);

--
-- Indexes for table `voucher_detail`
--
ALTER TABLE `voucher_detail`
  ADD PRIMARY KEY (`VoucherDetID`),
  ADD KEY `VoucherMstID` (`VoucherMstID`);

--
-- Indexes for table `voucher_master`
--
ALTER TABLE `voucher_master`
  ADD PRIMARY KEY (`VoucherMstID`);

--
-- Indexes for table `voucher_type`
--
ALTER TABLE `voucher_type`
  ADD PRIMARY KEY (`VoucherTypeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airline`
--
ALTER TABLE `airline`
  MODIFY `AirLineID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attachment`
--
ALTER TABLE `attachment`
  MODIFY `AttachmentID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `challan_detail`
--
ALTER TABLE `challan_detail`
  MODIFY `ChallanDetailID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `challan_master`
--
ALTER TABLE `challan_master`
  MODIFY `ChallanMasterID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `challan_type`
--
ALTER TABLE `challan_type`
  MODIFY `ChallanTypeID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `CompanyID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `estimate_detail`
--
ALTER TABLE `estimate_detail`
  MODIFY `EstimateDetailID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estimate_master`
--
ALTER TABLE `estimate_master`
  MODIFY `EstimateMasterID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_detail`
--
ALTER TABLE `expense_detail`
  MODIFY `ExpenseDetailID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_master`
--
ALTER TABLE `expense_master`
  MODIFY `ExpenseMasterID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  MODIFY `InvoiceDetailID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_master`
--
ALTER TABLE `invoice_master`
  MODIFY `InvoiceMasterID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_type`
--
ALTER TABLE `invoice_type`
  MODIFY `InvoiceTypeID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `ItemID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `journal`
--
ALTER TABLE `journal`
  MODIFY `JournalID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2878;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `party`
--
ALTER TABLE `party`
  MODIFY `PartyID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2215;

--
-- AUTO_INCREMENT for table `payment_detail`
--
ALTER TABLE `payment_detail`
  MODIFY `PaymentDetailID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_master`
--
ALTER TABLE `payment_master`
  MODIFY `PaymentMasterID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_mode`
--
ALTER TABLE `payment_mode`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pettycash_detail`
--
ALTER TABLE `pettycash_detail`
  MODIFY `PettyDetID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pettycash_master`
--
ALTER TABLE `pettycash_master`
  MODIFY `PettyMstID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `purchasepayment_detail`
--
ALTER TABLE `purchasepayment_detail`
  MODIFY `PurchasePaymentDetailID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchasepayment_master`
--
ALTER TABLE `purchasepayment_master`
  MODIFY `PurchasePaymentMasterID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_order_detail`
--
ALTER TABLE `purchase_order_detail`
  MODIFY `PurchaseOrderDetailID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_order_master`
--
ALTER TABLE `purchase_order_master`
  MODIFY `PurchaseOrderMasterID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `RoleID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `runtotaltestdata`
--
ALTER TABLE `runtotaltestdata`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `SupplierID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2219;

--
-- AUTO_INCREMENT for table `supplier_category`
--
ALTER TABLE `supplier_category`
  MODIFY `SupplierCatID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tax`
--
ALTER TABLE `tax`
  MODIFY `TaxID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `UnitID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `RoleId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4386;

--
-- AUTO_INCREMENT for table `voucher_detail`
--
ALTER TABLE `voucher_detail`
  MODIFY `VoucherDetID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `voucher_master`
--
ALTER TABLE `voucher_master`
  MODIFY `VoucherMstID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=412;

--
-- AUTO_INCREMENT for table `voucher_type`
--
ALTER TABLE `voucher_type`
  MODIFY `VoucherTypeID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `journal`
--
ALTER TABLE `journal`
  ADD CONSTRAINT `journal_ibfk_1` FOREIGN KEY (`VoucherMstID`) REFERENCES `voucher_master` (`VoucherMstID`) ON DELETE CASCADE,
  ADD CONSTRAINT `journal_ibfk_11` FOREIGN KEY (`VoucherMstID`) REFERENCES `voucher_master` (`VoucherMstID`) ON DELETE CASCADE,
  ADD CONSTRAINT `journal_ibfk_2` FOREIGN KEY (`PettyMstID`) REFERENCES `pettycash_master` (`PettyMstID`) ON DELETE CASCADE,
  ADD CONSTRAINT `journal_ibfk_21` FOREIGN KEY (`PettyMstID`) REFERENCES `pettycash_master` (`PettyMstID`) ON DELETE CASCADE;

--
-- Constraints for table `pettycash_detail`
--
ALTER TABLE `pettycash_detail`
  ADD CONSTRAINT `pettycash_detail_ibfk_1` FOREIGN KEY (`PettyMstID`) REFERENCES `pettycash_master` (`PettyMstID`) ON DELETE CASCADE,
  ADD CONSTRAINT `pettycash_detail_ibfk_11` FOREIGN KEY (`PettyMstID`) REFERENCES `pettycash_master` (`PettyMstID`) ON DELETE CASCADE;

--
-- Constraints for table `voucher_detail`
--
ALTER TABLE `voucher_detail`
  ADD CONSTRAINT `voucher_detail_ibfk_1` FOREIGN KEY (`VoucherMstID`) REFERENCES `voucher_master` (`VoucherMstID`) ON DELETE CASCADE,
  ADD CONSTRAINT `voucher_detail_ibfk_11` FOREIGN KEY (`VoucherMstID`) REFERENCES `voucher_master` (`VoucherMstID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
