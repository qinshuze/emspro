{x2;if:!$_userhash}{x2;include:../../../common/view/master/header}<body>{x2;include:../../../common/view/master/nav}<div class="container-fluid">	<div class="row-fluid">		<div class="pep">			<div class="col-xs-2 leftmenu">                {x2;include:menu}			</div>			<div class="col-xs-10" id="datacontent">				{x2;endif}				<ol class="breadcrumb">					<li><a href="index.php?{x2;$_route['app']}-master">{x2;$apps[$_route['app']]['appname']}</a></li>					<li><a href="index.php?{x2;$_route['app']}-master-lessons">课程管理</a></li>					<li><a href="index.php?{x2;$_route['app']}-master-lessons-members&lessonid={x2;$lesson['lessonid']}">{x2;$lesson['lessonname']}</a></li>					<li class="active">增加人员</li>				</ol>				<div class="panel panel-default">					<div class="panel-heading">						增加人员					</div>					<ul class="panel-body">						<form action="index.php?{x2;$_route['app']}-master-lessons-addmember&lessonid={x2;$lesson['lessonid']}" method="post" style="margin-top:10px;" class="form-inline">							<table class="table">								<tr>									<td style="border-top:0px;">										用户ID：									</td>									<td style="border-top:0px;">										<input name="search[userid]" class="form-control" size="15" type="text" class="number" value="{x2;$search['userid']}"/>									</td>									<td style="border-top:0px;">										注册时间：									</td>									<td style="border-top:0px;">										<input class="form-control datetimepicker" data-date="{x2;date:TIME,'Y-m-d'}" data-date-format="yyyy-mm-dd" type="text" name="search[stime]" size="10" id="stime" value="{x2;$search['stime']}"/> - <input class="form-control datetimepicker" data-date="{x2;date:TIME,'Y-m-d'}" data-date-format="yyyy-mm-dd" size="10" type="text" name="search[etime]" id="etime" value="{x2;$search['etime']}"/>									</td>									<td style="border-top:0px;">										用户名：									</td>									<td style="border-top:0px;">										<input class="form-control" name="search[username]" size="15" type="text" value="{x2;$search['username']}"/>									</td>								</tr>								<tr>									<td>										电子邮箱：									</td>									<td>										<input class="form-control" name="search[useremail]" size="15" type="text" value="{x2;$search['useremail']}"/>									</td>									<td>										用户组：									</td>									<td>										<select name="search[groupid]" class="form-control">											<option value="0">不限</option>                                            {x2;tree:$groups,group,gid}											<option value="{x2;v:group['groupid']}"{x2;if:$search['groupid'] == v:group['groupid']} selected{x2;endif}>{x2;v:group['groupname']}</option>                                            {x2;endtree}										</select>									</td>									<td>										<button class="btn btn-primary" type="submit">提交</button>									</td>									<td></td>								</tr>							</table>							<div class="input">								<input type="hidden" value="1" name="search[argsmodel]" />							</div>						</form>						<form action="index.php?lesson-master-lessons-addmember" method="post">							<table class="table table-hover table-bordered">								<thead>								<tr class="info">									<th width="80"><input type="checkbox" class="checkall" target="delids"/></th>									<th width="60">ID</th>									<th width="120">用户名</th>									<th width="120">姓名</th>									<th width="240">邮箱</th>									<th width="120">手机号</th>									<th width="180">用户组</th>									<th>注册时间</th>								</tr>								</thead>								<tbody>                                {x2;tree:$users['data'],user,uid}								<tr>									<td><input type="checkbox" name="delids[{x2;v:user['userid']}]" value="1"></td>									<td>{x2;v:user['userid']}</td>									<td>{x2;v:user['username']}</td>									<td>{x2;v:user['userrealname']}</td>									<td>{x2;v:user['useremail']}</td>									<td>{x2;v:user['userphone']}</td>									<td>{x2;$groups[v:user['usergroupcode']]['groupname']}</td>									<td>{x2;v:user['userregtime']}</td>								</tr>                                {x2;endtree}								</tbody>							</table>							<div class="form-group">								<button class="btn btn-primary" type="submit">提交</button>								<label class="radio-inline form-inline">									开通 &nbsp;&nbsp;<input type="text" needle="needle" msg="您必须填写开通的天数" class="form-control" name="days" size="6" value="" /> &nbsp;&nbsp;天								</label>								{x2;tree:$search,arg,sid}								<input type="hidden" name="search[{x2;v:key}]" value="{x2;v:arg}"/>								{x2;endtree}								<input type="hidden" name="lessonid" value="{x2;$lesson['lessonid']}"/>								<input type="hidden" name="addmember" value="1"/>							</div>						</form>						<ul class="pagination pull-right">                            {x2;$users['pages']}						</ul>					</div>				</div>            {x2;if:!$_userhash}			</div>		</div>	</div></div>{x2;include:../../../common/view/master/footer}</body></html>{x2;endif}