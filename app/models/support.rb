class Support
  
  include ActiveModel::Model

  attr_accessor :name, :email, :phone, :address, :comments, :help
  validates :name, presence: true
  validates :email, presence: true
end