<?php

use Phalcon\Mvc\Dispatcher;
use Phalcon\Mvc\Router;
use Phalcon\Mvc\Url as UrlResolver;
use Phalcon\Session\Adapter\Redis;
use Phalcon\Mvc\View\Engine\Volt as VoltEngine;

/**
 * Registering a router
 */
$di->setShared( 'router' , function () {
    $router = new Router();

    $router->setDefaultModule( 'frontend' );
    $router->setDefaultNamespace( 'App\Modules\Frontend\Controllers' );

    return $router;
} );

/**
 * The URL component is used to generate all kinds of URLs in the application
 */
$di->setShared( 'url' , function () {
    $config = $this->getConfig();

    $url = new UrlResolver();
    $url->setBaseUri( $config->application->baseUri );
    $url->setStaticBaseUri($config->application->staticUri);

    return $url;
} );

/**
 *  session 服务设置
 */
$di->setShared( 'session' , function () {
    $config = $this->getConfig();

    $session = new Redis( $config->redis->toArray() );
    $session->start();
    return $session;
} );


/**
 *  设置展示的默认 命名空间
 */
$di->setShared( 'dispatcher' , function () {
    $dispatcher = new Dispatcher();
    $dispatcher->setDefaultNamespace( 'App\Modules\Frontend\Controllers' );

    return $dispatcher;
} );
