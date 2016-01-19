-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Anamakine: localhost
-- Üretim Zamanı: 10 Oca 2016, 12:44:56
-- Sunucu sürümü: 5.5.24-log
-- PHP Sürümü: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Veritabanı: `rebel`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `amount_need`
--

CREATE TABLE IF NOT EXISTS `amount_need` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=3 ;

--
-- Tablo döküm verisi `amount_need`
--

INSERT INTO `amount_need` (`id`, `name`) VALUES
(1, '10-50K'),
(2, '50-100K');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `capital_raised`
--

CREATE TABLE IF NOT EXISTS `capital_raised` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=3 ;

--
-- Tablo döküm verisi `capital_raised`
--

INSERT INTO `capital_raised` (`id`, `name`) VALUES
(1, '10-50K'),
(2, '50-100K');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `capital_sought`
--

CREATE TABLE IF NOT EXISTS `capital_sought` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=3 ;

--
-- Tablo döküm verisi `capital_sought`
--

INSERT INTO `capital_sought` (`id`, `name`) VALUES
(1, 'No'),
(2, 'Yes');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `current_funding`
--

CREATE TABLE IF NOT EXISTS `current_funding` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=3 ;

--
-- Tablo döküm verisi `current_funding`
--

INSERT INTO `current_funding` (`id`, `name`) VALUES
(1, 'From cash flows'),
(2, 'Salary not taken/facilities provided at below-market rates');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `current_funding_f`
--

CREATE TABLE IF NOT EXISTS `current_funding_f` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_project_profile_id` longtext COLLATE utf8_turkish_ci NOT NULL,
  `f_current_funding_f` longtext COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=3 ;

--
-- Tablo döküm verisi `current_funding_f`
--

INSERT INTO `current_funding_f` (`id`, `f_project_profile_id`, `f_current_funding_f`) VALUES
(1, '4', '1'),
(2, '4', '2');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `designation`
--

CREATE TABLE IF NOT EXISTS `designation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=3 ;

--
-- Tablo döküm verisi `designation`
--

INSERT INTO `designation` (`id`, `name`) VALUES
(1, 'For-profit (incl. social enterprise)'),
(2, ' Non-profit');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `detailed_project`
--

CREATE TABLE IF NOT EXISTS `detailed_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `7` longtext COLLATE utf8_turkish_ci NOT NULL,
  `threats` longtext COLLATE utf8_turkish_ci NOT NULL,
  `threatss` longtext COLLATE utf8_turkish_ci NOT NULL,
  `fileupload` longtext COLLATE utf8_turkish_ci NOT NULL,
  `link` longtext COLLATE utf8_turkish_ci NOT NULL,
  `target` longtext COLLATE utf8_turkish_ci NOT NULL,
  `marketsize` longtext COLLATE utf8_turkish_ci NOT NULL,
  `industry` longtext COLLATE utf8_turkish_ci NOT NULL,
  `key` longtext COLLATE utf8_turkish_ci NOT NULL,
  `strategy` longtext COLLATE utf8_turkish_ci NOT NULL,
  `doption` longtext COLLATE utf8_turkish_ci NOT NULL,
  `cost` longtext COLLATE utf8_turkish_ci NOT NULL,
  `pricing` longtext COLLATE utf8_turkish_ci NOT NULL,
  `customer` longtext COLLATE utf8_turkish_ci NOT NULL,
  `growth` longtext COLLATE utf8_turkish_ci NOT NULL,
  `vision` longtext COLLATE utf8_turkish_ci NOT NULL,
  `impact` longtext COLLATE utf8_turkish_ci NOT NULL,
  `busines` longtext COLLATE utf8_turkish_ci NOT NULL,
  `saving` longtext COLLATE utf8_turkish_ci NOT NULL,
  `sustainer` longtext COLLATE utf8_turkish_ci NOT NULL,
  `proof` longtext COLLATE utf8_turkish_ci NOT NULL,
  `relationships` longtext COLLATE utf8_turkish_ci NOT NULL,
  `task` longtext COLLATE utf8_turkish_ci NOT NULL,
  `milestones` longtext COLLATE utf8_turkish_ci NOT NULL,
  `resource` longtext COLLATE utf8_turkish_ci NOT NULL,
  `startup` longtext COLLATE utf8_turkish_ci NOT NULL,
  `burn` longtext COLLATE utf8_turkish_ci NOT NULL,
  `break` longtext COLLATE utf8_turkish_ci NOT NULL,
  `base` longtext COLLATE utf8_turkish_ci NOT NULL,
  `three` longtext COLLATE utf8_turkish_ci NOT NULL,
  `scala` longtext COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=2 ;

--
-- Tablo döküm verisi `detailed_project`
--

INSERT INTO `detailed_project` (`id`, `7`, `threats`, `threatss`, `fileupload`, `link`, `target`, `marketsize`, `industry`, `key`, `strategy`, `doption`, `cost`, `pricing`, `customer`, `growth`, `vision`, `impact`, `busines`, `saving`, `sustainer`, `proof`, `relationships`, `task`, `milestones`, `resource`, `startup`, `burn`, `break`, `base`, `three`, `scala`) VALUES
(1, '', '', '', 'resim', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `educational_affilation`
--

CREATE TABLE IF NOT EXISTS `educational_affilation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=3 ;

