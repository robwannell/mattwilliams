class ContactMailer < ActionMailer::Base
  default from: 'notifier@matt4davis.com'
          
 
  
 
    def contact_email(name, email, body, recip, help)
        @name = name
        @email = email
        @body = body
        @help = help
        
        mail(subject: 'Contact message', reply_to: email, to: recip)
    end
end


