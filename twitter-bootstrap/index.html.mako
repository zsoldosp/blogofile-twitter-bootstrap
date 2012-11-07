<%inherit file="_templates/site.mako" />
<article class="hero-unit">
<%self:filter chain="markdown">

Welcome to Blogofile
====================

This is an example [Blogofile](http://www.blogofile.com) site that is
optimized for HTML5 browsers.

Please see the [Documentation](http://www.blogofile.com/documentation)
for getting started and for customizing your site.

Specific customization points for this example:

 * ``_templates/theme.mako`` imports the stylesheet and a few custom web fonts from [Google's CDN](http://www.google.com/webfonts).
 * To change the twitter search for the widget on the right, see ``js/site.js`` and ``_templates/sidebar.mako``.
</%self:filter>
            <p><a class="btn btn-primary btn-large">Learn more &raquo;</a></p>
</article>

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
