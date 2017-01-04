<?php
/**
 * Created by PhpStorm.
 * User: david
 * Date: 2016/12/28
 * Time: 15:05
 */
namespace App\Modules\Backend\Controllers;

use App\Library\Helper;
use App\Modules\Backend\Models\Admin;

class AdminController extends ControllerBase {

    /**
     * 添加管理员信息
     */
    public function addInfoAction(){
        $username = $this->request->getPost('username');
        $password = $this->request->getPost('password');
        $phone = $this->request->getPost('phone');
        $email = $this->request->getPost('email');
        $nickname = $this->request->getPost('nickname');

        if (!$username || !$password || !$phone || !$email || !$nickname){
            Helper::exitJson(4000,'参数不能为空');
        }

        $admin = new Admin();
        $addData = $this->request->getPost();
        $addData['password'] = $this->security->hash($password);

        if ($admin->save($addData) === false){
            $messages = $admin->getMessages();
            foreach ($messages as $message) {
                echo $message, "\n";
            }
            Helper::exitJson(4000,'添加管理员失败');
        }
        Helper::exitJson(2000,'SUCCESS');


    }
}