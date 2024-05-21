-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Време на генериране: 21 май 2024 в 11:45
-- Версия на сървъра: 10.4.32-MariaDB
-- Версия на PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данни: `dzi_02`
--

-- --------------------------------------------------------

--
-- Структура на таблица `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add Служител', 7, 'add_employee'),
(26, 'Can change Служител', 7, 'change_employee'),
(27, 'Can delete Служител', 7, 'delete_employee'),
(28, 'Can view Служител', 7, 'view_employee'),
(29, 'Can add Ресторант', 8, 'add_restaurant'),
(30, 'Can change Ресторант', 8, 'change_restaurant'),
(31, 'Can delete Ресторант', 8, 'delete_restaurant'),
(32, 'Can view Ресторант', 8, 'view_restaurant'),
(33, 'Can add Отзив', 9, 'add_review'),
(34, 'Can change Отзив', 9, 'change_review'),
(35, 'Can delete Отзив', 9, 'delete_review'),
(36, 'Can view Отзив', 9, 'view_review'),
(37, 'Can add Раздел в менюто', 10, 'add_group'),
(38, 'Can change Раздел в менюто', 10, 'change_group'),
(39, 'Can delete Раздел в менюто', 10, 'delete_group'),
(40, 'Can view Раздел в менюто', 10, 'view_group'),
(41, 'Can add Позиция в менюто', 11, 'add_menuitem'),
(42, 'Can change Позиция в менюто', 11, 'change_menuitem'),
(43, 'Can delete Позиция в менюто', 11, 'delete_menuitem'),
(44, 'Can view Позиция в менюто', 11, 'view_menuitem'),
(45, 'Can add Начален час', 12, 'add_bookhour'),
(46, 'Can change Начален час', 12, 'change_bookhour'),
(47, 'Can delete Начален час', 12, 'delete_bookhour'),
(48, 'Can view Начален час', 12, 'view_bookhour'),
(49, 'Can add Резервация', 13, 'add_appointment'),
(50, 'Can change Резервация', 13, 'change_appointment'),
(51, 'Can delete Резервация', 13, 'delete_appointment'),
(52, 'Can view Резервация', 13, 'view_appointment');

-- --------------------------------------------------------

--
-- Структура на таблица `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$QxNYtSRUijHqq9yOH8GkkX$6DlK6dBVkzVIFpLSgJyG13p6TQ2Byg6xqj5CDlhgXyc=', '2024-05-09 12:20:07.694297', 1, 'admin', '', '', '', 1, 1, '2024-02-22 14:22:19.168643');

-- --------------------------------------------------------

