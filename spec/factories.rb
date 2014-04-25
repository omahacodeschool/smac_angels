
FactoryGirl.define do
  
  factory :user do
      first_name            "Jacob"
      last_name             "Jacoby"
      password              "password"
      password_confirmation "password"
      email                 "test@test.org"
      is_admin               false
    end
    
    factory :admin, class: User do
      first_name            "Admin"
      last_name             "Admin"
      password              "default"
      password_confirmation "default"
      email                 "test@test.gov"
      is_admin              true
    end
  
    factory :request_no_pic, class: Request do
      requestor_id          1
      angel_id              2
      sockmonkey_id         1 
      ship_address          "2112 Broaden Ave"
      ship_city             "Annahiem"
      ship_state            "FL"
      ship_zipcode          "12345-5643"
      story                 "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor."
      external_url          "http://www.amishrakefight.org"
      before_photo_url      nil
      agree_to_terms        true
    end
    
    factory :request_with_before_pic, class: Request do
      requestor_id          2
      angel_id              1
      sockmonkey_id         2 
      ship_address          "2112 Badamaman Ave"
      ship_city             "Brooklyn"
      ship_state            "UT"
      ship_zipcode          "12335-5643"
      story                 "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor."
      external_url          "http://www.amishrakefight.org"
      before_photo_url_url  "https://s3-us-west-2.amazonaws.com/smacangels/uploads/sockmonkey/image_url/2/nomo.jpg"
      agree_to_terms        true
    end
    
    factory :sockmonkey1, class: Sockmonkey do
      cancertype            'All'
      description           'The ALL cancer fighting monkey!'
      favcolor              'Green'
      remote_image_url_url  'https://s3-us-west-2.amazonaws.com/smacangels/uploads/sockmonkey/image_url/2/nomo.jpg'
      name                  'NoMo'
    end
    
    factory :sockmonkey2, class: Sockmonkey do
      cancertype            'Lung'
      description           'The lung cancer fighting monkey'
      favcolor              'Green'
      remote_image_url_url  'https://s3-us-west-2.amazonaws.com/smacangels/uploads/sockmonkey/image_url/2/phoenix.png'
      name                  'Phoenix'
    end
    
    factory :feedback_template, class: Template do
      name                  'Feedback Notification for Requestor'
      content               'Your photo has been posted! Your feedback helps show others that they are not alone in their fight against cancer. Thank you for being a part of the SMAC Monkey program.'
    end
    
    factory :signup_template, class: Template do
      name                  'Signup Confirmation'
      content               'Hooray! Thank you for signing up, ((name))!'
    end
end