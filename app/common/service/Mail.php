<?php
/**
 * Created by PhpStorm.
 * User: david
 * Date: 2016/12/30
 * Time: 10:03
 */
namespace App\Service;

use App\Library\Helper;
use Nette\Mail\Message;

class Mail {
    public static function sendMail () {
        $mail = new Message();
        $res = $mail->setFrom( 'John <john@example.com>' )
            ->addTo( 'peter@example.com' )
            ->addTo( 'jack@example.com' )
            ->setSubject( 'Order Confirmation' )
            ->setBody( "Hello, Your order has been accepted." );

        Helper::p( $res );
    }
}