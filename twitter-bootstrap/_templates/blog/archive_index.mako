<%inherit file="bf_base_template" />
<div class="page-header">
    <h1>Archive</h1>
</div>
% for month_index, posts in enumerate(month_posts):
    % if month_index % 3 == 0:
          <div class="row-fluid">
    % endif
        <div class="well span4">
        <h2>${posts[0].date.strftime("%B %Y")}</h2>
        <ul class="nav nav-list">
        <!--
        <li class="nav-header">${posts[0].date.strftime("%B %Y")}</li>
        --->
        % for post in posts:
            <li><a href="${post.permapath()}">${post.title}</a></li>
        % endfor
        </ul>
        </div> <!-- well -->
    % if month_index % 3 == 2:
        </div> <!-- row-fluid -->
    % endif
% endfor
% if month_index % 3 != 2:
    </div> <!-- row-fluid -->
% endif
