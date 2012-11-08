<%inherit file="bf_base_template" />
<div class="page-header">
    <h1>Archive</h1>
</div>
<%include file="fluid-table.mako" args="items=month_posts, item_template='archive_index_one_month.mako'" />
