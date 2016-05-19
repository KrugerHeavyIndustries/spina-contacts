module Spina
   module Contacts
      class Engine < ::Rails::Engine
        
         initializer 'spina.plugin.register.contactform', before: :load_config_initializers do
            ::Spina::Plugin.new do
              plugin.name = 'Contact'
              plugin.namespace = 'contacts'
            end
         end
      end 
   end
end
