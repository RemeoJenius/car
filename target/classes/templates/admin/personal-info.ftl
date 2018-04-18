
<!DOCTYPE html>
<html>
<head>
	<title>用户详情 Bootstrap响应式后台管理系统模版Detail - JS代码网</title>
	<meta name="keywords" content="Bootstrap模版,Bootstrap模版下载,Bootstrap教程,Bootstrap中文,后台管理系统模版,后台模版下载,后台管理系统,后台管理模版" />
	<meta name="description" content="JS代码网提供Bootstrap模版,后台管理系统模版,后台管理界面,Bootstrap教程,Bootstrap中文翻译等相关Bootstrap插件下载" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
  <#include "../common/header.ftl">
</head>
<body>

    <!-- navbar -->
    <header class="navbar navbar-inverse" role="banner">
        <div class="navbar-header">
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html"><img src="img/logo.png"></a>
        </div>
        <nav class="collapse navbar-collapse" role="navigation">
            <ul class="nav navbar-nav">
                <li><a href="chart-showcase.html">Charts</a></li>
                <li><a href="user-list.html">Users</a></li>
                <li><a href="form-showcase.html">Forms</a></li>
                <li><a href="gallery.html">Gallery</a></li>
                <li><a href="icons.html">Icons</a></li>
                <li><a href="calendar.html">Calendar</a></li>
                <li><a href="tables.html">Tables</a></li>
                <li><a href="ui-elements.html">UI Elements</a></li>
                <li class="visible-lg">
                    <input class="search" type="text" style="margin-left:30px;" />
                </li>
            </ul>
        </nav>        
    </header>
    <!-- end navbar -->

	<!-- main container .wide-content is used for this layout without sidebar :)  -->
    <div class="content wide-content">
        <div class="settings-wrapper" id="pad-wrapper">
            <div class="row">
                <!-- avatar column -->
                <div class="col-md-3 col-md-offset-1 avatar-box">
                    <div class="personal-image">
                        <img src="img/personal-info.png" class="avatar img-circle">
                        <p>Upload a different photo...</p>
                        
                        <input type="file" />
                    </div>
                </div>

                <!-- edit form column -->
                <div class="col-md-7 personal-info">
                    <div class="alert alert-info">
                        <i class="icon-lightbulb"></i>
                        This page shows an example of an alternative layout with the main navbar on the top
                        <br> using <strong>.content.wide-content</strong> for this main container
                    </div>
                    <h5 class="personal-title">Personal info</h5>

                    <form class="form-horizontal" role="form">
                        <div class="form-group">
                            <label class="col-lg-2 control-label">First name:</label>
                            <div class="col-lg-8">
                                <input class="form-control" type="text" value="Alejandra" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-2 control-label">Last name:</label>
                            <div class="col-lg-8">
                                <input class="form-control" type="text" value="Galvan" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-2 control-label">Company:</label>
                            <div class="col-lg-8">
                                <input class="form-control" type="text" value="Design Co." />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-2 control-label">Email:</label>
                            <div class="col-lg-8">
                                <input class="form-control" type="text" value="alejandra@design.com" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-2 control-label">Time Zone:</label>
                            <div class="col-lg-8">
                                <div class="ui-select">
                                    <select id="user_time_zone" name="user[time_zone]">
                                        <option value="Hawaii">(GMT-10:00) Hawaii</option>
                                        <option value="Alaska">(GMT-09:00) Alaska</option>
                                        <option value="Pacific Time (US &amp; Canada)">(GMT-08:00) Pacific Time (US &amp; Canada)</option>
                                        <option value="Arizona">(GMT-07:00) Arizona</option>
                                        <option value="Mountain Time (US &amp; Canada)">(GMT-07:00) Mountain Time (US &amp; Canada)</option>
                                        <option value="Central Time (US &amp; Canada)" selected="selected">(GMT-06:00) Central Time (US &amp; Canada)</option>
                                        <option value="Eastern Time (US &amp; Canada)">(GMT-05:00) Eastern Time (US &amp; Canada)</option>
                                        <option value="Indiana (East)">(GMT-05:00) Indiana (East)</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-2 control-label">Username:</label>
                            <div class="col-lg-8">
                                <input class="form-control" type="text" value="alegalvan" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-2 control-label">Password:</label>
                            <div class="col-lg-8">
                                <input class="form-control" type="password" value="blablablabla" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-2 control-label">Confirm password:</label>
                            <div class="col-lg-8">
                                <input class="form-control" type="password" value="blablablabla" />
                            </div>
                        </div>
                        <div class="actions">
                            <input type="button" class="btn-glow primary" value="Save Changes">
                            <span>OR</span>
                            <input type="reset" value="Cancel" class="reset">
                        </div>
                    </form>
                </div>
            </div>            
        </div>
    </div>
    <!-- end main container -->


	<!-- scripts -->
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/theme.js"></script>
</body>
</html>