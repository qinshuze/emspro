{x2;include:../../../common/view/master/header}<body>{x2;include:../../../common/view/master/nav}<div class="container-fluid">	<div class="row-fluid">		<div class="pep">			<div class="col-xs-2 leftmenu">                {x2;include:menu}			</div>			<div class="col-xs-10" id="datacontent">				<ol class="breadcrumb">					<li><a href="index.php?{x2;$_route['app']}-master">{x2;$apps[$_route['app']]['appname']}</a></li>					<li><a href="index.php?{x2;$_route['app']}-master-exams">考试设置</a></li>					<li><a href="index.php?{x2;$_route['app']}-master-exams-sections&subjectid={x2;$subject['subjectid']}">{x2;$subject['subjectname']}</a></li>					<li class="active">{x2;$section['sectionname']}</li>				</ol>				<div class="panel panel-default">					<div class="panel-heading">						知识点列表						<a href="index.php?exam-master-exams-addpoint&sectionid={x2;$section['sectionid']}" class="pull-right">增加</a>					</div>					<div class="panel-body">						<form action="index.php?exam-master-exams-pointconsole" method="post">							<table class="table table-hover table-bordered">								<thead>								<tr class="info">									<th width="40"><input type="checkbox" class="checkall" target="delids"/></th>									<th width="60">权重</th>									<th width="80">ID</th>									<th width="180">章节</th>									<th>备注</th>									<th width="180">操作</th>								</tr>								</thead>								<tbody>                                {x2;tree:$points['data'],point,pid}								<tr>									<td>										<input type="checkbox" name="delids[{x2;v:point['pointid']}]" value="1">									</td>									<td class="form-inline">										<input type="text" name="ids[{x2;v:point['pointid']}]" value="{x2;v:point['pointorder']}" class="orderinput"/>									</td>									<td>{x2;v:point['pointid']}</td>									<td>{x2;v:point['pointname']}</td>									<td>{x2;realsubstring:v:point['pointintro'],36}</td>									<td>										<ul class="list-unstyled list-inline">											<li><a href="index.php?exam-master-exams-refreshpoint&pointid={x2;v:point['pointid']}&page={x2;$page}{x2;$u}">刷新缓存</a></li>											<li><a href="index.php?exam-master-exams-modifypoint&pointid={x2;v:point['pointid']}&page={x2;$page}{x2;$u}">修改</a></li>                                            <li><a msg="删除后不可恢复，您确定要进行此操作吗？" class="confirm" href="index.php?exam-master-exams-delpoint&pointid={x2;v:point['pointid']}&page={x2;$page}{x2;$u}">删除</a></li>										</ul>									</td>								</tr>                                {x2;endtree}								</tbody>							</table>							<div class="form-group">								<div class="controls">									<label class="radio-inline">										<input type="radio" name="action" value="modify" checked/>排序									</label>									<label class="radio-inline">										<input type="radio" name="action" value="delete" />删除									</label>									{x2;tree:$search,arg,sid}									<input type="hidden" name="search[{x2;v:key}]" value="{x2;v:arg}"/>                                    {x2;endtree}									<label class="radio-inline">										<button class="btn btn-primary" type="submit">提交</button>									</label>								</div>							</div>						</form>						{x2;if:$points['pages']}						<ul class="pagination pull-right">                            {x2;$points['pages']}						</ul>						{x2;endif}					</div>				</div>			</div>		</div>	</div></div>{x2;include:../../../common/view/master/footer}</body></html>