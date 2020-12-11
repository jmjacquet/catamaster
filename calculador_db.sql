-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 11-12-2020 a las 14:45:07
-- Versión del servidor: 5.6.48-88.0
-- Versión de PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `calculador_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add permission', 1, 'add_permission'),
(2, 'Can change permission', 1, 'change_permission'),
(3, 'Can delete permission', 1, 'delete_permission'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add content type', 4, 'add_contenttype'),
(11, 'Can change content type', 4, 'change_contenttype'),
(12, 'Can delete content type', 4, 'delete_contenttype'),
(13, 'Can add session', 5, 'add_session'),
(14, 'Can change session', 5, 'change_session'),
(15, 'Can delete session', 5, 'delete_session'),
(16, 'Can add site', 6, 'add_site'),
(17, 'Can change site', 6, 'change_site'),
(18, 'Can delete site', 6, 'delete_site'),
(19, 'Can add log entry', 7, 'add_logentry'),
(20, 'Can change log entry', 7, 'change_logentry'),
(21, 'Can delete log entry', 7, 'delete_logentry'),
(22, 'Can add paciente', 8, 'add_paciente'),
(23, 'Can change paciente', 8, 'change_paciente'),
(24, 'Can delete paciente', 8, 'delete_paciente'),
(28, 'Can add examen', 10, 'add_examen'),
(29, 'Can change examen', 10, 'change_examen'),
(30, 'Can delete examen', 10, 'delete_examen'),
(31, 'Can add migration history', 11, 'add_migrationhistory'),
(32, 'Can change migration history', 11, 'change_migrationhistory'),
(33, 'Can delete migration history', 11, 'delete_migrationhistory'),
(34, 'Can add salidas', 12, 'add_salidas'),
(35, 'Can change salidas', 12, 'change_salidas'),
(36, 'Can delete salidas', 12, 'delete_salidas'),
(37, 'Can add user profile', 13, 'add_userprofile'),
(38, 'Can change user profile', 13, 'change_userprofile'),
(39, 'Can delete user profile', 13, 'delete_userprofile');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$15000$zkG56p9evLhf$TUVvyXftpLrMpj8XWuKT0QNRbGa8G2oeiGoGTIHmptc=', '2019-08-15 21:11:48', 0, 'ivancimino', '', '', '', 1, 1, '2015-10-08 23:57:31'),
(2, 'pbkdf2_sha256$15000$EZXGG9SbvQE0$c0Juc3P0MjlBurkGMz+7byVP1FPc484QURMdJCA/QmM=', '2020-08-15 20:53:18', 1, 'josem', '', '', '', 1, 1, '2016-02-03 04:12:13'),
(3, 'pbkdf2_sha256$15000$T5f5Fxo1c3Vj$Sx0VDLD0lczaw4qe2aUdp2WcdE+VBtvEO7f9JT9Rly4=', '2016-02-13 23:30:16', 0, 'jumaja2', '', '', '', 0, 1, '2016-02-13 23:30:05'),
(4, 'pbkdf2_sha256$20000$EcBQSTcj6DO1$ZTDv77nmPk+/L/ZwoQdgbnReAReBhR95Z1gswU4hzBU=', '2020-04-08 23:12:05', 0, 'ismaelrr', '', '', '', 0, 1, '2017-04-27 20:06:28'),
(5, 'pbkdf2_sha256$12000$5XUH1uJMZmjF$I83wrYxeW51p+JJKSj8fvkCSyfszjYtQaoi2YbSR3eg=', '2020-04-27 20:22:54', 0, 'anamr', '', '', '', 0, 1, '2017-04-27 20:22:10'),
(7, 'pbkdf2_sha256$12000$fLUY0UfkcTiN$eoCuGRljByL48YgBCMbxbb3KJPigpQxC3gul0uXux14=', '2020-06-27 21:32:04', 0, 'pedrop', '', '', '', 0, 1, '2017-04-27 21:28:06'),
(8, 'pbkdf2_sha256$15000$fcLK9O5DM7Vf$sGSJCtGlQG4Lz1sp0gfp2TDj8T7NMP0lR/ZP8q8yaAQ=', '2020-05-20 13:20:25', 0, 'dfliess', '', '', '', 0, 1, '2017-05-20 13:20:17'),
(9, 'pbkdf2_sha256$15000$B6tk1QD0FIba$MQ5Sca45tQnmztlGABG8lvI0KMM8S4ys7IT0G+KHt2I=', '2020-07-10 14:41:44', 0, 'albercardi', '', '', '', 0, 1, '2020-07-09 01:07:08'),
(10, 'pbkdf2_sha256$15000$VOj7L25PFw5Q$Va8ner+JIv3VXHRL+Xe1tbAjWtu08DzXEwBqRAgITHQ=', '2020-07-25 01:49:06', 0, 'anaajimc', '', '', '', 0, 1, '2020-07-25 01:45:22'),
(11, 'pbkdf2_sha256$15000$9Xdz8nuEOFEG$N0LkjizXY4Un98nmS3t+gCp7EAOoFIK8OEBoi4wBEvE=', '2020-07-24 02:09:10', 0, 'jphandal', '', '', '', 0, 1, '2017-07-25 02:09:10'),
(12, 'pbkdf2_sha256$15000$V1vmKdAZYhVn$sp76ol/PCUrLMSzvX7wKxrtsk7qOoIXe3bky+WdUBcE=', '2020-06-25 02:30:36', 0, 'angycasti', '', '', '', 0, 1, '2017-07-25 02:30:36'),
(13, 'pbkdf2_sha256$15000$d7QwEGvX1BAe$1zHhMEkdqMuazyU/K0/brgzfcC7dQSbrHsfi/MOKwJg=', '2020-05-25 02:34:32', 0, 'emilioladeveze', '', '', '', 0, 1, '2017-07-25 02:33:33'),
(14, 'pbkdf2_sha256$15000$dAOIU2wvtWhI$IzwDXZvUTFhkV7jz3cO8xb/n/r4sFsScMyLI/R/icfE=', '2017-07-25 03:14:42', 0, 'juanc.ms', '', '', '', 0, 1, '2017-07-25 03:14:42'),
(15, 'pbkdf2_sha256$15000$Ol86dPLWoBcR$3MSy0VEZlfEwgE5o3y7UF0wboXl/Z+xCUrSVM0boSU4=', '2020-06-16 02:24:27', 0, 'mduenas', '', '', '', 0, 1, '2017-07-25 03:20:01'),
(16, 'pbkdf2_sha256$15000$B5sFGqwEMzyv$QOCgWmXhjZPuz6K2F/GnnHraoZfR0dJfyC58I5W4kDU=', '2017-07-26 02:44:27', 0, 'robin007', '', '', '', 0, 1, '2017-07-26 02:44:27'),
(17, 'pbkdf2_sha256$15000$hG6L0YGKXrjn$VR0+G9YPEn08CoBgGP2G4AO70vCDjuUhGYhk+yg9Nvg=', '2017-07-31 19:18:52', 0, 'jcamilion', '', '', '', 0, 1, '2017-07-29 16:18:20'),
(18, 'pbkdf2_sha256$15000$6wN3nRX5OgC6$wcWY8yzhamjNmRNOxxLFX1CFw+4v3KT7K3Xg55Lgt3s=', '2017-08-11 16:18:27', 0, 'jeronimo', '', '', '', 0, 1, '2017-08-01 13:20:41'),
(19, 'pbkdf2_sha256$15000$WRr1ZLRD8ZVQ$LnL042ck2PSTgJ5XwgmCHO/jsykOWdx0xUfcEGIGhr4=', '2017-08-03 14:26:12', 0, 'nicozenklussen', '', '', '', 0, 1, '2017-08-03 14:26:12'),
(20, 'pbkdf2_sha256$15000$abwu8y40H8dT$M+b1MKrU/7/8D20oDtYfHz9bZ1gvB6FJGlP500u/Mz0=', '2017-08-04 10:35:53', 0, 'juanma2017', '', '', '', 0, 1, '2017-08-04 10:35:41'),
(21, 'pbkdf2_sha256$15000$f1zzB1rQdLvl$va+IA5spX7GLJelGHkNKSOsMu2Eht3s7tZx6ubde7w0=', '2017-09-11 20:48:30', 0, 'jvolosin', '', '', '', 0, 1, '2017-09-11 20:48:16'),
(22, 'pbkdf2_sha256$15000$xIg9KWF63Ky6$D+fuJ9DaqTpWrmLCIVi6gLQvtDZ9DmbI53SFOV/EJk4=', '2017-10-29 23:06:03', 0, 'ignaciozeolite', '', '', '', 0, 1, '2017-10-29 23:05:42'),
(23, 'pbkdf2_sha256$15000$zX6TJbkDgoDI$aUkYsH9bHvD1uvu/UjgCvxcPmlo+ZcYbi/CkBhsDuj8=', '2017-11-03 22:51:16', 0, 'Andreiaurbano', '', '', '', 0, 1, '2017-11-03 22:51:16'),
(24, 'pbkdf2_sha256$15000$5NeTF7QCl9GN$UqMm8p8ILsS466uUeWBmXSMLXWPocFVLJQ8BaWVXZcI=', '2017-11-18 01:55:55', 0, 'Yeisy', '', '', '', 0, 1, '2017-11-18 01:52:08'),
(25, 'pbkdf2_sha256$15000$zpqTB2Cn6UF2$Kzha/rLVsyinAO6DbBgSZHyu5uksmDygGCYXvnAK4HY=', '2018-01-01 00:40:28', 0, 'marisafdez', '', '', '', 0, 1, '2018-01-01 00:40:28'),
(26, 'pbkdf2_sha256$15000$84PumnCyeK3S$oIVmZNMAb7fIEfL8UGoAJ+NTCh27VGJYB0Lyjb1r2qw=', '2018-01-01 15:48:33', 0, 'ponce_fabian65', '', '', '', 0, 1, '2018-01-01 15:48:33'),
(27, 'pbkdf2_sha256$15000$S6nmI2FPsYyn$VExg/j1vEYp5ZwB6H1MihzJWP40KB1Z7uMKVBoLMbs8=', '2018-01-01 18:21:04', 0, 'xvazquez', '', '', '', 0, 1, '2018-01-01 18:20:14'),
(28, 'pbkdf2_sha256$15000$CAEZ9T1ReBlf$5umM00C7R0AAWllbITk0l+89TLLdLKlI+NeLzseg+qE=', '2018-01-02 05:02:52', 0, 'Noerivero', '', '', '', 0, 1, '2018-01-02 05:02:36'),
(29, 'pbkdf2_sha256$15000$AK6Gt6KNuYfI$QcA8F12EHkuOhAfZFZYDj9whC4WnF4JJEFWuJHpIJrY=', '2018-01-02 21:01:41', 0, 'Quilan', '', '', '', 0, 1, '2018-01-02 21:01:41'),
(30, 'pbkdf2_sha256$15000$XDnTbWgCpKSy$5WFPyabn0KRSgiP9WanpLjGqNCwgM5iNHabrgs5FXjk=', '2018-01-03 01:29:19', 0, 'drmarcoaranda', '', '', '', 0, 1, '2018-01-03 01:29:19'),
(31, 'pbkdf2_sha256$15000$VDJqHJaUqZaP$mnByamqu4Ql6qdaG8/09Yqm7CfPgjTuBKFQk0KhDDKM=', '2018-04-03 02:47:01', 0, 'palalo', '', '', '', 0, 1, '2018-04-03 02:47:01'),
(32, 'pbkdf2_sha256$15000$lyhIoedIgQOu$JdB3vbruy9CLaf+/00den9Z+XhuTSNtomZmtLMrKvd0=', '2018-06-03 15:21:11', 0, 'gandolfoe', '', '', '', 0, 1, '2018-06-03 15:20:47'),
(33, 'pbkdf2_sha256$15000$XQOn5pKMJhaq$U9EKHivS7e+/5yPombP73MMHp9QllgK6zAnAPmJ3uiQ=', '2018-06-05 02:43:47', 0, 'jp.salica', '', '', '', 0, 1, '2018-06-05 02:43:35'),
(34, 'pbkdf2_sha256$15000$pS1l2bOLTWRp$UcjyoEHnIWXCJRiykmwemFTRAVpjH2RmZGFbSVbkoVQ=', '2018-09-18 19:55:07', 0, 'wistix', '', '', '', 0, 1, '2018-09-18 19:49:10'),
(35, 'pbkdf2_sha256$15000$YCSEHvE0Jr6V$/RWLBzTmYuQ+zXrTBv7Nkd6Gxu1P03tIwXhcsLuAw7Q=', '2020-03-11 12:53:02', 0, 'emilioepk87', '', '', '', 0, 1, '2018-10-11 01:06:54'),
(36, 'pbkdf2_sha256$15000$twuL6VUSCk1p$ipY1gaqpt4FK0PMBYwmPdeEugFMWw6kh3UcKy+wKwLQ=', '2018-11-17 11:02:47', 0, 'lorenzo', '', '', '', 0, 1, '2018-11-17 11:01:48'),
(37, 'pbkdf2_sha256$15000$dpHYiisxKslW$pB8Bg9rf/GNSKJq7v4hogqtsqj6M5nOP/rhAPqRidV8=', '2019-01-06 03:02:33', 0, 'juanloayza', '', '', '', 0, 1, '2018-12-27 21:24:50'),
(38, 'pbkdf2_sha256$15000$QS2hgaK3FjWL$6o+Kgzj27IbFnzqtC21qoteeckuQp6M9YcHidTM0Shw=', '2019-06-13 20:43:33', 0, 'gmateos', '', '', '', 0, 1, '2019-06-13 20:43:33'),
(39, 'pbkdf2_sha256$15000$2p1srfEgI3l6$NqEaC9vN++hO7YCMSixLzUOF1g5j9QWSVi9Uy9p9PD0=', '2019-06-24 11:13:29', 0, 'gmateos1', '', '', '', 0, 1, '2019-06-14 01:17:56'),
(40, 'pbkdf2_sha256$15000$LtiFH8ppPccu$YGdclAY/7LtamrEw5KL6fp2TsD8+njS6OKycZ0AcbR4=', '2019-06-16 00:58:10', 0, 'pabloder', '', '', '', 0, 1, '2019-06-16 00:57:46'),
(41, 'pbkdf2_sha256$15000$M5dXOhCZDH0q$d+eE69unM9SI1asKk2kfgVwNf4258Vuw9ozLBthzt2Y=', '2019-07-25 23:00:25', 0, 'angelina', '', '', '', 0, 1, '2019-06-16 20:36:53'),
(42, 'pbkdf2_sha256$15000$zpO377iVJ2Pp$ea3WDK/MkifLqIEHNV1C7AY1/J+GWFrhOfAaJ07bzbA=', '2019-06-17 22:02:59', 0, 'Tavo532', '', '', '', 0, 1, '2019-06-17 22:02:27'),
(43, 'pbkdf2_sha256$15000$KyAHgsnXpOFi$gq7MnQB4DBX/Y1Up0Q3+OWsZyYGxnyujR5PL7qUNSho=', '2019-06-30 19:37:05', 0, 'diegodomin', '', '', '', 0, 1, '2019-06-30 19:35:05'),
(44, 'pbkdf2_sha256$15000$kvXSunrBVprB$SB7p/gNzfUC/afBhpDOkAZXuaCunuMpKvaP/Oc3x+bg=', '2019-07-02 12:51:23', 0, 'paulorolfi@hotmail.com', '', '', '', 0, 1, '2019-07-01 19:22:58'),
(45, 'pbkdf2_sha256$15000$LoAmZHRtulsZ$TzFiMvBZh4AHM/VSb9T0bWHS7fR70luTComJu9nyXCI=', '2019-07-05 15:52:49', 0, 'DiegoGF', '', '', '', 0, 1, '2019-07-05 15:52:29'),
(46, 'pbkdf2_sha256$15000$D6fgFEq3PDb5$JN+wu7p7d4DdnG2G1WCP0pv1dsKRDApd2C6e2APqiWo=', '2019-07-05 17:40:18', 0, 'robertoconde', '', '', '', 0, 1, '2019-07-05 17:40:18'),
(47, 'pbkdf2_sha256$15000$2iMnGTrNZqZo$t+G4b1mix2jw/o4JvY5gQ7IDmIis0Ah6qESs4wu9KD4=', '2019-07-05 18:17:52', 0, 'felipe8ad', '', '', '', 0, 1, '2019-07-05 18:17:36'),
(48, 'pbkdf2_sha256$15000$G7N2CUai2EAY$KiKAEtcwhBrSp0FDnCi06IkHXTg7hBxJ7L3Lm1jO5jQ=', '2019-07-05 18:41:46', 0, 'Tetracaina', '', '', '', 0, 1, '2019-07-05 18:41:23'),
(49, 'pbkdf2_sha256$15000$u6f3T3qhXMUS$WIz7zcNyzqfetnAqM6cNIWr8O0eovYR5Fbi9yKopysQ=', '2019-08-15 21:03:10', 0, 'almardeltoro', '', '', '', 0, 1, '2019-07-05 19:05:19'),
(50, 'pbkdf2_sha256$15000$kcmX1creW8g5$z/5vUYVu6RTK+lQ5y5cFDPEpWy4s18pb+NpsO+/t6TI=', '2019-07-05 19:35:40', 0, 'Acarrera1', '', '', '', 0, 1, '2019-07-05 19:35:40'),
(51, 'pbkdf2_sha256$15000$QEEUePVByGk1$gsZySAJzT0xXsdGBWrHVS/4VakzIWdfJ3M8dtPHzKDk=', '2019-07-05 19:45:17', 0, 'RosaAlarcon', '', '', '', 0, 1, '2019-07-05 19:45:17'),
(52, 'pbkdf2_sha256$15000$tX7kboFd7CM0$gtRDvWYujnZ0SQTMkR3w8DJhoiyoPFbLUHZ+TaPBEYw=', '2019-07-05 21:18:49', 0, 'Vcofta', '', '', '', 0, 1, '2019-07-05 21:18:26'),
(53, 'pbkdf2_sha256$15000$2aUOuDrAgSSp$TPhZhkB324EhE4QwOi+y8MrZi5ADXMQCI0kxgeiDkKQ=', '2019-07-06 02:15:56', 0, 'fcorujo', '', '', '', 0, 1, '2019-07-06 02:15:35'),
(54, 'pbkdf2_sha256$15000$uoDxZohU0FKe$ACq1sSYUW71EbVaUSpVqs7H1t7j/j5PRZPjkwf/WW5U=', '2019-07-06 10:04:33', 0, 'Andre8712', '', '', '', 0, 1, '2019-07-06 10:03:53'),
(55, 'pbkdf2_sha256$15000$igBJ0NvDJPr2$EBm1EHIUh7pbgQa17v81ElJh3aQUbFZkEhtgzyDv2gc=', '2019-07-07 14:24:43', 0, 'Draalice12', '', '', '', 0, 1, '2019-07-07 14:24:14'),
(56, 'pbkdf2_sha256$15000$wJ9n3YGwbdDy$CXJK5M1ja4O/u0G7/5vk1TCpvdNtFDCAgaxwQSGlwiE=', '2019-07-07 17:54:00', 0, 'doctoralvarez', '', '', '', 0, 1, '2019-07-07 17:53:49'),
(57, 'pbkdf2_sha256$15000$81vYvJ6lLQ5p$eVbM4rtIlp9hszbUkxP2CpNaLgHUOZEHpreuQwYrg7Q=', '2019-07-08 03:22:15', 0, 'gmvamado', '', '', '', 0, 1, '2019-07-08 03:21:41'),
(58, 'pbkdf2_sha256$15000$gkrLDDd7fHNg$X7MNRNFqFC6rzIb8Yx2y4cuqcv0+JkB6Eg621x8R4Fs=', '2019-07-08 06:43:44', 0, 'shalomsg', '', '', '', 0, 1, '2019-07-08 06:37:26'),
(59, 'pbkdf2_sha256$15000$kQSzOsxPQaeX$mlBOpAjTstU58umJ+X/lUicEEQf4EaogT4OI9/oL18g=', '2019-08-06 00:32:10', 0, 'tonino2265', '', '', '', 0, 1, '2019-08-05 22:36:20'),
(60, 'pbkdf2_sha256$15000$CryMyZkOtNPS$JvQg8Dp2LmbiSvnHeoo+RDdKfb75xqm5fOU+yOKUy08=', '2019-08-14 19:38:46', 0, 'Oftalmologiaplus', '', '', '', 0, 1, '2019-08-14 19:38:46'),
(61, 'pbkdf2_sha256$15000$DTi84agaBslg$DSQwIY5dn69sKiYG/QZnnm6Vr9oe/gAdT5fULjUR57w=', '2019-08-26 00:03:13', 0, 'alejandro', '', '', '', 0, 1, '2019-08-23 22:23:12'),
(62, 'pbkdf2_sha256$15000$4WJOgWuEXy35$wWioLNwDqiAHmrTE11uCQo+SYYm1EP2B+n+sS1FLHTA=', '2019-09-05 18:01:35', 0, 'piloto', '', '', '', 0, 1, '2019-09-05 18:01:08'),
(63, 'pbkdf2_sha256$15000$gXg0sHmTEsaR$hs0o8ceNbh8V2EFKub0IxpONRLDFeCh5/Ru3/ZTFUzk=', '2019-10-02 19:14:25', 0, 'enzodgr', '', '', '', 0, 1, '2019-10-02 19:14:07'),
(64, 'pbkdf2_sha256$15000$Qgb8aZXrx136$FawBGnAnYnteq85MCExnsHt+mFmFFq5ZmgAqP/R2DJ0=', '2019-11-15 03:17:40', 0, 'DrEspi', '', '', '', 0, 1, '2019-11-15 03:17:07'),
(65, 'pbkdf2_sha256$15000$nr2lnXBU8B3T$qkcjq7ipbZwN8FYRHsKzjCpcnPOzZL7GjbbeIKewTk4=', '2019-12-24 01:17:23', 0, 'mandima', '', '', '', 0, 1, '2019-12-22 15:46:10'),
(66, 'pbkdf2_sha256$15000$OlnTdo4aoDc8$gNgJsJaSu1HMcKJQp7VdhRfo4RS3Hy0MnzKAPF0175A=', '2020-06-02 20:39:29', 0, 'manuelenri', '', '', '', 0, 1, '2020-06-02 20:39:29'),
(67, 'pbkdf2_sha256$15000$QYm4zgw4cPiO$RAPHWcoV4wLcnPXEhecfSm9T9rwMMLXHhD8T2YirYz4=', '2020-10-10 19:28:37', 0, 'pauasess', '', '', '', 0, 1, '2020-10-10 19:28:37'),
(68, 'pbkdf2_sha256$15000$Wxu9OVlvk25K$e6f5+FSg7sC9ywbQ7UmLWpr0GCs4mUctaBDVtrisnvk=', '2020-10-21 19:10:28', 0, 'Eliana', '', '', '', 0, 1, '2020-10-21 19:09:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(13, 1, 22),
(14, 1, 23),
(15, 1, 24),
(16, 1, 28),
(17, 1, 29),
(18, 1, 30),
(10, 1, 34),
(11, 1, 35),
(12, 1, 36);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `user_id`, `content_type_id`, `object_id`, `object_repr`, `action_flag`, `change_message`) VALUES
(1, '2015-10-08 23:59:13', 1, 8, '1', 'Juan Manuel Jacquet - 29387656 (Jerarquicos Salud)', 1, ''),
(2, '2016-02-03 04:15:21', 2, 3, '1', 'ivancimino', 2, 'Modifica password.'),
(3, '2016-02-03 04:16:06', 2, 3, '1', 'ivancimino', 2, 'Modifica is_staff, is_superuser y user_permissions.'),
(4, '2016-02-03 04:16:49', 2, 3, '1', 'ivancimino', 2, 'Modifica is_staff.'),
(5, '2016-02-15 19:43:57', 2, 12, '1', 'Medicamente No APTO! - danger', 1, ''),
(6, '2016-02-15 19:44:23', 2, 12, '2', 'Rx Refractiva - primary', 1, ''),
(7, '2016-02-15 19:45:01', 2, 12, '3', 'CONSENTIMIENTO - primary', 1, ''),
(8, '2016-02-15 19:45:30', 2, 12, '4', 'Tratamiento Gotas - primary', 1, ''),
(9, '2016-02-15 19:46:00', 2, 12, '5', 'Prominencia Frontal - primary', 1, ''),
(10, '2016-02-15 20:09:11', 2, 12, '1', 'Medicamente No APTO! - danger', 2, 'Modifica contenido.'),
(11, '2016-02-15 20:10:14', 2, 12, '2', 'SUSPENDER CIRUGÍA hasta estabilización - primary', 2, 'Modifica encabezado.'),
(12, '2016-02-15 20:10:51', 2, 12, '3', 'CONSENTIMIENTO INFORMADO PERSONALIZADO - primary', 2, 'Modifica encabezado.'),
(13, '2016-02-15 20:12:23', 2, 12, '4', 'Tratamiento Gotas (prostaglandinas)  - primary', 2, 'Modifica encabezado y contenido.'),
(14, '2016-02-15 20:14:43', 2, 12, '6', 'Realizar dilatación pupilar - primary', 1, ''),
(15, '2016-02-15 20:18:53', 2, 12, '7', 'Prominencia Frontal/Enoftalmos - primary', 1, ''),
(16, '2016-02-15 20:21:51', 2, 12, '7', 'Hendidura Palpebral - primary', 2, 'Modifica encabezado y contenido.'),
(17, '2016-02-15 21:15:08', 1, 12, '4', 'Tratamiento Gotas (prostaglandinas)  - info', 2, 'Modifica tipo.'),
(18, '2016-02-15 21:15:20', 1, 12, '2', 'SUSPENDER CIRUGÍA hasta estabilización - danger', 2, 'Modifica tipo.'),
(19, '2016-02-15 21:39:42', 1, 12, '8', 'Colocar lente ASFÉRICA con aberración NEGATIVA y CORREGIR CON FÓRMULAS ESPECIALES - info', 1, ''),
(20, '2016-02-15 21:41:39', 1, 12, '8', 'Colocar lente ASFÉRICA con aberración NEGATIVA y CORREGIR CON FÓRMULAS ESPECIALES - info', 2, 'Modifica contenido.'),
(21, '2016-02-15 21:44:05', 1, 12, '9', 'Colocar lente ESFÉRICA (aberración POSITIVA) y CORREGIR CON FÓRMULAS ESPECIALES - info', 1, ''),
(22, '2016-02-15 21:44:51', 1, 12, '8', 'Colocar lente ASFÉRICA con aberración NEGATIVA y CORREGIR CON FÓRMULAS ESPECIALES - info', 2, 'Modifica orden.'),
(23, '2016-02-15 21:45:01', 1, 12, '9', 'Colocar lente ESFÉRICA (aberración POSITIVA) y CORREGIR CON FÓRMULAS ESPECIALES - info', 2, 'Modifica orden.'),
(24, '2016-02-15 21:47:46', 1, 12, '9', 'Colocar lente ESFÉRICA (aberración POSITIVA) y CORREGIR CON FÓRMULAS ESPECIALES - info', 2, 'No ha modificado ningún campo.'),
(25, '2016-02-15 21:48:48', 1, 12, '10', ' realizar CONSENTIMIENTO INFORMADO PERSONALIZADO, registrando dicha afección. - info', 1, ''),
(26, '2016-02-15 21:49:44', 1, 12, '11', 'SUSPENDER las mismas luego de cirugía!. Cambio por betabloqueantes (si el paciente no presenta contraindicaciones para su uso) - primary', 1, ''),
(27, '2016-02-17 01:09:26', 1, 12, '11', 'SUSPENDER Prostaglandinas luego de cirugía!. Cambio por betabloqueantes (si el paciente no presenta contraindicaciones para su uso) - info', 2, 'Modifica encabezado, contenido y tipo.'),
(28, '2016-02-17 01:10:25', 1, 12, '10', ' CONSENTIMIENTO INFORMADO PERSONALIZADO - info', 2, 'Modifica encabezado y contenido.'),
(29, '2016-02-17 01:15:20', 1, 12, '11', 'SUSPENDER Prostaglandinas luego de cirugía!. Cambio por betabloqueantes (si el paciente no presenta contraindicaciones para su uso) - info', 2, 'No ha modificado ningún campo.'),
(30, '2016-02-17 01:18:15', 1, 12, '10', ' CONSENTIMIENTO INFORMADO PERSONALIZADO - info', 2, 'Modifica contenido.'),
(31, '2016-02-17 01:28:29', 1, 12, '6', 'Realizar dilatación pupilar - primary', 2, 'Modifica contenido.'),
(32, '2016-02-17 01:29:14', 1, 12, '7', 'Hendidura palpebral estrecha - primary', 2, 'Modifica encabezado y contenido.'),
(33, '2016-02-17 01:30:30', 1, 12, '7', 'Hendidura palpebral semiestrecha y/o fimótica - primary', 2, 'Modifica encabezado.'),
(34, '2016-02-17 01:35:53', 1, 12, '12', 'Blefaritis - info', 1, ''),
(35, '2016-02-17 01:53:31', 1, 12, '13', 'Opacidad corneal central - info', 1, ''),
(36, '2016-02-17 01:53:54', 1, 12, '13', 'Opacidad corneal central - info', 2, 'Modifica orden.'),
(37, '2016-02-17 02:03:16', 1, 12, '14', 'Realizar facoemulsificación (técnica minusiosa) o técnica extracapsular o MSICS - primary', 1, ''),
(38, '2016-02-17 02:10:03', 1, 12, '15', 'Realizar facoemulsificación - primary', 1, ''),
(39, '2016-02-17 02:14:38', 1, 12, '15', 'Realizar técnica extracapsular o MSICS - info', 2, 'Modifica encabezado, contenido y tipo.'),
(40, '2016-02-17 02:19:54', 1, 12, '16', 'Realizar facoemulsificación.  - info', 1, ''),
(41, '2016-02-17 02:27:28', 1, 12, '17', 'CONSENTIMIENTO INFORMADO PERSONALIZADO - info', 1, ''),
(42, '2016-02-17 02:27:45', 1, 12, '17', 'CONSENTIMIENTO INFORMADO PERSONALIZADO - info', 2, 'Modifica orden.'),
(43, '2016-02-17 02:30:24', 1, 12, '18', 'Tinción con azul tripán - primary', 1, ''),
(44, '2016-02-17 02:34:51', 1, 12, '19', 'DESCARTAR GLAUCOMA DE ÁNGULO CERRADO! - danger', 1, ''),
(45, '2016-02-17 02:37:50', 1, 12, '19', 'DESCARTAR GLAUCOMA DE ÁNGULO CERRADO! - danger', 2, 'Modifica contenido.'),
(46, '2016-02-17 02:39:04', 1, 12, '19', 'DESCARTAR GLAUCOMA DE ÁNGULO CERRADO! - danger', 2, 'Modifica contenido.'),
(47, '2016-02-17 02:50:26', 1, 12, '20', 'CUIDADO !!! (Símbolo de atención) pérdida de control de la capsulorrexis - danger', 1, ''),
(48, '2016-02-17 02:51:46', 1, 12, '20', 'CUIDADO !!! (Símbolo de atención) pérdida de control de la capsulorrexis - danger', 2, 'Modifica contenido.'),
(49, '2016-02-17 02:52:35', 1, 12, '20', 'CUIDADO !!! (Símbolo de atención) pérdida de control de la capsulorrexis - danger', 2, 'No ha modificado ningún campo.'),
(50, '2016-02-17 02:53:34', 1, 12, '21', 'CUIDADO !!! (Símbolo de atención) pérdida de control de la capsulorrexis - danger', 1, ''),
(51, '2016-02-17 02:55:55', 1, 12, '22', 'Sinequiólisis con espátula bajo viscoelástico - info', 1, ''),
(52, '2016-02-17 02:56:11', 1, 12, '6', 'Realizar dilatación pupilar - primary', 2, 'No ha modificado ningún campo.'),
(53, '2016-02-17 02:57:03', 1, 12, '22', 'Sinequiólisis con espátula bajo viscoelástico - info', 2, 'Modifica contenido.'),
(54, '2016-02-17 02:58:29', 1, 12, '9', 'Colocar lente ESFÉRICA (aberración POSITIVA) y CORREGIR CON FÓRMULAS ESPECIALES - info', 2, 'No ha modificado ningún campo.'),
(55, '2016-02-17 02:58:50', 1, 12, '9', 'Colocar lente ESFÉRICA (aberración POSITIVA) y CORREGIR CON FÓRMULAS ESPECIALES - info', 2, 'Modifica contenido.'),
(56, '2016-02-17 02:59:05', 1, 12, '8', 'Colocar lente ASFÉRICA con aberración NEGATIVA y CORREGIR CON FÓRMULAS ESPECIALES - info', 2, 'Modifica contenido.'),
(57, '2016-02-20 15:38:33', 1, 12, '20', 'CUIDADO !!! (Símbolo de atención) pérdida de control de la capsulorrexis - danger', 2, 'Modifica contenido.'),
(58, '2016-02-20 16:37:58', 1, 12, '23', 'Técnica sugerida: Stop and chop o Divide and conquer.  - primary', 1, ''),
(59, '2016-02-20 16:38:09', 1, 12, '23', 'Técnica sugerida: Stop and chop o Divide and conquer.  - primary', 2, 'Modifica orden.'),
(60, '2016-02-20 16:38:49', 1, 12, '24', 'Técnicas de Faco chop o Quick chop - primary', 1, ''),
(61, '2016-02-20 16:40:03', 1, 12, '24', 'Técnica sugerida: Faco chop o Faco Quick chop - primary', 2, 'Modifica encabezado y contenido.'),
(62, '2016-02-20 16:41:10', 1, 12, '23', 'Técnica sugerida: Stop and chop o Divide and conquer.  - primary', 2, 'Modifica contenido.'),
(63, '2016-02-20 16:59:30', 1, 12, '24', 'Técnica sugerida: Faco chop o Faco Quick chop - primary', 2, 'Modifica contenido y orden.'),
(64, '2016-02-20 17:00:32', 1, 12, '25', 'Técnica sugerida: Stop and chop o Divide and conquer.  - primary', 1, ''),
(65, '2016-02-20 17:00:43', 1, 12, '23', 'Técnica sugerida: Stop and chop o Divide and conquer.  - primary', 2, 'No ha modificado ningún campo.'),
(66, '2016-02-20 17:00:57', 1, 12, '25', 'Técnica sugerida: Stop and chop o Divide and conquer.  - primary', 2, 'Modifica contenido.'),
(67, '2016-02-20 17:01:32', 1, 12, '24', 'Técnica sugerida: Faco chop o Faco Quick chop - primary', 2, 'Modifica contenido.'),
(68, '2016-02-20 17:01:43', 1, 12, '24', 'Técnica sugerida: Faco chop o Faco Quick chop - primary', 2, 'No ha modificado ningún campo.'),
(69, '2016-02-20 17:02:11', 1, 12, '26', 'Técnica sugerida:  - primary', 1, ''),
(70, '2016-02-20 17:04:10', 1, 12, '27', '1 - primary', 1, ''),
(71, '2016-02-20 17:06:48', 1, 12, '25', 'Tinción con azul tripán - info', 2, 'Modifica encabezado, contenido y tipo.'),
(72, '2016-02-20 17:17:23', 1, 12, '26', 'Técnica sugerida:  - primary', 2, 'Modifica contenido.'),
(73, '2016-02-20 17:19:43', 1, 12, '11', 'SUSPENDER Prostaglandinas luego de cirugía! - danger', 2, 'Modifica encabezado y tipo.'),
(74, '2016-02-20 17:47:08', 1, 12, '26', 'Realizar bloqueo peribulbar o subtenon. - primary', 2, 'Modifica encabezado y contenido.'),
(75, '2016-02-20 17:50:14', 1, 12, '27', 'Cuidado !!! (Símbolo de atención) pérdida de control de la capsulorrexis - danger', 2, 'Modifica encabezado, tipo y orden.'),
(76, '2016-02-20 18:06:49', 1, 12, '27', 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado! - danger', 2, 'Modifica encabezado y contenido.'),
(77, '2016-02-20 18:08:14', 1, 12, '28', 'Cuidado en la realización de la rexis y las maniobras en el cuadrante afectado! - danger', 1, ''),
(78, '2016-02-20 18:11:34', 1, 12, '27', 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado! - danger', 2, 'Modifica contenido.'),
(79, '2016-02-20 18:12:29', 1, 12, '28', 'Cuidado en la realización de la rexis y las maniobras en el cuadrante afectado! - danger', 2, 'Modifica contenido.'),
(80, '2016-02-20 18:15:26', 1, 12, '29', 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado! - danger', 1, ''),
(81, '2016-02-20 18:16:24', 1, 12, '30', 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado! - primary', 1, ''),
(82, '2016-02-20 18:17:22', 1, 12, '30', 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado! - danger', 2, 'Modifica contenido, tipo y orden.'),
(83, '2016-02-20 18:19:30', 1, 12, '30', 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado! - danger', 2, 'Modifica contenido.'),
(84, '2016-02-20 18:19:42', 1, 12, '29', 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado! - danger', 2, 'Modifica contenido.'),
(85, '2016-02-20 18:19:50', 1, 12, '28', 'Cuidado en la realización de la rexis y las maniobras en el cuadrante afectado! - danger', 2, 'Modifica contenido.'),
(86, '2016-02-20 18:20:03', 1, 12, '27', 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado! - danger', 2, 'Modifica contenido.'),
(87, '2016-02-20 18:20:16', 1, 12, '25', 'Tinción con azul tripán - info', 2, 'Modifica contenido.'),
(88, '2016-02-20 18:20:26', 1, 12, '24', 'Técnica sugerida: Faco chop o Faco Quick chop - primary', 2, 'No ha modificado ningún campo.'),
(89, '2016-02-20 18:38:37', 1, 12, '31', 'Realizar VISCODISECCIÓN - danger', 1, ''),
(90, '2016-02-20 18:46:30', 1, 12, '30', 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado! - danger', 2, 'Modifica contenido.'),
(91, '2016-02-20 23:10:07', 1, 12, '30', 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado! - danger', 2, 'No ha modificado ningún campo.'),
(92, '2016-02-21 19:07:24', 1, 12, '32', 'CUIDADO en rexis y realización de maniobras en el cuadrante afectado!. - primary', 1, ''),
(93, '2016-02-21 19:09:39', 1, 12, '32', 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado! - danger', 2, 'Modifica encabezado, contenido, tipo y orden.'),
(94, '2016-02-21 19:10:07', 1, 12, '32', 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado! - danger', 2, 'Modifica contenido.'),
(95, '2016-02-21 19:11:20', 1, 12, '33', 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado! - danger', 1, ''),
(96, '2016-02-21 19:12:10', 1, 12, '33', 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado! - danger', 2, 'Modifica contenido.'),
(97, '2016-02-21 19:14:54', 1, 12, '34', 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado! - danger', 1, ''),
(98, '2016-02-21 19:15:40', 1, 12, '29', 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado! - danger', 2, 'Modifica contenido.'),
(99, '2016-02-21 19:16:21', 1, 12, '34', 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado! - danger', 2, 'Modifica contenido.'),
(100, '2016-02-21 19:17:45', 1, 12, '35', 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado! - primary', 1, ''),
(101, '2016-02-21 19:18:16', 1, 12, '30', 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado! - danger', 2, 'Modifica contenido.'),
(102, '2016-02-21 19:20:27', 1, 12, '35', 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado! - danger', 2, 'Modifica contenido, tipo y orden.'),
(103, '2016-02-21 19:26:56', 1, 12, '36', 'Ecometría: cambiar la velocidad del U/S - info', 1, ''),
(104, '2016-02-21 19:27:14', 1, 12, '33', 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado! - danger', 2, 'Modifica contenido.'),
(105, '2016-02-21 19:27:31', 1, 12, '32', 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado! - danger', 2, 'Modifica contenido.'),
(106, '2016-02-21 19:27:58', 1, 12, '28', 'Cuidado en la realización de la rexis y las maniobras en el cuadrante afectado! - danger', 2, 'Modifica contenido.'),
(107, '2016-02-21 19:28:16', 1, 12, '27', 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado! - danger', 2, 'Modifica contenido.'),
(108, '2016-02-21 19:29:33', 1, 12, '8', 'Colocar lente ASFÉRICA con aberración NEGATIVA y CORREGIR CON FÓRMULAS ESPECIALES - info', 2, 'Modifica contenido.'),
(109, '2016-02-21 19:29:55', 1, 12, '9', 'Colocar lente ESFÉRICA (aberración POSITIVA) y CORREGIR CON FÓRMULAS ESPECIALES - info', 2, 'Modifica contenido.'),
(110, '2016-02-21 19:30:10', 1, 12, '8', 'Colocar lente ASFÉRICA con aberración NEGATIVA y CORREGIR CON FÓRMULAS ESPECIALES - info', 2, 'Modifica contenido.'),
(111, '2016-02-21 19:33:29', 1, 12, '37', 'Retinopatía DBT - info', 1, ''),
(112, '2016-02-21 19:35:17', 1, 12, '38', 'Glaucoma de ángulo cerrado - info', 1, ''),
(113, '2016-02-21 19:39:14', 1, 12, '39', 'Glaucoma de ángulo abierto - danger', 1, ''),
(114, '2016-02-21 19:49:20', 1, 12, '2', 'Descartar glaucoma! - danger', 2, 'Modifica encabezado y contenido.'),
(115, '2016-02-21 19:50:46', 1, 12, '40', 'Degeneración macular asociada a la edad o tóxica (medicamentosa) - danger', 1, ''),
(116, '2016-02-21 19:51:24', 1, 12, '40', 'Degeneración macular asociada a la edad o tóxica (medicamentosa) - danger', 2, 'No ha modificado ningún campo.'),
(117, '2016-02-21 19:52:27', 1, 12, '41', 'Cicatriz macular o membrana epirretinal - danger', 1, ''),
(118, '2016-02-21 19:53:45', 1, 12, '42', 'Otras patologías - info', 1, ''),
(119, '2016-02-21 19:55:03', 1, 12, '40', 'Degeneración macular asociada a la edad o tóxica (medicamentosa) - danger', 2, 'Modifica contenido.'),
(120, '2016-02-21 19:55:10', 1, 12, '42', 'Otras patologías - info', 2, 'No ha modificado ningún campo.'),
(121, '2016-02-21 19:55:20', 1, 12, '42', 'Otras patologías - info', 2, 'Modifica contenido.'),
(122, '2016-02-21 19:55:30', 1, 12, '41', 'Cicatriz macular o membrana epirretinal - danger', 2, 'Modifica contenido.'),
(123, '2016-02-21 19:55:52', 1, 12, '39', 'Glaucoma de ángulo abierto - info', 2, 'Modifica contenido y tipo.'),
(124, '2016-02-21 19:56:12', 1, 12, '38', 'Glaucoma de ángulo cerrado - info', 2, 'Modifica contenido.'),
(125, '2016-02-21 19:57:35', 1, 12, '37', 'Retinopatía DBT - info', 2, 'Modifica contenido.'),
(126, '2016-02-21 19:59:33', 1, 12, '43', 'Degeneración macular asociada a la edad o tóxica (medicamentosa) - danger', 1, ''),
(127, '2016-02-21 20:01:06', 1, 12, '44', 'Cicatriz macular o membrana epirretinal - danger', 1, ''),
(128, '2016-02-21 20:02:38', 1, 12, '45', 'Cooperación buena o media - primary', 1, ''),
(129, '2016-02-21 20:03:23', 1, 12, '46', 'Cooperación mala - primary', 1, ''),
(130, '2016-02-21 20:06:52', 1, 12, '47', 'DESCARTAR GLAUCOMA DE ÁNGULO CERRADO! - primary', 1, ''),
(131, '2016-02-21 20:12:34', 1, 12, '48', 'Posibilidad de implantar lente tórico. - primary', 1, ''),
(132, '2016-02-21 20:14:47', 1, 12, '49', 'Colocar lente ASFÉRICA con aberración NEGATIVA y CORREGIR CON FÓRMULAS ESPECIALES - primary', 1, ''),
(133, '2016-02-21 20:15:23', 1, 12, '49', 'Colocar lente ASFÉRICA con aberración NEGATIVA y CORREGIR CON FÓRMULAS ESPECIALES - primary', 2, 'Modifica contenido.'),
(134, '2016-02-21 20:18:10', 1, 12, '50', 'SOSPECHAR ECTASIA CORNEAL - primary', 1, ''),
(135, '2016-02-21 20:19:34', 1, 12, '51', 'Posibilidad de implantar lente tórico. - primary', 1, ''),
(136, '2016-02-21 20:19:50', 1, 12, '51', 'Posibilidad de implantar lente tórico. - primary', 2, 'Modifica contenido.'),
(137, '2016-02-21 20:22:12', 1, 12, '52', 'Utilizar fórmulas hoffer Q o Holladay 2 - primary', 1, ''),
(138, '2016-02-21 20:34:05', 1, 12, '53', 'Utilizar SRK/T o Haigis. - primary', 1, ''),
(139, '2016-02-21 20:35:43', 1, 12, '54', 'Utilizar SRK/T , Olsen, Holladay 2 o Haigis L - primary', 1, ''),
(140, '2016-02-21 20:38:47', 1, 12, '55', 'CONTRAINDICACIÓN para la colocación de lente intraocular multifocal. - danger', 1, ''),
(141, '2016-02-21 20:41:51', 1, 12, '56', 'Posibilidad de implantar lente ASFÉRICA neutra o negativa (monofocal o multifocal).   - primary', 1, ''),
(142, '2016-02-21 20:45:30', 1, 12, '57', 'Posibilidad de implantar lente ESFÉRICA monofocal. - primary', 1, ''),
(143, '2016-02-21 20:46:06', 1, 12, '57', 'Posibilidad de implantar lente ESFÉRICA monofocal. - primary', 2, 'Modifica contenido.'),
(144, '2016-02-21 20:47:27', 1, 12, '58', 'Posibilidad de implantar lente ASFÉRICA neutra o negativa (monofocal o multifocal).   - primary', 1, ''),
(145, '2016-02-21 20:49:29', 1, 12, '58', 'Posibilidad de implantar lente ASFÉRICA neutra o negativa (monofocal, tórica o multifocal).   - primary', 2, 'Modifica encabezado y contenido.'),
(146, '2016-02-21 20:49:43', 1, 12, '58', 'Posibilidad de implantar lente ASFÉRICA neutra o negativa (monofocal, tórica o multifocal).   - primary', 2, 'Modifica contenido.'),
(147, '2016-02-21 20:51:16', 1, 12, '59', 'Posibilidad de implantar lente ESFÉRICA positiva (monofocal o tórica) o realización de IRL o arcuatas.   - primary', 1, ''),
(148, '2016-02-21 20:53:05', 1, 12, '58', 'Posibilidad de implantar lente ASFÉRICA neutra o negativa (monofocal o multifocal).   - primary', 2, 'Modifica encabezado y contenido.'),
(149, '2016-02-21 20:53:44', 1, 12, '59', 'Posibilidad de implantar lente ESFÉRICA positiva (monofocal o tórica) o realización de IRL o arcuatas.   - primary', 2, 'No ha modificado ningún campo.'),
(150, '2016-02-21 20:57:31', 1, 12, '59', 'Posibilidad de implantar lente ESFÉRICA positiva (monofocal o tórica) o realización de IRL o Arcuatas.   - primary', 2, 'Modifica encabezado y contenido.'),
(151, '2016-02-23 01:27:04', 1, 12, '59', 'Posibilidad de implantar lente ESFÉRICA positiva (monofocal o tórica) o realización de IRL o Arcuatas.   - primary', 2, 'No ha modificado ningún campo.'),
(152, '2016-02-25 12:27:52', 2, 12, '29', 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado! - danger', 2, 'Modifica contenido.'),
(153, '2016-02-25 12:29:09', 2, 12, '1', 'Medicamente No APTO! - danger', 2, 'Modifica contenido.'),
(154, '2016-02-25 15:52:26', 2, 12, '47', '<i class=\"fa fa-exclamation-triangle\"></i> DESCARTAR GLAUCOMA DE ÁNGULO CERRADO! - primary', 2, 'Modifica encabezado.'),
(155, '2016-02-25 15:53:43', 2, 12, '19', '<i class=\"fa fa-exclamation-triangle\"></i> DESCARTAR GLAUCOMA DE ÁNGULO CERRADO! - danger', 2, 'Modifica encabezado.'),
(156, '2016-02-25 15:54:38', 2, 12, '1', '<i class=\"fa fa-exclamation-triangle\"></i> Medicamente No APTO! - danger', 2, 'Modifica encabezado y contenido.'),
(157, '2016-02-25 16:03:17', 2, 10, '1', 'Juan Manuel - 29387656', 2, 'Modifica user, OTRAS_GOTAS y OBSERVACIONES.'),
(158, '2016-02-27 17:19:07', 1, 12, '29', 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado! - danger', 2, 'Modifica contenido.'),
(159, '2016-02-28 21:05:02', 1, 12, '5', 'Prominencia Frontal o enoftalmos - primary', 2, 'Modifica encabezado.'),
(160, '2016-02-29 20:43:15', 1, 12, '6', 'Realizar dilatación pupilar - primary', 2, 'Modifica ruta_img.'),
(161, '2016-02-29 20:43:16', 1, 12, '6', 'Realizar dilatación pupilar - primary', 2, 'Modifica ruta_img.'),
(162, '2016-02-29 20:53:20', 1, 12, '6', 'Realizar dilatación pupilar - primary', 2, 'Modifica ruta_img.'),
(163, '2016-02-29 20:55:57', 1, 12, '18', 'Tinción con azul tripán - primary', 2, 'Modifica ruta_img.'),
(164, '2016-02-29 20:56:20', 1, 12, '25', 'Tinción con azul tripán - info', 2, 'Modifica ruta_img.'),
(165, '2016-02-29 20:57:12', 1, 12, '26', 'Realizar bloqueo peribulbar o subtenon. - primary', 2, 'Modifica ruta_img.'),
(166, '2016-02-29 20:58:01', 1, 12, '24', 'Técnica sugerida: Faco chop o Faco Quick chop - primary', 2, 'Modifica ruta_img.'),
(167, '2016-02-29 21:18:42', 1, 12, '19', '<i class=\"fa fa-exclamation-triangle\"></i> DESCARTAR GLAUCOMA DE ÁNGULO CERRADO! - yellow', 2, 'Modifica tipo y ruta_img.'),
(168, '2016-03-02 02:35:50', 1, 12, '38', 'Glaucoma de ángulo cerrado - blue', 2, 'Modifica contenido y tipo.'),
(169, '2016-03-04 23:15:02', 1, 12, '3', 'CONSENTIMIENTO INFORMADO PERSONALIZADO - primary', 3, ''),
(170, '2016-03-08 20:02:02', 1, 12, '60', '99 - primary', 1, ''),
(171, '2016-03-08 20:02:19', 1, 12, '60', '99 - primary', 3, ''),
(172, '2016-03-08 20:52:50', 1, 12, '6', 'Realizar dilatación pupilar - primary', 2, 'Modifica documentacion.'),
(173, '2016-03-08 22:02:13', 1, 12, '38', 'Glaucoma de ángulo cerrado - primary', 2, 'Modifica tipo y documentacion.'),
(174, '2016-03-10 02:25:10', 1, 12, '51', 'Posibilidad de implantar lente tórico. - primary', 3, ''),
(175, '2016-03-10 02:56:27', 1, 12, '5', 'Prominencia Frontal o enoftalmos - primary', 2, 'Modifica ruta_img.'),
(176, '2016-03-10 02:57:51', 1, 12, '6', 'Realizar dilatación pupilar - primary', 2, 'No ha modificado ningún campo.'),
(177, '2016-03-10 02:58:35', 1, 12, '5', 'Prominencia Frontal o enoftalmos - primary', 2, 'Modifica ruta_img.'),
(178, '2016-03-10 03:01:51', 1, 12, '61', 'Colocar lente de mayor poder - warning', 1, ''),
(179, '2016-03-10 03:02:51', 1, 12, '62', 'Colocar lente de menor poder - warning', 1, ''),
(180, '2016-03-10 03:04:03', 1, 12, '9', 'Colocar lente ESFÉRICA (aberración POSITIVA) y CORREGIR CON FÓRMULAS ESPECIALES - info', 2, 'Modifica ruta_img.'),
(181, '2016-03-10 03:05:29', 1, 12, '50', 'SOSPECHAR ECTASIA CORNEAL - warning', 2, 'Modifica tipo.'),
(182, '2016-03-10 03:05:45', 1, 12, '47', '<i class=\"fa fa-exclamation-triangle\"></i> DESCARTAR GLAUCOMA DE ÁNGULO CERRADO! - danger', 2, 'Modifica tipo.'),
(183, '2016-03-10 03:06:03', 1, 12, '46', 'Cooperación mala - warning', 2, 'Modifica tipo.'),
(184, '2016-03-10 03:06:17', 1, 12, '45', 'Cooperación buena o media - success', 2, 'Modifica tipo.'),
(185, '2016-03-10 03:06:42', 1, 12, '38', 'Glaucoma de ángulo cerrado - warning', 2, 'Modifica tipo.'),
(186, '2016-03-11 22:36:33', 1, 12, '62', 'Colocar lente de menor poder - warning', 2, 'Modifica documentacion.'),
(187, '2016-03-11 22:38:23', 1, 12, '61', 'Colocar lente de mayor poder - warning', 2, 'Modifica documentacion.'),
(188, '2016-03-11 22:41:07', 1, 12, '8', 'Colocar lente ASFÉRICA con aberración NEGATIVA y CORREGIR CON FÓRMULAS ESPECIALES - info', 2, 'Modifica documentacion.'),
(189, '2016-03-11 22:41:28', 1, 12, '9', 'Colocar lente ESFÉRICA (aberración POSITIVA) y CORREGIR CON FÓRMULAS ESPECIALES - info', 2, 'Modifica documentacion.'),
(190, '2016-03-11 22:41:46', 1, 12, '49', 'Colocar lente ASFÉRICA con aberración NEGATIVA y CORREGIR CON FÓRMULAS ESPECIALES - primary', 2, 'Modifica documentacion.'),
(191, '2016-03-11 22:47:48', 1, 12, '18', 'Tinción con azul tripán - primary', 2, 'Modifica documentacion.'),
(192, '2016-03-11 22:48:08', 1, 12, '25', 'Tinción con azul tripán - info', 2, 'Modifica documentacion.'),
(193, '2016-03-11 22:49:23', 1, 12, '11', 'SUSPENDER Prostaglandinas luego de cirugía! - danger', 2, 'Modifica documentacion.'),
(194, '2016-03-11 22:51:30', 1, 12, '14', 'Realizar facoemulsificación (técnica minusiosa) o técnica extracapsular o MSICS - primary', 2, 'Modifica documentacion.'),
(195, '2016-03-11 22:51:58', 1, 12, '15', 'Realizar técnica extracapsular o MSICS - info', 2, 'Modifica documentacion.'),
(196, '2016-03-11 22:53:16', 1, 12, '12', 'Blefaritis - info', 2, 'Modifica documentacion.'),
(197, '2016-03-17 00:42:06', 1, 12, '47', 'DESCARTAR GLAUCOMA DE ÁNGULO CERRADO! - danger', 2, 'Modifica encabezado, contenido y ruta_img.'),
(198, '2016-03-17 01:00:24', 1, 12, '19', '<i class=\"fa fa-exclamation-triangle\"></i> DESCARTAR GLAUCOMA DE ÁNGULO CERRADO! - yellow', 3, ''),
(199, '2016-03-17 01:08:08', 1, 12, '5', 'Prominencia Frontal o enoftalmos - primary', 2, 'Modifica ruta_img.'),
(200, '2016-03-17 01:11:03', 1, 12, '63', 'sdasdsa - danger', 1, ''),
(201, '2016-03-18 02:37:02', 1, 12, '63', 'Realizar tratamiento de ojo seco, alergia o blefaritis antes de la cirugía - danger', 2, 'Modifica codigo y encabezado.'),
(202, '2016-03-18 02:37:56', 1, 12, '55', 'CONTRAINDICACIÓN para la implantación de lente intraocular multifocal. - danger', 2, 'Modifica encabezado.'),
(203, '2016-03-18 02:42:10', 1, 12, '55', 'CONTRAINDICACIÓN para implantE de lente multifocal. - danger', 2, 'Modifica encabezado.'),
(204, '2016-03-22 01:23:53', 1, 12, '48', 'Posibilidad de implantar lente tórico. - primary', 2, 'Modifica contenido.'),
(205, '2016-03-22 01:31:51', 1, 12, '55', 'CONTRAINDICACIÓN para implante de lente multifocal. - danger', 2, 'Modifica encabezado.'),
(206, '2016-03-22 01:37:13', 1, 12, '4', 'CUIDADO!: Paciente bajo tratamiento con Prostaglandinas! - warning', 2, 'Modifica encabezado y tipo.'),
(207, '2016-03-22 01:38:57', 1, 12, '4', 'Suspender Prostaglandinas! - warning', 2, 'Modifica encabezado.'),
(208, '2016-03-22 03:18:47', 1, 12, '31', 'Realizar HIDRODELINEACIÓN Y/O VISCODISECCIÓN - danger', 2, 'Modifica encabezado y contenido.'),
(209, '2016-03-23 01:33:29', 1, 12, '63', 'Realizar tratamiento de ojo seco - danger', 2, 'Modifica encabezado y contenido.'),
(210, '2016-03-29 00:33:47', 1, 12, '1', 'Medicamente No APTO! - danger', 2, 'Modifica encabezado y contenido.'),
(211, '2016-03-29 02:00:32', 1, 12, '64', 'Anestesia tópica, intracameral y/o subconjuntival - primary', 1, ''),
(212, '2016-03-29 02:03:08', 1, 12, '64', 'Anestesia tópica, intracameral y/o subconjuntival - primary', 3, ''),
(213, '2016-03-29 20:35:26', 1, 12, '23', 'Técnica sugerida: Stop and chop o Divide and conquer.  - primary', 2, 'Modifica contenido.'),
(214, '2016-03-29 20:36:06', 1, 12, '24', 'Técnica sugerida: Faco chop o Faco Quick chop - primary', 2, 'Modifica contenido.'),
(215, '2016-03-29 20:36:35', 1, 12, '25', 'Tinción con azul tripán - info', 2, 'Modifica contenido.'),
(216, '2016-03-29 20:36:51', 1, 12, '26', 'Realizar bloqueo peribulbar o subtenon. - primary', 2, 'Modifica contenido.'),
(217, '2016-03-29 20:37:20', 1, 12, '27', 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado! - danger', 2, 'Modifica contenido.'),
(218, '2016-03-29 20:37:44', 1, 12, '28', 'Cuidado en la realización de la rexis y las maniobras en el cuadrante afectado! - danger', 2, 'Modifica contenido.'),
(219, '2016-03-29 20:38:13', 1, 12, '29', 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado! - danger', 2, 'Modifica contenido.'),
(220, '2016-03-29 20:38:34', 1, 12, '30', 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado! - danger', 2, 'Modifica contenido.'),
(221, '2016-03-29 20:39:01', 1, 12, '31', 'Realizar HIDRODELINEACIÓN Y/O VISCODISECCIÓN - danger', 2, 'Modifica contenido.'),
(222, '2016-03-29 20:39:20', 1, 12, '32', 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado! - danger', 2, 'Modifica contenido.'),
(223, '2016-03-29 20:39:48', 1, 12, '33', 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado! - danger', 2, 'Modifica contenido.'),
(224, '2016-03-29 20:40:12', 1, 12, '34', 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado! - danger', 2, 'Modifica contenido.'),
(225, '2016-03-29 20:40:28', 1, 12, '35', 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado! - danger', 2, 'Modifica contenido.'),
(226, '2016-03-29 20:40:51', 1, 12, '38', 'Glaucoma de ángulo cerrado - warning', 2, 'Modifica contenido.'),
(227, '2016-03-29 20:41:17', 1, 12, '49', 'Colocar lente ASFÉRICA con aberración NEGATIVA y CORREGIR CON FÓRMULAS ESPECIALES - primary', 2, 'Modifica contenido.'),
(228, '2016-03-29 20:41:38', 1, 12, '52', 'Utilizar fórmulas hoffer Q o Holladay 2 - primary', 2, 'Modifica contenido.'),
(229, '2016-03-30 03:10:07', 1, 12, '65', 'Atención: Alergia! - warning', 1, ''),
(230, '2016-03-30 05:28:31', 1, 12, '66', 'Aspirar contenido líquido intrasacular - primary', 1, ''),
(231, '2016-03-30 06:07:40', 1, 12, '36', 'Ecometría: cambiar la velocidad del U/S - info', 2, 'No ha modificado ningún campo.'),
(232, '2016-03-30 06:10:43', 1, 12, '67', 'Córnea plana - warning', 1, ''),
(233, '2016-03-30 06:33:06', 1, 12, '68', 'Ecometría: cambiar la velocidad de U/S - warning', 1, ''),
(234, '2016-03-30 18:15:47', 1, 12, '20', 'CUIDADO !!! pérdida de control de la capsulorrexis - danger', 2, 'Modifica encabezado.'),
(235, '2016-03-30 18:16:41', 1, 12, '21', 'CUIDADO !!! Pérdida de control de la capsulorrexis - danger', 2, 'Modifica encabezado.'),
(236, '2016-03-30 20:05:35', 1, 12, '68', 'Ecometría: cambiar la velocidad de U/S - warning', 2, 'Modifica contenido.'),
(237, '2017-03-25 16:28:48', 1, 12, '24', 'Técnica sugerida: Faco chop o Faco Quick chop - primary', 2, 'Modifica contenido.'),
(238, '2017-03-25 19:34:44', 1, 12, '69', 'Tratamiento del astigmatismo con incisiones - primary', 1, ''),
(239, '2017-03-25 19:35:33', 1, 12, '69', 'Tratamiento del astigmatismo con incisiones - primary', 2, 'Modifica contenido.'),
(240, '2017-04-26 21:07:50', 1, 12, '70', '<span id=\"docs-internal-guid-91043dd1-ac16-e752-5e30-35d850e6c4aa\"><p dir=\"ltr\" style=\"text-align: left; line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-size: 11pt; font-fam', 1, ''),
(241, '2017-04-29 17:48:28', 1, 12, '69', 'Tratamiento del astigmatismo con incisiones - info', 2, 'Modifica contenido y tipo.'),
(242, '2017-04-29 17:49:40', 1, 12, '68', 'Ecometría: cambiar la velocidad de U/S - warning', 2, 'No ha modificado ningún campo.'),
(243, '2017-04-29 17:50:47', 1, 12, '69', 'Tratamiento del astigmatismo con incisiones - info', 2, 'Modifica contenido.'),
(244, '2017-04-29 17:53:07', 1, 12, '71', 'Iridoplastias: ante injurias que involucren al iris, es recomendable realizar técnicas de reconstrucción iridiana.  - warning', 1, ''),
(245, '2017-04-29 18:27:24', 1, 12, '71', 'Iridoplastias: - warning', 2, 'Modifica encabezado y contenido.'),
(246, '2017-05-02 00:15:39', 1, 12, '72', 'Poder del Lente Intraocular - warning', 1, ''),
(247, '2017-05-02 00:57:53', 1, 12, '73', 'Observaciones Generales - warning', 1, ''),
(248, '2017-05-03 00:09:43', 1, 12, '74', '<span id=\"docs-internal-guid-ebc39d86-cba1-ae11-7d1a-1f737e19ac89\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white', 1, ''),
(249, '2017-05-03 00:21:06', 1, 12, '74', '<span id=\"docs-internal-guid-ebc39d86-cba1-ae11-7d1a-1f737e19ac89\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white', 2, 'Modifica contenido.'),
(250, '2017-05-03 03:41:33', 1, 12, '66', 'Aspirar contenido líquido intrasacular - primary', 2, 'No ha modificado ningún campo.'),
(251, '2017-05-07 23:31:18', 1, 12, '75', 'Contraindicación para implante de Lente Multifocal - primary', 1, ''),
(252, '2017-05-09 21:15:27', 1, 12, '6', 'Realizar dilatación pupilar - primary', 2, 'Modifica contenido.'),
(253, '2017-05-09 21:16:44', 1, 12, '6', 'Realizar dilatación pupilar - primary', 2, 'Modifica contenido.'),
(254, '2017-05-15 18:38:19', 1, 12, '75', 'Presencia de Córnea Gutatta - danger', 2, 'Modifica tipo.'),
(255, '2017-05-18 11:01:06', 1, 12, '74', 'Posibilidad de Implantar Lente Multifocal/Trifocal/RG Progresivo - primary', 2, 'Modifica encabezado.'),
(256, '2019-08-15 20:53:59', 2, 3, '49', 'almardeltoro', 2, 'Modifica password.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'permission', 'auth', 'permission'),
(2, 'group', 'auth', 'group'),
(3, 'user', 'auth', 'user'),
(4, 'content type', 'contenttypes', 'contenttype'),
(5, 'session', 'sessions', 'session'),
(6, 'site', 'sites', 'site'),
(7, 'log entry', 'admin', 'logentry'),
(8, 'paciente', 'calculator', 'paciente'),
(10, 'examen', 'calculator', 'examen'),
(11, 'migration history', 'south', 'migrationhistory'),
(12, 'salidas', 'calculator', 'salidas'),
(13, 'user profile', 'calculator', 'userprofile');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2015-10-08 23:57:01'),
(2, 'auth', '0001_initial', '2015-10-08 23:57:01'),
(3, 'admin', '0001_initial', '2015-10-08 23:57:01'),
(4, 'sessions', '0001_initial', '2015-10-08 23:57:01'),
(5, 'sites', '0001_initial', '2015-10-08 23:57:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('004t593ad0n2kqiqjl1isp4t8iiw8zm1', 'M2JlNjdiMzQ1Y2QwMDdkZmNjNjc3OTQ1Mjg0NTQ0ODJhN2Q1Zjk0NTp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjMGI0NDZkNTU3YzkzMWViNzNiMjI5NWQ2ZTkzZGM2ZGU0ODZjN2MiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-07-25 13:15:37'),
('0sguz7p45fg8oo8c006z1ydhbhof20wi', 'ZWQ2ZjlkODJiMDAxZjVkN2FiZTJmNmEzMTcwMTRhY2Y1ODlmNzlhZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjAzNmRmYTNlYjc1MmRiOTllNWZlYWI3MTc4NmUwZjVkZjQyZTFjYmIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2016-04-12 15:44:45'),
('0w0rm83t798ucbqsphn2fur2j4lwin1u', 'NWM5OWQyZTg4MDM2YzBiOTJmZmNiZmQ2YmNiNzIxZGY1OWZiYTk5OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjJlMmM3MjUzZTE3NzIyYmM5ZjI4ZjJhMmU3NDc4MDMxMzhmOTViOTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-04-09 13:43:55'),
('12v4t3hni2vwdu6hfrmiun8uv7u1hexw', 'Y2NjZWY3ZjM3MGQ2NDRjMDMzNWVhZGQ2Y2I5ZTQ5NmE1Mjc1YTgzYjp7Il9hdXRoX3VzZXJfaGFzaCI6ImYzMGE3NGFmOWZiYTc5MTI1OGIzMzRhOThlNjc2MmUwMWE4NDJhNmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-10-14 22:10:54'),
('17zjiq7eddkh4uq8dj1ofrak8t3aslmx', 'Y2YxZWE4ZDMxODM3MWU2ZDQ1ZDU0NzM3MjU4YTIyYjNiMmFjZjhjODp7Il9hdXRoX3VzZXJfaGFzaCI6ImIwZjUwYmU0ZDllZDMzMTcwMmI3NzZkZmVkZmY2NDM1MjA5NDg4MGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2016-03-16 02:31:04'),
('18di9u9nho4hobskdjynpl0h2tm7jtfl', 'NzY4ODFkMDUyOTBlMDc1MWE0MWJmYWUzNTIyNDE4MzYzODM2NmUzYTp7fQ==', '2017-04-19 02:36:28'),
('1a3bpsp7dhmx79ukkesvrpmw3s1tz4bt', 'M2Q3NmFjNjJkYjYzYWRlMDExNjFiMWE4ZjEwMTM5OTZmYzlhNWM3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6IjUwODIwN2MzMzkzYjhjNGExMzQ4YWRjNTg5NjM2Y2NiZmNjZDkxNDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-05-21 19:16:42'),
('1apx1ggybdlnku1jlsln0wzq9lser50w', 'ZWI3MzljMzFmMzAxZGFmM2ExNzIxYTMxOTE5ZDM5MzA5YzI2NmMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjlhNDQxYjViODgxMWI3MjdmYmZkM2U4YjAyMWVmYThmZTBkOGVhZmQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2018-04-22 23:50:21'),
('1dnalmd9sfyo7xc6m89n2u0zrla4eucq', 'MzY0Njg3MmIwODBhZDhlZjMzMmY2OTA2MDQzNjJlMzBmMTFjYWI2Mzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2017-05-21 23:51:45'),
('1ffu9rv8bcb3rcd8yenszfvxd0jd7u6b', 'YzdmZjAzYmRjMzYzZGEwNThjNWZjYjBlMWYxYjRiZmRkZGI0MTM3MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjFlYTZkZjhhNjQ3OTUwNzhiZDg4ZWRjZmUwNzZjMDAxYmZkZjRlYTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2018-06-11 03:17:54'),
('1jnmyqysihe5dg080undqtxm9otdqs8j', 'Y2IxYzhmODY2OTUwOGJkYTY2NDhlMGQ0YjM1ZWMwOWFmYmI0NTRhNjp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg0MDYxMjRhYTg4ZjU4ZTJiMmE1ODNkNmUyYzMxYjU5YzQ3MDYyYWEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-10-12 16:32:55'),
('1k0ok9j97dgma0579xk6vab4ihuutyx7', 'MzM0MGNhNGI0Nzc1OGQ2ZTcwYzg2YjAzM2NjOTNiNzUyZDA2OWZhYjp7Il9hdXRoX3VzZXJfaGFzaCI6IjUxYjQ4OGZhYzQ0YWU3NmUyZjRlYjZhZmFmNjQ0ZjgzYjEzNTFhOTEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-05-28 20:59:39'),
('1t0tb40080iz8b6nq4gw2q7oduc468t5', 'NDJjMDk4ZjY5Y2M2MjhjZTZhY2I5YzA1ZGJhYTAzNTFjZTI3ZTk5Nzp7Il9hdXRoX3VzZXJfaGFzaCI6ImUzYzEwN2E1NzEwZWFjMDQ5ZTRjYWUwZWE0Y2U4NmY4ZDQwZjgzOGYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2018-04-29 23:43:51'),
('1yo85xyr4k0gvgel88u45ea8vbrctvu1', 'NzY4ODFkMDUyOTBlMDc1MWE0MWJmYWUzNTIyNDE4MzYzODM2NmUzYTp7fQ==', '2017-05-29 19:27:49'),
('220uf5ly1zt0h856fme9jtfvomhm5c7u', 'MDA3NzNiMDFlNTQ5ZTBmNGNjNWYwNGFmY2UyYWIwYWUzZDI2MGQxMDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2016-03-02 19:32:10'),
('2blode5akd1xj7bu8401fi1e0dvaxans', 'YTNmNGIxNTk3YjA1Y2E2NmFkYTBjYmM1YTUwMWRhNjdlNjg3NWE5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjE4YjUwZWU3MDNiNzk1MGNlMTZhYWFlZTFiMTQzNzJmY2Y4YWFmZDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjM1fQ==', '2020-03-25 04:43:40'),
('2eyrvkf7fbzz3k9upd7za8g493nsfat1', 'M2JlNjdiMzQ1Y2QwMDdkZmNjNjc3OTQ1Mjg0NTQ0ODJhN2Q1Zjk0NTp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjMGI0NDZkNTU3YzkzMWViNzNiMjI5NWQ2ZTkzZGM2ZGU0ODZjN2MiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-08-04 23:23:24'),
('2hxy1wejfyb13o91muwd33ende63wup3', 'MTk3NzI3OTBlZmYxMzQ2ZTMxZDZhMDc4MGFhYzFhNDcwMDU3YWUwYjp7Il9hdXRoX3VzZXJfaGFzaCI6IjUyMzlkYWQ1ZDRjODMxZDk0ZGQ1ZDUwZTcyMmZlZmQ3MGVkZWU1M2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjE3fQ==', '2017-08-12 16:19:20'),
('2oxqmh6502y9us46s181jyw5ywamabae', 'MWQwM2ZmNGM5NzRjMTFlYTc3YmY2MzJjYjI2YzQ1MWM2MzliZjVjMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImM2M2RlMGUyNDk3YzQyNGYwNmZhYTIwYzdjZjBiYTYxYTM1MGQ4ZGQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-05-30 23:25:17'),
('2x2mik51yzmdm779wnte0b6wovvdvd59', 'MmEyYjBmNWM2NGVlNzc0ZWRlMTViMzU0NjYzZGZjYjM3NGQ5NWE0MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjRmY2UxNDYwOTg5NTJjMzdkZWEyNzYyMGI1OWJjOTNlODg0N2NmYTMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2016-03-25 14:09:30'),
('33y9es3s83r06y445jqdxvu1nqko96db', 'M2NlYjA2YjJhM2ZlOWNhNjQwMjViNmNjZjNjM2E1MTg5M2Q5YWU3NTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MSwiX21lc3NhZ2VzIjoiW1tcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdXSJ9', '2017-04-25 01:02:57'),
('3grmy16krr7uehcw6q7webl604g87esk', 'NWM5OWQyZTg4MDM2YzBiOTJmZmNiZmQ2YmNiNzIxZGY1OWZiYTk5OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjJlMmM3MjUzZTE3NzIyYmM5ZjI4ZjJhMmU3NDc4MDMxMzhmOTViOTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2016-07-20 12:47:04'),
('3kxdadx1fjw16v4jvpd9gxfa3w77qpnl', 'MzY0Njg3MmIwODBhZDhlZjMzMmY2OTA2MDQzNjJlMzBmMTFjYWI2Mzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2017-05-09 23:31:24'),
('3qpvqm07h8nlbfqmgoewvty36tkhwvy2', 'ZjAwNmZkMmEyY2E1ZDE2MmIyOGYzM2VlNmNiZjFhNmMzZTQ2YTFmNDp7Il9hdXRoX3VzZXJfaGFzaCI6IjUxZmM3ZWJkNTc4MDQ5NDdiYWQ1MGE1YTQyMzY1NWIwNWYyYWEwNTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjM5fQ==', '2019-06-28 21:59:35'),
('411s67qaa601w0qiv1rsrx5e4beggmrx', 'N2JkZDY0NjIzYjc0YzdmYTViZDY0ODA0MzFlMDcwNDVlNzQ4ZjdmZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjdhZTc5ZjVkYzMwMDNhNjA1Yjc1OTc3MGZjYTA4MDRjNzY5ZTE0NzYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-05-12 14:37:07'),
('4h5mo6livduxfv4hy44502y0ju3yhzpd', 'NzI3MDA2NzMyNjJkY2VlNDZhZjU3Nzk2OGZmNTI0MzUwY2EyODdiZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjkyNTZmN2FjOTc3MTliN2QzNDFmMzU0MjI0N2YxNTgzNjk3YTU0N2IiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2018-05-26 23:04:30'),
('4ot3u5smj3x2xfrkdvdmnsg18gmno9uc', 'MmEyYjBmNWM2NGVlNzc0ZWRlMTViMzU0NjYzZGZjYjM3NGQ5NWE0MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjRmY2UxNDYwOTg5NTJjMzdkZWEyNzYyMGI1OWJjOTNlODg0N2NmYTMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2016-03-22 23:57:51'),
('4wpbofo54orxxs9fdx92o7chqzho9lqk', 'NzI3MDA2NzMyNjJkY2VlNDZhZjU3Nzk2OGZmNTI0MzUwY2EyODdiZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjkyNTZmN2FjOTc3MTliN2QzNDFmMzU0MjI0N2YxNTgzNjk3YTU0N2IiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2018-05-21 00:49:58'),
('5043kkonc68vtv4s8yh7u33mb0xkek9b', 'NTZiNDQxNGE4Zjk3NmJmYjk2Y2IwMTFjNzllMGMwODIwM2FjODE4Yzp7Il9hdXRoX3VzZXJfaGFzaCI6ImQxZjc5Yjg2NzA5YzUwMjBmNDdiMDEzZjY2NzFlYzM3YWI3ZWFmYjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjl9', '2017-07-23 01:07:31'),
('566i7u8yw7aqknz5vvl4mznugylgtgok', 'ZjAwNmZkMmEyY2E1ZDE2MmIyOGYzM2VlNmNiZjFhNmMzZTQ2YTFmNDp7Il9hdXRoX3VzZXJfaGFzaCI6IjUxZmM3ZWJkNTc4MDQ5NDdiYWQ1MGE1YTQyMzY1NWIwNWYyYWEwNTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjM5fQ==', '2019-07-08 11:13:29'),
('5bz0h6qxilq5q5o61cit9lch34c1av3a', 'ZGFhYWMzNGEzOGUwYmY3NmJhMTdkMDNjYWY2NmUwZjhkOGNhZjAyNDp7Il9hdXRoX3VzZXJfaGFzaCI6IjI5YWYwYzRiZjNmMjg3ZDM1ZTc0ZTZhNmY2YWZiZmNkYWUwNjQ1ZDAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9', '2016-02-18 19:59:27'),
('5eklgqlzbd5kgz2gfg8zbnprlz21defm', 'MzM0MGNhNGI0Nzc1OGQ2ZTcwYzg2YjAzM2NjOTNiNzUyZDA2OWZhYjp7Il9hdXRoX3VzZXJfaGFzaCI6IjUxYjQ4OGZhYzQ0YWU3NmUyZjRlYjZhZmFmNjQ0ZjgzYjEzNTFhOTEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-05-28 22:49:11'),
('5s4jhuf3vz09o398g8um6ffrv6fyihly', 'YzY5NGQ3N2YwZjI0MjlkZjgwMjZkMDk0ZGVhZjI2OWRmMTZjYmY2ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImY2NjM0ZWVmYTBkYTdhYWFjOTU3ZGJiNGY2ZDZlZWZhMDQzMmE1OWIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-04-19 02:00:17'),
('63yje2d0qco43cgf5te08neqnr1tdwqo', 'YTNmNGIxNTk3YjA1Y2E2NmFkYTBjYmM1YTUwMWRhNjdlNjg3NWE5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjE4YjUwZWU3MDNiNzk1MGNlMTZhYWFlZTFiMTQzNzJmY2Y4YWFmZDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjM1fQ==', '2018-10-25 01:27:45'),
('6uc9ucbiw5vz5l9gy53hgcuu9iijb3sl', 'MmEyYjBmNWM2NGVlNzc0ZWRlMTViMzU0NjYzZGZjYjM3NGQ5NWE0MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjRmY2UxNDYwOTg5NTJjMzdkZWEyNzYyMGI1OWJjOTNlODg0N2NmYTMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2016-03-29 18:23:42'),
('6v9pj9hnnsrbcde7hrg521tcjoxnxpab', 'MmEyYjBmNWM2NGVlNzc0ZWRlMTViMzU0NjYzZGZjYjM3NGQ5NWE0MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjRmY2UxNDYwOTg5NTJjMzdkZWEyNzYyMGI1OWJjOTNlODg0N2NmYTMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2016-03-22 02:00:34'),
('6vk95s5lni4vm9b36b3gf47wm0xd5a4s', 'MmEyYjBmNWM2NGVlNzc0ZWRlMTViMzU0NjYzZGZjYjM3NGQ5NWE0MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjRmY2UxNDYwOTg5NTJjMzdkZWEyNzYyMGI1OWJjOTNlODg0N2NmYTMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2016-03-26 01:50:22'),
('713ksedx3py0ou0zxi4fmdis70lrbo3v', 'NzY4ODFkMDUyOTBlMDc1MWE0MWJmYWUzNTIyNDE4MzYzODM2NmUzYTp7fQ==', '2017-04-12 19:21:22'),
('7fglgyotd335ks4chhqisrl19xenhenq', 'ZDA3OGUzZTA5MTA0NTk0MzFjNTBkMGY0ZGJmYjBmZTUxMjA4Mjc5Zjp7Il9tZXNzYWdlcyI6IltbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl1dIiwiX2F1dGhfdXNlcl9pZCI6MSwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==', '2017-04-20 21:32:34'),
('7xoxhdgwtecrnipkwf8afhri3io3bgqc', 'MTY5ZjA1YTYzYmEyN2U4MDg4MjZmMjllMmI1YmM2ZTA3NGJmOTg3MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImY1ZjQ4MzI5NDk4MzFmYjJhYWUzODkyNzJkZDQ3MjhmOWZhYTE3ZDAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjY1fQ==', '2020-01-07 01:17:23'),
('80al2niuz2wu4seoyb2l56egsvfqta63', 'NWM5OWQyZTg4MDM2YzBiOTJmZmNiZmQ2YmNiNzIxZGY1OWZiYTk5OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjJlMmM3MjUzZTE3NzIyYmM5ZjI4ZjJhMmU3NDc4MDMxMzhmOTViOTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2016-07-14 03:01:24'),
('84e3trd751ij3njgvqxqg1hekzkz1a9k', 'YTNmNGIxNTk3YjA1Y2E2NmFkYTBjYmM1YTUwMWRhNjdlNjg3NWE5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjE4YjUwZWU3MDNiNzk1MGNlMTZhYWFlZTFiMTQzNzJmY2Y4YWFmZDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjM1fQ==', '2018-10-25 01:07:04'),
('85jbwcfzul500hu4a7sl8x1o5mmedk0t', 'N2JkZDY0NjIzYjc0YzdmYTViZDY0ODA0MzFlMDcwNDVlNzQ4ZjdmZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjdhZTc5ZjVkYzMwMDNhNjA1Yjc1OTc3MGZjYTA4MDRjNzY5ZTE0NzYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-05-13 16:54:25'),
('8dxz6nqj7wa2jxhfoigb7d8ldetad6au', 'MzY0Njg3MmIwODBhZDhlZjMzMmY2OTA2MDQzNjJlMzBmMTFjYWI2Mzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2017-05-04 17:43:37'),
('8gb17tfyxd1k2ose3df31etui2kwcdiz', 'YzdmZjAzYmRjMzYzZGEwNThjNWZjYjBlMWYxYjRiZmRkZGI0MTM3MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjFlYTZkZjhhNjQ3OTUwNzhiZDg4ZWRjZmUwNzZjMDAxYmZkZjRlYTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2018-06-12 18:24:43'),
('8shl8ssrzza6ewgcsypd2c6rv1sn40q5', 'NWE4YTlmMzU4NTAyYTExYzEzZmQzODQ4OWJjYzBlMGVmZTcxNTBiNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjNmYmQ2MjMyNzk1Y2E3ZjMzOWY3NDlmNWZkMGRhOWNiNGY2ZGZkNmQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjM0fQ==', '2018-10-02 19:55:07'),
('8vo1wg2hq740438v9645zdhybbmbhcbg', 'ZWJlMTU4MWM5OGM3MGE1M2I4YjM2Nzg5ZTQyNjQ1NGQzZjI1OThkZjp7Il9hdXRoX3VzZXJfaGFzaCI6ImVhN2RhZjIyYTBlMjc0MWQ0MjhlYzYyNWJmYWIwOWE5Yjc1MzNhOTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2018-05-26 23:07:41'),
('8x5m7bk9bo20za2yeh5yss5xe6q6ubeo', 'M2Q3NmFjNjJkYjYzYWRlMDExNjFiMWE4ZjEwMTM5OTZmYzlhNWM3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6IjUwODIwN2MzMzkzYjhjNGExMzQ4YWRjNTg5NjM2Y2NiZmNjZDkxNDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-05-21 23:29:46'),
('8y18oonzswoa176v57d8j4cggljqv4ai', 'NDgyMDM0YzkyNDYyY2JmZmM1YzA3YzIyZWMxYzk5MmZhMGY0NTM5Zjp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ0M2E4NWIyOTExMzllY2Y2NDZmNGM4NzhiZWJmN2VlMjUyNTcxZWMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-10-03 23:29:32'),
('90o8ldezwah2ptx9314n85rr63r9ill1', 'MTJhYjNmODk0ZGZmYmVlOTNjNWE2ZWJkODc4NWQwZDMyYWU2MjU0ODp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc0MDc1ODRmZjkzYWZlZGUzMDgyZjBiYjNlOGMyZjcyZjY5YjM0MjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjQxfQ==', '2019-08-08 23:00:25'),
('9ejt9f22oqr7pyrqhlmzrtup4oex68s5', 'YzdmZjAzYmRjMzYzZGEwNThjNWZjYjBlMWYxYjRiZmRkZGI0MTM3MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjFlYTZkZjhhNjQ3OTUwNzhiZDg4ZWRjZmUwNzZjMDAxYmZkZjRlYTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2019-05-10 19:28:47'),
('9fpmn9md1heys2dhqaohi2mpj47ig26k', 'OTc5YjI1MmZiY2ZkNWI2Y2M5Y2JjODYwNGM3YTg2OWYzNzczNjEwMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImQzMWJiZDdiNzJmYjAyMmE3ZjRlMmVkZTY3NTk4Njc0ZTNjMjUwMmQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjIxfQ==', '2017-09-25 20:48:30'),
('9iwkgl702361mzsd5np0lbmks05qcfsl', 'NzY4ODFkMDUyOTBlMDc1MWE0MWJmYWUzNTIyNDE4MzYzODM2NmUzYTp7fQ==', '2015-10-27 21:24:15'),
('9snqezxiheb333t8xjwbiu38taljzf40', 'NjEyZGRlZGZlODEyNzUwZTEyZDg5MDhhYjc2NTc2YTAyNDgzNTkwYjp7Il9hdXRoX3VzZXJfaGFzaCI6ImUxYzNkNzgwMjU4OTMzYzQ5NDI2ODU2YmQzZDgxMjllZmEyY2E1OTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjIyfQ==', '2017-11-12 23:06:03'),
('9z6ts77wqnqi0mrdx83uyfvnvnkihimd', 'YzI4YTlmOGJkODFiMTA4YTUxODRiNGQ4MGE0YzU3MjdhMDRmOTdlZjp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc1N2UyYWI0OGE4MzYyZDBhNzFhZTgyZmM2YTQ0ZmU2Y2EwMDg2Y2MiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-05-09 23:27:41'),
('a8l7cko1wxix2xns8tjx6u93t5ovyirr', 'YmY2MzQxMTRjNTM2ZDkxM2NkNTkwOGE5MDkyN2VjMWE5NmQzNjI2Yzp7Il9hdXRoX3VzZXJfaGFzaCI6ImNjNDdhYTAzNmMyYWU1ZGZjOWVhNDEwNDJhNTllM2IzNmU4MTE0YjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2018-06-11 00:20:54'),
('aaqt486givjxut7uzfjcox8vu0hdh542', 'MDA3NzNiMDFlNTQ5ZTBmNGNjNWYwNGFmY2UyYWIwYWUzZDI2MGQxMDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2016-03-05 23:12:21'),
('amnuwjdx0eypxfzwqz5xzspwvv07scgk', 'YzY5NGQ3N2YwZjI0MjlkZjgwMjZkMDk0ZGVhZjI2OWRmMTZjYmY2ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImY2NjM0ZWVmYTBkYTdhYWFjOTU3ZGJiNGY2ZDZlZWZhMDQzMmE1OWIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-04-18 23:49:12'),
('axklrihfxg4r9yobgxnzjrgl0ydkd48k', 'NWM5OWQyZTg4MDM2YzBiOTJmZmNiZmQ2YmNiNzIxZGY1OWZiYTk5OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjJlMmM3MjUzZTE3NzIyYmM5ZjI4ZjJhMmU3NDc4MDMxMzhmOTViOTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2016-04-28 19:46:57'),
('b5bkfiqkbwvodf7vo2v831ltczks4ei6', 'M2JlNjdiMzQ1Y2QwMDdkZmNjNjc3OTQ1Mjg0NTQ0ODJhN2Q1Zjk0NTp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjMGI0NDZkNTU3YzkzMWViNzNiMjI5NWQ2ZTkzZGM2ZGU0ODZjN2MiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-08-02 00:27:30'),
('bh4j3v9neaf4j2imzlrl75t63ir4c19n', 'ZDU2NWM5ODZkZjhiMWNjNzg0YTU1MTUyMGI4ODhhYTk5ZWI1ZTA0MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImE4MDMzMjlhMjZhMGJhMmEzODdiZTk1ZTcxMGFlZjRkMTI5NzU0NjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-05-23 02:07:39'),
('bmg8d98fy3c0kau7hg6njgufjg7sffgi', 'MDMwYmY4NDYxMjUwZTFmMTZmNDU2ZDA4MTQ3MzI5ZjE0NDYyOWU4Njp7Il9hdXRoX3VzZXJfaGFzaCI6IjFjNWMyOTcwMWJmNDdmY2Q4OWYzODhkN2ZkNDY3NzkwMmQ2MDVjZjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjU1fQ==', '2019-07-21 14:24:43'),
('bqwhzq7g1xivxvs73nvhk6at8tjorqxg', 'MzNkNTY5ZTU3ZWUyOTc5MWQ1NzE5ZjYwYjNlZWJiMjZmNDA2YmM5ODp7Il9hdXRoX3VzZXJfaGFzaCI6IjVhMDFhNDE2YmI5YmFhMDc5MDVlYmIwNjk3ZGRjYzllYzkyMzZkNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2018-05-15 14:37:15'),
('bxgssqomo3u9dqmqkua4mbg5w97w00mh', 'ODU2NjU3NmNjMDQwOTc4Njg0MzBlMzE0ZDg4ZTkzNTM0ZjVjNTZkODp7Il9hdXRoX3VzZXJfaGFzaCI6IjBhMzQ2MzM1ZDI2NWRjNjA0MmEwY2U3ZjA2YTY5NzRhNWI3OWQ1MjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-08-18 09:36:35'),
('caxppqyq6soaac3x76kza3oxqrh4040h', 'NWM5OWQyZTg4MDM2YzBiOTJmZmNiZmQ2YmNiNzIxZGY1OWZiYTk5OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjJlMmM3MjUzZTE3NzIyYmM5ZjI4ZjJhMmU3NDc4MDMxMzhmOTViOTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2016-04-26 20:56:14'),
('ci9rgndwj4fdm953v61alw1u2g1ks6nj', 'MWQwM2ZmNGM5NzRjMTFlYTc3YmY2MzJjYjI2YzQ1MWM2MzliZjVjMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImM2M2RlMGUyNDk3YzQyNGYwNmZhYTIwYzdjZjBiYTYxYTM1MGQ4ZGQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-06-13 16:03:16'),
('co2bjuviu59uzeokeigrgqn55dz7vilk', 'MWZiMGU0ZWIxODVjYTgyMmNlOGViMzYyNjg4NGVlMDkwNThjZmZmYjp7Il9hdXRoX3VzZXJfaGFzaCI6ImY4MGU5ZDAyM2NiOGQ2YTA5Y2U3ODljYTgxM2ZlMmQ5NzU0YWQ0NmIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-08-07 21:59:53'),
('d5imz2vplhi6ov7u9a58u7nwtb2t38zj', 'M2JlNjdiMzQ1Y2QwMDdkZmNjNjc3OTQ1Mjg0NTQ0ODJhN2Q1Zjk0NTp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjMGI0NDZkNTU3YzkzMWViNzNiMjI5NWQ2ZTkzZGM2ZGU0ODZjN2MiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-08-03 22:14:25'),
('dcj59ujp44bra5ljxkd2ovnyh3wtjagw', 'Y2JlZGZkY2IxOThhMDcxNjM2NjQ0ZDAyMzIwMzA5ZWRkNzhhYmQwYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjRhMTg5YmYzMjIzOTFlMWE2NDA2ZDYzZGU5NjhmYjg3YTg1OGNlNzAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2016-03-17 22:27:04'),
('dczbwil6by2afe2w55u19ooqtnn23g5b', 'YWM3OTZmOWMxZWMwNGVlMGJiMzlkYjE4NzRhMjhjNTI3ZTFlMjI2Mzp7Il9hdXRoX3VzZXJfaGFzaCI6IjZhZGY3ZjNlOWQyNDE2OWIxMGJmYWI4YjM4N2Y5YTdmZTQ2NzRlY2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-10-14 00:10:14'),
('dfjk24ofibwk0qt6zn94nhzgg4ki68jj', 'YTNmNGIxNTk3YjA1Y2E2NmFkYTBjYmM1YTUwMWRhNjdlNjg3NWE5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjE4YjUwZWU3MDNiNzk1MGNlMTZhYWFlZTFiMTQzNzJmY2Y4YWFmZDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjM1fQ==', '2018-11-20 01:40:55'),
('djkzeepkss5pabtmih5hjjnx0nz97y61', 'NWM5OWQyZTg4MDM2YzBiOTJmZmNiZmQ2YmNiNzIxZGY1OWZiYTk5OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjJlMmM3MjUzZTE3NzIyYmM5ZjI4ZjJhMmU3NDc4MDMxMzhmOTViOTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2016-04-21 01:23:56'),
('dxc7wqc33rjwiiagrk6d9dwdk76m62sf', 'NzY4ODFkMDUyOTBlMDc1MWE0MWJmYWUzNTIyNDE4MzYzODM2NmUzYTp7fQ==', '2016-02-08 21:47:53'),
('dzk71pfoj4u30pp7lqnk3861vnexu5ma', 'NWM5OWQyZTg4MDM2YzBiOTJmZmNiZmQ2YmNiNzIxZGY1OWZiYTk5OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjJlMmM3MjUzZTE3NzIyYmM5ZjI4ZjJhMmU3NDc4MDMxMzhmOTViOTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2016-07-13 23:32:58'),
('e3bow9cweola6z8d161ah1fm7wicdrwa', 'ZWI3MzljMzFmMzAxZGFmM2ExNzIxYTMxOTE5ZDM5MzA5YzI2NmMwNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjlhNDQxYjViODgxMWI3MjdmYmZkM2U4YjAyMWVmYThmZTBkOGVhZmQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2018-04-29 23:22:14'),
('e3dqzf8wqoegkhex3x58704oslardio0', 'MmNmNzNmZTQzZDUyNWE5Y2QwYmYxODk4ZWE0OGEzMzhhZjM5MTRmMDp7Il9hdXRoX3VzZXJfaGFzaCI6ImIyZGY4NGJjY2FmMjliZWYwYzM0ZWE1MGEwMTE0NTNjMTk2ZTI3ZWQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjU5fQ==', '2019-08-20 00:32:10'),
('ed2fwrpvqmjjop7viqvqkvyi41efbm0m', 'MWQwM2ZmNGM5NzRjMTFlYTc3YmY2MzJjYjI2YzQ1MWM2MzliZjVjMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImM2M2RlMGUyNDk3YzQyNGYwNmZhYTIwYzdjZjBiYTYxYTM1MGQ4ZGQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-06-25 17:52:41'),
('eg0aw5hf0q4orbwth886ktqsy8dimjw2', 'NjEzYWJkODQ3NGI3MDE3MTE4YzIzNGMzYjZmYWE1MGY0ZTkxNTYxZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImRhOTdkYzNjZmFkMDI0ODg2NDIyYzRiOWExYjUzODVkMTY0NGQzNTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjMzfQ==', '2018-06-19 02:43:47'),
('eq70vueoichgxtmyov2q7jf4ot2p5z79', 'M2NhNmY5ZWI3ZTI5ODIzNjliZjc1MGNkMTU4MTllNjQxN2MzZTZlOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjYzODkwOTM1YzE2OGRkMDBhYWY0NDY1MjdjY2M2Mjk0NWIxMWE2N2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9', '2016-03-05 23:28:17'),
('erlzqqxk57rzgmptsevxqs3lobtbeqne', 'YTk4MGY1MGM5ZjVjMGM1Mjg2OGU1YmZiZDI3NDZjMzdiNTllYmVkMjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFhYzJlYmE2ZjAzMWE1ZmRkMzc4YTdiMmNkZTM2YzI0Y2ZkOWE4MWIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjQ0fQ==', '2019-07-15 19:23:14'),
('evsi8yw9xunazxlv6czr6u6ojgc4ihhi', 'MWE0M2E0ZWY2OTYyYjk2MWI3OTk2YmNlMDUzNGE5NGY3ZTliZjU4MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImM4OGU0NjY3MTY2MGVkMjJiOGNiMTM3MTE3MDc4MTk1ZGJkZmMxMmMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-05-10 03:22:10'),
('ewf1sxj5gz0wki77nmzfpdwdyq5ypqzn', 'NzY4ODFkMDUyOTBlMDc1MWE0MWJmYWUzNTIyNDE4MzYzODM2NmUzYTp7fQ==', '2016-02-24 23:20:43'),
('f03q5srpye2hamy7nzjnr7pjbjtaotmf', 'MjZiODU3YzdlYTE5NDk2ZmY2N2M3YjIyOTRlYjYzNWU0OTU2Mjc5Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjA4NzRjMmUzNjljMzQxOTIwNTc5MDA2YjMwYzAxOWEwNmJmMWFhMjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-05-04 19:05:06'),
('f2bvwwy2lbzpkh5110dwoh7z1ijxq4l4', 'ZmE2NWY3Mzg4MjZhY2RjZmM4N2Q0MTU2NThjMzdiMDI2ZWQ2NDljNDp7Il9hdXRoX3VzZXJfaGFzaCI6IjMyNGY1ODQ3Mzg0ZGZmMTZmOGJiMDZmMmIwNDIwOGQ1ZjExMmM1NDciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjY0fQ==', '2019-11-29 03:17:40'),
('f7pc6cg28mlsybu631tzhdhn72pu16ol', 'NDJjMDk4ZjY5Y2M2MjhjZTZhY2I5YzA1ZGJhYTAzNTFjZTI3ZTk5Nzp7Il9hdXRoX3VzZXJfaGFzaCI6ImUzYzEwN2E1NzEwZWFjMDQ5ZTRjYWUwZWE0Y2U4NmY4ZDQwZjgzOGYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2018-05-02 20:45:17'),
('fr1yfkq1tsvy99wtbrkypp8xqe9uqlld', 'M2JlNjdiMzQ1Y2QwMDdkZmNjNjc3OTQ1Mjg0NTQ0ODJhN2Q1Zjk0NTp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjMGI0NDZkNTU3YzkzMWViNzNiMjI5NWQ2ZTkzZGM2ZGU0ODZjN2MiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-08-02 22:08:04'),
('fz190wqqcbvq2yqrtbce8ljjedthhqgm', 'ZDU2NWM5ODZkZjhiMWNjNzg0YTU1MTUyMGI4ODhhYTk5ZWI1ZTA0MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImE4MDMzMjlhMjZhMGJhMmEzODdiZTk1ZTcxMGFlZjRkMTI5NzU0NjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-05-22 04:59:32'),
('g2kco6wz6vr0jx9jgawtxy4yz6fzoxny', 'MmU2OGU2ZGUxM2JhYThiYzIxZTE1NTQwZGJkY2EyNWU4NjgzOTI4Nzp7Il9hdXRoX3VzZXJfaGFzaCI6IjU2MTNhMDU2MTkwZWY5MDk1MDIxMzNiZGE1MjU3MTA3Zjg5NWYxNjMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-05-15 23:10:52'),
('g3y1xmnx67ry0y6npgl35eq1pqoyccph', 'NzY4ODFkMDUyOTBlMDc1MWE0MWJmYWUzNTIyNDE4MzYzODM2NmUzYTp7fQ==', '2016-03-14 04:06:30'),
('g5t21l9vynv7qf9u8coyhffx52xu1j5u', 'NzhlMDI5ODg4MjZkNmNlZWNmOTNhYjM1ZTA4YjFlNzczYzY2MzlkODp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ4YWVlZmFkYTNjZDBkYTE2MmJjODFlMDljMTI2ZDZhOGFmZjRkNzciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-10-13 21:03:13'),
('g6p6zvcyswh6w6ixlibgkzou6vsj6btm', 'MGU4MjNlNDU1NmUxNWNiYWMwYzFmMjFjMDU1MzhkODUwOGVhM2U1Nzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MSwiX21lc3NhZ2VzIjoiW1tcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdXSJ9', '2017-04-27 14:52:28'),
('gg8skarw5krnp74r2hqe98k0m8vap6lc', 'NWM5OWQyZTg4MDM2YzBiOTJmZmNiZmQ2YmNiNzIxZGY1OWZiYTk5OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjJlMmM3MjUzZTE3NzIyYmM5ZjI4ZjJhMmU3NDc4MDMxMzhmOTViOTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-04-12 17:31:22'),
('gmrce6h3istqo42sl9r6luqi4pr7sz3m', 'M2Q3NmFjNjJkYjYzYWRlMDExNjFiMWE4ZjEwMTM5OTZmYzlhNWM3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6IjUwODIwN2MzMzkzYjhjNGExMzQ4YWRjNTg5NjM2Y2NiZmNjZDkxNDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-05-17 02:58:34'),
('gv2tn9z58gvchbk0p8f2ine7vbf0v3y8', 'ODU2NjU3NmNjMDQwOTc4Njg0MzBlMzE0ZDg4ZTkzNTM0ZjVjNTZkODp7Il9hdXRoX3VzZXJfaGFzaCI6IjBhMzQ2MzM1ZDI2NWRjNjA0MmEwY2U3ZjA2YTY5NzRhNWI3OWQ1MjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-08-11 16:10:55'),
('h2gr0k9d1t3n818x1l60d1qqk2i1o7q0', 'NzY4ODFkMDUyOTBlMDc1MWE0MWJmYWUzNTIyNDE4MzYzODM2NmUzYTp7fQ==', '2017-05-08 20:20:25'),
('h91we3awmj6x3dt7lks44cu1u20wuv7u', 'M2ZlYjllMDllMjhjNGI4YmYwMjYwNjliZGQ4OGNlNTM2MzJiYWY2Nzp7Il9hdXRoX3VzZXJfaGFzaCI6Ijk2OTYxYmNjNWRlOThjYTQ0ODQyNWQ5NzEzODhmYzRjNGEzOTg5MjMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-05-02 22:53:41'),
('hfn1fc2ag8zmbt202so3vpgwo4so9e1x', 'NTJiNTFlYzAzMzI5MGVkNWI4YmFjYjVlZjU4NmQ5NTY4Y2M4M2ZjMTp7Il9hdXRoX3VzZXJfaGFzaCI6IjkzMzE5MWM5ZGI3MTNkMDRkZTYzYTAyZDdhOTc0ZjgzNzQ1MTQ2OTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjQ3fQ==', '2019-07-19 18:17:52'),
('hledc06ynmth8mcq0k2foc431n8w34gk', 'YmQ0ZjZjNTMxZWI2NDUwN2ZhOGEwOGU3ZWM3YzZkMmEwZDJlMDU3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6IjM0MTg4ZjcyNTFjMjViYzUyOGEyNDU2ZWJmNDllMmEwMzcyOTA0OTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-10-09 14:48:31'),
('hn0bhahdd00lapq5znj71yh8ovddrmwx', 'MWQwM2ZmNGM5NzRjMTFlYTc3YmY2MzJjYjI2YzQ1MWM2MzliZjVjMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImM2M2RlMGUyNDk3YzQyNGYwNmZhYTIwYzdjZjBiYTYxYTM1MGQ4ZGQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-06-04 14:43:02'),
('huizq2c5gea4v9vujwykb4qjn6sjbrlr', 'NmMwY2I4NWY3N2UzZTBkNTQwOGE1MzdkZTg0NGYzZmJhZjdmYmEzYjp7Il9hdXRoX3VzZXJfaGFzaCI6IjA4NjUxZjc4Yzg0N2E1Mjk2ODQ5MzA2NTdiYTcyZjgzYTMxZjJlNjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2018-06-03 20:27:57'),
('i1mbo2nggwob7ta0uvkwa92wve9pncih', 'NWM5OWQyZTg4MDM2YzBiOTJmZmNiZmQ2YmNiNzIxZGY1OWZiYTk5OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjJlMmM3MjUzZTE3NzIyYmM5ZjI4ZjJhMmU3NDc4MDMxMzhmOTViOTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2016-07-13 23:33:00'),
('i6a9jow2sm0q31wgm5ftakrd4ehtfcyp', 'YzdmZjAzYmRjMzYzZGEwNThjNWZjYjBlMWYxYjRiZmRkZGI0MTM3MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjFlYTZkZjhhNjQ3OTUwNzhiZDg4ZWRjZmUwNzZjMDAxYmZkZjRlYTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2019-05-24 20:13:22'),
('igyh40o3lhk6t5tw9c93wu05bannu23z', 'MTk2NjJjNjUxZGU1MjJkODZjNThmYWJmZmZjYjI4M2NiZmNhY2VlNjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6N30=', '2017-05-11 21:32:04'),
('ip4u2owgyuu3f4ehyp4ku25z1viyh6h5', 'MzY0Njg3MmIwODBhZDhlZjMzMmY2OTA2MDQzNjJlMzBmMTFjYWI2Mzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2017-07-12 20:12:24'),
('ix0m7wnqefei51s8xf3akov39auloc57', 'NmMwY2I4NWY3N2UzZTBkNTQwOGE1MzdkZTg0NGYzZmJhZjdmYmEzYjp7Il9hdXRoX3VzZXJfaGFzaCI6IjA4NjUxZjc4Yzg0N2E1Mjk2ODQ5MzA2NTdiYTcyZjgzYTMxZjJlNjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2018-06-09 20:18:54'),
('j2syszsrcjmy6l9a5e7xb6ocvgs767vl', 'NzExMTEwMDk3MzczZDEyY2NlMTZjNmQ5NjE4MmY1N2EyNTUyYWNkODp7Il9hdXRoX3VzZXJfaGFzaCI6IjkyZDcyMWM5YTlhODM2YmU3NDJkMmZjOTYwMjc2YWE5ZDRhYzUyYTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-05-06 22:34:46'),
('jiq0yc0ec2f45i3bmtw87l1w9q3f6n7d', 'MzY0Njg3MmIwODBhZDhlZjMzMmY2OTA2MDQzNjJlMzBmMTFjYWI2Mzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2017-05-24 18:30:09');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('jmo1ducs66hf491ktvfk407h117k3kin', 'OTgyZDZlNGY0YzdkYWYwZDIyODdmMzY4OGM1NDkwZmU4YTMxMzYzNjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MSwiX21lc3NhZ2VzIjoiW1tcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdXSJ9', '2017-04-17 21:04:04'),
('jykl0wyh8h34pjif8butccu3n3lzh745', 'ODAzMDA3NjBhYzZkNjFlZGNlZjg1MDRhNGRiMWVlNWI5MTc0YWQ2Mzp7Il9hdXRoX3VzZXJfaGFzaCI6ImQxMDk3YmM0ZmYyMTc4NDIyMmU0NjcwYWE4YTVjNzQ4ZDA0NTFmYWQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjYxfQ==', '2019-09-09 00:03:13'),
('k7abfly73xg0hw5kocdw1h7vx37rzd8a', 'NzVjZTk3NjI4MmZmZTNjMTQ0NWMyMjBlYTVhYTU5OTU5YjJjZjkwYjp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc2Yjk0MTNmYTY0YmQ0MDAwZTg1ZWEwOGYzYjIzYmIwNGUxODUxMjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjU4fQ==', '2019-07-22 06:43:44'),
('k93i87mzu0c2zbqkw07w74oox8zjpkrr', 'MGNjOGU0ODQzMjZlMDQxY2I5ZDg2NWMxMThmNzBhNTUwYTkwMDZiMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImYwNjI4MmMzNDQ2MzdhNDlmNDU3MjkwYjg1OWY5ODk2ZTUzMDYxYzYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-05-30 20:43:22'),
('kdcp1e36hn11vc0e9g5bx02w1xqs0bo6', 'ODAzMDA3NjBhYzZkNjFlZGNlZjg1MDRhNGRiMWVlNWI5MTc0YWQ2Mzp7Il9hdXRoX3VzZXJfaGFzaCI6ImQxMDk3YmM0ZmYyMTc4NDIyMmU0NjcwYWE4YTVjNzQ4ZDA0NTFmYWQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjYxfQ==', '2019-09-06 22:23:45'),
('kfedoiacvzhnqazz7yssm2n3uzeevscy', 'NzY4ODFkMDUyOTBlMDc1MWE0MWJmYWUzNTIyNDE4MzYzODM2NmUzYTp7fQ==', '2017-04-12 13:43:21'),
('kgq7dpih1tuntx03g05lqus1e5t6g15n', 'ODU2NjU3NmNjMDQwOTc4Njg0MzBlMzE0ZDg4ZTkzNTM0ZjVjNTZkODp7Il9hdXRoX3VzZXJfaGFzaCI6IjBhMzQ2MzM1ZDI2NWRjNjA0MmEwY2U3ZjA2YTY5NzRhNWI3OWQ1MjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-08-10 03:40:02'),
('kkgkbb6b5tl1xp52k5ttcj1oeyb8tsu4', 'NWM5OWQyZTg4MDM2YzBiOTJmZmNiZmQ2YmNiNzIxZGY1OWZiYTk5OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjJlMmM3MjUzZTE3NzIyYmM5ZjI4ZjJhMmU3NDc4MDMxMzhmOTViOTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2016-04-13 20:39:53'),
('l23kjma2vgek01xmmzbcsapm6i7sfvr5', 'Y2YxZWE4ZDMxODM3MWU2ZDQ1ZDU0NzM3MjU4YTIyYjNiMmFjZjhjODp7Il9hdXRoX3VzZXJfaGFzaCI6ImIwZjUwYmU0ZDllZDMzMTcwMmI3NzZkZmVkZmY2NDM1MjA5NDg4MGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2016-03-15 03:07:35'),
('lncwlrofphd9n07579xim0a83ah9xdkh', 'OWNmNTFmMTQ4Yjk2NTk4NTQxYmU5ZDAyNmI5YmRlN2Q0MjBhNTM0MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImJhZDEzYzYxNDU2ZDMzYzM2YmI3MTdlNzk4NjJlZGQ1ZGUyODE3MmUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjUyfQ==', '2019-07-19 21:18:49'),
('lr62xwtxj3at52uh8j5o0mfzv0duuvr2', 'MzY0Njg3MmIwODBhZDhlZjMzMmY2OTA2MDQzNjJlMzBmMTFjYWI2Mzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2016-04-13 18:51:52'),
('lszt46soapi3ub24nlskrlx744368tcw', 'N2QxMDkyZjQ1ZWMwYjE1ODJkNDA2YjAxM2VkMzMzMmQ2NjJlZGMwZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjdmNTU2ZTcwMTBmZmJjOTJiZTgzNWQ0YTYwNDkzMGY1YmVkODJmMTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjE4fQ==', '2017-08-25 16:18:27'),
('lu6mgymhywl9u3b5dn3kl6z1ujlz3tsn', 'NWM5OWQyZTg4MDM2YzBiOTJmZmNiZmQ2YmNiNzIxZGY1OWZiYTk5OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjJlMmM3MjUzZTE3NzIyYmM5ZjI4ZjJhMmU3NDc4MDMxMzhmOTViOTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2016-09-11 19:05:14'),
('luik2mgkfpnn7gc9cpk5q540ncnh4ne5', 'YWM3OTZmOWMxZWMwNGVlMGJiMzlkYjE4NzRhMjhjNTI3ZTFlMjI2Mzp7Il9hdXRoX3VzZXJfaGFzaCI6IjZhZGY3ZjNlOWQyNDE2OWIxMGJmYWI4YjM4N2Y5YTdmZTQ2NzRlY2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-10-14 21:48:39'),
('mdev6zesv4psvqi8tjaoitds09zozzsx', 'M2Q4NTJmZTNkNzRjMGM1ZTZjMzk2NzQ4Y2YyMmViYWJiZmMyMjlhYjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZjdhNzBlMjBhODkzMTdkNDJkZWQ3ZmUzOWZjNTQxNjQxMjkwZTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjY4fQ==', '2020-11-04 19:10:28'),
('mksymi96xdf8thlpq72zluodf1exxfj4', 'N2Q3ODNkODUxZjcyMTA0MjFhNmY5ZDRhMDk4YjIxZjk5N2JmOGM4Zjp7Il9hdXRoX3VzZXJfaGFzaCI6IjkxOTIxM2E5ODE3Mjc0YjdlYTg5YmIyZjkwN2IwYmRiNzE0OGZiOTIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjM3fQ==', '2019-01-20 03:02:32'),
('mnshx5wuen1f5u2uzxtoex8b71gnvwwe', 'OGIzNzk1MWI1YmE3ZWE3MmQ0MWVmNTkyZTdiOGJiZDJkNWM0MzhkYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjZlM2FhZDBmNjFhNDg5ZWFmYmY5YWY5YWU5ZmQ3ZThkNDgzZjZhYjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-08-18 10:40:16'),
('mydmyeklusisoopnyxfsrjoxqyube3c7', 'ZTMxNDQ1MDJiNzZjYjdjMzVkMDY4OGZlYjM0MTExYTI5YzNlNzM3OTp7Il9hdXRoX3VzZXJfaGFzaCI6ImJiY2E1MWM3MTQzNDE5MGM3NGVhMDFkMjMyN2IwMTI4MWNiMmJkNzIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjM2fQ==', '2018-12-01 11:02:47'),
('n1dqns807k6r3q6c6q3zpx56ca9fv07k', 'NzY4ODFkMDUyOTBlMDc1MWE0MWJmYWUzNTIyNDE4MzYzODM2NmUzYTp7fQ==', '2017-05-04 02:21:22'),
('neflltdi8gald050wl9nr1meyn4pdwqo', 'NzY4ODFkMDUyOTBlMDc1MWE0MWJmYWUzNTIyNDE4MzYzODM2NmUzYTp7fQ==', '2016-03-16 23:39:31'),
('nfopbao8fpihh1libev9xf13gv75yhw7', 'MTY5OWRkZjRhY2I2MTRmYWY3MDU5NDY1OTk1ZTNiYTllNWJmOTU1Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImU2ODhkMjk4OWQ2NzFlMDMwYjdlNjI3NjU1MmJmNGI1YzRkMmMwZmYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2016-04-08 00:33:06'),
('nklw0d5a1hakdicvjosqhdyv6h6rw5o2', 'N2Q3ODNkODUxZjcyMTA0MjFhNmY5ZDRhMDk4YjIxZjk5N2JmOGM4Zjp7Il9hdXRoX3VzZXJfaGFzaCI6IjkxOTIxM2E5ODE3Mjc0YjdlYTg5YmIyZjkwN2IwYmRiNzE0OGZiOTIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjM3fQ==', '2019-01-20 03:02:33'),
('nsn3uww6ujxfvv3qzobscl5x12n3qz2y', 'MWZiMGU0ZWIxODVjYTgyMmNlOGViMzYyNjg4NGVlMDkwNThjZmZmYjp7Il9hdXRoX3VzZXJfaGFzaCI6ImY4MGU5ZDAyM2NiOGQ2YTA5Y2U3ODljYTgxM2ZlMmQ5NzU0YWQ0NmIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-08-09 23:25:02'),
('nt9qm5ujdi32i9og5mtq55974j5wyewf', 'MzY0Njg3MmIwODBhZDhlZjMzMmY2OTA2MDQzNjJlMzBmMTFjYWI2Mzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2017-04-25 23:59:12'),
('nu1u4al3b3gk8irn0tq7oyhliw4vy07q', 'NzY4ODFkMDUyOTBlMDc1MWE0MWJmYWUzNTIyNDE4MzYzODM2NmUzYTp7fQ==', '2017-04-17 19:27:23'),
('nvvnl2uuxpugn50luwp0cq6tx71z44vq', 'MTk1YzBkMzRjOTY0ZDMxYjlmYmJhNGNlYWZlM2ZmN2Y5ZDkzMjAxNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImYwYjNlOGUzYjJmMGJjNzFiNWJhY2UyZDE3MDk5MTljNTEyOTg0MmIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjQyfQ==', '2019-07-01 22:02:59'),
('nx2zpvz3h3n1pji8hp1md4d2xh8wtpgi', 'ODAzMDA3NjBhYzZkNjFlZGNlZjg1MDRhNGRiMWVlNWI5MTc0YWQ2Mzp7Il9hdXRoX3VzZXJfaGFzaCI6ImQxMDk3YmM0ZmYyMTc4NDIyMmU0NjcwYWE4YTVjNzQ4ZDA0NTFmYWQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjYxfQ==', '2019-09-06 22:23:47'),
('ofhjjawgvhquojttk5fodn18vcmw9d5w', 'MzY0Njg3MmIwODBhZDhlZjMzMmY2OTA2MDQzNjJlMzBmMTFjYWI2Mzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2017-05-15 14:04:44'),
('oxpp19d03t9m15kb8w8o93kyon2uqy0m', 'YmQ0ZjZjNTMxZWI2NDUwN2ZhOGEwOGU3ZWM3YzZkMmEwZDJlMDU3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6IjM0MTg4ZjcyNTFjMjViYzUyOGEyNDU2ZWJmNDllMmEwMzcyOTA0OTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-10-05 23:40:30'),
('oz225ogbt5azc43wxcwyam756wwlflq4', 'MTAwMmIwNzk4YTQ4ZDE4NzZlYjdiMjEzM2I5NWE3YTQ3OGE1MjcxMjp7Il9hdXRoX3VzZXJfaGFzaCI6ImJlMTU0YjUwZDU0ZmZiNjcxZDM4NDg5MmNmNDk4OWRlYWYzZmY3OGEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2016-03-10 21:29:42'),
('p0x7upqrj7maoi1yhs59b8uh0hshbvbq', 'NzY4ODFkMDUyOTBlMDc1MWE0MWJmYWUzNTIyNDE4MzYzODM2NmUzYTp7fQ==', '2017-06-27 00:19:52'),
('p17fcegqtl11drqm4vzn6gser0rfktaf', 'NWM5OWQyZTg4MDM2YzBiOTJmZmNiZmQ2YmNiNzIxZGY1OWZiYTk5OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjJlMmM3MjUzZTE3NzIyYmM5ZjI4ZjJhMmU3NDc4MDMxMzhmOTViOTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2016-05-16 01:49:31'),
('p80rrslx7mn5vhj4mud6mwmbged60fzk', 'M2JlNjdiMzQ1Y2QwMDdkZmNjNjc3OTQ1Mjg0NTQ0ODJhN2Q1Zjk0NTp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjMGI0NDZkNTU3YzkzMWViNzNiMjI5NWQ2ZTkzZGM2ZGU0ODZjN2MiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-08-05 13:57:18'),
('p8a7xpxlpyf49kmq16nm4sidztjyv32n', 'YTNmNGIxNTk3YjA1Y2E2NmFkYTBjYmM1YTUwMWRhNjdlNjg3NWE5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjE4YjUwZWU3MDNiNzk1MGNlMTZhYWFlZTFiMTQzNzJmY2Y4YWFmZDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjM1fQ==', '2020-03-25 04:46:50'),
('p8w561c2muzg52197x4ebwg6kfxf4z8h', 'YmQ0ZjZjNTMxZWI2NDUwN2ZhOGEwOGU3ZWM3YzZkMmEwZDJlMDU3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6IjM0MTg4ZjcyNTFjMjViYzUyOGEyNDU2ZWJmNDllMmEwMzcyOTA0OTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-10-12 14:06:05'),
('pbe8k6nxj9z1wtx6n16cmrze24rb3tse', 'MzY0Njg3MmIwODBhZDhlZjMzMmY2OTA2MDQzNjJlMzBmMTFjYWI2Mzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2017-05-10 21:14:36'),
('pip0c1jgn298ernp44zggvgxzw1t0jnq', 'MGNjOGU0ODQzMjZlMDQxY2I5ZDg2NWMxMThmNzBhNTUwYTkwMDZiMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImYwNjI4MmMzNDQ2MzdhNDlmNDU3MjkwYjg1OWY5ODk2ZTUzMDYxYzYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-05-30 02:07:53'),
('pkrnehk0jd9b2lox6bub9o8vnixjdfqe', 'MTJhYjNmODk0ZGZmYmVlOTNjNWE2ZWJkODc4NWQwZDMyYWU2MjU0ODp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc0MDc1ODRmZjkzYWZlZGUzMDgyZjBiYjNlOGMyZjcyZjY5YjM0MjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjQxfQ==', '2019-07-01 10:24:40'),
('pmkm3i4xlmzxdy7vuysercf1agu1687q', 'MmNmNzNmZTQzZDUyNWE5Y2QwYmYxODk4ZWE0OGEzMzhhZjM5MTRmMDp7Il9hdXRoX3VzZXJfaGFzaCI6ImIyZGY4NGJjY2FmMjliZWYwYzM0ZWE1MGEwMTE0NTNjMTk2ZTI3ZWQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjU5fQ==', '2019-08-19 22:36:59'),
('pmouilyjdybgddmkhza0tuieet40c4px', 'ZTA3MWRjNzdiNDg1ZjIxMTdkODg0MjMzNGVlMWI0OTVlNzhkNTMwMjp7Il9hdXRoX3VzZXJfaGFzaCI6ImEzZDEzNmQ0ZTVmZWZiNzJiYjBmNjM3ODY2YzFhNDY4NjhmOTFiODMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjI4fQ==', '2018-01-16 05:02:52'),
('pqlu9psjswajloj2vth7r749vuz4ouv7', 'NzY4ODFkMDUyOTBlMDc1MWE0MWJmYWUzNTIyNDE4MzYzODM2NmUzYTp7fQ==', '2017-05-01 18:38:25'),
('pr9oq7b7ha45oknhqe6bd5tr4vl0cl19', 'NzY4ODFkMDUyOTBlMDc1MWE0MWJmYWUzNTIyNDE4MzYzODM2NmUzYTp7fQ==', '2015-10-30 22:42:26'),
('q254x4ls222m1o0u58vqznvr3a9734kr', 'NDI0OGUzNjcxMDRmYjVjOGRkN2YyNGUyZGZiZjRkNTE5MGMxNDE5Njp7Il9hdXRoX3VzZXJfaGFzaCI6ImU0YmFmYTUyZmUwOTM2YjJmM2RiNzI0MDJiMTUxMTEzZWFkZTc0YzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2018-03-01 20:37:02'),
('q4rs2yzud57vue5wkveuq5ollknv40ot', 'MTAwMmIwNzk4YTQ4ZDE4NzZlYjdiMjEzM2I5NWE3YTQ3OGE1MjcxMjp7Il9hdXRoX3VzZXJfaGFzaCI6ImJlMTU0YjUwZDU0ZmZiNjcxZDM4NDg5MmNmNDk4OWRlYWYzZmY3OGEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2016-03-10 16:28:57'),
('qepiassetfavu6gw3nkpkq52er00bi13', 'ZWQ2ZjlkODJiMDAxZjVkN2FiZTJmNmEzMTcwMTRhY2Y1ODlmNzlhZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjAzNmRmYTNlYjc1MmRiOTllNWZlYWI3MTc4NmUwZjVkZjQyZTFjYmIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2016-04-13 03:01:12'),
('qpzidyvps7no0n98lh0i1uuybr97syij', 'NzY4ODFkMDUyOTBlMDc1MWE0MWJmYWUzNTIyNDE4MzYzODM2NmUzYTp7fQ==', '2017-05-10 21:14:03'),
('qw8nz3l2xf2gjexf7fb6nu0buario738', 'MTU4MGE0ODRkMTljZmVmZWVlZThiZWE1MDMyOTVmMmIxMzA5MjMwYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjMzMWE4YWEzZWZiZjU4ZGRjMWU1ZmE0ZGZlODExNDk1MjRlNjI1MjYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjh9', '2017-06-03 13:20:25'),
('r0roiq4dtcug53a1x7khsu1sw482r0ph', 'YjhjOWY3Mzc5MjA4ZGU0NWE4ZjNkMmVmZGZiNTZiYmJiNTllNTQ1Mzp7Il9hdXRoX3VzZXJfaGFzaCI6ImU2Y2FiYzY1MzUxMDRiNjRkOGVkYmVjMzhhYjNjOWQxN2E1MzJjOTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjQ1fQ==', '2019-07-19 15:52:49'),
('riboek0ib9lk2bhm9d7zku8yy6zxgqj0', 'N2QxMDkyZjQ1ZWMwYjE1ODJkNDA2YjAxM2VkMzMzMmQ2NjJlZGMwZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjdmNTU2ZTcwMTBmZmJjOTJiZTgzNWQ0YTYwNDkzMGY1YmVkODJmMTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjE4fQ==', '2017-08-18 17:19:46'),
('rzddxoelrq4f4tltc0x9mqgtar6qlmo6', 'NzY4ODFkMDUyOTBlMDc1MWE0MWJmYWUzNTIyNDE4MzYzODM2NmUzYTp7fQ==', '2017-05-16 01:02:40'),
('rzzeicvfi1vnakq8sa1oeeoqnjhrxslw', 'Yzk5ODNmYjc4MTc0Yzg5OTdmODg2YTBlYTdjZjg3MzUxMmU3MzViMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjNiYTQyOGQ4ZjVlNzE5OTQ3NmYwMmI5ZGZkZmIzMDY1YWZkNGJlYTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjQ4fQ==', '2019-07-19 18:41:46'),
('s3jpq2f6aqf3u4ugvnzvek88po7r7s6o', 'OTk1NzA3M2UwMDU3MzY2NzhlNTg4OTdkOTZjMTk2MzFiOGNjMWRjZjp7Il9hdXRoX3VzZXJfaGFzaCI6IjcyOGNjYzA1MDg1OGQ4OTFiMzUzYTg4YmY0ODFhN2U2OWFkODlmYmQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjYzfQ==', '2019-10-16 19:14:25'),
('s938lvkgvm3ziwac9ev65w7a2vvr1jbs', 'MzY0Njg3MmIwODBhZDhlZjMzMmY2OTA2MDQzNjJlMzBmMTFjYWI2Mzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2017-05-30 22:49:08'),
('t2lzcpx8laccx0xkumhfyaeie72lklai', 'MTY5ZjA1YTYzYmEyN2U4MDg4MjZmMjllMmI1YmM2ZTA3NGJmOTg3MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImY1ZjQ4MzI5NDk4MzFmYjJhYWUzODkyNzJkZDQ3MjhmOWZhYTE3ZDAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjY1fQ==', '2020-01-05 15:46:32'),
('t5samk150o1ddv5ddlwbcm6piksl5fbe', 'YzI4YTlmOGJkODFiMTA4YTUxODRiNGQ4MGE0YzU3MjdhMDRmOTdlZjp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc1N2UyYWI0OGE4MzYyZDBhNzFhZTgyZmM2YTQ0ZmU2Y2EwMDg2Y2MiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-05-09 21:21:45'),
('tnu2djpx8c1tyuxm3ree89830jst1mvw', 'NzY4ODFkMDUyOTBlMDc1MWE0MWJmYWUzNTIyNDE4MzYzODM2NmUzYTp7fQ==', '2016-02-27 22:13:41'),
('tpexes1pyk2e907ceite8tyi48dabk8a', 'NmU4NzY0ZmU2M2ZmMzNmMGQxZWQzYWI3NmUyNTU2NzMzOTYyNzVmZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjlmNmFkZmM0NWY5NGFlMjMzZmFiNTA0MzVjMTk4NTRmNzQzNDViZTIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjQwfQ==', '2019-06-30 00:58:10'),
('u2jysin019zba3dbxnx9ndpjc8ajozz0', 'YTNmNGIxNTk3YjA1Y2E2NmFkYTBjYmM1YTUwMWRhNjdlNjg3NWE5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjE4YjUwZWU3MDNiNzk1MGNlMTZhYWFlZTFiMTQzNzJmY2Y4YWFmZDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjM1fQ==', '2020-03-25 12:53:02'),
('u71cilrezj0d968f6j20ueb3d865jjxg', 'Y2YxZWE4ZDMxODM3MWU2ZDQ1ZDU0NzM3MjU4YTIyYjNiMmFjZjhjODp7Il9hdXRoX3VzZXJfaGFzaCI6ImIwZjUwYmU0ZDllZDMzMTcwMmI3NzZkZmVkZmY2NDM1MjA5NDg4MGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2016-03-15 12:38:10'),
('u7nq364ynun6ymyig2g7jb7nxvxrkwu7', 'MTAwMmIwNzk4YTQ4ZDE4NzZlYjdiMjEzM2I5NWE3YTQ3OGE1MjcxMjp7Il9hdXRoX3VzZXJfaGFzaCI6ImJlMTU0YjUwZDU0ZmZiNjcxZDM4NDg5MmNmNDk4OWRlYWYzZmY3OGEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2016-03-09 18:06:58'),
('ua4nd4e0mbj1s9i8mzlrakafl3hn4rcy', 'ZjAwNmZkMmEyY2E1ZDE2MmIyOGYzM2VlNmNiZjFhNmMzZTQ2YTFmNDp7Il9hdXRoX3VzZXJfaGFzaCI6IjUxZmM3ZWJkNTc4MDQ5NDdiYWQ1MGE1YTQyMzY1NWIwNWYyYWEwNTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjM5fQ==', '2019-07-07 03:19:30'),
('ud2gjv3nzelxufimz5sjf30lcsrzz2lx', 'YzdmZjAzYmRjMzYzZGEwNThjNWZjYjBlMWYxYjRiZmRkZGI0MTM3MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjFlYTZkZjhhNjQ3OTUwNzhiZDg4ZWRjZmUwNzZjMDAxYmZkZjRlYTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2019-08-29 21:11:48'),
('uos3sgceq2ss154m6ptvg8oederz2aoi', 'MmU2OGU2ZGUxM2JhYThiYzIxZTE1NTQwZGJkY2EyNWU4NjgzOTI4Nzp7Il9hdXRoX3VzZXJfaGFzaCI6IjU2MTNhMDU2MTkwZWY5MDk1MDIxMzNiZGE1MjU3MTA3Zjg5NWYxNjMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-05-15 23:51:51'),
('v1k9tw3ffvc6jdj5sz14hq1brqplok0i', 'ODU2NjU3NmNjMDQwOTc4Njg0MzBlMzE0ZDg4ZTkzNTM0ZjVjNTZkODp7Il9hdXRoX3VzZXJfaGFzaCI6IjBhMzQ2MzM1ZDI2NWRjNjA0MmEwY2U3ZjA2YTY5NzRhNWI3OWQ1MjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-08-18 10:36:28'),
('v47y17nih9aabz4absxb0qeq9vsjz0tq', 'MTM2OTVjMTRmMWIzMGFmNDBhMzkwMDJkZjM4NGM1YmQxNDVkMDBlMzp7Il9hdXRoX3VzZXJfaGFzaCI6IjE4ZmZjMThjNWM5YzBjMTIyNzUzZmFmNzQwYWQ3Y2YxMWUxZjQ0MDIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-07-12 20:14:32'),
('vdl5wrxn4kqjdw666nxf7uxo0ofpvnib', 'M2JlNjdiMzQ1Y2QwMDdkZmNjNjc3OTQ1Mjg0NTQ0ODJhN2Q1Zjk0NTp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjMGI0NDZkNTU3YzkzMWViNzNiMjI5NWQ2ZTkzZGM2ZGU0ODZjN2MiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-08-02 10:38:39'),
('vhxten6ho2x4kw5i45v1fcfqz7w2h6qh', 'NzY4ODFkMDUyOTBlMDc1MWE0MWJmYWUzNTIyNDE4MzYzODM2NmUzYTp7fQ==', '2016-04-13 18:50:39'),
('vpxubbz5uttsacyfig6h7q8kkbgf9wp0', 'NDI0OGUzNjcxMDRmYjVjOGRkN2YyNGUyZGZiZjRkNTE5MGMxNDE5Njp7Il9hdXRoX3VzZXJfaGFzaCI6ImU0YmFmYTUyZmUwOTM2YjJmM2RiNzI0MDJiMTUxMTEzZWFkZTc0YzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2018-04-16 23:30:41'),
('vvl48498ms68bisz0xxqvqj9frupu1ey', 'ZGFhYWMzNGEzOGUwYmY3NmJhMTdkMDNjYWY2NmUwZjhkOGNhZjAyNDp7Il9hdXRoX3VzZXJfaGFzaCI6IjI5YWYwYzRiZjNmMjg3ZDM1ZTc0ZTZhNmY2YWZiZmNkYWUwNjQ1ZDAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9', '2016-02-29 13:12:55'),
('w044rvp9ftpj7yq4scuydltotsaw8x9f', 'MTA5YzQwZTAzNmIzMWQ0NmY5Mjk2MTczZTNiNjY4NTE3NWJiMDAzZjp7Il9hdXRoX3VzZXJfaGFzaCI6IjcyNzZlMTM0YTEyN2JlYzg3ZmI5N2FmZjgwNjEyMTE4MDBmNGM1ZDciLCJfbWVzc2FnZXMiOiJbW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl0sW1wiX19qc29uX21lc3NhZ2VcIiwwLDQwLFwiVmVyaWZpcXVlIHF1ZSBsb3MgY2FtcG9zIGVzdFxcdTAwZTluIGNhcmdhZG9zIGNvcnJlY3RhbWVudGUhXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCw0MCxcIlZlcmlmaXF1ZSBxdWUgbG9zIGNhbXBvcyBlc3RcXHUwMGU5biBjYXJnYWRvcyBjb3JyZWN0YW1lbnRlIVwiXV0iLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2018-04-23 00:33:36'),
('w5ljvgewerq8jtjyf9bievz7pbdv7x3m', 'NTZmOTY4Yzc0NDZjMDJiYzIzOTE4OThhMDI2OGVmMTZjYjUwNjNiZjp7Il9hdXRoX3VzZXJfaGFzaCI6ImUzYjIyMzhkODY2ZDMxY2ZmMGZjYTY2ZmJhNDhhNmVmMTVjMTdjZjMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjQzfQ==', '2019-07-14 19:37:05'),
('wb4yzhvux9o2asvnj3g1btwdulqk3g3v', 'MzM0MGNhNGI0Nzc1OGQ2ZTcwYzg2YjAzM2NjOTNiNzUyZDA2OWZhYjp7Il9hdXRoX3VzZXJfaGFzaCI6IjUxYjQ4OGZhYzQ0YWU3NmUyZjRlYjZhZmFmNjQ0ZjgzYjEzNTFhOTEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-05-27 22:11:53'),
('wm5ulcqcs084o22sxol2vnqp1rgkbn3n', 'ZjdlODBiZGFkNjFiNWQ2OWRkNWUxNWE5ODE1MmRlZjkwOWM2MDcyOTp7Il9tZXNzYWdlcyI6IltbXCJfX2pzb25fbWVzc2FnZVwiLDAsNDAsXCJWZXJpZmlxdWUgcXVlIGxvcyBjYW1wb3MgZXN0XFx1MDBlOW4gY2FyZ2Fkb3MgY29ycmVjdGFtZW50ZSFcIl1dIiwiX2F1dGhfdXNlcl9pZCI6MSwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==', '2017-05-17 01:03:40'),
('x7refo5r17z7c13bhddjdvn9tk441wnq', 'MDUzYmZhZWU5Y2MyZGM2NjAyMzU2Yzg2OWZkZDQ4ZGJkOWM1ZDM1Zjp7Il9hdXRoX3VzZXJfaGFzaCI6IjczYzAyNDdmODEyOTI2NjQ4ZDBiOGNjNzlmNzBkNTkyYzA1MGQ5ZGQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjYyfQ==', '2019-09-19 18:01:35'),
('xb4ajn8zqevzon1hq6alro1squmg61z3', 'YTk4MGY1MGM5ZjVjMGM1Mjg2OGU1YmZiZDI3NDZjMzdiNTllYmVkMjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFhYzJlYmE2ZjAzMWE1ZmRkMzc4YTdiMmNkZTM2YzI0Y2ZkOWE4MWIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjQ0fQ==', '2019-07-16 12:51:23'),
('xbab4jty7dde79pfkgc6uj8ig56p6xf2', 'MzNkNTY5ZTU3ZWUyOTc5MWQ1NzE5ZjYwYjNlZWJiMjZmNDA2YmM5ODp7Il9hdXRoX3VzZXJfaGFzaCI6IjVhMDFhNDE2YmI5YmFhMDc5MDVlYmIwNjk3ZGRjYzllYzkyMzZkNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2018-05-15 13:15:41'),
('xfmjnpkjuelxwju3ek04qeux1wgwjqcq', 'MWQwM2ZmNGM5NzRjMTFlYTc3YmY2MzJjYjI2YzQ1MWM2MzliZjVjMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImM2M2RlMGUyNDk3YzQyNGYwNmZhYTIwYzdjZjBiYTYxYTM1MGQ4ZGQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-06-25 19:27:01'),
('xks4x1ycgf8b0h5xcw4197lmb40ov6nj', 'MWQwM2ZmNGM5NzRjMTFlYTc3YmY2MzJjYjI2YzQ1MWM2MzliZjVjMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImM2M2RlMGUyNDk3YzQyNGYwNmZhYTIwYzdjZjBiYTYxYTM1MGQ4ZGQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-06-01 10:57:00'),
('xqoigkt16gbge9pbg2rvumilmm92pm91', 'Yjc0NDU3YmYwZWQ3MDU3MjA5M2U1ZGMyNGJmNzA5OGIyZWY1ZjI1Njp7Il9hdXRoX3VzZXJfaGFzaCI6IjZkNTBhNTFiMTIwYmZmNDkyZjRhNjU1MjkxZGIyMjY1OGU0MjIzODciLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2018-05-21 00:44:00'),
('xwiufhz6mfywa9uwizwxn59d96tpw1vi', 'N2JkZDY0NjIzYjc0YzdmYTViZDY0ODA0MzFlMDcwNDVlNzQ4ZjdmZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjdhZTc5ZjVkYzMwMDNhNjA1Yjc1OTc3MGZjYTA4MDRjNzY5ZTE0NzYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-05-15 13:44:05'),
('y142xkd4eg0wd9nwhvv7fejtwbwpj947', 'NTZiNDQxNGE4Zjk3NmJmYjk2Y2IwMTFjNzllMGMwODIwM2FjODE4Yzp7Il9hdXRoX3VzZXJfaGFzaCI6ImQxZjc5Yjg2NzA5YzUwMjBmNDdiMDEzZjY2NzFlYzM3YWI3ZWFmYjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjl9', '2017-07-24 14:41:44'),
('ykpejtfmot4tbzg8us6jpjfc6epki3iz', 'MzY0Njg3MmIwODBhZDhlZjMzMmY2OTA2MDQzNjJlMzBmMTFjYWI2Mzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2017-05-23 23:04:27'),
('yq4oaojuuiszp2scvkjs4o6w7dxces4q', 'NzY4ODFkMDUyOTBlMDc1MWE0MWJmYWUzNTIyNDE4MzYzODM2NmUzYTp7fQ==', '2017-05-16 22:45:50'),
('yqqf6atp012c3az5f1879cjl8szcveac', 'ZjAwNmZkMmEyY2E1ZDE2MmIyOGYzM2VlNmNiZjFhNmMzZTQ2YTFmNDp7Il9hdXRoX3VzZXJfaGFzaCI6IjUxZmM3ZWJkNTc4MDQ5NDdiYWQ1MGE1YTQyMzY1NWIwNWYyYWEwNTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjM5fQ==', '2019-07-05 20:20:18'),
('yso0uonr674pewvke6j7zbz9db5yqng9', 'MTg5OTI3NDRmMzFiZGM4YWI5NDIzZGZlMmUyYjExMGY5NjI3YjVmMDp7Il9hdXRoX3VzZXJfaGFzaCI6ImRkYzQyODFlMDY1NDI5OTg5ZDEwMjg1MjIzMDA3MGJlYjM5MzNhNGQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjUzfQ==', '2019-07-20 02:15:56'),
('ysruc8807cl4dwykpznrqskahlia2gkk', 'ZjAwNmZkMmEyY2E1ZDE2MmIyOGYzM2VlNmNiZjFhNmMzZTQ2YTFmNDp7Il9hdXRoX3VzZXJfaGFzaCI6IjUxZmM3ZWJkNTc4MDQ5NDdiYWQ1MGE1YTQyMzY1NWIwNWYyYWEwNTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjM5fQ==', '2019-06-28 01:19:10'),
('yws0k4j3sl63a2haha27nhmad3qn03r5', 'MTAwMmIwNzk4YTQ4ZDE4NzZlYjdiMjEzM2I5NWE3YTQ3OGE1MjcxMjp7Il9hdXRoX3VzZXJfaGFzaCI6ImJlMTU0YjUwZDU0ZmZiNjcxZDM4NDg5MmNmNDk4OWRlYWYzZmY3OGEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2016-03-10 16:28:24'),
('yx8ng5tv7g9ltrmx52ke2e4fkjm2nzqz', 'NWM5OWQyZTg4MDM2YzBiOTJmZmNiZmQ2YmNiNzIxZGY1OWZiYTk5OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjJlMmM3MjUzZTE3NzIyYmM5ZjI4ZjJhMmU3NDc4MDMxMzhmOTViOTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-03-30 00:32:36'),
('z05txrwdmajbj46ps2hv14etqh4qt497', 'MzM0MGNhNGI0Nzc1OGQ2ZTcwYzg2YjAzM2NjOTNiNzUyZDA2OWZhYjp7Il9hdXRoX3VzZXJfaGFzaCI6IjUxYjQ4OGZhYzQ0YWU3NmUyZjRlYjZhZmFmNjQ0ZjgzYjEzNTFhOTEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-05-28 16:23:33'),
('z0es6nxonb0w3ryojo0pp2ykkohcc06p', 'ZjAwNmZkMmEyY2E1ZDE2MmIyOGYzM2VlNmNiZjFhNmMzZTQ2YTFmNDp7Il9hdXRoX3VzZXJfaGFzaCI6IjUxZmM3ZWJkNTc4MDQ5NDdiYWQ1MGE1YTQyMzY1NWIwNWYyYWEwNTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjM5fQ==', '2019-07-03 15:57:01'),
('za5bhwv5x0hxtvihkxskbh1df7g8t441', 'MmEyYjBmNWM2NGVlNzc0ZWRlMTViMzU0NjYzZGZjYjM3NGQ5NWE0MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjRmY2UxNDYwOTg5NTJjMzdkZWEyNzYyMGI1OWJjOTNlODg0N2NmYTMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2016-03-25 14:07:33'),
('zk588ljzx56o9pzsooi1j8evyf1qdrkp', 'YmZlZTgxNGIxZTRiYmM3MTUwOTRmYjRjNDg0ZjY3MDc4MzY1NTgyODp7Il9hdXRoX3VzZXJfaGFzaCI6IjcwNGYyOGU1OWNjN2Q0ZjRkZjUyNzFmYjdmMGEzYmQ4NDE3YzM3MjMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjMyfQ==', '2018-06-17 15:21:11'),
('zkccfjoh64z562xyqy53t1nq6ehh5ilg', 'MTcwY2E4NjE3MWZhNWNkYmYzMzcxN2VmNDI2MDZlZGVmMDRjODk3Mzp7Il9hdXRoX3VzZXJfaGFzaCI6IjZmNjBiNmUwNTIwOTlkYTliZDQ5NzgxMjk0ZDZkMDY5MmJjODM0MGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-05-04 02:21:56'),
('zkfwbav6lpl90860xeluozcfygxco68d', 'NzY4ODFkMDUyOTBlMDc1MWE0MWJmYWUzNTIyNDE4MzYzODM2NmUzYTp7fQ==', '2016-02-18 00:08:00'),
('zmlurlieitmbfbo4flrw67gugttw67jb', 'ZWM5YThhNDA2ZTI4YTFiMTQxY2Q2OTI2ZWIzODYzYTQwZGI2Y2IxZjp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ3NzIxYWQ0NjgyMmFjZjQ2Y2U3NWVkNzg0ODEyMWZmMmZjNDgyMTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2015-10-22 23:58:41'),
('zna1nfezo3qzfanf7b5z4cymwxcv2e32', 'NzY4ODFkMDUyOTBlMDc1MWE0MWJmYWUzNTIyNDE4MzYzODM2NmUzYTp7fQ==', '2017-05-05 23:19:18'),
('zor8c22l7bpjf71ip6km48h7arphl4us', 'MWQwM2ZmNGM5NzRjMTFlYTc3YmY2MzJjYjI2YzQ1MWM2MzliZjVjMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImM2M2RlMGUyNDk3YzQyNGYwNmZhYTIwYzdjZjBiYTYxYTM1MGQ4ZGQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-05-30 23:45:40'),
('zqaxro8wdpxfjev3l3snwaytcajy9739', 'MzY0Njg3MmIwODBhZDhlZjMzMmY2OTA2MDQzNjJlMzBmMTFjYWI2Mzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2017-04-25 16:57:04'),
('zzw3vz9zwze3mf48u38q33q8tam5oph9', 'MTM2OTVjMTRmMWIzMGFmNDBhMzkwMDJkZjM4NGM1YmQxNDVkMDBlMzp7Il9hdXRoX3VzZXJfaGFzaCI6IjE4ZmZjMThjNWM5YzBjMTIyNzUzZmFmNzQwYWQ3Y2YxMWUxZjQ0MDIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2017-07-17 16:17:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_site`
--

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examen`
--

CREATE TABLE `examen` (
  `id_examen` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `ojo` int(11) NOT NULL,
  `ANESTESIA` int(11) NOT NULL,
  `CLEARANCE` int(11) NOT NULL,
  `MEDICAM_APTO` tinyint(1) NOT NULL,
  `HO_CX_REFRACTIVA` int(11) NOT NULL,
  `HO_AMBL` tinyint(1) NOT NULL,
  `HO_DIPL` tinyint(1) NOT NULL,
  `HO_ECTA` int(1) NOT NULL,
  `TRATAM_GOTAS` int(11) NOT NULL,
  `OTRAS_GOTAS` longtext NOT NULL,
  `EO_PROM` tinyint(1) NOT NULL,
  `EO_ENDID` int(11) NOT NULL,
  `EO_OPACC` int(11) NOT NULL,
  `EO_BLEFA` tinyint(1) NOT NULL,
  `EO_GUTATTA` int(11) NOT NULL,
  `PIO` int(10) UNSIGNED DEFAULT NULL,
  `EO_AVP` int(11) DEFAULT NULL,
  `EO_RPUPIL` int(11) NOT NULL,
  `EO_TINC` tinyint(1) NOT NULL,
  `PCA` int(11) NOT NULL,
  `PCA_MM` decimal(5,2) DEFAULT NULL,
  `EO_DILATP` int(11) NOT NULL,
  `EO_IRID` int(11) NOT NULL,
  `EO_CAPSULA` int(11) NOT NULL,
  `EO_SINEQUIAS` int(11) NOT NULL,
  `CAT_N` int(11) NOT NULL,
  `CAT_C` int(11) NOT NULL,
  `CAT_P` int(11) NOT NULL,
  `EO_CAT_HM` tinyint(1) NOT NULL,
  `EO_CAT_B` tinyint(1) NOT NULL,
  `EO_CAT_R` tinyint(1) NOT NULL,
  `EO_CAT_N` tinyint(1) NOT NULL,
  `EO_CAT_TX` tinyint(1) NOT NULL,
  `EO_CAT_MO` tinyint(1) NOT NULL,
  `EO_CAT_I` tinyint(1) NOT NULL,
  `EO_CAT_PP` tinyint(1) NOT NULL,
  `EO_PSEUDO` tinyint(1) NOT NULL,
  `EO_ZONULAS` int(11) NOT NULL,
  `EO_VITREO` int(11) NOT NULL,
  `EO_RETINA` int(11) NOT NULL,
  `EO_ECO` tinyint(1) NOT NULL,
  `EO_OCT` int(11) NOT NULL,
  `EO_COOP` int(11) NOT NULL,
  `AVMCL` int(11) DEFAULT NULL,
  `AVMCC` int(11) DEFAULT NULL,
  `AVCE` int(11) DEFAULT NULL,
  `RP_E` decimal(5,2) DEFAULT NULL,
  `RP_C` decimal(5,2) DEFAULT NULL,
  `RP_EJE` int(10) UNSIGNED DEFAULT NULL,
  `QUERA_AK1_1` decimal(5,2) DEFAULT NULL,
  `QUERA_AK1_2` decimal(5,2) DEFAULT NULL,
  `QUERA_AK2_1` decimal(5,2) DEFAULT NULL,
  `QUERA_AK2_2` decimal(5,2) DEFAULT NULL,
  `QUERA_TK1_1` decimal(5,2) DEFAULT NULL,
  `QUERA_TK2_1` decimal(5,2) DEFAULT NULL,
  `QUERA_TK1_2` decimal(5,2) DEFAULT NULL,
  `QUERA_TK2_2` decimal(5,2) DEFAULT NULL,
  `LIO_E` decimal(5,2) DEFAULT NULL,
  `LIO_C` decimal(5,2) DEFAULT NULL,
  `LIO_EJE` int(10) UNSIGNED DEFAULT NULL,
  `LENTE_INTRA` int(11) DEFAULT NULL,
  `ABERROM` int(11) DEFAULT NULL,
  `LAX` decimal(5,2) DEFAULT NULL,
  `PAQ` decimal(5,2) DEFAULT NULL,
  `REC_ENDO` int(11) NOT NULL,
  `TIPO_FORMULA` int(11) NOT NULL,
  `INCIS` decimal(5,2) DEFAULT NULL,
  `TIPO_I` int(11) DEFAULT NULL,
  `TIPO_INCIS` int(11) DEFAULT NULL,
  `INCIS_TAM` decimal(5,2) DEFAULT NULL,
  `INCIS_E1` decimal(5,2) DEFAULT NULL,
  `INCIS_E2` decimal(5,2) DEFAULT NULL,
  `CTE_A` decimal(5,2) NOT NULL,
  `OBSERVACIONES` longtext NOT NULL,
  `CRISTALINO` decimal(5,2) DEFAULT NULL,
  `EO_DEG_SENIL` tinyint(1) NOT NULL,
  `EO_PAP_GLAU` tinyint(1) NOT NULL,
  `EO_PELICULA` int(11) NOT NULL,
  `ASFERICIDAD` decimal(5,2) DEFAULT NULL,
  `EO_OTROS` longtext NOT NULL,
  `EO_CIC_MAC` tinyint(1) NOT NULL,
  `EO_RET_DIAB` tinyint(1) NOT NULL,
  `PUPI_MESO` decimal(5,2) DEFAULT NULL,
  `PUPI_ESCO` decimal(5,2) DEFAULT NULL,
  `PUPI_FOTO` decimal(5,2) DEFAULT NULL,
  `OJO_SECO` int(11) DEFAULT NULL,
  `GAL_ABERR_ESF` int(11) DEFAULT NULL,
  `GAL_ASF` int(11) DEFAULT NULL,
  `GAL_QUATREFOIL` int(11) DEFAULT NULL,
  `GAL_ABERRACIONES` int(11) DEFAULT NULL,
  `GAL_TREFOIL` int(11) DEFAULT NULL,
  `GAL_COMA_CORNEAL` int(11) DEFAULT NULL,
  `GAL_DIST_KAPPA` int(11) DEFAULT NULL,
  `GAL_EXCENTRICIDAD` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `examen`
--

INSERT INTO `examen` (`id_examen`, `user_id`, `id_paciente`, `ojo`, `ANESTESIA`, `CLEARANCE`, `MEDICAM_APTO`, `HO_CX_REFRACTIVA`, `HO_AMBL`, `HO_DIPL`, `HO_ECTA`, `TRATAM_GOTAS`, `OTRAS_GOTAS`, `EO_PROM`, `EO_ENDID`, `EO_OPACC`, `EO_BLEFA`, `EO_GUTATTA`, `PIO`, `EO_AVP`, `EO_RPUPIL`, `EO_TINC`, `PCA`, `PCA_MM`, `EO_DILATP`, `EO_IRID`, `EO_CAPSULA`, `EO_SINEQUIAS`, `CAT_N`, `CAT_C`, `CAT_P`, `EO_CAT_HM`, `EO_CAT_B`, `EO_CAT_R`, `EO_CAT_N`, `EO_CAT_TX`, `EO_CAT_MO`, `EO_CAT_I`, `EO_CAT_PP`, `EO_PSEUDO`, `EO_ZONULAS`, `EO_VITREO`, `EO_RETINA`, `EO_ECO`, `EO_OCT`, `EO_COOP`, `AVMCL`, `AVMCC`, `AVCE`, `RP_E`, `RP_C`, `RP_EJE`, `QUERA_AK1_1`, `QUERA_AK1_2`, `QUERA_AK2_1`, `QUERA_AK2_2`, `QUERA_TK1_1`, `QUERA_TK2_1`, `QUERA_TK1_2`, `QUERA_TK2_2`, `LIO_E`, `LIO_C`, `LIO_EJE`, `LENTE_INTRA`, `ABERROM`, `LAX`, `PAQ`, `REC_ENDO`, `TIPO_FORMULA`, `INCIS`, `TIPO_I`, `TIPO_INCIS`, `INCIS_TAM`, `INCIS_E1`, `INCIS_E2`, `CTE_A`, `OBSERVACIONES`, `CRISTALINO`, `EO_DEG_SENIL`, `EO_PAP_GLAU`, `EO_PELICULA`, `ASFERICIDAD`, `EO_OTROS`, `EO_CIC_MAC`, `EO_RET_DIAB`, `PUPI_MESO`, `PUPI_ESCO`, `PUPI_FOTO`, `OJO_SECO`, `GAL_ABERR_ESF`, `GAL_ASF`, `GAL_QUATREFOIL`, `GAL_ABERRACIONES`, `GAL_TREFOIL`, `GAL_COMA_CORNEAL`, `GAL_DIST_KAPPA`, `GAL_EXCENTRICIDAD`) VALUES
(1, 1, 1, 0, 1, 1, 1, 2, 1, 1, 0, 1, 'timolol', 1, 1, 2, 1, 3, 23, 25, 0, 1, 3, '55.00', 1, 0, 0, 2, 4, 4, 5, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 5, 1, 1, 0, 0, 14, 0, 14, '-2.00', '-0.50', 90, '40.00', '80.00', '39.00', '160.00', '23.00', '11.00', '23.00', '44.00', '20.00', '30.00', 45, NULL, 0, '22.34', '650.00', 1, 0, NULL, 1, 1, '5.00', NULL, NULL, '115.30', 'Toma antiprostáticos', '5.02', 1, 1, 1, '-0.23', '', 1, 1, '3.00', '5.00', '2.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, 2, 0, 1, 0, 1, 1, 0, 0, 0, 2, 'systane', 1, 0, 0, 0, 2, 20, 20, 0, 0, 1, '3.00', 1, 0, 0, 0, 2, 3, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 3, 1, 0, 0, 0, 0, NULL, NULL, NULL, '1.50', '-2.50', 90, '47.00', '90.00', '47.50', '180.00', NULL, NULL, NULL, NULL, '25.00', NULL, NULL, NULL, 0, '23.00', '556.00', 1, 0, '90.00', NULL, NULL, NULL, NULL, NULL, '115.30', 'realizar dilatación pupilar intraop', NULL, 0, 0, 1, NULL, '', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 1, 8, 1, 1, 0, 1, 2, 0, 0, 0, 1, 'combi', 0, 0, 1, 0, 0, 28, 30, 0, 0, 3, NULL, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 8, 3, 8, '1.00', '0.50', 180, '43.00', '10.00', '44.00', '100.00', NULL, NULL, NULL, NULL, '18.00', NULL, NULL, NULL, 0, '23.44', '554.00', 1, 0, '120.00', 0, 1, '2.50', '90.00', '270.00', '115.30', 'bloqueo parabulbar', '4.56', 1, 1, 0, '-0.15', '', 0, 0, '4.00', '6.00', '3.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 1, 9, 0, 1, 1, 1, 0, 0, 0, 0, 2, '', 1, 0, 0, 0, 2, 16, 20, 1, 1, 3, '3.22', 0, 0, 1, 0, 6, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 13, 0, 14, '1.50', '1.00', 90, '39.00', '10.00', '40.00', '120.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '26.00', '629.00', 0, 0, '120.00', 0, 0, '2.50', '120.00', '180.00', '115.30', '', '4.21', 1, 1, 1, '-0.25', '', 0, 0, '5.00', '7.00', '3.00', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 1, 10, 1, 2, 1, 1, 1, 0, 0, 0, 0, '', 0, 1, 1, 1, 3, 13, 20, 2, 1, 2, '2.56', 2, 3, 1, 0, 3, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 13, 0, 14, NULL, '-2.50', 100, '43.00', '17.00', '41.00', '107.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '22.50', '600.00', 0, 0, '17.00', 0, 1, '2.50', '17.00', NULL, '115.30', '', '5.00', 0, 0, 0, '0.12', '', 0, 1, '6.00', '8.00', '2.00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 1, 11, 0, 2, 1, 1, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 3, 27, 25, 0, 0, 4, '4.00', 1, 0, 1, 1, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 14, 0, 14, '-5.00', '-3.00', 10, '47.00', '100.00', '50.00', '10.00', NULL, NULL, NULL, NULL, '15.00', NULL, NULL, 0, 0, '28.00', '556.00', 0, 0, '120.00', 0, 0, '3.00', '0.00', '180.00', '115.30', '', '4.90', 0, 0, 0, '-0.27', '', 1, 0, '5.00', '7.00', '3.00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 1, 12, 0, 1, 1, 1, 0, 0, 0, 0, 0, '', 1, 1, 1, 1, 1, 15, 25, 0, 1, 3, '2.00', 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 13, 1, 13, '2.00', '2.50', 90, '40.00', '180.00', '39.00', '90.00', NULL, NULL, NULL, NULL, NULL, NULL, 90, NULL, 0, '22.00', '400.00', 2, 0, '180.00', NULL, NULL, NULL, '0.00', NULL, '115.30', '', '5.50', 0, 0, 1, '0.13', '', 0, 0, '6.00', '4.60', '3.50', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 9, 13, 1, 2, 0, 1, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 12, NULL, 0, 0, 1, NULL, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '-2.00', '-0.50', 12, '42.25', '113.00', '44.25', '40.00', NULL, NULL, NULL, NULL, '22.50', NULL, NULL, NULL, 0, '23.10', '532.00', 2, 0, '0.00', NULL, 0, NULL, '0.00', '180.00', '115.30', 'Uveitis', NULL, 0, 0, 0, NULL, '', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 9, 14, 0, 2, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 12, NULL, 1, 0, 1, NULL, 1, 0, 0, 0, 5, 4, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 4, 3, NULL, NULL, NULL, '42.00', NULL, '42.75', NULL, NULL, NULL, NULL, NULL, '23.00', NULL, NULL, NULL, 0, '23.04', '521.00', 2, 0, '0.00', NULL, NULL, NULL, '0.00', '180.00', '118.00', '', NULL, 0, 0, 0, NULL, '', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 9, 15, 0, 2, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, 2, 0, 0, 14, NULL, 0, 0, 1, NULL, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, NULL, 5, '-9.00', '-1.00', 107, '38.25', NULL, '38.75', NULL, NULL, NULL, NULL, NULL, '20.50', NULL, NULL, NULL, 0, '25.29', '532.00', 2, 0, '0.00', NULL, NULL, NULL, '0.00', '180.00', '115.30', 'Pte suspendida qx previa por edema pulmonar.\r\nEl pte tiene su lente', NULL, 0, 0, 0, NULL, '', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 9, 16, 1, 2, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 10, NULL, 1, 0, 1, NULL, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 2, 3, 2, NULL, NULL, NULL, '42.00', NULL, '44.00', NULL, NULL, NULL, NULL, NULL, '22.50', NULL, NULL, NULL, 0, '23.18', '532.00', 2, 0, '0.00', NULL, NULL, NULL, '0.00', '180.00', '118.00', '', NULL, 0, 0, 0, NULL, '', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 18, 17, 1, 1, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 15, 30, 0, 0, 1, NULL, 1, 0, 0, 0, 2, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 9, NULL, NULL, NULL, '42.87', '175.00', '43.87', '85.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 2, 0, '0.00', NULL, NULL, NULL, '0.00', NULL, '118.00', '', NULL, 1, 0, 0, NULL, '', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 18, 18, 1, 1, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 2, 0, '0.00', NULL, NULL, NULL, '0.00', NULL, '118.00', '', NULL, 0, 0, 0, NULL, '', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 18, 19, 0, 1, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 15, 25, 0, 0, 3, NULL, 1, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 7, '-3.00', '-1.75', 30, '42.75', '170.00', '43.25', '80.00', NULL, NULL, NULL, NULL, '23.00', NULL, NULL, NULL, 0, '22.90', NULL, 2, 3, '90.00', NULL, NULL, NULL, NULL, NULL, '118.00', 'ANESTESIA TOPICA\r\n', '6.00', 0, 0, 0, NULL, '', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 24, 20, 0, 0, 0, 1, 0, 1, 0, 0, 0, '', 0, 1, 1, 0, 0, 22, NULL, 0, 0, 3, NULL, 2, 2, 0, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 4, 2, 0, 0, 0, 0, 3, 0, 0, '12.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 2, 0, '0.00', NULL, NULL, NULL, '0.00', '189.00', '118.00', '', NULL, 0, 0, 1, NULL, '', 0, 0, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 1, 21, 0, 1, 1, 1, 1, 0, 0, 0, 2, 'irix', 0, 0, 0, 1, 1, 16, 40, 0, 0, 3, '3.26', 0, 5, 0, 0, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 12, 2, 13, '-2.00', '2.00', 120, '43.00', '40.00', '45.00', '120.00', '43.50', '45.55', '42.00', '120.00', '25.00', '1.00', 120, NULL, NULL, '26.00', '545.00', 2, 0, '120.00', NULL, NULL, NULL, NULL, NULL, '115.30', '', '4.80', 0, 0, 0, '-0.34', '', 0, 0, '3.00', '5.00', '2.00', 0, 1, 2, 1, 1, 1, 1, 0, 0),
(17, 35, 22, 1, 2, 1, 1, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 16, NULL, 2, 1, 4, '3.60', 0, 0, 0, 0, 3, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, NULL, 3, '-13.00', '-0.50', 170, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, '135.00', NULL, NULL, NULL, NULL, NULL, '115.30', 'Se solicita OCT macular y Ecografía OI', NULL, 0, 0, 0, NULL, '', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 36, 23, 0, 1, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 3, NULL, 1, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 11, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '41.00', '42.00', '180.00', '90.00', '23.00', NULL, NULL, NULL, NULL, NULL, NULL, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, '118.00', 'ojo unico', NULL, 0, 0, 0, NULL, '', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 1, 24, 0, 1, 0, 1, 0, 0, 0, 0, 0, 'combigan', 0, 0, 0, 0, 0, 16, NULL, 0, 0, 3, NULL, 0, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 10, 0, 10, '1.00', '1.00', 180, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22.00', NULL, NULL, NULL, NULL, '23.66', '552.00', 2, 0, '163.00', NULL, NULL, NULL, NULL, NULL, '118.70', '', '5.13', 0, 1, 0, '-0.37', '', 0, 0, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 1, 25, 1, 1, 0, 1, 0, 0, 0, 0, 0, 'combigan', 0, 0, 0, 0, 0, 18, NULL, 0, 0, 1, NULL, 0, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 11, 3, 11, '1.50', '0.75', 10, '42.50', '122.00', '43.50', '32.00', NULL, NULL, NULL, NULL, '21.00', NULL, NULL, NULL, NULL, '23.65', '568.00', 2, 0, '120.00', NULL, NULL, NULL, NULL, NULL, '118.70', '', '5.39', 0, 1, 0, '-0.38', '', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 39, 26, 0, 1, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 2, 13, NULL, 0, 1, 3, NULL, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 11, 0, 14, '3.00', '-2.00', 180, '43.00', '90.00', '44.00', '180.00', NULL, NULL, NULL, NULL, '22.00', NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, '118.00', '', NULL, 0, 0, 0, NULL, '', 0, 0, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 39, 27, 0, 1, 0, 1, 0, 0, 0, 0, 1, '', 1, 0, 0, 0, 1, 15, NULL, 0, 1, 2, NULL, 0, 0, 1, 0, 2, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 9, 0, 10, '-2.00', '-3.00', 180, '90.00', '42.00', '0.00', '40.00', NULL, NULL, NULL, NULL, '24.00', NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, '90.00', NULL, NULL, NULL, NULL, NULL, '118.00', 'G', NULL, 0, 0, 0, NULL, '', 0, 0, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 44, 28, 0, 0, 0, 1, 0, 0, 0, 1, 0, 'no refiere', 0, 0, 0, 0, 0, NULL, 20, 0, 0, 1, '2.85', 1, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 9, 1, 12, NULL, NULL, NULL, '40.53', '1.00', '42.11', '94.00', NULL, NULL, NULL, NULL, '21.50', NULL, NULL, NULL, NULL, '24.19', '525.00', 2, 0, '120.00', NULL, 0, NULL, NULL, NULL, '118.00', '', NULL, 0, 0, 0, NULL, '', 0, 0, '5.00', '6.00', '3.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 44, 29, 0, 0, 0, 1, 0, 0, 0, 1, 0, 'no refiere', 0, 0, 0, 0, 0, NULL, 20, 0, 0, 1, '2.85', 1, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 9, 1, 12, NULL, NULL, NULL, '40.53', '1.00', '42.11', '94.00', NULL, NULL, NULL, NULL, '21.50', NULL, NULL, NULL, NULL, '24.19', '525.00', 2, 0, '120.00', NULL, 0, NULL, NULL, NULL, '118.00', '', NULL, 0, 0, 0, NULL, '', 0, 0, '5.00', '6.00', '3.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 58, 30, 0, 2, 0, 1, 0, 0, 0, 0, 2, '', 1, 0, 2, 0, 0, 22, NULL, 0, 1, 3, NULL, 0, 0, 0, 0, 4, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, '-2.00', '-1.00', 170, '44.25', '70.00', '46.50', '160.00', NULL, NULL, NULL, NULL, '22.50', NULL, NULL, NULL, NULL, '23.25', '500.00', 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, '118.70', '', NULL, 0, 0, 0, NULL, '', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 61, 32, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 14, NULL, 0, 0, 2, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 14, '4.00', '0.50', 62, '42.29', '152.00', '43.12', '62.00', '42.27', '41.55', '51.00', '141.00', '4.00', '0.50', 62, NULL, NULL, '22.00', '520.00', 2, 5, '60.00', NULL, NULL, '2.85', '60.00', '240.00', '118.00', '', NULL, 0, 0, 0, NULL, '', 0, 0, '3.00', '3.00', '3.00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 65, 33, 1, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 3, '3.55', 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, NULL, NULL, NULL, '40.59', '172.00', '42.18', '82.00', '40.90', '42.30', '174.00', '84.00', '13.00', NULL, NULL, NULL, NULL, '28.00', '580.00', 2, 5, NULL, NULL, NULL, NULL, NULL, NULL, '118.70', '', '4.77', 0, 0, 0, NULL, '', 0, 0, NULL, NULL, NULL, 0, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `id_paciente` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `nrodocu` decimal(18,0) DEFAULT NULL,
  `sexo` varchar(1) NOT NULL,
  `edad` int(11) DEFAULT NULL,
  `direccion` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefonos` varchar(100) NOT NULL,
  `os` varchar(100) NOT NULL,
  `OC_PC` tinyint(1) NOT NULL,
  `OC_LF` tinyint(1) NOT NULL,
  `OC_LPF` tinyint(1) NOT NULL,
  `OC_MAN` tinyint(1) NOT NULL,
  `HM_EC` tinyint(1) NOT NULL,
  `HM_HTA` tinyint(1) NOT NULL,
  `HM_DBT` tinyint(1) NOT NULL,
  `HM_ET` tinyint(1) NOT NULL,
  `HM_EPOC` tinyint(1) NOT NULL,
  `HM_OTRAS` longtext NOT NULL,
  `MEDICAC_AAS` tinyint(1) NOT NULL,
  `MEDICAC_ACOAG` tinyint(1) NOT NULL,
  `MEDICAC_ABLOQ` tinyint(1) NOT NULL,
  `TOMA_AAS_ACOAG` tinyint(1) NOT NULL,
  `ALERGIAS` longtext NOT NULL,
  `OC_LF_LPF` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`id_paciente`, `nombre`, `nrodocu`, `sexo`, `edad`, `direccion`, `email`, `telefonos`, `os`, `OC_PC`, `OC_LF`, `OC_LPF`, `OC_MAN`, `HM_EC`, `HM_HTA`, `HM_DBT`, `HM_ET`, `HM_EPOC`, `HM_OTRAS`, `MEDICAC_AAS`, `MEDICAC_ACOAG`, `MEDICAC_ABLOQ`, `TOMA_AAS_ACOAG`, `ALERGIAS`, `OC_LF_LPF`) VALUES
