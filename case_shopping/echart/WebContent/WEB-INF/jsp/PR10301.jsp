<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>華信商会(株) 販売管理業務システム</title>
<meta name="renderer" content="webkit">

<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet"
	href="css/datetimepicker/bootstrap-datetimepicker.min.css"
	media="screen" />
</head>
<body>
	<!-- Top Begin -->
	<div class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			<!-- Title Begin -->
			<div class="navbar-header">
				<a class="navbar-brand" href="#"><b>華信商会(株) 販売管理業務システム</b></a>
			</div>
			<!-- Title End -->

			<!-- Menu Begin -->
			<div>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">首頁</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" aria-expanded="false"> <span>受注管理</span>
							<span class="caret"></span>
					</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">受注入力</a></li>
							<li><a href="#">商品別出庫表作成</a></li>
							<li><a href="#">顧客別受注実績月報作成</a></li>
							<li><a href="#">商品別受注実績月報作成</a></li>
							<li><a href="#">在庫情報確認</a></li>
						</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" aria-expanded="false"> <span>売掛管理</span>
							<span class="caret"></span>
					</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">売掛登録</a></li>
							<li><a href="#">代金請求</a></li>
							<li><a href="#">入金登録</a></li>
						</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" aria-expanded="false"> <i
							class="glyphicon glyphicon-user"></i> <span>DHEE</span> <span
							class="caret"></span>
					</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">退出</a></li>
						</ul></li>
					<li></li>
				</ul>
			</div>
			<!-- Menu End -->
		</div>
	</div>
	<!-- Top End -->
	<!-- Body Begin -->
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<div class="row">
									<form action="pr10302.action">
										<div class="col-md-6" align="left">
											<font style="font-size: 14px; line-height: 29px;">顧客別受注実績月報作成</font>
										</div>
										<div class="col-md-6" align="right">
											<button type="submit" class="btn btn-primary btn-sm"
												data-toggle="modal" data-target="#goodsModal">印刷プレビュー</button>
										</div>
									</form>
								</div>
							</div>

							<div class="panel-body">
								<div class="row">
									<div class="col-md-6">
										<div class="input-group date form_date">
											<span class="input-group-addon">印刷月次（省略時翌月）</span> 
											<input
												type="text" class="form-control" readonly> <span
												class="input-group-addon"><span
												class="glyphicon glyphicon-calendar"></span></span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	<!-- Body End -->

	<!-- Foot begin -->
	<div class="text-center text-muted"
		style="height: 40px; width: 100%; bottom: 0; position: fixed; line-height: 40px; background-color: #eee">
		<i class="glyphicon glyphicon-copyright-mark"></i>DHEE 2017
		大連華信計算機新技術培訓中心. すべての知る権利を保留
	</div>
	<!-- Foot End -->
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="js/datetimepicker/bootstrap-datetimepicker.js" charset="UTF-8"></script>
	<script type="text/javascript"
		src="js/datetimepicker/locales/bootstrap-datetimepicker.ja.js"
		charset="UTF-8"></script>
	<script type="text/javascript">
		//init datetimepicker
		$(".form_date").datetimepicker({
			language : 'ja',//i18N
			autoclose : true,//autoclose
			todayHighlight : true,//todayHighlight
			todayBtn : true,//todayBtn
			minView : "month",//minView
			format : "yyyy-mm",//format
			pickerPosition : "bottom-left"//pickerPosition:bottom-left
		});
	</script>
</body>
</html>