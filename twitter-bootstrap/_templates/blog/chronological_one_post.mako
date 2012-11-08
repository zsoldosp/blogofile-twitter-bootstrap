<%page args="item"/>
<% 
post = item

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
