class Request < ActiveRecord::Base
  attr_accessible :after_photo_url, :angel_id, :anon_angel, :anon_req, :before_photo_url, :external_url, :obo, :obo_fname, :obo_lname, :requestor_id, :ship_address, :ship_city, :ship_state, :ship_zipcode, :story, :agree_to_terms, :current_status, :sockmonkey_id
  
  mount_uploader :before_photo_url, AvatarUploader
  mount_uploader :after_photo_url, AvatarUploader
  
  belongs_to :requestor, class_name: User
  belongs_to :angel, class_name: User
  
  has_many :statuses
  # has_many :comments
  has_many :emails
  belongs_to :sockmonkey
  validates :agree_to_terms, :acceptance => {:accept => true}
  validates :ship_address, :presence => true
  validates :ship_city, :presence => true
  validates :ship_state, :presence => true
  validates :ship_zip, :presence => true
  validates :obo_lname, presence: true, if :obo?
  validates :story, presence: true
  
  
  # def self.confirm_angel
  #     if current_user
  #       current_request = Request.find(session[:request_id])
  #       current_request.angel_id = current_user.id
  #       current_request.angel_anon = session[:anonymous]
  #       redirect_to(request_path(request_id))
  #     else
  #       redirect_to(new_session_path)
  #     end
  #   end

  # Public: Adds an angel to an existing request
  def add_angel(user_id, anonymous)
    
    if anonymous == "1"
      self.anon_angel = true
    else 
      self.anon_angel = false
    end
      
    self.angel_id = user_id
      
    Status.create(:request_id => self.id, :status => 'Matched, initial')  
      
      
    self.save
    Email.new.send_email("Angel Signup", User.find(user_id))
	end

end
