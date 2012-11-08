<%page args="item"/>
<% posts = item %>

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