--
-- Tablo döküm verisi `educational_affilation`
--

INSERT INTO `educational_affilation` (`id`, `name`) VALUES
(1, ' Student '),
(2, 'Alumnus');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `educational_affilation_f`
--

CREATE TABLE IF NOT EXISTS `educational_affilation_f` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_user_profile_id` longtext COLLATE utf8_turkish_ci NOT NULL,
  `f_educational_affilation_id` longtext COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=13 ;

--
-- Tablo döküm verisi `educational_affilation_f`
--

INSERT INTO `educational_affilation_f` (`id`, `f_user_profile_id`, `f_educational_affilation_id`) VALUES
(1, '4', '1'),
(2, '4', '2'),
(3, '5', '1'),
(4, '5', '2'),
(5, '6', '1'),
(6, '6', '2'),
(7, '7', '2'),
(8, '8', '1'),
(9, '8', '2'),
(10, '9', '1'),
(11, '19', '2'),
(12, '20', '2');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `highest_level`
--

CREATE TABLE IF NOT EXISTS `highest_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=3 ;

--
-- Tablo döküm verisi `highest_level`
--

INSERT INTO `highest_level` (`id`, `name`) VALUES
(1, 'Elementary School'),
(2, 'Middle School');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `profitability`
--

CREATE TABLE IF NOT EXISTS `profitability` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=3 ;

--
-- Tablo döküm verisi `profitability`
--

INSERT INTO `profitability` (`id`, `name`) VALUES
(1, 'Profitable'),
(2, 'Projected months to be');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `project_profile`
--

CREATE TABLE IF NOT EXISTS `project_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_name` longtext COLLATE utf8_turkish_ci NOT NULL,
  `description` longtext COLLATE utf8_turkish_ci NOT NULL,
  `website` longtext COLLATE utf8_turkish_ci NOT NULL,
  `link_demo` longtext COLLATE utf8_turkish_ci NOT NULL,
  `geographic_base` longtext COLLATE utf8_turkish_ci NOT NULL,
  `industry` longtext COLLATE utf8_turkish_ci NOT NULL,
  `f_designation_id` longtext COLLATE utf8_turkish_ci NOT NULL,
  `tecnologies` longtext COLLATE utf8_turkish_ci NOT NULL,
  `f_profitability_id` longtext COLLATE utf8_turkish_ci NOT NULL,
  `f_stage_id` longtext COLLATE utf8_turkish_ci NOT NULL,
  `f_team_id` longtext COLLATE utf8_turkish_ci NOT NULL,
  `f_capital_raised_id` longtext COLLATE utf8_turkish_ci NOT NULL,
  `f_capital_sought_id` longtext COLLATE utf8_turkish_ci NOT NULL,
  `f_amount_need_id` longtext COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=6 ;

