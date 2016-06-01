module Spina
   module Contacts
      include ActiveSupport::Configurable
      
      config_accessor :email, :title, :controller, :description, :spina_icon, :plugin_type 

      self.email = "unknown@configure-me.com"
      self.title = "Contact"
      self.controller = 'contacts' 
      self.description = 'Contact Form for Spina'
      self.spina_icon = 'pencil-outline' 
      self.plugin_type = 'website_resource'
   end
end
