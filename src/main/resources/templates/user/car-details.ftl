<!DOCTYPE html>
<html lang="zxx">
<#include "header.ftl">
    <style type="text/css">
        * {
            padding: 0;
            margin: 0;
        }

        a {
            text-decoration: none;
        }

        .form-control {
            display: inline-block;
            width: auto;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
        }

        .btn {
            display: inline-block;
            padding: 6px 12px;
            margin-bottom: 0;
            font-size: 14px;
            font-weight: 400;
            line-height: 1.42857143;
            text-align: center;
            white-space: nowrap;
            vertical-align: middle;
            -ms-touch-action: manipulation;
            touch-action: manipulation;
            cursor: pointer;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            background-image: none;
            border: 1px solid transparent;
            border-radius: 4px;
        }

        .btn-primary {
            color: #fff;
            background-color: #337ab7;
            border-color: #2e6da4;
        }

        /*组件主样式*/

        .overflow-text {
            display: block;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
            opacity: 0;
            clear: both;
            padding: 0 10px;
            border-radius: 10px;
            box-sizing: border-box;
            max-width: 100%;
            color: #fff;
            animation: colorchange 3s infinite alternate;
            -webkit-animation: colorchange 3s infinite alternate;
            /*Safari and Chrome*/
        }

        @keyframes colorchange {
            0% {
                color: red;
            }
            50% {
                color: green;
            }
            100% {
                color: #6993f9;
            }
        }

        /*组件主样式*/
    </style>

    <body id="app">
        <!-- Loader-->
        <div id="page-preloader"><span class="spinner border-t_second_b border-t_prim_a"></span>
        </div>
        <!-- Loader end-->
        <!-- ==========================-->
        <!-- MOBILE MENU-->
        <!-- ==========================-->
        <div data-off-canvas="mobile-slidebar left overlay">
            <a class="navbar-brand scroll" href="home.html">
                <img class="normal-logo img-resonsive visible-xs visible-sm" src="/car/user/media/general/logo.png" alt="logo" />
                <img class="scroll-logo img-resonsive hidden-xs hidden-sm" src="/car/user/media/general/logo-dark.png" alt="logo" />
            </a>
            <ul class="nav navbar-nav">
                <li>
                    <h4><a href="">Mobile sidebar</a></h4>
                </li>
                <li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">Home<b class="caret"></b></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="home.html" tabindex="-1">Home one page</a>
                        </li>
                        <li><a href="home-2.html" tabindex="-1">Home standart</a>
                        </li>
                    </ul>
                </li>
                <li><a href="repair-shop.html">Repair Shop</a>
                </li>
                <li><a href="car-rental.html">Car Rental</a>
                </li>
                <li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">Listings<b class="caret"></b></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="listings-1.html" tabindex="-1">Listings ver 01</a>
                        </li>
                        <li><a href="listings-2.html" tabindex="-1">Listings ver 02</a>
                        </li>
                        <li><a href="listings-3.html" tabindex="-1">Listings ver 03</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">Blog<b class="caret"></b></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="blog-main.html" tabindex="-1">Blog main</a>
                        </li>
                        <li><a href="blog-post.html" tabindex="-1">Blog post</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">Pages<b class="caret"></b></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="car-details.html" tabindex="-1">Car details</a>
                        </li>
                        <li><a href="typography.html" tabindex="-1">Typography</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="l-theme animated-css" data-header="sticky" data-header-top="200" data-canvas="container">
            <!-- Start Switcher-->
            <div class="switcher-wrapper">
                <div class="demo_changer">
                    <div class="demo-icon text-primary"><i class="fa fa-cog fa-spin fa-2x"></i>
                    </div>
                    <div class="form_holder">
                        <div class="predefined_styles">
                            <div class="skin-theme-switcher">
                                <h4>Color</h4>
                                <a class="styleswitch" href="javascript:void(0);" data-switchcolor="color1" style="background-color:#d01818"></a>
                                <a class="styleswitch" href="javascript:void(0);" data-switchcolor="color2" style="background-color:#FFAC3A"></a>
                                <a class="styleswitch" href="javascript:void(0);" data-switchcolor="color3" style="background-color:#28af0f"></a>
                                <a class="styleswitch" href="javascript:void(0);" data-switchcolor="color4" style="background-color:#e425e9"></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end switcher-->
            <!-- ==========================-->
            <!-- SEARCH MODAL-->
            <!-- ==========================-->
            <div class="header-search open-search">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 col-xs-10 col-xs-offset-1">
                            <div class="navbar-search">
                                <form class="search-global">
                                    <input class="search-global__input" type="text" placeholder="Type to search" autocomplete="off" name="s" value="" />
                                    <button class="search-global__btn"><i class="icon stroke icon-Search"></i>
                                    </button>
                                    <div class="search-global__note">Begin typing your search above and press return to search.</div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <button class="search-close close" type="button"><i class="fa fa-times"></i>
                </button>
            </div>
            <div data-off-canvas="slidebar-1 left overlay">
                <ul class="nav navbar-nav">
                    <li><a class="scrollTo" href="#features-section">features</a>
                    </li>
                    <li><a class="scrollTo" href="#services-section">Services</a>
                    </li>
                    <li><a class="scrollTo" href="#works-section">Works</a>
                    </li>
                    <li><a class="scrollTo" href="#about-section">About</a>
                    </li>
                    <li><a class="scrollTo" href="#team-section">Team</a>
                    </li>
                    <li><a href="#">News</a>
                        <div class="wrap-inside-nav">
                            <div class="inside-col">
                                <ul class="inside-nav">
                                    <li><a href="blog.html">Blog 1</a>
                                    </li>
                                    <li><a href="blog-2.html">Blog 2</a>
                                    </li>
                                    <li><a href="blog-single.html">Blog single</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li><a href="#">Portfolio</a>
                        <div class="wrap-inside-nav">
                            <div class="inside-col">
                                <ul class="inside-nav">
                                    <li><a href="portfolio.html">Portfolio</a>
                                    </li>
                                    <li><a href="portfolio-single.html">Portfolio single</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li><a href="#">Contact</a>
                        <div class="wrap-inside-nav">
                            <div class="inside-col">
                                <ul class="inside-nav">
                                    <li><a href="contact.html">Contact 1</a>
                                    </li>
                                    <li><a href="contact-2.html">Contact 2</a>
                                    </li>
                                    <li><a href="contact-3.html">Contact 3</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <header class="header header-boxed-width navbar-fixed-top header-background-white header-color-black header-topbar-dark header-logo-black header-topbarbox-1-left header-topbarbox-2-right header-navibox-1-left header-navibox-2-right header-navibox-3-right header-navibox-4-right">
                <div class="container container-boxed-width">
                    <div class="top-bar">
                        <div class="container">
                            <div class="header-topbarbox-1">
                                <ul>
                                    <li><i class="icon fa fa-clock-o"></i> Mon - Fri : 0900am to 0600pm</li>
                                    <li><i class="icon fa fa-phone"></i><a href="tel:+0427983549">+ 042 798 3549</a>
                                    </li>
                                    <li><i class="icon fa fa-envelope-o"></i><a href="mailto:support@motorland.com">support@motorland.com</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="header-topbarbox-2">
                                <ul class="social-links">
                                    <li><a href="/" target="_blank"><i class="social_icons fa fa-twitter"></i></a>
                                    </li>
                                    <li><a href="/" target="_blank"><i class="social_icons fa fa-facebook"></i></a>
                                    </li>
                                    <li><a href="/" target="_blank"><i class="social_icons fa fa-linkedin"></i></a>
                                    </li>
                                    <li class="li-last"><a href="/" target="_blank"><i class="social_icons fa fa-instagram"></i></a>
                                    </li>
                                    <li><a href="/" target="_blank"><i class="social_icons fa fa-youtube-play"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <nav class="navbar" id="nav">
                        <div class="container">
                            <div class="header-navibox-1">
                                <!-- Mobile Trigger Start-->
                                <button class="menu-mobile-button visible-xs-block js-toggle-mobile-slidebar toggle-menu-button"><i class="toggle-menu-button-icon"><span></span><span></span><span></span><span></span><span></span><span></span></i>
                                </button>
                                <!-- Mobile Trigger End-->
                                <a class="navbar-brand scroll" href="home.html">
                                    <img class="normal-logo img-responsive" src="/car/user/media/general/logo.png" alt="logo" />
                                    <img class="scroll-logo hidden-xs img-responsive" src="/car/user/media/general/logo-dark.png" alt="logo" />
                                </a>
                            </div>
                            <div class="header-navibox-3">
                                <ul class="nav navbar-nav hidden-xs clearfix vcenter">
                                    <li>
                                        <div class="header-cart"><a href="#"><i class="icon fa fa-shopping-basket" aria-hidden="true"></i><span class="header-cart-count bg-primary">3</span></a>
                                        </div>
                                    </li>
                                    <li><a class="btn_header_search" href="#"><i class="icon fa fa-search"></i></a>
                                    </li>
                                </ul><a class="btn btn-primary" href="home.html">sell car</a>
                            </div>
                            <div class="header-navibox-2">
                                <ul class="yamm main-menu nav navbar-nav">
                                    <li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">Home<b class="caret"></b></a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="home.html" tabindex="-1">Home one page</a>
                                            </li>
                                            <li><a href="home-2.html" tabindex="-1">Home standart</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="repair-shop.html">Repair Shop</a>
                                    </li>
                                    <li><a href="car-rental.html">Car Rental</a>
                                    </li>
                                    <li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">Listings<b class="caret"></b></a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="listings-1.html" tabindex="-1">Listings ver 01</a>
                                            </li>
                                            <li><a href="listings-2.html" tabindex="-1">Listings ver 02</a>
                                            </li>
                                            <li><a href="listings-3.html" tabindex="-1">Listings ver 03</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">Blog<b class="caret"></b></a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="blog-main.html" tabindex="-1">Blog main</a>
                                            </li>
                                            <li><a href="blog-post.html" tabindex="-1">Blog post</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">Pages<b class="caret"></b></a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="car-details.html" tabindex="-1">Car details</a>
                                            </li>
                                            <li><a href="typography.html" tabindex="-1">Typography</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
            </header>
            <!-- end .header-->
            <div class="section-title-page area-bg area-bg_dark area-bg_op_70">
                <div class="area-bg__inner">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12">
                                <h1 class="b-title-page bg-primary_a">cars details</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end .b-title-page-->
            <div class="bg-grey">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <ol class="breadcrumb">
                                <li><a href="home.html"><i class="icon fa fa-home"></i></a>
                                </li>
                                <li><a href="listings-1.html.html">Vehicle Inventry</a>
                                </li>
                                <li class="active">Car Details</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end breadcrumb-->
            <main class="l-main-content">
                <!--  弹幕-->
                <div>
                    <button id="stop" class="btn btn-primary">停止</button>
                    <button id="open" class="btn btn-primary">弹</button>
                    <input type="text" class="form-control" name="" id="barrage_content" placeholder="添加弹幕内容"><button class="btn btn-primary" id="submit_barraget">发送</button>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-8">
                            <section class="b-car-details">
                                <div class="b-car-details__header">
                                    <h2 class="b-car-details__title">2018 BMW 4 Series</h2>
                                    <div class="b-car-details__subtitle">AWD 430i xSmart Drive Coupe</div>
                                    <div class="b-car-details__address"><i class="icon fa fa-map-marker text-primary"></i> 13165 N Auto Show Ave Surprise, AZ 85388</div>
                                    <div class="b-car-details__links"><a class="b-car-details__link" href="car-details.html"><i class="icon fa fa-exchange text-primary"></i> Add to Compare</a><a class="b-car-details__link" href="car-details.html"><i class="icon fa fa-car text-primary"></i> Car Brochure</a>
                                        <a class="b-car-details__link" href="car-details.html"><i class="icon fa fa-share-alt text-primary"></i> Share</a>
                                    </div>
                                </div>
                                <div class="slider-car-details slider-pro" id="slider-car-details">
                                    <div class="sp-slides">
                                        <div class="sp-slide">
                                            <img class="sp-image" :src="car.carIcon" alt="img" />
                                        </div>
                                        <div class="sp-slide">
                                            <img class="sp-image" :src="car.carIcon" alt="img" />
                                        </div>
                                        <div class="sp-slide">
                                            <img class="sp-image" :src="car.carIcon" alt="img" />
                                        </div>
                                        <div class="sp-slide">
                                            <img class="sp-image" :src="car.carIcon" alt="img" />
                                        </div>
                                        <div class="sp-slide">
                                            <img class="sp-image" :src="car.carIcon" alt="img" />
                                        </div>
                                        <div class="sp-slide">
                                            <img class="sp-image" :src="car.carIcon" alt="img" />
                                        </div>
                                        <div class="sp-slide">
                                            <img class="sp-image" :src="car.carIcon" alt="img" />
                                        </div>
                                    </div>
                                    <div class="sp-thumbnails">
                                        <div class="sp-thumbnail">
                                            <img class="img-responsive" :src="car.carIcon" alt="img" />
                                        </div>
                                        <div class="sp-thumbnail">
                                            <img class="img-responsive" :src="car.carIcon" alt="img" />
                                        </div>
                                        <div class="sp-thumbnail">
                                            <img class="img-responsive" :src="car.carIcon" alt="img" />
                                        </div>
                                        <div class="sp-thumbnail sp-thumbnail_video">
                                            <img class="img-responsive" src="/car/user/media/content/gallery/car-details/thumb/4.jpg" alt="img" />
                                        </div>
                                        <div class="sp-thumbnail">
                                            <img class="img-responsive" src="/car/user/media/content/gallery/car-details/thumb/5.jpg" alt="img" />
                                        </div>
                                        <div class="sp-thumbnail">
                                            <img class="img-responsive" src="/car/user/media/content/gallery/car-details/thumb/1.jpg" alt="img" />
                                        </div>
                                        <div class="sp-thumbnail">
                                            <img class="img-responsive" src="/car/user/media/content/gallery/car-details/thumb/2.jpg" alt="img" />
                                        </div>
                                    </div>
                                </div>
                                <!-- end .b-thumb-slider-->
                                <div class="b-car-details__section">
                                    <h3 class="b-car-details__section-title ui-title-inner">Car Overview</h3>
                                    <div class="b-car-details__section-subtitle">Eiusmod tempor incididunt ut labore et dolore magna aliqua enim ad minim veniam.</div>
                                    <p>Motorland nisi aliquip exea consequat duis lorem ipsum dolor sit amet consectetura dipisicing elit dui sed eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam quis nostrud exercitation.
                                        Slamco em laborisa aliquip ex ea comdo consequat uis aute irure dolor sraeprehenderit voluptate velit.</p>
                                </div>
                                <ul class="b-car-details__nav nav nav-tabs bg-primary">
                                    <li class="active"><a href="#specifications" data-toggle="tab">好评</a>
                                    </li>
                                    <li><a href="#details" data-toggle="tab">差评</a>
                                    </li>
                                    <li><a href="#contact" data-toggle="tab">更多</a>
                                    </li>
                                </ul>
                                <div class="b-car-details__tabs tab-content">
                                    <div class="tab-pane active fade in" id="specifications">
                                        <div class="commentAll">
                                            <!--评论区域 begin-->
                                            <div class="reviewArea clearfix">
                                                <textarea class="content comment-input" placeholder="Please enter a comment&hellip;" onkeyup="keyUP(this)"></textarea>
                                                <a href="javascript:;" class="plBtn">评论</a>
                                            </div>
                                            <!--评论区域 end-->
                                            <!--回复区域 begin-->
                                            <div class="comment-show" v-for="praise in car.praise">
                                                <div class="comment-show-con clearfix">
                                                    <div class="comment-show-con-img pull-left"><img src="/car/user/comment/images/header-img-comment_03.png" alt=""></div>
                                                    <div class="comment-show-con-list pull-left clearfix">
                                                        <div class="pl-text clearfix">
                                                            <a href="#" class="comment-size-name">张三 : </a>
                                                            <span class="my-pl-con">&nbsp;{{praise}}</span>
                                                        </div>
                                                        <div class="date-dz">
                                                            <span class="date-dz-left pull-left comment-time">2017-5-2 11:11:39</span>
                                                            <div class="date-dz-right pull-right comment-pl-block">
                                                                <a href="javascript:;" class="removeBlock">删除</a>
                                                                <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a>
                                                                <span class="pull-left date-dz-line">|</span>
                                                                <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)</a>
                                                            </div>
                                                        </div>
                                                        <div class="hf-list-con"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--回复区域 end-->
                                        </div>
                                        <!-- <div class="b-car-details__tabs-title">more features</div> -->
                                        <!-- <ul class="list list-mark-5 list_mark-prim list-2-col">
                                            <li>Drivetrain Oil Cooler: Auxiliary</li>
                                            <li>Engine Alternator: 160 Amps</li>
                                            <li>Exterior Mirrors Manual Folding</li>
                                            <li>Seatbelts Seatbelt Warning Sensors</li>
                                            <li>Front Headrests Adjustable</li>
                                            <li>Cruise Control System</li>
                                            <li>Crumple Zones Front</li>
                                            <li>Roll Stability Control</li>
                                            <li>Multi-Function Display</li>
                                            <li>ABS Brakes (4-Wheel)</li>
                                            <li>Audio System 6 Speakers</li>
                                            <li>Electronic Brakeforce Distribution</li>
                                        </ul> -->
                                    </div>
                                    <div class="tab-pane fade" id="details">
                                        <div class="comment-show" v-for="badReview in car.badReview">
                                            <div class="comment-show-con clearfix">
                                                <div class="comment-show-con-img pull-left"><img src="/car/user/comment/images/header-img-comment_03.png" alt=""></div>
                                                <div class="comment-show-con-list pull-left clearfix">
                                                    <div class="pl-text clearfix">
                                                        <a href="#" class="comment-size-name">张三 : </a>
                                                        <span class="my-pl-con">&nbsp;{{badReview}}</span>
                                                    </div>
                                                    <div class="date-dz">
                                                        <span class="date-dz-left pull-left comment-time">2017-5-2 11:11:39</span>
                                                        <div class="date-dz-right pull-right comment-pl-block">
                                                            <a href="javascript:;" class="removeBlock">删除</a>
                                                            <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a>
                                                            <span class="pull-left date-dz-line">|</span>
                                                            <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)</a>
                                                        </div>
                                                    </div>
                                                    <div class="hf-list-con"></div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="tab-pane fade" id="contact">
                                        <p>Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea comodo consequat aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur
                                            sint cupidatat non proident sunt in culpa qui officia deserunt mollit anim.</p>
                                        <p>This 2018 model car is Brilliant Black Crystal Pearlcoat with a Black/Diesel Gray interior. Buy confidence knowing Jeep Dodge Ram Surprise has been exceeding customer expectations for many years and always provide
                                            customers with a great value!</p>
                                        <p>Sit amet consectetura dipisicing elit dui sed eiusmod tempor incididunt ut labore uset dolore magna aliqua minim veniam quis nostrud exercitation. Slamco em laborisa aliquip ex ea comdo consequat uis auted irure
                                            rehenderit voluptate velit esse cillum dolore eu fugiat nulla sed pariatura ipsum dolor ame consecteu adipis elit sed do eiusmod tempora incididunt. Lorem ipsum dolor sit amet, consectetur adipisicing elit sed
                                            do eius tempor incididunt ut labore et dolore magna aliqua.</p>
                                        <p>Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea comodo consequat aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur
                                            sint cupidatat non proident sunt in culpa qui officia deserunt mollit anim.</p>
                                    </div>
                                </div>
                            </section>
                        </div>
                        <div class="col-md-4">
                            <aside class="l-sidebar-2">
                                <div class="b-car-info">
                                    <div class="b-car-info__price">￥{{car.carPrice}}万<span class="b-car-info__price-msrp">MSRP ￥{{car.carPrice}}万</span>
                                    </div>
                                    <dl class="b-car-info__desc dl-horizontal bg-grey">
                                        <dt class="b-car-info__desc-dt">名称</dt>
                                        <dd class="b-car-info__desc-dd">{{car.carName}}</dd>
                                        <dt class="b-car-info__desc-dt">用户评分</dt>
                                        <dd class="b-car-info__desc-dd">{{car.carRating}}</dd>
                                        <dt class="b-car-info__desc-dt">结构</dt>
                                        <dd class="b-car-info__desc-dd">{{car.carStructure}}</dd>
                                        <dt class="b-car-info__desc-dt">变速箱</dt>
                                        <dd class="b-car-info__desc-dd">{{car.carTransmission}}</dd>
                                        <dt class="b-car-info__desc-dt">发动机</dt>
                                        <dd class="b-car-info__desc-dd">{{car.carEngine}}L</dd>
                                        <dt class="b-car-info__desc-dt">级别</dt>
                                        <dd class="b-car-info__desc-dd">{{car.carLevel}}</dd>
                                        <dt class="b-car-info__desc-dt">colors</dt>
                                        <dd class="b-car-info__desc-dd">brown, Black</dd>
                                    </dl>
                                    <div class="b-car-info__item"><span class="b-car-info__item-name"><i class="icon flaticon-fuel"></i> Economy</span>
                                        <div class="b-car-info__item-inner"><span class="b-car-info__item-info"><span class="b-car-info__item-info_lg">16</span><span class="b-car-info__item-info_sm"> CITY</span></span><span class="b-car-info__item-info"><span class="b-car-info__item-info_lg">24</span>
                                            <span class="b-car-info__item-info_sm">HWY</span>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="b-car-info__item"><span class="b-car-info__item-name"><i class="icon flaticon-car"></i> Vehicle Demand</span>
                                        <div class="b-car-info__item-inner"><span class="b-car-info__item-info">HIGH</span>
                                        </div>
                                    </div>
                                    <div class="b-bnr-2">
                                        <div class="b-bnr-2__icon flaticon-smartphone"></div>
                                        <div class="b-bnr-2__inner">
                                            <div class="b-bnr-2__title">Call Dealer</div>
                                            <div class="b-bnr-2__info">1-820-431-5815</div>
                                        </div>
                                    </div>
                                    <!-- end .b-banner-->
                                    <form class="b-calculator">
                                        <div class="b-calculator__header"><i class="icon flaticon-calculator text-primary"></i>
                                            <div class="b-calculator__header-inner">
                                                <div class="b-calculator__name">Finance Calculator</div>
                                                <div class="b-calculator__info">Calculate The Car Financing</div>
                                            </div>
                                        </div>
                                        <div class="b-calculator__group">
                                            <div class="b-calculator__label">VEHICLE PRICE ($)</div>
                                            <input class="b-calculator__input form-control" type="text" placeholder="$28.600" />
                                        </div>
                                        <div class="b-calculator__group">
                                            <div class="b-calculator__label">INTEREST RATE (%)</div>
                                            <input class="b-calculator__input form-control" type="text" placeholder="10%" />
                                        </div>
                                        <div class="b-calculator__group">
                                            <div class="b-calculator__label">period in months</div>
                                            <input class="b-calculator__input form-control" type="text" placeholder="15 Months" />
                                        </div>
                                        <div class="b-calculator__group">
                                            <div class="b-calculator__label">down payment</div>
                                            <input class="b-calculator__input form-control" type="text" placeholder="$5,000" />
                                        </div>
                                        <button class="btn btn-dark">Cauculate</button>
                                    </form>
                                    <!-- end .b-calculator-->
                                </div>
                            </aside>
                        </div>
                    </div>
                </div>
                <!-- end .b-car-details-->
                <section class="section-default_top">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12">
                                <h2 class="ui-title-block">Related Cars</h2>
                                <div class="ui-decor"></div>
                                <div class="related-carousel owl-carousel owl-theme owl-theme_w-btn enable-owl-carousel" data-min768="2" data-min992="3" data-min1200="3" data-margin="30" data-pagination="false" data-navigation="true" data-auto-play="4000" data-stop-on-hover="true">
                                    <div class="b-goods-feat">
                                        <div class="b-goods-feat__img">
                                            <img class="img-responsive" src="/car/user/media/components/b-goods/featured-1.jpg" alt="foto" /><span class="b-goods-feat__label">$45,000<span class="b-goods-feat__label_msrp">MSRP $27,000</span></span>
                                        </div>
                                        <ul class="b-goods-feat__desc list-unstyled">
                                            <li class="b-goods-feat__desc-item">35,000 mi</li>
                                            <li class="b-goods-feat__desc-item">Model: 2017</li>
                                            <li class="b-goods-feat__desc-item">Auto</li>
                                            <li class="b-goods-feat__desc-item">320 hp</li>
                                        </ul>
                                        <h3 class="b-goods-feat__name"><a href="car-details.html">Lexus GX 490i Hybird</a></h3>
                                        <div class="b-goods-feat__info">Duis aute irure reprehender voluptate velit ese acium fugiat nulla pariatur excepteur ipsum.</div>
                                    </div>
                                    <!-- end .b-goods-featured-->
                                    <div class="b-goods-feat">
                                        <div class="b-goods-feat__img">
                                            <img class="img-responsive" src="/car/user/media/components/b-goods/featured-2.jpg" alt="foto" /><span class="b-goods-feat__label">$45,000<span class="b-goods-feat__label_msrp">MSRP $27,000</span></span>
                                        </div>
                                        <ul class="b-goods-feat__desc list-unstyled">
                                            <li class="b-goods-feat__desc-item">35,000 mi</li>
                                            <li class="b-goods-feat__desc-item">Model: 2017</li>
                                            <li class="b-goods-feat__desc-item">Auto</li>
                                            <li class="b-goods-feat__desc-item">320 hp</li>
                                        </ul>
                                        <h3 class="b-goods-feat__name"><a href="car-details.html">Toyota Avalon TX</a></h3>
                                        <div class="b-goods-feat__info">Duis aute irure reprehender voluptate velit ese acium fugiat nulla pariatur excepteur ipsum.</div>
                                    </div>
                                    <!-- end .b-goods-featured-->
                                    <div class="b-goods-feat">
                                        <div class="b-goods-feat__img">
                                            <img class="img-responsive" src="/car/user/media/components/b-goods/featured-3.jpg" alt="foto" /><span class="b-goods-feat__label">$45,000<span class="b-goods-feat__label_msrp">MSRP $27,000</span></span>
                                        </div>
                                        <ul class="b-goods-feat__desc list-unstyled">
                                            <li class="b-goods-feat__desc-item">35,000 mi</li>
                                            <li class="b-goods-feat__desc-item">Model: 2017</li>
                                            <li class="b-goods-feat__desc-item">Auto</li>
                                            <li class="b-goods-feat__desc-item">320 hp</li>
                                        </ul>
                                        <h3 class="b-goods-feat__name"><a href="car-details.html">Lexus GX 490i Hybird</a></h3>
                                        <div class="b-goods-feat__info">Duis aute irure reprehender voluptate velit ese acium fugiat nulla pariatur excepteur ipsum.</div>
                                    </div>
                                    <!-- end .b-goods-featured-->
                                    <div class="b-goods-feat">
                                        <div class="b-goods-feat__img">
                                            <img class="img-responsive" src="/car/user/media/components/b-goods/featured-4.jpg" alt="foto" /><span class="b-goods-feat__label">$45,000<span class="b-goods-feat__label_msrp">MSRP $27,000</span></span>
                                        </div>
                                        <ul class="b-goods-feat__desc list-unstyled">
                                            <li class="b-goods-feat__desc-item">35,000 mi</li>
                                            <li class="b-goods-feat__desc-item">Model: 2017</li>
                                            <li class="b-goods-feat__desc-item">Auto</li>
                                            <li class="b-goods-feat__desc-item">320 hp</li>
                                        </ul>
                                        <h3 class="b-goods-feat__name"><a href="car-details.html">Lexus GX 490i Hybird</a></h3>
                                        <div class="b-goods-feat__info">Duis aute irure reprehender voluptate velit ese acium fugiat nulla pariatur excepteur ipsum.</div>
                                    </div>
                                    <!-- end .b-goods-featured-->
                                    <div class="b-goods-feat">
                                        <div class="b-goods-feat__img">
                                            <img class="img-responsive" src="/car/user/media/components/b-goods/featured-5.jpg" alt="foto" /><span class="b-goods-feat__label">$45,000<span class="b-goods-feat__label_msrp">MSRP $27,000</span></span>
                                        </div>
                                        <ul class="b-goods-feat__desc list-unstyled">
                                            <li class="b-goods-feat__desc-item">35,000 mi</li>
                                            <li class="b-goods-feat__desc-item">Model: 2017</li>
                                            <li class="b-goods-feat__desc-item">Auto</li>
                                            <li class="b-goods-feat__desc-item">320 hp</li>
                                        </ul>
                                        <h3 class="b-goods-feat__name"><a href="car-details.html">Lexus GX 490i Hybird</a></h3>
                                        <div class="b-goods-feat__info">Duis aute irure reprehender voluptate velit ese acium fugiat nulla pariatur excepteur ipsum.</div>
                                    </div>
                                    <!-- end .b-goods-featured-->
                                </div>
                                <!-- end .related-carousel-->
                            </div>
                        </div>
                    </div>
                </section>
                <!-- end .section-default_top-->
            </main>
            <!-- end .l-main-content-->
            <footer class="footer area-bg">
                <div class="area-bg__inner">
                    <div class="footer__main">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="footer-section">
                                        <a class="footer__logo" href="home.html">
                                            <img class="img-responsive" src="/car/user/media/general/logo.png" alt="Logo" />
                                        </a>
                                        <div class="footer__info">Duis aute irure reprehend voluptate velit ese acium fugiat nula pariatur exceptus ipsum dolor sit amet consectetur adipisic elita sed eiusmod tempor.</div>
                                        <ul class="social-net list-inline">
                                            <li class="social-net__item"><a class="social-net__link text-primary_h" href="facebook.com"><i class="icon fa fa-facebook"></i></a>
                                            </li>
                                            <li class="social-net__item"><a class="social-net__link text-primary_h" href="twitter.com"><i class="icon fa fa-twitter"></i></a>
                                            </li>
                                            <li class="social-net__item"><a class="social-net__link text-primary_h" href="linkedin.com"><i class="icon fa fa-linkedin"></i></a>
                                            </li>
                                            <li class="social-net__item"><a class="social-net__link text-primary_h" href="instagram.com"><i class="icon fa fa-instagram"></i></a>
                                            </li>
                                            <li class="social-net__item"><a class="social-net__link text-primary_h" href="youtube.com"><i class="icon fa fa-youtube-play"></i></a>
                                            </li>
                                        </ul>
                                        <!-- end .social-list-->
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <section class="footer-section footer-section_list-columns">
                                        <h3 class="footer-section__title ui-title-inner">Top Brands</h3>
                                        <ul class="footer-list footer-list_columns list-unstyled">
                                            <li class="footer-list__item"><a class="footer-list__link" href="about.html">Alfa Romeo</a>
                                            </li>
                                            <li class="footer-list__item"><a class="footer-list__link" href="about.html">Ferrari</a>
                                            </li>
                                            <li class="footer-list__item"><a class="footer-list__link" href="about.html">BMW Series</a>
                                            </li>
                                            <li class="footer-list__item"><a class="footer-list__link" href="about.html">Mercedes</a>
                                            </li>
                                            <li class="footer-list__item"><a class="footer-list__link" href="about.html">Aston Martin</a>
                                            </li>
                                            <li class="footer-list__item"><a class="footer-list__link" href="about.html">Toyota</a>
                                            </li>
                                            <li class="footer-list__item"><a class="footer-list__link" href="about.html">Opel</a>
                                            </li>
                                            <li class="footer-list__item"><a class="footer-list__link" href="about.html">Land Rover</a>
                                            </li>
                                            <li class="footer-list__item"><a class="footer-list__link" href="about.html">Mclaren</a>
                                            </li>
                                            <li class="footer-list__item"><a class="footer-list__link" href="about.html">Peogeot</a>
                                            </li>
                                            <li class="footer-list__item"><a class="footer-list__link" href="about.html">Renault</a>
                                            </li>
                                        </ul>
                                    </section>
                                </div>
                                <div class="col-md-2">
                                    <section class="footer-section footer-section_list-one">
                                        <h3 class="footer-section__title ui-title-inner">Categories</h3>
                                        <ul class="footer-list list-unstyled">
                                            <li class="footer-list__item"><a class="footer-list__link" href="about.html">Trucks</a>
                                            </li>
                                            <li class="footer-list__item"><a class="footer-list__link" href="about.html">Sports Cars</a>
                                            </li>
                                            <li class="footer-list__item"><a class="footer-list__link" href="about.html">Crossovers</a>
                                            </li>
                                            <li class="footer-list__item"><a class="footer-list__link" href="about.html">Hybrid Cars</a>
                                            </li>
                                            <li class="footer-list__item"><a class="footer-list__link" href="about.html">Hybrid SUVs</a>
                                            </li>
                                            <li class="footer-list__item"><a class="footer-list__link" href="about.html">Future Cars</a>
                                            </li>
                                        </ul>
                                    </section>
                                </div>
                                <div class="col-md-3">
                                    <section class="footer-section">
                                        <h3 class="footer-section__title ui-title-inner">Address Information</h3>
                                        <div class="footer-contact footer-contact_lg">Call us<span class="text-primary"> (042) 789 35490</span>
                                        </div>
                                        <div class="footer-contact"><i class="icon icon-xs fa fa-envelope-o"></i>support@motorland.com</div>
                                        <div class="footer-contact"><i class="icon icon-lg fa fa-map-marker"></i>Fairview Ave, El Monte, CA, 91732</div>
                                        <div class="footer-contact"><i class="icon fa fa-clock-o"></i>Mon - Fri : 0900am to 0600pm</div>
                                    </section>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="copyright">
                        <div class="container">
                            <div class="row">
                                <div class="col-xs-12">Copyrights 2017<a class="copyright__brand" href="home.html"> MOTORLAND</a> All Rights Reserved<a class="copyright__link" href="privacy-policy.html">Privacy Policy</a><a class="copyright__link" href="terms-of-use.html">Terms & Conditions</a>
                                </div>
                            </div>
                        </div>
                    </div><span class="btn-up" id="toTop">TOP</span>
                </div>
            </footer>
            <!-- .footer-->
        </div>
        <!-- end layout-theme-->


        <!-- ++++++++++++-->
        <!-- MAIN SCRIPTS-->
        <!-- ++++++++++++-->
        <script type="text/javascript" src="/car/user/js/detail.js"></script>
        <link rel="stylesheet" href="/car/user/comment/css/style.css">
        <link rel="stylesheet" href="/car/user/comment/css/comment.css">
        <!-- <script type="text/javascript" src="/car/user/comment/js/jquery-1.12.0.min.js"></script> -->
        <script type="text/javascript" src="/car/user/comment/js/jquery.flexText.js"></script>
    </body>
    <script>
        var data = [{
                href: '/car',
                text: '欢迎来到汽车个性推荐系统'
            },
            {
                href: 'http://www.baidu.com',
                text: '百度'
            },
            {
                href: 'http://www.liyongjun.me',
                text: '本人主页'
            }
        ]
        // 数据初始化
        var Obj = $('body').barrage({
            data: data, //数据列表
            row: 5, //显示行数
            time: 2500, //间隔时间
            gap: 20, //每一个的间隙
            position: 'fixed', //绝对定位
            direction: 'bottom right', //方向
            ismoseoverclose: true, //悬浮是否停止
            height: 30, //设置单个div的高度
        })
        Obj.start();

        //添加评论
        $("#submit_barraget").click(function() {

            var val = $("#barrage_content").val();
            //此格式与dataa.js的数据格式必须一致
            var addVal = {
                href: '',
                text: val
            }
            //添加进数组
            Obj.data.unshift(addVal);
            alert('评论成功');

        })

        $("#open").click(function() {
            Obj.start();
        })
        $("#stop").click(function() {
            Obj.close();
        })

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
                    // "carIcon": "http://ibootstrap-file.b0.upaiyun.com/lorempixel.com/140/140/default.jpg",
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
                    self.carForm.carIcon = self.imgUrl;
                    if (GetQueryString("carId") != null) {
                        api_url = "/car/recommend/update/" + GetQueryString("carId");
                    } else {
                        api_url = "/car/recommend/api/add";
                    }


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
                            url: "/car/recommend/detailAndComment/" + GetQueryString("carId"),
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
    </script>
    <!--textarea高度自适应-->
    <script type="text/javascript">
        $(function() {
            $('.content').flexText();
        });
    </script>
    <!--textarea限制字数-->
    <script type="text/javascript">
        function keyUP(t) {
            var len = $(t).val().length;
            if (len > 139) {
                $(t).val($(t).val().substring(0, 140));
            }
        }
    </script>
    <!--点击评论创建评论条-->
    <script type="text/javascript">
        $('.commentAll').on('click', '.plBtn', function() {
            var myDate = new Date();
            //获取当前年
            var year = myDate.getFullYear();
            //获取当前月
            var month = myDate.getMonth() + 1;
            //获取当前日
            var date = myDate.getDate();
            var h = myDate.getHours(); //获取当前小时数(0-23)
            var m = myDate.getMinutes(); //获取当前分钟数(0-59)
            if (m < 10) m = '0' + m;
            var s = myDate.getSeconds();
            if (s < 10) s = '0' + s;
            var now = year + '-' + month + "-" + date + " " + h + ':' + m + ":" + s;
            //获取输入内容
            var oSize = $(this).siblings('.flex-text-wrap').find('.comment-input').val();
            console.log(oSize);
            //动态创建评论模块
            oHtml =
                '<div class="comment-show-con clearfix"><div class="comment-show-con-img pull-left"><img src="/car/user/comment/images/header-img-comment_03.png" alt=""></div> <div class="comment-show-con-list pull-left clearfix"><div class="pl-text clearfix"> <a href="#" class="comment-size-name">David Beckham : </a> <span class="my-pl-con">&nbsp;' +
                oSize + '</span> </div> <div class="date-dz"> <span class="date-dz-left pull-left comment-time">' + now +
                '</span> <div class="date-dz-right pull-right comment-pl-block"><a href="javascript:;" class="removeBlock">删除</a> <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a> <span class="pull-left date-dz-line">|</span> <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)</a> </div> </div><div class="hf-list-con"></div></div> </div>';
            if (oSize.replace(/(^\s*)|(\s*$)/g, "") != '') {
                $(this).parents('.reviewArea ').siblings('.comment-show').prepend(oHtml);
                $(this).siblings('.flex-text-wrap').find('.comment-input').prop('value', '').siblings('pre').find('span').text('');
            }
        });
    </script>
    <!--点击回复动态创建回复块-->
    <script type="text/javascript">
        $('.comment-show').on('click', '.pl-hf', function() {
            //获取回复人的名字
            var fhName = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.pl-text').find('.comment-size-name').html();
            //回复@
            var fhN = '回复@' + fhName;
            //var oInput = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.hf-con');
            var fhHtml = '<div class="hf-con pull-left"> <textarea class="content comment-input hf-input" placeholder="" onkeyup="keyUP(this)"></textarea> <a href="javascript:;" class="hf-pl">评论</a></div>';
            //显示回复
            if ($(this).is('.hf-con-block')) {
                $(this).parents('.date-dz-right').parents('.date-dz').append(fhHtml);
                $(this).removeClass('hf-con-block');
                $('.content').flexText();
                $(this).parents('.date-dz-right').siblings('.hf-con').find('.pre').css('padding', '6px 15px');
                //console.log($(this).parents('.date-dz-right').siblings('.hf-con').find('.pre'))
                //input框自动聚焦
                $(this).parents('.date-dz-right').siblings('.hf-con').find('.hf-input').val('').focus().val(fhN);
            } else {
                $(this).addClass('hf-con-block');
                $(this).parents('.date-dz-right').siblings('.hf-con').remove();
            }
        });
    </script>
    <!--评论回复块创建-->
    <script type="text/javascript">
        $('.comment-show').on('click', '.hf-pl', function() {
            var oThis = $(this);
            var myDate = new Date();
            //获取当前年
            var year = myDate.getFullYear();
            //获取当前月
            var month = myDate.getMonth() + 1;
            //获取当前日
            var date = myDate.getDate();
            var h = myDate.getHours(); //获取当前小时数(0-23)
            var m = myDate.getMinutes(); //获取当前分钟数(0-59)
            if (m < 10) m = '0' + m;
            var s = myDate.getSeconds();
            if (s < 10) s = '0' + s;
            var now = year + '-' + month + "-" + date + " " + h + ':' + m + ":" + s;
            //获取输入内容
            var oHfVal = $(this).siblings('.flex-text-wrap').find('.hf-input').val();
            console.log(oHfVal)
            var oHfName = $(this).parents('.hf-con').parents('.date-dz').siblings('.pl-text').find('.comment-size-name').html();
            var oAllVal = '回复@' + oHfName;
            if (oHfVal.replace(/^ +| +$/g, '') == '' || oHfVal == oAllVal) {

            } else {
                $.getJSON("/car/user/comment/json/pl.json", function(data) {
                    var oAt = '';
                    var oHf = '';
                    $.each(data, function(n, v) {
                        delete v.hfContent;
                        delete v.atName;
                        var arr;
                        var ohfNameArr;
                        if (oHfVal.indexOf("@") == -1) {
                            data['atName'] = '';
                            data['hfContent'] = oHfVal;
                        } else {
                            arr = oHfVal.split(':');
                            ohfNameArr = arr[0].split('@');
                            data['hfContent'] = arr[1];
                            data['atName'] = ohfNameArr[1];
                        }

                        if (data.atName == '') {
                            oAt = data.hfContent;
                        } else {
                            oAt = '回复<a href="#" class="atName">@' + data.atName + '</a> : ' + data.hfContent;
                        }
                        oHf = data.hfName;
                    });

                    var oHtml = '<div class="all-pl-con"><div class="pl-text hfpl-text clearfix"><a href="#" class="comment-size-name">我的名字 : </a><span class="my-pl-con">' + oAt +
                        '</span></div><div class="date-dz"> <span class="date-dz-left pull-left comment-time">' + now +
                        '</span> <div class="date-dz-right pull-right comment-pl-block"> <a href="javascript:;" class="removeBlock">删除</a> <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a> <span class="pull-left date-dz-line">|</span> <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)</a> </div> </div></div>';
                    oThis.parents('.hf-con').parents('.comment-show-con-list').find('.hf-list-con').css('display', 'block').prepend(oHtml) && oThis.parents('.hf-con').siblings('.date-dz-right').find('.pl-hf').addClass('hf-con-block') &&
                        oThis.parents('.hf-con').remove();
                });
            }
        });
    </script>
    <!--删除评论块-->
    <script type="text/javascript">
        $('.commentAll').on('click', '.removeBlock', function() {
            var oT = $(this).parents('.date-dz-right').parents('.date-dz').parents('.all-pl-con');
            if (oT.siblings('.all-pl-con').length >= 1) {
                oT.remove();
            } else {
                $(this).parents('.date-dz-right').parents('.date-dz').parents('.all-pl-con').parents('.hf-list-con').css('display', 'none')
                oT.remove();
            }
            $(this).parents('.date-dz-right').parents('.date-dz').parents('.comment-show-con-list').parents('.comment-show-con').remove();

        })
    </script>
    <!--点赞-->
    <script type="text/javascript">
        $('.comment-show').on('click', '.date-dz-z', function() {
            var zNum = $(this).find('.z-num').html();
            if ($(this).is('.date-dz-z-click')) {
                zNum--;
                $(this).removeClass('date-dz-z-click red');
                $(this).find('.z-num').html(zNum);
                $(this).find('.date-dz-z-click-red').removeClass('red');
            } else {
                zNum++;
                $(this).addClass('date-dz-z-click');
                $(this).find('.z-num').html(zNum);
                $(this).find('.date-dz-z-click-red').addClass('red');
            }
        })
    </script>

</html>
