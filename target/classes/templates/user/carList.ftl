<!DOCTYPE html>
<html lang="zxx">

    <head>
        <meta charset="utf-8" />
        <meta http-equiv="x-ua-compatible" content="ie=edge" />
        <title>Motor Land / Portfolio</title>
        <meta content="" name="description" />
        <meta content="" name="keywords" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta content="telephone=no" name="format-detection" />
        <meta name="HandheldFriendly" content="true" />
        <#include "header.ftl">
    </head>

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
                <img class="normal-logo img-resonsive visible-xs visible-sm" src="/car/user/images/logo.png" alt="logo" />
                <img class="scroll-logo img-resonsive hidden-xs hidden-sm" src="/car/user/images/logo-dark.png" alt="logo" />
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
        <div class="l-theme animated-css" data-header="sticky" data-header-top="200" data-canvas="container" style="top: -100px;">
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
                                    <img class="normal-logo img-responsive" src="/car/user/images/logo.png" alt="logo" />
                                    <img class="scroll-logo hidden-xs img-responsive" src="/car/user/images/logo-dark.png" alt="logo" />
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
                                <h1 class="b-title-page bg-primary_a">cars listings II</h1>
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
                                <li class="active">Vehicle Inventry</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end breadcrumb-->
            <div class="container">
                <div class="row">
                    <div class="col-md-9 col-md-push-3">
                        <main class="l-main-content">
                            <div class="filter-goods">
                                <div class="filter-goods__info">Showing results from<strong> 1 - 10</strong> of total<strong> 35</strong>
                                </div>
                                <div class="filter-goods__select"><span class="hidden-xs">Sort</span>
                                    <select class="selectpicker" data-width="172">
                                        <option>Most Revelant</option>
                                        <option>A-Z</option>
                                        <option>Z-A</option>
                                    </select>
                                    <div class="btns-switch"><i class="btns-switch__item js-view-th icon fa fa-th-large"></i><i class="btns-switch__item js-view-list active icon fa fa-th-list"></i>
                                    </div>
                                </div>
                            </div>
                            <!-- end .filter-goods-->
                            <div class="goods-group-2 list-goods">
                                <section v-for="car in carShowList" class="b-goods-1 b-goods-1_mod-a">
                                    <div class="row">
                                        <div class="b-goods-1__img">
                                            <a class="js-zoom-images" href="{{car.carIcon}}">
                                                <img class="img-responsive" :src="car.carIcon" alt="foto" />
                                            </a><span class="b-goods-1__price hidden-th">￥{{car.carPrice}}(万)<span class="b-goods-1__price-msrp">MSRP ￥{{car.carPrice}}(万)</span></span>
                                        </div>
                                        <div class="b-goods-1__inner">
                                            <div class="b-goods-1__header"><a class="b-goods-1__choose hidden-th" href="listing-1.html"><i class="icon fa fa-heart-o"></i></a>
                                                <h2 class="b-goods-1__name"><a href="userCarDetails?carId={{car.carId}}">{{car.carName}}</a></h2>
                                            </div>
                                            <div class="b-goods-1__info">Duis aute irure reprehender voluptate velit esacium fugiat nula pariatur excepteurd magna aliqua ut enim ad minim veniam quis nostrud Lorem ipsum dolor sit amet con sectetur adipisicing elit sed do eiusmod tempor
                                                incididunt<span class="b-goods-1__info-more collapse" id="info-1"> lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit aut rerum numquam hic eum, aperiam fuga, pariatur repellendus. Incidunt corporis iusto illo nesciunt soluta optio eius aliquam. Similique, laborum dicta!</span>
                                                <span
                                                class="b-goods-1__info-link" data-toggle="collapse" data-target="#info-1"></span>
                                            </div><span class="b-goods-1__price_th text-primary visible-th">￥{{car.carPrice}}<span class="b-goods-1__price-msrp">MSRP ￥{{car.carPrice}}</span><a class="b-goods-1__choose" href="listing-1.html"><i class="icon fa fa-heart-o"></i></a>
                                            </span>
                                            <div class="b-goods-1__section hidden-th">
                                                <h3 class="b-goods-1__title" data-toggle="collapse" data-target="#list-1">specifications</h3>
                                                <div class="collapse in" id="list-1">
                                                    <ul class="b-goods-1__list list list-mark-5">
                                                        <li class="b-goods-1__list-item">发动机 {{car.carEngine}}</li>
                                                        <li class="b-goods-1__list-item">变速箱 {{car.carTransmission}}</li>
                                                        <li class="b-goods-1__list-item">车身结构 {{car.carStructure}}</li>
                                                        <li class="b-goods-1__list-item">级别 {{car.carLevel}}</li>
                                                        <li class="b-goods-1__list-item">用户评分 {{car.carRating}}</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>

                            </div>
                            <!-- end .goods-group-2-->
                            <ul class="pagination text-center">
                                <li><a href="#"><i class="icon fa fa-angle-double-left"></i></a>
                                </li>
                                <li><a href="#">1</a>
                                </li>
                                <li class="active"><a href="#">2</a>
                                </li>
                                <li><a href="#">3</a>
                                </li>
                                <li><a href="#"><i class="icon fa fa-angle-double-right"></i></a>
                                </li>
                            </ul>
                        </main>
                        <!-- end .l-main-content-->
                    </div>
                    <div class="col-md-3 col-md-pull-9">
                        <aside class="l-sidebar">
                            <form class="b-filter-2 bg-grey">
                                <h3 class="b-filter-2__title">search options</h3>
                                <div class="b-filter-2__inner">
                                    <div class="b-filter-2__group">
                                        <div class="b-filter-2__group-title">keyword</div>
                                        <input class="form-control" type="text" placeholder="Keyword..." />
                                    </div>
                                    <div class="b-filter-2__group">
                                        <div class="b-filter-2__group-title">Vehicle Type</div>
                                        <select v-model="carForm.carLevel" class="ui search dropdown" data-width="100%">
                                            <option value="">请选择汽车级别</option>
                                            <option v-for="level in carLevel" value="{{level}}"> {{level}}</option>
                                        </select>
                                    </div>
                                    <div class="b-filter-2__group">
                                        <div class="b-filter-2__group-title">Make</div>
                                        <select v-model="carForm.carEngine" class="ui search dropdown" data-width="100%">
                                            <option value="">选择汽车发动机</option>
                                            <option v-for="engine in carEngine" value="{{engine}}">{{engine}}</option>
                                        </select>
                                    </div>
                                    <div class="b-filter-2__group">
                                        <div class="b-filter-2__group-title">Model</div>
                                        <select v-model="carForm.carTransmission" class="ui search dropdown" data-width="100%">
                                            <option value="">选择汽车变速箱</option>
                                            <option v-for="transmission in carTransmission" value="{{transmission}}">{{transmission}}</option>
                                        </select>
                                    </div>
                                    <div class="b-filter-2__group">
                                        <div class="b-filter-2__group-title">Model Year</div>
                                        <select v-model="carForm.carName" class="ui search dropdown" data-width="100%">
                                            <option value="">选择汽车名字</option>
                                            <option v-for="name in carName" value="{{name}}">{{name}}</option>
                                        </select>
                                    </div>
                                    <div class="b-filter-2__group">
                                        <div class="b-filter-2__group-title">Filter Price</div>
                                        <div class="ui-filter-slider">
                                            <div id="slider-price"></div>
                                            <div class="ui-filter-slider__info">
                                                <div class="ui-filter-slider__label">Price Range:</div><span class="ui-filter-slider__current" id="slider-snap-value-lower"></span>-<span class="ui-filter-slider__current" id="slider-snap-value-upper"></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="b-filter-2__group">
                                        <div class="b-filter-2__group-title">Body style</div>
                                        <div class="b-filter-type-2">
                                            <div class="b-filter-type-2__item">
                                                <input class="b-filter-type-2__input" id="typePickup" type="checkbox" />
                                                <label class="b-filter-type-2__label" for="typePickup"><i class="b-filter-type-2__icon flaticon-pick-up"></i><span class="b-filter-type-2__title">PICKUP</span>
                                                </label>
                                            </div>
                                            <div class="b-filter-type-2__item">
                                                <input class="b-filter-type-2__input" id="typeSuv" type="checkbox" />
                                                <label class="b-filter-type-2__label" for="typeSuv"><i class="b-filter-type-2__icon flaticon-car-of-hatchback-model"></i><span class="b-filter-type-2__title">SUV</span>
                                                </label>
                                            </div>
                                            <div class="b-filter-type-2__item">
                                                <input class="b-filter-type-2__input" id="typeCoupe" type="checkbox" />
                                                <label class="b-filter-type-2__label" for="typeCoupe"><i class="b-filter-type-2__icon flaticon-coupe-car"></i><span class="b-filter-type-2__title">coupe</span>
                                                </label>
                                            </div>
                                            <div class="b-filter-type-2__item">
                                                <input class="b-filter-type-2__input" id="typeConvertible" type="checkbox" checked="checked" />
                                                <label class="b-filter-type-2__label" for="typeConvertible"><i class="b-filter-type-2__icon flaticon-cabrio-car"></i><span class="b-filter-type-2__title">CONVERTIBLE</span>
                                                </label>
                                            </div>
                                            <div class="b-filter-type-2__item">
                                                <input class="b-filter-type-2__input" id="typeSedan" type="checkbox" />
                                                <label class="b-filter-type-2__label" for="typeSedan"><i class="b-filter-type-2__icon flaticon-sedan-car-model"></i><span class="b-filter-type-2__title">sedan</span>
                                                </label>
                                            </div>
                                            <div class="b-filter-type-2__item">
                                                <input class="b-filter-type-2__input" id="typeMinicar" type="checkbox" />
                                                <label class="b-filter-type-2__label" for="typeMinicar"><i class="b-filter-type-2__icon flaticon-car-1"></i><span class="b-filter-type-2__title">MINICAR</span>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="b-filter-2__group">
                                        <div class="b-filter-2__group-title">TRANSMISSION</div>
                                        <div class="checkbox-group">
                                            <input class="forms__check hidden" id="check-1" type="checkbox" />
                                            <label class="forms__label forms__label-check forms__label-check-1" for="check-1">4 Speed Automatic</label>
                                            <input class="forms__check hidden" id="check-2" type="checkbox" />
                                            <label class="forms__label forms__label-check forms__label-check-1" for="check-2">4 Speed Manual</label>
                                            <input class="forms__check hidden" id="check-3" type="checkbox" checked="checked" />
                                            <label class="forms__label forms__label-check forms__label-check-1" for="check-3">5 Speed Automatic</label>
                                            <input class="forms__check hidden" id="check-4" type="checkbox" />
                                            <label class="forms__label forms__label-check forms__label-check-1" for="check-4">5 Speed Manual</label>
                                            <input class="forms__check hidden" id="check-5" type="checkbox" checked="checked" />
                                            <label class="forms__label forms__label-check forms__label-check-1" for="check-5">6-Speed Semi-Auto</label>
                                            <input class="forms__check hidden" id="check-6" type="checkbox" />
                                            <label class="forms__label forms__label-check forms__label-check-1" for="check-6">6-Speed Manual</label>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            <!-- end .b-filter-->
                        </aside>
                        <!-- end .l-sidebar-->
                    </div>
                </div>
            </div>
            <footer class="footer area-bg">
                <div class="area-bg__inner">
                    <div class="footer__main">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="footer-section">
                                        <a class="footer__logo" href="home.html">
                                            <img class="img-responsive" src="/car/user/images/logo.png" alt="Logo" />
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
        <script type="text/javascript">
                    // 获取价格范围
                    // $("#slider-snap-value-lower").text();

                    var vm = new Vue({
                        el: '#app',
                        data: {
                            carForm: {
                                carName: "",
                                carLevel: "",
                                carStructure: "",
                                carTransmission: "",
                                carEngine: "",
                                minPrice: "",
                                maxPrice: ""
                            },
                            carName: null,
                            carLevel: null,
                            carStructure: null,
                            carTransmission: null,
                            carEngine: null,
                            carShowList:[]

                        },
                        methods: {
                            getCarInfo: function() {
                                var self = this;
                                var carName = new Set();
                                var carLevel = new Set();
                                var carTransmission = new Set();
                                var carEngine = new Set();
                                $.ajax({
                                    url: "/car/recommend/comparing",
                                    type: "get",
                                    dataType: "json",
                                    async:false,
                                    data: {
                                        carName: self.carForm.carName,
                                        carLevel: self.carForm.carLevel,
                                        carStructure: self.carForm.carStructure,
                                        carTransmission: self.carForm.carTransmission,
                                        carEngine: self.carForm.carEngine,
                                        minPrice: self.carForm.minPrice,
                                        maxPrice: self.carForm.maxPrice
                                    },
                                }).done(function(result) {
                                    //不能在这个里面直接返回，直接反回是获取不到数据的
                                    self.carShowList = result.data;
                                    console.log(self.carShowList);
                                    result.data.forEach(function(car) {
                                        carName.add(car.carName);
                                        carLevel.add(car.carLevel);
                                        carTransmission.add(car.carTransmission);
                                        carEngine.add(car.carEngine);
                                    })
                                    self.carName = Array.from(carName);
                                    self.carLevel = Array.from(carLevel);
                                    self.carTransmission = Array.from(carTransmission);
                                    self.carEngine = Array.from(carEngine);
                                });
                            }
                        },
                        ready: function() {
                            this.getCarInfo();
                        }
                    });
                    vm.$watch('carForm.carName', function(val) {
                        this.getCarInfo();
                    })
                    vm.$watch('carForm.carStructure', function(val) {
                        this.getCarInfo();
                    })
                    vm.$watch('carForm.carLevel', function(val) {
                        this.getCarInfo();
                    })
                    vm.$watch('carForm.carTransmission', function(val) {
                        this.getCarInfo();
                    })
                    vm.$watch('carForm.carEngine', function(val) {
                        this.getCarInfo();
                    })
                    vm.$watch('carForm.minPrice', function(val) {
                        this.getCarInfo();
                    })
                    vm.$watch('carForm.maxPrice', function(val) {
                        this.getCarInfo();
                    })
                </script>

    </body>

</html>
