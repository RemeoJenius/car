<#include "header.ftl">

    <body>
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
            <div class="main-slider main-slider-1">
                <div class="slider-pro" id="main-slider" data-slider-width="100%" data-slider-height="700px" data-slider-arrows="true" data-slider-buttons="false">
                    <div class="sp-slides">
                        <!-- Slide 1-->
                        <div class="sp-slide">
                            <img class="sp-image" src="/car/user/media/components/b-main-slider/1.jpg" alt="slider" />
                            <div class="main-slider__wrap sp-layer" data-width="" data-position="centerLeft" data-horizontal="62%" data-show-transition="left" data-hide-transition="left" data-show-duration="2000" data-show-delay="1200" data-hide-delay="400">
                                <div class="main-slider__title">mercedes benz<span class="main-slider__label bg-primary">model 2018</span>
                                </div>
                                <div class="main-slider__subtitle">smart drive</div><a class="main-slider__btn btn btn-white btn-lg" href="services.html"><span class="main-slider__btn-label">Starting</span><span class="main-slider__btn-price"> $<strong>560/M</strong></span></a><a class="main-slider__btn btn btn-primary btn-lg"
                                href="services.html">book now</a>
                            </div>
                        </div>
                        <!-- Slide 2-->
                        <div class="sp-slide">
                            <img class="sp-image" src="/car/user/media/components/b-main-slider/2.jpg" alt="slider" />
                            <div class="main-slider__wrap sp-layer" data-width="" data-position="centerLeft" data-horizontal="62%" data-show-transition="left" data-hide-transition="left" data-show-duration="2000" data-show-delay="1200" data-hide-delay="400">
                                <div class="main-slider__title">mercedes benz<span class="main-slider__label bg-primary">model 2018</span>
                                </div>
                                <div class="main-slider__subtitle">smart drive</div><a class="main-slider__btn btn btn-white" href="services.html">Starting<span class="main-slider__btn-price"> $<strong>560/M</strong></span></a><a class="main-slider__btn btn btn-primary" href="services.html">book now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <section class="section-filter">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="text-center">
                                <a href="/car/parameter/comparing"><h2 class="ui-title-block">Find Your Dream Car</h2></a>
                                <div class="ui-subtitle-block">Tempor incididunt labore dolore magna aliqua sed ipsum</div>
                                <div class="ui-decor"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- end .section-filter-->
            <section class="section-default">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="text-center">
                                <h2 class="ui-title-block">Featured Vehicles</h2>
                                <div class="ui-subtitle-block">Tempor incididunt labore dolore magna alique</div>
                                <div class="ui-decor"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="featured-carousel owl-carousel owl-theme owl-theme_w-btn enable-owl-carousel" data-min768="2" data-min992="3" data-min1200="5" data-margin="30" data-pagination="false" data-navigation="true" data-auto-play="4000" data-stop-on-hover="true">
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
                </div>
                <!-- end .featured-carousel-->
            </section>
            <!-- end .section-default-->
            <section class="section-isotope">
                <div class="section-isotope__header bg-grey">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="text-center">
                                    <h2 class="ui-title-block">Photo Gallery</h2>
                                    <div class="ui-subtitle-block">Tempor incididunt labore dolore magna cillium fugiat</div>
                                    <div class="ui-decor"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="b-isotope">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12">
                                <ul class="b-isotope-filter list-inline">
                                    <li class="current"><a href="" data-filter="*">all</a>
                                    </li>
                                    <li><a href="" data-filter=".sale">for sale</a>
                                    </li>
                                    <li><a href="" data-filter=".new">new arrivals</a>
                                    </li>
                                    <li><a href="" data-filter=".top">top brands</a>
                                    </li>
                                    <li><a href="" data-filter=".ferrari">ferrari</a>
                                    </li>
                                    <li><a href="" data-filter=".mercedes">mercedes</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <ul class="b-isotope-grid grid list-unstyled">
                        <li class="grid-sizer"></li>
                        <li class="b-isotope-grid__item grid-item top mercedes">
                            <a class="b-isotope-grid__inner js-zoom-images" href="/car/user/media/content/gallery/384x300/1.jpg">
                                <img src="/car/user/media/content/gallery/384x300/1.jpg" alt="foto" /><span class="b-isotope-grid__wrap-info helper"><span class="b-isotope-grid__info"><i class="icon fa fa-search"></i><span class="b-isotope-grid__title">porsche panamera 2018</span></span>
                                </span>
                            </a>
                        </li>
                        <li class="b-isotope-grid__item grid-item sale ferrari">
                            <a class="b-isotope-grid__inner js-zoom-images" href="/car/user/media/content/gallery/384x300/2.jpg">
                                <img src="/car/user/media/content/gallery/384x300/2.jpg" alt="foto" /><span class="b-isotope-grid__wrap-info helper"><span class="b-isotope-grid__info"><i class="icon fa fa-search"></i><span class="b-isotope-grid__title">porsche panamera 2018</span></span>
                                </span>
                            </a>
                        </li>
                        <li class="b-isotope-grid__item grid-item new top mercedes">
                            <a class="b-isotope-grid__inner js-zoom-images" href="/car/user/media/content/gallery/384x300/3.jpg">
                                <img src="/car/user/media/content/gallery/384x300/3.jpg" alt="foto" /><span class="b-isotope-grid__wrap-info helper"><span class="b-isotope-grid__info"><i class="icon fa fa-search"></i><span class="b-isotope-grid__title">porsche panamera 2018</span></span>
                                </span>
                            </a>
                        </li>
                        <li class="b-isotope-grid__item grid-item sale top">
                            <a class="b-isotope-grid__inner js-zoom-images" href="/car/user/media/content/gallery/384x300/4.jpg">
                                <img src="/car/user/media/content/gallery/384x300/4.jpg" alt="foto" /><span class="b-isotope-grid__wrap-info helper"><span class="b-isotope-grid__info"><i class="icon fa fa-search"></i><span class="b-isotope-grid__title">porsche panamera 2018</span></span>
                                </span>
                            </a>
                        </li>
                        <li class="b-isotope-grid__item grid-item sale ferrari">
                            <a class="b-isotope-grid__inner js-zoom-images" href="/car/user/media/content/gallery/384x300/5.jpg">
                                <img src="/car/user/media/content/gallery/384x300/5.jpg" alt="foto" /><span class="b-isotope-grid__wrap-info helper"><span class="b-isotope-grid__info"><i class="icon fa fa-search"></i><span class="b-isotope-grid__title">porsche panamera 2018</span></span>
                                </span>
                            </a>
                        </li>
                        <li class="b-isotope-grid__item grid-item new top mercedes">
                            <a class="b-isotope-grid__inner js-zoom-images" href="/car/user/media/content/gallery/384x300/6.jpg">
                                <img src="/car/user/media/content/gallery/384x300/6.jpg" alt="foto" /><span class="b-isotope-grid__wrap-info helper"><span class="b-isotope-grid__info"><i class="icon fa fa-search"></i><span class="b-isotope-grid__title">porsche panamera 2018</span></span>
                                </span>
                            </a>
                        </li>
                        <li class="b-isotope-grid__item grid-item sale ferrari">
                            <a class="b-isotope-grid__inner js-zoom-images" href="/car/user/media/content/gallery/384x300/7.jpg">
                                <img src="/car/user/media/content/gallery/384x300/7.jpg" alt="foto" /><span class="b-isotope-grid__wrap-info helper"><span class="b-isotope-grid__info"><i class="icon fa fa-search"></i><span class="b-isotope-grid__title">porsche panamera 2018</span></span>
                                </span>
                            </a>
                        </li>
                        <li class="b-isotope-grid__item grid-item sale top">
                            <a class="b-isotope-grid__inner js-zoom-images" href="/car/user/media/content/gallery/384x300/8.jpg">
                                <img src="/car/user/media/content/gallery/384x300/8.jpg" alt="foto" /><span class="b-isotope-grid__wrap-info helper"><span class="b-isotope-grid__info"><i class="icon fa fa-search"></i><span class="b-isotope-grid__title">porsche panamera 2018</span></span>
                                </span>
                            </a>
                        </li>
                        <li class="b-isotope-grid__item grid-item sale mercedes">
                            <a class="b-isotope-grid__inner js-zoom-images" href="/car/user/media/content/gallery/384x300/9.jpg">
                                <img src="/car/user/media/content/gallery/384x300/9.jpg" alt="foto" /><span class="b-isotope-grid__wrap-info helper"><span class="b-isotope-grid__info"><i class="icon fa fa-search"></i><span class="b-isotope-grid__title">porsche panamera 2018</span></span>
                                </span>
                            </a>
                        </li>
                        <li class="b-isotope-grid__item grid-item new">
                            <a class="b-isotope-grid__inner js-zoom-images" href="/car/user/media/content/gallery/384x300/10.jpg">
                                <img src="/car/user/media/content/gallery/384x300/10.jpg" alt="foto" /><span class="b-isotope-grid__wrap-info helper"><span class="b-isotope-grid__info"><i class="icon fa fa-search"></i><span class="b-isotope-grid__title">porsche panamera 2018</span></span>
                                </span>
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- end .b-isotope-->
            </section>


            <!-- end .section-default-->
            <section class="section-news area-bg area-bg_light area-bg_op_90 parallax" style="background-image: url(/car/user/media/content/bg/bg-7.jpg)">
                <div class="area-bg__inner">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="text-center">
                                    <h2 class="ui-title-block">Latest News</h2>
                                    <div class="ui-subtitle-block">Tempor incididunt labore dolore magna clium fugiat alique</div>
                                    <div class="ui-decor"></div>
                                </div>
                                <div class="carousel-news owl-carousel owl-theme owl-theme_w-btn enable-owl-carousel" data-min768="2" data-min992="3" data-min1200="3" data-margin="30" data-pagination="false" data-navigation="true" data-auto-play="4000" data-stop-on-hover="true">
                                    <section class="b-post b-post-1 clearfix">
                                        <div class="entry-media">
                                            <img class="img-responsive" src="/car/user/media/content/posts/360x250/1.jpg" alt="Foto" />
                                        </div>
                                        <div class="entry-main">
                                            <div class="entry-header">
                                                <div class="entry-meta">
                                                    <div class="entry-meta__face">
                                                        <img class="img-responsive" src="/car/user/media/content/posts/face/76x76_1.jpg" alt="face" />
                                                    </div><span class="entry-meta__item">Post by<a class="entry-meta__link" href="blog-main.html"> Thomas Neil</a></span><a class="entry-meta__categorie" href="blog-main.html"><strong>Ford News</strong></a>
                                                </div>
                                                <h2 class="entry-title"><a href="blog-post.html">Ford Motors overhauled its design team </a></h2>
                                            </div>
                                            <div class="entry-content">
                                                <p>Duis aute irure reprehender voluptate velits fugiat nulla pariatur excepteur ipsum doloe amet consecteur adipisicing elit.</p>
                                            </div>
                                            <div class="entry-footer">
                                                <div class="entry-footer__inner">
                                                    <div class="b-post-social">SHARE
                                                        <ul class="b-post-social__list list-inline">
                                                            <li><a href="twitter.com"><i class="icon fa fa-twitter"></i></a>
                                                            </li>
                                                            <li><a href="facebook.com"><i class="icon fa fa-facebook"></i></a>
                                                            </li>
                                                            <li><a href="plus.google.com"><i class="icon fa fa-google-plus"></i></a>
                                                            </li>
                                                            <li><a href="pinterest.com"><i class="icon fa fa-pinterest-p"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="entry-meta"><span class="entry-meta__item"><i class="entry-meta__icon fa fa-heart"></i>300</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </section>
                                    <!-- end .post-->
                                    <section class="b-post b-post-1 clearfix">
                                        <div class="entry-media">
                                            <img class="img-responsive" src="/car/user/media/content/posts/360x250/2.jpg" alt="Foto" />
                                        </div>
                                        <div class="entry-main">
                                            <div class="entry-header">
                                                <div class="entry-meta">
                                                    <div class="entry-meta__face">
                                                        <img class="img-responsive" src="/car/user/media/content/posts/face/76x76_2.jpg" alt="face" />
                                                    </div><span class="entry-meta__item">Post by<a class="entry-meta__link" href="blog-main.html"> Thomas Neil</a></span><a class="entry-meta__categorie" href="blog-main.html"><strong>Driving</strong></a>
                                                </div>
                                                <h2 class="entry-title"><a href="blog-post.html">Self-driving legislation sets in the motion</a></h2>
                                            </div>
                                            <div class="entry-content">
                                                <p>Duis aute irure reprehender voluptate velits fugiat nulla pariatur excepteur ipsum doloe amet consecteur adipisicing elit.</p>
                                            </div>
                                            <div class="entry-footer">
                                                <div class="entry-footer__inner">
                                                    <div class="b-post-social">SHARE
                                                        <ul class="b-post-social__list list-inline">
                                                            <li><a href="twitter.com"><i class="icon fa fa-twitter"></i></a>
                                                            </li>
                                                            <li><a href="facebook.com"><i class="icon fa fa-facebook"></i></a>
                                                            </li>
                                                            <li><a href="plus.google.com"><i class="icon fa fa-google-plus"></i></a>
                                                            </li>
                                                            <li><a href="pinterest.com"><i class="icon fa fa-pinterest-p"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="entry-meta"><span class="entry-meta__item"><i class="entry-meta__icon fa fa-heart"></i>205</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </section>
                                    <!-- end .post-->
                                    <section class="b-post b-post-1 clearfix">
                                        <div class="entry-media">
                                            <img class="img-responsive" src="/car/user/media/content/posts/360x250/3.jpg" alt="Foto" />
                                        </div>
                                        <div class="entry-main">
                                            <div class="entry-header">
                                                <div class="entry-meta">
                                                    <div class="entry-meta__face">
                                                        <img class="img-responsive" src="/car/user/media/content/posts/face/76x76_3.jpg" alt="face" />
                                                    </div><span class="entry-meta__item">Post by<a class="entry-meta__link" href="blog-main.html"> Thomas Neil</a></span><a class="entry-meta__categorie" href="blog-main.html"><strong>What’s New</strong></a>
                                                </div>
                                                <h2 class="entry-title"><a href="blog-post.html">What's new coming from the automakers in future</a></h2>
                                            </div>
                                            <div class="entry-content">
                                                <p>Duis aute irure reprehender voluptate velits fugiat nulla pariatur excepteur ipsum doloe amet consecteur adipisicing elit.</p>
                                            </div>
                                            <div class="entry-footer">
                                                <div class="entry-footer__inner">
                                                    <div class="b-post-social">SHARE
                                                        <ul class="b-post-social__list list-inline">
                                                            <li><a href="twitter.com"><i class="icon fa fa-twitter"></i></a>
                                                            </li>
                                                            <li><a href="facebook.com"><i class="icon fa fa-facebook"></i></a>
                                                            </li>
                                                            <li><a href="plus.google.com"><i class="icon fa fa-google-plus"></i></a>
                                                            </li>
                                                            <li><a href="pinterest.com"><i class="icon fa fa-pinterest-p"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="entry-meta"><span class="entry-meta__item"><i class="entry-meta__icon fa fa-heart"></i>242</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </section>
                                    <!-- end .post-->
                                    <section class="b-post b-post-1 clearfix">
                                        <div class="entry-media">
                                            <img class="img-responsive" src="/car/user/media/content/posts/360x250/1.jpg" alt="Foto" />
                                        </div>
                                        <div class="entry-main">
                                            <div class="entry-header">
                                                <div class="entry-meta">
                                                    <div class="entry-meta__face">
                                                        <img class="img-responsive" src="/car/user/media/content/posts/face/76x76_1.jpg" alt="face" />
                                                    </div><span class="entry-meta__item">Post by<a class="entry-meta__link" href="blog-main.html"> Thomas Neil</a></span><a class="entry-meta__categorie" href="blog-main.html"><strong>Ford News</strong></a>
                                                </div>
                                                <h2 class="entry-title"><a href="blog-post.html">Ford Motors overhauled its design team </a></h2>
                                            </div>
                                            <div class="entry-content">
                                                <p>Duis aute irure reprehender voluptate velits fugiat nulla pariatur excepteur ipsum doloe amet consecteur adipisicing elit.</p>
                                            </div>
                                            <div class="entry-footer">
                                                <div class="entry-footer__inner">
                                                    <div class="b-post-social">SHARE
                                                        <ul class="b-post-social__list list-inline">
                                                            <li><a href="twitter.com"><i class="icon fa fa-twitter"></i></a>
                                                            </li>
                                                            <li><a href="facebook.com"><i class="icon fa fa-facebook"></i></a>
                                                            </li>
                                                            <li><a href="plus.google.com"><i class="icon fa fa-google-plus"></i></a>
                                                            </li>
                                                            <li><a href="pinterest.com"><i class="icon fa fa-pinterest-p"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="entry-meta"><span class="entry-meta__item"><i class="entry-meta__icon fa fa-heart"></i>300</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </section>
                                    <!-- end .post-->
                                    <section class="b-post b-post-1 clearfix">
                                        <div class="entry-media">
                                            <img class="img-responsive" src="/car/user/media/content/posts/360x250/2.jpg" alt="Foto" />
                                        </div>
                                        <div class="entry-main">
                                            <div class="entry-header">
                                                <div class="entry-meta">
                                                    <div class="entry-meta__face">
                                                        <img class="img-responsive" src="/car/user/media/content/posts/face/76x76_2.jpg" alt="face" />
                                                    </div><span class="entry-meta__item">Post by<a class="entry-meta__link" href="blog-main.html"> Thomas Neil</a></span><a class="entry-meta__categorie" href="blog-main.html"><strong>Driving</strong></a>
                                                </div>
                                                <h2 class="entry-title"><a href="blog-post.html">Self-driving legislation sets in the motion</a></h2>
                                            </div>
                                            <div class="entry-content">
                                                <p>Duis aute irure reprehender voluptate velits fugiat nulla pariatur excepteur ipsum doloe amet consecteur adipisicing elit.</p>
                                            </div>
                                            <div class="entry-footer">
                                                <div class="entry-footer__inner">
                                                    <div class="b-post-social">SHARE
                                                        <ul class="b-post-social__list list-inline">
                                                            <li><a href="twitter.com"><i class="icon fa fa-twitter"></i></a>
                                                            </li>
                                                            <li><a href="facebook.com"><i class="icon fa fa-facebook"></i></a>
                                                            </li>
                                                            <li><a href="plus.google.com"><i class="icon fa fa-google-plus"></i></a>
                                                            </li>
                                                            <li><a href="pinterest.com"><i class="icon fa fa-pinterest-p"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="entry-meta"><span class="entry-meta__item"><i class="entry-meta__icon fa fa-heart"></i>205</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </section>
                                    <!-- end .post-->
                                    <section class="b-post b-post-1 clearfix">
                                        <div class="entry-media">
                                            <img class="img-responsive" src="/car/user/media/content/posts/360x250/3.jpg" alt="Foto" />
                                        </div>
                                        <div class="entry-main">
                                            <div class="entry-header">
                                                <div class="entry-meta">
                                                    <div class="entry-meta__face">
                                                        <img class="img-responsive" src="/car/user/media/content/posts/face/76x76_3.jpg" alt="face" />
                                                    </div><span class="entry-meta__item">Post by<a class="entry-meta__link" href="blog-main.html"> Thomas Neil</a></span><a class="entry-meta__categorie" href="blog-main.html"><strong>What’s New</strong></a>
                                                </div>
                                                <h2 class="entry-title"><a href="blog-post.html">What's new coming from the automakers in future</a></h2>
                                            </div>
                                            <div class="entry-content">
                                                <p>Duis aute irure reprehender voluptate velits fugiat nulla pariatur excepteur ipsum doloe amet consecteur adipisicing elit.</p>
                                            </div>
                                            <div class="entry-footer">
                                                <div class="entry-footer__inner">
                                                    <div class="b-post-social">SHARE
                                                        <ul class="b-post-social__list list-inline">
                                                            <li><a href="twitter.com"><i class="icon fa fa-twitter"></i></a>
                                                            </li>
                                                            <li><a href="facebook.com"><i class="icon fa fa-facebook"></i></a>
                                                            </li>
                                                            <li><a href="plus.google.com"><i class="icon fa fa-google-plus"></i></a>
                                                            </li>
                                                            <li><a href="pinterest.com"><i class="icon fa fa-pinterest-p"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="entry-meta"><span class="entry-meta__item"><i class="entry-meta__icon fa fa-heart"></i>242</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </section>
                                    <!-- end .post-->
                                </div>
                                <!-- end .carousel-news-->
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- end .section-news-->
            <div class="section-default">
                <div class="b-brands owl-carousel owl-theme enable-owl-carousel" data-min768="2" data-min992="5" data-min1200="6" data-margin="30" data-pagination="false" data-navigation="true" data-auto-play="4000" data-stop-on-hover="true">
                    <div class="b-brands__item">
                        <div class="b-brands__img">
                            <img class="img-responsive" src="/car/user/media/components/b-brands/1.jpg" alt="foto" />
                        </div>
                    </div>
                    <div class="b-brands__item">
                        <div class="b-brands__img">
                            <img class="img-responsive" src="/car/user/media/components/b-brands/2.jpg" alt="foto" />
                        </div>
                    </div>
                    <div class="b-brands__item">
                        <div class="b-brands__img">
                            <img class="img-responsive" src="/car/user/media/components/b-brands/3.jpg" alt="foto" />
                        </div>
                    </div>
                    <div class="b-brands__item">
                        <div class="b-brands__img">
                            <img class="img-responsive" src="/car/user/media/components/b-brands/4.jpg" alt="foto" />
                        </div>
                    </div>
                    <div class="b-brands__item">
                        <div class="b-brands__img">
                            <img class="img-responsive" src="/car/user/media/components/b-brands/5.jpg" alt="foto" />
                        </div>
                    </div>
                    <div class="b-brands__item">
                        <div class="b-brands__img">
                            <img class="img-responsive" src="/car/user/media/components/b-brands/6.jpg" alt="foto" />
                        </div>
                    </div>
                </div>
                <!-- end .b-brands-->
            </div>

            <!-- end .block-table-->
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
        <!-- end layout-theme-->



    </body>

</html>
