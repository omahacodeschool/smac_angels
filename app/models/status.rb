class Status < ActiveRecord::Base
  attr_accessible :request_id, :status
  
  belongs_to :request
  
  validates_uniqueness_of :request_id
  validates_presence_of :request_id
end

