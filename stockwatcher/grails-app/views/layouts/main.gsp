<!DOCTYPE html>
<!-- saved from url=(0045)http://demo.onokumus.com/metis/v12/index.html -->
<html class=" js flexbox canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths" style=""><!--<![endif]--><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Dashboard</title>
        <meta name="description" content="Metis: Bootstrap Responsive Admin Theme">
        <meta name="viewport" content="width=device-width">
        <link rel="stylesheet" href="${resource(dir: 'css/swt', file: 'bootstrap.min.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css/swt', file: 'bootstrap-responsive.min.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css/swt', file: 'font-awesome.min.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css/swt', file: 'style.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css/swt', file: 'calendar.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css/swt', file: 'theme.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css/swt', file: 'style-switcher.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css/swt', file: 'colorpicker.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css/swt', file: 'theme.less')}" type="text/css">
        
        <g:javascript src="swt/cssbeautify.js" />
        <g:javascript src="swt/bootstrap-colorpicker.js" />
        

        
 <style type="text/css" id="less:metis-v12-assets-less-theme">.dropdown-menu li > a:hover,
.dropdown-menu li > a:focus,
.dropdown-submenu:hover > a,
ul#menu > li > a:hover,
ul#menu > li:hover > a,
ul#menu > li.active > a {
  background-color: #ff0000;
  background-image: -webkit-gradient(linear, 0 100%, 100% 0, color-stop(0.25, rgba(255, 255, 255, 0.15)), color-stop(0.25, transparent), color-stop(0.5, transparent), color-stop(0.5, rgba(255, 255, 255, 0.15)), color-stop(0.75, rgba(255, 255, 255, 0.15)), color-stop(0.75, transparent), to(transparent));
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -moz-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}
ul#menu > li > a:hover,
ul#menu > li:hover > a,
ul#menu > li.active > a {
  -webkit-box-shadow: 0 1px 0 0 #ff0000 inset;
  -moz-box-shadow: 0 1px 0 0 #ff0000 inset;
  box-shadow: 0 1px 0 0 #ff0000 inset;
  -webkit-transition: height 0.4s ease-out 0s;
  -moz-transition: height 0.4s ease-out 0s;
  -o-transition: height 0.4s ease-out 0s;
  transition: height 0.4s ease-out 0s;
}
#top > .navbar {
  border-top: 3px solid #ff0000;
}
</style>
<g:javascript src="swt/less-1.4.1.min.js" />
<g:javascript src="swt/modernizr-2.6.2-respond-1.1.0.min.js" />

    <style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style>
    
    </head>
    <body style="">
    <g:hiddenField name="appName" id="appName"	value="${grailsApplication.metadata.'app.name' }" />
        <!-- BEGIN WRAP -->
        <div id="wrap">


            <!-- BEGIN TOP BAR -->
            <div id="top">
                <!-- .navbar -->
                <div class="navbar navbar-inverse navbar-static-top">
                    <div class="navbar-inner">
                        <div class="container-fluid">
                            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </a>
                            <a class="brand" href="/stockwatcher/">MyStocks</a>
                            <!-- .topnav -->
                            <div class="btn-toolbar topnav">
                                <div class="btn-group">
                                    <a id="changeSidebarPos" class="btn btn-success" rel="tooltip" data-original-title="Show / Hide Sidebar" data-placement="bottom">
                                        <i class="icon-resize-horizontal"></i>
                                    </a>
                                </div>
                                <div class="btn-group">
                                    <a class="btn btn-inverse" rel="tooltip" data-original-title="E-mail" data-placement="bottom">
                                        <i class="icon-envelope"></i>
                                        <span class="label label-warning">5</span>
                                    </a>
                                    <a class="btn btn-inverse" rel="tooltip" href="/stockwatcher/" data-original-title="Messages" data-placement="bottom">
                                        <i class="icon-comments"></i>
                                        <span class="label label-important">4</span>
                                    </a>
                                </div>
                                <div class="btn-group">
                                    <a class="btn btn-inverse" rel="tooltip" href="/stockwatcher/" data-original-title="Document" data-placement="bottom">
                                        <i class="icon-file"></i>
                                    </a>
                                    <a href="#helpModal" class="btn btn-inverse" rel="tooltip" data-placement="bottom" data-original-title="Help" data-toggle="modal">
                                        <i class="icon-question-sign"></i>
                                    </a>
                                </div>
                                <div class="btn-group">
                                    <a class="btn btn-inverse" data-placement="bottom" data-original-title="Logout" rel="tooltip" href="/stockwatcher/"><i class="icon-off"></i></a></div>
                            </div>
                            <!-- /.topnav -->
                            <div class="nav-collapse collapse">
                                <!-- .nav -->
                                <ul class="nav">
                                    <li class="active"><g:link controller="book" action="list">Dashboard</g:link><auth:ifLoggedIn> You are logged in!</auth:ifLoggedIn></li>
                                    <li class="dropdown">
                                        <a data-toggle="dropdown" class="dropdown-toggle" href="/stockwatcher/#">
                                            Investments <b class="caret"></b>
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li><a href="/stockwatcher/">Stocks</a></li>
                                            <li><a href="/stockwatcher/">Mutual Funds</a></li>
                                            <li><a href="/stockwatcher/">Bullion</a></li>
                                            <li><a href="/stockwatcher/">Loans</a></li>
                                            <li><a href="/stockwatcher/">Property</a></li>
                                            <li><a href="/stockwatcher/">Assets</a></li>
                                        </ul>
                                    </li>
                                    <li><g:link controller="book" action="list">Watchlist</g:link></li>
                                    <li><g:link controller="book" action="list">Health Check</g:link></li>
                                    <li><g:link controller="book" action="list">Alerts</g:link></li>
                                    <li><g:link controller="book" action="list">Reports</g:link></li>
                                    <li><g:link controller="book" action="list">Charts</g:link></li> 
                                </ul>
                                <!-- /.nav -->
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.navbar -->
            </div>
            <!-- END TOP BAR -->


            <!-- BEGIN HEADER.head -->
            <header class="head">

                <!-- ."main-bar -->
                <div class="main-bar">
                    <div class="container-fluid">
                        <div class="row-fluid">
                            <div class="span12">
                                <h3><i class="icon-home"></i> Dashboard</h3>
                            </div>
                        </div>
                        <!-- /.row-fluid -->
                    </div>
                    <!-- /.container-fluid -->
                </div>
                <!-- /.main-bar -->
            </header>
            <!-- END HEADER.head -->

            <!-- BEGIN LEFT  -->
            <div id="left">
                <!-- .user-media -->
                <div class="media user-media hidden-phone">
                    <a href="" class="user-link">
                        <img src="./Dashboard_files/user.gif" alt="" class="media-object img-polaroid user-img">
                        <span class="label user-label">16</span>
                    </a>

                    <div class="media-body hidden-tablet">
                        <h5 class="media-heading"><auth:user/> - Cloudgrail</h5>
                        <ul class="unstyled user-info">
                            <li><a href="">Administrator</a></li>
                            <li>Last Access : <br>
                                <small><i class="icon-calendar"></i> 16 Dec 16:32</small>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- /.user-media -->

                <!-- BEGIN MAIN NAVIGATION -->
                <ul id="menu" class="unstyled accordion collapse in">
                	<li class="active"><a href="/stockwatcher/"><i class="icon-table icon-large"></i> Dashboard</a></li>
                    <%-- <li class="accordion-group active"> --%>
                    <li class="accordion-group">
                        <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#dashboard-nav">
                            <i class="icon-dashboard icon-large"></i> Investments <span class="label label-inverse pull-right">2</span>
                        </a>
                        <%-- <ul class="collapse in" id="dashboard-nav"> --%>
                        <ul class="collapse" id="dashboard-nav">
                            <li><a href="/stockwatcher/"><i class="icon-angle-right"></i> Stocks</a></li>
                            <li><a href="/stockwatcher/"><i class="icon-angle-right"></i> Mutual Funds</a></li>
                            <li><a href="/stockwatcher/"><i class="icon-angle-right"></i> Bullion</a></li>
                            <li><a href="/stockwatcher/"><i class="icon-angle-right"></i> Loans</a></li>
                            <li><a href="/stockwatcher/"><i class="icon-angle-right"></i> Property</a></li>
                            <li><a href="/stockwatcher/"><i class="icon-angle-right"></i> Assets</a></li>
                        </ul>
                    </li>
                     <li><a href="/stockwatcher/"><i class="icon-table icon-large"></i> Watchlist</a></li>
                     <li><a href="/stockwatcher/"><i class="icon-table icon-large"></i> Health Check</a></li>
                     <li><a href="/stockwatcher/"><i class="icon-table icon-large"></i> Alerts</a></li>
                     <li><a href="/stockwatcher/"><i class="icon-table icon-large"></i> Reports</a></li>
                     <li><a href="/stockwatcher/"><i class="icon-table icon-large"></i> Charts</a></li>                     
                     <li><a href="http://demo.onokumus.com/metis/v12/login.html"><i class="icon-signin icon-large"></i> Login Page</a></li>
                </ul>
                <!-- END MAIN NAVIGATION -->

            </div>
            <!-- END LEFT -->

            <!-- BEGIN MAIN CONTENT -->
            <div id="content">
            	<div class="container-fluid outer">
                    <div class="row-fluid">
             			<g:layoutBody />
             		</div>
             	</div>
            </div>
            <!-- END CONTENT -->

            <!-- #push do not remove -->
            <div id="push"></div>
            <!-- /#push -->
        </div>
        <!-- END WRAP -->

        <div class="clearfix"></div>

        <!-- BEGIN FOOTER -->
        <div id="footer">
            <p>2013 © Metis Admin</p>
        </div>
        <!-- END FOOTER -->

        <!-- #helpModal -->
        <div id="helpModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="helpModalLabel" aria-hidden="true">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h3 id="helpModalLabel"><i class="icon-external-link"></i> Help</h3>
            </div>
            <div class="modal-body">
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex
                    ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat
                    nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit
                    anim id est laborum.
                </p>
            </div>
            <div class="modal-footer">

                <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
            </div>
        </div>
        <!-- /#helpModal -->
		<g:javascript src="swt/jquery.min.js" />
        <script>window.jQuery || document.write('<script src="js/swt/vendor/jquery-1.10.1.min.js"><\/script>')</script>

		<g:javascript src="swt/jquery-ui.min.js" />
        <script>window.jQuery.ui || document.write('<script src="js/swt/vendor/jquery-ui-1.10.0.custom.min.js"><\/script>')</script>

		<g:javascript src="swt/bootstrap.min.js" />
		<g:javascript src="swt/jquery.tablesorter.min.js" />
		<g:javascript src="swt/jquery.mousewheel.js" />
		<g:javascript src="swt/jquery.sparkline.min.js" />
		<g:javascript src="swt/jquery.flot.js" />
		<g:javascript src="swt/jquery.flot.pie.js" />
		<g:javascript src="swt/jquery.flot.selection.js" />
		<g:javascript src="swt/jquery.flot.resize.js" />
		<g:javascript src="swt/fullcalendar.min.js" />
		<g:javascript src="swt/main.js" />		
        <script type="text/javascript">
            $(function() {
            	setJQActions();              
            });
        </script>
		<g:javascript src="swt/style-switcher.js" />

    

