class User < ActiveRecord::Base
  authenticates_with_sorcery!
  
  has_many :requests, :class_name => :request, :foreign_key => :requestor_id
  has_many :gifts, :class_name => :request, :foreign_key => :angel_id
  
  attr_accessible :email, :password, :password_confirmation
  
  validates_confirmation_of :password
  validates_presence_of : password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
end
