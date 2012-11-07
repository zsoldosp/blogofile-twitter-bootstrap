    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="${bf.util.site_path_helper()}">${bf.config.blog.name}</a>
          <div class="nav-collapse collapse">
            <p class="navbar-text pull-right">
              ${bf.config.blog.description}
            </p>
<%
def nav_class(path):
    # TODO: refactor to create whole link here
   render_path = bf.template_context.render_path.replace('\\', '/').rsplit("/index.html")[0]
   if render_path == path or (path == "/" and render_path == "."):
       return "active"
   return ""
%>            
            <ul class="nav">
      <li class="${nav_class(bf.util.site_path_helper())}">
            <a href="${bf.util.site_path_helper()}">Home</a></li>
      <li class="${nav_class(bf.util.site_path_helper(bf.config.blog.path))}">
            <a href="${bf.util.site_path_helper(bf.config.blog.path)}">Blog</a></li>
      <li class="${nav_class(bf.util.site_path_helper(bf.config.blog.path,'archive'))}">
            <a href="${bf.util.site_path_helper(bf.config.blog.path,'archive')}">Archives</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

