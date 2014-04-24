class DevelopmentMailInterceptor
  
  # Public: When in development, send all emails to the developer email
  def self.delivering_email(message)
    message.subject = "#{message.subject}"
    message.to = ENV['DEVELOPER_EMAIL']
  end
end