--
-- Структура на таблица `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-04-27 12:09:59.825225', '1', 'Детелина Здравковва', 1, '[{\"added\": {}}]', 7, 1),
(2, '2024-04-27 12:15:12.419248', '2', 'Нако Светлинов', 1, '[{\"added\": {}}]', 7, 1),
(3, '2024-04-27 12:16:15.642377', '3', 'Петранка Димитрова', 1, '[{\"added\": {}}]', 7, 1),
(4, '2024-04-27 12:17:39.884449', '4', 'Милко Сърдев', 1, '[{\"added\": {}}]', 7, 1),
(5, '2024-04-27 12:17:55.349654', '5', 'Милко Сърдев', 1, '[{\"added\": {}}]', 7, 1),
(6, '2024-04-27 12:19:30.801317', '6', 'Ива Ивайлова', 1, '[{\"added\": {}}]', 7, 1),
(7, '2024-04-27 12:28:13.651185', '5', 'Милко Сърдев', 3, '', 7, 1),
(8, '2024-04-27 12:39:31.484115', '6', 'Ива Ивайлова', 3, '', 7, 1),
(9, '2024-04-27 12:40:16.240119', '1', 'Детелина Здравковва', 2, '[{\"changed\": {\"fields\": [\"\\u0421\\u043d\\u0438\\u043c\\u043a\\u0430\"]}}]', 7, 1),
(10, '2024-04-27 14:03:20.796150', '1', 'Георги Георгиев', 1, '[{\"added\": {}}]', 9, 1),
(11, '2024-04-27 14:05:01.017933', '2', 'Ваня Иванова', 1, '[{\"added\": {}}]', 9, 1),
(12, '2024-04-27 14:06:09.122945', '3', 'Петър Петров', 1, '[{\"added\": {}}]', 9, 1),
(13, '2024-04-27 14:07:32.691366', '4', 'Деси Десиславова', 1, '[{\"added\": {}}]', 9, 1),
(14, '2024-04-27 14:23:37.254821', '1', 'Ресторант \"Здравец\"', 1, '[{\"added\": {}}]', 8, 1),
(15, '2024-04-27 14:26:38.476916', '2', 'Ресторант \"Бонжур\"', 1, '[{\"added\": {}}]', 8, 1),
(16, '2024-04-27 15:45:24.160155', '1', 'Супи', 1, '[{\"added\": {}}]', 10, 1),
(17, '2024-04-27 15:45:55.849988', '1', 'Бобена чорба', 1, '[{\"added\": {}}]', 11, 1),
(18, '2024-04-27 15:46:14.087147', '1', 'Бобена чорба', 2, '[{\"changed\": {\"fields\": [\"\\u0421\\u043d\\u0438\\u043c\\u043a\\u0430\"]}}]', 11, 1),
(19, '2024-04-27 15:47:20.978877', '2', 'Основни', 1, '[{\"added\": {}}]', 10, 1),
(20, '2024-04-27 15:47:26.156923', '2', 'Телешка пържола.', 1, '[{\"added\": {}}]', 11, 1),
(21, '2024-04-27 17:17:07.738149', '2', 'Телешка пържола.', 2, '[{\"changed\": {\"fields\": [\"\\u0426\\u0435\\u043d\\u0430\"]}}]', 11, 1),
(22, '2024-04-27 17:17:34.837909', '1', 'Бобена чорба', 2, '[{\"changed\": {\"fields\": [\"\\u0426\\u0435\\u043d\\u0430\"]}}]', 11, 1),
(23, '2024-04-27 17:47:34.857211', '2', 'Ресторант \"Бонжур\"', 2, '[{\"changed\": {\"fields\": [\"\\u0411\\u0440\\u043e\\u0439 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u043d\\u0438 \\u043c\\u0435\\u0441\\u0442\\u0430\"]}}]', 8, 1),
(24, '2024-04-27 17:47:43.121492', '1', 'Ресторант \"Здравец\"', 2, '[{\"changed\": {\"fields\": [\"\\u0411\\u0440\\u043e\\u0439 \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u043d\\u0438 \\u043c\\u0435\\u0441\\u0442\\u0430\"]}}]', 8, 1),
(25, '2024-04-27 19:51:15.450634', '1', '11:00', 1, '[{\"added\": {}}]', 12, 1),
(26, '2024-04-27 19:51:28.688950', '2', '11:30', 1, '[{\"added\": {}}]', 12, 1),
(27, '2024-04-27 19:51:37.812649', '3', '12:00', 1, '[{\"added\": {}}]', 12, 1),
(28, '2024-04-27 19:51:43.475306', '4', '12:30', 1, '[{\"added\": {}}]', 12, 1),
(29, '2024-04-27 19:51:50.011373', '5', '13:00', 1, '[{\"added\": {}}]', 12, 1),
(30, '2024-04-27 19:52:11.906804', '6', '13:30', 1, '[{\"added\": {}}]', 12, 1),
(31, '2024-04-27 19:52:18.285380', '7', '14:00', 1, '[{\"added\": {}}]', 12, 1),
(32, '2024-04-27 19:52:23.319009', '8', '14:30', 1, '[{\"added\": {}}]', 12, 1),
(33, '2024-04-27 19:52:31.703319', '9', '17:00', 1, '[{\"added\": {}}]', 12, 1),
(34, '2024-04-27 19:52:36.483665', '10', '17:30', 1, '[{\"added\": {}}]', 12, 1),
(35, '2024-04-27 19:52:41.475704', '11', '18:00', 1, '[{\"added\": {}}]', 12, 1),
(36, '2024-04-27 19:52:46.122163', '12', '18:30', 1, '[{\"added\": {}}]', 12, 1),
(37, '2024-04-27 19:52:50.579677', '13', '19:00', 1, '[{\"added\": {}}]', 12, 1),
(38, '2024-04-27 19:52:55.756057', '14', '19:30', 1, '[{\"added\": {}}]', 12, 1),
(39, '2024-04-27 19:53:01.013793', '15', '20:00', 1, '[{\"added\": {}}]', 12, 1),
(40, '2024-04-27 19:53:06.253123', '16', '20:30', 1, '[{\"added\": {}}]', 12, 1),
(41, '2024-04-27 19:53:13.455788', '17', '21:00', 1, '[{\"added\": {}}]', 12, 1),
(42, '2024-04-27 21:26:56.770897', '4', 'ggg', 2, '[{\"changed\": {\"fields\": [\"\\u0411\\u0440\\u043e\\u0439 \\u0445\\u043e\\u0440\\u0430\"]}}]', 13, 1),
(43, '2024-04-27 21:27:08.238648', '3', 'AAAA', 2, '[{\"changed\": {\"fields\": [\"\\u0420\\u0435\\u0441\\u0442\\u043e\\u0440\\u0430\\u043d\\u0442\"]}}]', 13, 1);

-- --------------------------------------------------------

--
-- Структура на таблица `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(13, 'main', 'appointment'),
(12, 'main', 'bookhour'),
(7, 'main', 'employee'),
(10, 'main', 'group'),
(11, 'main', 'menuitem'),
(8, 'main', 'restaurant'),
(9, 'main', 'review'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Структура на таблица `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-02-22 14:21:39.147278'),
(2, 'auth', '0001_initial', '2024-02-22 14:21:39.709307'),
(3, 'admin', '0001_initial', '2024-02-22 14:21:39.885792'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-02-22 14:21:39.900111'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-02-22 14:21:39.913625'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-02-22 14:21:40.001159'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-02-22 14:21:40.084557'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-02-22 14:21:40.121039'),
(9, 'auth', '0004_alter_user_username_opts', '2024-02-22 14:21:40.147538'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-02-22 14:21:40.234629'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-02-22 14:21:40.237658'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-02-22 14:21:40.251364'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-02-22 14:21:40.273561'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-02-22 14:21:40.301333'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-02-22 14:21:40.327558'),
(16, 'auth', '0011_update_proxy_permissions', '2024-02-22 14:21:40.343843'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-02-22 14:21:40.368107'),
(18, 'sessions', '0001_initial', '2024-02-22 14:21:40.415688'),
(19, 'main', '0001_initial', '2024-04-27 12:07:51.068405'),
(20, 'main', '0002_remove_employee_description', '2024-04-27 12:11:59.979352'),
(21, 'main', '0003_review_alter_restaurant_photo1_and_more', '2024-04-27 14:01:29.996052'),
(22, 'main', '0004_group_menuitem', '2024-04-27 15:38:17.860566'),
(23, 'main', '0005_menuitem_photo', '2024-04-27 15:45:45.692347'),
(24, 'main', '0006_menuitem_price', '2024-04-27 17:01:59.564922'),
(25, 'main', '0007_bookhour_service_remove_restaurant_text3_and_more', '2024-04-27 17:46:44.587450'),
(26, 'main', '0008_remove_appointment_ap_service_appointment_ap_email_and_more', '2024-04-27 17:46:48.053516'),
(27, 'main', '0009_appointment_ap_message_appointment_ap_places_and_more', '2024-04-27 19:28:23.460705'),
(28, 'main', '0010_appointment_ap_rest', '2024-04-27 21:24:39.203261');

-- --------------------------------------------------------

--
-- Структура на таблица `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3wrzt4rf5dg9cw38rdiknq0srq7mzd68', '.eJxVjEEOwiAQRe_C2pAy0BZcuu8ZyAwDUjU0Ke3KeHdp0oVu33_vv4XHfct-r3H1M4urUOLyywjDM5Zj4AeW-yLDUrZ1Jnko8lyrnBaOr9vp_h1krLnVAYmtTuT0CKBoANupyKkBdsH11sIYADqjU4-YBtNkqwyQZjSqBeLzBe72N8k:1s0gqz:NXXaufQKhK36FpCcy94nM0dnU0kl_YJ6Jrbugb0CXec', '2024-05-11 12:08:29.524478'),
('ar7msw8rmhrxmm7wcbqxdz20vsksv36v', '.eJxVjEEOwiAQRe_C2pAy0BZcuu8ZyAwDUjU0Ke3KeHdp0oVu33_vv4XHfct-r3H1M4urUOLyywjDM5Zj4AeW-yLDUrZ1Jnko8lyrnBaOr9vp_h1krLnVAYmtTuT0CKBoANupyKkBdsH11sIYADqjU4-YBtNkqwyQZjSqBeLzBe72N8k:1s52kp:5QZn6Isj-BW7PVy1E2RCDV6qkW130zXpGLu9sLopey8', '2024-05-23 12:20:07.699178'),
('i7vv874jvzazihpp80kdrk5175l405mg', '.eJxVjMsOwiAQRf-FtSFDeXRw6d5vIAMMUjU0Ke3K-O_apAvd3nPOfYlA21rD1nkJUxZnocTpd4uUHtx2kO_UbrNMc1uXKcpdkQft8jpnfl4O9--gUq_fGkZbwKNlNBqReHBWe3CgjcNEJdKARKZg9Jx81sCMymogHzWpNGbx_gDEtDer:1rd9yP:VIC2574wfzJpAjvYpbTSthCFbO7zMS0PTZohPSg4oeM', '2024-03-07 14:22:53.511482');

-- --------------------------------------------------------

--
-- Структура на таблица `main_appointment`
--

DROP TABLE IF EXISTS `main_appointment`;
CREATE TABLE `main_appointment` (
  `id` bigint(20) NOT NULL,
  `ap_date` date NOT NULL,
  `ap_name` varchar(60) NOT NULL,
  `ap_phone` varchar(14) NOT NULL,
  `ap_new` tinyint(1) NOT NULL,
  `ap_hour_id` bigint(20) NOT NULL,
  `ap_email` varchar(50) NOT NULL,
  `ap_type` smallint(5) UNSIGNED NOT NULL CHECK (`ap_type` >= 0),
  `ap_message` longtext NOT NULL,
  `ap_places` int(11) NOT NULL,
  `ap_rest_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `main_appointment`
--

INSERT INTO `main_appointment` (`id`, `ap_date`, `ap_name`, `ap_phone`, `ap_new`, `ap_hour_id`, `ap_email`, `ap_type`, `ap_message`, `ap_places`, `ap_rest_id`) VALUES
(1, '2024-04-28', 'AAAA', '1111', 1, 1, 'A@B.C', 1, 'WQWEQWEQWE', 2, 2),
(2, '2024-04-28', 'AAAA', '1111', 1, 1, 'A@B.C', 1, 'WQWEQWEQWE', 2, 2),
(3, '2024-04-28', 'AAAA', '1111', 1, 1, 'A@B.C', 1, 'WQWEQWEQWE', 2, 1),
(4, '2024-04-28', 'ggg', '333', 1, 1, 'g@f.v', 1, 'sasas', 8, 2),
(5, '2024-04-28', 'g', '12', 1, 1, 'as@sa.sa', 1, '12', 4, 1),
(6, '2024-04-28', 'g', '12', 1, 1, 'as@sa.sa', 1, '12', 4, 1),
(7, '2024-04-28', 'hhhh', '', 1, 2, '', 1, '', 2, 2),
(8, '2024-05-08', 'ggjghg', '32121', 1, 4, 'abv@bg.cf', 1, '', 25, 1);

-- --------------------------------------------------------

--
-- Структура на таблица `main_bookhour`
--

DROP TABLE IF EXISTS `main_bookhour`;
CREATE TABLE `main_bookhour` (
  `id` bigint(20) NOT NULL,
  `hour` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `main_bookhour`
--

INSERT INTO `main_bookhour` (`id`, `hour`) VALUES
(1, '11:00'),
(2, '11:30'),
(3, '12:00'),
(4, '12:30'),
(5, '13:00'),
(6, '13:30'),
(7, '14:00'),
(8, '14:30'),
(9, '17:00'),
(10, '17:30'),
(11, '18:00'),
(12, '18:30'),
(13, '19:00'),
(14, '19:30'),
(15, '20:00'),
(16, '20:30'),
(17, '21:00');

-- --------------------------------------------------------

--
-- Структура на таблица `main_employee`
--

DROP TABLE IF EXISTS `main_employee`;
CREATE TABLE `main_employee` (
  `id` bigint(20) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `name` varchar(150) NOT NULL,
  `position` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `main_employee`
--

INSERT INTO `main_employee` (`id`, `photo`, `name`, `position`) VALUES
(1, 'employees/testimonial-4.jpg', 'Детелина Здравковва', 'консултант'),
(2, 'employees/testimonial-3.jpg', 'Нако Светлинов', 'техническа поддръжка'),
(3, 'employees/testimonial-1.jpg', 'Петранка Димитрова', 'Дизайн и реклама'),
(4, 'employees/testimonial-2.jpg', 'Милко Сърдев', 'Мениджър');

-- --------------------------------------------------------

--
-- Структура на таблица `main_group`
--

DROP TABLE IF EXISTS `main_group`;
CREATE TABLE `main_group` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `main_group`
--

INSERT INTO `main_group` (`id`, `name`) VALUES
(1, 'Супи'),
(2, 'Основни');

-- --------------------------------------------------------

--
-- Структура на таблица `main_menuitem`
--

DROP TABLE IF EXISTS `main_menuitem`;
CREATE TABLE `main_menuitem` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `restaurant_id` bigint(20) NOT NULL,
  `section_id` bigint(20) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `price` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `main_menuitem`
--

INSERT INTO `main_menuitem` (`id`, `name`, `description`, `restaurant_id`, `section_id`, `photo`, `price`) VALUES
(1, 'Бобена чорба', 'Чорба от смилянски боб. Приготвена по стара местна рецепта. Постна.', 1, 1, 'menu/Soup1.jpg', 4.50),
(2, 'Телешка пържола.', 'Класическа пържола от телешки шол.', 1, 2, 'menu/menu-8.jpg', 17.99);

-- --------------------------------------------------------

--
-- Структура на таблица `main_restaurant`
--

DROP TABLE IF EXISTS `main_restaurant`;
CREATE TABLE `main_restaurant` (
  `id` bigint(20) NOT NULL,
  `photo1` varchar(100) NOT NULL,
  `photo2` varchar(100) NOT NULL,
  `photo3` varchar(100) NOT NULL,
  `photo4` varchar(100) NOT NULL,
  `name` varchar(150) NOT NULL,
  `text1` longtext NOT NULL,
  `text2` longtext NOT NULL,
  `places` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `main_restaurant`
--

INSERT INTO `main_restaurant` (`id`, `photo1`, `photo2`, `photo3`, `photo4`, `name`, `text1`, `text2`, `places`) VALUES
(1, 'restaurants/about-1.jpg', 'restaurants/menu-5.jpg', 'restaurants/menu-8.jpg', 'restaurants/about-2.jpg', 'Ресторант \"Здравец\"', 'Спокойно и уютно място в полите на планината.', 'Ресторантът предлага специалитети от местната кухня.', 80),
(2, 'restaurants/ресторант2.jpg', 'restaurants/menu-2.jpg', 'restaurants/about-4.jpg', 'restaurants/ресторант1.jpg', 'Ресторант \"Бонжур\"', 'Качествена кухня от продукти с проверен произход.', 'Италианска кухня', 50);

-- --------------------------------------------------------

--
-- Структура на таблица `main_review`
--

DROP TABLE IF EXISTS `main_review`;
CREATE TABLE `main_review` (
  `id` bigint(20) NOT NULL,
  `txt` longtext NOT NULL,
  `name` varchar(50) NOT NULL,
  `pos` varchar(50) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `main_review`
--

INSERT INTO `main_review` (`id`, `txt`, `name`, `pos`, `photo`) VALUES
(1, 'Много е удобно да не прескачаш от един сайт на друг.', 'Георги Георгиев', 'фрилансер', 'clients/testimonial-2.jpg'),
(2, 'Браво! идеята ви е страхотна! Често я ползваме - станахме редовни клиенти.', 'Ваня Иванова', 'счетоводител', 'clients/testimonial-1.jpg'),
(3, 'Супер! Действитеелное бързо и лесно.', 'Петър Петров', 'служител', 'clients/testimonial-3.jpg'),
(4, 'Разгледах сайта ви - харсва ми много! Дерзайте и се равивайте!', 'Деси Десиславова', 'адвокат', 'clients/testimonial-4.jpg');

--
-- Indexes for dumped tables
--

--
-- Индекси за таблица `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индекси за таблица `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Индекси за таблица `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Индекси за таблица `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Индекси за таблица `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Индекси за таблица `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Индекси за таблица `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Индекси за таблица `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Индекси за таблица `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Индекси за таблица `main_appointment`
--
ALTER TABLE `main_appointment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_appointment_ap_hour_id_3e2d15db_fk_main_bookhour_id` (`ap_hour_id`),
  ADD KEY `main_appointment_ap_rest_id_75932579_fk_main_restaurant_id` (`ap_rest_id`);

--
-- Индекси за таблица `main_bookhour`
--
ALTER TABLE `main_bookhour`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `main_employee`
--
ALTER TABLE `main_employee`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `main_group`
--
ALTER TABLE `main_group`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `main_menuitem`
--
ALTER TABLE `main_menuitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_menuitem_restaurant_id_db57f4c5_fk_main_restaurant_id` (`restaurant_id`),
  ADD KEY `main_menuitem_section_id_ef6d2c6c_fk_main_group_id` (`section_id`);

--
-- Индекси за таблица `main_restaurant`
--
ALTER TABLE `main_restaurant`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `main_review`
--
ALTER TABLE `main_review`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `main_appointment`
--
ALTER TABLE `main_appointment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `main_bookhour`
--
ALTER TABLE `main_bookhour`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `main_employee`
--
ALTER TABLE `main_employee`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `main_group`
--
ALTER TABLE `main_group`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_menuitem`
--
ALTER TABLE `main_menuitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_restaurant`
--
ALTER TABLE `main_restaurant`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_review`
--
ALTER TABLE `main_review`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения за дъмпнати таблици
--

--
-- Ограничения за таблица `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ограничения за таблица `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ограничения за таблица `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения за таблица `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения за таблица `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения за таблица `main_appointment`
--
ALTER TABLE `main_appointment`
  ADD CONSTRAINT `main_appointment_ap_hour_id_3e2d15db_fk_main_bookhour_id` FOREIGN KEY (`ap_hour_id`) REFERENCES `main_bookhour` (`id`),
  ADD CONSTRAINT `main_appointment_ap_rest_id_75932579_fk_main_restaurant_id` FOREIGN KEY (`ap_rest_id`) REFERENCES `main_restaurant` (`id`);

--
-- Ограничения за таблица `main_menuitem`
--
ALTER TABLE `main_menuitem`
  ADD CONSTRAINT `main_menuitem_restaurant_id_db57f4c5_fk_main_restaurant_id` FOREIGN KEY (`restaurant_id`) REFERENCES `main_restaurant` (`id`),
  ADD CONSTRAINT `main_menuitem_section_id_ef6d2c6c_fk_main_group_id` FOREIGN KEY (`section_id`) REFERENCES `main_group` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
