<%inherit file="base.mako" />
<!DOCTYPE html>
<html lang="en">
  <head>
${self.head()}
  </head>

  <body>

${self.header()}
    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span3">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header">Latest Posts</li>
              % for post in bf.config.blog.iter_posts_published(5):
              <!-- TODO: include link active here, just like in navmenu
              <li class="active"><a href="#">Link</a></li>
              -->
              <li><a href="${post.path}">${post.title}</a></li>
              % endfor
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span9">
            ${next.body()} 
        </div><!--/span-->
      </div><!--/row-->
      <hr>

    ${self.footer()}
    </div><!--/.fluid-container-->
    ${self.body_scripts()}
  </body>
</html>
<%def name="head()"><%include file="head.mako" /></%def>
<%def name="header()"><%include file="header.mako" /></%def>
<%def name="sidebar()"><%include file="sidebar.mako" /></%def>
<%def name="footer()"><%include file="footer.mako" /></%def>
<%def name="body_scripts()"><%include file="body_scripts.mako" /></%def>
