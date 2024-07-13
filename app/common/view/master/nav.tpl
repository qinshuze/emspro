<div class="container-fluid">
    <div class="row-fluid header">
        <div class="pep">
            <div class="col-xs-2 logo">
                考试系统后台
            </div>
            {x2;if:$_user['userid']}
            <div class="col-xs-9">
                <ul class="list-unstyled list-inline">
                    <!--<a href="index.php?core-master">
                        <li class="col-xs-1 active">
                            主页
                        </li>
                    </a> -->
                    {x2;if:$apps['user']['appsetting']['managemodel']}
                    {x2;tree:$apps,app,aid}
                    {x2;if:v:app['appstatus'] && v:app['appcode'] != 'core' && in_array(v:app['appcode'],$_user['manager_apps'])}
                    <li class="col-xs-1 {x2;if:$_route['app'] == v:app['appcode']} active{x2;endif}">
                        <a href="index.php?{x2;v:app['appcode']}-master">{x2;v:app['appname']}</a>
                    </li>
                    {x2;endif}
                    {x2;endtree}
                    {x2;else}
                    {x2;tree:$apps,app,aid}
                    {x2;if:v:app['appstatus']}
                    <li class="col-xs-1{x2;if:$_route['app'] == v:app['appcode']} active{x2;endif}">
                        <a href="index.php?{x2;v:app['appcode']}-master">{x2;v:app['appname']}</a>
                    </li>
                    {x2;endif}
                    {x2;endtree}
                    {x2;endif}
                </ul>
            </div>
            <div class="col-xs-1" style="padding-top: 0.6rem;">
                <a href="index.php?core-master-login-logout" class="ajax">退出登陆</a>
            </div>
            {x2;endif}
        </div>
    </div>
</div>