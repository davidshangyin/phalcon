<?php
/**
 * Created by PhpStorm.
 * User: david
 * Date: 2016/12/28
 * Time: 15:11
 */
namespace App\Modules\Backend\Models;

use Phalcon\Mvc\Model;
use Phalcon\Mvc\Model\Behavior\Timestampable;

class Admin extends Model {
    public function initialize () {
        $this->addBehavior(
            new Timestampable(
                [
                    "beforeCreate" => [
                        "field"  => ['created_time','updated_time'],
                        "format" => "Y-m-d H:i:s",
                    ],
                    'beforeUpdate' => [
                        "field"  => ['updated_time'],
                        "format" => "Y-m-d H:i:s",
                    ]
                ]
            )
        );
    }
}