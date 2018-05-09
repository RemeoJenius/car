<!DOCTYPE html>
<html>

<head>
	<title>表单应用 Bootstrap响应式后台管理系统模版Detail - JS代码网</title>
	<meta name="keywords" content="Bootstrap模版,Bootstrap模版下载,Bootstrap教程,Bootstrap中文,后台管理系统模版,后台模版下载,后台管理系统,后台管理模版" />
	<meta name="description" content="JS代码网提供Bootstrap模版,后台管理系统模版,后台管理界面,Bootstrap教程,Bootstrap中文翻译等相关Bootstrap插件下载" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<#include "../common/header.ftl">
</head>

<body id="app">

	<!-- navbar -->
	<header class="navbar navbar-inverse" role="banner">
		<div class="navbar-header">
			<button class="navbar-toggle" type="button" data-toggle="collapse" id="menu-toggler">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
			<a class="navbar-brand" href="index.html"><img src="/car/admin/img/logo.png"></a>
		</div>
		<ul class="nav navbar-nav pull-right hidden-xs">
			<li class="hidden-xs hidden-sm">
				<input class="search" type="text" />
			</li>
			<li class="notification-dropdown hidden-xs hidden-sm">
				<a href="#" class="trigger">
                    <i class="icon-warning-sign"></i>
                    <span class="count">8</span>
                </a>
				<div class="pop-dialog">
					<div class="pointer right">
						<div class="arrow"></div>
						<div class="arrow_border"></div>
					</div>
					<div class="body">
						<a href="#" class="close-icon"><i class="icon-remove-sign"></i></a>
						<div class="notifications">
							<h3>You have 6 new notifications</h3>
							<a href="#" class="item">
                                <i class="icon-signin"></i> New user registration
                                <span class="time"><i class="icon-time"></i> 13 min.</span>
                            </a>
							<a href="#" class="item">
                                <i class="icon-signin"></i> New user registration
                                <span class="time"><i class="icon-time"></i> 18 min.</span>
                            </a>
							<a href="#" class="item">
                                <i class="icon-envelope-alt"></i> New message from Alejandra
                                <span class="time"><i class="icon-time"></i> 28 min.</span>
                            </a>
							<a href="#" class="item">
                                <i class="icon-signin"></i> New user registration
                                <span class="time"><i class="icon-time"></i> 49 min.</span>
                            </a>
							<a href="#" class="item">
                                <i class="icon-download-alt"></i> New order placed
                                <span class="time"><i class="icon-time"></i> 1 day.</span>
                            </a>
							<div class="footer">
								<a href="#" class="logout">View all notifications</a>
							</div>
						</div>
					</div>
				</div>
			</li>
			<li class="notification-dropdown hidden-xs hidden-sm">
				<a href="#" class="trigger">
                    <i class="icon-envelope"></i>
                </a>
				<div class="pop-dialog">
					<div class="pointer right">
						<div class="arrow"></div>
						<div class="arrow_border"></div>
					</div>
					<div class="body">
						<a href="#" class="close-icon"><i class="icon-remove-sign"></i></a>
						<div class="messages">
							<a href="#" class="item">
                                <img src="/car/admin/img/contact-img.png" class="display" />
                                <div class="name">Alejandra Galván</div>
                                <div class="msg">
                                    There are many variations of available, but the majority have suffered alterations.
                                </div>
                                <span class="time"><i class="icon-time"></i> 13 min.</span>
                            </a>
							<a href="#" class="item">
                                <img src="/car/admin/img/contact-img2.png" class="display" />
                                <div class="name">Alejandra Galván</div>
                                <div class="msg">
                                    There are many variations of available, have suffered alterations.
                                </div>
                                <span class="time"><i class="icon-time"></i> 26 min.</span>
                            </a>
							<a href="#" class="item last">
                                <img src="/car/admin/img/contact-img.png" class="display" />
                                <div class="name">Alejandra Galván</div>
                                <div class="msg">
                                    There are many variations of available, but the majority have suffered alterations.
                                </div>
                                <span class="time"><i class="icon-time"></i> 48 min.</span>
                            </a>
							<div class="footer">
								<a href="#" class="logout">View all messages</a>
							</div>
						</div>
					</div>
				</div>
			</li>
			<li class="dropdown">
				<a href="#" class="dropdown-toggle hidden-xs hidden-sm" data-toggle="dropdown">
                    Your account
                    <b class="caret"></b>
                </a>
				<ul class="dropdown-menu">
					<li><a href="personal-info.html">Personal info</a></li>
					<li><a href="#">Account settings</a></li>
					<li><a href="#">Billing</a></li>
					<li><a href="#">Export your data</a></li>
					<li><a href="#">Send feedback</a></li>
				</ul>
			</li>
			<li class="settings hidden-xs hidden-sm">
				<a href="personal-info.html" role="button">
                    <i class="icon-cog"></i>
                </a>
			</li>
			<li class="settings hidden-xs hidden-sm">
				<a href="signin.html" role="button">
                    <i class="icon-share-alt"></i>
                </a>
			</li>
		</ul>
	</header>
	<!-- end navbar -->

	<!-- sidebar -->
	<div id="sidebar-nav">
		<ul id="dashboard-menu">

			<li>
				<a class="dropdown-toggle" href="tables.html">
                    <i class="icon-th-large"></i>
                    <span>Tables</span>
                    <i class="icon-chevron-down"></i>
                </a>
				<ul class="submenu">
					<li><a href="/car/recommend/carList">Custom tables</a></li>
				</ul>
			</li>
		</ul>
	</div>
	<!-- end sidebar -->


	<!-- main container -->
	<div class="content">

		<!-- settings changer -->
		<div class="skins-nav">
			<a href="#" class="skin first_nav selected">
                <span class="icon"></span><span class="text">Default</span>
            </a>
			<a href="#" class="skin second_nav" data-file="css/compiled/skins/dark.css">
                <span class="icon"></span><span class="text">Dark skin</span>
            </a>
		</div>

		<div id="pad-wrapper" class="form-page">
			<div class="row form-wrapper">
				<!-- left column -->
				<div class="col-md-8 column">
					<div class="container">
						<div class="row clearfix">
							<div class="col-md-12 column">
								<form id="form-add" role="form" enctype="multipart/form-data">
									<div class="form-group">
										<label for="exampleInputEmail1">车名</label><input name="car" v-model="car.name" type="text" class="form-control" id="exampleInputEmail1" />
									</div>
									<div class="form-group">
										<label for="exampleInputPassword1">级别</label><input v-model="car.carLevel" type="text" class="form-control" id="exampleInputPassword1" />
									</div>
									<div class="form-group">
										<label for="exampleInputEmail1">结构</label><input v-model="car.carStructure" type="text" class="form-control" id="exampleInputEmail1" />
									</div>
									<div class="form-group">
										<label for="exampleInputPassword1">发动机(T)</label><input v-model="carForm.carEngine" type="text" class="form-control" id="exampleInputPassword1" />
									</div>
									<div class="form-group">
										<label for="exampleInputPassword1">变速箱</label><input v-model="carForm.carTransmission" type="text" class="form-control" id="exampleInputPassword1" />
									</div>
									<div class="form-group">
										<label for="exampleInputPassword1">价格(万)</label><input v-model="carForm.carPrice" type="text" class="form-control" id="exampleInputPassword1" />
									</div>
									<div class="form-group">
										<label for="exampleInputPassword1">评分</label><input v-model="car.rating" type="text" class="form-control" id="exampleInputPassword1" />
									</div>
									<div class="form-group">
										用户图像：<input id="file" name="file" type="file" onchange="preview(this)"><br>
										<div id="preview"></div>
									</div>
									<!-- <div class="form-group">
										<label for="exampleInputPassword1">图片</label><input v-model="imgUrl" type="text" class="form-control" id="exampleInputPassword1" />
									</div> -->
									<!-- <div class="col-md-12 column pupian">
										<img :src="carForm.carIcon" alt="140x140" class="img-rounded" style="max-width: 200px; max-height: 200px;" />
									</div> -->
									<button v-on:click="submit()" type="button" class="btn btn-default btn-primary">提交</button>
								</form>
							</div>
						</div>
					</div>
				</div>

				<style>
					.pupian {
						position: relative;
						left: 72%;
						max-width: 200px;
						max-height: 200px;
					}
				</style>

			</div>
		</div>
	</div>
	<!-- end main container -->

	<!-- scripts for this page -->
	<script src="/car/admin/js/wysihtml5-0.3.0.js"></script>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="/car/admin/js/bootstrap.min.js"></script>
	<script src="/car/admin/js/bootstrap.datepicker.js"></script>
	<script src="/car/admin/js/jquery.uniform.min.js"></script>
	<script src="/car/admin/js/select2.min.js"></script>
	<script src="/car/admin/js/theme.js"></script>

	<!-- call this page plugins -->
	<script type="text/javascript">
		$(function() {

			// add uniform plugin styles to html elements
			$("input:checkbox, input:radio").uniform();

			// select2 plugin for select elements
			$(".select2").select2({
				placeholder: "Select a State"
			});

			// datepicker plugin
			$('.input-datepicker').datepicker().on('changeDate', function(ev) {
				$(this).datepicker('hide');
			});
		});

		function GetQueryString(name) {
			var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
			var r = window.location.search.substr(1).match(reg);
			if (r != null) return unescape(r[2]);
			return null;
		};
		var vm = new Vue({
			el: "#app",
			data: {
				id: "",
				carForm: {
					"carName": "",
					"carLevel": "",
					"carStructure": "",
					"carPrice": null,
					"carTransmission": "",
					"carEngine": null,
					"carRating": ""
				},
				result: {},
				car: {}
			},
			methods: {
				submit: function() {
					var self = this;
					var api_url = "";
					api_url = "/car/recommend/update/" + GetQueryString("carId");
					var formData = new FormData();
					if ($('#file')[0].files[0] != null) {
						formData.append('file', $('#file')[0].files[0]);
					}
					formData.append('carId', GetQueryString("carId"));
					formData.append('carName', self.carForm.carName);
					formData.append('carLevel', self.carForm.carLevel);
					formData.append('carStructure', self.carForm.carStructure);
					formData.append('carPrice', self.carForm.carPrice);
					formData.append('carTransmission', self.carForm.carTransmission);
					formData.append('carEngine', self.carForm.carEngine);
					formData.append('carRating', self.carForm.carRating);
					$.ajax({
						url: api_url,
						type: 'POST',
						cache: false,
						data: formData,
						processData: false,
						contentType: false
					}).done(function(root) {
						console.log(root);
						if (root.code == 0) {
							self.carForm = root.data;
							alert("成功!");
							window.location.href = '/car/admin/tables.html';
						}
						alert(result.data);
						window.location.href = '/car/admin/tables.html';
					}).fail(function(res) {});

				},
				getCar: function() {
					var self = this;
					var car = null;
					if (GetQueryString("carId") != null) {
						$.ajax({
							url: "/car/recommend/detail/" + GetQueryString("carId"),
							dataType: "json",
							async: false
						}).done(function(result) {
							//不能在这个里面直接返回，直接反回是获取不到数据的
							console.log(result);
							if (result.code == 0) {
								car = result.data;
								return;
							}
							alert(result.data);
							window.location.href = '/car/admin/tables.html';
						});
						return car;
					}
				}

			},
			ready: function() {
				this.car = this.getCar();

			}

		});

		function preview(file) {
			var prevDiv = document.getElementById('preview');
			if (file.files && file.files[0]) {
				var reader = new FileReader();
				reader.onload = function(evt) {
					prevDiv.innerHTML = '<img style="max-width: 200px;max-height: 200px;" src="' + evt.target.result + '" />';
				}
				reader.readAsDataURL(file.files[0]);
			} else {
				prevDiv.innerHTML = '<div class="img" style="filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src=\'' + file.value + '\'"></div>';
			}
		}
	</script>
</body>

</html>
