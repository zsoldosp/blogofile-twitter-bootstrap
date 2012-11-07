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
        ${self.sidebar()}
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
