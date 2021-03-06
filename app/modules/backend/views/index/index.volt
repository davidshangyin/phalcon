<!DOCTYPE html>
<head>
    <title>后台</title>
    <link href="{{ static_url('admin/css/theme.min.css') }}" rel="stylesheet">
    <link href="{{ static_url('default/font-awesome/4.4.0/css/font-awesome.min.css') }}" rel="stylesheet">
    <link href="{{ static_url('admin/css/simplebootadminindex.min.css') }}" rel="stylesheet">
    <style>
        .navbar .nav_shortcuts .btn {
            margin-top: 5px;
        }

        .macro-component-tabitem {
            width: 101px;
        }

        /*-----------------导航hack--------------------*/
        .nav-list > li.open {
            position: relative;
        }

        .nav-list > li.open .back {
            display: none;
        }

        .nav-list > li.open .normal {
            display: inline-block !important;
        }

        .nav-list > li.open a {
            padding-left: 7px;
        }

        .nav-list > li .submenu > li > a {
            background: #fff;
        }

        .nav-list > li .submenu > li a > [class*="fa-"]:first-child {
            left: 20px;
        }

        .nav-list > li ul.submenu ul.submenu > li a > [class*="fa-"]:first-child {
            left: 23px;
        }

        /*----------------导航hack--------------------*/
        #think_page_trace_open {
            left: 0 !important;
            right: initial !important;
        }
    </style>

</head>


<body style="min-width:900px;" screen_capture_injected="true">

<style>
    .tab-pane {
        height: 0px
    }
</style>
<div id="loading"><i class="loadingicon"></i><span>正在加载...</span></div>
<div id="right_tools_wrapper">
    <span id="right_tools_clearcache" title="清除缓存"
          onclick="javascript:openapp('publics/clear','index_clearcache','清除缓存');"><i
                class="fa fa-trash-o right_tool_icon"></i></span>
    <span id="refresh_wrapper" title="REFRESH_CURRENT_PAGE"><i class="fa fa-refresh right_tool_icon"></i></span></div>
<!--head-->

<div class="navbar">
    <div class="navbar-inner">

        <div class="container-fluid">

            <a href="{{ url('backend/index/index') }}" class="brand">
                <small>后台管理中心</small>
            </a>
            <div class="pull-left nav_shortcuts">
                <!-- <a class="btn btn-small btn-warning" href="/" title="网站首页" target="_blank">
                    <i class="fa fa-home"></i>
                </a>
                <a class="btn btn-small btn-success" href="javascript:openapp('<?php /*echo Url('nav/index')*/?>','index_termlist','分类管理');" title="分类管理">
                    <i class="fa fa-th"></i>
                </a>
                <a class="btn btn-small btn-info" href="javascript:openapp('<?php /*echo Url('info/index')*/?>','index_postlist','文章管理');" title="文章管理">
                    <i class="fa fa-pencil"></i>
                </a
                <a class="btn btn-small btn-danger" href="javascript:openapp('<?php /*echo Url('publics/clear')*/?>','index_clearcache','清除缓存');" title="清除缓存">
                    <i class="fa fa-trash-o"></i>
                </a>-->
            </div>
            <ul id="myTabs" class="nav simplewind-nav pull-lift" style="margin-left: 48px;">
                {{ menu['menuName'] }}
            </ul>

            <ul class="nav simplewind-nav pull-right">
                <li class="light-blue">
                    <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                        <img class="nav-user-photo" width="30" height="30" src="{{ static_url('admin/images/logo-18.png') }}"
                             alt="admin">
                        <span class="user-info"> 欢迎, admin </span>
                        <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-closer">
                        <li>
                            <a href="javascript:openapp('/moban2/index.php?g=Admin&m=setting&a=site','index_site','网站信息');">
                                <i class="fa fa-cog"></i> 网站信息
                            </a>
                        </li>
                        <li>
                            <a href="javascript:openapp('/moban2/index.php?g=Admin&m=user&a=userinfo','index_userinfo','修改信息');">
                                <i class="fa fa-user"></i> 修改信息
                            </a>
                        </li>
                        <li>
                            <a href="publics/logout" data-method="post">
                                <i class="fa fa-sign-out"></i> 退出</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>
