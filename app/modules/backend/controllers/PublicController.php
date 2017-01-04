<?php

namespace App\Modules\Backend\Controllers;

use App\Library\Helper;
use App\Modules\Backend\Models\Admin;
use Gregwar\Captcha\CaptchaBuilder;

class PublicController extends ControllerBase {

    // 登入
    public function signInAction () {
        if ( $this->request->isPost() ) {
            $username = $this->request->getPost( 'user_name' );
            $password = $this->request->getPost( 'user_password' );

            //$verity = $this->request->getPost( 'verity' );
            if ( !$username || !$password) {
                Helper::exitJson( 4000 , '参数不能为空' );
            }
            // 验证验证码是否正确
//            if (!$this->checkVerity($verity)){
//                Helper::exitJson( 4000 , '验证码错误' );
//            }

            $userInfo = Admin::findFirst( [
                "columns" => 'id,user_name,user_password,user_status' ,
                "user_name = ?0" ,
                "bind"    => [
                    0 => $username
                ] ,
            ] );
            if ( empty( $userInfo ) ) {
                Helper::exitJson( 4000 , '该账户不存在' );
            }

            if ( !$userInfo->user_status ) {
                Helper::exitJson( 4000 , '该账户已被管理员禁用' );
            }

            if ( !$this->security->checkHash( $password , $userInfo->user_password ) ) {
                Helper::exitJson( 4000 , '账户名或密码错误' );
            }
            unset( $userInfo->user_password );
            $this->session->set( 'userInfo' , $userInfo );
            Helper::exitJson( 2000 , 'SUCCESS' );
        }
    }

    // 登出
    public function signOutAction () {
        $this->session->destroy( 'userInfo' );
        Helper::exitJson( 2000 , 'SUCCESS' );
    }

    // 生成验证码
    public function verityAction () {
        $builder = new CaptchaBuilder();
        $builder->setBackgroundColor( 255 , 255 , 255 );
        $builder->setMaxFrontLines( 0 );
        $builder->build( $width = 130 , $height = 36 );
        $this->session->set( 'verity' , $builder->getPhrase() );
        header( 'Content-type: image/jpeg' );
        $builder->output();
    }

    // 验证验证码
    public function checkVerity ( $code = '' ) {
        if ( $this->session->get('verity') == $code ) {
            return true;
        } else {
            return false;
        }
    }
}

