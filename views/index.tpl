<!DOCTYPE html>

<html>
{{template "header.html" .}}
<body>
<h3 class="invisible">已经到顶部</h3>
 <div class="container-fluid " style="background-image: url(./static/img/bk2.jpg)">
	<div class="row clearfix" >
		<div class="col-xs-12 col-md-5 column">
			<img src="./static/img/heart2.jpg" class="img-thumbnail img-responsive" alt="Responsive image">
			</img>
			<div class="bg-danger">
				<img class="img-responsive img-thumbnail" alt="" src="./static/img/heartcontent.jpg" />
			</div>
		</div>
		<div class="col-xs-7 col-md-4 column" >
			<div class="jumbotron bg-danger">
				<h4>
					我们结婚了!
				</h4>
				<h5>
					相遇 相识
				</h5>
				<h5>
					相知 相爱
				</h5>
				<h5>
					一次邂逅
				</h5>
				<h5>
					一生相伴
				</h5>
				<h5>
					我说 激情似火
				</h5>
				<h5>
					你说 细水长流
				</h5>
				<h5>
					就这样
				</h5>
				<h5>
					我们决定
				</h5>
				<h5>
					执子之手
				</h5>
				<h5>
					与子偕老
				</h5>
				<h5>
					在这个美丽的日子
				</h5>
				<h5>
					我们决定让幸福延续
				</h5>
				<h5>
					期望快乐的回忆里，有您的参与
				</h5>	
				<p>
					<form class="form-inline" action="/" method="post">
						<div class="form-group">
							<p>
					    		<label class="sr-only" for="msg">msg</label>
					   			<input type="text" class="form-control" name="msg" placeholder="祝福语" >
							</p>
						</div>
						<div class="form-group">
							<p class="text-right">
								<label class="sr-only" for="name">name</label>
					   			<input type="text" class="form-control" name="name" placeholder="姓名">
							</p>
						</div>	
						<button type="submit" class="btn btn-default">祝福</button>
					</form>
				</p>
			</div>
		</div>
		<div class="col-xs-6 col-md-3 column">
			<div class="bg-danger">
				<img class="img-responsive img-thumbnail" alt="" src="./static/img/love.jpg" />
			</div>
			<div class="table panel">
			  <table class="table table-hover table-striped table-bordered">
				{{range $k,$v:=.messages}}
			  	<tr class="danger">
					<td class="danger">
						<p>{{$v.Message}}
						</p>
						<p class="text-right">	-{{$v.Name}}
						</p>
					</td>
				</tr>
				{{end}}
			  </table>
			</div>
		</div>
	</div>
</div>

</body>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="static/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="static/js/bootstrap.min.js"></script>
	<script src="static/js/eldarion-ajax.min.js"></script>
	<script type="text/javascript" src="static/js/bootstrapValidator.min.js"></script>
	<script type="text/javascript" src="static/js/language/zh_CN.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
		    $('.form-inline').bootstrapValidator({
		        message: '信息错误',
		        feedbackIcons: {
		            valid: 'glyphicon glyphicon-ok',
		            invalid: 'glyphicon glyphicon-remove',
		            validating: 'glyphicon glyphicon-refresh'
		        },
		        fields: {
		            name: {
		                message: '名字格式不正确',
		                validators: {
		                    notEmpty: {
		                        message: '请留下名字'
		                    }
		                }
		            },
		            msg: {
		                validators: {
		                    notEmpty: {
		                        message: '请留下祝福留言'
		                    }
		                }
		            }
		        }
		    });
		});
	</script>
</html>
