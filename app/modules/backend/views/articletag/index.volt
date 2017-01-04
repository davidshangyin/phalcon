<!DOCTYPE html>

<html>

<head>
    <meta charset="utf-8">
    <title>后台管理模板</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">

    <link rel="stylesheet" href="{{ static_url("plugins/layui/css/layui.css") }}">
    <link rel="stylesheet" href="{{ static_url("plugins/font-awesome-4.7.0/css/font-awesome.min.css?v=4.7.0") }}">
    <link rel="stylesheet" href="{{ static_url("backend/css/global.css") }}" media="all">

</head>

<body>
<div style="margin: 15px;">
    <blockquote class="layui-elem-quote">
        <a href="javascript:;" class="layui-btn layui-btn-small layui-btn-normal" id="add">
            <i class="fa fa-plus-circle"></i> 添加信息
        </a>
        <a href="javascript:;" class="layui-btn layui-btn-small" id="search">
            <i class="layui-icon">&#xe615;</i> 搜索
        </a>
    </blockquote>
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
        <legend>数据列表</legend>
    </fieldset>
    <table class="layui-table">
        <colgroup>
            <col width="150">
            <col width="200">
            <col>
        </colgroup>
        <thead>
        <tr>
            <th>昵称</th>
            <th>加入时间</th>
            <th>签名</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>贤心</td>
            <td>2016-11-29</td>
            <td>人生就像是一场修行</td>
        </tr>
        <tr>
            <td>贤心</td>
            <td>2016-11-29</td>
            <td>人生就像是一场修行</td>
        </tr>
        </tbody>
    </table>
</div>
</body>
</html>