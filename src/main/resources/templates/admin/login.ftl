<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<title>好看的后台登录页面模板源码 - 代码库</title>
	<meta name="author" content="DeathGhost" />
	<link rel="stylesheet" type="text/css" href="/car/admin/css/dmaku.css" tppabs="/car/admin/css/dmaku.css" />
	<script src="/car/admin/js/jquery.js"></script>
	<script src="/car/admin/js/verificationNumbers.js" tppabs="/car/admin/js/verificationNumbers.js"></script>
	<script src="/car/admin/js/Particleground.js" tppabs="/car/admin/js/Particleground.js"></script>
	<script src="/car/admin/js/vue1.js"></script>
    <script src="/car/admin/js/reqwest.js"></script>
	<script>
	$(document).ready(function() {
	  //粒子背景特效
	  $('body').particleground({
		dotColor: '#5cbdaa',
		lineColor: '#5cbdaa'
	  });
	  //验证码
	  createCode();
	  //测试提交，对接程序删除即可
	  $(".submit_btn").click(function(){
		  location.href="javascrpt:;"/*tpa=http://***index.html*/;
		  });
	});
	</script>
</head>

<body id = "app">
<dl class="admin_login">
 <dt>
  <strong>站点后台管理系统</strong>
  <em>Management System</em>
  <span v-if="error.message != null" class="error">{{error.message}}</span>
 </dt>
 <dd class="user_icon">
  <input v-model="username" type="text" placeholder="账号" class="login_txtbx"/>
 </dd>
 <dd class="pwd_icon">
  <input v-model="password" type="password" placeholder="密码" class="login_txtbx"/>
 </dd>
 <dd class="val_icon">
  <div class="checkcode">
    <input type="text" id="J_codetext" placeholder="验证码" maxlength="4" class="login_txtbx">
    <canvas class="J_codeimg" id="myCanvas" onclick="createCode()">对不起，您的浏览器不支持canvas，请下载最新版浏览器!</canvas>
  </div>
  <input type="button" value="验证码核验" class="ver_btn" onClick="validate();">
 </dd>
 <dd>
  <input v-on:click= "submit()"type="button" value="立即登陆" class="submit_btn"/>
 </dd>
</dl>
</body>
<script>
	var vm = new Vue({
            el:'#app',
            data:{
                username:'',
                password:'',
                code:null,
                error:{
                	message:null
                }
            },
            methods:{
                submit: function() {
                    var self = this;
                    reqwest({
                        url: "/car/api/admin/login/check",
                        type: "json",
                        method: "post",
                        data:{'userName':self.username,'password':self.password},

                        success: function(root) {
                            console.log(root);
                            if (root.code != 0) {
								self.error.message = root.message;
								return null;
							}
							console.log("登录成功")
							window.location.href='/car/admin/index';
                        }

                    })

                }
            },
            ready:function () {

    		}
        });
</script>
</html>
