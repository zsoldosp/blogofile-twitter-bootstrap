<%inherit file="base.mako" />
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>${bf.config.blog.name}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="${bf.config.blog.description}">
%if bf.config.site.author:
    <meta name="author" content="${bf.config.site.author}">
%endif

    <!-- Le styles -->
    <link href="${bf.util.site_path_helper('css/bootstrap.css')}" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
      .sidebar-nav {
        padding: 9px 0;
      }
    </style>
    <link href="${bf.util.site_path_helper('css/bootstrap-responsive.css')}" rel="stylesheet">
    <link rel="stylesheet" href="${bf.util.site_path_helper(bf.config.filters.syntax_highlight.css_dir,'/pygments_'+bf.config.filters.syntax_highlight.style+'.css')}" type="text/css" />

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <%include file="theme.mako"/>

    <!-- Fav and touch icons -->
    <link rel="shortcut icon" href="${bf.util.site_path_helper('ico/favicon.ico')}">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${bf.util.site_path_helper('ico/apple-touch-icon-144-precomposed.png')}">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${bf.util.site_path_helper('ico/apple-touch-icon-114-precomposed.png')}">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${bf.util.site_path_helper('ico/apple-touch-icon-72-precomposed.png')}">
    <link rel="apple-touch-icon-precomposed" href="${bf.util.site_path_helper('ico/apple-touch-icon-57-precomposed.png')}">
  </head>

  <body>

    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="#">Project name</a>
          <div class="nav-collapse collapse">
            <p class="navbar-text pull-right">
              Logged in as <a href="#" class="navbar-link">Username</a>
            </p>
            <ul class="nav">
              <li class="active"><a href="#">Home</a></li>
              <li><a href="#about">About</a></li>
              <li><a href="#contact">Contact</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span3">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header">Sidebar</li>
              <li class="active"><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li class="nav-header">Sidebar</li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li class="nav-header">Sidebar</li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span9">
          <div class="hero-unit">
            <h1>Hello, world!</h1>
            <p>This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.</p>
            <p><a class="btn btn-primary btn-large">Learn more &raquo;</a></p>
          </div>
          <div class="row-fluid">
            <div class="span4">
              <h2>Heading</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href="#">View details &raquo;</a></p>
            </div><!--/span-->
            <div class="span4">
              <h2>Heading</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href="#">View details &raquo;</a></p>
            </div><!--/span-->
            <div class="span4">
              <h2>Heading</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href="#">View details &raquo;</a></p>
            </div><!--/span-->
          </div><!--/row-->
          <div class="row-fluid">
            <div class="span4">
              <h2>Heading</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href="#">View details &raquo;</a></p>
            </div><!--/span-->
            <div class="span4">
              <h2>Heading</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href="#">View details &raquo;</a></p>
            </div><!--/span-->
            <div class="span4">
              <h2>Heading</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href="#">View details &raquo;</a></p>
            </div><!--/span-->
          </div><!--/row-->
        </div><!--/span-->
      </div><!--/row-->

      <hr>

      <footer>
        <p>&copy; Company 2012</p>
      </footer>

    </div><!--/.fluid-container-->

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="${bf.util.site_path_helper('js/jquery.js')}"></script>
    <script src="${bf.util.site_path_helper('js/bootstrap-transition.js')}"></script>
    <script src="${bf.util.site_path_helper('js/bootstrap-alert.js')}"></script>
    <script src="${bf.util.site_path_helper('js/bootstrap-modal.js')}"></script>
    <script src="${bf.util.site_path_helper('js/bootstrap-dropdown.js')}"></script>
    <script src="${bf.util.site_path_helper('js/bootstrap-scrollspy.js')}"></script>
    <script src="${bf.util.site_path_helper('js/bootstrap-tab.js')}"></script>
    <script src="${bf.util.site_path_helper('js/bootstrap-tooltip.js')}"></script>
    <script src="${bf.util.site_path_helper('js/bootstrap-popover.js')}"></script>
    <script src="${bf.util.site_path_helper('js/bootstrap-button.js')}"></script>
    <script src="${bf.util.site_path_helper('js/bootstrap-collapse.js')}"></script>
    <script src="${bf.util.site_path_helper('js/bootstrap-carousel.js')}"></script>
    <script src="${bf.util.site_path_helper('js/bootstrap-typeahead.js')}"></script>

  </body>
</html>
<%def name="head()"><%include file="head.mako" /></%def>
<%def name="header()"><%include file="header.mako" /></%def>
<%def name="sidebar()"><%include file="sidebar.mako" /></%def>
<%def name="footer()"><%include file="footer.mako" /></%def>
<%def name="body_scripts()"><%include file="body_scripts.mako" /></%def>
