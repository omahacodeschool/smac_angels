module AdminHelper
  def unmatch_angel(request_id)
    request = Request.find(request_id)
    request.angel_id = nil
    request.save
  end
  
  def delete_request(request_id)
    request = Request.find(request_id)
    request.angel_id = nil
    request.requestor_id = nil
    user = User.find(requestor.id)
    request.story += " This Order Was Canceled at #{Time.new}. The requestor was #{user.fname} #{user.lname}."
    request.save
  end
  
  def angel_email(request_id)
    request = Request.find(request_id)
    angel = User.find(request.angel_id)
    return angel.email
  end
  
  def requestor_email(request_id)
    request = Request.find(request_id)
    requestor = User.find(request.requestor_id)
    return requestor.email
  end
end
