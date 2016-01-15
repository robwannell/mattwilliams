class ContactController < ApplicationController
  def new
      @contact = Contact.new
    end

    def create
       @recip = MailRecipient.find(2)
      @contact = Contact.new(params[:contact])
      name = @contact.name
      email = @contact.email
      body = @contact.body
      recip = @recip.email
      if @contact.valid?
        ContactMailer.contact_email(name, email, body, recip).deliver
        redirect_to root_path, notice: 'Thank you - your message has been sent!'
      else
        render :new
      end
    end
     
end