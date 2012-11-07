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
          <div class="hero-unit">
            <h1>Hello, world!</h1>
            <p>This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.</p>
            <p><a class="btn btn-primary btn-large">Learn more &raquo;</a></p>
          </div>
% for row_number in range(2):
          <div class="row-fluid">
    % for col_number in range(3):
            <div class="span4">
              <h2>Heading</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href="#">View details &raquo;</a></p>
            </div><!--/span-->
    % endfor
          </div><!--/row-->
% endfor
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
