class ContactController < ApplicationController
  def new
      @contact = Contact.new
       @help = ['Add my name as an endorser', 'Host a "Meet-&-Greet" for Matt', 'Make phone calls for Matt','Walk precincts with Matt', 'Display and/or deliver a lawn sign for Matt', 'Help Get-Out-the-Vote', 'Donate my skills another way (use comment box)']
    end

    def create
       @recip = MailRecipient.find(2)
      @contact = Contact.new(params[:contact])
      name = @contact.name
      email = @contact.email
      body = @contact.body
      recip = @recip.email
      @help = params[:help]
      
      if @contact.valid?
        ContactMailer.contact_email(name, email, body, recip, @help).deliver
        redirect_to root_path, notice: 'Thank you - your message has been sent!'
      else
         @help = ['Add my name as an endorser', 'Host a "Meet-&-Greet" for Matt', 'Make phone calls for Matt','Walk precincts with Matt', 'Display and/or deliver a lawn sign for Matt', 'Help Get-Out-the-Vote', 'Donate my skills another way (use comment box)']
        render :new
      end
    end
     
end