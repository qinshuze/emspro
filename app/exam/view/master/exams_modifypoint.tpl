{x2;include:header}<body>{x2;include:nav}<div class="container-fluid">	<div class="row-fluid">		<div class="pep">			<div class="col-xs-2 leftmenu">                {x2;include:menu}			</div>			<div class="col-xs-10" id="datacontent">				<ol class="breadcrumb">					<li><a href="index.php?{x2;$_route['app']}-master">{x2;$apps[$_route['app']]['appname']}</a></li>					<li><a href="index.php?{x2;$_route['app']}-master-exams">考试管理</a></li>					<li><a href="index.php?{x2;$_route['app']}-master-exams-sections&subjectid={x2;$subject['subjectid']}">{x2;$subject['subjectname']}</a></li>					<li><a href="index.php?{x2;$_route['app']}-master-exams-points&sectionid={x2;$section['sectionid']}">{x2;$section['sectionname']}</a></li>					<li class="active">修改知识点</li>				</ol>				<div class="panel panel-default">					<div class="panel-heading">修改知识点</div>					<div class="panel-body">						<form action="index.php?exam-master-exams-modifypoint" method="post" class="form-horizontal">							<fieldset>								<div class="form-group">									<label for="questype" class="control-label col-sm-2">名称：</label>									<div class="col-sm-4">										<input class="form-control" name="args[pointname]" type="text" size="30" value="{x2;$point['pointname']}" needle="needle" alt="请输入添加知识点" />									</div>								</div>								<div class="form-group">									<label for="contenttitle" class="control-label col-sm-2">视频源：</label>									<div class="col-sm-9">										<script type="text/template" id="pe-template-videopath">											<div class="qq-uploader-selector">												<ul class="qq-upload-list-selector list-unstyled pull-left" aria-live="polite" aria-relevant="additions removals" style="clear:both;">													<li class="text-center">														<input size="45" class="form-control qq-edit-filename-selector" type="text" name="args[pointvideo]" tabindex="0" value="{x2;$point['pointvideo']}">													</li>												</ul>												<ul class="qq-upload-list-selector list-unstyled pull-left" aria-live="polite" aria-relevant="additions removals" style="clear:both;">													<li class="text-center">														<input size="45" class="form-control qq-edit-filename-selector" type="text" name="args[pointvideo]" tabindex="0" value="{x2;$point['pointvideo']}">													</li>												</ul>												<div class="qq-upload-button-selector col-xs-3">													<button class="btn btn-primary">上传文件<span class="process"></span></button>												</div>											</div>										</script>										<div class="fineuploader" attr-type="files" attr-template="pe-template-videopath" attr-ftype="mp4"></div>									</div>								</div>								<div class="form-group">									<label for="outfields" class="col-sm-2 control-label">复习精华：</label>									<div class="col-sm-9">										<textarea id="sectionintro" class="form-control pepeditor" name="args[pointintro]">{x2;$point['pointintro']}</textarea>									</div>								</div>								<div class="form-group">									<label for="questchoice" class="control-label col-sm-2"></label>									<div class="col-sm-9">										<button class="btn btn-primary" type="submit">提交</button>										<input type="hidden" name="modifypoint" value="1"/>										<input type="hidden" name="pointid" value="{x2;$point['pointid']}"/>									</div>								</div>							</fieldset>						</form>					</div>				</div>			</div>		</div>	</div></div>{x2;include:footer}</body></html>