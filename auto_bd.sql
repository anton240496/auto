-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 30 2023 г., 19:29
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `auto_bd`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_duplicator_packages`
--

CREATE TABLE `wp_duplicator_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) NOT NULL,
  `package` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_duplicator_packages`
--

INSERT INTO `wp_duplicator_packages` (`id`, `name`, `hash`, `status`, `created`, `owner`, `package`) VALUES
(1, '20230806', 'e5b98194f1fc3d4d3954_20230806080721', 100, '2023-08-06 08:08:19', 'admin', 'O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2023-08-06 08:07:21\";s:7:\"Version\";s:7:\"1.5.5.1\";s:9:\"VersionWP\";s:3:\"6.2\";s:9:\"VersionDB\";s:7:\"10.3.22\";s:10:\"VersionPHP\";s:5:\"7.4.5\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";i:1;s:4:\"Name\";s:8:\"20230806\";s:4:\"Hash\";s:35:\"e5b98194f1fc3d4d3954_20230806080721\";s:8:\"NameHash\";s:44:\"20230806_e5b98194f1fc3d4d3954_20230806080721\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";s:54:\"20230806_e5b98194f1fc3d4d3954_20230806080721_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";s:11:\"120.33 sec.\";s:7:\"ExeSize\";s:7:\"73.46KB\";s:7:\"ZipSize\";s:6:\"67.3MB\";s:6:\"Status\";s:5:\"100.0\";s:6:\"WPUser\";s:5:\"admin\";s:7:\"Archive\";O:11:\"DUP_Archive\":26:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";s:56:\"20230806_e5b98194f1fc3d4d3954_20230806080721_archive.zip\";s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:29:\"D:/os/OpenServer/domains/auto\";s:4:\"Size\";i:70565835;s:4:\"Dirs\";a:0:{}s:9:\"dirsCount\";i:924;s:5:\"Files\";a:0:{}s:10:\"filesCount\";i:8269;s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":6:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":7:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:9192;s:10:\"\0*\0Package\";r:1;s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:3:{i:0;s:38:\"D:/os/OpenServer/domains/auto/wp-admin\";i:1;s:41:\"D:/os/OpenServer/domains/auto/wp-includes\";i:2;s:50:\"D:/os/OpenServer/domains/auto/wp-content/languages\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:7:{i:0;s:29:\"D:/os/OpenServer/domains/auto\";i:1;s:29:\"D:/os/OpenServer/domains/auto\";i:2;s:40:\"D:/os/OpenServer/domains/auto/wp-content\";i:3;s:48:\"D:/os/OpenServer/domains/auto/wp-content/uploads\";i:4;s:48:\"D:/os/OpenServer/domains/auto/wp-content/plugins\";i:5;s:51:\"D:/os/OpenServer/domains/auto/wp-content/mu-plugins\";i:6;s:47:\"D:/os/OpenServer/domains/auto/wp-content/themes\";}s:31:\"\0DUP_Archive\0relativeFiltersDir\";a:2:{i:0;s:61:\"D:/os/OpenServer/domains/auto/wp-content/backups-dup-lite/tmp\";i:1;s:15:\"backups-dup-pro\";}s:24:\"\0DUP_Archive\0listFileObj\";N;s:23:\"\0DUP_Archive\0listDirObj\";N;}s:9:\"Installer\";O:13:\"DUP_Installer\":15:{s:4:\"File\";s:62:\"20230806_e5b98194f1fc3d4d3954_20230806080721_installer.php.bak\";s:4:\"Size\";i:75228;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:13:\"OptsDBCharset\";s:0:\"\";s:15:\"OptsDBCollation\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:1;s:17:\"\0*\0origFileManger\";O:40:\"Duplicator\\Libs\\Snap\\SnapOrigFileManager\":4:{s:18:\"\0*\0persistanceFile\";s:113:\"D:/os/OpenServer/domains/auto/wp-content/backups-dup-lite/tmp/original_files_e5b9819-06080721/entries_stored.json\";s:18:\"\0*\0origFilesFolder\";s:93:\"D:/os/OpenServer/domains/auto/wp-content/backups-dup-lite/tmp/original_files_e5b9819-06080721\";s:20:\"\0*\0origFolderEntries\";a:0:{}s:11:\"\0*\0rootPath\";s:29:\"D:/os/OpenServer/domains/auto\";}s:32:\"\0DUP_Installer\0configTransformer\";O:44:\"Duplicator\\Libs\\WpConfig\\WPConfigTransformer\":3:{s:17:\"\0*\0wp_config_path\";s:43:\"D:/os/OpenServer/domains/auto/wp-config.php\";s:16:\"\0*\0wp_config_src\";s:4467:\"<?php\n/**\n * Основные параметры WordPress.\n *\n * Скрипт для создания wp-config.php использует этот файл в процессе установки.\n * Необязательно использовать веб-интерфейс, можно скопировать файл в \"wp-config.php\"\n * и заполнить значения вручную.\n *\n * Этот файл содержит следующие параметры:\n *\n * * Настройки MySQL\n * * Секретные ключи\n * * Префикс таблиц базы данных\n * * ABSPATH\n *\n * @link https://ru.wordpress.org/support/article/editing-wp-config-php/\n *\n * @package WordPress\n */\n\n// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //\n/** Имя базы данных для WordPress */\ndefine( \'DB_NAME\', \'auto_bd\' );\n\n/** Имя пользователя MySQL */\ndefine( \'DB_USER\', \'root\' );\n\n/** Пароль к базе данных MySQL */\ndefine( \'DB_PASSWORD\', \'root\' );\n\n/** Имя сервера MySQL */\ndefine( \'DB_HOST\', \'localhost\' );\n\n/** Кодировка базы данных для создания таблиц. */\ndefine( \'DB_CHARSET\', \'utf8mb4\' );\n\n/** Схема сопоставления. Не меняйте, если не уверены. */\ndefine( \'DB_COLLATE\', \'\' );\n\n/**#@+\n * Уникальные ключи и соли для аутентификации.\n *\n * Смените значение каждой константы на уникальную фразу. Можно сгенерировать их с помощью\n * {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}.\n *\n * Можно изменить их, чтобы сделать существующие файлы cookies недействительными.\n * Пользователям потребуется авторизоваться снова.\n *\n * @since 2.6.0\n */\ndefine( \'AUTH_KEY\',         \'!y?S y5JS^&kS.2tk1}?N#;*$lgXHv`qH.Ks 7npyMo<pQ24df_BWr9rEBMtW|)c\' );\ndefine( \'SECURE_AUTH_KEY\',  \'l|:.<7|qFulFAq4t/u|PvPO=_{ce.!{r}PYo$u[Ij/$@S-`c5Y8|bV-I;Mnpalb|\' );\ndefine( \'LOGGED_IN_KEY\',    \'c;hpX0BO|^6s4EHOFf=wOBKcz:qr33*|HUYNHmiAg([ZJn iaMifW uqh),t)`,L\' );\ndefine( \'NONCE_KEY\',        \'S9{O0}-8gt0%rGg&GkW&hq>mK)l<K]x2Wpa/_[*,j1>/{xiIf0FGm R.&E[c(bXY\' );\ndefine( \'AUTH_SALT\',        \'OQyrdfJYEep/&~R=<2z2>Mb%tkC,qnGpEck+i3/)DplPf6ddaSx:i8=)Md:Uit@g\' );\ndefine( \'SECURE_AUTH_SALT\', \'Ens$ 3O3@_{W(!d~(ixi0{pk-(Pb# [qTAhJV7+VIyN;$Nmo#ItZNGu8,#1~^Hgu\' );\ndefine( \'LOGGED_IN_SALT\',   \'Poi :x 6[TM{qSRPgn2DSVsnpKW(}< =aPSiJFi(&8Qgomr6zC`fy$})B1Twz/tE\' );\ndefine( \'NONCE_SALT\',       \'*z51/|mD$Ux8r$&~<=dkJ<$Z1kx%]qq+Jm(e)#%|e):7FN=,t@*fi=4YRa<W0X>/\' );\n\n/**#@-*/\n\n/**\n * Префикс таблиц в базе данных WordPress.\n *\n * Можно установить несколько сайтов в одну базу данных, если использовать\n * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.\n */\n$table_prefix = \'wp_\';\n\n/**\n * Для разработчиков: Режим отладки WordPress.\n *\n * Измените это значение на true, чтобы включить отображение уведомлений при разработке.\n * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG\n * в своём рабочем окружении.\n *\n * Информацию о других отладочных константах можно найти в документации.\n *\n * @link https://ru.wordpress.org/support/article/debugging-in-wordpress/\n */\ndefine( \'WP_DEBUG\', false );\n\n/* Произвольные значения добавляйте между этой строкой и надписью \"дальше не редактируем\". */\n\n\n\n/* Это всё, дальше не редактируем. Успехов! */\n\n/** Абсолютный путь к директории WordPress. */\nif ( ! defined( \'ABSPATH\' ) ) {\n	define( \'ABSPATH\', __DIR__ . \'/\' );\n}\n\n/** Инициализирует переменные WordPress и подключает файлы. */\nrequire_once ABSPATH . \'wp-settings.php\';\n\";s:13:\"\0*\0wp_configs\";a:2:{s:8:\"constant\";a:16:{s:7:\"DB_NAME\";a:3:{s:3:\"src\";s:31:\"define( \'DB_NAME\', \'auto_bd\' );\";s:5:\"value\";s:9:\"\'auto_bd\'\";s:5:\"parts\";a:3:{i:0;s:17:\"define( \'DB_NAME\'\";i:1;s:12:\", \'auto_bd\' \";i:2;s:2:\");\";}}s:7:\"DB_USER\";a:3:{s:3:\"src\";s:28:\"define( \'DB_USER\', \'root\' );\";s:5:\"value\";s:6:\"\'root\'\";s:5:\"parts\";a:3:{i:0;s:17:\"define( \'DB_USER\'\";i:1;s:9:\", \'root\' \";i:2;s:2:\");\";}}s:11:\"DB_PASSWORD\";a:3:{s:3:\"src\";s:32:\"define( \'DB_PASSWORD\', \'root\' );\";s:5:\"value\";s:6:\"\'root\'\";s:5:\"parts\";a:3:{i:0;s:21:\"define( \'DB_PASSWORD\'\";i:1;s:9:\", \'root\' \";i:2;s:2:\");\";}}s:7:\"DB_HOST\";a:3:{s:3:\"src\";s:33:\"define( \'DB_HOST\', \'localhost\' );\";s:5:\"value\";s:11:\"\'localhost\'\";s:5:\"parts\";a:3:{i:0;s:17:\"define( \'DB_HOST\'\";i:1;s:14:\", \'localhost\' \";i:2;s:2:\");\";}}s:10:\"DB_CHARSET\";a:3:{s:3:\"src\";s:34:\"define( \'DB_CHARSET\', \'utf8mb4\' );\";s:5:\"value\";s:9:\"\'utf8mb4\'\";s:5:\"parts\";a:3:{i:0;s:20:\"define( \'DB_CHARSET\'\";i:1;s:12:\", \'utf8mb4\' \";i:2;s:2:\");\";}}s:10:\"DB_COLLATE\";a:3:{s:3:\"src\";s:27:\"define( \'DB_COLLATE\', \'\' );\";s:5:\"value\";s:2:\"\'\'\";s:5:\"parts\";a:3:{i:0;s:20:\"define( \'DB_COLLATE\'\";i:1;s:5:\", \'\' \";i:2;s:2:\");\";}}s:8:\"AUTH_KEY\";a:3:{s:3:\"src\";s:97:\"define( \'AUTH_KEY\',         \'!y?S y5JS^&kS.2tk1}?N#;*$lgXHv`qH.Ks 7npyMo<pQ24df_BWr9rEBMtW|)c\' );\";s:5:\"value\";s:66:\"\'!y?S y5JS^&kS.2tk1}?N#;*$lgXHv`qH.Ks 7npyMo<pQ24df_BWr9rEBMtW|)c\'\";s:5:\"parts\";a:3:{i:0;s:18:\"define( \'AUTH_KEY\'\";i:1;s:77:\",         \'!y?S y5JS^&kS.2tk1}?N#;*$lgXHv`qH.Ks 7npyMo<pQ24df_BWr9rEBMtW|)c\' \";i:2;s:2:\");\";}}s:15:\"SECURE_AUTH_KEY\";a:3:{s:3:\"src\";s:97:\"define( \'SECURE_AUTH_KEY\',  \'l|:.<7|qFulFAq4t/u|PvPO=_{ce.!{r}PYo$u[Ij/$@S-`c5Y8|bV-I;Mnpalb|\' );\";s:5:\"value\";s:66:\"\'l|:.<7|qFulFAq4t/u|PvPO=_{ce.!{r}PYo$u[Ij/$@S-`c5Y8|bV-I;Mnpalb|\'\";s:5:\"parts\";a:3:{i:0;s:25:\"define( \'SECURE_AUTH_KEY\'\";i:1;s:70:\",  \'l|:.<7|qFulFAq4t/u|PvPO=_{ce.!{r}PYo$u[Ij/$@S-`c5Y8|bV-I;Mnpalb|\' \";i:2;s:2:\");\";}}s:13:\"LOGGED_IN_KEY\";a:3:{s:3:\"src\";s:97:\"define( \'LOGGED_IN_KEY\',    \'c;hpX0BO|^6s4EHOFf=wOBKcz:qr33*|HUYNHmiAg([ZJn iaMifW uqh),t)`,L\' );\";s:5:\"value\";s:66:\"\'c;hpX0BO|^6s4EHOFf=wOBKcz:qr33*|HUYNHmiAg([ZJn iaMifW uqh),t)`,L\'\";s:5:\"parts\";a:3:{i:0;s:23:\"define( \'LOGGED_IN_KEY\'\";i:1;s:72:\",    \'c;hpX0BO|^6s4EHOFf=wOBKcz:qr33*|HUYNHmiAg([ZJn iaMifW uqh),t)`,L\' \";i:2;s:2:\");\";}}s:9:\"NONCE_KEY\";a:3:{s:3:\"src\";s:97:\"define( \'NONCE_KEY\',        \'S9{O0}-8gt0%rGg&GkW&hq>mK)l<K]x2Wpa/_[*,j1>/{xiIf0FGm R.&E[c(bXY\' );\";s:5:\"value\";s:66:\"\'S9{O0}-8gt0%rGg&GkW&hq>mK)l<K]x2Wpa/_[*,j1>/{xiIf0FGm R.&E[c(bXY\'\";s:5:\"parts\";a:3:{i:0;s:19:\"define( \'NONCE_KEY\'\";i:1;s:76:\",        \'S9{O0}-8gt0%rGg&GkW&hq>mK)l<K]x2Wpa/_[*,j1>/{xiIf0FGm R.&E[c(bXY\' \";i:2;s:2:\");\";}}s:9:\"AUTH_SALT\";a:3:{s:3:\"src\";s:97:\"define( \'AUTH_SALT\',        \'OQyrdfJYEep/&~R=<2z2>Mb%tkC,qnGpEck+i3/)DplPf6ddaSx:i8=)Md:Uit@g\' );\";s:5:\"value\";s:66:\"\'OQyrdfJYEep/&~R=<2z2>Mb%tkC,qnGpEck+i3/)DplPf6ddaSx:i8=)Md:Uit@g\'\";s:5:\"parts\";a:3:{i:0;s:19:\"define( \'AUTH_SALT\'\";i:1;s:76:\",        \'OQyrdfJYEep/&~R=<2z2>Mb%tkC,qnGpEck+i3/)DplPf6ddaSx:i8=)Md:Uit@g\' \";i:2;s:2:\");\";}}s:16:\"SECURE_AUTH_SALT\";a:3:{s:3:\"src\";s:97:\"define( \'SECURE_AUTH_SALT\', \'Ens$ 3O3@_{W(!d~(ixi0{pk-(Pb# [qTAhJV7+VIyN;$Nmo#ItZNGu8,#1~^Hgu\' );\";s:5:\"value\";s:66:\"\'Ens$ 3O3@_{W(!d~(ixi0{pk-(Pb# [qTAhJV7+VIyN;$Nmo#ItZNGu8,#1~^Hgu\'\";s:5:\"parts\";a:3:{i:0;s:26:\"define( \'SECURE_AUTH_SALT\'\";i:1;s:69:\", \'Ens$ 3O3@_{W(!d~(ixi0{pk-(Pb# [qTAhJV7+VIyN;$Nmo#ItZNGu8,#1~^Hgu\' \";i:2;s:2:\");\";}}s:14:\"LOGGED_IN_SALT\";a:3:{s:3:\"src\";s:97:\"define( \'LOGGED_IN_SALT\',   \'Poi :x 6[TM{qSRPgn2DSVsnpKW(}< =aPSiJFi(&8Qgomr6zC`fy$})B1Twz/tE\' );\";s:5:\"value\";s:66:\"\'Poi :x 6[TM{qSRPgn2DSVsnpKW(}< =aPSiJFi(&8Qgomr6zC`fy$})B1Twz/tE\'\";s:5:\"parts\";a:3:{i:0;s:24:\"define( \'LOGGED_IN_SALT\'\";i:1;s:71:\",   \'Poi :x 6[TM{qSRPgn2DSVsnpKW(}< =aPSiJFi(&8Qgomr6zC`fy$})B1Twz/tE\' \";i:2;s:2:\");\";}}s:10:\"NONCE_SALT\";a:3:{s:3:\"src\";s:97:\"define( \'NONCE_SALT\',       \'*z51/|mD$Ux8r$&~<=dkJ<$Z1kx%]qq+Jm(e)#%|e):7FN=,t@*fi=4YRa<W0X>/\' );\";s:5:\"value\";s:66:\"\'*z51/|mD$Ux8r$&~<=dkJ<$Z1kx%]qq+Jm(e)#%|e):7FN=,t@*fi=4YRa<W0X>/\'\";s:5:\"parts\";a:3:{i:0;s:20:\"define( \'NONCE_SALT\'\";i:1;s:75:\",       \'*z51/|mD$Ux8r$&~<=dkJ<$Z1kx%]qq+Jm(e)#%|e):7FN=,t@*fi=4YRa<W0X>/\' \";i:2;s:2:\");\";}}s:8:\"WP_DEBUG\";a:3:{s:3:\"src\";s:28:\"define( \'WP_DEBUG\', false );\";s:5:\"value\";s:5:\"false\";s:5:\"parts\";a:3:{i:0;s:18:\"define( \'WP_DEBUG\'\";i:1;s:8:\", false \";i:2;s:2:\");\";}}s:7:\"ABSPATH\";a:3:{s:3:\"src\";s:36:\"	define( \'ABSPATH\', __DIR__ . \'/\' );\";s:5:\"value\";s:13:\"__DIR__ . \'/\'\";s:5:\"parts\";a:3:{i:0;s:18:\"	define( \'ABSPATH\'\";i:1;s:16:\", __DIR__ . \'/\' \";i:2;s:2:\");\";}}}s:8:\"variable\";a:1:{s:12:\"table_prefix\";a:3:{s:3:\"src\";s:22:\"$table_prefix = \'wp_\';\";s:5:\"value\";s:5:\"\'wp_\'\";s:5:\"parts\";a:2:{i:0;s:15:\"$table_prefix =\";i:1;s:7:\" \'wp_\';\";}}}}}}s:8:\"Database\";O:12:\"DUP_Database\":15:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";i:1274710;s:4:\"File\";s:57:\"20230806_e5b98194f1fc3d4d3954_20230806080721_database.sql\";s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:31:\"mariadb.org binary distribution\";s:19:\"sameNameTableExists\";b:0;s:4:\"info\";O:16:\"DUP_DatabaseInfo\":23:{s:9:\"buildMode\";s:9:\"MYSQLDUMP\";s:11:\"charSetList\";a:2:{i:0;s:7:\"utf8mb4\";i:1;s:4:\"utf8\";}s:13:\"collationList\";a:2:{i:0;s:15:\"utf8_general_ci\";i:1;s:18:\"utf8mb4_unicode_ci\";}s:10:\"engineList\";a:1:{i:0;s:6:\"InnoDB\";}s:17:\"isTablesUpperCase\";i:0;s:15:\"isNameUpperCase\";i:0;s:4:\"name\";s:7:\"auto_bd\";s:15:\"tablesBaseCount\";i:13;s:16:\"tablesFinalCount\";i:13;s:20:\"muFilteredTableCount\";i:0;s:14:\"tablesRowCount\";i:1019;s:16:\"tablesSizeOnDisk\";i:3031040;s:10:\"tablesList\";a:13:{s:14:\"wp_commentmeta\";a:3:{s:14:\"inaccurateRows\";i:0;s:12:\"insertedRows\";i:0;s:4:\"size\";i:49152;}s:11:\"wp_comments\";a:3:{s:14:\"inaccurateRows\";i:0;s:12:\"insertedRows\";i:0;s:4:\"size\";i:98304;}s:22:\"wp_duplicator_packages\";a:3:{s:14:\"inaccurateRows\";i:1;s:12:\"insertedRows\";i:1;s:4:\"size\";i:32768;}s:8:\"wp_links\";a:3:{s:14:\"inaccurateRows\";i:0;s:12:\"insertedRows\";i:0;s:4:\"size\";i:32768;}s:10:\"wp_options\";a:3:{s:14:\"inaccurateRows\";i:166;s:12:\"insertedRows\";i:169;s:4:\"size\";i:2162688;}s:11:\"wp_postmeta\";a:3:{s:14:\"inaccurateRows\";i:732;s:12:\"insertedRows\";i:873;s:4:\"size\";i:229376;}s:8:\"wp_posts\";a:3:{s:14:\"inaccurateRows\";i:90;s:12:\"insertedRows\";i:92;s:4:\"size\";i:131072;}s:11:\"wp_termmeta\";a:3:{s:14:\"inaccurateRows\";i:0;s:12:\"insertedRows\";i:0;s:4:\"size\";i:49152;}s:8:\"wp_terms\";a:3:{s:14:\"inaccurateRows\";i:0;s:12:\"insertedRows\";i:2;s:4:\"size\";i:49152;}s:21:\"wp_term_relationships\";a:3:{s:14:\"inaccurateRows\";i:7;s:12:\"insertedRows\";i:7;s:4:\"size\";i:32768;}s:16:\"wp_term_taxonomy\";a:3:{s:14:\"inaccurateRows\";i:2;s:12:\"insertedRows\";i:2;s:4:\"size\";i:49152;}s:11:\"wp_usermeta\";a:3:{s:14:\"inaccurateRows\";i:21;s:12:\"insertedRows\";i:21;s:4:\"size\";i:49152;}s:8:\"wp_users\";a:3:{s:14:\"inaccurateRows\";i:0;s:12:\"insertedRows\";i:1;s:4:\"size\";i:65536;}}s:18:\"varLowerCaseTables\";s:1:\"1\";s:8:\"dbEngine\";s:7:\"MariaDB\";s:7:\"version\";s:7:\"10.3.22\";s:14:\"versionComment\";s:31:\"mariadb.org binary distribution\";s:9:\"viewCount\";i:0;s:9:\"procCount\";i:0;s:9:\"funcCount\";i:0;s:11:\"triggerList\";a:0:{}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:1;s:24:\"\0DUP_Database\0tempDbPath\";s:119:\"D:/os/OpenServer/domains/auto/wp-content/backups-dup-lite/tmp/20230806_e5b98194f1fc3d4d3954_20230806080721_database.sql\";s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:1;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2023-08-06 08:07:21\";s:7:\"Version\";s:7:\"1.5.5.1\";s:9:\"VersionWP\";s:3:\"6.2\";s:9:\"VersionDB\";s:7:\"10.3.22\";s:10:\"VersionPHP\";s:5:\"7.4.5\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:8:\"20230806\";s:4:\"Hash\";s:35:\"e5b98194f1fc3d4d3954_20230806080721\";s:8:\"NameHash\";s:44:\"20230806_e5b98194f1fc3d4d3954_20230806080721\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:21;s:9:\"Installer\";r:84;s:8:\"Database\";r:227;s:13:\"BuildProgress\";r:323;}}}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://auto', 'yes'),
(2, 'home', 'http://auto', 'yes'),
(3, 'blogname', '', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', '1@1.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:97:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:25:\"duplicator/duplicator.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'auto', 'yes'),
(41, 'stylesheet', 'auto', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '7', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1698735161', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'ru_RU', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:167:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие записи</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:247:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие комментарии</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Архивы</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Рубрики</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:7:{i:1693413570;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1693420770;a:5:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1693420789;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1693420791;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1693421561;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1693679970;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1639162077;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(121, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:38:\"Проверка SSL неудачна.\";}}', 'yes'),
(150, 'finished_updating_comment_type', '1', 'yes'),
(151, 'current_theme', 'auto', 'yes'),
(152, 'theme_mods_auto', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1639162100;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}s:11:\"custom_logo\";i:40;}', 'yes'),
(153, 'theme_switched', '', 'yes'),
(156, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(157, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(160, 'recovery_mode_email_last_sent', '1639164528', 'yes'),
(174, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:7:\"1@1.com\";s:7:\"version\";s:3:\"6.2\";s:9:\"timestamp\";i:1683181767;}', 'no'),
(185, 'category_children', 'a:0:{}', 'yes'),
(209, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":6,\"critical\":2}', 'yes'),
(212, 'recently_activated', 'a:0:{}', 'yes'),
(219, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.5.3\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1639291421;s:7:\"version\";s:5:\"5.5.3\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(220, 'site_logo', '40', 'yes'),
(225, 'acf_version', '5.11.4', 'yes'),
(462, 'user_count', '1', 'no'),
(463, 'db_upgraded', '', 'yes'),
(517, 'can_compress_scripts', '1', 'no'),
(726, 'duplicator_version_plugin', '1.5.5.1', 'yes'),
(728, 'duplicator_uninstall_package', '1', 'yes'),
(729, 'duplicator_uninstall_settings', '1', 'yes'),
(730, 'duplicator_settings', 'a:17:{s:7:\"version\";s:7:\"1.5.5.1\";s:18:\"uninstall_settings\";b:1;s:15:\"uninstall_files\";b:1;s:13:\"package_debug\";b:0;s:17:\"package_mysqldump\";b:1;s:22:\"package_mysqldump_path\";s:0:\"\";s:24:\"package_phpdump_qrylimit\";s:3:\"100\";s:17:\"package_zip_flush\";b:0;s:19:\"installer_name_mode\";s:6:\"simple\";s:16:\"storage_position\";s:6:\"wpcont\";s:20:\"storage_htaccess_off\";b:0;s:18:\"archive_build_mode\";i:2;s:17:\"skip_archive_scan\";b:0;s:21:\"unhook_third_party_js\";b:0;s:22:\"unhook_third_party_css\";b:0;s:17:\"active_package_id\";i:1;i:0;b:0;}', 'yes'),
(731, 'duplicator_activated', 'a:1:{s:4:\"lite\";i:1691309189;}', 'yes'),
(732, 'duplicator_notifications', 'a:4:{s:6:\"update\";i:1692422558;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}', 'yes'),
(733, 'duplicator_package_active', 'O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2023-08-06 08:07:21\";s:7:\"Version\";s:7:\"1.5.5.1\";s:9:\"VersionWP\";s:3:\"6.2\";s:9:\"VersionDB\";s:7:\"10.3.22\";s:10:\"VersionPHP\";s:5:\"7.4.5\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:8:\"20230806\";s:4:\"Hash\";s:35:\"e5b98194f1fc3d4d3954_20230806080721\";s:8:\"NameHash\";s:44:\"20230806_e5b98194f1fc3d4d3954_20230806080721\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";s:54:\"20230806_e5b98194f1fc3d4d3954_20230806080721_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";O:11:\"DUP_Archive\":26:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";N;s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:29:\"D:/os/OpenServer/domains/auto\";s:4:\"Size\";i:0;s:4:\"Dirs\";a:0:{}s:9:\"dirsCount\";i:924;s:5:\"Files\";a:0:{}s:10:\"filesCount\";i:8269;s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":6:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":7:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:-1;s:10:\"\0*\0Package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2023-08-06 08:07:21\";s:7:\"Version\";s:7:\"1.5.5.1\";s:9:\"VersionWP\";s:3:\"6.2\";s:9:\"VersionDB\";s:7:\"10.3.22\";s:10:\"VersionPHP\";s:5:\"7.4.5\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:8:\"20230806\";s:4:\"Hash\";s:35:\"e5b98194f1fc3d4d3954_20230806080721\";s:8:\"NameHash\";s:44:\"20230806_e5b98194f1fc3d4d3954_20230806080721\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:21;s:9:\"Installer\";O:13:\"DUP_Installer\":15:{s:4:\"File\";N;s:4:\"Size\";i:0;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:13:\"OptsDBCharset\";s:0:\"\";s:15:\"OptsDBCollation\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:65;s:17:\"\0*\0origFileManger\";N;s:32:\"\0DUP_Installer\0configTransformer\";O:44:\"Duplicator\\Libs\\WpConfig\\WPConfigTransformer\":3:{s:17:\"\0*\0wp_config_path\";s:43:\"D:/os/OpenServer/domains/auto/wp-config.php\";s:16:\"\0*\0wp_config_src\";N;s:13:\"\0*\0wp_configs\";a:0:{}}}s:8:\"Database\";O:12:\"DUP_Database\":15:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";N;s:4:\"File\";N;s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:31:\"mariadb.org binary distribution\";s:19:\"sameNameTableExists\";N;s:4:\"info\";O:16:\"DUP_DatabaseInfo\":23:{s:9:\"buildMode\";s:3:\"PHP\";s:11:\"charSetList\";a:0:{}s:13:\"collationList\";a:0:{}s:10:\"engineList\";a:0:{}s:17:\"isTablesUpperCase\";b:0;s:15:\"isNameUpperCase\";b:0;s:4:\"name\";s:0:\"\";s:15:\"tablesBaseCount\";i:0;s:16:\"tablesFinalCount\";i:0;s:20:\"muFilteredTableCount\";i:0;s:14:\"tablesRowCount\";i:0;s:16:\"tablesSizeOnDisk\";i:0;s:10:\"tablesList\";a:0:{}s:18:\"varLowerCaseTables\";i:1;s:8:\"dbEngine\";s:0:\"\";s:7:\"version\";i:0;s:14:\"versionComment\";i:0;s:9:\"viewCount\";i:0;s:9:\"procCount\";i:0;s:9:\"funcCount\";i:0;s:11:\"triggerList\";a:0:{}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:65;s:24:\"\0DUP_Database\0tempDbPath\";N;s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:0;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";r:65;}}s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:3:{i:0;s:38:\"D:/os/OpenServer/domains/auto/wp-admin\";i:1;s:41:\"D:/os/OpenServer/domains/auto/wp-includes\";i:2;s:50:\"D:/os/OpenServer/domains/auto/wp-content/languages\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:7:{i:0;s:29:\"D:/os/OpenServer/domains/auto\";i:1;s:29:\"D:/os/OpenServer/domains/auto\";i:2;s:40:\"D:/os/OpenServer/domains/auto/wp-content\";i:3;s:48:\"D:/os/OpenServer/domains/auto/wp-content/uploads\";i:4;s:48:\"D:/os/OpenServer/domains/auto/wp-content/plugins\";i:5;s:51:\"D:/os/OpenServer/domains/auto/wp-content/mu-plugins\";i:6;s:47:\"D:/os/OpenServer/domains/auto/wp-content/themes\";}s:31:\"\0DUP_Archive\0relativeFiltersDir\";a:2:{i:0;s:61:\"D:/os/OpenServer/domains/auto/wp-content/backups-dup-lite/tmp\";i:1;s:15:\"backups-dup-pro\";}s:24:\"\0DUP_Archive\0listFileObj\";N;s:23:\"\0DUP_Archive\0listDirObj\";N;}s:9:\"Installer\";r:86;s:8:\"Database\";r:105;s:13:\"BuildProgress\";r:144;}', 'yes'),
(751, '_site_transient_timeout_theme_roots', '1693414103', 'no'),
(752, '_site_transient_theme_roots', 'a:6:{s:4:\"auto\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(756, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:5:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.3.1.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.3.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.3.1\";s:7:\"version\";s:5:\"6.3.1\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.3.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.3.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.3.1\";s:7:\"version\";s:5:\"6.3.1\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.3.1.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.3.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.3.1\";s:7:\"version\";s:5:\"6.3.1\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.3.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.3.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.3\";s:7:\"version\";s:3:\"6.3\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.2.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.2.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.2.2\";s:7:\"version\";s:5:\"6.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1693412317;s:15:\"version_checked\";s:3:\"6.2\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-05-09 16:16:57\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(757, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1693412325;s:7:\"checked\";a:6:{s:4:\"auto\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"2.1\";s:12:\"twentytwenty\";s:3:\"1.8\";s:15:\"twentytwentyone\";s:3:\"1.4\";s:17:\"twentytwentythree\";s:3:\"1.0\";s:15:\"twentytwentytwo\";s:3:\"1.3\";}s:8:\"response\";a:5:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.5\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.5.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.2.2.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.8.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.2.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.4.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(758, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1693412325;s:8:\"response\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.2.0\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=2892919\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=2892919\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.3.1\";s:12:\"requires_php\";s:3:\"7.0\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:3:\"5.8\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-7.5.8.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.2\";s:6:\"tested\";s:5:\"6.3.1\";s:12:\"requires_php\";s:3:\"7.4\";}}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:10:\"duplicator\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:7:\"1.5.5.1\";s:7:\"updated\";s:19:\"2023-07-27 14:15:22\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/plugin/duplicator/1.5.5.1/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:1:{s:25:\"duplicator/duplicator.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:24:\"w.org/plugins/duplicator\";s:4:\"slug\";s:10:\"duplicator\";s:6:\"plugin\";s:25:\"duplicator/duplicator.php\";s:11:\"new_version\";s:7:\"1.5.5.1\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/duplicator/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/duplicator.1.5.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/duplicator/assets/icon-256x256.png?rev=2906985\";s:2:\"1x\";s:63:\"https://ps.w.org/duplicator/assets/icon-128x128.png?rev=2906985\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/duplicator/assets/banner-1544x500.png?rev=2906985\";s:2:\"1x\";s:65:\"https://ps.w.org/duplicator/assets/banner-772x250.png?rev=2906985\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";}}}', 'no'),
(759, '_site_transient_timeout_php_check_f9714bbe413cc376a70847d9c1f86fcc', '1694017126', 'no'),
(760, '_site_transient_php_check_f9714bbe413cc376a70847d9c1f86fcc', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(9, 7, '_edit_lock', '1691311161:1'),
(10, 7, '_wp_page_template', 'home.php'),
(20, 15, '_edit_lock', '1640933064:1'),
(23, 17, '_wp_attached_file', '2021/12/1.jpg'),
(24, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:380;s:6:\"height\";i:250;s:4:\"file\";s:13:\"2021/12/1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 18, '_wp_attached_file', '2021/12/2.jpg'),
(26, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:380;s:6:\"height\";i:249;s:4:\"file\";s:13:\"2021/12/2.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"2-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(27, 19, '_wp_attached_file', '2021/12/3.jpg'),
(28, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:380;s:6:\"height\";i:250;s:4:\"file\";s:13:\"2021/12/3.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(29, 20, '_wp_attached_file', '2021/12/car.png'),
(30, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:320;s:6:\"height\";i:606;s:4:\"file\";s:15:\"2021/12/car.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"car-158x300.png\";s:5:\"width\";i:158;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"car-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(31, 21, '_wp_attached_file', '2021/12/ford-mustang.png'),
(32, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:814;s:6:\"height\";i:462;s:4:\"file\";s:24:\"2021/12/ford-mustang.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"ford-mustang-300x170.png\";s:5:\"width\";i:300;s:6:\"height\";i:170;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"ford-mustang-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"ford-mustang-768x436.png\";s:5:\"width\";i:768;s:6:\"height\";i:436;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(33, 23, '_edit_lock', '1640933050:1'),
(36, 23, '_thumbnail_id', '18'),
(40, 26, '_edit_lock', '1640933038:1'),
(45, 26, '_thumbnail_id', '19'),
(49, 31, '_edit_lock', '1683221448:1'),
(52, 31, '_thumbnail_id', '17'),
(63, 15, '_thumbnail_id', '17'),
(64, 37, '_edit_lock', '1683221512:1'),
(67, 37, '_thumbnail_id', '18'),
(68, 39, '_form', '[text text-696 class:contacts__input placeholder \"Как Вас зовут?\"][tel* tel-508 class:contacts__input placeholder \"Ваш номер телефона\"][submit class:contacts__btn class:button \"Отправить заявку\"]'),
(69, 39, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:30:\"[_site_title] <wordpress@auto>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:187:\"От: [your-name] <[your-email]>\nТема: [your-subject]\n\nСообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(70, 39, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:30:\"[_site_title] <wordpress@auto>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:128:\"Сообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(71, 39, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:92:\"Спасибо за Ваше сообщение. Оно успешно отправлено.\";s:12:\"mail_sent_ng\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:16:\"validation_error\";s:180:\"Одно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\";s:4:\"spam\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:12:\"accept_terms\";s:132:\"Вы должны принять условия и положения перед отправкой вашего сообщения.\";s:16:\"invalid_required\";s:60:\"Поле обязательно для заполнения.\";s:16:\"invalid_too_long\";s:39:\"Поле слишком длинное.\";s:17:\"invalid_too_short\";s:41:\"Поле слишком короткое.\";s:13:\"upload_failed\";s:90:\"При загрузке файла произошла неизвестная ошибка.\";s:24:\"upload_file_type_invalid\";s:81:\"Вам не разрешено загружать файлы этого типа.\";s:21:\"upload_file_too_large\";s:39:\"Файл слишком большой.\";s:23:\"upload_failed_php_error\";s:67:\"При загрузке файла произошла ошибка.\";s:12:\"invalid_date\";s:45:\"Формат даты некорректен.\";s:14:\"date_too_early\";s:74:\"Введённая дата слишком далеко в прошлом.\";s:13:\"date_too_late\";s:74:\"Введённая дата слишком далеко в будущем.\";s:14:\"invalid_number\";s:47:\"Формат числа некорректен.\";s:16:\"number_too_small\";s:68:\"Число меньше минимально допустимого.\";s:16:\"number_too_large\";s:70:\"Число больше максимально допустимого.\";s:23:\"quiz_answer_not_correct\";s:69:\"Неверный ответ на проверочный вопрос.\";s:13:\"invalid_email\";s:62:\"Неверно введён электронный адрес.\";s:11:\"invalid_url\";s:53:\"Введён некорректный URL адрес.\";s:11:\"invalid_tel\";s:70:\"Введён некорректный телефонный номер.\";}'),
(72, 39, '_additional_settings', ''),
(73, 39, '_locale', 'ru_RU'),
(82, 39, '_config_errors', 'a:2:{s:11:\"mail.sender\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:125:\"Был использован некорректный синтаксис почтового адреса в поле %name%.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(83, 40, '_wp_attached_file', '2021/12/logo.svg'),
(86, 42, '_edit_last', '1'),
(87, 42, '_edit_lock', '1691312673:1'),
(88, 7, '_edit_last', '1'),
(89, 7, 'phone', '+** (***) *** ** **'),
(90, 7, '_phone', 'field_61b5a4775eec7'),
(91, 46, 'phone', '123456'),
(92, 46, '_phone', 'field_61b5a4775eec7'),
(93, 47, 'phone', '+38 (050) 555 66 77'),
(94, 47, '_phone', 'field_61b5a4775eec7'),
(95, 7, 'phum_number', '380505556677'),
(96, 7, '_phum_number', 'field_61b5a7300fccb'),
(97, 49, 'phone', '+38 (050) 555 66 77'),
(98, 49, '_phone', 'field_61b5a4775eec7'),
(99, 49, 'phum_number', '380505556677'),
(100, 49, '_phum_number', 'field_61b5a7300fccb'),
(101, 50, 'phone', '+38 (050) 555 66 77'),
(102, 50, '_phone', 'field_61b5a4775eec7'),
(103, 50, 'phum_number', '380505556677'),
(104, 50, '_phum_number', 'field_61b5a7300fccb'),
(105, 51, 'phone', '+38 (050) 555 66 77'),
(106, 51, '_phone', 'field_61b5a4775eec7'),
(107, 51, 'phum_number', '380505556677'),
(108, 51, '_phum_number', 'field_61b5a7300fccb'),
(109, 7, 'phome_number', '380505556677'),
(110, 7, '_phome_number', 'field_61b5a7300fccb'),
(111, 52, 'phone', '+38 (050) 555 66 77'),
(112, 52, '_phone', 'field_61b5a4775eec7'),
(113, 52, 'phum_number', '380505556677'),
(114, 52, '_phum_number', 'field_61b5a7300fccb'),
(115, 52, 'phome_number', '380505556677'),
(116, 52, '_phome_number', 'field_61b5a7300fccb'),
(117, 7, 'phone_number', '380505556677'),
(118, 7, '_phone_number', 'field_61b5a7300fccb'),
(119, 53, 'phone', '+38 (050) 555 66 77'),
(120, 53, '_phone', 'field_61b5a4775eec7'),
(121, 53, 'phum_number', '380505556677'),
(122, 53, '_phum_number', 'field_61b5a7300fccb'),
(123, 53, 'phome_number', '380505556677'),
(124, 53, '_phome_number', 'field_61b5a7300fccb'),
(125, 53, 'phone_number', '380505556677'),
(126, 53, '_phone_number', 'field_61b5a7300fccb'),
(127, 54, 'phone', '+38 (050) 555 66 77'),
(128, 54, '_phone', 'field_61b5a4775eec7'),
(129, 54, 'phum_number', '380505556677'),
(130, 54, '_phum_number', 'field_61b5a7300fccb'),
(131, 54, 'phome_number', '380505556677'),
(132, 54, '_phome_number', 'field_61b5a7300fccb'),
(133, 54, 'phone_number', '380505556677'),
(134, 54, '_phone_number', 'field_61b5a7300fccb'),
(135, 55, 'phone', '+38 (050) 555 66 77'),
(136, 55, '_phone', 'field_61b5a4775eec7'),
(137, 55, 'phum_number', '380505556677'),
(138, 55, '_phum_number', 'field_61b5a7300fccb'),
(139, 55, 'phome_number', '380505556677'),
(140, 55, '_phome_number', 'field_61b5a7300fccb'),
(141, 55, 'phone_number', '380505556677'),
(142, 55, '_phone_number', 'field_61b5a7300fccb'),
(143, 56, 'phone', '+38 (050) 555 66 77'),
(144, 56, '_phone', 'field_61b5a4775eec7'),
(145, 56, 'phum_number', '380505556677'),
(146, 56, '_phum_number', 'field_61b5a7300fccb'),
(147, 56, 'phome_number', '380505556677'),
(148, 56, '_phome_number', 'field_61b5a7300fccb'),
(149, 56, 'phone_number', '380505556677'),
(150, 56, '_phone_number', 'field_61b5a7300fccb'),
(151, 7, 'inst-link', 'https://www.youtube.com/watch?v=ApZV2z46nd4&t=6744s'),
(152, 7, '_inst-link', 'field_61b5aad55278a'),
(153, 56, 'inst-link', ''),
(154, 56, '_inst-link', 'field_61b5aad55278a'),
(155, 7, 'tele_link', '345'),
(156, 7, '_tele_link', 'field_61b5ab329a247'),
(157, 7, 'wot_link', '54'),
(158, 7, '_wot_link', 'field_61b5ab7f03439'),
(159, 7, 'face_link', '345'),
(160, 7, '_face_link', 'field_61b5aba6b9881'),
(161, 61, 'phone', '+38 (050) 555 66 77'),
(162, 61, '_phone', 'field_61b5a4775eec7'),
(163, 61, 'phum_number', '380505556677'),
(164, 61, '_phum_number', 'field_61b5a7300fccb'),
(165, 61, 'phome_number', '380505556677'),
(166, 61, '_phome_number', 'field_61b5a7300fccb'),
(167, 61, 'phone_number', '380505556677'),
(168, 61, '_phone_number', 'field_61b5a7300fccb'),
(169, 61, 'inst-link', '23'),
(170, 61, '_inst-link', 'field_61b5aad55278a'),
(171, 61, 'tele_link', '345'),
(172, 61, '_tele_link', 'field_61b5ab329a247'),
(173, 61, 'wot_link', '54'),
(174, 61, '_wot_link', 'field_61b5ab7f03439'),
(175, 61, 'face_link', '345'),
(176, 61, '_face_link', 'field_61b5aba6b9881'),
(177, 62, 'phone', '+38 (050) 555 66 77'),
(178, 62, '_phone', 'field_61b5a4775eec7'),
(179, 62, 'phum_number', '380505556677'),
(180, 62, '_phum_number', 'field_61b5a7300fccb'),
(181, 62, 'phome_number', '380505556677'),
(182, 62, '_phome_number', 'field_61b5a7300fccb'),
(183, 62, 'phone_number', '380505556677'),
(184, 62, '_phone_number', 'field_61b5a7300fccb'),
(185, 62, 'inst-link', 'https://www.youtube.com/watch?v=ApZV2z46nd4&t=6744s'),
(186, 62, '_inst-link', 'field_61b5aad55278a'),
(187, 62, 'tele_link', '345'),
(188, 62, '_tele_link', 'field_61b5ab329a247'),
(189, 62, 'wot_link', '54'),
(190, 62, '_wot_link', 'field_61b5ab7f03439'),
(191, 62, 'face_link', '345'),
(192, 62, '_face_link', 'field_61b5aba6b9881'),
(193, 7, 'adress', '***, ***\r\nул. *****, д.**'),
(194, 7, '_adress', 'field_61b5e7963d9cb'),
(195, 7, 'working_hours', 'Пн-Сб: с 9:00 до 18:00,Вс: \r\nвыходной'),
(196, 7, '_working_hours', 'field_61b5fea37074c'),
(197, 72, 'phone', '+38 (050) 555 66 77'),
(198, 72, '_phone', 'field_61b5a4775eec7'),
(199, 72, 'phum_number', '380505556677'),
(200, 72, '_phum_number', 'field_61b5a7300fccb'),
(201, 72, 'phome_number', '380505556677'),
(202, 72, '_phome_number', 'field_61b5a7300fccb'),
(203, 72, 'phone_number', '380505556677'),
(204, 72, '_phone_number', 'field_61b5a7300fccb'),
(205, 72, 'inst-link', 'https://www.youtube.com/watch?v=ApZV2z46nd4&t=6744s'),
(206, 72, '_inst-link', 'field_61b5aad55278a'),
(207, 72, 'tele_link', '345'),
(208, 72, '_tele_link', 'field_61b5ab329a247'),
(209, 72, 'wot_link', '54'),
(210, 72, '_wot_link', 'field_61b5ab7f03439'),
(211, 72, 'face_link', '345'),
(212, 72, '_face_link', 'field_61b5aba6b9881'),
(213, 72, 'adress', 'Киев, Подол\r\nул. Константиновская, д.71'),
(214, 72, '_adress', 'field_61b5e7963d9cb'),
(215, 72, 'working_hours', 'Пн-Сб: с 9:00 до 19:00,\r\nВс: выходной'),
(216, 72, '_working_hours', 'field_61b5e7fe3d9cc'),
(217, 73, 'phone', '+38 (050) 555 66 77'),
(218, 73, '_phone', 'field_61b5a4775eec7'),
(219, 73, 'phum_number', '380505556677'),
(220, 73, '_phum_number', 'field_61b5a7300fccb'),
(221, 73, 'phome_number', '380505556677'),
(222, 73, '_phome_number', 'field_61b5a7300fccb'),
(223, 73, 'phone_number', '380505556677'),
(224, 73, '_phone_number', 'field_61b5a7300fccb'),
(225, 73, 'inst-link', 'https://www.youtube.com/watch?v=ApZV2z46nd4&t=6744s'),
(226, 73, '_inst-link', 'field_61b5aad55278a'),
(227, 73, 'tele_link', '345'),
(228, 73, '_tele_link', 'field_61b5ab329a247'),
(229, 73, 'wot_link', '54'),
(230, 73, '_wot_link', 'field_61b5ab7f03439'),
(231, 73, 'face_link', '345'),
(232, 73, '_face_link', 'field_61b5aba6b9881'),
(233, 73, 'adress', 'Киев, Подол\r\nул. Константиновская, д.70'),
(234, 73, '_adress', 'field_61b5e7963d9cb'),
(235, 73, 'working_hours', 'Пн-Сб: с 9:00 до 18:00,\r\nВс: выходной'),
(236, 73, '_working_hours', 'field_61b5e7fe3d9cc'),
(237, 7, 'title', 'АВТО ИЗ Росии “ПОД КЛЮЧ”'),
(238, 7, '_title', 'field_61b5e9511290a'),
(239, 7, 'trigger', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 50%'),
(240, 7, '_trigger', 'field_61b5e9791290b'),
(241, 7, 'tekst', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору, покупка'),
(242, 7, '_tekst', 'field_61b5e99a1290c'),
(243, 77, 'phone', '+38 (050) 555 66 77'),
(244, 77, '_phone', 'field_61b5a4775eec7'),
(245, 77, 'phum_number', '380505556677'),
(246, 77, '_phum_number', 'field_61b5a7300fccb'),
(247, 77, 'phome_number', '380505556677'),
(248, 77, '_phome_number', 'field_61b5a7300fccb'),
(249, 77, 'phone_number', '380505556677'),
(250, 77, '_phone_number', 'field_61b5a7300fccb'),
(251, 77, 'inst-link', 'https://www.youtube.com/watch?v=ApZV2z46nd4&t=6744s'),
(252, 77, '_inst-link', 'field_61b5aad55278a'),
(253, 77, 'tele_link', '345'),
(254, 77, '_tele_link', 'field_61b5ab329a247'),
(255, 77, 'wot_link', '54'),
(256, 77, '_wot_link', 'field_61b5ab7f03439'),
(257, 77, 'face_link', '345'),
(258, 77, '_face_link', 'field_61b5aba6b9881'),
(259, 77, 'adress', 'Киев, Подол\r\nул. Константиновская, д.70'),
(260, 77, '_adress', 'field_61b5e7963d9cb'),
(261, 77, 'working_hours', 'Пн-Сб: с 9:00 до 18:00,\r\nВс: выходной'),
(262, 77, '_working_hours', 'field_61b5e7fe3d9cc'),
(263, 77, 'title', 'АВТО ИЗ США “ПОД КЛЮЧ”'),
(264, 77, '_title', 'field_61b5e9511290a'),
(265, 77, 'trigger', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 40%'),
(266, 77, '_trigger', 'field_61b5e9791290b'),
(267, 77, 'tekst', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору'),
(268, 77, '_tekst', 'field_61b5e99a1290c'),
(269, 78, 'phone', '+38 (050) 555 66 77'),
(270, 78, '_phone', 'field_61b5a4775eec7'),
(271, 78, 'phum_number', '380505556677'),
(272, 78, '_phum_number', 'field_61b5a7300fccb'),
(273, 78, 'phome_number', '380505556677'),
(274, 78, '_phome_number', 'field_61b5a7300fccb'),
(275, 78, 'phone_number', '380505556677'),
(276, 78, '_phone_number', 'field_61b5a7300fccb'),
(277, 78, 'inst-link', 'https://www.youtube.com/watch?v=ApZV2z46nd4&t=6744s'),
(278, 78, '_inst-link', 'field_61b5aad55278a'),
(279, 78, 'tele_link', '345'),
(280, 78, '_tele_link', 'field_61b5ab329a247'),
(281, 78, 'wot_link', '54'),
(282, 78, '_wot_link', 'field_61b5ab7f03439'),
(283, 78, 'face_link', '345'),
(284, 78, '_face_link', 'field_61b5aba6b9881'),
(285, 78, 'adress', 'Киев, Подол\r\nул. Константиновская, д.70'),
(286, 78, '_adress', 'field_61b5e7963d9cb'),
(287, 78, 'working_hours', 'Пн-Сб: с 9:00 до 18:00,\r\nВс: выходной'),
(288, 78, '_working_hours', 'field_61b5e7fe3d9cc'),
(289, 78, 'title', 'АВТО ИЗ Росии “ПОД КЛЮЧ”'),
(290, 78, '_title', 'field_61b5e9511290a'),
(291, 78, 'trigger', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 50%'),
(292, 78, '_trigger', 'field_61b5e9791290b'),
(293, 78, 'tekst', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору, покупка'),
(294, 78, '_tekst', 'field_61b5e99a1290c'),
(295, 7, 'top_imag', '21'),
(296, 7, '_top_imag', 'field_61b5eae989d56'),
(297, 80, 'phone', '+38 (050) 555 66 77'),
(298, 80, '_phone', 'field_61b5a4775eec7'),
(299, 80, 'phum_number', '380505556677'),
(300, 80, '_phum_number', 'field_61b5a7300fccb'),
(301, 80, 'phome_number', '380505556677'),
(302, 80, '_phome_number', 'field_61b5a7300fccb'),
(303, 80, 'phone_number', '380505556677'),
(304, 80, '_phone_number', 'field_61b5a7300fccb'),
(305, 80, 'inst-link', 'https://www.youtube.com/watch?v=ApZV2z46nd4&t=6744s'),
(306, 80, '_inst-link', 'field_61b5aad55278a'),
(307, 80, 'tele_link', '345'),
(308, 80, '_tele_link', 'field_61b5ab329a247'),
(309, 80, 'wot_link', '54'),
(310, 80, '_wot_link', 'field_61b5ab7f03439'),
(311, 80, 'face_link', '345'),
(312, 80, '_face_link', 'field_61b5aba6b9881'),
(313, 80, 'adress', 'Киев, Подол\r\nул. Константиновская, д.70'),
(314, 80, '_adress', 'field_61b5e7963d9cb'),
(315, 80, 'working_hours', 'Пн-Сб: с 9:00 до 18:00,\r\nВс: выходной'),
(316, 80, '_working_hours', 'field_61b5e7fe3d9cc'),
(317, 80, 'title', 'АВТО ИЗ Росии “ПОД КЛЮЧ”'),
(318, 80, '_title', 'field_61b5e9511290a'),
(319, 80, 'trigger', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 50%'),
(320, 80, '_trigger', 'field_61b5e9791290b'),
(321, 80, 'tekst', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору, покупка'),
(322, 80, '_tekst', 'field_61b5e99a1290c'),
(323, 80, 'top_imag', '21'),
(324, 80, '_top_imag', 'field_61b5eae989d56'),
(325, 81, 'phone', '+38 (050) 555 66 77'),
(326, 81, '_phone', 'field_61b5a4775eec7'),
(327, 81, 'phum_number', '380505556677'),
(328, 81, '_phum_number', 'field_61b5a7300fccb'),
(329, 81, 'phome_number', '380505556677'),
(330, 81, '_phome_number', 'field_61b5a7300fccb'),
(331, 81, 'phone_number', '380505556677'),
(332, 81, '_phone_number', 'field_61b5a7300fccb'),
(333, 81, 'inst-link', 'https://www.youtube.com/watch?v=ApZV2z46nd4&t=6744s'),
(334, 81, '_inst-link', 'field_61b5aad55278a'),
(335, 81, 'tele_link', '345'),
(336, 81, '_tele_link', 'field_61b5ab329a247'),
(337, 81, 'wot_link', '54'),
(338, 81, '_wot_link', 'field_61b5ab7f03439'),
(339, 81, 'face_link', '345'),
(340, 81, '_face_link', 'field_61b5aba6b9881'),
(341, 81, 'adress', 'Киев, Подол\r\nул. Константиновская, д.70'),
(342, 81, '_adress', 'field_61b5e7963d9cb'),
(343, 81, 'working_hours', 'Пн-Сб: с 9:00 до 18:00,\r\nВс: выходной'),
(344, 81, '_working_hours', 'field_61b5e7fe3d9cc'),
(345, 81, 'title', 'АВТО ИЗ Росии “ПОД КЛЮЧ”'),
(346, 81, '_title', 'field_61b5e9511290a'),
(347, 81, 'trigger', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 50%'),
(348, 81, '_trigger', 'field_61b5e9791290b'),
(349, 81, 'tekst', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору, покупка'),
(350, 81, '_tekst', 'field_61b5e99a1290c'),
(351, 81, 'top_imag', '21'),
(352, 81, '_top_imag', 'field_61b5eae989d56'),
(353, 7, 'text_uslug', '<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\"><em>Почему ввоз авто из США?</em></h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.</p>\r\n<p class=\"services__content-text\">Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Из-за чего такая низкая цена?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.</p>\r\n\r\n</div>\r\n</div>'),
(354, 7, '_text_uslug', 'field_61b5ee1240ee9'),
(355, 7, 'service_item', '<ol class=\"services__list\">\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1s\">\r\n<p class=\"services__item-title\">Покупка авто</p>\r\n<p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.2s\">\r\n<p class=\"services__item-title\">Доставка морем</p>\r\n<p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.4s\">\r\n<p class=\"services__item-title\">Растаможка авто</p>\r\n<p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.6s\">\r\n<p class=\"services__item-title\">Ремонт авто</p>\r\n<p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.8s\">\r\n<p class=\"services__item-title\">Сертификация</p>\r\n<p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Постановка на учет</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Вековое обслуживание</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n</ol>'),
(356, 7, '_service_item', 'field_61b5ee6640eea'),
(357, 84, 'phone', '+38 (050) 555 66 77'),
(358, 84, '_phone', 'field_61b5a4775eec7'),
(359, 84, 'phum_number', '380505556677'),
(360, 84, '_phum_number', 'field_61b5a7300fccb'),
(361, 84, 'phome_number', '380505556677'),
(362, 84, '_phome_number', 'field_61b5a7300fccb'),
(363, 84, 'phone_number', '380505556677'),
(364, 84, '_phone_number', 'field_61b5a7300fccb'),
(365, 84, 'inst-link', 'https://www.youtube.com/watch?v=ApZV2z46nd4&t=6744s'),
(366, 84, '_inst-link', 'field_61b5aad55278a'),
(367, 84, 'tele_link', '345'),
(368, 84, '_tele_link', 'field_61b5ab329a247'),
(369, 84, 'wot_link', '54'),
(370, 84, '_wot_link', 'field_61b5ab7f03439'),
(371, 84, 'face_link', '345'),
(372, 84, '_face_link', 'field_61b5aba6b9881'),
(373, 84, 'adress', 'Киев, Подол\r\nул. Константиновская, д.70'),
(374, 84, '_adress', 'field_61b5e7963d9cb'),
(375, 84, 'working_hours', 'Пн-Сб: с 9:00 до 18:00,\r\nВс: выходной'),
(376, 84, '_working_hours', 'field_61b5e7fe3d9cc'),
(377, 84, 'title', 'АВТО ИЗ Росии “ПОД КЛЮЧ”'),
(378, 84, '_title', 'field_61b5e9511290a'),
(379, 84, 'trigger', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 50%'),
(380, 84, '_trigger', 'field_61b5e9791290b'),
(381, 84, 'tekst', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору, покупка'),
(382, 84, '_tekst', 'field_61b5e99a1290c'),
(383, 84, 'top_imag', '21'),
(384, 84, '_top_imag', 'field_61b5eae989d56'),
(385, 84, 'text_uslug', '<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Почему ввоз авто из США?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.</p>\r\n<p class=\"services__content-text\">Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Из-за чего такая низкая цена?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.</p>\r\n\r\n</div>\r\n</div>'),
(386, 84, '_text_uslug', 'field_61b5ee1240ee9'),
(387, 84, 'service_item', '<ol class=\"services__list\">\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1s\">\r\n<p class=\"services__item-title\">Покупка авто</p>\r\n<p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.2s\">\r\n<p class=\"services__item-title\">Доставка морем</p>\r\n<p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.4s\">\r\n<p class=\"services__item-title\">Растаможка авто</p>\r\n<p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.6s\">\r\n<p class=\"services__item-title\">Ремонт авто</p>\r\n<p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.8s\">\r\n<p class=\"services__item-title\">Сертификация</p>\r\n<p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Постановка на учет</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n</ol>'),
(388, 84, '_service_item', 'field_61b5ee6640eea'),
(389, 85, 'phone', '+38 (050) 555 66 77'),
(390, 85, '_phone', 'field_61b5a4775eec7'),
(391, 85, 'phum_number', '380505556677'),
(392, 85, '_phum_number', 'field_61b5a7300fccb'),
(393, 85, 'phome_number', '380505556677'),
(394, 85, '_phome_number', 'field_61b5a7300fccb'),
(395, 85, 'phone_number', '380505556677'),
(396, 85, '_phone_number', 'field_61b5a7300fccb'),
(397, 85, 'inst-link', 'https://www.youtube.com/watch?v=ApZV2z46nd4&t=6744s'),
(398, 85, '_inst-link', 'field_61b5aad55278a'),
(399, 85, 'tele_link', '345'),
(400, 85, '_tele_link', 'field_61b5ab329a247'),
(401, 85, 'wot_link', '54'),
(402, 85, '_wot_link', 'field_61b5ab7f03439'),
(403, 85, 'face_link', '345'),
(404, 85, '_face_link', 'field_61b5aba6b9881'),
(405, 85, 'adress', 'Киев, Подол\r\nул. Константиновская, д.70'),
(406, 85, '_adress', 'field_61b5e7963d9cb'),
(407, 85, 'working_hours', 'Пн-Сб: с 9:00 до 18:00,\r\nВс: выходной'),
(408, 85, '_working_hours', 'field_61b5e7fe3d9cc'),
(409, 85, 'title', 'АВТО ИЗ Росии “ПОД КЛЮЧ”'),
(410, 85, '_title', 'field_61b5e9511290a'),
(411, 85, 'trigger', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 50%'),
(412, 85, '_trigger', 'field_61b5e9791290b'),
(413, 85, 'tekst', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору, покупка'),
(414, 85, '_tekst', 'field_61b5e99a1290c'),
(415, 85, 'top_imag', '21'),
(416, 85, '_top_imag', 'field_61b5eae989d56'),
(417, 85, 'text_uslug', '<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Почему ввоз авто из США?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.</p>\r\n<p class=\"services__content-text\">Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Из-за чего такая низкая цена?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.</p>\r\n\r\n</div>\r\n</div>'),
(418, 85, '_text_uslug', 'field_61b5ee1240ee9'),
(419, 85, 'service_item', '<ol class=\"services__list\">\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1s\">\r\n<p class=\"services__item-title\">Покупка авто</p>\r\n<p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.2s\">\r\n<p class=\"services__item-title\">Доставка морем</p>\r\n<p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.4s\">\r\n<p class=\"services__item-title\">Растаможка авто</p>\r\n<p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.6s\">\r\n<p class=\"services__item-title\">Ремонт авто</p>\r\n<p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.8s\">\r\n<p class=\"services__item-title\">Сертификация</p>\r\n<p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Постановка на учет</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n 	<li data-wow-delay=\"2s\">вековое обслуживание</li>\r\n</ol>'),
(420, 85, '_service_item', 'field_61b5ee6640eea'),
(421, 86, 'phone', '+38 (050) 555 66 77'),
(422, 86, '_phone', 'field_61b5a4775eec7'),
(423, 86, 'phum_number', '380505556677'),
(424, 86, '_phum_number', 'field_61b5a7300fccb'),
(425, 86, 'phome_number', '380505556677'),
(426, 86, '_phome_number', 'field_61b5a7300fccb'),
(427, 86, 'phone_number', '380505556677'),
(428, 86, '_phone_number', 'field_61b5a7300fccb'),
(429, 86, 'inst-link', 'https://www.youtube.com/watch?v=ApZV2z46nd4&t=6744s'),
(430, 86, '_inst-link', 'field_61b5aad55278a'),
(431, 86, 'tele_link', '345'),
(432, 86, '_tele_link', 'field_61b5ab329a247'),
(433, 86, 'wot_link', '54'),
(434, 86, '_wot_link', 'field_61b5ab7f03439'),
(435, 86, 'face_link', '345'),
(436, 86, '_face_link', 'field_61b5aba6b9881'),
(437, 86, 'adress', 'Киев, Подол\r\nул. Константиновская, д.70'),
(438, 86, '_adress', 'field_61b5e7963d9cb'),
(439, 86, 'working_hours', 'Пн-Сб: с 9:00 до 18:00,\r\nВс: выходной'),
(440, 86, '_working_hours', 'field_61b5e7fe3d9cc'),
(441, 86, 'title', 'АВТО ИЗ Росии “ПОД КЛЮЧ”'),
(442, 86, '_title', 'field_61b5e9511290a'),
(443, 86, 'trigger', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 50%'),
(444, 86, '_trigger', 'field_61b5e9791290b'),
(445, 86, 'tekst', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору, покупка'),
(446, 86, '_tekst', 'field_61b5e99a1290c'),
(447, 86, 'top_imag', '21'),
(448, 86, '_top_imag', 'field_61b5eae989d56'),
(449, 86, 'text_uslug', '<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Почему ввоз авто из США?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.</p>\r\n<p class=\"services__content-text\">Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Из-за чего такая низкая цена?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.</p>\r\n\r\n</div>\r\n</div>'),
(450, 86, '_text_uslug', 'field_61b5ee1240ee9'),
(451, 86, 'service_item', '<ol class=\"services__list\">\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1s\">\r\n<p class=\"services__item-title\">Покупка авто</p>\r\n<p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.2s\">\r\n<p class=\"services__item-title\">Доставка морем</p>\r\n<p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.4s\">\r\n<p class=\"services__item-title\">Растаможка авто</p>\r\n<p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.6s\">\r\n<p class=\"services__item-title\">Ремонт авто</p>\r\n<p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.8s\">\r\n<p class=\"services__item-title\">Сертификация</p>\r\n<p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Постановка на учет</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n 	<li data-wow-delay=\"2s\">Вековое обслуживание</li>\r\n</ol>'),
(452, 86, '_service_item', 'field_61b5ee6640eea'),
(453, 87, 'phone', '+38 (050) 555 66 77'),
(454, 87, '_phone', 'field_61b5a4775eec7'),
(455, 87, 'phum_number', '380505556677'),
(456, 87, '_phum_number', 'field_61b5a7300fccb'),
(457, 87, 'phome_number', '380505556677'),
(458, 87, '_phome_number', 'field_61b5a7300fccb'),
(459, 87, 'phone_number', '380505556677'),
(460, 87, '_phone_number', 'field_61b5a7300fccb'),
(461, 87, 'inst-link', 'https://www.youtube.com/watch?v=ApZV2z46nd4&t=6744s'),
(462, 87, '_inst-link', 'field_61b5aad55278a'),
(463, 87, 'tele_link', '345'),
(464, 87, '_tele_link', 'field_61b5ab329a247'),
(465, 87, 'wot_link', '54'),
(466, 87, '_wot_link', 'field_61b5ab7f03439'),
(467, 87, 'face_link', '345'),
(468, 87, '_face_link', 'field_61b5aba6b9881'),
(469, 87, 'adress', 'Киев, Подол\r\nул. Константиновская, д.70'),
(470, 87, '_adress', 'field_61b5e7963d9cb'),
(471, 87, 'working_hours', 'Пн-Сб: с 9:00 до 18:00,\r\nВс: выходной'),
(472, 87, '_working_hours', 'field_61b5e7fe3d9cc'),
(473, 87, 'title', 'АВТО ИЗ Росии “ПОД КЛЮЧ”'),
(474, 87, '_title', 'field_61b5e9511290a'),
(475, 87, 'trigger', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 50%'),
(476, 87, '_trigger', 'field_61b5e9791290b'),
(477, 87, 'tekst', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору, покупка'),
(478, 87, '_tekst', 'field_61b5e99a1290c'),
(479, 87, 'top_imag', '21'),
(480, 87, '_top_imag', 'field_61b5eae989d56'),
(481, 87, 'text_uslug', '<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Почему ввоз авто из США?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.</p>\r\n<p class=\"services__content-text\">Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Из-за чего такая низкая цена?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.</p>\r\n\r\n</div>\r\n</div>'),
(482, 87, '_text_uslug', 'field_61b5ee1240ee9'),
(483, 87, 'service_item', '<ol class=\"services__list\">\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1s\">\r\n<p class=\"services__item-title\">Покупка авто</p>\r\n<p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.2s\">\r\n<p class=\"services__item-title\">Доставка морем</p>\r\n<p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.4s\">\r\n<p class=\"services__item-title\">Растаможка авто</p>\r\n<p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.6s\">\r\n<p class=\"services__item-title\">Ремонт авто</p>\r\n<p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.8s\">\r\n<p class=\"services__item-title\">Сертификация</p>\r\n<p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Постановка на учет</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n 	<li>\r\n<p class=\"services__item-title\">Вековое обслуживание</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n</ol>'),
(484, 87, '_service_item', 'field_61b5ee6640eea'),
(485, 88, 'phone', '+38 (050) 555 66 77'),
(486, 88, '_phone', 'field_61b5a4775eec7'),
(487, 88, 'phum_number', '380505556677'),
(488, 88, '_phum_number', 'field_61b5a7300fccb'),
(489, 88, 'phome_number', '380505556677'),
(490, 88, '_phome_number', 'field_61b5a7300fccb'),
(491, 88, 'phone_number', '380505556677'),
(492, 88, '_phone_number', 'field_61b5a7300fccb'),
(493, 88, 'inst-link', 'https://www.youtube.com/watch?v=ApZV2z46nd4&t=6744s'),
(494, 88, '_inst-link', 'field_61b5aad55278a'),
(495, 88, 'tele_link', '345'),
(496, 88, '_tele_link', 'field_61b5ab329a247'),
(497, 88, 'wot_link', '54'),
(498, 88, '_wot_link', 'field_61b5ab7f03439'),
(499, 88, 'face_link', '345'),
(500, 88, '_face_link', 'field_61b5aba6b9881'),
(501, 88, 'adress', 'Киев, Подол\r\nул. Константиновская, д.70'),
(502, 88, '_adress', 'field_61b5e7963d9cb'),
(503, 88, 'working_hours', 'Пн-Сб: с 9:00 до 18:00,\r\nВс: выходной'),
(504, 88, '_working_hours', 'field_61b5e7fe3d9cc'),
(505, 88, 'title', 'АВТО ИЗ Росии “ПОД КЛЮЧ”'),
(506, 88, '_title', 'field_61b5e9511290a'),
(507, 88, 'trigger', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 50%'),
(508, 88, '_trigger', 'field_61b5e9791290b'),
(509, 88, 'tekst', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору, покупка'),
(510, 88, '_tekst', 'field_61b5e99a1290c'),
(511, 88, 'top_imag', '21'),
(512, 88, '_top_imag', 'field_61b5eae989d56'),
(513, 88, 'text_uslug', '<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Почему ввоз авто из США?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.</p>\r\n<p class=\"services__content-text\">Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Из-за чего такая низкая цена?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.</p>\r\n\r\n</div>\r\n</div>'),
(514, 88, '_text_uslug', 'field_61b5ee1240ee9'),
(515, 88, 'service_item', '<ol class=\"services__list\">\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1s\">\r\n<p class=\"services__item-title\">Покупка авто</p>\r\n<p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.2s\">\r\n<p class=\"services__item-title\">Доставка морем</p>\r\n<p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.4s\">\r\n<p class=\"services__item-title\">Растаможка авто</p>\r\n<p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.6s\">\r\n<p class=\"services__item-title\">Ремонт авто</p>\r\n<p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.8s\">\r\n<p class=\"services__item-title\">Сертификация</p>\r\n<p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Постановка на учет</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Вековое обслуживание</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n</ol>'),
(516, 88, '_service_item', 'field_61b5ee6640eea'),
(517, 7, 'bonefis_img', '21'),
(518, 7, '_bonefis_img', 'field_61b5f4ac2647a'),
(519, 7, 'why_img', '20'),
(520, 7, '_why_img', 'field_61b5e7fe3d9cc'),
(521, 7, 'test_prim', '<ul class=\"benefits__list\">\r\n 	<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">650</p>\r\n<p class=\"benefits__item-title\">успешно доставленных авто</p>\r\n<p class=\"benefits__item-text\">большой опыт пригона автомобилей из США под ключ, все клиенты остались довольны на 100%</p>\r\n</li>\r\n 	<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">10</p>\r\n<p class=\"benefits__item-title\">лет на рынке Украины</p>\r\n<p class=\"benefits__item-text\">Работаем по всей территории Украины, работаем по договору с клиентами</p>\r\n</li>\r\n 	<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">100%</p>\r\n<p class=\"benefits__item-title\">доверия клиентов</p>\r\n<p class=\"benefits__item-text\">Онлайн отчетность. Вы всегда в курсе статуса подбора вашего авто. Фото и видео отчет</p>\r\n</li>\r\n</ul>'),
(522, 7, '_test_prim', 'field_61b5f52875349'),
(523, 91, 'phone', '+38 (050) 555 66 77'),
(524, 91, '_phone', 'field_61b5a4775eec7'),
(525, 91, 'phum_number', '380505556677'),
(526, 91, '_phum_number', 'field_61b5a7300fccb'),
(527, 91, 'phome_number', '380505556677'),
(528, 91, '_phome_number', 'field_61b5a7300fccb'),
(529, 91, 'phone_number', '380505556677'),
(530, 91, '_phone_number', 'field_61b5a7300fccb'),
(531, 91, 'inst-link', 'https://www.youtube.com/watch?v=ApZV2z46nd4&t=6744s'),
(532, 91, '_inst-link', 'field_61b5aad55278a'),
(533, 91, 'tele_link', '345'),
(534, 91, '_tele_link', 'field_61b5ab329a247'),
(535, 91, 'wot_link', '54'),
(536, 91, '_wot_link', 'field_61b5ab7f03439'),
(537, 91, 'face_link', '345'),
(538, 91, '_face_link', 'field_61b5aba6b9881'),
(539, 91, 'adress', 'Киев, Подол\r\nул. Константиновская, д.70'),
(540, 91, '_adress', 'field_61b5e7963d9cb'),
(541, 91, 'working_hours', 'Пн-Сб: с 9:00 до 18:00,\r\nВс: выходной'),
(542, 91, '_working_hours', 'field_61b5e7fe3d9cc'),
(543, 91, 'title', 'АВТО ИЗ Росии “ПОД КЛЮЧ”'),
(544, 91, '_title', 'field_61b5e9511290a'),
(545, 91, 'trigger', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 50%'),
(546, 91, '_trigger', 'field_61b5e9791290b'),
(547, 91, 'tekst', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору, покупка'),
(548, 91, '_tekst', 'field_61b5e99a1290c'),
(549, 91, 'top_imag', '21'),
(550, 91, '_top_imag', 'field_61b5eae989d56'),
(551, 91, 'text_uslug', '<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Почему ввоз авто из США?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.</p>\r\n<p class=\"services__content-text\">Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Из-за чего такая низкая цена?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.</p>\r\n\r\n</div>\r\n</div>'),
(552, 91, '_text_uslug', 'field_61b5ee1240ee9');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(553, 91, 'service_item', '<ol class=\"services__list\">\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1s\">\r\n<p class=\"services__item-title\">Покупка авто</p>\r\n<p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.2s\">\r\n<p class=\"services__item-title\">Доставка морем</p>\r\n<p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.4s\">\r\n<p class=\"services__item-title\">Растаможка авто</p>\r\n<p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.6s\">\r\n<p class=\"services__item-title\">Ремонт авто</p>\r\n<p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.8s\">\r\n<p class=\"services__item-title\">Сертификация</p>\r\n<p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Постановка на учет</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Вековое обслуживание</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n</ol>'),
(554, 91, '_service_item', 'field_61b5ee6640eea'),
(555, 91, 'bonefis_img', ''),
(556, 91, '_bonefis_img', 'field_61b5f4ac2647a'),
(557, 91, 'why_img', '20'),
(558, 91, '_why_img', 'field_61b5e7fe3d9cc'),
(559, 91, 'test_prim', ''),
(560, 91, '_test_prim', 'field_61b5f52875349'),
(561, 92, 'phone', '+38 (050) 555 66 77'),
(562, 92, '_phone', 'field_61b5a4775eec7'),
(563, 92, 'phum_number', '380505556677'),
(564, 92, '_phum_number', 'field_61b5a7300fccb'),
(565, 92, 'phome_number', '380505556677'),
(566, 92, '_phome_number', 'field_61b5a7300fccb'),
(567, 92, 'phone_number', '380505556677'),
(568, 92, '_phone_number', 'field_61b5a7300fccb'),
(569, 92, 'inst-link', 'https://www.youtube.com/watch?v=ApZV2z46nd4&t=6744s'),
(570, 92, '_inst-link', 'field_61b5aad55278a'),
(571, 92, 'tele_link', '345'),
(572, 92, '_tele_link', 'field_61b5ab329a247'),
(573, 92, 'wot_link', '54'),
(574, 92, '_wot_link', 'field_61b5ab7f03439'),
(575, 92, 'face_link', '345'),
(576, 92, '_face_link', 'field_61b5aba6b9881'),
(577, 92, 'adress', 'Киев, Подол\r\nул. Константиновская, д.70'),
(578, 92, '_adress', 'field_61b5e7963d9cb'),
(579, 92, 'working_hours', 'Пн-Сб: с 9:00 до 18:00,\r\nВс: выходной'),
(580, 92, '_working_hours', 'field_61b5e7fe3d9cc'),
(581, 92, 'title', 'АВТО ИЗ Росии “ПОД КЛЮЧ”'),
(582, 92, '_title', 'field_61b5e9511290a'),
(583, 92, 'trigger', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 50%'),
(584, 92, '_trigger', 'field_61b5e9791290b'),
(585, 92, 'tekst', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору, покупка'),
(586, 92, '_tekst', 'field_61b5e99a1290c'),
(587, 92, 'top_imag', '21'),
(588, 92, '_top_imag', 'field_61b5eae989d56'),
(589, 92, 'text_uslug', '<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Почему ввоз авто из США?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.</p>\r\n<p class=\"services__content-text\">Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Из-за чего такая низкая цена?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.</p>\r\n\r\n</div>\r\n</div>'),
(590, 92, '_text_uslug', 'field_61b5ee1240ee9'),
(591, 92, 'service_item', '<ol class=\"services__list\">\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1s\">\r\n<p class=\"services__item-title\">Покупка авто</p>\r\n<p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.2s\">\r\n<p class=\"services__item-title\">Доставка морем</p>\r\n<p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.4s\">\r\n<p class=\"services__item-title\">Растаможка авто</p>\r\n<p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.6s\">\r\n<p class=\"services__item-title\">Ремонт авто</p>\r\n<p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.8s\">\r\n<p class=\"services__item-title\">Сертификация</p>\r\n<p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Постановка на учет</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Вековое обслуживание</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n</ol>'),
(592, 92, '_service_item', 'field_61b5ee6640eea'),
(593, 92, 'bonefis_img', ''),
(594, 92, '_bonefis_img', 'field_61b5f4ac2647a'),
(595, 92, 'why_img', '20'),
(596, 92, '_why_img', 'field_61b5e7fe3d9cc'),
(597, 92, 'test_prim', ''),
(598, 92, '_test_prim', 'field_61b5f52875349'),
(599, 93, 'phone', '+38 (050) 555 66 77'),
(600, 93, '_phone', 'field_61b5a4775eec7'),
(601, 93, 'phum_number', '380505556677'),
(602, 93, '_phum_number', 'field_61b5a7300fccb'),
(603, 93, 'phome_number', '380505556677'),
(604, 93, '_phome_number', 'field_61b5a7300fccb'),
(605, 93, 'phone_number', '380505556677'),
(606, 93, '_phone_number', 'field_61b5a7300fccb'),
(607, 93, 'inst-link', 'https://www.youtube.com/watch?v=ApZV2z46nd4&t=6744s'),
(608, 93, '_inst-link', 'field_61b5aad55278a'),
(609, 93, 'tele_link', '345'),
(610, 93, '_tele_link', 'field_61b5ab329a247'),
(611, 93, 'wot_link', '54'),
(612, 93, '_wot_link', 'field_61b5ab7f03439'),
(613, 93, 'face_link', '345'),
(614, 93, '_face_link', 'field_61b5aba6b9881'),
(615, 93, 'adress', 'Киев, Подол\r\nул. Константиновская, д.70'),
(616, 93, '_adress', 'field_61b5e7963d9cb'),
(617, 93, 'working_hours', 'Пн-Сб: с 9:00 до 18:00,\r\nВс: выходной'),
(618, 93, '_working_hours', 'field_61b5e7fe3d9cc'),
(619, 93, 'title', 'АВТО ИЗ Росии “ПОД КЛЮЧ”'),
(620, 93, '_title', 'field_61b5e9511290a'),
(621, 93, 'trigger', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 50%'),
(622, 93, '_trigger', 'field_61b5e9791290b'),
(623, 93, 'tekst', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору, покупка'),
(624, 93, '_tekst', 'field_61b5e99a1290c'),
(625, 93, 'top_imag', '21'),
(626, 93, '_top_imag', 'field_61b5eae989d56'),
(627, 93, 'text_uslug', '<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Почему ввоз авто из США?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.</p>\r\n<p class=\"services__content-text\">Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Из-за чего такая низкая цена?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.</p>\r\n\r\n</div>\r\n</div>'),
(628, 93, '_text_uslug', 'field_61b5ee1240ee9'),
(629, 93, 'service_item', '<ol class=\"services__list\">\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1s\">\r\n<p class=\"services__item-title\">Покупка авто</p>\r\n<p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.2s\">\r\n<p class=\"services__item-title\">Доставка морем</p>\r\n<p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.4s\">\r\n<p class=\"services__item-title\">Растаможка авто</p>\r\n<p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.6s\">\r\n<p class=\"services__item-title\">Ремонт авто</p>\r\n<p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.8s\">\r\n<p class=\"services__item-title\">Сертификация</p>\r\n<p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Постановка на учет</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Вековое обслуживание</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n</ol>'),
(630, 93, '_service_item', 'field_61b5ee6640eea'),
(631, 93, 'bonefis_img', ''),
(632, 93, '_bonefis_img', 'field_61b5f4ac2647a'),
(633, 93, 'why_img', '20'),
(634, 93, '_why_img', 'field_61b5e7fe3d9cc'),
(635, 93, 'test_prim', '<ul class=\"benefits__list\">\r\n 	<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">650</p>\r\n<p class=\"benefits__item-title\">успешно доставленных авто</p>\r\n<p class=\"benefits__item-text\">большой опыт пригона автомобилей из США под ключ, все клиенты остались довольны на 100%</p>\r\n</li>\r\n 	<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">5</p>\r\n<p class=\"benefits__item-title\">лет на рынке Украины</p>\r\n<p class=\"benefits__item-text\">Работаем по всей территории Украины, работаем по договору с клиентами</p>\r\n</li>\r\n 	<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">100%</p>\r\n<p class=\"benefits__item-title\">доверия клиентов</p>\r\n<p class=\"benefits__item-text\">Онлайн отчетность. Вы всегда в курсе статуса подбора вашего авто. Фото и видео отчет</p>\r\n</li>\r\n</ul>'),
(636, 93, '_test_prim', 'field_61b5f52875349'),
(637, 94, 'phone', '+38 (050) 555 66 77'),
(638, 94, '_phone', 'field_61b5a4775eec7'),
(639, 94, 'phum_number', '380505556677'),
(640, 94, '_phum_number', 'field_61b5a7300fccb'),
(641, 94, 'phome_number', '380505556677'),
(642, 94, '_phome_number', 'field_61b5a7300fccb'),
(643, 94, 'phone_number', '380505556677'),
(644, 94, '_phone_number', 'field_61b5a7300fccb'),
(645, 94, 'inst-link', 'https://www.youtube.com/watch?v=ApZV2z46nd4&t=6744s'),
(646, 94, '_inst-link', 'field_61b5aad55278a'),
(647, 94, 'tele_link', '345'),
(648, 94, '_tele_link', 'field_61b5ab329a247'),
(649, 94, 'wot_link', '54'),
(650, 94, '_wot_link', 'field_61b5ab7f03439'),
(651, 94, 'face_link', '345'),
(652, 94, '_face_link', 'field_61b5aba6b9881'),
(653, 94, 'adress', 'Киев, Подол\r\nул. Константиновская, д.70'),
(654, 94, '_adress', 'field_61b5e7963d9cb'),
(655, 94, 'working_hours', 'Пн-Сб: с 9:00 до 18:00,Вс: выходной'),
(656, 94, '_working_hours', 'field_61b5fea37074c'),
(657, 94, 'title', 'АВТО ИЗ Росии “ПОД КЛЮЧ”'),
(658, 94, '_title', 'field_61b5e9511290a'),
(659, 94, 'trigger', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 50%'),
(660, 94, '_trigger', 'field_61b5e9791290b'),
(661, 94, 'tekst', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору, покупка'),
(662, 94, '_tekst', 'field_61b5e99a1290c'),
(663, 94, 'top_imag', '21'),
(664, 94, '_top_imag', 'field_61b5eae989d56'),
(665, 94, 'text_uslug', '<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Почему ввоз авто из США?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.</p>\r\n<p class=\"services__content-text\">Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Из-за чего такая низкая цена?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.</p>\r\n\r\n</div>\r\n</div>'),
(666, 94, '_text_uslug', 'field_61b5ee1240ee9'),
(667, 94, 'service_item', '<ol class=\"services__list\">\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1s\">\r\n<p class=\"services__item-title\">Покупка авто</p>\r\n<p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.2s\">\r\n<p class=\"services__item-title\">Доставка морем</p>\r\n<p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.4s\">\r\n<p class=\"services__item-title\">Растаможка авто</p>\r\n<p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.6s\">\r\n<p class=\"services__item-title\">Ремонт авто</p>\r\n<p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.8s\">\r\n<p class=\"services__item-title\">Сертификация</p>\r\n<p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Постановка на учет</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Вековое обслуживание</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n</ol>'),
(668, 94, '_service_item', 'field_61b5ee6640eea'),
(669, 94, 'bonefis_img', ''),
(670, 94, '_bonefis_img', 'field_61b5f4ac2647a'),
(671, 94, 'why_img', '20'),
(672, 94, '_why_img', 'field_61b5e7fe3d9cc'),
(673, 94, 'test_prim', '<ul class=\"benefits__list\">\r\n 	<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">650</p>\r\n<p class=\"benefits__item-title\">успешно доставленных авто</p>\r\n<p class=\"benefits__item-text\">большой опыт пригона автомобилей из США под ключ, все клиенты остались довольны на 100%</p>\r\n</li>\r\n 	<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">10</p>\r\n<p class=\"benefits__item-title\">лет на рынке Украины</p>\r\n<p class=\"benefits__item-text\">Работаем по всей территории Украины, работаем по договору с клиентами</p>\r\n</li>\r\n 	<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">100%</p>\r\n<p class=\"benefits__item-title\">доверия клиентов</p>\r\n<p class=\"benefits__item-text\">Онлайн отчетность. Вы всегда в курсе статуса подбора вашего авто. Фото и видео отчет</p>\r\n</li>\r\n</ul>'),
(674, 94, '_test_prim', 'field_61b5f52875349'),
(682, 99, 'phone', '+38 (050) 555 66 77'),
(683, 99, '_phone', 'field_61b5a4775eec7'),
(684, 99, 'phum_number', '380505556677'),
(685, 99, '_phum_number', 'field_61b5a7300fccb'),
(686, 99, 'phome_number', '380505556677'),
(687, 99, '_phome_number', 'field_61b5a7300fccb'),
(688, 99, 'phone_number', '380505556677'),
(689, 99, '_phone_number', 'field_61b5a7300fccb'),
(690, 99, 'inst-link', 'https://www.youtube.com/watch?v=ApZV2z46nd4&t=6744s'),
(691, 99, '_inst-link', 'field_61b5aad55278a'),
(692, 99, 'tele_link', '345'),
(693, 99, '_tele_link', 'field_61b5ab329a247'),
(694, 99, 'wot_link', '54'),
(695, 99, '_wot_link', 'field_61b5ab7f03439'),
(696, 99, 'face_link', '345'),
(697, 99, '_face_link', 'field_61b5aba6b9881'),
(698, 99, 'adress', 'Киев, Подол\r\nул. Константиновская, д.70'),
(699, 99, '_adress', 'field_61b5e7963d9cb'),
(700, 99, 'working_hours', 'Пн-Сб: с 9:00 до 18:00,Вс: \r\nвыходной'),
(701, 99, '_working_hours', 'field_61b5fea37074c'),
(702, 99, 'title', 'АВТО ИЗ Росии “ПОД КЛЮЧ”'),
(703, 99, '_title', 'field_61b5e9511290a'),
(704, 99, 'trigger', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 50%'),
(705, 99, '_trigger', 'field_61b5e9791290b'),
(706, 99, 'tekst', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору, покупка'),
(707, 99, '_tekst', 'field_61b5e99a1290c'),
(708, 99, 'top_imag', '21'),
(709, 99, '_top_imag', 'field_61b5eae989d56'),
(710, 99, 'text_uslug', '<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Почему ввоз авто из США?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.</p>\r\n<p class=\"services__content-text\">Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Из-за чего такая низкая цена?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.</p>\r\n\r\n</div>\r\n</div>'),
(711, 99, '_text_uslug', 'field_61b5ee1240ee9'),
(712, 99, 'service_item', '<ol class=\"services__list\">\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1s\">\r\n<p class=\"services__item-title\">Покупка авто</p>\r\n<p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.2s\">\r\n<p class=\"services__item-title\">Доставка морем</p>\r\n<p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.4s\">\r\n<p class=\"services__item-title\">Растаможка авто</p>\r\n<p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.6s\">\r\n<p class=\"services__item-title\">Ремонт авто</p>\r\n<p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.8s\">\r\n<p class=\"services__item-title\">Сертификация</p>\r\n<p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Постановка на учет</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Вековое обслуживание</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n</ol>'),
(713, 99, '_service_item', 'field_61b5ee6640eea'),
(714, 99, 'bonefis_img', ''),
(715, 99, '_bonefis_img', 'field_61b5f4ac2647a'),
(716, 99, 'why_img', '20'),
(717, 99, '_why_img', 'field_61b5e7fe3d9cc'),
(718, 99, 'test_prim', '<ul class=\"benefits__list\">\r\n 	<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">650</p>\r\n<p class=\"benefits__item-title\">успешно доставленных авто</p>\r\n<p class=\"benefits__item-text\">большой опыт пригона автомобилей из США под ключ, все клиенты остались довольны на 100%</p>\r\n</li>\r\n 	<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">10</p>\r\n<p class=\"benefits__item-title\">лет на рынке Украины</p>\r\n<p class=\"benefits__item-text\">Работаем по всей территории Украины, работаем по договору с клиентами</p>\r\n</li>\r\n 	<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">100%</p>\r\n<p class=\"benefits__item-title\">доверия клиентов</p>\r\n<p class=\"benefits__item-text\">Онлайн отчетность. Вы всегда в курсе статуса подбора вашего авто. Фото и видео отчет</p>\r\n</li>\r\n</ul>'),
(719, 99, '_test_prim', 'field_61b5f52875349'),
(720, 100, '_edit_lock', '1683187532:1'),
(725, 103, '_wp_attached_file', '2021/12/sprite.svg'),
(726, 104, '_wp_attached_file', '2021/12/facebook.svg'),
(727, 106, '_wp_attached_file', '2021/12/instagram.svg'),
(728, 7, 'фото_инсты', '106'),
(729, 7, '_фото_инсты', 'field_61b99fc4b6291'),
(730, 107, 'phone', '+38 (050) 555 66 77'),
(731, 107, '_phone', 'field_61b5a4775eec7'),
(732, 107, 'phum_number', '380505556677'),
(733, 107, '_phum_number', 'field_61b5a7300fccb'),
(734, 107, 'phome_number', '380505556677'),
(735, 107, '_phome_number', 'field_61b5a7300fccb'),
(736, 107, 'phone_number', '380505556677'),
(737, 107, '_phone_number', 'field_61b5a7300fccb'),
(738, 107, 'inst-link', 'https://www.youtube.com/watch?v=ApZV2z46nd4&t=6744s'),
(739, 107, '_inst-link', 'field_61b5aad55278a'),
(740, 107, 'tele_link', '345'),
(741, 107, '_tele_link', 'field_61b5ab329a247'),
(742, 107, 'wot_link', '54'),
(743, 107, '_wot_link', 'field_61b5ab7f03439'),
(744, 107, 'face_link', '345'),
(745, 107, '_face_link', 'field_61b5aba6b9881'),
(746, 107, 'adress', 'Киев, Подол\r\nул. Константиновская, д.70'),
(747, 107, '_adress', 'field_61b5e7963d9cb'),
(748, 107, 'working_hours', 'Пн-Сб: с 9:00 до 18:00,Вс: \r\nвыходной'),
(749, 107, '_working_hours', 'field_61b5fea37074c'),
(750, 107, 'title', 'АВТО ИЗ Росии “ПОД КЛЮЧ”'),
(751, 107, '_title', 'field_61b5e9511290a'),
(752, 107, 'trigger', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 50%'),
(753, 107, '_trigger', 'field_61b5e9791290b'),
(754, 107, 'tekst', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору, покупка'),
(755, 107, '_tekst', 'field_61b5e99a1290c'),
(756, 107, 'top_imag', '21'),
(757, 107, '_top_imag', 'field_61b5eae989d56'),
(758, 107, 'text_uslug', '<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Почему ввоз авто из США?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.</p>\r\n<p class=\"services__content-text\">Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Из-за чего такая низкая цена?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.</p>\r\n\r\n</div>\r\n</div>'),
(759, 107, '_text_uslug', 'field_61b5ee1240ee9'),
(760, 107, 'service_item', '<ol class=\"services__list\">\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1s\">\r\n<p class=\"services__item-title\">Покупка авто</p>\r\n<p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.2s\">\r\n<p class=\"services__item-title\">Доставка морем</p>\r\n<p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.4s\">\r\n<p class=\"services__item-title\">Растаможка авто</p>\r\n<p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.6s\">\r\n<p class=\"services__item-title\">Ремонт авто</p>\r\n<p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.8s\">\r\n<p class=\"services__item-title\">Сертификация</p>\r\n<p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Постановка на учет</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Вековое обслуживание</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n</ol>'),
(761, 107, '_service_item', 'field_61b5ee6640eea'),
(762, 107, 'bonefis_img', ''),
(763, 107, '_bonefis_img', 'field_61b5f4ac2647a'),
(764, 107, 'why_img', '20'),
(765, 107, '_why_img', 'field_61b5e7fe3d9cc'),
(766, 107, 'test_prim', '<ul class=\"benefits__list\">\r\n 	<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">650</p>\r\n<p class=\"benefits__item-title\">успешно доставленных авто</p>\r\n<p class=\"benefits__item-text\">большой опыт пригона автомобилей из США под ключ, все клиенты остались довольны на 100%</p>\r\n</li>\r\n 	<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">10</p>\r\n<p class=\"benefits__item-title\">лет на рынке Украины</p>\r\n<p class=\"benefits__item-text\">Работаем по всей территории Украины, работаем по договору с клиентами</p>\r\n</li>\r\n 	<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">100%</p>\r\n<p class=\"benefits__item-title\">доверия клиентов</p>\r\n<p class=\"benefits__item-text\">Онлайн отчетность. Вы всегда в курсе статуса подбора вашего авто. Фото и видео отчет</p>\r\n</li>\r\n</ul>'),
(767, 107, '_test_prim', 'field_61b5f52875349'),
(768, 107, 'фото_инсты', '106'),
(769, 107, '_фото_инсты', 'field_61b99fc4b6291'),
(770, 7, 'foto_inst', '106'),
(771, 7, '_foto_inst', 'field_61b99fc4b6291'),
(772, 108, 'phone', '+38 (050) 555 66 77'),
(773, 108, '_phone', 'field_61b5a4775eec7'),
(774, 108, 'phum_number', '380505556677'),
(775, 108, '_phum_number', 'field_61b5a7300fccb'),
(776, 108, 'phome_number', '380505556677'),
(777, 108, '_phome_number', 'field_61b5a7300fccb'),
(778, 108, 'phone_number', '380505556677'),
(779, 108, '_phone_number', 'field_61b5a7300fccb'),
(780, 108, 'inst-link', 'https://www.youtube.com/watch?v=ApZV2z46nd4&t=6744s'),
(781, 108, '_inst-link', 'field_61b5aad55278a'),
(782, 108, 'tele_link', '345'),
(783, 108, '_tele_link', 'field_61b5ab329a247'),
(784, 108, 'wot_link', '54'),
(785, 108, '_wot_link', 'field_61b5ab7f03439'),
(786, 108, 'face_link', '345'),
(787, 108, '_face_link', 'field_61b5aba6b9881'),
(788, 108, 'adress', 'Киев, Подол\r\nул. Константиновская, д.70'),
(789, 108, '_adress', 'field_61b5e7963d9cb'),
(790, 108, 'working_hours', 'Пн-Сб: с 9:00 до 18:00,Вс: \r\nвыходной'),
(791, 108, '_working_hours', 'field_61b5fea37074c'),
(792, 108, 'title', 'АВТО ИЗ Росии “ПОД КЛЮЧ”'),
(793, 108, '_title', 'field_61b5e9511290a'),
(794, 108, 'trigger', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 50%'),
(795, 108, '_trigger', 'field_61b5e9791290b'),
(796, 108, 'tekst', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору, покупка'),
(797, 108, '_tekst', 'field_61b5e99a1290c'),
(798, 108, 'top_imag', '21'),
(799, 108, '_top_imag', 'field_61b5eae989d56'),
(800, 108, 'text_uslug', '<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Почему ввоз авто из США?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.</p>\r\n<p class=\"services__content-text\">Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Из-за чего такая низкая цена?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.</p>\r\n\r\n</div>\r\n</div>'),
(801, 108, '_text_uslug', 'field_61b5ee1240ee9'),
(802, 108, 'service_item', '<ol class=\"services__list\">\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1s\">\r\n<p class=\"services__item-title\">Покупка авто</p>\r\n<p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.2s\">\r\n<p class=\"services__item-title\">Доставка морем</p>\r\n<p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.4s\">\r\n<p class=\"services__item-title\">Растаможка авто</p>\r\n<p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.6s\">\r\n<p class=\"services__item-title\">Ремонт авто</p>\r\n<p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.8s\">\r\n<p class=\"services__item-title\">Сертификация</p>\r\n<p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Постановка на учет</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Вековое обслуживание</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n</ol>'),
(803, 108, '_service_item', 'field_61b5ee6640eea'),
(804, 108, 'bonefis_img', ''),
(805, 108, '_bonefis_img', 'field_61b5f4ac2647a'),
(806, 108, 'why_img', '20'),
(807, 108, '_why_img', 'field_61b5e7fe3d9cc'),
(808, 108, 'test_prim', '<ul class=\"benefits__list\">\r\n 	<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">650</p>\r\n<p class=\"benefits__item-title\">успешно доставленных авто</p>\r\n<p class=\"benefits__item-text\">большой опыт пригона автомобилей из США под ключ, все клиенты остались довольны на 100%</p>\r\n</li>\r\n 	<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">10</p>\r\n<p class=\"benefits__item-title\">лет на рынке Украины</p>\r\n<p class=\"benefits__item-text\">Работаем по всей территории Украины, работаем по договору с клиентами</p>\r\n</li>\r\n 	<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">100%</p>\r\n<p class=\"benefits__item-title\">доверия клиентов</p>\r\n<p class=\"benefits__item-text\">Онлайн отчетность. Вы всегда в курсе статуса подбора вашего авто. Фото и видео отчет</p>\r\n</li>\r\n</ul>'),
(809, 108, '_test_prim', 'field_61b5f52875349'),
(810, 108, 'фото_инсты', '106'),
(811, 108, '_фото_инсты', 'field_61b99fc4b6291'),
(812, 108, 'foto_inst', '106'),
(813, 108, '_foto_inst', 'field_61b99fc4b6291'),
(819, 112, 'phone', '+** (***) *** ** **'),
(820, 112, '_phone', 'field_61b5a4775eec7'),
(821, 112, 'phum_number', '380505556677'),
(822, 112, '_phum_number', 'field_61b5a7300fccb'),
(823, 112, 'phome_number', '380505556677'),
(824, 112, '_phome_number', 'field_61b5a7300fccb'),
(825, 112, 'phone_number', '380505556677'),
(826, 112, '_phone_number', 'field_61b5a7300fccb'),
(827, 112, 'inst-link', 'https://www.youtube.com/watch?v=ApZV2z46nd4&t=6744s'),
(828, 112, '_inst-link', 'field_61b5aad55278a'),
(829, 112, 'tele_link', '345'),
(830, 112, '_tele_link', 'field_61b5ab329a247'),
(831, 112, 'wot_link', '54'),
(832, 112, '_wot_link', 'field_61b5ab7f03439'),
(833, 112, 'face_link', '345'),
(834, 112, '_face_link', 'field_61b5aba6b9881'),
(835, 112, 'adress', '***, ***\r\nул. *****, д.**'),
(836, 112, '_adress', 'field_61b5e7963d9cb'),
(837, 112, 'working_hours', 'Пн-Сб: с 9:00 до 18:00,Вс: \r\nвыходной'),
(838, 112, '_working_hours', 'field_61b5fea37074c'),
(839, 112, 'title', 'АВТО ИЗ Росии “ПОД КЛЮЧ”'),
(840, 112, '_title', 'field_61b5e9511290a'),
(841, 112, 'trigger', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 50%'),
(842, 112, '_trigger', 'field_61b5e9791290b'),
(843, 112, 'tekst', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору, покупка'),
(844, 112, '_tekst', 'field_61b5e99a1290c'),
(845, 112, 'top_imag', '21'),
(846, 112, '_top_imag', 'field_61b5eae989d56'),
(847, 112, 'text_uslug', '<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Почему ввоз авто из США?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.</p>\r\n<p class=\"services__content-text\">Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Из-за чего такая низкая цена?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.</p>\r\n\r\n</div>\r\n</div>'),
(848, 112, '_text_uslug', 'field_61b5ee1240ee9'),
(849, 112, 'service_item', '<ol class=\"services__list\">\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1s\">\r\n<p class=\"services__item-title\">Покупка авто</p>\r\n<p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.2s\">\r\n<p class=\"services__item-title\">Доставка морем</p>\r\n<p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.4s\">\r\n<p class=\"services__item-title\">Растаможка авто</p>\r\n<p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.6s\">\r\n<p class=\"services__item-title\">Ремонт авто</p>\r\n<p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.8s\">\r\n<p class=\"services__item-title\">Сертификация</p>\r\n<p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Постановка на учет</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Вековое обслуживание</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n</ol>'),
(850, 112, '_service_item', 'field_61b5ee6640eea'),
(851, 112, 'bonefis_img', ''),
(852, 112, '_bonefis_img', 'field_61b5f4ac2647a'),
(853, 112, 'why_img', '20'),
(854, 112, '_why_img', 'field_61b5e7fe3d9cc'),
(855, 112, 'test_prim', '<ul class=\"benefits__list\">\r\n 	<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">650</p>\r\n<p class=\"benefits__item-title\">успешно доставленных авто</p>\r\n<p class=\"benefits__item-text\">большой опыт пригона автомобилей из США под ключ, все клиенты остались довольны на 100%</p>\r\n</li>\r\n 	<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">10</p>\r\n<p class=\"benefits__item-title\">лет на рынке Украины</p>\r\n<p class=\"benefits__item-text\">Работаем по всей территории Украины, работаем по договору с клиентами</p>\r\n</li>\r\n 	<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">100%</p>\r\n<p class=\"benefits__item-title\">доверия клиентов</p>\r\n<p class=\"benefits__item-text\">Онлайн отчетность. Вы всегда в курсе статуса подбора вашего авто. Фото и видео отчет</p>\r\n</li>\r\n</ul>'),
(856, 112, '_test_prim', 'field_61b5f52875349'),
(857, 112, 'фото_инсты', '106'),
(858, 112, '_фото_инсты', 'field_61b99fc4b6291'),
(859, 112, 'foto_inst', '106'),
(860, 112, '_foto_inst', 'field_61b99fc4b6291'),
(871, 120, 'phone', '+** (***) *** ** **'),
(872, 120, '_phone', 'field_61b5a4775eec7'),
(873, 120, 'phum_number', '380505556677'),
(874, 120, '_phum_number', 'field_61b5a7300fccb'),
(875, 120, 'phome_number', '380505556677'),
(876, 120, '_phome_number', 'field_61b5a7300fccb'),
(877, 120, 'phone_number', '380505556677'),
(878, 120, '_phone_number', 'field_61b5a7300fccb'),
(879, 120, 'inst-link', 'https://www.youtube.com/watch?v=ApZV2z46nd4&t=6744s'),
(880, 120, '_inst-link', 'field_61b5aad55278a'),
(881, 120, 'tele_link', '345'),
(882, 120, '_tele_link', 'field_61b5ab329a247'),
(883, 120, 'wot_link', '54'),
(884, 120, '_wot_link', 'field_61b5ab7f03439'),
(885, 120, 'face_link', '345'),
(886, 120, '_face_link', 'field_61b5aba6b9881'),
(887, 120, 'adress', '***, ***\r\nул. *****, д.**'),
(888, 120, '_adress', 'field_61b5e7963d9cb'),
(889, 120, 'working_hours', 'Пн-Сб: с 9:00 до 18:00,Вс: \r\nвыходной'),
(890, 120, '_working_hours', 'field_61b5fea37074c'),
(891, 120, 'title', 'АВТО ИЗ Росии “ПОД КЛЮЧ”'),
(892, 120, '_title', 'field_61b5e9511290a'),
(893, 120, 'trigger', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 50%'),
(894, 120, '_trigger', 'field_61b5e9791290b'),
(895, 120, 'tekst', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору, покупка'),
(896, 120, '_tekst', 'field_61b5e99a1290c'),
(897, 120, 'top_imag', '21'),
(898, 120, '_top_imag', 'field_61b5eae989d56'),
(899, 120, 'text_uslug', '<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Почему ввоз авто из США?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.</p>\r\n<p class=\"services__content-text\">Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Из-за чего такая низкая цена?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.</p>\r\n\r\n</div>\r\n</div>'),
(900, 120, '_text_uslug', 'field_61b5ee1240ee9'),
(901, 120, 'service_item', '<ol class=\"services__list\">\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1s\">\r\n<p class=\"services__item-title\">Покупка авто</p>\r\n<p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.2s\">\r\n<p class=\"services__item-title\">Доставка морем</p>\r\n<p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.4s\">\r\n<p class=\"services__item-title\">Растаможка авто</p>\r\n<p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.6s\">\r\n<p class=\"services__item-title\">Ремонт авто</p>\r\n<p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.8s\">\r\n<p class=\"services__item-title\">Сертификация</p>\r\n<p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Постановка на учет</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Вековое обслуживание</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n</ol>'),
(902, 120, '_service_item', 'field_61b5ee6640eea'),
(903, 120, 'bonefis_img', '21'),
(904, 120, '_bonefis_img', 'field_61b5f4ac2647a'),
(905, 120, 'why_img', '20'),
(906, 120, '_why_img', 'field_61b5e7fe3d9cc'),
(907, 120, 'test_prim', '<ul class=\"benefits__list\">\r\n 	<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">650</p>\r\n<p class=\"benefits__item-title\">успешно доставленных авто</p>\r\n<p class=\"benefits__item-text\">большой опыт пригона автомобилей из США под ключ, все клиенты остались довольны на 100%</p>\r\n</li>\r\n 	<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">10</p>\r\n<p class=\"benefits__item-title\">лет на рынке Украины</p>\r\n<p class=\"benefits__item-text\">Работаем по всей территории Украины, работаем по договору с клиентами</p>\r\n</li>\r\n 	<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">100%</p>\r\n<p class=\"benefits__item-title\">доверия клиентов</p>\r\n<p class=\"benefits__item-text\">Онлайн отчетность. Вы всегда в курсе статуса подбора вашего авто. Фото и видео отчет</p>\r\n</li>\r\n</ul>'),
(908, 120, '_test_prim', 'field_61b5f52875349'),
(909, 120, 'фото_инсты', '106'),
(910, 120, '_фото_инсты', 'field_61b99fc4b6291'),
(911, 120, 'foto_inst', '106'),
(912, 120, '_foto_inst', 'field_61b99fc4b6291'),
(913, 122, 'phone', '+** (***) *** ** **'),
(914, 122, '_phone', 'field_61b5a4775eec7'),
(915, 122, 'phum_number', '380505556677'),
(916, 122, '_phum_number', 'field_61b5a7300fccb'),
(917, 122, 'phome_number', '380505556677'),
(918, 122, '_phome_number', 'field_61b5a7300fccb'),
(919, 122, 'phone_number', '380505556677'),
(920, 122, '_phone_number', 'field_61b5a7300fccb'),
(921, 122, 'inst-link', 'https://www.youtube.com/watch?v=ApZV2z46nd4&t=6744s'),
(922, 122, '_inst-link', 'field_61b5aad55278a'),
(923, 122, 'tele_link', '345'),
(924, 122, '_tele_link', 'field_61b5ab329a247'),
(925, 122, 'wot_link', '54'),
(926, 122, '_wot_link', 'field_61b5ab7f03439'),
(927, 122, 'face_link', '345'),
(928, 122, '_face_link', 'field_61b5aba6b9881'),
(929, 122, 'adress', '***, ***\r\nул. *****, д.**'),
(930, 122, '_adress', 'field_61b5e7963d9cb'),
(931, 122, 'working_hours', 'Пн-Сб: с 9:00 до 18:00,Вс: \r\nвыходной'),
(932, 122, '_working_hours', 'field_61b5fea37074c'),
(933, 122, 'title', 'АВТО ИЗ Росии “ПОД КЛЮЧ”'),
(934, 122, '_title', 'field_61b5e9511290a'),
(935, 122, 'trigger', 'ЗАКАЖИ СЕБЕ АВТО ИЗ США С ВЫГОДОЙ ДО 50%'),
(936, 122, '_trigger', 'field_61b5e9791290b'),
(937, 122, 'tekst', 'Подбор, покупка, доставка, растаможка, ремонт, оформление по договору, покупка'),
(938, 122, '_tekst', 'field_61b5e99a1290c'),
(939, 122, 'top_imag', '21'),
(940, 122, '_top_imag', 'field_61b5eae989d56'),
(941, 122, 'text_uslug', '<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\"><em>Почему ввоз авто из США?</em></h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Мы сравнили рынки США с Европейскими и поняли, что покупка автомобиля в Америке выгоднее в несколько раз, как бы парадоксально это не звучало. Это вызвано продуманной логистикой, уровнем развития сервисов по оцениванию состояния авто и самим процессом покупки автомобиля.</p>\r\n<p class=\"services__content-text\">Большинство граждан США берут автомобиль в лизинг на несколько лет и все время эксплуатации сама лизинговая компания занимается постоянным ТО автомобиля, вследствие чего, машины из США – один из лучших выборов для автолюбителей Украины.</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"services__content-box\">\r\n<h6 class=\"services__content-title\">Из-за чего такая низкая цена?</h6>\r\n<div class=\"services__content-textbox\">\r\n<p class=\"services__content-text\">Битые автомобили из США выкупаются с аукционов страховых компаний. На этих аукционах машина теряет половину цены даже из-за минимальных повреждений. Если учитывать денежные затраты, а именно выкуп, доставку, таможню и ремонт, то цена аналогичного по состоянию автомобиля в Украине будет выше на 35-50%, а новые будут стоить космических денег.</p>\r\n\r\n</div>\r\n</div>'),
(942, 122, '_text_uslug', 'field_61b5ee1240ee9');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(943, 122, 'service_item', '<ol class=\"services__list\">\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1s\">\r\n<p class=\"services__item-title\">Покупка авто</p>\r\n<p class=\"services__item-text\">Подбор автомобиля и экспертная проверка</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.2s\">\r\n<p class=\"services__item-title\">Доставка морем</p>\r\n<p class=\"services__item-text\">Расчет оптимальной стоимости доставки авто</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.4s\">\r\n<p class=\"services__item-title\">Растаможка авто</p>\r\n<p class=\"services__item-text\">Прохождение таможенного оформления (2-3 дня)</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.6s\">\r\n<p class=\"services__item-title\">Ремонт авто</p>\r\n<p class=\"services__item-text\">Комплексный ремонт автомобиля на СТО</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"1.8s\">\r\n<p class=\"services__item-title\">Сертификация</p>\r\n<p class=\"services__item-text\">Услуга предоставляется по желанию</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Постановка на учет</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n 	<li class=\"services__item wow animate__fadeInRight\" data-wow-delay=\"2s\">\r\n<p class=\"services__item-title\">Вековое обслуживание</p>\r\n<p class=\"services__item-text\">Оформление автомобиля в Украине</p>\r\n</li>\r\n</ol>'),
(944, 122, '_service_item', 'field_61b5ee6640eea'),
(945, 122, 'bonefis_img', '21'),
(946, 122, '_bonefis_img', 'field_61b5f4ac2647a'),
(947, 122, 'why_img', '20'),
(948, 122, '_why_img', 'field_61b5e7fe3d9cc'),
(949, 122, 'test_prim', '<ul class=\"benefits__list\">\r\n 	<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">650</p>\r\n<p class=\"benefits__item-title\">успешно доставленных авто</p>\r\n<p class=\"benefits__item-text\">большой опыт пригона автомобилей из США под ключ, все клиенты остались довольны на 100%</p>\r\n</li>\r\n 	<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">10</p>\r\n<p class=\"benefits__item-title\">лет на рынке Украины</p>\r\n<p class=\"benefits__item-text\">Работаем по всей территории Украины, работаем по договору с клиентами</p>\r\n</li>\r\n 	<li class=\"benefits__item\">\r\n<p class=\"benefits__item-num\">100%</p>\r\n<p class=\"benefits__item-title\">доверия клиентов</p>\r\n<p class=\"benefits__item-text\">Онлайн отчетность. Вы всегда в курсе статуса подбора вашего авто. Фото и видео отчет</p>\r\n</li>\r\n</ul>'),
(950, 122, '_test_prim', 'field_61b5f52875349'),
(951, 122, 'фото_инсты', '106'),
(952, 122, '_фото_инсты', 'field_61b99fc4b6291'),
(953, 122, 'foto_inst', '106'),
(954, 122, '_foto_inst', 'field_61b99fc4b6291');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(7, 1, '2021-12-11 15:38:40', '2021-12-11 12:38:40', '', 'home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2023-07-16 11:05:26', '2023-07-16 08:05:26', '', 0, 'http://auto/?page_id=7', 0, 'page', '', 0),
(8, 1, '2021-12-11 15:38:40', '2021-12-11 12:38:40', '', 'home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-12-11 15:38:40', '2021-12-11 12:38:40', '', 7, 'http://auto/?p=8', 0, 'revision', '', 0),
(15, 1, '2021-12-11 19:34:48', '2021-12-11 16:34:48', '<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Экономия 4500 $</p></blockquote>\n<!-- /wp:quote -->', 'машина 5', '', 'publish', 'open', 'open', '', 'infiniti-qx50-2016-%d0%b3', '', '', '2021-12-31 09:46:46', '2021-12-31 06:46:46', '', 0, 'http://auto/?p=15', 0, 'post', '', 0),
(16, 1, '2021-12-11 19:34:48', '2021-12-11 16:34:48', '<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Экономия 4500 $</p></blockquote>\n<!-- /wp:quote -->', 'INFINITI QX50 2016 г.', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2021-12-11 19:34:48', '2021-12-11 16:34:48', '', 15, 'http://auto/?p=16', 0, 'revision', '', 0),
(17, 1, '2021-12-11 19:36:06', '2021-12-11 16:36:06', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2021-12-11 19:36:06', '2021-12-11 16:36:06', '', 15, 'http://auto/wp-content/uploads/2021/12/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2021-12-11 19:36:06', '2021-12-11 16:36:06', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2021-12-11 19:36:06', '2021-12-11 16:36:06', '', 15, 'http://auto/wp-content/uploads/2021/12/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2021-12-11 19:36:07', '2021-12-11 16:36:07', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2021-12-11 19:36:07', '2021-12-11 16:36:07', '', 15, 'http://auto/wp-content/uploads/2021/12/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2021-12-11 19:38:16', '2021-12-11 16:38:16', '', 'car', '', 'inherit', 'open', 'closed', '', 'car', '', '', '2021-12-11 19:38:16', '2021-12-11 16:38:16', '', 15, 'http://auto/wp-content/uploads/2021/12/car.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2021-12-11 19:38:17', '2021-12-11 16:38:17', '', 'ford-mustang', '', 'inherit', 'open', 'closed', '', 'ford-mustang', '', '', '2021-12-11 19:38:17', '2021-12-11 16:38:17', '', 15, 'http://auto/wp-content/uploads/2021/12/ford-mustang.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2021-12-11 19:45:29', '2021-12-11 16:45:29', '<!-- wp:paragraph -->\n<p>Экономия 5500 $</p>\n<!-- /wp:paragraph -->', 'машина 4', '', 'publish', 'open', 'open', '', 'tesla-model-3-2018-%d0%b3', '', '', '2021-12-31 09:46:32', '2021-12-31 06:46:32', '', 0, 'http://auto/?p=23', 0, 'post', '', 0),
(24, 1, '2021-12-11 19:45:29', '2021-12-11 16:45:29', '<!-- wp:paragraph -->\n<p>Экономия 5500 $</p>\n<!-- /wp:paragraph -->', 'TESLA MODEL 3 2018 г.', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2021-12-11 19:45:29', '2021-12-11 16:45:29', '', 23, 'http://auto/?p=24', 0, 'revision', '', 0),
(26, 1, '2021-12-11 19:47:38', '2021-12-11 16:47:38', '<!-- wp:paragraph -->\n<p>Экономия 2500 $</p>\n<!-- /wp:paragraph -->', 'машина 3', '', 'publish', 'open', 'open', '', 'tesla-model-3-2018-%d0%b3-2', '', '', '2021-12-31 09:46:20', '2021-12-31 06:46:20', '', 0, 'http://auto/?p=26', 0, 'post', '', 0),
(27, 1, '2021-12-11 19:47:38', '2021-12-11 16:47:38', '<!-- wp:paragraph -->\n<p>Экономия 5500 $</p>\n<!-- /wp:paragraph -->', 'TESLA MODEL 3 2018 г.', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2021-12-11 19:47:38', '2021-12-11 16:47:38', '', 26, 'http://auto/?p=27', 0, 'revision', '', 0),
(31, 1, '2021-12-11 19:52:02', '2021-12-11 16:52:02', '<!-- wp:paragraph -->\n<p>Экономия 4500 $</p>\n<!-- /wp:paragraph -->', 'машина 2', '', 'publish', 'open', 'open', '', 'tesla-model-3-2018-%d0%b3-3', '', '', '2021-12-31 09:46:06', '2021-12-31 06:46:06', '', 0, 'http://auto/?p=31', 0, 'post', '', 0),
(32, 1, '2021-12-11 19:52:02', '2021-12-11 16:52:02', '<!-- wp:paragraph -->\n<p>Экономия 4500 $</p>\n<!-- /wp:paragraph -->', 'TESLA MODEL 3 2018 г.', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2021-12-11 19:52:02', '2021-12-11 16:52:02', '', 31, 'http://auto/?p=32', 0, 'revision', '', 0),
(33, 1, '2021-12-11 20:04:35', '2021-12-11 17:04:35', '<!-- wp:paragraph -->\n<p>Экономия 5500 $</p>\n<!-- /wp:paragraph -->', 'TESLA MODEL 3 2010 г.', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2021-12-11 20:04:35', '2021-12-11 17:04:35', '', 23, 'http://auto/?p=33', 0, 'revision', '', 0),
(34, 1, '2021-12-11 20:05:03', '2021-12-11 17:05:03', '<!-- wp:paragraph -->\n<p>Экономия 5500 $</p>\n<!-- /wp:paragraph -->', 'TESLA MODEL 3 2015 г.', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2021-12-11 20:05:03', '2021-12-11 17:05:03', '', 26, 'http://auto/?p=34', 0, 'revision', '', 0),
(35, 1, '2021-12-11 20:05:14', '2021-12-11 17:05:14', '<!-- wp:paragraph -->\n<p>Экономия 4500 $</p>\n<!-- /wp:paragraph -->', 'TESLA MODEL 3 2025 г.', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2021-12-11 20:05:14', '2021-12-11 17:05:14', '', 31, 'http://auto/?p=35', 0, 'revision', '', 0),
(36, 1, '2021-12-11 20:10:45', '2021-12-11 17:10:45', '<!-- wp:paragraph -->\n<p>Экономия 2500 $</p>\n<!-- /wp:paragraph -->', 'TESLA MODEL 3 2015 г.', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2021-12-11 20:10:45', '2021-12-11 17:10:45', '', 26, 'http://auto/?p=36', 0, 'revision', '', 0),
(37, 1, '2021-12-11 21:22:47', '2021-12-11 18:22:47', '<!-- wp:paragraph -->\n<p>ЭКОНОМИЯЯ 100000$</p>\n<!-- /wp:paragraph -->', 'машина1', '', 'publish', 'open', 'open', '', 'lada-2000', '', '', '2021-12-31 09:45:49', '2021-12-31 06:45:49', '', 0, 'http://auto/?p=37', 0, 'post', '', 0),
(38, 1, '2021-12-11 21:22:47', '2021-12-11 18:22:47', '<!-- wp:paragraph -->\n<p>ЭКОНОМИЯЯ 1000000000000 </p>\n<!-- /wp:paragraph -->', 'LADA 2000', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2021-12-11 21:22:47', '2021-12-11 18:22:47', '', 37, 'http://auto/?p=38', 0, 'revision', '', 0),
(39, 1, '2021-12-12 09:43:41', '2021-12-12 06:43:41', '[text text-696 class:contacts__input placeholder \"Как Вас зовут?\"][tel* tel-508 class:contacts__input placeholder \"Ваш номер телефона\"][submit class:contacts__btn class:button \"Отправить заявку\"]\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@auto>\n[_site_admin_email]\nОт: [your-name] <[your-email]>\r\nТема: [your-subject]\r\n\r\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто сообщение отправлено с сайта [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@auto>\n[your-email]\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто сообщение отправлено с сайта [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nСпасибо за Ваше сообщение. Оно успешно отправлено.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nОдно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nВы должны принять условия и положения перед отправкой вашего сообщения.\nПоле обязательно для заполнения.\nПоле слишком длинное.\nПоле слишком короткое.\nПри загрузке файла произошла неизвестная ошибка.\nВам не разрешено загружать файлы этого типа.\nФайл слишком большой.\nПри загрузке файла произошла ошибка.\nФормат даты некорректен.\nВведённая дата слишком далеко в прошлом.\nВведённая дата слишком далеко в будущем.\nФормат числа некорректен.\nЧисло меньше минимально допустимого.\nЧисло больше максимально допустимого.\nНеверный ответ на проверочный вопрос.\nНеверно введён электронный адрес.\nВведён некорректный URL адрес.\nВведён некорректный телефонный номер.', 'Контактная форма', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d0%bd%d0%b0%d1%8f-%d1%84%d0%be%d1%80%d0%bc%d0%b0-1', '', '', '2021-12-12 10:02:21', '2021-12-12 07:02:21', '', 0, 'http://auto/?post_type=wpcf7_contact_form&#038;p=39', 0, 'wpcf7_contact_form', '', 0),
(40, 1, '2021-12-12 10:10:33', '2021-12-12 07:10:33', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2021-12-12 10:10:33', '2021-12-12 07:10:33', '', 0, 'http://auto/wp-content/uploads/2021/12/logo.svg', 0, 'attachment', 'image/svg+xml', 0),
(42, 1, '2021-12-12 10:29:44', '2021-12-12 07:29:44', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"7\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'группа полей', '%d0%b3%d1%80%d1%83%d0%bf%d0%bf%d0%b0-%d0%bf%d0%be%d0%bb%d0%b5%d0%b9', 'publish', 'closed', 'closed', '', 'group_61b5a445812a0', '', '', '2021-12-15 10:58:36', '2021-12-15 07:58:36', '', 0, 'http://auto/?post_type=acf-field-group&#038;p=42', 0, 'acf-field-group', '', 0),
(43, 1, '2021-12-12 10:29:44', '2021-12-12 07:29:44', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:42:\"введите номер телефона\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'телефон', 'phone', 'publish', 'closed', 'closed', '', 'field_61b5a4775eec7', '', '', '2021-12-15 10:57:43', '2021-12-15 07:57:43', '', 42, 'http://auto/?post_type=acf-field&#038;p=43', 19, 'acf-field', '', 0),
(46, 1, '2021-12-12 10:33:46', '2021-12-12 07:33:46', '', 'home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-12-12 10:33:46', '2021-12-12 07:33:46', '', 7, 'http://auto/?p=46', 0, 'revision', '', 0),
(47, 1, '2021-12-12 10:35:42', '2021-12-12 07:35:42', '', 'home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-12-12 10:35:42', '2021-12-12 07:35:42', '', 7, 'http://auto/?p=47', 0, 'revision', '', 0),
(48, 1, '2021-12-12 10:40:55', '2021-12-12 07:40:55', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'телефон номер', 'phone_number', 'publish', 'closed', 'closed', '', 'field_61b5a7300fccb', '', '', '2021-12-15 10:57:43', '2021-12-15 07:57:43', '', 42, 'http://auto/?post_type=acf-field&#038;p=48', 20, 'acf-field', '', 0),
(49, 1, '2021-12-12 10:42:23', '2021-12-12 07:42:23', '', 'home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-12-12 10:42:23', '2021-12-12 07:42:23', '', 7, 'http://auto/?p=49', 0, 'revision', '', 0),
(50, 1, '2021-12-12 10:42:31', '2021-12-12 07:42:31', '', 'home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-12-12 10:42:31', '2021-12-12 07:42:31', '', 7, 'http://auto/?p=50', 0, 'revision', '', 0),
(51, 1, '2021-12-12 10:42:45', '2021-12-12 07:42:45', '', 'home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-12-12 10:42:45', '2021-12-12 07:42:45', '', 7, 'http://auto/?p=51', 0, 'revision', '', 0),
(52, 1, '2021-12-12 10:44:57', '2021-12-12 07:44:57', '', 'home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-12-12 10:44:57', '2021-12-12 07:44:57', '', 7, 'http://auto/?p=52', 0, 'revision', '', 0),
(53, 1, '2021-12-12 10:46:26', '2021-12-12 07:46:26', '', 'home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-12-12 10:46:26', '2021-12-12 07:46:26', '', 7, 'http://auto/?p=53', 0, 'revision', '', 0),
(54, 1, '2021-12-12 10:46:41', '2021-12-12 07:46:41', '', 'home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-12-12 10:46:41', '2021-12-12 07:46:41', '', 7, 'http://auto/?p=54', 0, 'revision', '', 0),
(55, 1, '2021-12-12 10:47:11', '2021-12-12 07:47:11', '', 'home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-12-12 10:47:11', '2021-12-12 07:47:11', '', 7, 'http://auto/?p=55', 0, 'revision', '', 0),
(56, 1, '2021-12-12 10:47:29', '2021-12-12 07:47:29', '', 'home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-12-12 10:47:29', '2021-12-12 07:47:29', '', 7, 'http://auto/?p=56', 0, 'revision', '', 0),
(57, 1, '2021-12-12 10:56:14', '2021-12-12 07:56:14', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'ссылка на инст', 'inst-link', 'publish', 'closed', 'closed', '', 'field_61b5aad55278a', '', '', '2021-12-12 16:14:50', '2021-12-12 13:14:50', '', 42, 'http://auto/?post_type=acf-field&#038;p=57', 13, 'acf-field', '', 0),
(58, 1, '2021-12-12 10:57:25', '2021-12-12 07:57:25', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'ссылка на теле', 'tele_link', 'publish', 'closed', 'closed', '', 'field_61b5ab329a247', '', '', '2021-12-15 10:57:43', '2021-12-15 07:57:43', '', 42, 'http://auto/?post_type=acf-field&#038;p=58', 15, 'acf-field', '', 0),
(59, 1, '2021-12-12 10:58:27', '2021-12-12 07:58:27', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'ссылка на wot', 'wot_link', 'publish', 'closed', 'closed', '', 'field_61b5ab7f03439', '', '', '2021-12-15 10:57:43', '2021-12-15 07:57:43', '', 42, 'http://auto/?post_type=acf-field&#038;p=59', 16, 'acf-field', '', 0),
(60, 1, '2021-12-12 10:58:56', '2021-12-12 07:58:56', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'ссылка на face', 'face_link', 'publish', 'closed', 'closed', '', 'field_61b5aba6b9881', '', '', '2021-12-15 10:57:43', '2021-12-15 07:57:43', '', 42, 'http://auto/?post_type=acf-field&#038;p=60', 17, 'acf-field', '', 0),
(61, 1, '2021-12-12 11:00:12', '2021-12-12 08:00:12', '', 'home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-12-12 11:00:12', '2021-12-12 08:00:12', '', 7, 'http://auto/?p=61', 0, 'revision', '', 0),
(62, 1, '2021-12-12 11:19:35', '2021-12-12 08:19:35', '', 'home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-12-12 11:19:35', '2021-12-12 08:19:35', '', 7, 'http://auto/?p=62', 0, 'revision', '', 0),
(63, 1, '2021-12-12 15:09:04', '2021-12-12 12:09:04', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'главный экран', 'главный_экран', 'publish', 'closed', 'closed', '', 'field_61b5e599db2fb', '', '', '2021-12-12 15:09:59', '2021-12-12 12:09:59', '', 42, 'http://auto/?post_type=acf-field&#038;p=63', 0, 'acf-field', '', 0),
(64, 1, '2021-12-12 15:09:04', '2021-12-12 12:09:04', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'наши услуги', 'наши_услуги', 'publish', 'closed', 'closed', '', 'field_61b5e5d1db2fc', '', '', '2021-12-12 15:32:47', '2021-12-12 12:32:47', '', 42, 'http://auto/?post_type=acf-field&#038;p=64', 5, 'acf-field', '', 0),
(65, 1, '2021-12-12 15:09:04', '2021-12-12 12:09:04', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'почему мы?', 'почему_мы', 'publish', 'closed', 'closed', '', 'field_61b5e600db2fd', '', '', '2021-12-12 16:13:35', '2021-12-12 13:13:35', '', 42, 'http://auto/?post_type=acf-field&#038;p=65', 9, 'acf-field', '', 0),
(66, 1, '2021-12-12 15:09:04', '2021-12-12 12:09:04', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'социальные сети', 'контакты', 'publish', 'closed', 'closed', '', 'field_61b5e624db2fe', '', '', '2021-12-12 16:14:50', '2021-12-12 13:14:50', '', 42, 'http://auto/?post_type=acf-field&#038;p=66', 12, 'acf-field', '', 0),
(67, 1, '2021-12-12 15:09:04', '2021-12-12 12:09:04', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'контакты', 'контакты', 'publish', 'closed', 'closed', '', 'field_61b5e64ddb2ff', '', '', '2021-12-15 10:57:43', '2021-12-15 07:57:43', '', 42, 'http://auto/?post_type=acf-field&#038;p=67', 18, 'acf-field', '', 0),
(70, 1, '2021-12-12 15:17:05', '2021-12-12 12:17:05', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'Адрес', 'adress', 'publish', 'closed', 'closed', '', 'field_61b5e7963d9cb', '', '', '2021-12-15 10:57:43', '2021-12-15 07:57:43', '', 42, 'http://auto/?post_type=acf-field&#038;p=70', 22, 'acf-field', '', 0),
(71, 1, '2021-12-12 15:17:05', '2021-12-12 12:17:05', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'почему из', 'why_img', 'publish', 'closed', 'closed', '', 'field_61b5e7fe3d9cc', '', '', '2021-12-12 16:18:10', '2021-12-12 13:18:10', '', 42, 'http://auto/?post_type=acf-field&#038;p=71', 10, 'acf-field', '', 0),
(72, 1, '2021-12-12 15:19:53', '2021-12-12 12:19:53', '', 'home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-12-12 15:19:53', '2021-12-12 12:19:53', '', 7, 'http://auto/?p=72', 0, 'revision', '', 0),
(73, 1, '2021-12-12 15:20:15', '2021-12-12 12:20:15', '', 'home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-12-12 15:20:15', '2021-12-12 12:20:15', '', 7, 'http://auto/?p=73', 0, 'revision', '', 0),
(74, 1, '2021-12-12 15:23:54', '2021-12-12 12:23:54', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'заглавие', 'title', 'publish', 'closed', 'closed', '', 'field_61b5e9511290a', '', '', '2021-12-12 15:24:15', '2021-12-12 12:24:15', '', 42, 'http://auto/?post_type=acf-field&#038;p=74', 1, 'acf-field', '', 0),
(75, 1, '2021-12-12 15:23:54', '2021-12-12 12:23:54', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'trigger', 'trigger', 'publish', 'closed', 'closed', '', 'field_61b5e9791290b', '', '', '2021-12-12 15:24:40', '2021-12-12 12:24:40', '', 42, 'http://auto/?post_type=acf-field&#038;p=75', 2, 'acf-field', '', 0),
(76, 1, '2021-12-12 15:23:54', '2021-12-12 12:23:54', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'текст на главном экране', 'tekst', 'publish', 'closed', 'closed', '', 'field_61b5e99a1290c', '', '', '2021-12-12 15:24:40', '2021-12-12 12:24:40', '', 42, 'http://auto/?post_type=acf-field&#038;p=76', 3, 'acf-field', '', 0),
(77, 1, '2021-12-12 15:25:35', '2021-12-12 12:25:35', '', 'home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-12-12 15:25:35', '2021-12-12 12:25:35', '', 7, 'http://auto/?p=77', 0, 'revision', '', 0),
(78, 1, '2021-12-12 15:27:43', '2021-12-12 12:27:43', '', 'home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-12-12 15:27:43', '2021-12-12 12:27:43', '', 7, 'http://auto/?p=78', 0, 'revision', '', 0),
(79, 1, '2021-12-12 15:30:28', '2021-12-12 12:30:28', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Изображение на главной странице', 'top_imag', 'publish', 'closed', 'closed', '', 'field_61b5eae989d56', '', '', '2021-12-12 15:32:47', '2021-12-12 12:32:47', '', 42, 'http://auto/?post_type=acf-field&#038;p=79', 4, 'acf-field', '', 0),
(80, 1, '2021-12-12 15:33:14', '2021-12-12 12:33:14', '', 'home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-12-12 15:33:14', '2021-12-12 12:33:14', '', 7, 'http://auto/?p=80', 0, 'revision', '', 0),
(81, 1, '2021-12-12 15:38:45', '2021-12-12 12:38:45', '', 'home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-12-12 15:38:45', '2021-12-12 12:38:45', '', 7, 'http://auto/?p=81', 0, 'revision', '', 0),
(82, 1, '2021-12-12 15:44:04', '2021-12-12 12:44:04', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'текст наших услуг', 'text_uslug', 'publish', 'closed', 'closed', '', 'field_61b5ee1240ee9', '', '', '2021-12-12 15:45:43', '2021-12-12 12:45:43', '', 42, 'http://auto/?post_type=acf-field&#038;p=82', 6, 'acf-field', '', 0),
(83, 1, '2021-12-12 15:44:04', '2021-12-12 12:44:04', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'услуги', 'service_item', 'publish', 'closed', 'closed', '', 'field_61b5ee6640eea', '', '', '2021-12-12 15:45:43', '2021-12-12 12:45:43', '', 42, 'http://auto/?post_type=acf-field&#038;p=83', 7, 'acf-field', '', 0),
(84, 1, '2021-12-12 15:51:44', '2021-12-12 12:51:44', '', 'home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-12-12 15:51:44', '2021-12-12 12:51:44', '', 7, 'http://auto/?p=84', 0, 'revision', '', 0),
(85, 1, '2021-12-12 15:52:41', '2021-12-12 12:52:41', '', 'home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-12-12 15:52:41', '2021-12-12 12:52:41', '', 7, 'http://auto/?p=85', 0, 'revision', '', 0),
(86, 1, '2021-12-12 15:53:38', '2021-12-12 12:53:38', '', 'home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-12-12 15:53:38', '2021-12-12 12:53:38', '', 7, 'http://auto/?p=86', 0, 'revision', '', 0),
(87, 1, '2021-12-12 15:54:15', '2021-12-12 12:54:15', '', 'home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-12-12 15:54:15', '2021-12-12 12:54:15', '', 7, 'http://auto/?p=87', 0, 'revision', '', 0),
(88, 1, '2021-12-12 15:54:45', '2021-12-12 12:54:45', '', 'home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-12-12 15:54:45', '2021-12-12 12:54:45', '', 7, 'http://auto/?p=88', 0, 'revision', '', 0),
(89, 1, '2021-12-12 16:11:22', '2021-12-12 13:11:22', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Изображение', 'bonefis_img', 'publish', 'closed', 'closed', '', 'field_61b5f4ac2647a', '', '', '2021-12-12 16:13:35', '2021-12-12 13:13:35', '', 42, 'http://auto/?post_type=acf-field&#038;p=89', 8, 'acf-field', '', 0),
(90, 1, '2021-12-12 16:13:35', '2021-12-12 13:13:35', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'текст примуществ', 'test_prim', 'publish', 'closed', 'closed', '', 'field_61b5f52875349', '', '', '2021-12-12 16:14:50', '2021-12-12 13:14:50', '', 42, 'http://auto/?post_type=acf-field&#038;p=90', 11, 'acf-field', '', 0),
(91, 1, '2021-12-12 16:19:13', '2021-12-12 13:19:13', '', 'home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-12-12 16:19:13', '2021-12-12 13:19:13', '', 7, 'http://auto/?p=91', 0, 'revision', '', 0),
(92, 1, '2021-12-12 16:19:26', '2021-12-12 13:19:26', '', 'home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-12-12 16:19:26', '2021-12-12 13:19:26', '', 7, 'http://auto/?p=92', 0, 'revision', '', 0),
(93, 1, '2021-12-12 16:27:13', '2021-12-12 13:27:13', '', 'home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-12-12 16:27:13', '2021-12-12 13:27:13', '', 7, 'http://auto/?p=93', 0, 'revision', '', 0),
(94, 1, '2021-12-12 16:27:38', '2021-12-12 13:27:38', '', 'home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-12-12 16:27:38', '2021-12-12 13:27:38', '', 7, 'http://auto/?p=94', 0, 'revision', '', 0),
(98, 1, '2021-12-12 16:53:01', '2021-12-12 13:53:01', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'время работы', 'working_hours', 'publish', 'closed', 'closed', '', 'field_61b5fea37074c', '', '', '2021-12-15 10:57:43', '2021-12-15 07:57:43', '', 42, 'http://auto/?post_type=acf-field&#038;p=98', 21, 'acf-field', '', 0),
(99, 1, '2021-12-12 16:56:02', '2021-12-12 13:56:02', '', 'home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-12-12 16:56:02', '2021-12-12 13:56:02', '', 7, 'http://auto/?p=99', 0, 'revision', '', 0),
(100, 1, '2021-12-12 16:56:29', '2021-12-12 13:56:29', '<!-- wp:paragraph -->\n<p>Пользование сайтами и приложениями сопряжено с обработкой огромного массива данных, в который входят также и сведения о пользователях, именуемые персональными данными.&nbsp;Пользователи предоставляют персональные данные&nbsp;как по своей воле, так и в автоматическом режиме, но при этом они могут быть не всегда проинформированы об этом, что является нарушением.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Законодательство о защите персональных данных относит к ним любые сведения, которые позволяют идентифицировать конкретное лицо. И большая часть онлайн-сервисов не может функционировать корректно без предоставления и обработки таких данных. Всевозможные&nbsp;веб-сервисы, онлайн-магазины, интерактивные энциклопедии, новостные ресурсы, социальные сети,&nbsp;компьютерные игры и многие другие сайты и приложения&nbsp;без обработки персональных данных своих пользователей не в состоянии&nbsp;предоставлять качественные услуги и сервисы.</p>\n<!-- /wp:paragraph -->', 'Политика конфиденциальности', '', 'publish', 'open', 'open', '', '%d0%bf%d0%be%d0%bb%d0%b8%d1%82%d0%b8%d0%ba%d0%b0-%d0%ba%d0%be%d0%bd%d1%84%d0%b8%d0%b4%d0%b5%d0%bd%d1%86%d0%b8%d0%b0%d0%bb%d1%8c%d0%bd%d0%be%d1%81%d1%82%d0%b8', '', '', '2021-12-12 16:56:43', '2021-12-12 13:56:43', '', 0, 'http://auto/?p=100', 0, 'post', '', 0),
(101, 1, '2021-12-12 16:56:29', '2021-12-12 13:56:29', '', 'Политика конфиденциальности', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2021-12-12 16:56:29', '2021-12-12 13:56:29', '', 100, 'http://auto/?p=101', 0, 'revision', '', 0),
(102, 1, '2021-12-12 16:56:43', '2021-12-12 13:56:43', '<!-- wp:paragraph -->\n<p>Пользование сайтами и приложениями сопряжено с обработкой огромного массива данных, в который входят также и сведения о пользователях, именуемые персональными данными.&nbsp;Пользователи предоставляют персональные данные&nbsp;как по своей воле, так и в автоматическом режиме, но при этом они могут быть не всегда проинформированы об этом, что является нарушением.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Законодательство о защите персональных данных относит к ним любые сведения, которые позволяют идентифицировать конкретное лицо. И большая часть онлайн-сервисов не может функционировать корректно без предоставления и обработки таких данных. Всевозможные&nbsp;веб-сервисы, онлайн-магазины, интерактивные энциклопедии, новостные ресурсы, социальные сети,&nbsp;компьютерные игры и многие другие сайты и приложения&nbsp;без обработки персональных данных своих пользователей не в состоянии&nbsp;предоставлять качественные услуги и сервисы.</p>\n<!-- /wp:paragraph -->', 'Политика конфиденциальности', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2021-12-12 16:56:43', '2021-12-12 13:56:43', '', 100, 'http://auto/?p=102', 0, 'revision', '', 0),
(103, 1, '2021-12-15 10:53:46', '2021-12-15 07:53:46', '', 'sprite', '', 'inherit', 'open', 'closed', '', 'sprite', '', '', '2021-12-15 10:53:46', '2021-12-15 07:53:46', '', 7, 'http://auto/wp-content/uploads/2021/12/sprite.svg', 0, 'attachment', 'image/svg+xml', 0),
(104, 1, '2021-12-15 10:53:52', '2021-12-15 07:53:52', '', 'facebook', '', 'inherit', 'open', 'closed', '', 'facebook', '', '', '2021-12-15 10:53:52', '2021-12-15 07:53:52', '', 7, 'http://auto/wp-content/uploads/2021/12/facebook.svg', 0, 'attachment', 'image/svg+xml', 0),
(105, 1, '2021-12-15 10:57:29', '2021-12-15 07:57:29', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'фото инсты', 'foto_inst', 'publish', 'closed', 'closed', '', 'field_61b99fc4b6291', '', '', '2021-12-15 10:58:36', '2021-12-15 07:58:36', '', 42, 'http://auto/?post_type=acf-field&#038;p=105', 14, 'acf-field', '', 0),
(106, 1, '2021-12-15 10:58:03', '2021-12-15 07:58:03', '', 'instagram', '', 'inherit', 'open', 'closed', '', 'instagram', '', '', '2021-12-15 10:58:03', '2021-12-15 07:58:03', '', 7, 'http://auto/wp-content/uploads/2021/12/instagram.svg', 0, 'attachment', 'image/svg+xml', 0),
(107, 1, '2021-12-15 10:58:13', '2021-12-15 07:58:13', '', 'home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-12-15 10:58:13', '2021-12-15 07:58:13', '', 7, 'http://auto/?p=107', 0, 'revision', '', 0),
(108, 1, '2021-12-15 11:27:29', '2021-12-15 08:27:29', '', 'home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-12-15 11:27:29', '2021-12-15 08:27:29', '', 7, 'http://auto/?p=108', 0, 'revision', '', 0),
(112, 1, '2021-12-30 17:24:36', '2021-12-30 14:24:36', '', 'home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-12-30 17:24:36', '2021-12-30 14:24:36', '', 7, 'http://auto/?p=112', 0, 'revision', '', 0),
(113, 1, '2021-12-31 09:45:49', '2021-12-31 06:45:49', '<!-- wp:paragraph -->\n<p>ЭКОНОМИЯЯ 100000$</p>\n<!-- /wp:paragraph -->', 'машина1', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2021-12-31 09:45:49', '2021-12-31 06:45:49', '', 37, 'http://auto/?p=113', 0, 'revision', '', 0),
(114, 1, '2021-12-31 09:46:06', '2021-12-31 06:46:06', '<!-- wp:paragraph -->\n<p>Экономия 4500 $</p>\n<!-- /wp:paragraph -->', 'машина 2', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2021-12-31 09:46:06', '2021-12-31 06:46:06', '', 31, 'http://auto/?p=114', 0, 'revision', '', 0),
(115, 1, '2021-12-31 09:46:20', '2021-12-31 06:46:20', '<!-- wp:paragraph -->\n<p>Экономия 2500 $</p>\n<!-- /wp:paragraph -->', 'машина 3', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2021-12-31 09:46:20', '2021-12-31 06:46:20', '', 26, 'http://auto/?p=115', 0, 'revision', '', 0),
(116, 1, '2021-12-31 09:46:32', '2021-12-31 06:46:32', '<!-- wp:paragraph -->\n<p>Экономия 5500 $</p>\n<!-- /wp:paragraph -->', 'машина 4', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2021-12-31 09:46:32', '2021-12-31 06:46:32', '', 23, 'http://auto/?p=116', 0, 'revision', '', 0),
(117, 1, '2021-12-31 09:46:46', '2021-12-31 06:46:46', '<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Экономия 4500 $</p></blockquote>\n<!-- /wp:quote -->', 'машина 5', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2021-12-31 09:46:46', '2021-12-31 06:46:46', '', 15, 'http://auto/?p=117', 0, 'revision', '', 0),
(120, 1, '2023-07-09 09:19:26', '2023-07-09 06:19:26', '', 'home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-07-09 09:19:26', '2023-07-09 06:19:26', '', 7, 'http://auto/?p=120', 0, 'revision', '', 0),
(122, 1, '2023-07-16 11:05:26', '2023-07-16 08:05:26', '', 'home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-07-16 11:05:26', '2023-07-16 08:05:26', '', 7, 'http://auto/?p=122', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'slider', 'slider', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(15, 2, 0),
(23, 2, 0),
(26, 2, 0),
(31, 1, 0),
(31, 2, 0),
(37, 2, 0),
(100, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'category', '', 0, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '123'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(20, 1, 'wp_user-settings-time', '1639315998'),
(21, 1, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:0;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:5:{i:0;s:11:\"post-status\";i:1;s:23:\"taxonomy-panel-category\";i:2;s:23:\"taxonomy-panel-post_tag\";i:3;s:14:\"featured-image\";i:4;s:12:\"post-excerpt\";}}s:9:\"_modified\";s:24:\"2023-07-16T08:05:03.502Z\";}'),
(22, 1, 'session_tokens', 'a:1:{s:64:\"068956abd85edb0cfe2f5837bb38b54f079323f6f8ebd4ef9163c66bd57a39a0\";a:4:{s:10:\"expiration\";i:1691481404;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:124:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 OPR/92.0.0.0\";s:5:\"login\";i:1691308604;}}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B3ngjvvuntxNUu6HMYEONNInhWJLMV0', 'admin', '1@1.com', 'http://auto', '2021-12-10 18:39:30', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_duplicator_packages`
--
ALTER TABLE `wp_duplicator_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hash` (`hash`);

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_duplicator_packages`
--
ALTER TABLE `wp_duplicator_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=761;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=955;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
