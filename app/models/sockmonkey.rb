class Sockmonkey < ActiveRecord::Base
  attr_accessible :cancertype, :description, :favcolor, :image_url, :name
  
  has_many :requests
  mount_uploader :image_url, AvatarUploader
  # mount_uploader :sockmonkey_pic, AvatarUploader, {:mount_on => :image_url}
  
end
