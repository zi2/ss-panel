<?php

namespace App\Controllers\Admin;

use App\Controllers\AdminController;
use App\Models\User;
use App\Utils\Hash;
use App\Utils\Tools;

class UserController extends AdminController
{
    public function index($request, $response, $args) {
        $pageNum = 1;
        if (isset($request->getQueryParams()["page"])) {
            $pageNum = $request->getQueryParams()["page"];
        }
        $form = $request->getQueryParams();
        $users = User::whereRaw("1=1");
        foreach (['email', 'group','enable'] as $k) {
            $users = $users->when(isset($form[$k]) && trim($form[$k]) != '', function ($q) use ($k, $form) {
                return $q->where($k, $form[$k]);
            });
        }
        $form['page'] = $pageNum;
        $users = $users->when(!empty($form['order']), function ($q) use ($form) {
            return $q->orderBy($form['order'], 'desc');
        })
            ->paginate(15, ['*'], 'page', $pageNum);
        $users->setPath('/admin/user');
        return $this->view()->assign('users', $users)->assign('form', $form)->display('admin/user/index.tpl');
    }

    public function edit($request, $response, $args) {
        $id = $args['id'];
        $user = User::find($id);
        if ($user == null) {

        }
        return $this->view()->assign('user', $user)->display('admin/user/edit.tpl');
    }

    public function update($request, $response, $args) {
        $id = $args['id'];
        $user = User::find($id);

        $user->email = $request->getParam('email');
        $user->transfer_enable = Tools::toGB($request->getParam('transfer_enable'));
        $user->group = $request->getParam('group');

        if ($request->getParam('action') == 'reset') {
            $user->u = 0;
            $user->d = 0;
            if (!empty($request->getParam('extend')))
                $user->expire_time = date_add(new \DateTime(date('y-m-d H:i:s', max($user->expire_time, time()))), new \DateInterval('P1M'))->getTimestamp();
        } else {
            if ($request->getParam('pass') != '') {
                $user->pass = Hash::passwordHash($request->getParam('pass'));
            }
            if ($request->getParam('passwd') != '') {
                $user->passwd = $request->getParam('passwd');
            }
            $user->expire_time = strtotime($request->getParam('expire_time'));
            $user->port = $request->getParam('port');
            $user->invite_num = $request->getParam('invite_num');
            $user->method = $request->getParam('method');
            $user->enable = $request->getParam('enable');
            $user->is_admin = $request->getParam('is_admin');
            $user->ref_by = $request->getParam('ref_by');
        }

        if (!$user->save()) {
            $rs['ret'] = 0;
            $rs['msg'] = "修改失败";
            return $response->getBody()->write(json_encode($rs));
        }
        $rs['ret'] = 1;
        $rs['msg'] = "修改成功";
        return $response->getBody()->write(json_encode($rs));
    }

    public function delete($request, $response, $args) {
        $id = $args['id'];
        $user = User::find($id);
        if (!$user->delete()) {
            $rs['ret'] = 0;
            $rs['msg'] = "删除失败";
            return $response->getBody()->write(json_encode($rs));
        }
        $rs['ret'] = 1;
        $rs['msg'] = "删除成功";
        return $response->getBody()->write(json_encode($rs));
    }

    public function deleteGet($request, $response, $args) {
        $id = $args['id'];
        $user = User::find($id);
        $user->delete();
        $newResponse = $response->withStatus(302)->withHeader('Location', '/admin/user');
        return $newResponse;
    }
}