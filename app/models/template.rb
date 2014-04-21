class Template < ActiveRecord::Base
  attr_accessible :content, :name
  
  has_many :emails
end
