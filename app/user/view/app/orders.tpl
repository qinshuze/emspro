{x2;include:../../../common/view/app/header}<body>{x2;include:../../../common/view/app/nav}<div class="container-fluid content-container">	<div class="row-fluid panels">		<div class="pep panels">			<div class="col-xs-2">                {x2;include:menu}			</div>			<div class="col-xs-10 nopadding">				<div class="panel panel-default pagebox border">					<div class="panel-heading bold">						我的订单					</div>					<div class="panel-body">						<table class="table table-striped table-hover">							<tr>								<th width="220">订单号</th>								<th>名称</th>								<th width="140">价格（元）</th>								<th width="200">下单时间</th>								<th width="80">操作</th>							</tr>                            {x2;tree:$orders['data'],order,sid}							<tr>								<td>									{x2;v:order['ordersn']}								</td>								<td>                                    {x2;v:order['ordername']}								</td>								<td>                                    {x2;v:order['orderprice']}								</td>								<td>                                    {x2;v:order['ordertime']}								</td>								<td width="60">									<a href="index.php?user-app-orders-detail&ordersn={x2;v:order['ordersn']}">详细</a>								</td>							</tr>                            {x2;endtree}						</table>                        {x2;if:$orders['pages']}						<ul class="pagination pull-right">                            {x2;$orders['pages']}						</ul>                        {x2;endif}					</div>				</div>			</div>		</div>	</div></div>{x2;include:../../../common/view/app/footer}</body></html>