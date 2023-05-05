<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе установки.
 * Необязательно использовать веб-интерфейс, можно скопировать файл в "wp-config.php"
 * и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://ru.wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define( 'DB_NAME', 'auto_bd' );

/** Имя пользователя MySQL */
define( 'DB_USER', 'root' );

/** Пароль к базе данных MySQL */
define( 'DB_PASSWORD', 'root' );

/** Имя сервера MySQL */
define( 'DB_HOST', 'localhost' );

/** Кодировка базы данных для создания таблиц. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Схема сопоставления. Не меняйте, если не уверены. */
define( 'DB_COLLATE', '' );

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу. Можно сгенерировать их с помощью
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}.
 *
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными.
 * Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '!y?S y5JS^&kS.2tk1}?N#;*$lgXHv`qH.Ks 7npyMo<pQ24df_BWr9rEBMtW|)c' );
define( 'SECURE_AUTH_KEY',  'l|:.<7|qFulFAq4t/u|PvPO=_{ce.!{r}PYo$u[Ij/$@S-`c5Y8|bV-I;Mnpalb|' );
define( 'LOGGED_IN_KEY',    'c;hpX0BO|^6s4EHOFf=wOBKcz:qr33*|HUYNHmiAg([ZJn iaMifW uqh),t)`,L' );
define( 'NONCE_KEY',        'S9{O0}-8gt0%rGg&GkW&hq>mK)l<K]x2Wpa/_[*,j1>/{xiIf0FGm R.&E[c(bXY' );
define( 'AUTH_SALT',        'OQyrdfJYEep/&~R=<2z2>Mb%tkC,qnGpEck+i3/)DplPf6ddaSx:i8=)Md:Uit@g' );
define( 'SECURE_AUTH_SALT', 'Ens$ 3O3@_{W(!d~(ixi0{pk-(Pb# [qTAhJV7+VIyN;$Nmo#ItZNGu8,#1~^Hgu' );
define( 'LOGGED_IN_SALT',   'Poi :x 6[TM{qSRPgn2DSVsnpKW(}< =aPSiJFi(&8Qgomr6zC`fy$})B1Twz/tE' );
define( 'NONCE_SALT',       '*z51/|mD$Ux8r$&~<=dkJ<$Z1kx%]qq+Jm(e)#%|e):7FN=,t@*fi=4YRa<W0X>/' );

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в документации.
 *
 * @link https://ru.wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Произвольные значения добавляйте между этой строкой и надписью "дальше не редактируем". */



/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Инициализирует переменные WordPress и подключает файлы. */
require_once ABSPATH . 'wp-settings.php';
