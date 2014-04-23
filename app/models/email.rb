class Email < ActiveRecord::Base
  attr_accessible :subject, :content, :request_id, :to_addresses
  
  belongs_to :request
  belongs_to :template
end
