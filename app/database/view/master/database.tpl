{x2;include:../../../common/view/master/header}<body>{x2;include:../../../common/view/master/nav}<div class="container-fluid">	<div class="row-fluid">		<div class="pep">			<div class="col-xs-2 leftmenu">				{x2;include:menu}			</div>			<div class="col-xs-10" id="datacontent">				<ol class="breadcrumb">					<li><a href="index.php?{x2;$_route['app']}-master">{x2;$apps[$_route['app']]['appname']}</a></li>					<li class="active">分库管理</li>				</ol>				<div class="panel panel-default">					<div class="panel-heading">分库管理</div>					<div class="panel-body">						<table class="table table-striped table-bordered">							<tr>								<th width="160">主机名</th>								<th width="160">库名</th>								<th width="120">表前缀</th>								<th>备注</th>								<th width="80">操作</th>							</tr>							{x2;tree:$databases,db,did}							<tr>								<td>{x2;v:db['host']}</td>								<td>{x2;v:db['name']}</td>								<td>{x2;v:db['prefix']}</td>								<td>{x2;v:db['intro']}</td>								<td>									<ul class="list-unstyled list-inline">										<li><a href="index.php?{x2;$_route['app']}-master-database-tables&dbid={x2;v:key}">数据表</a></li>									</ul>								</td>							</tr>							{x2;endtree}						</table>					</div>				</div>			</div>		</div>	</div></div>{x2;include:../../../common/view/master/footer}</body></html>