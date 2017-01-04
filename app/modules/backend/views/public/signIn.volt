<!DOCTYPE html>
<head>
    <title>后台</title>
    <link href="{{ static_url('admin/css/bootstrap.min.css') }}" rel="stylesheet">

</head>
<body>

<style>
    body {
        background-color: #c3cdda;
        background: url({{ static_url('admin/images/login_1.jpg') }}) no-repeat center center fixed;
        -webkit-background-size: cover;
        -moz-background-size: cover;
        -o-background-size: cover;
        background-size: cover;
    }

    .m-login {
        width: 340px;
        background-color: #fafafa;
        position: absolute;
        left: 50%;
        top: 50%;
        margin-left: -170px;
        margin-top: -120px;
        box-shadow: 0 0 10px #333;
        border-radius: 5px;
        padding-bottom: 15px;
        color: #666;
    }

    .m-login .login-head {
        background-color: #f0f0f0;
        height: 50px;
        line-height: 50px;
        padding-left: 10px;
        font-size: 16px;
        border-bottom: 1px solid #ebebeb;
        border-radius: 5px 5px 0px 0px;
        text-align: center;
        color: #909090;
        text-shadow: #fff 1px 1px 0px;
    }

    .form-input {
        width: 300px;
        margin: auto;
        padding-top: 10px;
    }
</style>
<div class="m-login">
    <div class="login-head"> 后台管理</div>
    <form id="login-form" action="{{ url('backend/public/signIn') }}" method="post" role="form">

        <div class="form-input">
            <div class="form-group field-loginform-username required">
                <input type="text" class="form-control" name="user_name" maxlength="256" placeholder="用户名" value="">
            </div>
            <div class="form-group field-loginform-password required">
                <input type="password" class="form-control" name="user_password"
                       maxlength="256" placeholder="密码">
            </div>

            <div class="form-group">
                <button type="submit" class="btn btn-primary u-login-btn">登录</button>
            </div>
        </div>
    </form>

</div>
<script src="{{ static_url('admin/js/jquery.min.js') }}"></script>
<script src="{{ static_url('default/js/jquery-form.js') }}"></script>
<script>
    $('#login-form').ajaxForm({
        'type': 'post',
        'success': function (res) {
            if (res.code != 2000) {
                alert(res.msg);
            } else {
                window.location.href = "{{ url('/backend/index/index') }}";
            }
        }
    });
</script>
</body>
</html>