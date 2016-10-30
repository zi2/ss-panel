{include file='header.tpl'}
<div class="section no-pad-bot" id="index-banner">
    <div class="container">
        <br><br>
        <div class="row center">
            <h5>邀请码实时刷新</h5>
            <h5>如遇到无邀请码请稍候，我们会经常不定期放出大量免费邀请码。</h5>
            <h5 class="text-warning alert">
                当然，<a href="https://item.taobao.com/item.htm?id=539951097575" target="_blank">立即购买</a>更简单，
                特价只要 ￥2.88元，还等什么呢？</h5>
            {$msg}
        </div>
    </div>
</div>

<div class="container">
    <div class="section">
        <!--   Icon Section   -->
        <div class="row">
            <div class="row marketing">
                <h2 class="sub-header">免费邀请码</h2>
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th>###</th>
                            <th>邀请码 (点击邀请码进入注册页面)</th>
                            <th>状态</th>
                        </tr>
                        </thead>
                        <tbody>
                        {foreach $codes as $code}
                            <tr>
                                <td>{$code->id}</td>
                                <td><a href="/auth/register?code={$code->code}">{$code->code}</a></td>
                                <td>可用</td>
                            </tr>
                        {/foreach}
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <br>
</div>
{include file='footer.tpl'}