class MailRecipientsController < ApplicationController
  before_action :set_mail_recipient, only: [:show, :edit, :update, :destroy]

  # GET /mail_recipients
  # GET /mail_recipients.json
  def index
    @mail_recipients = MailRecipient.all
  end

  # GET /mail_recipients/1
  # GET /mail_recipients/1.json
  def show
  end

  # GET /mail_recipients/new
  def new
    @mail_recipient = MailRecipient.new
  end

  # GET /mail_recipients/1/edit
  def edit
  end

  # POST /mail_recipients
  # POST /mail_recipients.json
  def create
    @mail_recipient = MailRecipient.new(mail_recipient_params)

    respond_to do |format|
      if @mail_recipient.save
        format.html { redirect_to mail_recipients_url, notice: 'Mail recipient was successfully created.' }
        format.json { render :show, status: :created, location: @mail_recipient }
      else
        format.html { render :new }
        format.json { render json: @mail_recipient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mail_recipients/1
  # PATCH/PUT /mail_recipients/1.json
  def update
    respond_to do |format|
      if @mail_recipient.update(mail_recipient_params)
        format.html { redirect_to mail_recipients_url, notice: 'Mail recipient was successfully updated.' }
        format.json { render :show, status: :ok, location: @mail_recipient }
      else
        format.html { render :edit }
        format.json { render json: @mail_recipient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mail_recipients/1
  # DELETE /mail_recipients/1.json
  def destroy
    @mail_recipient.destroy
    respond_to do |format|
      format.html { redirect_to mail_recipients_url, notice: 'Mail recipient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mail_recipient
      @mail_recipient = MailRecipient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mail_recipient_params
      params.require(:mail_recipient).permit(:name, :email, :mailer)
    end
end
