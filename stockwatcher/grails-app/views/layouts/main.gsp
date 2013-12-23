<!DOCTYPE html>
<!--[if lt IE 7]>       <html class="no-js lt-ie9 lt-ie8 lt-ie7">   <![endif]-->
<!--[if IE 7]>          <html class="no-js lt-ie9 lt-ie8">          <![endif]-->
<!--[if IE 8]>          <html class="no-js lt-ie9">                 <![endif]-->
<!--[if gt IE 8]><!-->  <html class="no-js">                        <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Dashboard</title>
        <meta name="description" content="MyStocks : Stockwatcher and portfolio tool">
        <meta name="viewport" content="width=device-width">
        <link rel="stylesheet" href="${resource(dir: 'css/swt', file: 'bootstrap.min.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css/swt', file: 'bootstrap-responsive.min.css')}" type="text/css">      
        <link rel="stylesheet" href="${resource(dir: 'css/swt', file: 'style.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css/swt', file: 'calendar.css')}" type="text/css">
 		<link rel="stylesheet" href="${resource(dir: 'css/swt', file: 'theme.css')}" type="text/css">
        

        <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
        <!--[if IE 7]>
        <link type="text/css" rel="stylesheet" href="assets/Font-awesome/css/font-awesome-ie7.min.css"/>
        <![endif]-->
		<g:javascript src='swt/vendor/modernizr-2.6.2-respond-1.1.0.min.js'/>
    </head>
    <body>
        <!-- BEGIN header -->
        <div id="header">
			<g:hiddenField name="appName" id="appName"	value="${grailsApplication.metadata.'app.name' }" />
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
                                    <a id="changeSidebarPos" class="btn btn-success" rel="tooltip"
                                       data-original-title="Show / Hide Sidebar" data-placement="bottom">
                                        <i class="icon-resize-horizontal"></i>
                                    </a>
                                </div>
                                <div class="btn-group">
                                    <a class="btn btn-inverse" rel="tooltip" data-original-title="E-mail" data-placement="bottom">
                                        <i class="icon-envelope"></i>
                                        <span class="label label-warning">5</span>
                                    </a>
                                    <a class="btn btn-inverse" rel="tooltip" href="#" data-original-title="Messages"
                                       data-placement="bottom">
                                        <i class="icon-comments"></i>
                                        <span class="label label-important">4</span>
                                    </a>
                                </div>
                                <div class="btn-group">
                                    <a class="btn btn-inverse" rel="tooltip" href="#" data-original-title="Document"
                                       data-placement="bottom">
                                        <i class="icon-file"></i>
                                    </a>
                                    <a href="#helpModal" class="btn btn-inverse" rel="tooltip" data-placement="bottom"
                                       data-original-title="Help" data-toggle="modal">
                                        <i class="icon-question-sign"></i>
                                    </a>
                                </div>
                                <div class="btn-group">
                                    <a class="btn btn-inverse" data-placement="bottom" data-original-title="Logout" rel="tooltip"
                                       href="login.html"><i class="icon-off"></i></a></div>
                            </div>
                            <!-- /.topnav -->
                            <div class="nav-collapse collapse">
                                <!-- .nav -->
                                <ul class="nav">
                                    <li class="active"><g:link controller="book" action="list">Dashboard</g:link></li>
                                     <li class="dropdown">
                                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                            Investments <b class="caret"></b>
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li><a href="form-general.html">Stocks</a></li>
                                            <li><a href="form-general.html">Mutual Funds</a></li>
                                            <li><a href="form-general.html">Bullion</a></li>
                                            <li><a href="form-general.html">Loans</a></li>
                                            <li><a href="form-general.html">Property</a></li>
                                            <li><a href="form-general.html">Assets</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="table.html">Watchlist</a></li>
                                    <li><a href="file.html">Health Check</a></li>
                                    <li><a href="file.html">Alerts</a></li>
                                    <li><a href="file.html">Reports</a></li>
                                    <li><a href="file.html">Charts</a></li>                                    
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
                <!-- <div class="search-bar">
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="search-bar-inner">
                                <a id="menu-toggle" href="#menu" data-toggle="collapse"
                                   class="accordion-toggle btn btn-inverse visible-phone"
                                   rel="tooltip" data-placement="bottom" data-original-title="Show/Hide Menu">
                                    <i class="icon-sort"></i>
                                </a>

                                <form class="main-search">
                                    <input class="input-block-level" type="text" placeholder="Live search...">
                                    <button id="searchBtn" type="submit" class="btn btn-inverse"><i class="icon-search"></i>
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                 -->
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
                        <img src="${resource(dir: 'images/swt/img', file: 'user.gif')}  class="media-object img-polaroid user-img">
                        <span class="label user-label">EMPC221</span>
                    </a>

                    <div class="media-body hidden-tablet">
                        <h5 class="media-heading">Cloudgrail</h5>
                        <ul class="unstyled user-info">
                            <li><a href="">Administrator</a></li>
                            <li>Last Access : <br/>
                                <small><i class="icon-calendar"></i> 16 Dec 16:32</small>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- /.user-media -->

                <!-- BEGIN MAIN NAVIGATION -->
                <ul id="menu" class="unstyled accordion collapse in">
                	<li><g:link controller="dashboard" action="show"><i class="icon-money icon-large "></i> Dashboard ->${activeSection}<- test
                	</g:link></a></li>
                    <li class="accordion-group">
					<a data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#dashboard-nav">
                           <i class="icon-sun icon-large"></i> Investments
                    </a>
					 <g:if test="${activeSection == 'investments'}">
                        <ul class="collapse in" id="dashboard-nav"> 
                      </g:if>
					<g:else>
						<ul class="collapse out" id="dashboard-nav">
					</g:else>                           
                            <li><g:link controller="stocks" action="show"><i class="icon-angle-right"></i> Stocks<span
                                class="label label-inverse pull-right">7</span></g:link></li>
                            <li><g:link controller="mutualFunds" action="show"><i class="icon-angle-right"></i> Mutual Funds</g:link></li>
                            <li><g:link controller="bullion" action="show"><i class="icon-angle-right"></i> Bullion</g:link></li>
                            <li><g:link controller="loans" action="show"><i class="icon-angle-right"></i> Loans</g:link></li>
                            <li><g:link controller="property" action="show"><i class="icon-angle-right"></i> Property</g:link></li>
                            <li><g:link controller="asset" action="show"><i class="icon-angle-right"></i> Assets</g:link></li>
                        </ul>
                    </li>
                    <li><g:link controller="watchList" action="show"><i class="icon-eye-open icon-large"></i> Watchlist</g:link></li>
                    <li><g:link controller="healthCheck" action="show"><i class="icon-heart icon-large"></i> Health Check</g:link></li>
                    <li><g:link controller="alert" action="show"><i class="icon-bell icon-large"></i> Alerts</g:link></li>
                    <li><g:link controller="reports" action="show"><i class="icon-print icon-large"></i> Reports</g:link></li>
                    <li><g:link controller="charts" action="show"><i class="icon-bar-chart icon-large"></i> Charts</g:link></li>
                </ul>
                <!-- END MAIN NAVIGATION -->

            </div>
            <!-- END LEFT -->

            <!-- BEGIN MAIN CONTENT -->
            <div id="content">
                <!-- .outer -->
                <div class="container-fluid outer">
                    <div class="row-fluid">
                        <!-- .inner -->
                        <div class="span12 inner">
                            <g:layoutBody />                          
                        </div>
                        <!-- /.inner -->
                    </div>
                    <!-- /.row-fluid -->
                </div>
                <!-- /.outer -->
            </div>
            <!-- END CONTENT -->


            <!-- #push do not remove -->
            <div id="push"></div>
            <!-- /#push -->
        </div>
        <!-- END header -->
       
        <div class="clearfix"></div>

        <!-- BEGIN FOOTER -->
        <div id="footer">
            <p>support Stockwatcher@abcd.com</p>
        </div>
        <!-- END FOOTER -->

        <!-- #helpModal -->
        <div id="helpModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="helpModalLabel"
             aria-hidden="true">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">Ã—</button>
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

        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/swt/vendor/jquery-1.10.1.min.js"><\/script>')</script>



        <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
        <script>window.jQuery.ui || document.write('<script src="js/swt/vendor/jquery-ui-1.10.0.custom.min.js"><\/script>')</script>


        <script src="js/swt/vendor/bootstrap.min.js"></script>

        <script src="js/swt/lib/jquery.tablesorter.min.js"></script>

        <script src="js/swt/lib/jquery.mousewheel.js"></script>
        <script src="js/swt/lib/jquery.sparkline.min.js"></script>

<!--         <script src="js/swt/flot/jquery.flot.js"></script>
        <script src="js/swt/flot/jquery.flot.pie.js"></script>
        <script src="js/swt/flot/jquery.flot.selection.js"></script>
        <script src="js/swt/flot/jquery.flot.resize.js"></script>
         -->

        <script src="js/swt/fullcalendar/fullcalendar/fullcalendar.min.js"></script>
        
        <script src="js/swt/main.js"></script>
        

        <script type="text/javascript">
            $(function() {
                dashboard();
            });
        </script>

        <script type="text/javascript" src="js/swt/style-switcher.js"></script>

    </body>
</html>