(1, 'Juan Manuel Jacquet', '29387656', 'M', 33, 'Segui 1616 Dpto 8', '', '', 'iapos', 1, 0, 0, 1, 1, 1, 1, 1, 1, 'sdasldlasdlasld', 1, 1, 1, 1, 'penicilina', 2),
(2, 'Jose Perez', '28456789', 'M', 35, 'echagüe 7300', '', '4532085', 'unl', 1, 1, 0, 0, 1, 1, 0, 0, 0, '', 0, 0, 1, 1, 'dipirona', 1),
(3, 'Dot Francisco', '6234576', 'M', 60, 'suipacha 2225', '', '4536789', 'iapos', 1, 1, 0, 0, 1, 1, 1, 0, 0, 'melanoma', 1, 1, 0, 0, 'penicilina', NULL),
(4, 'asdasdasd', NULL, 'M', 33, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, '', NULL),
(5, 'asdasdasd', NULL, 'M', 33, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, '', NULL),
(6, 'asdasdasd', NULL, 'M', 33, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, '', NULL),
(7, 'asdasdasd', NULL, 'M', 33, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, '', NULL),
(8, 'romang sulma', '2403405', 'F', 90, '', '', '4981735', 'pami', 1, 0, 1, 0, 0, 1, 0, 0, 0, '', 1, 1, 0, 0, 'rinitis', 2),
(9, 'BRANDO MA ESTHER', '12345678', 'F', 75, 'salta 3456', '', '4532087', 'pami', 1, 1, 0, 1, 1, 1, 1, 0, 0, '', 1, 1, 0, 0, 'penicilina', 1),
(10, 'braida maria', NULL, 'F', 60, 'suipacha 234', '', '4806296', 'pami', 0, 0, 1, 1, 0, 1, 1, 0, 0, '', 0, 1, 0, 1, '', NULL),
(11, 'ARANDA NORMA', NULL, 'F', 72, 'salta 2234', '', '4697590', 'pami', 1, 0, 0, 1, 0, 1, 0, 0, 1, 'paralisis facial', 0, 1, 0, 1, 'penicilina', 1),
(12, 'del valle ', '675', 'F', 67, 'Telma', '', '156311665', 'iapos', 1, 1, 0, 1, 0, 1, 1, 0, 0, '', 1, 0, 0, 1, 'penicilina', 1),
(13, 'Gomez', NULL, 'M', 38, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 0, 0, 0, 0, '', 1),
(14, 'Contreras Marta', '16745351', 'M', 54, 'Consitucion 571 - VVG', '', '153245029', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, '', 1),
(15, 'Bonelli Oscar', '11294100', 'M', 62, '3 de Feb 1564 - Arroyo Seco', '', '03402 15419307', '', 0, 0, 0, 0, 0, 1, 0, 0, 1, '', 0, 0, 0, 0, '', 1),
(16, 'Miranda Agustina', NULL, 'M', 66, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, '', 1),
(17, 'GARCIA MIGUEL ANGEL', '13251344', 'M', 59, '', '', '', 'OSPE', 0, 0, 0, 0, 0, 0, 0, 1, 0, 'ADMINISTRATIVO', 1, 0, 1, 0, 'NO', 1),
(18, 'AGUILAR MIRTA SUSANA', '10590865', 'F', 64, '', '', '', 'PAMI', 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 0, 0, 'NO', 2),
(19, 'RAMIREZ MANUEL', '5305813', 'M', 81, '', '', '', 'PAMI', 0, 0, 0, 0, 0, 1, 0, 0, 0, 'LOSARTAN', 0, 0, 0, 0, 'NO', 1),
(20, 'An', NULL, 'F', 51, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 0, 0, 0, 0, '', 1),
(21, 'Birello R', '4678900', 'F', 65, 'salta 2234', '', '4536789', 'iapos', 1, 0, 0, 0, 0, 1, 0, 0, 1, 'ansiedad y estrés', 1, 0, 0, 1, 'penicilina', 2),
(22, 'Amarfil, María', '13608994', 'F', 57, '', '', '2645164009', 's/c', 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 1, 0, 0, 0, 'Niega', 1),
(23, 'Anuncibay', '1', 'F', 66, '1', '', 'q', 'd', 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 0, 0, 1, 0, '', 1),
(24, 'virili ireneo', '4748778', 'M', 72, '', '', '', 'iapos', 0, 0, 0, 1, 0, 1, 0, 0, 0, '', 0, 0, 0, 0, '', 1),
(25, 'virili ireneo', NULL, 'M', 72, '', '', '', 'iapos', 0, 0, 0, 1, 0, 1, 0, 0, 0, '', 0, 0, 0, 0, '', 1),
(26, 'Pedro', '3333333333', 'M', 55, 'Mayo', '', '3333333', 'Pami', 0, 0, 0, 1, 0, 0, 1, 0, 0, 'Piloto de avión', 0, 0, 1, 0, 'Dipirona', 1),
(27, 'Dominguez Juan ', '11111222', 'M', 59, 'velez sarsfield 1234', '', '4222235', 'pami', 0, 0, 0, 0, 0, 0, 1, 0, 0, 'Paciente hiper exigente ', 0, 0, 1, 0, 'Penicilina ', 1),
(28, 'benavidez alicia ', '11102033', 'F', 62, 'resistencia', '', '44444', 'insssep', 0, 0, 0, 0, 0, 0, 0, 0, 0, 'alergia', 0, 0, 0, 0, 'si', 2),
(29, 'benavidez alicia ', '11102033', 'F', 62, 'resistencia', '', '44444', 'insssep', 0, 0, 0, 0, 0, 0, 0, 0, 0, 'alergia', 0, 0, 0, 0, 'si', 2),
(30, 'Pedro Sánchez', NULL, 'M', 76, 'sds', '', 'eodo', '', 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 1, 0, 0, 0, '', 1),
(32, 'Zanelli,María.', '13613573', 'F', 54, 'Salgado 43', '', '02272 424225', 'Ospina', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, '', 1),
(33, 'Patricia Rabus', NULL, 'F', 63, '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 0, 0, '', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `id` int(11) NOT NULL,
  `paisnombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id`, `paisnombre`) VALUES
