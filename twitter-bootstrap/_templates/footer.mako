<% import datetime %>
      <footer>
        <div class="pull-left">
          <p>
            <a href="${bf.util.site_path_helper(bf.config.blog.path,'feed','index.xml')}">RSS</a>
            % if bf.config.blog.disqus.enabled:
            <a href="http://${bf.config.blog.disqus.name}.disqus.com/latest.rss">Comments RSS Feed</a>.
            % endif
          </p>
        </div>
        <div class="pull-right">
        <p>
          Copyright ${datetime.datetime.now().year}
          ${bf.config.site.author}
        </p>
        <p>
          Powered by <a href="http://www.blogofile.com">Blogofile</a>
        </p>
        </div>
      </footer>

