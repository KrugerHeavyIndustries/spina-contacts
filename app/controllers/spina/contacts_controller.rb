module Spina
   class ContactsController < Spina::PagesController
      def new
        render_with_template(page)
      end
      
      def create
        sanitized_params = contact_params
        message = if sanitized_params[:honey].blank?
          sanitized_params.delete(:honey)
          @contact = Contact.new(sanitized_params)
          if @contact.deliver
            'Thanks for your message, you will hear from us soon!'
          else
            'Error while attempting to send message'
          end
        else
          'Spamming is not permitted'
        end

        respond_to do |format|
          if request.xhr?
            format.js do
              render file: 'spina/contacts/notice.js.erb', locals: { message: message }
            end
          end
        end
      end

      private
         
      def contact_params
         params.require(:contact).permit(:name, :email, :subject, :message, :honey)
      end
      
   end
end
