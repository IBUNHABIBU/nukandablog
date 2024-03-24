class ContactFormMailer < ApplicationMailer
    def contact_email(message)
        @message = message
        mail(to: 'ibunhabib@gmail.com', subject: 'There is a message from your website!')
    end
end
