{x2;include:../../../common/view/app/header}<body>{x2;include:../../../common/view/app/nav}<div class="container-fluid">	<div class="row-fluid panels">		<div class="pep panels">			<div class="col-xs-2">				{x2;include:menu}			</div>			<div class="col-xs-10 nopadding">				<div class="panel panel-default pagebox border">					<div class="panel-heading bold">						考试记录					</div>					<div class="panel-body">						<table class="table table-striped table-hover">							<tr>								<th>考试名称</th>								<th width="220">考试时间</th>								<th width="100">得分</th>								<th width="120">用时</th>								<th width="180" colspan="3">操作</th>							</tr>							{x2;tree:$histories['data'],history,sid}							<tr>								<td>                                    {x2;v:history['ehexam']}								</td>								<td>                                    {x2;v:history['ehstarttime']}								</td>								<td>                                    {x2;eval: echo intval(v:history['ehscore'])}								</td>								<td>                                    {x2;if:v:history['ehtime'] >= 60}{x2;if:v:history['ehtime']%60}{x2;eval: echo intval(v:history['ehtime']/60)+1}{x2;else}{x2;eval: echo intval(v:history['ehtime']/60)}{x2;endif}分钟{x2;else}{x2;v:history['ehtime']}秒{x2;endif}								</td>								<td width="60">									<a href="index.php?exam-app-history-detail&ehid={x2;v:history['ehid']}">分析</a>								</td>								<td width="60">                                    <a href="index.php?exam-app-history-view&ehid={x2;v:history['ehid']}">查阅</a>								</td>								<td width="60">									删除								</td>							</tr>							{x2;endtree}						</table>                        {x2;if:$histories['pages']}						<ul class="pagination pull-right">                            {x2;$histories['pages']}						</ul>                        {x2;endif}					</div>				</div>			</div>		</div>	</div></div>{x2;include:../../../common/view/app/footer}</body></html>