<div id="getCSSModal" class="modal hide fade"><div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button><h3>Theme CSS</h3><p>Copy textarea content and paste into theme.css</p></div><div class="modal-body"><div id="boxedBodyAlert" class="alert alert-info">Please add the <strong>"fixed"</strong> class to the &lt;body&gt; element.</div><div id="sidebarPos" class="alert alert-info">Plase add the <strong>"side-right"</strong> class to the &lt;body&gt; element.</div><div id="sidebarWidth" class="alert alert-info">Plase add the <strong>"mini-sidebar"</strong> class to the &lt;body&gt; element.</div><div id="topNavStyle" class="alert alert-info">Plase add the <strong>"padTop44"</strong> class to the &lt;body&gt; element. Remove <strong>"navbar-static-top"</strong> class and add the <strong>"navbar-fixed-top"</strong> class to the #top .navbar element.</div><textarea name="cssbeautify" id="cssbeautify" readonly=""></textarea></div><div class="modal-footer"><button aria-hidden="true" data-dismiss="modal" class="btn">Close</button></div></div><div class="colorpicker dropdown-menu"><div class="colorpicker-saturation" style="background-color: rgb(0, 170, 255);"><i style="left: 100px; top: 20px;"><b></b></i></div><div class="colorpicker-hue"><i style="top: 44.44444444444476px;"></i></div><div class="colorpicker-alpha"><i style="top: 0px;"></i></div><div class="colorpicker-color"><div style="background-color: rgb(0, 136, 204);"></div></div></div><div id="style-switcher" class="style-switcher hidden-phone"><h5>Style Switcher<a href="http://demo.onokumus.com/metis/v12/index.html#" id="switcher-link"><i class="icon-cogs icon-2x"></i></a></h5><div class="style-switcher-wrap"><h6>Colors</h6><ul class="options" data-type="colors"><li><a data-color-hex="#0088CC" data-color-name="Blue" href="http://demo.onokumus.com/metis/v12/index.html#" title="" style="background-color: rgb(0, 136, 204);" data-original-title="Blue"></a></li><li><a data-color-hex="#4EB25C" data-color-name="Green" href="http://demo.onokumus.com/metis/v12/index.html#" title="" style="background-color: rgb(78, 178, 92);" data-original-title="Green"></a></li><li><a data-color-hex="#4A5B7D" data-color-name="Navy" href="http://demo.onokumus.com/metis/v12/index.html#" title="" style="background-color: rgb(74, 91, 125);" data-original-title="Navy"></a></li><li><a data-color-hex="#E05048" data-color-name="Red" href="http://demo.onokumus.com/metis/v12/index.html#" title="" style="background-color: rgb(224, 80, 72);" data-original-title="Red"></a></li><li><a data-color-hex="#B8A279" data-color-name="Beige" href="http://demo.onokumus.com/metis/v12/index.html#" title="" style="background-color: rgb(184, 162, 121);" data-original-title="Beige"></a></li><li><a data-color-hex="#c71c77" data-color-name="Pink" href="http://demo.onokumus.com/metis/v12/index.html#" title="" style="background-color: rgb(199, 28, 119);" data-original-title="Pink"></a></li><li><a data-color-hex="#734BA9" data-color-name="Purple" href="http://demo.onokumus.com/metis/v12/index.html#" title="" style="background-color: rgb(115, 75, 169);" data-original-title="Purple"></a></li><li><a data-color-hex="#2BAAB1" data-color-name="Cyan" href="http://demo.onokumus.com/metis/v12/index.html#" title="" style="background-color: rgb(43, 170, 177);" data-original-title="Cyan"></a></li><li><div class="color-picker" id="colorSelector" data-color="#0088CC" data-color-format="hex"><a href="http://demo.onokumus.com/metis/v12/index.html#" id="colorSelectorA" style="background-color: rgb(0, 136, 204);"></a><span class="color-picker-icon"></span></div></li></ul><hr><div class="options-link"><h6>Layout Style</h6><a id="boxLink" href="http://demo.onokumus.com/metis/v12/index.html#" data-layout-type="fixed">Fixed</a><a href="http://demo.onokumus.com/metis/v12/index.html#" id="wideLink" data-layout-type="wide" class="active">Wide</a></div><div class="options-link"><h6>Top Nav Bar Style</h6><a href="http://demo.onokumus.com/metis/v12/index.html#">Static</a><a href="http://demo.onokumus.com/metis/v12/index.html#">Fixed</a></div><div class="pattern"><h6>Background Pattern</h6><ul class="options" data-type="pattern"><li><a href="http://demo.onokumus.com/metis/v12/index.html#" title="" data-pattern-image="brillant" style="background-image: url(http://demo.onokumus.com/metis/v12/assets/img/pattern/brillant.png); background-position: initial initial; background-repeat: repeat repeat;" data-original-title="Brillant"></a></li><li><a href="http://demo.onokumus.com/metis/v12/index.html#" title="" data-pattern-image="always_grey" style="background-image: url(http://demo.onokumus.com/metis/v12/assets/img/pattern/always_grey.png); background-position: initial initial; background-repeat: repeat repeat;" data-original-title="Always Grey"></a></li><li><a href="http://demo.onokumus.com/metis/v12/index.html#" title="" data-pattern-image="retina_wood" style="background-image: url(http://demo.onokumus.com/metis/v12/assets/img/pattern/retina_wood.png); background-position: initial initial; background-repeat: repeat repeat;" data-original-title="Retina Wood"></a></li><li><a href="http://demo.onokumus.com/metis/v12/index.html#" title="" data-pattern-image="low_contrast_linen" style="background-image: url(http://demo.onokumus.com/metis/v12/assets/img/pattern/low_contrast_linen.png); background-position: initial initial; background-repeat: repeat repeat;" data-original-title="Low Constrat Linen"></a></li><li><a href="http://demo.onokumus.com/metis/v12/index.html#" title="" data-pattern-image="egg_shell" style="background-image: url(http://demo.onokumus.com/metis/v12/assets/img/pattern/egg_shell.png); background-position: initial initial; background-repeat: repeat repeat;" data-original-title="Egg Shel"></a></li><li><a href="http://demo.onokumus.com/metis/v12/index.html#" title="" data-pattern-image="cartographer" style="background-image: url(http://demo.onokumus.com/metis/v12/assets/img/pattern/cartographer.png); background-position: initial initial; background-repeat: repeat repeat;" data-original-title="Cartographer"></a></li><li><a href="http://demo.onokumus.com/metis/v12/index.html#" title="" data-pattern-image="batthern" style="background-image: url(http://demo.onokumus.com/metis/v12/assets/img/pattern/batthern.png); background-position: initial initial; background-repeat: repeat repeat;" data-original-title="Batthern"></a></li><li><a href="http://demo.onokumus.com/metis/v12/index.html#" title="" data-pattern-image="noisy_grid" style="background-image: url(http://demo.onokumus.com/metis/v12/assets/img/pattern/noisy_grid.png); background-position: initial initial; background-repeat: repeat repeat;" data-original-title="Noisy Grid"></a></li><li><a href="http://demo.onokumus.com/metis/v12/index.html#" title="" data-pattern-image="diamond_upholstery" style="background-image: url(http://demo.onokumus.com/metis/v12/assets/img/pattern/diamond_upholstery.png); background-position: initial initial; background-repeat: repeat repeat;" data-original-title="Diamond Upholstery"></a></li><li><a href="http://demo.onokumus.com/metis/v12/index.html#" title="" data-pattern-image="greyfloral" style="background-image: url(http://demo.onokumus.com/metis/v12/assets/img/pattern/greyfloral.png); background-position: initial initial; background-repeat: repeat repeat;" data-original-title="Gray Floral"></a></li><li><a href="http://demo.onokumus.com/metis/v12/index.html#" title="" data-pattern-image="white_tiles" style="background-image: url(http://demo.onokumus.com/metis/v12/assets/img/pattern/white_tiles.png); background-position: initial initial; background-repeat: repeat repeat;" data-original-title="White Tiles"></a></li><li><a href="http://demo.onokumus.com/metis/v12/index.html#" title="" data-pattern-image="gplaypattern" style="background-image: url(http://demo.onokumus.com/metis/v12/assets/img/pattern/gplaypattern.png); background-position: initial initial; background-repeat: repeat repeat;" data-original-title="GPlay"></a></li><li><a href="http://demo.onokumus.com/metis/v12/index.html#" title="" data-pattern-image="arches" style="background-image: url(http://demo.onokumus.com/metis/v12/assets/img/pattern/arches.png); background-position: initial initial; background-repeat: repeat repeat;" data-original-title="Arches"></a></li><li><a href="http://demo.onokumus.com/metis/v12/index.html#" title="" data-pattern-image="purty_wood" style="background-image: url(http://demo.onokumus.com/metis/v12/assets/img/pattern/purty_wood.png); background-position: initial initial; background-repeat: repeat repeat;" data-original-title="Purty Wood"></a></li><li><a href="http://demo.onokumus.com/metis/v12/index.html#" title="" data-pattern-image="diagonal_striped_brick" style="background-image: url(http://demo.onokumus.com/metis/v12/assets/img/pattern/diagonal_striped_brick.png); background-position: initial initial; background-repeat: repeat repeat;" data-original-title="Diagonal Striped Brick"></a></li><li><a href="http://demo.onokumus.com/metis/v12/index.html#" title="" data-pattern-image="large_leather" style="background-image: url(http://demo.onokumus.com/metis/v12/assets/img/pattern/large_leather.png); background-position: initial initial; background-repeat: repeat repeat;" data-original-title="Large Leather"></a></li><li><a href="http://demo.onokumus.com/metis/v12/index.html#" title="" data-pattern-image="bo_play_pattern" style="background-image: url(http://demo.onokumus.com/metis/v12/assets/img/pattern/bo_play_pattern.png); background-position: initial initial; background-repeat: repeat repeat;" data-original-title="BO Play"></a></li><li><a href="http://demo.onokumus.com/metis/v12/index.html#" title="" data-pattern-image="irongrip" style="background-image: url(http://demo.onokumus.com/metis/v12/assets/img/pattern/irongrip.png); background-position: initial initial; background-repeat: repeat repeat;" data-original-title="Iron Grip"></a></li><li><a href="http://demo.onokumus.com/metis/v12/index.html#" title="" data-pattern-image="wood_1" style="background-image: url(http://demo.onokumus.com/metis/v12/assets/img/pattern/wood_1.png); background-position: initial initial; background-repeat: repeat repeat;" data-original-title="Dark Wood"></a></li><li><a href="http://demo.onokumus.com/metis/v12/index.html#" title="" data-pattern-image="pool_table" style="background-image: url(http://demo.onokumus.com/metis/v12/assets/img/pattern/pool_table.png); background-position: initial initial; background-repeat: repeat repeat;" data-original-title="Pool Table"></a></li><li><a href="http://demo.onokumus.com/metis/v12/index.html#" title="" data-pattern-image="crissXcross" style="background-image: url(http://demo.onokumus.com/metis/v12/assets/img/pattern/crissXcross.png); background-position: initial initial; background-repeat: repeat repeat;" data-original-title="crissXcross"></a></li><li><a href="http://demo.onokumus.com/metis/v12/index.html#" title="" data-pattern-image="rip_jobs" style="background-image: url(http://demo.onokumus.com/metis/v12/assets/img/pattern/rip_jobs.png); background-position: initial initial; background-repeat: repeat repeat;" data-original-title="R.I.P Steve Jobs"></a></li><li><a href="http://demo.onokumus.com/metis/v12/index.html#" title="" data-pattern-image="random_grey_variations" style="background-image: url(http://demo.onokumus.com/metis/v12/assets/img/pattern/random_grey_variations.png); background-position: initial initial; background-repeat: repeat repeat;" data-original-title="Random Grey Variations"></a></li><li><a href="http://demo.onokumus.com/metis/v12/index.html#" title="" data-pattern-image="carbon_fibre" style="background-image: url(http://demo.onokumus.com/metis/v12/assets/img/pattern/carbon_fibre.png); background-position: initial initial; background-repeat: repeat repeat;" data-original-title="Carbon Fibre"></a></li></ul></div><hr><div class="options-link sidebarOpt"><h6>Side Bar Position</h6><a href="http://demo.onokumus.com/metis/v12/index.html#">Left</a><a href="http://demo.onokumus.com/metis/v12/index.html#">Right</a></div><hr><div class="options-link sidebarOpt"><h6>Side Bar Width</h6><a href="http://demo.onokumus.com/metis/v12/index.html#">Mini</a><a href="http://demo.onokumus.com/metis/v12/index.html#">Maxi</a></div><div class="options-link"><hr><a href="http://demo.onokumus.com/metis/v12/index.html#">Reset</a><a href="http://demo.onokumus.com/metis/v12/index.html#">Get CSS</a></div></div></div></body></html>