<?php
/**
 * As configurações básicas do WordPress
 *
 * O script de criação wp-config.php usa esse arquivo durante a instalação.
 * Você não precisa usar o site, você pode copiar este arquivo
 * para "wp-config.php" e preencher os valores.
 *
 * Este arquivo contém as seguintes configurações:
 *
 * * Configurações do MySQL
 * * Chaves secretas
 * * Prefixo do banco de dados
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Configurações do MySQL - Você pode pegar estas informações com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define( 'DB_NAME', 'icea-lp' );

/** Usuário do banco de dados MySQL */
define( 'DB_USER', 'root' );

/** Senha do banco de dados MySQL */
define( 'DB_PASSWORD', '' );

/** Nome do host do MySQL */
define( 'DB_HOST', 'localhost' );

/** Charset do banco de dados a ser usado na criação das tabelas. */
define( 'DB_CHARSET', 'utf8mb4' );

/** O tipo de Collate do banco de dados. Não altere isso se tiver dúvidas. */
define( 'DB_COLLATE', '' );

/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las
 * usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org
 * secret-key service}
 * Você pode alterá-las a qualquer momento para invalidar quaisquer
 * cookies existentes. Isto irá forçar todos os
 * usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '.yo_~Pq*9hW<m)aj%hlqwU-AhHP L|M./%fxW]{^KIA9_zW/{w/h>i),^>r!X%Bn' );
define( 'SECURE_AUTH_KEY',  '02g#rrN[dtvt>a#q/JWpb/<~JOZxQUc<;MpO7z`}XM%Iaa:>2GOxKbFb#~dP%l*F' );
define( 'LOGGED_IN_KEY',    'X){$3aaFV9=EV[v>S+.O}=<uR~iOW{j&R?`+B :}:pk{xV[#[wsJrf@fDl,7%xB^' );
define( 'NONCE_KEY',        '-fd?%+<W+l}+rh7fgVb9znU)#.l5,2PR,YTqv,6[iI,tGcb$a|?XKI-fH-dz!,:A' );
define( 'AUTH_SALT',        '9 A.nir}9,yVwN,gyhKK}*5Z]FLZRgeq{Rj6beyjjeqzNJy%0TC[S{Lmo$$*Sp4;' );
define( 'SECURE_AUTH_SALT', 'gpe8#^]BboIX4M$AvgB?c^dM%1#Z*i&c3xcWpW^ic~WcZD:3XKR0$>m]Nyo$e{R*' );
define( 'LOGGED_IN_SALT',   'Sci<S-xT7q5%CaoQ&YhLfBub6[d5J]38372$-L*ve |>{p%wcZXK}v)V9D$sB~dM' );
define( 'NONCE_SALT',       '(hThaE_O7ECpzV`OiE=A4Ri*2o_]fs{[^ZEwG|;9scmB?|]4PgqQyv haS5lG;GS' );

/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der
 * um prefixo único para cada um. Somente números, letras e sublinhados!
 */
$table_prefix = 'icea_lp_';

/**
 * Para desenvolvedores: Modo de debug do WordPress.
 *
 * Altere isto para true para ativar a exibição de avisos
 * durante o desenvolvimento. É altamente recomendável que os
 * desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 *
 * Para informações sobre outras constantes que podem ser utilizadas
 * para depuração, visite o Codex.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Configura as variáveis e arquivos do WordPress. */
require_once ABSPATH . 'wp-settings.php';
