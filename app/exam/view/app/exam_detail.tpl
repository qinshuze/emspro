{x2;include:../../../common/view/app/header}<body>{x2;include:top}<div class="container-fluid content-container">	<div class="row-fluid nav">		<div class="pep nav">			<div class="col-xs-3 title">				<ul class="list-unstyled list-inline">					<li class="nopadding"><img src="public/static/images/index_logo.jpg" /></li>				</ul>			</div>			<div class="col-xs-7">				<ul class="list-unstyled list-inline">					<li class="title">{x2;$history['ehexam']}</li>				</ul>			</div>			<div class="col-xs-2 text-right">				<a class="btn btn-default" style="margin-top: 20px;" href="javascript:history.back();"><i class="glyphicon glyphicon-chevron-left"></i> 返回  </a>			</div>		</div>	</div></div><div class="container-fluid">	<div class="row-fluid panels">		<div class="pep panels" style="position: relative">			<p class="score">{x2;eval: echo intval($history['ehscore'])}</p>			<div class="col-xs-12 nopadding">				<div class="panel panel-default pagebox border">					<div class="panel-heading bold">						试卷分析						<a class="btn btn-primary pull-right" href="index.php?exam-app-exam">正式考试</a>					</div>					<div class="panel-body">						<h1 class="text-center">{x2;$history['ehexam']}</h1>                        {x2;if:$history['ehispass']}						<h4 class="col-xs-12 text-center text-success">恭喜您通过了本次考试</h4>                        {x2;else}						<h4 class="col-xs-12 text-center text-danger">很遗憾，您未通过本次考试</h4>                        {x2;endif}						<table class="table table-bordered table-striped table-hover">							<tr>								<th>题型</th>								<th width="180">题数</th>								<th width="180">分数</th>								<th width="180">答对数</th>								<th width="180">得分</th>							</tr>                            {x2;tree:$number,num,nid}                            {x2;if:v:num}							<tr>								<td>{x2;$questypes[v:key]['questype']}</td>								<td>{x2;v:num}</td>								<td>{x2;eval: echo number_format(v:num*$history['ehsetting']['papersetting']['questype'][v:key]['score'],1)}</td>								<td>{x2;$right[v:key]}</td>								<td>{x2;eval: echo number_format($score[v:key],1)}</td>							</tr>                            {x2;endif}                            {x2;endtree}						</table>						<table class="table table-hover table-striped table-bordered">							<tr>								<th>知识点</th>								<th width="120">总题数</th>								<th width="120">得分题数</th>								<th width="120">总分数</th>								<th width="120">得分</th>								<th width="120">正确率</th>								<th width="120">得分率</th>							</tr>                            {x2;tree:$stats,stat,sid}                            {x2;if:v:stat}							<tr>								<td>{x2;v:stat['point']}</td>								<td>{x2;eval: echo intval(v:stat['number'])}</td>								<td>{x2;eval: echo intval(v:stat['right'])}</td>								<td>{x2;eval: echo intval(v:stat['score'])}</td>								<td>{x2;eval: echo intval(v:stat['rightscore'])}</td>								<td>{x2;eval: echo number_format(100 * v:stat['right']/v:stat['number'],0)}%</td>								<td>{x2;eval: echo number_format(100 * v:stat['rightscore']/v:stat['score'],0)}%</td>							</tr>                            {x2;endif}                            {x2;endtree}						</table>					</div>				</div>			</div>		</div>	</div></div>{x2;include:../../../common/view/app/footer}</body></html>