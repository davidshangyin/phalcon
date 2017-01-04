<?php

namespace App\Modules\Frontend\Controllers;

class IndexController extends ControllerBase {

    public function indexAction () {
        $this->flash->success('success');die;
    }
}