--
-- Tablo döküm verisi `project_profile`
--

INSERT INTO `project_profile` (`id`, `project_name`, `description`, `website`, `link_demo`, `geographic_base`, `industry`, `f_designation_id`, `tecnologies`, `f_profitability_id`, `f_stage_id`, `f_team_id`, `f_capital_raised_id`, `f_capital_sought_id`, `f_amount_need_id`) VALUES
(1, '', '', '', '', '', '', '', '''', '', '', '', '1', '', ''),
(2, '', '', '', '', '', '', '', '''', '', '', '', '1', '', ''),
(3, 'proje ismi', 'aciklama', 'website', 'link', 'base', 'industry', '1', 'teknologies''1', '1', '1', '1', '1', '1', ''),
(4, 'izmir', '123', 'teknolojisi', 'asd', 'asd', 'asd', '2', 'Link to Demo or Prototype', '2', '2', '2', '2', '2', '2'),
(5, 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', '1', 'asd', '', '1', '1', '', '1', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=3 ;

--
-- Tablo döküm verisi `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Founder, team member or aspirant (can include providers of science, designs, IP)'),
(2, 'Supporter (mentor/advisor/industry expert/connector)');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `roles_f`
--

CREATE TABLE IF NOT EXISTS `roles_f` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_user_profile_id` longtext COLLATE utf8_turkish_ci NOT NULL,
  `f_roles_id` longtext COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=14 ;

--
-- Tablo döküm verisi `roles_f`
--

INSERT INTO `roles_f` (`id`, `f_user_profile_id`, `f_roles_id`) VALUES
(1, '4', '1'),
(2, '4', '2'),
(3, '5', '1'),
(4, '5', '2'),
(5, '6', '1'),
(6, '6', '2'),
(7, '7', '2'),
(8, '8', '1'),
(9, '8', '2'),
(10, '9', '2'),
(11, '19', '2'),
(12, '20', '1'),
(13, '20', '2');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `school_attended`
--

CREATE TABLE IF NOT EXISTS `school_attended` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=3 ;

--
-- Tablo döküm verisi `school_attended`
--

INSERT INTO `school_attended` (`id`, `name`) VALUES
(1, ' Baruch'),
(2, 'FIT');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `school_attended_f`
--

CREATE TABLE IF NOT EXISTS `school_attended_f` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_user_profile_id` longtext COLLATE utf8_turkish_ci NOT NULL,
  `f_school_attended_id` longtext COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=18 ;

--
-- Tablo döküm verisi `school_attended_f`
--

INSERT INTO `school_attended_f` (`id`, `f_user_profile_id`, `f_school_attended_id`) VALUES
(1, '2', '1'),
(2, '2', '2'),
(3, '3', '2'),
(4, '4', '1'),
(5, '4', '2'),
(6, '5', '1'),
(7, '5', '2'),
(8, '6', '1'),
(9, '6', '2'),
(10, '7', '2'),
(11, '8', '1'),
(12, '8', '2'),
(13, '9', '1'),
(14, '18', '1'),
(15, '19', '2'),
(16, '20', '1'),
(17, '20', '2');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `solution`
--

CREATE TABLE IF NOT EXISTS `solution` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=3 ;

--
-- Tablo döküm verisi `solution`
--

INSERT INTO `solution` (`id`, `name`) VALUES
(1, 'Consumer problem (B2C)'),
(2, ' Business problem (B2B)');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `solution_f`
--

CREATE TABLE IF NOT EXISTS `solution_f` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_project_profile_id` longtext COLLATE utf8_turkish_ci NOT NULL,
  `f_solution_id` longtext COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=4 ;

--
-- Tablo döküm verisi `solution_f`
--

INSERT INTO `solution_f` (`id`, `f_project_profile_id`, `f_solution_id`) VALUES
(1, '3', '1'),
(2, '4', '1'),
(3, '4', '2');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sought_project`
--

CREATE TABLE IF NOT EXISTS `sought_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=5 ;

--
-- Tablo döküm verisi `sought_project`
--

INSERT INTO `sought_project` (`id`, `name`) VALUES
(1, 'Project to join'),
(2, 'Ventures that need my skill or service'),
(3, 'Project to join'),
(4, 'Ventures that need my skill or service');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sought_project_f`
--

CREATE TABLE IF NOT EXISTS `sought_project_f` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_user_profile_id` longtext COLLATE utf8_turkish_ci NOT NULL,
  `f_sought_project_id` longtext COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=22 ;

--
-- Tablo döküm verisi `sought_project_f`
--

INSERT INTO `sought_project_f` (`id`, `f_user_profile_id`, `f_sought_project_id`) VALUES
(1, '4', '1'),
(2, '4', '2'),
(3, '4', '3'),
(4, '4', '4'),
(5, '5', '1'),
(6, '5', '2'),
(7, '5', '3'),
(8, '5', '4'),
(9, '6', '1'),
(10, '6', '2'),
(11, '6', '3'),
(12, '6', '4'),
(13, '7', '3'),
(14, '8', '1'),
(15, '8', '2'),
(16, '8', '3'),
(17, '8', '4'),
(18, '9', '4'),
(19, '19', '1'),
(20, '20', '1'),
(21, '20', '4');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `stage`
--

CREATE TABLE IF NOT EXISTS `stage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=3 ;

--
-- Tablo döküm verisi `stage`
--

INSERT INTO `stage` (`id`, `name`) VALUES
(1, 'Concept/pure research'),
(2, 'Planning/prototyping');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `team`
--

CREATE TABLE IF NOT EXISTS `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=3 ;

--
-- Tablo döküm verisi `team`
--

INSERT INTO `team` (`id`, `name`) VALUES
(1, 'Micro (<10 FTEs)'),
(2, 'Small (11-50 FTEs)');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_profile`
--

CREATE TABLE IF NOT EXISTS `user_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_turkish_ci NOT NULL,
  `email` longtext COLLATE utf8_turkish_ci NOT NULL,
  `highest` longtext COLLATE utf8_turkish_ci NOT NULL,
  `year` longtext COLLATE utf8_turkish_ci NOT NULL,
  `password` longtext COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=21 ;

--
-- Tablo döküm verisi `user_profile`
--

INSERT INTO `user_profile` (`id`, `name`, `email`, `highest`, `year`, `password`) VALUES
(1, 'asd', 'asd', '1', 'asd', ''),
(2, 'deneme@asd.com', '123', '1', 'asd', ''),
(3, '4', '4', '1', 'asd', ''),
(4, 'deneme', 'deneme', '1', 'asd', ''),
(5, 'deneme', 'deneme', '2', 'asd', ''),
(6, 'deneme', 'deneme', '2', 'asd', ''),
(7, 'ad', 'asd', '2', 'asd', ''),
(8, 'izmir', 'izmir', '2', 'asd', ''),
(9, 'halo', 'halo', '2', '2015-12-20', 'halo'),
(10, 'select', '', '1', '', ''),
(11, 'select', '', '1', '', ''),
(12, 'select', 'asd', '1', '', 'asd'),
(13, 'select', '', '1', '', ''),
(14, '', '', '1', '', ''),
(15, 'asd', 'asd', '1', '', 'asd'),
(16, 'asd', 'das', '1', '', 'asd'),
(17, 'sdf', 'sdf', '1', '', 'sdf'),
(18, 'tyu', 'tyu', '1', '2015-12-08', 'tyu'),
(19, 'ty', 'i', '1', '2015-12-10', 'ty'),
(20, 'hikmet', 'asd', '2', '2016-01-14', 'asd');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
