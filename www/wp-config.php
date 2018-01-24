<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define('DB_NAME', 'xstrike');

/** Имя пользователя MySQL */
define('DB_USER', 'root');

/** Пароль к базе данных MySQL */
define('DB_PASSWORD', '');

/** Имя сервера MySQL */
define('DB_HOST', 'localhost');

/** Кодировка базы данных для создания таблиц. */
define('DB_CHARSET', 'utf8');

/** Схема сопоставления. Не меняйте, если не уверены. */
define('DB_COLLATE', '');

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'mbKe,Ef}FfB-i5[Q6o;y| M-F[Olx_iM&2-{;UdPo<2I`t$x[9y,[?]x]T](0O!<');
define('SECURE_AUTH_KEY',  'G>/qsw$9[D38^sE 27Agx[7uEn2#Ob=Vf9+/Tv(XM8G>g]-v :lD>/t;O_0RkzQk');
define('LOGGED_IN_KEY',    '+4/UD.!g{xX~iwYq1/Ip1)may`-z8Ah6w)@^PBhKq29:y BmS`9!yeq>)Z`;RrdF');
define('NONCE_KEY',        'AU]SF5@]|Yjqft*dqC$qoahsg<#sP@X`g]m]6ci^KdIQe}|zKlOXVS~Jlh}<ussr');
define('AUTH_SALT',        'D.|:!|iC-6Jv-0DzG)_]=c1nW#7HxagkL.!eTp>uK0G*!f+efQ$sw`fxX/t[Sq/L');
define('SECURE_AUTH_SALT', '-JFJWi#E<%XQ }.`*/n,!jLkI8}]*x^6Ru`c0%4|a`AH]QPk$XA?_fjrCQHD RA:');
define('LOGGED_IN_SALT',   'FA[Y|Ue#T 3i%7IVweJ0|k_ h@T^m]X_A0|Mc<y?ceD/mW ndWsbFEsXMZ:4hQzd');
define('NONCE_SALT',       'Q3of+4HBCq3Zo`V+Kbm;`V5V?x!:@wx#1|cAH#-.#Nw)x`=riM0{QZ]/,o27z9rK');

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix  = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 * 
 * Информацию о других отладочных константах можно найти в Кодексе.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Инициализирует переменные WordPress и подключает файлы. */
require_once(ABSPATH . 'wp-settings.php');
