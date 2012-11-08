<%page args="items, item_template"/>
<% number_of_columns = 3 %>
% for index, item in enumerate(items):
    % if index % number_of_columns == 0:  
        <div class="row-fluid">
    % endif

    <%include file="${item_template}" args="item=item" />
    
    % if index % number_of_columns == number_of_columns - 1:
        </div> <!-- row-fluid -->
    % endif
% endfor
% if index % number_of_columns != number_of_columns - 1:
    </div> <!-- row-fluid -->
% endif
