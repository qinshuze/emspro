{x2;include:header}<body>{x2;include:nav}<div class="container-fluid">	<div class="row-fluid">		<div class="pep">			<div class="col-xs-2 leftmenu">				{x2;include:menu}			</div>			<div class="col-xs-10" id="datacontent">				<ol class="breadcrumb">					<li><a href="index.php?{x2;$_route['app']}-master">{x2;$apps[$_route['app']]['appname']}</a></li>					<li><a href="index.php?{x2;$_route['app']}-master-database">分库管理</a></li>					<li><a href="index.php?{x2;$_route['app']}-master-database-tables&dbid={x2;$dbid}">数据表</a></li>					<li class="active">字段</li>				</ol>				<div class="panel panel-default">					<div class="panel-heading">字段（{x2;$table}）</div>					<div class="panel-body">						<table class="table table-striped table-bordered">							<tr>								<th width="160">字段名</th>								<th width="120">索引</th>								<th width="200">数据类型</th>								<th width="160">存储格式</th>								<th>备注</th>								<th width="100">操作</th>							</tr>							{x2;if:$fields}							{x2;tree:$fields,field,fid}							<tr>                                <td>{x2;v:field['Field']}</td>								<td>{x2;v:field['Key']}</td>								<td>{x2;v:field['Type']}</td>								<td>{x2;$intros[v:field['Field']]['dbformat']}</td>								<td>{x2;$intros[v:field['Field']]['dbintro']}</td>								<td>									<ul class="list-unstyled list-inline">										<li><a href="index.php?{x2;$_route['app']}-master-database-setting&dbid={x2;$dbid}&table={x2;$table}&field={x2;v:field['Field']}">设置</a></li>									</ul>								</td>							</tr>							{x2;endtree}							{x2;else}							<tr>								<td colspan="6">表不存在或该表下无字段</td>							</tr>							{x2;endif}						</table>					</div>				</div>			</div>		</div>	</div></div>{x2;include:footer}</body></html>