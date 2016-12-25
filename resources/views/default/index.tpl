{include file='header.tpl'}
<div class="section no-pad-bot" id="index-banner">
    <div class="container">
        <br><br>
        <h1 class="header center orange-text">{$config["appName"]}</h1>
        <div class="row center">
            <h5 class="header col s12 light">轻松科学上网 保护个人隐私</h5>
            <h5 class="header col s12 light">提供基于Socks5 Proxy的隧道，可让大陆地区访问Google、Facebook、Twitter、Youtube 从国内到国外.</h5>
            <h5 class="header col s12 light">诸如Android SDK等的下载还是老牛拉破车吗？使用本服务，轻松高速下载</h5>
            {$homeIndexMsg}
        </div>
        {if $user->isLogin}
            <div class="row center">
                <a href="/user" id="download-button" class="btn-large waves-effect waves-light orange">进入用户中心</a>
            </div>
        {else}
            <div class="row center">
                <a href="/auth/register" id="download-button" class="btn-large waves-effect waves-light orange">立即注册</a>
            </div>
        {/if}
        <br><br>
    </div>
</div>


<div class="container">
    <div class="section">

        <!--   Icon Section   -->
        <div class="row">
            <div class="col s12 m4">
                <div class="icon-block">
                    <h2 class="center light-blue-text"><i class="material-icons">flash_on</i></h2>
                    <h5 class="center">高速接入</h5>

                    <p class="light">
                        优先全球机房，直连中国高速节点，中转加速千兆网络带宽，体验畅爽网路之游.

                    </p>
                </div>
            </div>

            <div class="col s12 m4">
                <div class="icon-block">
                    <h2 class="center light-blue-text"><i class="material-icons">group</i></h2>
                    <h5 class="center">贴心服务</h5>

                    <p class="light">
                        细心解答您的疑问协助您可以正常使用，保证每一位用户的售后支持.
                    </p>
                </div>
            </div>

            <div class="col s12 m4">
                <div class="icon-block">
                    <h2 class="center light-blue-text"><i class="material-icons">settings</i></h2>
                    <h5 class="center">轻松使用</h5>

                    <p class="light">
                        多平台可用，包括PC, MAC, 手机 (Android 和 iOS)和路由器(OpenWRT).
                    </p>
                </div>
            </div>
        </div>

    </div>
    <br><br>

    <a name="clients"></a>
    <section id="testimonials" class="service-item">
        <div class="container">
            <div class="center">
                <h2>客户端支持</h2>
                <p class="lead">完美运行于所有的操作平台，移动设备，电脑的客户端.<br>
                    一个账号所有设备一网打尽，真正做到：Across the Great Wall we can reach every corner in the world..</p>
            </div>
            <div class="row">
                <div class="features">
                    <div class="col-md-4 col-sm-8">
                        <div class="feature-wrap"><i class="fa fa-desktop"></i>
                            <h2>Win &amp; Mac </h2>
                            <h3>
                                <a href="{$c['win']}" class="btn btn-primary blue" target="_black">
                                    <i class="fa fa-download"></i> Win32/64</a><br>
                                <a href="{$c['mac']}" class="btn btn-primary blue" target="_black">
                                    <i class="fa fa-download"></i> Mac OS</a></h3>
                        </div>
                    </div>
                    <!--/.col-md-4-->

                    <div class="col-md-4 col-sm-8">
                        <div class="feature-wrap"><i class="fa fa-apple"></i>
                            <h2>Apple iOS</h2>
                            <h3>
                                <a href="{$c['ios']}" class="btn btn-primary blue" target="_black">
                                    <i class="fa fa-download"></i> 越狱版</a><br>
                                <a href="{$c['ios2']}" class="btn btn-primary blue" target="_black">
                                    <i class="fa fa-download"></i> AppStore</a></h3>
                        </div>
                    </div>
                    <!--/.col-md-4-->

                    <div class="col-md-4 col-sm-8">
                        <div class="feature-wrap"><i class="fa fa-android"></i>
                            <h2>Android</h2>
                            <h3>
                                <a href="{$c['android']}" class="btn btn-primary blue" target="_black">
                                    <i class="fa fa-download"></i> 版本2</a><br>
                                <a href="{$c['android2']}" class="btn btn-primary blue" target="_black">
                                    <i class="fa fa-download"></i> 版本3</a>
                            </h3>
                        </div>
                    </div>

                    <!--/.col-md-4-->
                </div>
                <!--/.services-->
            </div>
            <!--/.row-->
        </div>
        <!--/.container-->
    </section>

    <div class="section">

    </div>
</div>
{include file='footer.tpl'}