(1, 'Australia'),
(2, 'Austria'),
(3, 'Azerbaiyán'),
(4, 'Anguilla'),
(5, 'Argentina'),
(6, 'Armenia'),
(7, 'Bielorrusia'),
(8, 'Belice'),
(9, 'Bélgica'),
(10, 'Bermudas'),
(11, 'Bulgaria'),
(12, 'Brasil'),
(13, 'Reino Unido'),
(14, 'Hungría'),
(15, 'Vietnam'),
(16, 'Haiti'),
(17, 'Guadalupe'),
(18, 'Alemania'),
(19, 'Países Bajos, Holanda'),
(20, 'Grecia'),
(21, 'Georgia'),
(22, 'Dinamarca'),
(23, 'Egipto'),
(24, 'Israel'),
(25, 'India'),
(26, 'Irán'),
(27, 'Irlanda'),
(28, 'España'),
(29, 'Italia'),
(30, 'Kazajstán'),
(31, 'Camerún'),
(32, 'Canadá'),
(33, 'Chipre'),
(34, 'Kirguistán'),
(35, 'China'),
(36, 'Costa Rica'),
(37, 'Kuwait'),
(38, 'Letonia'),
(39, 'Libia'),
(40, 'Lituania'),
(41, 'Luxemburgo'),
(42, 'México'),
(43, 'Moldavia'),
(44, 'Mónaco'),
(45, 'Nueva Zelanda'),
(46, 'Noruega'),
(47, 'Polonia'),
(48, 'Portugal'),
(49, 'Reunión'),
(50, 'Rusia'),
(51, 'El Salvador'),
(52, 'Eslovaquia'),
(53, 'Eslovenia'),
(54, 'Surinam'),
(55, 'Estados Unidos'),
(56, 'Tadjikistan'),
(57, 'Turkmenistan'),
(58, 'Islas Turcas y Caicos'),
(59, 'Turquía'),
(60, 'Uganda'),
(61, 'Uzbekistán'),
(62, 'Ucrania'),
(63, 'Finlandia'),
(64, 'Francia'),
(65, 'República Checa'),
(66, 'Suiza'),
(67, 'Suecia'),
(68, 'Estonia'),
(69, 'Corea del Sur'),
(70, 'Japón'),
(71, 'Croacia'),
(72, 'Rumanía'),
(73, 'Hong Kong'),
(74, 'Indonesia'),
(75, 'Jordania'),
(76, 'Malasia'),
(77, 'Singapur'),
(78, 'Taiwan'),
(79, 'Bosnia y Herzegovina'),
(80, 'Bahamas'),
(81, 'Chile'),
(82, 'Colombia'),
(83, 'Islandia'),
(84, 'Corea del Norte'),
(85, 'Macedonia'),
(86, 'Malta'),
(87, 'Pakistán'),
(88, 'Papúa-Nueva Guinea'),
(89, 'Perú'),
(90, 'Filipinas'),
(91, 'Arabia Saudita'),
(92, 'Tailandia'),
(93, 'Emiratos árabes Unidos'),
(94, 'Groenlandia'),
(95, 'Venezuela'),
(96, 'Zimbabwe'),
(97, 'Kenia'),
(98, 'Algeria'),
(99, 'Líbano'),
(100, 'Botsuana'),
(101, 'Tanzania'),
(102, 'Namibia'),
(103, 'Ecuador'),
(104, 'Marruecos'),
(105, 'Ghana'),
(106, 'Siria'),
(107, 'Nepal'),
(108, 'Mauritania'),
(109, 'Seychelles'),
(110, 'Paraguay'),
(111, 'Uruguay'),
(112, 'Congo (Brazzaville)'),
(113, 'Cuba'),
(114, 'Albania'),
(115, 'Nigeria'),
(116, 'Zambia'),
(117, 'Mozambique'),
(119, 'Angola'),
(120, 'Sri Lanka'),
(121, 'Etiopía'),
(122, 'Túnez'),
(123, 'Bolivia'),
(124, 'Panamá'),
(125, 'Malawi'),
(126, 'Liechtenstein'),
(127, 'Bahrein'),
(128, 'Barbados'),
(130, 'Chad'),
(131, 'Man, Isla de'),
(132, 'Jamaica'),
(133, 'Malí'),
(134, 'Madagascar'),
(135, 'Senegal'),
(136, 'Togo'),
(137, 'Honduras'),
(138, 'República Dominicana'),
(139, 'Mongolia'),
(140, 'Irak'),
(141, 'Sudáfrica'),
(142, 'Aruba'),
(143, 'Gibraltar'),
(144, 'Afganistán'),
(145, 'Andorra'),
(147, 'Antigua y Barbuda'),
(149, 'Bangladesh'),
(151, 'Benín'),
(152, 'Bután'),
(154, 'Islas Virgenes Británicas'),
(155, 'Brunéi'),
(156, 'Burkina Faso'),
(157, 'Burundi'),
(158, 'Camboya'),
(159, 'Cabo Verde'),
(164, 'Comores'),
(165, 'Congo (Kinshasa)'),
(166, 'Cook, Islas'),
(168, 'Costa de Marfil'),
(169, 'Djibouti, Yibuti'),
(171, 'Timor Oriental'),
(172, 'Guinea Ecuatorial'),
(173, 'Eritrea'),
(175, 'Feroe, Islas'),
(176, 'Fiyi'),
(178, 'Polinesia Francesa'),
(180, 'Gabón'),
(181, 'Gambia'),
(184, 'Granada'),
(185, 'Guatemala'),
(186, 'Guernsey'),
(187, 'Guinea'),
(188, 'Guinea-Bissau'),
(189, 'Guyana'),
(193, 'Jersey'),
(195, 'Kiribati'),
(196, 'Laos'),
(197, 'Lesotho'),
(198, 'Liberia'),
(200, 'Maldivas'),
(201, 'Martinica'),
(202, 'Mauricio'),
(205, 'Myanmar'),
(206, 'Nauru'),
(207, 'Antillas Holandesas'),
(208, 'Nueva Caledonia'),
(209, 'Nicaragua'),
(210, 'Níger'),
(212, 'Norfolk Island'),
(213, 'Omán'),
(215, 'Isla Pitcairn'),
(216, 'Qatar'),
(217, 'Ruanda'),
(218, 'Santa Elena'),
(219, 'San Cristobal y Nevis'),
(220, 'Santa Lucía'),
(221, 'San Pedro y Miquelón'),
(222, 'San Vincente y Granadinas'),
(223, 'Samoa'),
(224, 'San Marino'),
(225, 'San Tomé y Príncipe'),
(226, 'Serbia y Montenegro'),
(227, 'Sierra Leona'),
(228, 'Islas Salomón'),
(229, 'Somalia'),
(232, 'Sudán'),
(234, 'Swazilandia'),
(235, 'Tokelau'),
(236, 'Tonga'),
(237, 'Trinidad y Tobago'),
(239, 'Tuvalu'),
(240, 'Vanuatu'),
(241, 'Wallis y Futuna'),
(242, 'Sáhara Occidental'),
(243, 'Yemen'),
(246, 'Puerto Rico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salidas`
--

CREATE TABLE `salidas` (
  `id_salida` int(11) NOT NULL,
  `encabezado` longtext NOT NULL,
  `orden2` int(15) DEFAULT NULL,
  `contenido` longtext NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `orden` int(11) DEFAULT NULL,
  `codigo` int(11) NOT NULL,
  `ruta_img` varchar(100) DEFAULT NULL,
  `documentacion` varchar(50) DEFAULT NULL,
  `documentacion2` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `salidas`
--

INSERT INTO `salidas` (`id_salida`, `encabezado`, `orden2`, `contenido`, `tipo`, `orden`, `codigo`, `ruta_img`, `documentacion`, `documentacion2`) VALUES
(1, 'Medicamente No APTO!', 0, 'Suspender cirugía', 'danger', 1, 1, 'images/salidas/1.png', NULL, NULL),
(2, 'Descartar glaucoma!', 0, 'Preguntar por antecedentes familiares (padres, abuelos) y realizar estudios complementarios: curva de presión, campo visual, paquimetría, gonioscopía, OCT papilar y fondo de ojos.', 'danger', 2, 2, 'images/salidas/2.png', NULL, NULL),
(5, 'Prominencia Frontal o enoftalmos', 0, 'Realizar anestesia local o bloqueo parabulbar (Prominencia frontal y/o enoftalmos).', 'primary', 5, 5, 'images/salidas/5.png', '5.html', NULL),
(6, 'Realizar dilatación pupilar', 0, 'Dilatación pupilar intraoperatoria(pasos):<div>1. Midriasis farmacológica.<br>2. Viscomidriasis.<br>3. Sinequiólisis / Membranectomía pupilar.<br>4. Estiramiento / Sistemas de dilatación (por ej. Ganchos de iris).<br></div>', 'primary', 6, 6, 'images/salidas/6.png', '6.html', ''),
(7, 'Hendidura palpebral semiestrecha y/o fimótica', 0, 'Realizar anestesia tópica, intracameral y subconjuntival', 'primary', 7, 7, 'images/salidas/7.png', '7.html', NULL),
(8, 'Colocar lente ASFÉRICA con aberración NEGATIVA y CORREGIR CON FÓRMULAS ESPECIALES', 0, '+ info:  link a ASCRS calculator: http://www.ascrs.org, Haigis: http://www.doctor-hill.com, Doble K de Aramberi, etc).', 'primary', 8, 8, 'images/salidas/8.png', '8.html', '800.html'),
(9, 'Colocar lente ESFÉRICA (aberración POSITIVA) y CORREGIR CON FÓRMULAS ESPECIALES', 0, '+ info: link a ASCRS calculator: http://www.ascrs.org, Haigis: http://www.doctor-hill.com, Doble K de Aramberi, etc).', 'primary', 9, 9, 'images/salidas/9.png', '8.html', '900.html'),
(10, ' CONSENTIMIENTO INFORMADO PERSONALIZADO', 0, 'Registrando dicha afección.\r\n', 'primary', 10, 10, 'images/salidas/10.png', NULL, NULL),
(11, 'SUSPENDER Prostaglandinas luego de cirugía!', 0, 'Cambio por betabloqueantes (si el paciente no presenta contraindicaciones para su uso).', 'danger', 11, 11, 'images/salidas/11.png', '11.html', NULL),
(12, 'Blefaritis', 0, 'Iniciar tratamiento preoperatorio vía oral, tópico e higiene palpebral (Doxiciclina 100 mg c/12hs durante un mes + Azitromicina 1% 1 gota c/12hs e higiene de párpados 1 o 2 veces por día) \r\n', 'primary', 12, 12, 'images/salidas/12.png', '12.html', NULL),
(13, 'Opacidad corneal central', 0, 'Capsulorrexis dificultosa: utilizar iluminación tangencial o externa.', 'primary', 13, 13, 'images/salidas/13.png', '13.html', NULL),
(14, 'Realizar facoemulsificación (técnica minusiosa) o técnica extracapsular o MSICS', 0, 'Utilizar viscoelástico dispersivo (para protección endotelial) y cohesivo (para capsulorrexis). ', 'primary', 14, 14, 'images/salidas/14.png', '14.html', NULL),
(15, 'Realizar técnica extracapsular o MSICS', 0, 'Utilizar viscoelástico dispersivo (para protección endotelial) y cohesivo (para capsulorrexis).', 'primary', 15, 15, 'images/salidas/15.png', '15.html', NULL),
(16, 'Realizar facoemulsificación. ', 0, 'Utilizar viscoelástico dispersivo (para protección endotelial) y cohesivo (para capsulorrexis).\r\n', 'primary', 16, 16, 'images/salidas/16.png', '16.html', NULL),
(18, 'Tinción con azul tripán', 0, 'Mejora la visualización de la cápsula anterior.', 'primary', 18, 18, 'images/salidas/18.png', '18.html', NULL),
(20, 'CUIDADO !!! pérdida de control de la capsulorrexis', 0, 'Posibilidad de desgarro capsular anterior (\"signo de la bandera argentina\") y/o posterior (riesgo de caída nuclear al vítreo). ', 'danger', 20, 20, 'images/salidas/20.png', '20.html', '200.html'),
(21, 'CUIDADO !!! Pérdida de control de la capsulorrexis', 0, 'Realizar capsulorrexis con tijera (Vannas o similar). \r\n', 'danger', 21, 21, 'images/salidas/21.png', '20.html', '210.html'),
(22, 'Sinequiólisis con espátula bajo viscoelástico', 0, 'Dilatación pupilar intraoperatoria: pasos\r\n1. Midriasis farmacológica\r\n2. Viscomidriasis\r\n3. Sinequiólisis / Membranectomía pupilar\r\n4. Estiramiento / Sistemas de dilatación (por ej. Ganchos de iris)', 'primary', 22, 22, 'images/salidas/22.png', NULL, NULL),
(23, 'Técnica sugerida: Stop and chop o Divide and conquer. ', 0, 'Stop and chop: se realiza un tallado nuclear central  (profundidad: dos diámetros de punta del faco en el centro y un diámetro en periferia) para lograr la división en heminúcleos.\r\nDivide and conquer: se realiza el mismo tallado central en forma de cruz para lograr una división de la catarata en cuadrantes. \r\n', 'primary', 23, 23, 'images/salidas/23.png', '23.html', NULL),
(24, 'Técnica sugerida: Faco chop o Faco Quick chop', 0, 'Faco chop (U/S pulsado o Burst): se debe clavar la punta del faco en el zona medio proximal nuclear y con el chopper buscar el ecuador, luego realizar un movimiento del chopper hacia la punta del faco y cuando los dos instrumentos se encuentran separarlos lateralmente.\r\nFaco quick chop (U/S pulsado o Burst): se debe clavar la punta del faco en el zona medio proximal nuclear, el choper penetra cerca del centro nuclear y luego los instrumentos son separarlos en dirección vertical.\r\n', 'primary', 24, 24, 'images/salidas/24.png', '24.html', ''),
(25, 'Tinción con azul tripán', 0, 'Esta técnica se emplea para mejorar la visualización de cataratas corticales avanzadas, cataratas hipermaduras, cápsulas fibrosas o calcáreas. ', 'primary', 25, 25, 'images/salidas/25.png', '25.html', NULL),
(26, 'Realizar bloqueo peribulbar o subtenon.', 0, 'Bloqueo peribulbar: jeringa con lidocaína 2% sin epinefrina  (2/3) y bupivacaína 0,5% (1/3), se desinfectan los párpados y se aplican en la zona inferior y superior parabulbar. \r\nBloqueo subtenon: jeringa con lidocaína 2% sin epinefrina  (2/3) y bupivacaína 0,5% (1/3), se desinfectan los párpados y conjuntiva y se aplica en la zona temporal inferior. ', 'primary', 26, 26, 'images/salidas/26.png', '26.html', NULL),
(27, 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado!', 0, 'Diálisis zonular < a 90º. Se recomienda TÉCNICA DE CORTE y rexis \"en caracol\". EVITAR técnica de rasgado!!! \r\nEstabilizar el contenido intraocular con viscoelástico cohesivo, usar aguja doblada para iniciar rexis, técnica bimanual. Se pueden emplear anillos de fijación capsular (o iridianos en su defecto) o colocar ATC (anillos de tensión capsular), estos pueden dificultar la extracción cortical.', 'danger', 27, 27, 'images/salidas/27.png', '20.html', '270.html'),
(28, 'Cuidado en la realización de la rexis y las maniobras en el cuadrante afectado!', 0, 'Diálisis zonular entre 90º a 180º. Se recomienda TÉCNICA DE CORTE y rexis \"en caracol\". EVITAR técnica de rasgado!!! Estabilizar el contenido intraocular con viscoelástico cohesivo, usar aguja doblada para iniciar rexis y técnica bimanual. Se pueden emplear anillos de fijación capsular (o iridianos en su defecto) o colocar ATC (anillos de tensión capsular), estos últimos pueden dificultar la extracción cortical.', 'danger', 28, 28, 'images/salidas/28.png', '20.html', '270.html'),
(29, 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado!', 0, 'Diálisis zonular > 180º. Se recomienda TÉCNICA DE CORTE y rexis \"en caracol\". EVITAR técnica de rasgado!!! \r\nEstabilizar el contenido intraocular con viscoelástico cohesivo, usar aguja doblada para iniciar rexis, técnica bimanual. Colocar ganchos capsulares y luego anillos de Cionni o segmentos de Ahmed o Anclas.', 'danger', 29, 29, 'images/salidas/29.png', '20.html', '270.html'),
(30, 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado!', 0, 'Facodonesis. Se recomienda TÉCNICA DE CORTE y rexis \"en caracol\". EVITAR técnica de rasgado!!! Estabilizar el contenido intraocular con viscoelástico cohesivo, usar aguja doblada para iniciar rexis, técnica bimanual. Colocar ganchos capsulares y luego anillos de Cionni o segmentos de Ahmed o Anclas.\r\n', 'danger', 30, 30, 'images/salidas/30.png', '20.html', '270.html'),
(31, 'Realizar HIDRODELINEACIÓN Y/O VISCODISECCIÓN', 0, 'Catarata polar posterior. Se recomienda realizar técnica de hidrodelineación y/o viscodisección: inyección de viscoelástico entre la corteza y el epinúcleo. EVITAR hidrodisección, por posibilidad de caída nuclear al vítreo.', 'danger', 31, 31, 'images/salidas/31.png', '31.html', NULL),
(32, 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado!', 0, 'Pseudoexfoliación y diálisis zonular < 90º. Se recomienda TÉCNICA DE CORTE y rexis \"en caracol\". EVITAR técnica de rasgado!!! Estabilizar el contenido intraocular con viscoelástico cohesivo, usar aguja doblada para iniciar rexis, técnica bimanual. Se pueden emplear anillos de fijación capsular (o iridianos en su defecto) o colocar ATC (anillos de tensión capsular), estos pueden dificultar la extracción cortical. ', 'danger', 32, 32, 'images/salidas/32.png', '20.html', '270.html'),
(33, 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado!', 0, 'Pseudoexfoliación y diálisis zonular de 90º a 180º. Se recomienda TÉCNICA DE CORTE y rexis \"en caracol\". EVITAR técnica de rasgado!!! Estabilizar el contenido intraocular con viscoelástico cohesivo, usar aguja doblada para iniciar rexis y técnica bimanual. Se pueden emplear anillos de fijación capsular (o iridianos en su defecto) o colocar ATC (anillos de tensión capsular), estos últimos pueden dificultar la extracción cortical.', 'danger', 33, 33, 'images/salidas/33.png', '20.html', '270.html'),
(34, 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado!', 0, 'Pseudoexfoliación y diálisis zonular > 180º. Diálisis > 180º. Se recomienda TÉCNICA DE CORTE y rexis \"en caracol\". EVITAR técnica de rasgado!!! Estabilizar el contenido intraocular con viscoelástico cohesivo, usar aguja doblada para iniciar rexis, técnica bimanual. Colocar ganchos capsulares y luego anillos de Cionni o segmentos de Ahmed o Anclas.', 'danger', 34, 34, 'images/salidas/34.png', '20.html', '270.html'),
(35, 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado!', 0, 'Pseudoexfoliación y facodonesis. Se recomienda TÉCNICA DE CORTE y rexis \"en caracol\". EVITAR técnica de rasgado!!! Estabilizar el contenido intraocular con viscoelástico cohesivo, usar aguja doblada para iniciar rexis, técnica bimanual. Colocar ganchos capsulares y luego anillos de Cionni o segmentos de Ahmed o Anclas.', 'danger', 35, 35, 'images/salidas/35.png', '20.html', '270.html'),
(36, 'Ecometría: cambiar la velocidad del U/S', 0, 'Según el peso del aceite: \r\n- 1000 cst  v = 980 m/seg\r\n- 5000 cst  v = 1040 m/seg \r\nHay que medir con el pcte sentado y aumentar la ganancia. Consejo intraoperatorio: colocar infusión continua durante toda la cirugía para evitar la fuga del aceite por el espacio interzonular. \r\n', 'primary', 36, 36, 'images/salidas/36.png', '36.html', NULL),
(37, 'Retinopatía DBT', 0, 'El paciente debe estar compensado y con niveles de Glucemia en ayunas (menores de 120 mg/ml) y Hb glicosilada (menores de 6%) normales. Entregar CONSENTIMIENTO INFORMADO PERSONALIZADO. ', 'primary', 37, 37, 'images/salidas/37.png', NULL, NULL),
(38, 'Glaucoma de ángulo cerrado', 0, 'Realizar IP (iridotomía periférica) y tratamiento farmacológico previo a cirugía. Debe presentar valores normales de presión intraocular preoperatoria. Entregar CONSENTIMIENTO INFORMADO PERSONALIZADO. ', 'warning', 38, 38, 'images/salidas/38.png', '38.html', NULL),
(39, 'Glaucoma de ángulo abierto', 0, 'Realizar tratamiento farmacológico previo a cirugía de cataratas. Entregar CONSENTIMIENTO INFORMADO PERSONALIZADO. ', 'primary', 39, 39, 'images/salidas/39.png', NULL, NULL),
(40, 'Degeneración macular asociada a la edad o tóxica (medicamentosa)', 0, 'Evaluar riesgo beneficio con la realización de cirugía. Realizar test de PAM o LOTMAR. Entregar CONSENTIMIENTO INFORMADO PERSONALIZADO. \n', 'danger', 40, 40, 'images/salidas/40.png', NULL, NULL),
(41, 'Cicatriz macular o membrana epirretinal', 0, 'Evaluar riesgo beneficio con la realización de cirugía. Realizar test de PAM o LOTMAR. Entregar CONSENTIMIENTO INFORMADO PERSONALIZADO. ', 'danger', 41, 41, 'images/salidas/41.png', NULL, NULL),
(42, 'Otras patologías', 0, 'Evaluar riesgo beneficio con la realización de cirugía. Realizar test de PAM o LOTMAR. Entregar CONSENTIMIENTO INFORMADO PERSONALIZADO. ', 'primary', 42, 42, 'images/salidas/42.png', NULL, NULL),
(43, 'Degeneración macular asociada a la edad o tóxica (medicamentosa)', 0, 'Evaluar riesgo beneficio con la realización de cirugía. Realizar test de PAM o LOTMAR. Entregar CONSENTIMIENTO INFORMADO PERSONALIZADO.', 'danger', 43, 43, 'images/salidas/43.png', NULL, NULL),
(45, 'Cooperación buena o media', 0, 'Realizar  anestesia tópica, intracameral y subconjuntival.\r\n', 'success', 45, 45, 'images/salidas/45.png', '45.html', NULL),
(46, 'Cooperación mala', 0, 'Realizar anestesia bloqueo peribulbar o subtenon e intracameral (evaluar  subconjuntival).\r\n', 'warning', 46, 46, 'images/salidas/46.png', NULL, NULL),
(47, 'DESCARTAR GLAUCOMA DE ÁNGULO CERRADO!', 0, 'Realizar IP (iridotomía periférica) y tratamiento farmacológico previo a cirugía. Utilizar viscoelástico dispersivo (para protección endotelial) y cohesivo (para capsulorrexis). \nRiesgo de glaucoma agudo intraoperatorio. Bajar presión intraocular preoperatoria (acetazolamida 250 mg 1 comp previo a cirugía).\nDebe presentar valores normales de presión intraocular preoperatoria. \nEntregar CONSENTIMIENTO INFORMADO PERSONALIZADO.', 'danger', 47, 47, 'images/salidas/47.png', '38.html', NULL),
(48, 'Posibilidad de implantar lente tórico', 0, 'El Médico Oftalmólogo podrá implantar una lente intraocular tórica. El monto de astigmatismo mayor a 1D, ectasia con astigmatismo regular y un coma corneal total < +/- 0.5 μm posibilitan la implantación de dicha lente. ', 'primary', 48, 48, 'images/salidas/48.png', '48.html', NULL),
(49, 'Colocar lente ASFÉRICA con aberración NEGATIVA y CORREGIR CON FÓRMULAS ESPECIALES', 0, 'CORREGIR CON FÓRMULAS ESPECIALES. Link a ASCRS calculator: http://www.ascrs.org, Haigis: http://www.doctor-hill.com, Doble K de Aramberi, etc).', 'primary', 49, 49, 'images/salidas/49.png', '49.html', '800.html'),
(50, 'SOSPECHAR ECTASIA CORNEAL', 0, 'Estudiar el patrón topográfico y paquimétrico. Colocar lente ESFÉRICA (aberración POSITIVA) y CORREGIR CON FÓRMULAS ESPECIALES: ASCRS calculator: http://www.ascrs.org, Haigis: http://www.doctor-hill.com, Doble K de Aramberi, etc).\r\n', 'warning', 50, 50, 'images/salidas/50.png', '50.html', '500.html'),
(52, 'Utilizar fórmulas hoffer Q o Holladay 2', 0, 'Cambiar velocidad de U/S a 1560 m/seg. ', 'primary', 52, 52, 'images/salidas/52.png', '52.html', NULL),
(53, 'Utilizar SRK/T o Haigis.', 0, 'Largo axial promedio.', 'primary', 53, 53, 'images/salidas/53.png', '53.html', NULL),
(54, 'Utilizar SRK/T , Olsen, Holladay 2 o Haigis L', 0, 'Cambiar velocidad de U/S a 1550 m/seg.', 'primary', 54, 54, 'images/salidas/54.png', '54.html', NULL),
(55, 'Contraindicaciones para implante de lente multifocal.', 0, 'Los halos y destellos pueden afectar el manejo nocturno.  ', 'danger', 55, 55, 'images/salidas/55.png', '55.html', NULL),
(56, 'Posibilidad de implantar lente ASFÉRICA neutra o negativa (monofocal o multifocal).  ', 0, 'La persona es activa, sana y posee asfericidad corneal positiva (Q > 0).', 'primary', 56, 56, 'images/salidas/56.png', '800.html', NULL),
(57, 'Posibilidad de implantar lente ESFÉRICA monofocal.', 0, 'Paciente de edad avanzada, sedentario, o que posee glaucoma avanzado y se operó de cirugía refractiva hipermetrópica (QR, TKP, excimer, etc) y posee asfericidad corneal negativa (Q < 0).', 'primary', 57, 57, 'images/salidas/59.png', '900.html', NULL),
(58, 'Posibilidad de implantar lente ASFÉRICA neutra o negativa (monofocal o multifocal).  ', 0, 'La persona es activa, sana, posee astigmatismo <1 D y asfericidad corneal positiva (Q > 0). Manejo de astigmatismo de baja cuantía con incisiones.', 'primary', 58, 58, 'images/salidas/56.png', '800.html', NULL),
(59, 'Posibilidad de implantar lente ESFÉRICA positiva (monofocal o tórica) o realización de IRL o Arcuatas.  ', 0, 'La persona es activa, sana u operada de cirugía refractiva hipermetrópica, posee astigmatismo >1 D y asfericidad corneal positiva (Q > 0). ', 'primary', 59, 59, 'images/salidas/59.png', '900.html', NULL),
(61, 'Colocar lente de mayor poder', NULL, 'ATENCIÓN!: Se debe SUMAR poder al lente intraocular calculado', 'warning', 60, 60, 'images/salidas/60.png', '60.html', NULL),
(62, 'Colocar lente de menor poder', NULL, 'ATENCIÓN!: se debe RESTAR poder al lente intraocular calculado.', 'warning', 61, 61, 'images/salidas/61.png', '61.html', NULL),
(63, 'Realizar tratamiento de ojo seco', 0, 'Recordar la relación del ojo seco con la alergia y la blefaritis', 'danger', 19, 62, 'images/salidas/62.png', '62.html', NULL),
(65, 'Atención: Alergia!', 0, 'Paciente alérgico.', 'warning', 63, 63, 'images/salidas/63.png', '63.html', NULL),
(66, 'Aspirar contenido líquido intrasacular', 0, 'Paciente con catarata hipermadura, intumescente o morgagniana. ', 'primary', 64, 64, 'images/salidas/64.png', '64.html', ''),
(67, 'Córnea plana', 0, 'Descartar patologías acompañantes. ', 'warning', 65, 65, 'images/salidas/65.png', '65.html', NULL),
(68, 'Ecometría: cambiar la velocidad de U/S', 0, 'Paciente con catarata N5, P5, brunescente, rubra, negra, polar posterior o intumescente, LAX > 27 mm y < 22 mm. ', 'warning', 66, 66, 'images/salidas/36.png', '66.html', ''),
(69, 'Tratamiento del astigmatismo con incisiones', 0, 'El cirujano puede disminuir el astigmatismo por medio de incisiones. Estas pueden ser perforantes, limbares o arcuatas (simples o pareadas) u optar por realizar LASIK o PRK ya sea en el pre o postoperatorio. ', 'primary', 67, 67, 'images/salidas/67.png', '', ''),
(70, 'Iridoplastias:', 0, 'Ante injurias que involucren al iris, es recomendable realizar técnicas de reconstrucción iridiana.', 'warning', 70, 70, 'images/salidas/70.png', '70.html', ''),
(72, 'Poder del Lente Intraocular', 0, '', 'primary', 74, 71, 'images/salidas/71.png', '', ''),
(73, 'Observaciones Generales', 0, '', 'primary', 75, 72, 'images/salidas/72.png', '', ''),
(74, 'Posibilidad de Implantar Lente Multifocal/Trifocal/RG Progresivo', 0, '', 'primary', 71, 73, 'images/salidas/73.png', '73.html', ''),
(75, 'Presencia de Córnea Guttata', NULL, 'Presencia de CÓRNEA GUTTATA: tomar todos los recaudos para protección endotelial. ', 'danger', 0, 75, '', '', ''),
(76, 'Opacidad Corneal Periférica', 0, 'Utilizar iluminación tangencial o externa. Realizar maniobras lentamente.', 'primary', 13, 76, 'images/salidas/76.png', '13.html', NULL),
(77, 'Contraindicación para Implante de Lente Tórica', 0, 'Se debe preguntar al paciente por antecedentes personales de trauma ocular previo, descartar presencia de pseudoexfoliación, zonulopatía (faco y/o iridodonesis y subluxación cristaliniana), coma total corneal > ± 0.5 μm, ectasia con astigmatismo irregular, cicatrices corneales y patología macular.', 'primary', 13, 77, 'images/salidas/77.png', '77.html', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salidas_bkp`
--

CREATE TABLE `salidas_bkp` (
  `id_salida` int(11) NOT NULL,
  `encabezado` varchar(200) NOT NULL,
  `orden2` int(15) NOT NULL,
  `contenido` longtext NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `salidas_bkp`
--

INSERT INTO `salidas_bkp` (`id_salida`, `encabezado`, `orden2`, `contenido`, `tipo`, `orden`) VALUES
(1, 'Medicamente No APTO!', 0, '<b><font size=\"2\" color=\"#ff0000\">SUSPENDER CIRUGÍA</font></b> hasta estabilización.', 'danger', 1),
(2, 'Descartar glaucoma!', 0, 'Preguntar por antecedentes familiares (padres, abuelos) y realizar estudios complementarios: curva de presión, campo visual, paquimetría, gonioscopía, OCT papilar y fondo de ojos.', 'danger', 2),
(3, 'CONSENTIMIENTO INFORMADO PERSONALIZADO', 0, 'REALIZAR CONSENTIMIENTO INFORMADO PERSONALIZADO, registrando dicha afección.', 'primary', 3),
(4, 'Tratamiento Gotas (prostaglandinas) ', 0, 'SUSPENDER las mismas luego de cirugía!. Cambio por betabloqueantes (si el paciente no presenta contraindicaciones para su uso)', 'info', 4),
(5, 'Prominencia Frontal', 0, 'Realizar anestesia local o bloqueo parabulbar (Prominencia frontal y/o enoftalmos).', 'primary', 5),
(6, 'Realizar dilatación pupilar', 0, 'Dilatación pupilar intraoperatoria: pasos\r\n1. Midriasis farmacológica\r\n2. Viscomidriasis\r\n3. Sinequiólisis / Membranectomía pupilar\r\n4. Estiramiento / Sistemas de dilatación (por ej. Ganchos de iris)', 'primary', 6),
(7, 'Hendidura palpebral semiestrecha y/o fimótica', 0, 'Realizar anestesia tópica, intracameral y subconjuntival', 'primary', 7),
(8, 'Colocar lente ASFÉRICA con aberración NEGATIVA y CORREGIR CON FÓRMULAS ESPECIALES', 0, '+ info:  link a ASCRS calculator: http://www.ascrs.org, Haigis: http://www.doctor-hill.com, Doble K de Aramberi, etc).', 'info', 8),
(9, 'Colocar lente ESFÉRICA (aberración POSITIVA) y CORREGIR CON FÓRMULAS ESPECIALES', 0, '+ info: link a ASCRS calculator: http://www.ascrs.org, Haigis: http://www.doctor-hill.com, Doble K de Aramberi, etc).', 'info', 9),
(10, ' CONSENTIMIENTO INFORMADO PERSONALIZADO', 0, 'Registrando dicha afección.\r\n', 'info', 10),
(11, 'SUSPENDER Prostaglandinas luego de cirugía!', 0, 'Cambio por betabloqueantes (si el paciente no presenta contraindicaciones para su uso).', 'danger', 11),
(12, 'Blefaritis', 0, 'Iniciar tratamiento preoperatorio vía oral, tópico e higiene palpebral (Doxiciclina 100 mg c/12hs durante un mes + Azitromicina 1% 1 gota c/12hs e higiene de párpados 1 o 2 veces por día) \r\n', 'info', 12),
(13, 'Opacidad corneal central', 0, 'Capsulorrexis dificultosa: utilizar iluminación tangencial o externa.', 'info', 13),
(14, 'Realizar facoemulsificación (técnica minusiosa) o técnica extracapsular o MSICS', 0, 'Utilizar viscoelástico dispersivo (para protección endotelial) y cohesivo (para capsulorrexis). ', 'primary', 14),
(15, 'Realizar técnica extracapsular o MSICS', 0, 'Utilizar viscoelástico dispersivo (para protección endotelial) y cohesivo (para capsulorrexis).', 'info', 15),
(16, 'Realizar facoemulsificación. ', 0, 'Utilizar viscoelástico dispersivo (para protección endotelial) y cohesivo (para capsulorrexis).\r\n', 'info', 16),
(17, 'CONSENTIMIENTO INFORMADO PERSONALIZADO', 0, 'Registrando dicha afección.', 'info', 17),
(18, 'Tinción con azul tripán', 0, 'Mejora la visualización de la cápsula anterior.', 'primary', 18),
(19, 'DESCARTAR GLAUCOMA DE ÁNGULO CERRADO!', 0, 'Riesgo de glaucoma agudo intraoperatorio. Bajar presión intraocular preoperatoria (acetazolamida 250 mg 1 comp previo a cirugía) y utilizar viscoelástico dispersivo y cohesivo. + info: técnica soft shell technique.', 'danger', 19),
(20, 'CUIDADO !!! (Símbolo de atención) pérdida de control de la capsulorrexis', 0, 'Posibilidad de desgarro capsular anterior (\"signo de la bandera argentina\") y/o posterior (riesgo de caída nuclear al vítreo). ', 'danger', 20),
(21, 'CUIDADO !!! (Símbolo de atención) pérdida de control de la capsulorrexis', 0, 'Realizar capsulorrexis con tijera (Vannas o similar). \r\n', 'danger', 21),
(22, 'Sinequiólisis con espátula bajo viscoelástico', 0, 'Dilatación pupilar intraoperatoria: pasos\r\n1. Midriasis farmacológica\r\n2. Viscomidriasis\r\n3. Sinequiólisis / Membranectomía pupilar\r\n4. Estiramiento / Sistemas de dilatación (por ej. Ganchos de iris)', 'info', 22),
(23, 'Técnica sugerida: Stop and chop o Divide and conquer. ', 0, 'Stop and chop: se realiza un tallado nuclear central  (profundidad: dos diámetros de punta del faco en el centro y un diámetro en periferia) para lograr la división en heminúcleos.\r\nDivide and conquer: se realiza el mismo tallado central en forma de cruz para lograr una división de la catarata en cuadrantes. \r\n+ info.\r\n+ bibliografía', 'primary', 23),
(24, 'Técnica sugerida: Faco chop o Faco Quick chop', 0, 'Faco chop (U/S pulsado o Burst): se debe clavar la punta del faco en el zona medio proximal nuclear y con el chopper buscar el ecuador, luego realizar un movimiento del chopper hacia la punta del faco y cuando los dos instrumentos se encuentran separarlos lateralmente.\r\nFact quick chop (U/S pulsado o Burst): se debe clavar la punta del faco en el zona medio proximal nuclear, el choper penetra cerca del centro nuclear y luego los instrumentos son separarlos en dirección vertical.\r\n+ info. + bibli', 'primary', 24),
(25, 'Tinción con azul tripán', 0, 'Esta técnica se emplea para mejorar la visualización de cataratas corticales avanzadas, cataratas hipermaduras, cápsulas fibrosas o calcáreas. \r\n+ info\r\n+ bibliografía', 'info', 25),
(26, 'Realizar bloqueo peribulbar o subtenon.', 0, 'Bloqueo peribulbar: jeringa con lidocaína 2% sin epinefrina  (2/3) y bupivacaína 0,5% (1/3), se desinfectan los párpados y se aplican en la zona inferior y superior parabulbar. \r\nBloqueo subtenon: jeringa con lidocaína 2% sin epinefrina  (2/3) y bupivacaína 0,5% (1/3), se desinfectan los párpados y conjuntiva y se aplica en la zona temporal inferior.\r\n+info. \r\n+biblio   ', 'primary', 26),
(27, 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado!', 0, 'Diálisis zonular < a 90º. Se recomienda TÉCNICA DE CORTE y rexis \"en caracol\". EVITAR técnica de rasgado!!! \r\nEstabilizar el contenido intraocular con viscoelástico cohesivo, usar aguja doblada para iniciar rexis, técnica bimanual. Se pueden emplear anillos de fijación capsular (o iridianos en su defecto) o colocar ATC (anillos de tensión capsular), estos pueden dificultar la extracción cortical.\r\n+ info\r\n+ bibliografía', 'danger', 27),
(28, 'Cuidado en la realización de la rexis y las maniobras en el cuadrante afectado!', 0, 'Diálisis zonular entre 90º a 180º. Se recomienda TÉCNICA DE CORTE y rexis \"en caracol\". EVITAR técnica de rasgado!!! Estabilizar el contenido intraocular con viscoelástico cohesivo, usar aguja doblada para iniciar rexis y técnica bimanual. Se pueden emplear anillos de fijación capsular (o iridianos en su defecto) o colocar ATC (anillos de tensión capsular), estos últimos pueden dificultar la extracción cortical.\r\n+ info\r\n+ bibliografía', 'danger', 28),
(29, 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado!', 0, '<span style=\"line-height: 14px;\"><b>Diálisis &gt; 180º.&nbsp;</b></span><div><span style=\"line-height: 14px;\">Se recomienda TÉCNICA DE CORTE y rexis \"en caracol\". EVITAR técnica de rasgado!!! \r\nEstabilizar el contenido intraocular con viscoelástico cohesivo, usar aguja doblada para iniciar rexis, técnica bimanual. Colocar ganchos capsulares y luego anillos de Cionni o segmentos de Ahmed o Anclas.\r\n+ info\r\n+ bibliografía</span><br></div>', 'danger', 29),
(30, 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado!', 0, 'Facodonesis. Se recomienda TÉCNICA DE CORTE y rexis \"en caracol\". EVITAR técnica de rasgado!!! Estabilizar el contenido intraocular con viscoelástico cohesivo, usar aguja doblada para iniciar rexis, técnica bimanual. Colocar ganchos capsulares y luego anillos de Cionni o segmentos de Ahmed o Anclas.\r\n+ info (signos intraoperatorios)\r\n+ bibliografía', 'danger', 30),
(31, 'Realizar VISCODISECCIÓN', 0, 'Catarata polar posterior. Se recomienda realizar técnica de viscodisección: inyección de viscoelástico entre la corteza y el epinúcleo. EVITAR hidrodisección, por posibilidad de caída nuclear al vítreo.\r\n+ info\r\n+ bibliografía', 'danger', 31),
(32, 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado!', 0, 'Pseudoexfoliación y diálisis zonular < 90º. Se recomienda TÉCNICA DE CORTE y rexis \"en caracol\". EVITAR técnica de rasgado!!! Estabilizar el contenido intraocular con viscoelástico cohesivo, usar aguja doblada para iniciar rexis, técnica bimanual. Se pueden emplear anillos de fijación capsular (o iridianos en su defecto) o colocar ATC (anillos de tensión capsular), estos pueden dificultar la extracción cortical. + info + bibliografía', 'danger', 32),
(33, 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado!', 0, 'Pseudoexfoliación y diálisis zonular de 90º a 180º. Se recomienda TÉCNICA DE CORTE y rexis \"en caracol\". EVITAR técnica de rasgado!!! Estabilizar el contenido intraocular con viscoelástico cohesivo, usar aguja doblada para iniciar rexis y técnica bimanual. Se pueden emplear anillos de fijación capsular (o iridianos en su defecto) o colocar ATC (anillos de tensión capsular), estos últimos pueden dificultar la extracción cortical. + info + bibliografía', 'danger', 33),
(34, 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado!', 0, 'Pseudoexfoliación y diálisis zonular > 180º. Diálisis > 180º. Se recomienda TÉCNICA DE CORTE y rexis \"en caracol\". EVITAR técnica de rasgado!!! Estabilizar el contenido intraocular con viscoelástico cohesivo, usar aguja doblada para iniciar rexis, técnica bimanual. Colocar ganchos capsulares y luego anillos de Cionni o segmentos de Ahmed o Anclas.\r\n+ info\r\n+ bibliografía', 'danger', 34),
(35, 'CUIDADO en la realización de la rexis y las maniobras en el cuadrante afectado!', 0, 'Pseudoexfoliación y facodonesis. Se recomienda TÉCNICA DE CORTE y rexis \"en caracol\". EVITAR técnica de rasgado!!! Estabilizar el contenido intraocular con viscoelástico cohesivo, usar aguja doblada para iniciar rexis, técnica bimanual. Colocar ganchos capsulares y luego anillos de Cionni o segmentos de Ahmed o Anclas.\r\n+ info (signos intraoperatorios)\r\n+ bibliografía', 'danger', 35),
(36, 'Ecometría: cambiar la velocidad del U/S', 0, 'Según el peso del aceite: \r\n- 1000 cst  v = 980 m/seg\r\n- 5000 cst  v = 1040 m/seg \r\nHay que medir con el pcte sentado y aumentar la ganancia. Consejo intraoperatorio: colocar infusión continua durante toda la cirugía para evitar la fuga del aceite por el espacio interzonular. \r\n', 'info', 36),
(37, 'Retinopatía DBT', 0, 'El paciente debe estar compensado y con niveles de Glucemia en ayunas (menores de 120 mg/ml) y Hb glicosilada (menores de 6%) normales. Entregar CONSENTIMIENTO INFORMADO PERSONALIZADO. ', 'info', 37),
(38, 'Glaucoma de ángulo cerrado', 0, 'Realizar IP (iridotomía periférica) y tratamiento farmacológico previo a cirugía. Debe presentar valores normales de presión intraocular preoperatoria. Entregar CONSENTIMIENTO INFORMADO PERSONALIZADO. ', 'info', 38),
(39, 'Glaucoma de ángulo abierto', 0, 'Realizar tratamiento farmacológico previo a cirugía de cataratas. Entregar CONSENTIMIENTO INFORMADO PERSONALIZADO. ', 'info', 39),
(40, 'Degeneración macular asociada a la edad o tóxica (medicamentosa)', 0, 'Evaluar riesgo beneficio con la realización de cirugía. Realizar test de PAM o LOTMAR. Entregar CONSENTIMIENTO INFORMADO PERSONALIZADO. \r\n', 'danger', 40),
(41, 'Cicatriz macular o membrana epirretinal', 0, 'Evaluar riesgo beneficio con la realización de cirugía. Realizar test de PAM o LOTMAR. Entregar CONSENTIMIENTO INFORMADO PERSONALIZADO. ', 'danger', 41),
(42, 'Otras patologías', 0, 'Evaluar riesgo beneficio con la realización de cirugía. Realizar test de PAM o LOTMAR. Entregar CONSENTIMIENTO INFORMADO PERSONALIZADO. ', 'info', 42),
(43, 'Degeneración macular asociada a la edad o tóxica (medicamentosa)', 0, 'Evaluar riesgo beneficio con la realización de cirugía. Realizar test de PAM o LOTMAR. Entregar CONSENTIMIENTO INFORMADO PERSONALIZADO.', 'danger', 43),
(44, 'Cicatriz macular o membrana epirretinal', 0, 'Evaluar riesgo beneficio con la realización de cirugía. Realizar test de PAM o LOTMAR. Entregar CONSENTIMIENTO INFORMADO PERSONALIZADO. \r\n', 'danger', 44),
(45, 'Cooperación buena o media', 0, 'Realizar  anestesia tópica, intracameral y subconjuntival.\r\n', 'primary', 45),
(46, 'Cooperación mala', 0, 'Realizar anestesia bloqueo peribulbar o subtenon e intracameral (evaluar  subconjuntival).\r\n', 'primary', 46),
(47, 'DESCARTAR GLAUCOMA DE ÁNGULO CERRADO!', 0, 'Realizar IP (iridotomía periférica) y tratamiento farmacológico previo a cirugía. Utilizar viscoelástico dispersivo (para protección endotelial) y cohesivo (para capsulorrexis). Debe presentar valores normales de presión intraocular preoperatoria. Entregar CONSENTIMIENTO INFORMADO PERSONALIZADO. + info: técnica soft shell technique.', 'primary', 47),
(48, 'Posibilidad de implantar lente tórico.', 0, 'En astigmatismo > 1 D se puede beneficiar de una lente teórica. \r\n+ info \r\n+ bibliografía', 'primary', 48),
(49, 'Colocar lente ASFÉRICA con aberración NEGATIVA y CORREGIR CON FÓRMULAS ESPECIALES', 0, 'CORREGIR CON FÓRMULAS ESPECIALES. Link a ASCRS calculator: http://www.ascrs.org, Haigis: http://www.doctor-hill.com, Doble K de Aramberi, etc)\r\n+ info\r\n+ bibliografía', 'primary', 49),
(50, 'SOSPECHAR ECTASIA CORNEAL', 0, 'Estudiar el patrón topográfico y paquimétrico. Colocar lente ESFÉRICA (aberración POSITIVA) y CORREGIR CON FÓRMULAS ESPECIALES: ASCRS calculator: http://www.ascrs.org, Haigis: http://www.doctor-hill.com, Doble K de Aramberi, etc).\r\n', 'primary', 50),
(51, 'Posibilidad de implantar lente tórico.', 0, 'En astigmatismo > 1 D se puede beneficiar de una lente teórica. + info + bibliografía', 'primary', 51),
(52, 'Utilizar fórmulas hoffer Q o Holladay 2', 0, 'Cambiar velocidad de U/S a 1560 m/seg. \r\n+ info\r\n+ bibliografía', 'primary', 52),
(53, 'Utilizar SRK/T o Haigis.', 0, 'Largo axial promedio.', 'primary', 53),
(54, 'Utilizar SRK/T , Olsen, Holladay 2 o Haigis L', 0, 'Cambiar velocidad de U/S a 1550 m/seg.', 'primary', 54),
(55, 'CONTRAINDICACIÓN para la colocación de lente intraocular multifocal.', 0, 'Los halos y destellos pueden afectar el manejo nocturno.  ', 'danger', 55),
(56, 'Posibilidad de implantar lente ASFÉRICA neutra o negativa (monofocal o multifocal).  ', 0, 'La persona es activa, sana y posee asfericidad corneal positiva (Q > 0).', 'primary', 56),
(57, 'Posibilidad de implantar lente ESFÉRICA monofocal.', 0, 'Paciente de edad avanzada, sedentario, o que posee glaucoma avanzado y se operó de cirugía refractiva hipermetrópica (QR, TKP, excimer, etc) y posee asfericidad corneal negativa (Q < 0).', 'primary', 57),
(58, 'Posibilidad de implantar lente ASFÉRICA neutra o negativa (monofocal o multifocal).  ', 0, 'La persona es activa, sana, posee astigmatismo <1 D y asfericidad corneal positiva (Q > 0). Manejo de astigmatismo de baja cuantía con incisiones.', 'primary', 58),
(59, 'Posibilidad de implantar lente ESFÉRICA positiva (monofocal o tórica) o realización de IRL o Arcuatas.  ', 0, 'La persona es activa, sana u operada de cirugía refractiva hipermetrópica, posee astigmatismo >1 D y asfericidad corneal positiva (Q > 0). ', 'primary', 59);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `south_migrationhistory`
--

CREATE TABLE `south_migrationhistory` (
  `id` int(11) NOT NULL,
  `app_name` varchar(255) NOT NULL,
  `migration` varchar(255) NOT NULL,
  `applied` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_profile`
--

CREATE TABLE `user_profile` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nrodocu` decimal(18,0) DEFAULT NULL,
  `pais` int(11) NOT NULL,
  `localidad` varchar(200) DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `matricula` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user_profile`
--

INSERT INTO `user_profile` (`id`, `email`, `user_id`, `nrodocu`, `pais`, `localidad`, `nombre`, `matricula`) VALUES
(1, 'jmjacquet@gmail.com', 3, NULL, 0, NULL, NULL, NULL),
(2, 'jmjacquet@gmail.com', 4, NULL, 0, NULL, NULL, NULL),
(3, 'jmjacquet@gmail.com', 5, NULL, 0, NULL, NULL, NULL),
(4, 'jmjacquet@gmail.com', 7, NULL, 5, 'Santa Fe', 'jmjacquet@gmail.com', ''),
(5, 'dfliess@gmail.com', 8, '28861434', 5, 'CABVA', 'Diego Fliess', ''),
(6, 'albertinacardinale@gmail.com', 9, '33641052', 5, 'Rosario', 'Cardinale Albertina', ''),
(7, 'amjimcaro@yahoo.com', 10, '39686386', 82, 'BOGOTA, COLOMBIA', 'ANA MARIA JIMENEZ CARO', ''),
(8, 'juanpablohandal@gmail.com', 11, '616904', 137, '', 'Juan Pablo Handal', ''),
(9, 'angycasti@yahoo.com.ar', 12, '52914126', 5, 'Chia', 'Angela Castillo', ''),
(10, 'emilioladeveze@hotmail.com', 13, '31095519', 5, 'Rosario', 'Ladeveze Emilio ', ''),
(11, 'juanc.ms@hotmail.com', 14, '63844', 89, 'trujillo', 'juan molina socola', ''),
(12, 'infodrojos@gmail.com', 15, '4583', 103, 'Guayaquil', 'Dueñas Joniaux Marlon ', ''),
(13, 'robin_mxpx@hotmail.com', 16, '18631805', 95, 'Caracas', 'Barrientos Robinson', ''),
(14, 'jcamilion@yahoo.com', 17, '22626133', 5, 'Mar del Plata', 'Camilion Jeronimo', ''),
(15, 'jcamilion@gmail.com', 18, '31096992', 5, 'MAR DEL PLATA       (GENERA-B)', 'CAMILION JERONIMO', ''),
(16, 'nicozenklussen@gmail.com', 19, '31343695', 5, 'Rafaeala', 'Nicolas Lopez', ''),
(17, 'jmjacquet@gmail.com', 20, '29387656', 5, 'Santa Fe', 'Juan Manuel Jacquet', ''),
(18, 'javier.volosin@gmail.com', 21, '25896458', 5, 'caba', 'javier volosin', ''),
(19, 'izeolite@yahoo.com', 22, '22559173', 5, 'Mendoza ', 'Zeolite, Ignacio', ''),
(20, 'andreiapeltierurbano@gmail.com.br', 23, '470116102', 12, 'Salvador Bahia', 'Urbano Andreia', ''),
(21, 'yeisypalomino@gmail.com', 24, '42531740', 89, 'Peru', 'Yeisy Palomino', ''),
(22, 'mfernandezares@yahoo.es', 25, NULL, 28, '', 'FERNÁNDEZ ARES, MARISA', ''),
(23, 'ponce_fabian65@yahoo.com', 26, '102087343', 103, 'Cuenca', 'Ponce Vasquez  Fabian', ''),
(24, 'oftalmologiasantcugat@gmail.com', 27, '31155', 28, 'SANT CUGAT DEL VALLES', 'Xose M. Vazquez', ''),
(25, 'riveronoe@gmail.com', 28, '23716748', 5, 'Villa Gobernador Galvez, Santa Fe', 'Noé Rivero', ''),
(26, 'alfredosanz39@gmail.com', 29, '8810523', 28, 'A Coruña', 'Sanz, Alfredo', ''),
(27, 'drmarcoaranda@live.com.mx', 30, NULL, 42, 'irapuato/guanajuato', 'aranda marco antonio', ''),
(28, 'palalo_acosta@hotmail.com', 31, '32897804', 5, 'rosario', 'pablo acosta', ''),
(29, 'gandolfoe@hotmail.com', 32, '28627282', 5, 'San Martín Mendoza ', 'Enrique gandolfo ', ''),
(30, 'jp.salica@gmail.com', 33, '27543178', 5, 'Pilar', 'Juan Pablo Salica', ''),
(31, 'marcelomaldonado296@hotmail.com', 34, '30399577', 5, 'La Rioja Capìtal', 'Maldonado Marcelo ', ''),
(32, 'emilioepk87@gmail.com', 35, '32808466', 5, 'San Juan', 'Pañero Emilio', ''),
(33, 'lorenzomanavella@gmail.com', 36, '29677909', 5, 'rosario', 'Lorenzo Manavella', ''),
(34, 'gerardomateos1@hotmail.com', 38, '29532353', 5, 'Cordoba', 'Mateos gerardo', ''),
(35, 'gerardomateos1@hotmail.com', 39, '29532353', 5, 'Cordoba', 'Mateos gerardo', ''),
(36, 'pderomedis@yahoo.com', 40, '17568686', 5, 'Miramar', 'Deromedis Pablo', ''),
(37, 'josesanmartino@hotmail.com', 41, '13779746', 5, 'Rosario . Santa Fe', 'san martino juan jose', ''),
(38, 'gustavoaufranc@hotmail.com', 42, '25459454', 5, 'Santo tomé ', 'Aufranc José Gustavo ', ''),
(39, 'diego.domin2013@gmail.com', 43, '29327032', 5, 'San Juan', 'Diego Domínguez', ''),
(40, 'paulorolfi@hotmail.com', 44, '25835787', 5, 'resistencia chaco', 'rolfi paulo francisco', ''),
(41, 'drgarciafernandez@hotmail.com', 45, '29083463', 5, 'San Juan', 'Diego Garcia Fernandez', ''),
(42, 'robertoconde1951@gmail.com', 46, '32395082', 28, 'Gijón. Asturias ', 'Conde Seoane Roberto ', ''),
(43, 'felipe8a@hotmail.com', 47, '8443596', 42, 'Jalisco', 'Felipe Ochoa ', ''),
(44, 'amonher90@hotmail.com', 48, NULL, 42, 'Veracruz', 'Ada Montes', ''),
(45, 'almardeltoro@me.com', 49, NULL, 42, 'Veracruz', 'Del Toro Alma', ''),
(46, 'dr.alejandro_carrera@hotmail.com', 50, NULL, 42, '', 'Carrera Alejandro', ''),
(47, 'ralarcon2688@gmail.com', 51, '70302747', 89, 'Lima', 'Rosa de jesus Alarcon Callupe', ''),
(48, 'vcoftalapaz@outlook.com', 52, '7840333', 42, 'La paz baja california.sur', 'Israel Velazquez Torres', ''),
(49, 'fcorujo@gmail.com', 53, '38389581', 111, 'Montevideo ', 'Corujo Federico ', ''),
(50, 'andreapvf@hotmail.es', 54, '95491761', 5, 'CABS', 'Andrea Vizcaino', ''),
(51, 'alicemsmith@hotmail.es', 55, '2300055780101', 185, 'Guatemla ', 'Alice Smith ', ''),
(52, 'doctoralvarezfelix@hotmail.com', 56, '1', 42, 'Sinaloa', 'Alvarez Félix Jesús Ramón', ''),
(53, 'gmvamado@gmail.com', 57, '29638308', 89, 'Arequipa', 'Giovanni Valencia', ''),
(54, 'shalomsg@gmail.com', 58, '97370331', 42, 'CDMX', 'Santos Shalom', ''),
(55, 'victorantoniobarrientos@gmail.com', 59, '25401102', 5, 'Rio Grande', 'BARRIENTOS VICTOR', ''),
(56, 'oftalmologia_plus@icloud.com', 60, '7081987', 42, 'Veracruz', 'Alma Del Toro', ''),
(57, 'alejandrofare@hotmail.com', 61, '12264096', 5, 'Lobos', 'Farè,Alejandro Claudio', ''),
(58, 'narvaez.humberto@gmail.com', 62, NULL, 42, 'Ciudad Juarez,Chihuahua ', 'Humberto Narvaez', ''),
(59, 'enzogonzalezr@gmail.com', 63, '29290527', 5, 'TUCUMAN', 'ENZO ', ''),
(60, 'ivaneh80@hotmail.com', 64, '40962936', 89, 'Lima', 'Espinoza Humareda, Ivan', ''),
(61, 'magdalenamartinezarias@gmail.com', 65, '31338774', 5, 'Salta', 'Magdalena Martínez Arias', ''),
(62, 'unicame_dac@hotmail.com', 66, '42062835', 89, 'Ica/Ica', 'MANUEL ENRIQUE', ''),
(63, 'asespaula@hotmail.com.ar', 67, '34404943', 5, 'concepcion', 'ases paula', ''),
(64, 'elianapitteri@hotmail.com', 68, '33218302', 5, 'Resistencia Chaco', 'Eliana Antonella Pitteri', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  ADD KEY `permission_id_refs_id_6ba0f519` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `content_type_id` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`group_id`),
  ADD KEY `group_id_refs_id_274b862c` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  ADD KEY `permission_id_refs_id_35d9ac25` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_type_id_refs_id_93d2d1f8` (`content_type_id`),
  ADD KEY `user_id_refs_id_c0d12874` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `app_label` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`);

--
-- Indices de la tabla `django_site`
--
ALTER TABLE `django_site`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `examen`
--
ALTER TABLE `examen`
  ADD PRIMARY KEY (`id_examen`),
  ADD KEY `examen_6340c63c` (`user_id`),
  ADD KEY `examen_e922f925` (`id_paciente`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`id_paciente`);

--
-- Indices de la tabla `salidas`
--
ALTER TABLE `salidas`
  ADD PRIMARY KEY (`id_salida`);

--
-- Indices de la tabla `salidas_bkp`
--
ALTER TABLE `salidas_bkp`
  ADD PRIMARY KEY (`id_salida`);

--
-- Indices de la tabla `south_migrationhistory`
--
ALTER TABLE `south_migrationhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `user_profile_pais` (`pais`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `django_site`
--
ALTER TABLE `django_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `examen`
--
ALTER TABLE `examen`
  MODIFY `id_examen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `paciente`
--
ALTER TABLE `paciente`
  MODIFY `id_paciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `salidas`
--
ALTER TABLE `salidas`
  MODIFY `id_salida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT de la tabla `salidas_bkp`
--
ALTER TABLE `salidas_bkp`
  MODIFY `id_salida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `south_migrationhistory`
--
ALTER TABLE `south_migrationhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `group_id_refs_id_f4b32aac` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `permission_id_refs_id_6ba0f519` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `content_type_id_refs_id_d043b34a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `group_id_refs_id_274b862c` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `user_id_refs_id_40c41112` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `permission_id_refs_id_35d9ac25` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `user_id_refs_id_4dc23c39` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `content_type_id_refs_id_93d2d1f8` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `user_id_refs_id_c0d12874` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `examen`
--
ALTER TABLE `examen`
  ADD CONSTRAINT `id_paciente_refs_id_paciente_e33723a1` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id_paciente`),
  ADD CONSTRAINT `user_id_refs_id_4b47ddfa` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `user_profile`
--
ALTER TABLE `user_profile`
  ADD CONSTRAINT `user_id_refs_id_19352c75` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
