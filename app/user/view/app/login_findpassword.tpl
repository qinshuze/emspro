{x2;include:../../../common/view/app/header}
<body>
{x2;include:../../../common/view/app/nav}
<div class="container-fluid">
	<div class="row-fluid panels">
		<div class="pep panels">
			<div class="panel panel-default pagebox border margin">
				<div class="panel-heading bold">
					找回密码
				</div>
				<div class="panel-body">
					<form action="index.php?user-app-login-findpassword" method="post" class="regbox">
						<div class="form-group input-group">
							<span class="input-group-addon" id="basic-addon1"><a class="glyphicon glyphicon-phone"></a></span>
							<input class="form-control" name="args[userphone]" id="regphonenumber" datatype="cellphone" needle="needle" msg="请输入手机号" placeholder="请输入手机号">
						</div>
						<div class="form-group" style="overflow:hidden;margin-bottom: 0px;">
							<div class="col-sm-9" style="padding-left:0px;">
								<div class="input-group">
									<span class="input-group-addon" id="basic-addon1"><a class="glyphicon glyphicon-exclamation-sign"></a></span>
									<input class="form-control" type="text" maxlength="4" placeholder="请输入验证码" name="randcode" style="width:92%;"/>
								</div>
							</div>
							<div class="col-xs-3" style="padding-right: 0px;">
								<button type="button" class="btn btn-danger pull-right" id="sendregphonecode" style="margin-right: 0px;height: 48px;">发送验证码</button>
							</div>
						</div>
						<div class="form-group input-group">
							<span class="input-group-addon" id="basic-addon1"><a class="glyphicon glyphicon-lock"></a></span>
							<input class="form-control"  name="args[userpassword]" datatype="password" needle="needle" msg="请输入新密码" placeholder="请输入新密码" type="password">
						</div>
						<div class="form-group input-group">
							<span class="input-group-addon" id="basic-addon1"><a class="glyphicon glyphicon-lock"></a></span>
							<input class="form-control"  name="repassword" datatype="password" needle="needle" msg="请再次输入新密码" placeholder="请再次输入新密码" type="password">
						</div>
						<div class="form-group">
							<p class="text-center loginBnttonArea">
								<button type="submit" class="btn btn-primary btn-block">找回密码</button>
								<input type="hidden" value="1" name="userfindpassword"/>
							</p>
						</div>
						<p class="text-center tips">
							<a class="text-success" href="index.php?user-app-login">登陆</a>
						</p>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
    var sendstatus = true;
    $('#sendregphonecode').click(function(){
        var _this = $(this);
        if(sendstatus)
        {
            $.getJSON('index.php?core-api-index-sendsms&action=findpassword&phonenumber='+$('#regphonenumber').val()+'&userhash='+Math.random(),function(data){
                if(parseInt(data.statusCode) == 200)
                {
                    _this.html('120秒重发');
                    sendstatus = false;
                    sendtime = 120;
                    sendevent = setInterval(function(){
                        if(sendtime > 0)
                        {
                            sendtime--;
                            _this.html(sendtime+'秒重发');
                        }
                        else
                        {
                            sendstatus = true;
                            _this.html('发送验证码');
                            clearInterval(sendevent);
                        }
                    },1000);
                }
                else
                {
                    $.zoombox.show('ajax',data);
                }
            });
        }
    });
</script>
{x2;include:../../../common/view/app/footer}
</body>
</html>