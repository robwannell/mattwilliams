json.array!(@mail_recipients) do |mail_recipient|
  json.extract! mail_recipient, :id, :name, :email
  json.url mail_recipient_url(mail_recipient, format: :json)
end
