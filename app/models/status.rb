class Status < ActiveRecord::Base
  attr_accessible :request_id, :status
  
  belongs_to :request
  
  verifies_uniqueness_of :request_id
  verifies_presence_of :request_id
end
