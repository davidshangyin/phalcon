<?php
namespace App\Modules\Backend\Controllers;


use Phalcon\Mvc\Controller;

class ControllerBase extends Controller {
    public function initialize () {
    }

    public function checkAuth () {
        $userInfo = $this->session->get( 'userInfo' );
        $controllerName = $this->view->getControllerName();

    }
}