<!--head-->

<!--cantent-->
<div class="main-container container-fluid">
    <div class="sidebar" id="sidebar">
        <div class="sidebar-shortcuts" id="sidebar-shortcuts">
            <a class="btn btn-small btn-warning" href="{:url('index/index')}" title="网站首页">
                <i class="fa fa-home"></i>
            </a>
            <a class="btn btn-small btn-success"
               href="javascript:openapp('nav/index','index_termlist','分类管理');" title="分类管理">
                <i class="fa fa-th"></i>
            </a>
            <a class="btn btn-small btn-info"
               href="javascript:openapp('info/index','index_postlist','文章管理');" title="文章管理">
                <i class="fa fa-pencil"></i>
            </a>
            <a class="btn btn-small btn-danger"
               href="javascript:openapp('publics/clear','index_clearcache','清除缓存');" title="清除缓存">
                <i class="fa fa-trash-o"></i>
            </a>
        </div>
        <!--left-->
        <div class="nav_wraper">
            {{ menu['menuHtml'] }}
        </div>

        <!--left-->
    </div>
    <div class="main-content">
        <div class="breadcrumbs" id="breadcrumbs"><a id="task-pre" class="task-changebt">←</a>
            <div id="task-content">
                <ul class="macro-component-tab" id="task-content-inner">
                    <li class="macro-component-tabitem noclose" app-id="0" app-url="index/home"
                        app-name="首页"><span class="macro-tabs-item-text">首页</span></li>
                </ul>
                <div style="clear:both;"></div>
            </div>
            <a id="task-next" class="task-changebt">→</a></div>
        <div class="page-content" id="content">
            <iframe src="{{ url('backend/index/main') }}" style="width:100%;height: 100%;" frameborder="0"
                    id="appiframe-0" class="appiframe"></iframe>
        </div>
    </div>
</div>
<script src="{{ static_url('admin/js/jquery.min.js') }}"></script>

<script src="{{ static_url('admin/js/bootstrap.min.js') }}"></script>
<script src="{{ static_url('admin/js/index.js') }}"></script>
<script src="{{ static_url('admin/js/jquery-1.8.0.min.js') }}"></script>
<script>
    var ismenumin = $("#sidebar").hasClass("menu-min");
    $(".nav-list").on("click", function (event) {
        var closest_a = $(event.target).closest("a");
        if (!closest_a || closest_a.length == 0) {
            return
        }
        if (!closest_a.hasClass("dropdown-toggle")) {
            if (ismenumin && "click" == "tap" && closest_a.get(0).parentNode.parentNode == this) {
                var closest_a_menu_text = closest_a.find(".menu-text").get(0);
                if (event.target != closest_a_menu_text && !$.contains(closest_a_menu_text, event.target)) {
                    return false
                }
            }
            return
        }
        var closest_a_next = closest_a.next().get(0);
        if (!$(closest_a_next).is(":visible")) {
            var closest_ul = $(closest_a_next.parentNode).closest("ul");
            if (ismenumin && closest_ul.hasClass("nav-list")) {
                return
            }
            closest_ul.find("> .open > .submenu").each(function () {
                if (this != closest_a_next && !$(this.parentNode).hasClass("active")) {
                    $(this).slideUp(150).parent().removeClass("open")
                }
            });
        }
        if (ismenumin && $(closest_a_next.parentNode.parentNode).hasClass("nav-list")) {
            return false;
        }
        $(closest_a_next).slideToggle(150).parent().toggleClass("open");
        return false;
    });
</script>

</body>
</html>







