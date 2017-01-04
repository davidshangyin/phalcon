<?php
namespace App\Library;
/**
 * Created by PhpStorm.
 * User: david
 * Date: 2016/12/28
 * Time: 13:38
 */
class Helper {
    /**
     * @param string $code 状态码
     * @param string $msg  提示信息
     * @param array $res  输出结果
     */
    public static function exitJson ( $code = '' , $msg = '' , $res = [] ) {
        header( "Content-type: application/json; charset=utf-8" );
        $data = [
            'code' => (int)$code ,
            'msg'  => $msg ,
            'res'  => $res
        ];
        echo json_encode( $data );
        exit();
    }

    /**
     * @param $var
     * @param bool $echo
     * @param null $label
     * @param bool $strict
     *
     * @return mixed|null|string
     */
    public static function p ( $var , $echo = true , $label = null , $strict = true ) {
        $label = ( $label === null ) ? '' : rtrim( $label ) . ' ';
        if ( !$strict ) {
            if ( ini_get( 'html_errors' ) ) {
                $output = print_r( $var , true );
                $output = '<pre>' . $label . htmlspecialchars( $output , ENT_QUOTES ) . '</pre>';
            } else {
                $output = $label . print_r( $var , true );
            }
        } else {
            ob_start();
            echo '<pre>';
            var_dump( $var );
            $output = ob_get_clean();
            if ( !extension_loaded( 'xdebug' ) ) {
                $output = preg_replace( '/\]\=\>\n(\s+)/m' , '] => ' , $output );
                $output = '<pre>' . $label . htmlspecialchars( $output , ENT_QUOTES ) . '</pre>';
            }
        }
        echo '<pre>';
        if ( $echo ) {
            echo( $output );

            return null;
        } else {
            return $output;
        }
    }
}