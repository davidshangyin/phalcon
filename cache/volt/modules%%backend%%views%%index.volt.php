<!doctype html>
<html lang="zh-CN">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport"
              content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Document</title>
        <link rel="stylesheet" href="/static/plugins/layui/css/layui.css">
    </head>
    <body>
        <div class="layui-layout layui-layout-admin">
            <?= $this->getContent() ?>
        </div>
        <script src="/static/plugins/layui/layui.js"></script>
        <script>
            layui.use('element', function(){
                var element = layui.element(); //导航的hover效果、二级菜单等功能，需要依赖element模块

                //监听导航点击
                element.on('nav(demo)', function(elem){
                    //console.log(elem)
                    layer.msg(elem.text());
                });
            });
        </script>
    </body>
</html>
