{x2;include:../../../common/view/app/header}<body>{x2;include:top}<div class="container-fluid">	<div class="row-fluid nav">		<div class="pep nav">			<div class="col-xs-4 title">				<ul class="list-unstyled list-inline">					<!--<li class="nopadding"><img src="public/static/images/index_logo.jpg" /></li>-->					<li class="nopadding"><h1 style="color: #5e6972"><?php echo env('APP_NAME'); ?></h1></li>				</ul>			</div>			<div class="col-xs-8 menu">				<ul class="list-unstyled list-inline">					<li><a href="index.php">首页</a></li>					{x2;tree:$navtrainings,training,trid}					<li><a href="index.php?exam-app-index-training&trid={x2;v:training['trid']}">{x2;v:training['trname']}</a></li>					{x2;endtree}				</ul>			</div>		</div>	</div></div><div class="container-fluid content-container">	<div class="row-fluid panels">		<div class="pep panels">			<div class="panel panel-default pagebox border">				<div class="panel-body">					<h1 class="text-center">{x2;$training['trname']}</h1>					<p class="text-center" style="line-height: 40px;">请您点击下列考试科目名称，进入机考模拟系统界面!</p>					<hr />					<div class="text-center pagebox padding">						{x2;tree:$subjects,subject,sid}						{x2;tree:$basics[v:subject['subjectid']]['data'],basic,bid}						<a style="font-size: 18px; width: 240px;font-weight: bold;margin-bottom: 20px;" href="index.php?exam-app-ajax-setcurrentbasic&subjectid={x2;v:subject['subjectid']}&basicid={x2;v:basic['basicid']}" class="btn btn-primary">{x2;v:basic['basic']}</a>                        {x2;endtree}						{x2;endtree}					</div>				</div>			</div>		</div>	</div></div>{x2;include:../../../common/view/app/footer}</body></html>