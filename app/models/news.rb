class News < ActiveRecord::Base
  has_attached_file :avatar, styles: { medium: "710x400#", thumb: "150x100#" }, default_url: "news/:styles/missing.jpg"
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  
    extend FriendlyId
    friendly_id :title, use: :slugged
  
     default_scope  {order 'created_at DESC'}
     
end
