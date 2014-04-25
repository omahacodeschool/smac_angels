class User < ActiveRecord::Base
  authenticates_with_sorcery!
  
  has_many :requests, :class_name => :request, :foreign_key => :requestor_id
  has_many :gifts, :class_name => :request, :foreign_key => :angel_id
  
  attr_accessible :email, :password, :password_confirmation, :fname, :lname, :is_admin
  
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates :email, :uniqueness => true, :format => { :with => /.+@.+\..+/i }

  def shortname
  	"#{fname} #{lname[0]}."
  end
end