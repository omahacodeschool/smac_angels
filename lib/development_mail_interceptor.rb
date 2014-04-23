class DevelopmentMailInterceptor
  def self.delivering_email(message)
    message.subject = "#{message.subject}"
    message.to = ENV['DEVELOPER_EMAIL']
  end
end