<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'user_db' );

/** MySQL database password */
define( 'DB_PASSWORD', 'mypass' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */

define('AUTH_KEY',         'YcpMk_(;tK7/u.fFx:N<cN*<;+qFtS{qEr-ix7-ITmd+q;rC/]ih57N,-CDpL$6|');
define('SECURE_AUTH_KEY',  '{6Y6?v&8$r|;mFle)hvpifpi=tlO3,NAkfhik,AdlJ/?FU}Q$7V6zEbpNUq%t&kb');
define('LOGGED_IN_KEY',    '0tD-8cRd4M-WP:dc7I[V(u},U++[|g!-x~Qy5FpMlu_IS(2l*[Z<S%lr>X/GFFW6');
define('NONCE_KEY',        'bNPKw#|ea4y^fU!t@j%V KxV7B18CO ).clr ;M-&eG9?X_|G_T],g)_OC.v|jf8');
define('AUTH_SALT',        'nJ}Eb$m~lAZ8e7uKp6FiCb)k%XNel[t$BCfT9-u5@nRHIdIelCHS7JmU<{mIErlV');
define('SECURE_AUTH_SALT', 'g`p1&!hVsK-c|fbqn:=;}i$ lOu&Z` ]n]^?rd-$UP6MGRVNjC%T@+w;pYA-`-0b');
define('LOGGED_IN_SALT',   'lDnigh+W+0[eBK2~0@1MH4bP+]-GB)d+%qfxUI&| +[XETp}EC3BVeWV$V8{.kPg');
define('NONCE_SALT',       'h<-,0FEsI8nwl%[w~)./#8.fL;_jQF}vfLhGc7,B/XcOA2y5vbf g1X7D&Axz*%X');
	

// define( 'AUTH_KEY',         'put your unique phrase here' );
// define( 'SECURE_AUTH_KEY',  'put your unique phrase here' );
// define( 'LOGGED_IN_KEY',    'put your unique phrase here' );
// define( 'NONCE_KEY',        'put your unique phrase here' );
// define( 'AUTH_SALT',        'put your unique phrase here' );
// define( 'SECURE_AUTH_SALT', 'put your unique phrase here' );
// define( 'LOGGED_IN_SALT',   'put your unique phrase here' );
// define( 'NONCE_SALT',       'put your unique phrase here' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';