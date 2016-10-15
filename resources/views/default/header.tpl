<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
    <title>{$config["appName"]}</title>
    <link href="//cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.css" rel="stylesheet">
    <link href="//fonts.lug.ustc.edu.cn/icon?family=Material+Icons" rel="stylesheet">
    <link href="/assets/materialize/css/materialize.min.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    <link href="/assets/materialize/css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    <link href="//cdn.bootcss.com/font-awesome/4.6.3/css/font-awesome.css" rel="stylesheet">
</head>
<body>
<nav class="light-blue lighten-1" role="navigation">
    <div class="nav-wrapper container"><a id="logo-container" href="/" class="brand-logo">{$config["appName"]}</a>
        <ul class="right hide-on-med-and-down">
            <li><a href="/">首页</a></li>
            <li><a href="#clients">客户端下载</a></li>
            <li><a href="http://www.shadowto.com/guide">使用教程</a></li>
            <li><a href="/code">免费邀请码</a></li>
            {if $user->isLogin}
                <li><a href="/user">用户中心</a></li>
                <li><a href="/user/logout">退出</a></li>
            {else}
                <li><a href="/auth/login">登录</a></li>
                <li><a href="/auth/register">注册</a></li>
            {/if}

        </ul>

        <ul id="nav-mobile" class="side-nav">
            <li><a href="/">首页</a></li>
            <li><a href="https://pan.baidu.com/s/1eRNImuI">客户端下载</a></li>
            <li><a href="/code">免费邀请码</a></li>
            {if $user->isLogin}
                <li><a href="/user">用户中心</a></li>
                <li><a href="/user/logout">退出</a></li>
            {else}
                <li><a href="/auth/login">登录</a></li>
                <li><a href="/auth/register">注册</a></li>
            {/if}
        </ul>
        <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
    </div>
</nav>
