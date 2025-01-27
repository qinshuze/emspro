{x2;include:../../../common/view/app/header}
<body>
{x2;include:top}
<div class="container-fluid">
	<div class="row-fluid nav">
		<div class="pep nav">
			<div class="col-xs-3 title">
				<ul class="list-unstyled list-inline">
					<li class="nopadding"><img src="public/static/images/index_logo.jpg" /></li>
				</ul>
			</div>
			<div class="col-xs-7">
				<ul class="list-unstyled list-inline">
					<li class="title">{x2;$history['ehexam']}</li>
				</ul>
			</div>
			<div class="col-xs-2 text-right">
				<a class="btn btn-default" style="margin-top: 20px;" href="javascript:history.back();"><i class="glyphicon glyphicon-chevron-left"></i> 返回  </a>
			</div>
		</div>
	</div>
</div>
<div class="container-fluid">
	<div class="row-fluid panels">
		<div class="pep panels" style="position: relative">
			<p class="score">{x2;eval: echo intval($history['ehscore'])}</p>
			<div class="col-xs-2">
                {x2;include:menu}
			</div>
			<div class="col-xs-10 nopadding">
				<div class="panel panel-default pagebox border">
					<div class="panel-heading bold">
						主观题评分
					</div>
					<div class="panel-body">
						<form action="index.php?exam-app-history-decide" method="post" class="form-horizontal">
                            {x2;eval: v:oid = 0}
                            {x2;tree:$questypes,quest,qid}
                            {x2;eval: v:oid++}
                            {x2;if:$needdecide[v:quest['questcode']]}
                            {x2;if:$history['ehquestion']['questions'][v:quest['questcode']] || $history['ehquestion']['questionrows'][v:quest['questcode']]}
							<h4>{x2;v:quest['questype']}</h4>
                            {x2;eval: v:tid = 0}
                            {x2;if:v:quest['questsort']}
                            {x2;tree:$history['ehquestion']['questions'][v:quest['questcode']],question,qnid}
                            {x2;eval: v:tid++}
							<table class="table table-hover table-bordered">
								<tr class="info">
									<td style="width:120px;">第{x2;v:tid}题</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td>标题：</td>
									<td>{x2;realhtml:v:question['question']}</td>
								</tr>
								<tr>
									<td>标准答案：</td>
									<td>{x2;realhtml:v:question['questionanswer']}</td>
								</tr>
								<tr>
									<td>考生答案：</td>
									<td>{x2;realhtml:$history['ehuseranswer'][v:question['questionid']]}</td>
								</tr>
								<tr>
									<td colspan="2" class="form-inline">【请根据参考答案给出分值】<input size="8" class="form-control" type="text" needle="needle" msg="您必须给出一个分数" name="score[{x2;v:question['questionid']}]" value=""> <span>提示：本题共{x2;$history['ehsetting']['papersetting']['questype'][v:quest['questcode']]['score']}分，可输入0.5的倍数。</span></td>
								</tr>
							</table>
                            {x2;endtree}
                            {x2;endif}
                            {x2;tree:$history['ehquestion']['questionrows'][v:quest['questcode']],rowsquestion,qrid}
                            {x2;eval: v:tid++}
                            {x2;tree:v:rowsquestion['data'],question,cqid}
                            {x2;if:$questypes[v:question['questiontype']]['questsort']}
							<table class="table table-hover table-bordered">
								<tr>
									<td>
										<table class="table">
											<tr class="info">
												<td>第{x2;v:tid}题</td>
											</tr>
											<tr>
												<td>{x2;realhtml:v:rowsquestion['qrquestion']}</td>
											</tr>
										</table>
										<table class="table" width="96%">
											<tr class="info">
												<td style="width:120px;">第{x2;v:cqid}小题</td>
												<td>&nbsp;</td>
											</tr>
											<tr>
												<td>标题：</td>
												<td>{x2;eval: echo strip_tags(html_entity_decode(v:question['question']))}</td>
											</tr>
											<tr>
												<td>标准答案：</td>
												<td>{x2;realhtml:v:question['questionanswer']}</td>
											</tr>
											<tr>
												<td>考生答案：</td>
												<td>{x2;realhtml:$history['ehuseranswer'][v:question['questionid']]}&nbsp;</td>
											</tr>
											<tr>
												<td colspan="2" class="form-inline">【请根据参考答案给出分值】<input size="8" class="form-control" needle="needle" msg="您必须给出一个分数" type="text" name="score[{x2;v:question['questionid']}]" value=""> <span>提示：本题共{x2;$history['ehsetting']['papersetting']['questype'][v:quest['questcode']]['score']}分，可输入0.5的倍数。</span></td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
                            {x2;endif}
                            {x2;endtree}
                            {x2;endtree}
                            {x2;endif}
                            {x2;endif}
                            {x2;endtree}
							<div class="form-group">
								<div class="text-center">
									<input type="hidden" name="makedecide" value="1" />
									<input type="hidden" name="ehid" value="{x2;$history['ehid']}" />
									<button class="btn btn-primary" type="submit">评分完毕</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
{x2;include:../../../common/view/app/footer}
</body>
</html>