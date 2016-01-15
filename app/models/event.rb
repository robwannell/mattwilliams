class Event < ActiveRecord::Base
  has_attached_file :avatar, styles: { medium: "900x900>", thumb: "100x100" }, default_url: "issues/:style/missing.png"
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
    
    extend FriendlyId
    friendly_id :name, use: :slugged
    
     default_scope  {order 'start_time ASC'}
     
   
end
