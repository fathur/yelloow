<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'yelloow');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'eEzae`t1@tBnzMZpGQV_!QM?C?r19S#s~mX[OJGj-+4E<}AaM1N4uZ8ZK/7Asa4~');
define('SECURE_AUTH_KEY',  '3u9,T$*u,xxQd.BfD4aws?55uec/kl*;L[ba{=f1hQ3`(#>#,D%Y$exGo[aI}C>x');
define('LOGGED_IN_KEY',    '6.4rTlb) F/51iv0C}p.|C:`n,,csm%)40~OfK|4 kdXHMd,^us9@[^p{7)9h (B');
define('NONCE_KEY',        '%Zf])W-k<Quclr*C,/gN?8<z Ccq2^pj?Hz{EK/#^4q$P#Rh/cVKR<G20s#0[p B');
define('AUTH_SALT',        'cj/RG6=QB7s-RO2P%NHt7;E[ufNsQi%|DRTV4wC~fY61y=t0f.Qz:o5|oSeQzK:4');
define('SECURE_AUTH_SALT', 'L02)E&}iTYPA(Si0.i$!cr)i3wQ>O{zJeZK{lt$91vwQKkNqom]dN#Rc1_+%4flY');
define('LOGGED_IN_SALT',   '`:Tn)2/GO05<iW?Bw.+2x8$-RAL?LP4%lV9u@?HaZeMMf,CWvTSzS3Cpxu^6jC}/');
define('NONCE_SALT',       '5Z-v2?{PI8{`n^p!WF]5Z8fA;AY mi6SPE7jp9Yd>0ELyAZ+b$I&.6v8W#kp}7!H');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'yl_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
