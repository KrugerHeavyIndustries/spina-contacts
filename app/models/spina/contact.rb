module Spina
  class Contact < ::MailForm::Base
    attribute :name
    attribute :email, validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
    attribute :subject
    attribute :message 
    attribute :beyonce, captcha: true

    def headers 
      {
        subject: subject || "Contact from website",
        to: "chris.kruger@krugerheavyindustries.com",
        from: %("#{name}" <#{email}>)
      }
    end
  end
end
