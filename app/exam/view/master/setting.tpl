{x2;include:../../../common/view/master/header}<body>{x2;include:../../../common/view/master/nav}<div class="container-fluid">	<div class="row-fluid">		<div class="pep">			<div class="col-xs-2 leftmenu">                {x2;include:menu}			</div>			<div class="col-xs-10" id="datacontent">				<ol class="breadcrumb">					<li><a href="index.php?{x2;$_route['app']}-master">{x2;$apps[$_route['app']]['appname']}</a></li>					<li class="active">模块设置</li>				</ol>				<div class="settingbar">					<a href="index.php?exam-master-setting" class="btn btn-primary">基本设置</a>					<a href="index.php?exam-master-setting-training" class="btn btn-default">培训类型</a>					<a href="index.php?exam-master-setting-questype" class="btn btn-default">题型设置</a>				</div>				<div class="panel panel-default">					<div class="panel-heading">模块设置</div>					<div class="panel-body">						<form action="index.php?exam-master-setting" method="post" class="form-horizontal">							<div class="form-group">								<label for="outfields" class="col-sm-2 control-label">选项类型：</label>								<div class="col-sm-9">									<input id="selectortype" class="form-control" name="args[selectortype]" value="{x2;$setting['selectortype']}" />								</div>							</div>							<div class="form-group">								<label for="outfields" class="col-sm-2 control-label">选项数量：</label>								<div class="col-sm-9">									<input id="selectornumbers" class="form-control" name="args[selectornumbers]" value="{x2;$setting['selectornumbers']}" />								</div>							</div>							<div class="form-group">								<label for="outfields" class="col-sm-2 control-label">选项模式：</label>								<div class="col-sm-9">									<label class="radio-inline">										<input type="radio" name="args[selectormodel]" value="0"{x2;if:!$setting['selectormodel']} checked{x2;endif}> 替换模式									</label>									<label class="radio-inline">										<input type="radio" name="args[selectormodel]" value="1"{x2;if:$setting['selectormodel']} checked{x2;endif}> 分隔模式									</label>									<span class="help-block">选择替换模式，选项ABCD序号使用[[]]包含，如[[A]][[B]][[C]][[D]]；使用分隔模式，使用编辑器上的水平线标签(&lt;hr/&gt;)分隔。</span>								</div>							</div>							<div class="form-group">								<label for="outfields" class="col-sm-2 control-label">成绩导出字段：</label>								<div class="col-sm-9">									<textarea id="outfields" class="form-control" name="args[outfields]">{x2;$setting['outfields']}</textarea>								</div>							</div>							<div class="form-group">								<label for="seo_description" class="col-sm-2 control-label"></label>								<div class="col-sm-9">									<button class="btn btn-primary" type="submit">提交</button>									<input type="hidden" name="setting" value="1"/>								</div>							</div>						</form>					</div>				</div>			</div>		</div>	</div></div>{x2;include:../../../common/view/master/footer}</body></html>