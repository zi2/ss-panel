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
            <li><a href="/#clients">客户端下载</a></li>
            <li><a class="dropdown-button" href="#!" data-activates="tt">使用教程</a>
                <ul id="tt" class="dropdown-content" style="width: 12em;">
                    <li><a href="http://tdnet.top/2016/10/shadowsocks%E8%87%AA%E7%94%B1%E6%A2%ADwindows%E7%89%88%E6%9C%AC%E6%95%99%E7%A8%8B/"
                           target="_blank">Windows教程</a></li>
                    <li><a href="http://tdnet.top/2016/10/shadowsocks%E8%87%AA%E7%94%B1%E6%A2%ADandroid%E8%AE%BE%E7%BD%AE%E6%95%99%E7%A8%8B/"
                           target="_blank">Android教程</a></li>
                </ul>
            </li>
            <li><a href="/code">免费邀请码</a></li>
            <li><a href="https://item.taobao.com/item.htm?id=539951097575" target="_blank">￥2.88元购买</a></li>
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
        <!-- To be compatible with some old browsers(especially mobile browsers), use &#xE5D2 instead of menu. For more information visit the link below.
         http://google.github.io/material-design-icons/#using-the-icons-in-html
         -->
        <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">&#xE5D2</i></a>
    </div>
</nav>
