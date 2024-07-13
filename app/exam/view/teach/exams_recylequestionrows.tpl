{x2;if:!$_userhash}{x2;include:header}<body>{x2;include:nav}<div class="container-fluid">	<div class="row-fluid">		<div class="pep">			<div class="col-xs-2 leftmenu">                {x2;include:menu}			</div>			<div class="col-xs-10" id="datacontent">				{x2;endif}				<ol class="breadcrumb">					<li><a href="index.php?{x2;$_route['app']}-teach">教师管理</a></li>					<li><a href="index.php?{x2;$_route['app']}-teach-exams">考试设置</a></li>					<li class="active">{x2;$subject['subjectname']}</li>				</ol>				<div class="settingbar">					<a href="index.php?exam-teach-exams-recyle&type=questions" class="btn{x2;if:$type == 'questions'} btn-primary{x2;else} btn-default{x2;endif}">普通试题</a>					<a href="index.php?exam-teach-exams-recyle&type=questionrows" class="btn{x2;if:$type == 'questionrows'} btn-primary{x2;else} btn-default{x2;endif}">题帽题</a>				</div>				<div class="panel panel-default">					<div class="panel-heading">						回收站					</div>					<div class="panel-body">						<form action="index.php?exam-teach-exams-recyle&type=questionrows" method="post" class="form-inline">							<table class="table">								<thead>									<tr>										<td>											试题ID：										</td>										<td>											<input name="search[qrid]" class="form-control" size="10" type="text" class="number" value="{x2;$search['qrid']}"/>										</td>										<td>											录入时间：										</td>										<td>											<input class="form-control datetimepicker" data-date="{x2;date:TIME,'Y-m-d'}" data-date-format="yyyy-mm-dd" type="text" name="search[stime]" size="10" id="stime" value="{x2;$search['stime']}"/> - <input class="form-control datetimepicker" data-date="{x2;date:TIME,'Y-m-d'}" data-date-format="yyyy-mm-dd" size="10" type="text" name="search[etime]" id="etime" value="{x2;$search['etime']}"/>										</td>										<td>											关键字：										</td>										<td>											<input class="form-control" name="search[keyword]" size="10" type="text" value="{x2;$search['keyword']}"/>										</td>									</tr>								</thead>								<tr>									<td>										章节：									</td>									<td>										<select name="search[questionsectionid]" class="combox form-control" id="sectionselect" target="pointselect" refUrl="index.php?exam-teach-ajax-getpointsbysectionid&sectionid={value}">											<option value="0">选择章节</option>                                            {x2;if:$sections}                                            {x2;tree:$sections,section,sid}											<option value="{x2;v:section['sectionid']}"{x2;if:v:section['sectionid'] == $search['questionsectionid']} selected{x2;endif}>{x2;v:section['sectionname']}</option>                                            {x2;endtree}                                            {x2;endif}										</select>									</td>									<td>										知识点：									</td>									<td>										<select name="search[questionpointid]" id="pointselect" class="form-control">											{x2;if:!$search['questionsectionid']}											<option value="">请先选择章节</option>											{x2;endif}                                            {x2;if:$search['questionsectionid']}                                            {x2;tree:$points[$search['questionsectionid']],point,pid}											<option value="{x2;v:point['pointid']}"{x2;if:v:point['pointid'] == $search['questionpointid']} selected{x2;endif}>{x2;v:point['pointname']}</option>                                            {x2;endtree}                                            {x2;endif}										</select>									</td>									<td>										录入人：									</td>									<td>										<input class="form-control" name="search[username]" size="10" type="text" value="{x2;$search['username']}"/>									</td>								</tr>								<tr>									<td>										试题类型：									</td>									<td>										<select name="search[questiontype]" class="form-control">											<option value="0">类型不限</option>                                            {x2;tree:$questypes,questype,qid}											<option value="{x2;v:questype['questcode']}">{x2;v:questype['questype']}</option>                                            {x2;endtree}										</select>									</td>									<td>										难度：									</td>									<td>										<select name="search[questionlevel]" class="form-control">											<option value="0">难度不限</option>											<option value="1"{x2;if:$search['questionlevel'] == 1} selected{x2;endif}>易</option>											<option value="2"{x2;if:$search['questionlevel'] == 2} selected{x2;endif}>中</option>											<option value="3"{x2;if:$search['questionlevel'] == 3} selected{x2;endif}>难</option>										</select>									</td>									<td colspan="2">										<button class="btn btn-primary" type="submit">搜索</button>										<input type="hidden" value="1" name="search[argsmodel]" />									</td>								</tr>							</table>						</form>						<form action="index.php?exam-teach-exams-dorecyle&type=questionrows" method="post">							<fieldset>								<table class="table table-hover table-bordered">									<thead>									<tr class="info">										<th width="32"><input type="checkbox" class="checkall" target="delids"/></th>										<th width="40">ID</th>										<th width="80">试题类型</th>										<th>试题内容</th>										<th width="140">录入人</th>										<th width="140">录入时间</th>										<th width="48">难度</th>									</tr>									</thead>									<tbody>                                    {x2;tree:$questionrows['data'],question,qid}									<tr>										<td><input type="checkbox" name="delids[{x2;v:question['qrid']}]" value="1"></td>										<td>                                            {x2;v:question['qrid']}										</td>										<td>                                            {x2;$questypes[v:question['qrtype']]['questype']}										</td>										<td>											<a title="查看试题" class="selfmodal" href="javascript:;" url="index.php?exam-teach-ajax-questionrowsdetail&qrid={x2;v:question['qrid']}&{x2;c:TIME}" data-target="#modal">{x2;substring:strip_tags(html_entity_decode(v:question['qrquestion'])),135}</a>										</td>										<td>                                            {x2;v:question['qrusername']}										</td>										<td>                                            {x2;v:question['qrtime']}										</td>										<td>                                            {x2;if:v:question['qrlevel']==2}中{x2;elseif:v:question['qrlevel']==3}难{x2;elseif:v:question['qrlevel']==1}易{x2;endif}										</td>									</tr>                                    {x2;endtree}									</tbody>								</table>								<div class="form-group">									<label class="radio-inline">										<input type="radio" name="action" value="recover" checked/> 恢复									</label>									<label class="radio-inline">										<input type="radio" name="action" value="delete" /> 删除									</label>									{x2;tree:$search,arg,sid}									<input type="hidden" name="search[{x2;v:key}]" value="{x2;v:arg}"/>									{x2;endtree}									<label class="radio-inline">										<button class="btn btn-primary" type="submit">删除</button>									</label>								</div>							</fieldset>						</form>						{x2;if:$questionrows['pages']}						<ul class="pagination pull-right">                            {x2;$questionrows['pages']}						</ul>						{x2;endif}					</div>				</div>                {x2;if:!$_userhash}			</div>		</div>	</div></div><div id="modal" class="modal fade">	<div class="modal-dialog">		<div class="modal-content">			<div class="modal-header">				<button aria-hidden="true" class="close" type="button" data-dismiss="modal">×</button>				<h4 id="myModalLabel">					试题详情				</h4>			</div>			<div class="modal-body"></div>			<div class="modal-footer">				<button aria-hidden="true" class="btn btn-primary" data-dismiss="modal">关闭</button>			</div>		</div>	</div></div>{x2;include:footer}</body></html>{x2;endif}