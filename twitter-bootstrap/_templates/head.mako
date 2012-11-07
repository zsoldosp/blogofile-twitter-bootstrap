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

