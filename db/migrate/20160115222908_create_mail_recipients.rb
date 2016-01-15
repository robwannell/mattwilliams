class CreateMailRecipients < ActiveRecord::Migration
  def change
    create_table :mail_recipients do |t|
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end
