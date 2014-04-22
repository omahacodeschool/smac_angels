class Request < ActiveRecord::Base
  attr_accessible :after_photo_url, :angel_id, :anon_angel, :anon_req, :before_photo_url, :external_url, :obo, :requestor_id, :ship_address, :ship_city, :ship_state, :ship_zipcode, :story
  
  mount_uploader :before_photo_url, AvatarUploader
  
  belongs_to :requestor, :class_name => :user
  belongs_to :angel, :class_name => :user
  # has_many :statuses
  # has_many :comments
  has_many :emails
  belongs_to :sockmonkey
  
end
