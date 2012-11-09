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
def get_nav_item_html(link_text, *path_parts):
   render_path = bf.template_context.render_path.replace('\\', '/').rsplit("/index.html")[0]
   path = bf.util.site_path_helper(*path_parts)
   li_class = ''
   if render_path == path or (path == "/" and render_path == "."):
       li_class = ' class="active"'
   return '<li%(li_class)s><a href="%(href)s">%(link_text)s</a></li>' % dict(li_class=li_class, href=path, link_text=link_text)
%>            
            <ul class="nav">
${get_nav_item_html('Home')}
${get_nav_item_html('Blog', bf.config.blog.path)}
${get_nav_item_html('Archive', bf.config.blog.path, 'archive')}
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

