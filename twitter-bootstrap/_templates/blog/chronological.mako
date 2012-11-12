<%inherit file="bf_base_template" />
<%
def is_first_blog_page():
   render_path = bf.template_context.render_path.replace('\\', '/').rsplit("/index.html")[0]
   is_first = render_path in ('%s' % bf.config.blog.path, '%s/page/1' % bf.config.blog.path)
   return is_first

def posts_to_iterate(posts):
    return posts[1:] if len(posts) != 0 and is_first_blog_page() else posts
%>
% if is_first_blog_page():
<article class="hero-unit">
  <%include file="post.mako" args="post=posts[0]" />
</article>
% endif

<%include file="fluid-table.mako" args="items=posts_to_iterate(posts), item_template='chronological_one_post.mako'" />
<div class="span9">
% if prev_link:
 <a class="btn pull-left" href="${prev_link}">« Previous Page</a>
% endif
% if next_link:
 <a class="btn pull-right" href="${next_link}">Next Page »</a>
% endif
</div>
