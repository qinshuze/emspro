{x2;if:!$_userhash}
{x2;include:../../../common/view/master/header}
<body>
{x2;include:../../../common/view/master/nav}
<div class="container-fluid">
	<div class="row-fluid">
		<div class="pep">
			<div class="col-xs-2 leftmenu">
                {x2;include:menu}
			</div>
			<div class="col-xs-10" id="datacontent">
{x2;endif}
				<ol class="breadcrumb">
					<li><a href="index.php?{x2;$_route['app']}-master">{x2;$apps[$_route['app']]['appname']}</a></li>
					<li><a href="index.php?{x2;$_route['app']}-master-lessons&page={x2;$page}">内容管理</a></li>
					<li><a href="index.php?{x2;$_route['app']}-master-lessons-videos&lessonid={x2;$lesson['lessonid']}">{x2;$lesson['lessonname']}</a></li>
					<li class="active">修改内容</li>
				</ol>
				<div class="panel panel-default">
					<div class="panel-heading">
						修改内容
					</div>
					<div class="panel-body">
						<form action="index.php?lesson-master-lessons-modifyvideo" method="post" class="form-horizontal">
                            {x2;tree:$forms,form,fid}
                            {x2;if:v:form['type'] != 'hidden'}
                            <div class="form-group">
								<label for="contenttitle" class="control-label col-sm-2">{x2;v:form['title']}：</label>
								<div class="col-sm-9">
                                    {x2;v:form['html']}
								</div>
							</div>
							{x2;endif}
                            {x2;endtree}
							<div class="form-group">
								<label for="contenttemplate" class="control-label col-sm-2">模版：</label>
								<div class="col-sm-3">
									<select class="form-control" name="args[contenttpl]" id="contenttpl">
										{x2;tree:$tpls,tpl,tid}
										<option value="{x2;v:tpl}"{x2;if:$content['contenttpl'] == v:tpl} selected{x2;endif}>{x2;v:tpl}</option>
										{x2;endtree}
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="contenttemplate" class="control-label col-sm-2"></label>
								<div class="col-sm-9">
									<button class="btn btn-primary" type="submit">提交</button>
									<input type="hidden" name="videoid" value="{x2;$video['videoid']}">
									<input type="hidden" name="modifyvideo" value="1">
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
{x2;if:!$_userhash}
		</div>
	</div>
</div>
{x2;include:../../../common/view/master/footer}
</body>
</html>
{x2;endif}