module Spina
   class ContactsController < Spina::PagesController
      def new
        render_with_template(page)
      end
      
      def create
        @contact = Contact.new(contact_params)
        if @contact.deliver
          flash.now[:notice] = 'Thanks'
        else
          flash.now[:error] = 'Cannot send message'
          render :new
        end
      end

      private
         
      def contact_params
         params.require(:contact).permit(:name, :email, :subject, :message)
      end
      
   end
end
