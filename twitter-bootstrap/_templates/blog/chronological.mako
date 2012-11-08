<%inherit file="bf_base_template" />
<%
def is_first_blog_page():
   render_path = bf.template_context.render_path.replace('\\', '/').rsplit("/index.html")[0]
   is_first = render_path in ('/blog', '/blog/page/1')
   return is_first

def posts_to_iterate(posts):
    return posts[1:] if is_first_blog_page() else posts

def category_links_for(post):
   category_links = []
   for category in post.categories:
       if post.draft:
           #For drafts, we do not write to the category dirs, so just write the categories as text
           category_links.append(category.name)
       else:
           category_links.append("<a href='%s'>%s</a>" % (category.path, category.name))
   return category_links
%>
% if is_first_blog_page():
<article class="hero-unit">
  <%include file="post.mako" args="post=posts[0]" />
</article>
% endif
% for post_index, post in enumerate(posts_to_iterate(posts)):
    % if post_index % 3 == 0:
          <div class="row-fluid">
    % endif
    <section class="span4 well">
        <h2><a href="${post.permapath()}">${post.title}</a></h2>
        <p><small><span class="blog_post_date">${post.date.strftime("%B %d, %Y at %I:%M %p")}</span> | categories: 
        <span class="blog_post_categories">${", ".join(category_links_for(post))}</span>
        % if bf.config.blog.disqus.enabled:
        | <a href="${post.permalink}#disqus_thread">View Comments</a>
        % endif
      </small></p>
        <p>${post.excerpt}</p>
        <p><a class="pull-right" href="${post.permapath()}">Read the full post&raquo;</a></p>
    </section> <!-- span4 -->
    % if post_index % 3 == 2:
        </div> <!-- row-fluid -->
    % endif
% endfor
% if post_index % 3 != 2:
    </div> <!-- row-fluid -->
% endif
% if prev_link:
 <a class="btn pull-left" href="${prev_link}">« Previous Page</a>
% endif
% if next_link:
 <a class="btn pull-right" href="${next_link}">Next Page »</a>
% endif
