<footer class="page-footer orange">
    <div class="container">
        <div class="row">
            <div class="col l6 s12">
                <h5 class="white-text">关于我们</h5>
                <p class="grey-text text-lighten-4">本站提供某种服务用于科学上网，见识世界。</p>

            </div>
            <div class="col l3 s12">
                <h5 class="white-text">用户中心</h5>
                <ul>
                    {if $user->isLogin}
                        <li><a class="white-text" href="/user">用户中心</a></li>
                        <li><a class="white-text" href="/user/logout">退出</a></li>
                    {else}
                        <li><a class="white-text" href="/auth/login">登录</a></li>
                        <li><a class="white-text" href="/auth/register">注册</a></li>
                    {/if}
                </ul>
            </div>
            <div class="col l3 s12">
                <h5 class="white-text">公共服务</h5>
                <ul>
                    <li><a class="white-text" href="/code">免费邀请码</a></li>
                    <li><a class="white-text" href="/tos">TOS</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer-copyright">
        <div class="container">
            &copy; {$config["appName"]} Powered by <a class="orange-text text-lighten-3"
                                                      href="https://github.com/orvice/ss-panel">ss-panel</a> {$config["version"]}
            Theme by <a class="orange-text text-lighten-3" href="http://materializecss.com">Materialize</a>
        </div>
        <div style="display:none;">
            {$analyticsCode}
        </div>
    </div>
</footer>


<!--  Scripts-->
<script src="/assets/public/js/jquery.min.js"></script>
<script src="/assets/materialize/js/materialize.min.js"></script>
<script src="/assets/materialize/js/init.js"></script>

</body>
</html>
