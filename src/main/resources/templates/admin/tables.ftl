<!DOCTYPE html>
<html>
<head>
	<title>后台管理系统</title>

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

        <div id="pad-wrapper">

            <!-- products table-->
            <!-- the script for the toggle all checkboxes from header is located in js/theme.js -->
            <div class="table-wrapper products-table section">
                <div class="row head">
                    <div class="col-md-12">
                        <h4>Products</h4>
                    </div>
                </div>

                <div class="row filter-block">
                    <div class="pull-right">
                        <div class="ui-select">
                            <select>
                              <option>Filter users</option>
                              <option>Signed last 30 days</option>
                              <option>Active users</option>
                            </select>
                        </div>
                        <input type="text" class="search">
                        <a href="/car/recommend/add" class="btn-flat success new-product">+ Add car</a>
                    </div>
                </div>


            </div>
            <!-- end products table -->

            <!-- orders table -->
            <div class="table-wrapper orders-table section">
                <div class="row head">
                    <div class="col-md-12">
                        <h4>Orders</h4>
                    </div>
                </div>

                <div class="row filter-block">
                    <div class="pull-right">
                        <div class="btn-group pull-right">
                            <button class="glow left large">All</button>
                            <button class="glow middle large">Pending</button>
                            <button class="glow right large">Completed</button>
                        </div>
                        <input type="text" class="search order-search" placeholder="Search for an order.." />
                    </div>
                </div>

                <div class="row">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th class="col-md-2">
                                    Car ID
                                </th>
                                <th class="col-md-2">
                                    <span class="line"></span>
                                    carLevel
                                </th>
                                <th class="col-md-2">
                                    <span class="line"></span>
                                    Name
                                </th>
                                <th class="col-md-2">
                                    <span class="line"></span>
                                    carPrice
                                </th>
                                <th class="col-md-2">
                                    <span class="line"></span>
                                    carEngine
                                </th>
                                <th class="col-md-2">
                                    <span class="line"></span>
                                    carRating
                                </th>
							</th>
							<th class="col-md-2">
								<span class="line"></span>
								carOperating
							</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- row -->
                            <tr v-for="car in carList" class="first">
                                <td>
                                    <a href="#">{{car.carId}}</a>
                                </td>
                                <td>
                                    {{car.carLevel}}
                                </td>
                                <td>
                                    <a href="#">{{car.carName}}</a>
                                </td>
                                <td>
                                    <span class="label label-success">{{car.carPrice}}万</span>
                                </td>
                                <td>
									{{car.carEngine}}T
                                </td>
                                <td>
                                    {{car.carRating}}
                                </td>
								<td>

								<div class="row clearfix">
									<div class="col-md-12 column">
										 <button v-on:click="update(car.carId)" type="button" class="btn btn-primary btn-sm">修改</button>
										 <button v-on:click="deleteCar(car.carId)" type="button" class="btn btn-danger btn-sm">删除</button>
									</div>

								</div>


                                </td>
                            </tr>

                        </tbody>
                    </table>
                </div>
            </div>
            <!-- end orders table -->

            <!-- users table -->
<div id="vue-dingyi-paging">
  <ul>
    <li>
      <a class="pageLink" href="#" @click="setPage(curNum-1)">
        <</a>
    </li>
    <li v-for="n in totalNum">
      <a class="pageLink" href="#" v-text="n+1" @click="setPage(n+1)" :class="{ curPage: n+1 == curNum }"></a>
    </li>
    <li><a class="pageLink" href="#" @click="setPage(curNum+1)">></a></li>
  </ul>
</div>



            <!-- end users table -->
        </div>
    </div>
    <!-- end main container -->

	<!-- scripts -->
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/theme.js"></script>
</body>
<style>
* {
  margin: 0;
  padding: 0;
  font-size: 14px;
}

#vue-dingyi-paging ul {
  list-style: none;
  margin-top: 10px;
}

#vue-dingyi-paging ul li {
  margin: 0 5px;
}

#vue-dingyi-paging ul li,
.pageLink {
  display: inline-block;
  width: 40px;
  height: 40px;
  background: #F0F0F0;
  color: #ABABAB;
  border-radius: 3px;
  text-align: center;
  text-decoration: none;
  line-height: 40px;
}

#vue-dingyi-paging ul li .pageLink:hover {
  background: #ABABAB;
  color: #FFFFFF;
}

#vue-dingyi-paging ul li .curPage {
  background: #81C06F;
  color: #FFFFFF;
}
</style>
<script>
var vm = new Vue({
		el:'#app',
		data:{
			size : 10,
			carList: [],
			total:0,
			message:null,
			totalNum: 0, //总页数
	    	curNum: 1 //当前页码
		},
		methods:{
			getData: function(val) {
				var self = this;
				self.pageNo = Math.ceil(val);
				console.log(self.pageNo);
				reqwest({
					url: "/car/recommend/list/page",
					type: "json",
					method: "get",
					data:{'pageNo':self.pageNo,'size':self.size},

					success: function(root) {
						console.log(root);
						if (root.code == 0) {
							self.carList = root.data;

						}

					}

				})

			},
			setPage: function(num) {
				   //页码小于等于1
				   if (num <= 1) {
					   this.getData(1);
					   return this.curNum = 1;
				   }
				   //页码大于总页数
				   if (num >= this.totalNum) {
					   this.getData(this.totalNum);
					   return this.curNum = this.totalNum;
				   }
				   //页码赋给当前页
				   this.getData(num);
				   this.curNum = num;
			   },
			getCarListTotal:function () {
				var self = this;
				reqwest({
					url: "/car/recommend/list/total",
					type: "json",
					method: "get",
					success: function(root) {
						console.log(root);
						if (root.code == 0) {
							self.total = root.data;
							self.totalNum = (self.total/self.size);
						}

					}

				})
			},
			deleteCar:function (id) {
				var self = this;
				alert("确认删除吗？");
				reqwest({
					url: "/car/recommend/delete/"+id,
					type: "json",
					method: "get",
					success: function(root) {
						if (root.code == 0) {
							self.message = root.data;
							self.getCarListTotal();
							if ((self.total % self.size) === 1 && self.total > 0) {
								self.setPage(self.curNum - 1);
							}
						}

					}

				})
			},
			update:function (id) {
				window.location.href= "/car/recommend/add?carId="+id.toString();
			}
		},
		ready:function () {
			this.getData(1);
			this.getCarListTotal();
		}
	});
</script>
</html>
