{x2;include:header}<body>{x2;include:nav}<div class="container-fluid">	<div class="row-fluid">		<div class="pep">			<div class="col-xs-2 leftmenu">                {x2;include:menu}			</div>			<div class="col-xs-10" id="datacontent">				<ol class="breadcrumb">					<li><a href="index.php?{x2;$_route['app']}-master">{x2;$apps[$_route['app']]['appname']}</a></li>					<li><a href="index.php?{x2;$_route['app']}-master-exams">考试管理</a></li>					<li><a href="index.php?{x2;$_route['app']}-master-exams-questionrows">{x2;$subject['subjectname']}</a></li>					<li><a href="index.php?{x2;$_route['app']}-master-exams-questionrowsdetail&qrid={x2;$question['questionparent']}">题帽题</a></li>					<li class="active">修改子试题</li>				</ol>				<div class="panel panel-default">					<div class="panel-heading">修改子试题</div>					<div class="panel-body">						<form action="index.php?exam-master-exams-modifychildquestion" method="post" class="form-horizontal">							<fieldset>								<div class="form-group">									<label class="control-label col-sm-2">题型：</label>									<div class="col-sm-3">										<select needle="needle" id="questypeselector" msg="您必须为要添加的试题选择一种题型" name="args[questiontype]" class="form-control" onchange="javascript:setAnswerHtml($(this).find('option:selected').attr('rel'),'answerbox');">                                            {x2;tree:$questypes,questype,qid}											<option rel="{x2;if:v:questype['questsort']}0{x2;else}{x2;v:questype['questchoice']}{x2;endif}" value="{x2;v:questype['questcode']}"{x2;if:v:questype['questcode'] == $question['questiontype']} selected{x2;endif}>{x2;v:questype['questype']}</option>                                            {x2;endtree}										</select>									</div>								</div>								<div class="form-group">									<label class="control-label col-sm-2">题干：</label>									<div class="col-sm-10">										<textarea class="ckeditor" needle="needle" msg="请填写题干" name="args[question]" id="question">{x2;$question['question']}</textarea>										<span class="help-block">需要填空处请以()表示。</span>									</div>								</div>								<div class="form-group" id="selecttext">									<label class="control-label col-sm-2">备选项：</label>									<div class="col-sm-10">										<textarea class="ckeditor" name="args[questionselect]" id="questionselect">{x2;$question['questionselect']}</textarea>										<span class="help-block">无选择项的请不要填写，如填空题、问答题等主观题。</span>									</div>								</div>								<div class="form-group" id="selectnumber">									<label class="control-label col-sm-2">备选项数量：</label>									<div class="col-sm-3">										<select class="form-control" name="args[questionselectnumber]">											{x2;tree:$setting['selectornumbers'],number,nid}											<option value="{x2;v:number}"{x2;if:v:number == $question['questionselectnumber']} selected{x2;endif}>{x2;v:number}</option>											{x2;endif}										</select>									</div>								</div>								<div class="form-group">									<label class="control-label col-sm-2">参考答案：</label>									<div class="col-sm-10">										<div id="answerbox_1" class="answerbox">                                            {x2;tree:$setting['selectortype'],type,tid}											<label class="radio-inline">												<input type="radio" name="targs[questionanswer1]" value="{x2;v:type}"{x2;if:v:type == $question['questionanswer']} checked{x2;endif}>{x2;v:type}											</label>											{x2;endtree}										</div>										<div id="answerbox_2" style="display:none;" class="answerbox">                                            {x2;tree:$setting['selectortype'],type,tid}											<label class="checkbox-inline">												<input type="checkbox" name="targs[questionanswer2][]" value="{x2;v:type}"{x2;if:strpos($question['questionanswer'],v:type) !== false} checked{x2;endif}>{x2;v:type}											</label>                                            {x2;endtree}										</div>										<div id="answerbox_3" style="display:none;" class="answerbox">                                            {x2;tree:$setting['selectortype'],type,tid}											<label class="checkbox-inline">												<input type="checkbox" name="targs[questionanswer3][]" value="{x2;v:type}"{x2;if:strpos($question['questionanswer'],v:type) !== false} checked{x2;endif}>{x2;v:type}											</label>                                            {x2;endtree}										</div>										<div id="answerbox_4" class="answerbox" style="display:none;">											<label class="radio-inline">												<input type="radio" name="targs[questionanswer4]" value="A"{x2;if:'A' == $question['questionanswer']} checked{x2;endif}>对											</label>											<label class="radio-inline">												<input type="radio" name="targs[questionanswer4]" value="B"{x2;if:'B' == $question['questionanswer']} checked{x2;endif}>错											</label>										</div>										<div id="answerbox_5" class="answerbox" style="display:none;">											<input type="text" name="targs[questionanswer5]" value="" />										</div>										<div id="answerbox_0" style="display:none;" class="answerbox">											<textarea cols="72" rows="7" class="ckeditor" id="questionanswer0" name="targs[questionanswer0]">{x2;$question['questionanswer']}</textarea>										</div>									</div>								</div>								<div class="form-group">									<label class="control-label col-sm-2">习题解析：</label>									<div class="col-sm-10">										<textarea class="ckeditor" name="args[questionintro]" id="questionintro">{x2;$question['questionintro']}</textarea>									</div>								</div>								<div class="form-group">									<label class="control-label col-sm-2"></label>									<div class="col-sm-9">										<button class="btn btn-primary" type="submit">提交</button>										<input type="hidden" name="page" value="{x2;$page}"/>										<input type="hidden" name="questionid" value="{x2;$question['questionid']}"/>										<input type="hidden" name="modifychildquestion" value="1"/>                                        {x2;tree:$search,arg,aid}										<input type="hidden" name="search[{x2;v:key}]" value="{x2;v:arg}"/>                                        {x2;endtree}									</div>								</div>						</form>					</div>				</div>			</div>		</div>	</div></div><script>$(function(){	setAnswerHtml($('#questypeselector').find('option:selected').attr('rel'),'answerbox');});</script>{x2;include:footer}</body></html>