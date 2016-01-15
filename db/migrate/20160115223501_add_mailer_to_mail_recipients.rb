class AddMailerToMailRecipients < ActiveRecord::Migration
  def change
    add_column :mail_recipients, :mailer, :string
  end
end
