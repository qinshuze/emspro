{x2;if:!$_userhash}{x2;include:header}<body>{x2;include:nav}<div class="container-fluid">	<div class="row-fluid">		<div class="pep">			<div class="col-xs-2 leftmenu">                {x2;include:menu}			</div>			<div class="col-xs-10" id="datacontent">				{x2;endif}				<ol class="breadcrumb">					<li><a href="index.php?{x2;$_route['app']}-master">{x2;$apps[$_route['app']]['appname']}</a></li>					<li><a href="index.php?{x2;$_route['app']}-master-exams">考试设置</a></li>					<li><a href="index.php?{x2;$_route['app']}-master-exams-questionrows">{x2;$subject['subjectname']}</a></li>					<li class="active">子题列表</li>				</ol>				<div class="settingbar">					<a href="index.php?exam-master-exams-questions" class="btn{x2;if:$_route['selection'] == 'questions'} btn-primary{x2;else} btn-default{x2;endif}">普通试题</a>					<a href="index.php?exam-master-exams-questionrows" class="btn btn-primary">题帽题</a>					<a href="index.php?exam-master-exams-importquestions" class="btn{x2;if:$_route['selection'] == 'importquestions'} btn-primary{x2;else} btn-default{x2;endif}">批量导入</a>				</div>				<div class="panel panel-default">					<div class="panel-heading">						子题列表						<a href="index.php?exam-master-exams-addchildquestion&qrid={x2;$questionrows['qrid']}" class="pull-right">增加</a>					</div>					<ul class="panel-body">						<form action="index.php?exam-master-exams-orderchildquestion" method="post">							<table class="table table-hover">								<thead>									<tr>										<td width="100">所属知识点：</td>										<td>{x2;tree:$questionrows['qrpoints'],point,pid}{x2;$points[v:point]['pointname']}{x2;endtree}&nbsp;&nbsp;</td>									</tr>								</thead>								<tr>									<td>题帽：</td>									<td>{x2;eval: echo html_entity_decode($questionrows['qrquestion'])}</td>								</tr>							</table>							<table class="table table-hover table-bordered">								<thead>								<tr class="info">									<th width="36">ID</th>									<th width="48">排序</th>									<th width="120">试题类型</th>									<th>试题内容</th>									<th width="120">操作</th>								</tr>								</thead>								<tbody>                                {x2;tree:$questionrows['data'],question,qid}								<tr>									<td>{x2;v:question['questionid']}</td>									<td class="form-inline"><input type="text" name="delids[{x2;v:question['questionid']}]" value="{x2;v:question['questionsequence']}" class="orderinput"/></td>									<td>{x2;$questypes[v:question['questiontype']]['questype']}</td>									<td>										<a title="查看试题" class="selfmodal" href="javascript:;" url="index.php?exam-master-questions-detail&questionid={x2;v:question['questionid']}" title="查看试题" data-target="#modal">{x2;eval: echo strip_tags(html_entity_decode(v:question['question']))}</a>									</td>									<td>										<ul class="list-unstyled list-inline">											<li><a href="index.php?exam-master-exams-modifychildquestion&questionid={x2;v:question['questionid']}{x2;$u}">修改</a></li>											<li><a class="confirm" msg="删除子题将不进入回收站直接删除，不可恢复，确定要删除吗？" href="index.php?exam-master-exams-delquestion&&questionid={x2;v:question['questionid']}{x2;$u}">删除</a></li>										</ul>									</td>								</tr>                                {x2;endtree}								</tbody>							</table>							<div class="form-group">								<label class="radio-inline">									<input type="radio" name="action" value="sequence" checked/>排序								</label>								<label class="radio-inline hide">									<input type="radio" name="action" value="delete" />删除								</label>								{x2;tree:$search,arg,sid}								<input type="hidden" name="search[{x2;v:key}]" value="{x2;v:arg}"/>								{x2;endtree}								<label class="radio-inline">									<button class="btn btn-primary" type="submit">提交</button>								</label>								<input type="hidden" name="modifyfieldsequence" value="1"/>								<input type="hidden" name="questionparent" value="{x2;$questionparent}"/>								<input type="hidden" name="page" value="{x2;$page}"/>							</div>						</form>					</div>				</div>                {x2;if:!$_userhash}			</div>		</div>	</div></div>{x2;include:footer}</body></html>{x2;endif}