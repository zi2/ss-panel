{include file='admin/main.tpl'}

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            用户列表
            <small>User List</small>
        </h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <form class="form-inline">
            <div class="form-group">
                <label class="control-label">邮箱</label>
                <input class="form-control" type="text" name="email" value="{if isset($form['email'])}{$form['email']}{/if}"/>
            </div>
            <div class="form-group">
                <label class="control-label">用户组</label>
                <input class="form-control" type="text" name="group" value="{if isset($form['group'])}{$form['group']}{/if}"/>
            </div>
            <label><input type="checkbox" name="enable" value="1" {if isset($form['enable'])}checked{/if}>仅有效</label>
            <button class="btn btn-primary" type="submit">查询</button>
        </form>
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-body table-responsive no-padding">
                        {$users->appends($form)->render()}
                        <table class="table table-hover">
                            <tr>
                                <th>ID</th>
                                <th>邮箱</th>
                                <th>端口</th>
                                <th>状态</th>
                                <th>加密方式</th>
                                <th>已用流量/总流量</th>
                                <th>最后在线时间</th>
                                <th>最后签到时间</th>
                                <th>注册时间</th>
                                <th>注册IP</th>
                                <th>邀请者</th>
                                <th>操作</th>
                            </tr>
                            {foreach $users as $user}
                                <tr>
                                    <td>#{$user->id}</td>
                                    <td>{$user->email}</td>
                                    <td>{$user->port}</td>
                                    <td>{$user->enable}</td>
                                    <td>{$user->method}</td>
                                    <td>{$user->usedTraffic()}/{$user->enableTraffic()}</td>
                                    <td>{$user->lastSsTime()}</td>
                                    <td>{$user->lastCheckInTime()}</td>
                                    <th>{$user->reg_date}</th>
                                    <th>{$user->reg_ip}</th>
                                    <th>{$user->ref_by}</th>
                                    <td>
                                        <a class="btn btn-info btn-sm" href="/admin/user/{$user->id}/edit">编辑</a>
                                        <a class="btn btn-danger btn-sm delete" id="delete" data-id="{$user->id}" href="">删除</a>
                                    </td>
                                </tr>
                            {/foreach}
                        </table>
                        {$users->render()}
                    </div><!-- /.box-body -->
                </div><!-- /.box -->
            </div>
        </div>

    </section><!-- /.content -->
</div><!-- /.content-wrapper -->


<script>
    $(document).ready(function () {
        function del(e) {
            $.ajax({
                type: "DELETE",
                url: "/admin/user/"+$(e.target).data('id'),
                dataType: "json",
                data: {
                    name: $(e.target).data('id')
                },
                success: function (data) {
                    if (data.ret) {
                        $("#msg-error").hide(100);
                        $("#msg-success").show(100);
                        $("#msg-success-p").html(data.msg);
                        //window.setTimeout("location.href='/admin/user'", 2000);
                        $(e.target).closest("tr").remove();
                    } else {
                        $("#msg-error").hide(10);
                        $("#msg-error").show(100);
                        $("#msg-error-p").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#msg-error").hide(10);
                    $("#msg-error").show(100);
                    $("#msg-error-p").html("发生错误：" + jqXHR.status);
                }
            });
        };
        $("html").keydown(function (event) {
            if (event.keyCode == 13) {
                login();
            }
        });
        $(document.body).on('click', 'a.delete', function (e) {
            e.preventDefault();
            confirm('确定删除？') && del(e);
        });
        $("#ok-close").click(function () {
            $("#msg-success").hide(100);
        });
        $("#error-close").click(function () {
            $("#msg-error").hide(100);
        });
    })
</script>

{include file='admin/footer.tpl'}