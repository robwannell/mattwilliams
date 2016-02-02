class SupportController < ApplicationController
  def new
    @title = "Support the Campaign"
    @description = "Sign up to support Matt Williams, candidate for Davis City Council 2016. We need your help!"
    @support = Support.new
    
    
    @help = ['Add my name as an endorser', 'Host a "Meet-&-Greet" for Matt', 'Make phone calls for Matt','Walk precincts with Matt', 'Display and/or deliver a lawn sign for Matt', 'Help Get-Out-the-Vote', 'Donate my skills another way (use comment box)']
  end
  

  def create
    @recip = MailRecipient.find(1)
    @support = Support.new(params[:support])
    name = @support.name
    email = @support.email
    phone = @support.phone
    address = @support.address
    body = @support.comments
    @help = params[:help]
    recip = @recip.email
    
    if @support.valid?
      SupportMailer.support_email(name, email, phone, address, body, @help, recip).deliver
      
      redirect_to root_path, notice: 'Thank you - your message has been sent!'
    else
      @help = ['Add my name as an endorser', 'Host a "Meet-&-Greet" for Matt', 'Make phone calls for Matt','Walk precincts with Matt', 'Display and/or deliver a lawn sign for Matt', 'Help Get-Out-the-Vote', 'Donate my skills another way (use comment box)']
      render :new
    end
  end
  
  
end