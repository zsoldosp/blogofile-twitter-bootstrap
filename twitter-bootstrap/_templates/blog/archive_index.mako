<%inherit file="bf_base_template" />
<h1>Archive</h1>
% for posts in month_posts:
    <div class="well span4">
        <ul class="nav nav-list">
        <li class="nav-header">${posts[0].date.strftime("%B %Y")}</li>
        % for post_index, post in enumerate(posts):
            <li><a href="${post.permapath()}">${post.title}</a></li>
        % endfor
        </ul>
    </div>
% endfor
