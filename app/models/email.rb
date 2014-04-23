class Email < ActiveRecord::Base
  attr_accessible :content, :request_id, :template_id, :to_addresses
  
  belongs_to :request
  belongs_to :template
  
  
end
