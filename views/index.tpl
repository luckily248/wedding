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
				<img class="img-responsive img-thumbnail" alt="" src="./static/img/heart.jpg" />
				<div class="carousel-caption">
				<h3 class="text-center text-danger">
					梁智颖&邹佳丽
				</h23>
				<h3 class="text-center text-danger">
					 华夏大酒店
				</h3>
				<p>
					               
				</p>
				<h3 class="text-left text-muted">
					 2015年10月2日 
				</h3>
				<h3 class="text-left text-muted">
					 6:00
				</h3>
				</div>
			</div>
		</div>
		<div class="col-xs-7 col-md-4 column" >
			<div class="jumbotron bg-danger">
				<h2>
					我们结婚了!
				</h2>
				
				<p>
					那一年，我们偶然相遇
				</p>
				<p>
					没想到世界这么大
				</p>
				<p>
					两颗小小的心却从此被系在一起
				</p>
				<p>
					我们看到彼此的好
				</p>
				<p>
					也看到彼此对自己的重要
				</p>
				<p>
					在这个美丽的日子
				</p>
				<p>
					我们决定让幸福延续
				</p>
				<p>
					期望快乐的回忆里，有您的参与
				</p>
				<p>
					<form class="form-inline">
						<div class="form-group">
							<p>
					    		<label class="sr-only" for="msg">msg</label>
					   			<input type="text" class="form-control" id="msg" placeholder="祝福语" >
							</p>
							<p class="text-right">
								<label class="sr-only" for="name">name</label>
					   			<input type="text" class="form-control" id="name" placeholder="姓名">
					 			<button type="submit" class="btn btn-default">祝福</button>
							</p>
						</div>	
					</form>
				</p>
			</div>
		</div>
		<div class="col-xs-6 col-md-3 column">
			<div class="table-responsive">
			  <table class="table table-hover">
				{{range $k,$v:=.}}
			  	<tr>
					<p>{{$v.Msg}}
					</p>
					<p>	-{{$v.Name}}
					</p>
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
</html>
