<?php
/*
 * Modified: preppend directory path of current file, because of this file own different ENV under between Apache and command line.
 * NOTE: please remove this comment.
 */
defined( 'BASE_PATH' ) || define( 'BASE_PATH' , getenv( 'BASE_PATH' ) ?: realpath( dirname( __FILE__ ) . '/../..' ) );
defined( 'APP_PATH' ) || define( 'APP_PATH' , BASE_PATH . '/app' );

return new \Phalcon\Config( [
    'version' => '1.0' ,

    'database' => [
        'adapter'  => 'Mysql' ,
        'host'     => '127.0.0.1' ,
        'username' => 'root' ,
        'password' => '123456' ,
        'dbname'   => 'wsy1' ,
        'charset'  => 'utf8' ,
    ] ,

    'application' => [
        'appDir'        => APP_PATH . '/' ,
        'modelsDir'     => APP_PATH . '/common/models/' ,
        'migrationsDir' => APP_PATH . '/migrations/' ,
        'cacheDir'      => BASE_PATH . '/cache/' ,
        'baseUri'       => '/' ,
        'staticUri'     => '/static/'
    ] ,

    'redis' => [
        'uniqueId'   => 'wsy1' ,
        'host'       => '127.0.0.1' ,
        'port'       => 6379 ,
        //'auth'       => '' ,
        'persistent' => false ,
        'lifetime'   => 3600 * 24 * 7 ,
        'prefix'     => 'wsy1_backend_' ,
        'index'      => 0 ,   // 选择redis 数据库
    ],

    /**
     * if true, then we print a new line at the end of each CLI execution
     *
     * If we dont print a new line,
     * then the next command prompt will be placed directly on the left of the output
     * and it is less readable.
     *
     * You can disable this behaviour if the output of your application needs to don't have a new line at end
     */
    'printNewLine' => true
] );
