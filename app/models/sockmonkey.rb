class Sockmonkey < ActiveRecord::Base
  attr_accessible :cancertype, :description, :favcolor, :image_url, :name
  
  has_many :requests
  mount_uploader :image_url, AvatarUploader
  
end
