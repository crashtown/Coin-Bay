<%= form_with(model: item, local: true) do |form| %>
  <% if model.errors.any? %>
    <div id="error_explanation">
      <h2><%= pluralize(item.errors.count, "error") %> has failed to list this item for sale:</h2>

      <ul>
      <% item.errors.full_messages.each do |message| %>
        <li><%= message %></li>
      <% end %>
      </ul>
    </div>
  <% end %>

  <div class="field">
    <%= form.label :Name %>
    <%= form.text_field :title, id: :name %>
  </div>

  <div class="field">
    <%= form.label :Description %>
    <%= form.text_area :description, id: :description %>
  </div>

  <div class="field">
    <%= form.label :Category %>
    <%= form.text_field :category, id: :category %>
  </div>

  <div class="field">
    <%= form.label :Price %>
    <%= form.text_field :Price, id: :price %>
  </div>

  <div class="field">
    <%= form.label :Shipping %>
    <%= f.select :desired_attribute, ['AusPost Express', 'AusPost Registered']%>
  </div>


  <div class="actions">
    <%= form.submit %>
  </div>
<% end %>
