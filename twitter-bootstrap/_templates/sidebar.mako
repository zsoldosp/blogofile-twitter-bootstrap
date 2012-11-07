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
