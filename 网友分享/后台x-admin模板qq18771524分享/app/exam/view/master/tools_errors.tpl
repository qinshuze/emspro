{x2;globaltpl:ad_header}<body><div class="container-fluid">	<div class="row-fluid">		<div class="pep">			<div id="datacontent">				<div class="settingbar">					<a href="index.php?exam-master-tools" class="btn btn-default">数据清理</a>					<a href="index.php?exam-master-tools-errors" class="btn btn-primary">错题反馈</a>				</div>				<div class="panel panel-default">					<div class="panel-heading">错题反馈</div>					<div class="panel-body">						<table class="table table-bordered">							<thead>								<tr class="info">									<th width="160">科目</th>									<th width="160">时间</th>									<th width="80">试题ID</th>									<th width="120">反馈人</th>									<th>反馈内容</th>									<th width="168">操作</th>								</tr>							</thead>							<tbody>								{x2;tree:$errors['data'],error,eid}								<tr>									<td>										{x2;$subjects[v:error['ersubjectid']]['subjectname']}									</td>									<td>                                        {x2;v:error['ertime']}									</td>									<td>                                        {x2;v:error['erquestionid']}									</td>									<td>                                        {x2;v:error['erusername']}									</td>									<td>                                        {x2;v:error['erintro']}									</td>									<td>										<ul class="list-unstyled list-inline">											{x2;if:!v:error['erstatus']}											<li><a class="confirm" msg="您确定已经处理了此问题？" href="index.php?exam-master-tools-signdone&erid={x2;v:error['erid']}">标记处理</a></li>											{x2;endif}											<li><a class="ajax" msg="该操作不能恢复，确定吗？" href="index.php?exam-master-tools-gorepair&erid={x2;v:error['erid']}">修改</a></li>											<li><a class="confirm" msg="该操作不能恢复，确定吗？" href="index.php?exam-master-tools-del&erid={x2;v:error['erid']}">删除</a></li>										</ul>									</td>								</tr>								{x2;endtree}							</tbody>						</table>                        {x2;if:$errors['pages']}						<ul class="pagination pull-right">                            {x2;$errors['pages']}						</ul>                        {x2;endif}					</div>				</div>			</div>		</div>	</div></div></body></html>