{x2;include:header}<body>{x2;include:nav}<div class="container-fluid">	<div class="row-fluid panels">		<div class="pep panels">			<div class="col-xs-2">				{x2;include:menu}			</div>			<div class="col-xs-10 nopadding">				<div class="panel panel-default pagebox border">					<div class="panel-heading bold">						充值购买					</div>					<div class="panel-body" style="padding: 0px">						<div class="panel-group" id="panel-13465">                            {x2;if:$actives}							<div class="panel">								<div class="panel-heading blod">									<a class="panel-toggle text-center">										待激活									</a>								</div>								<div id="panel-element-1" class="panel-collapse in collapse" role="tabpanel">									<ul class="list-group">                                        {x2;tree:$actives,active,aid}										<li class="list-group-item">											<b class="price">订单 ￥{x2;v:active['activeorder']}</b>											<span class="intros text-warning"> 时长：{x2;v:active['activetime']}天</span>											<a class="btn btn-danger pull-right confirm" msg="确定要激活吗？" style="color: #FFFFFF;" href="index.php?exam-app-basic-active&activeid={x2;v:active['activeid']}">激活</a>										</li>                                        {x2;endtree}									</ul>								</div>							</div>							{x2;endif}							<div class="panel">								<div class="panel-heading blod">									<a class="panel-toggle text-center">                                        单品购买									</a>								</div>								<div id="panel-element-1" class="panel-collapse in collapse" role="tabpanel">									<ul class="list-group">                                        {x2;tree:$prices,price,pid}										<li class="list-group-item">											<b class="price">{x2;v:price['name']} ￥{x2;v:price['price']}</b>											<span class="intros text-warning"> 时长：{x2;v:price['time']}天</span>											<a class="btn btn-default pull-right ajax" href="index.php?exam-app-basic-open&openbasic=1&opentype={x2;v:key}">购买</a>										</li>										{x2;endtree}									</ul>								</div>							</div>							<div class="panel">								<div class="panel-heading blod">									<a class="panel-toggle text-center">										套餐购买									</a>								</div>								<div id="panel-element-2" class="panel-collapse in collapse" role="tabpanel">									<ul class="list-group">                                        {x2;tree:$package,price,pid}										<li class="list-group-item">											<b class="price">{x2;v:price['name']} ￥{x2;v:price['price']}</b>											<span class="intros text-warning"> 时长：{x2;v:price['time']}天</span>											<a class="btn btn-default pull-right ajax" href="index.php?exam-app-basic-package&openbasic=1&opentype={x2;v:key}&trid={x2;$training['trid']}">购买</a>										</li>                                        {x2;endtree}									</ul>								</div>							</div>						</div>					</div>				</div>			</div>		</div>	</div></div>{x2;include:footer}</body></html>