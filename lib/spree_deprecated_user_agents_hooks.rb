class SpreeDeprecatedUserAgentsHooks < Spree::ThemeSupport::HookListener
  # custom hooks go here
  insert_after :admin_general_settings_edit do
      <<EOT
      <p>
      <%= check_box_tag('preferences[dua_enabled]', Spree::Config[:dua_enabled], Spree::Config[:dua_enabled]) %> 
      <label> <%= t("dua_enabled") %></label>
      </p>
      <p>
    	<label><%= t("dua_message") %></label><br />
    	<%= text_area_tag('preferences[dua_message]', Spree::Config[:dua_message], :size => "72x10") %>
      </p>
EOT
    end

    insert_after :admin_general_settings_show do
      <<EOT
      <tr>
      <td colspan="2"><strong><%= t('deprecated_user_agents') %></strong></td>
      </tr>
      <tr>
      <td colspan="2">
        <%= (Spree::Config[:dua_enabled] ? t("deprecated_user_agents_will_be_warned") : t("deprecated_user_agents_will_not_be_warned")) %>
      </td>	
      </tr>
      <tr>
      <td colspan="2">
        <%= t("message_for_deprecated_user_agents")%><br />
    	  <div style="display: block; border: black 1px solid; height: 300px; width: 600px;">
          <%= Spree::Config[:dua_message] %>
        </div>
      </td>	
      </tr>
EOT
    end
  
end