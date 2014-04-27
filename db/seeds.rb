# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities                    = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




User.create(fname: "Sarah", lname: "Jones", email: "sarah@example.com", password: "111", password_confirmation: "111")
User.create(fname: "John", lname: "Doe", email: "john@example.com", password: "111", password_confirmation: "111")

Template.create([
  {
  name: "Signup Confirmation",
  content: "Hooray! Thank you for signing up, ((name))!"
  },{
  name: "Requestor Signup",
  content: "((requestor)), thank you for signing up to receive a SMAC Monkey!"
  },{
  name: "Angel Signup",
  content: "((angel)), thank you for signing up to give a SMAC Monkey!"
  },{
  name: "Shipping Notification for Angel",
  content: "((angel)), your SMAC Monkey has shipped! We will notify you when the recipient posts photos with it!"
  },{
  name: "Shipping Notification for Requestor",
  content: "MONKEY EN ROUTE!!! We're so excited! Please post a picture with your SMAC Monkey here once you receive it."
  },{
  name: "Feedback Notification for Angel",
  content: "Thank you for contributing to SMAC Monkey. Your recipient just posted a photo with NoMo here!"
  },{
  name: "Feedback Notification for Requestor",
  content: "Your photo has been posted! Your feedback helps show others that they are not alone in their fight against cancer. Thank you for being a part of the SMAC Monkey program."
  }
])

# :email, :password, :password_confirmation, :fname, :lname, :is_admin
User.create([
  {
  email: "admin@this.com",
  password: "password",
  password_confirmation: "password",
  fname: "Admin",
  lname: "Admin",
  is_admin: true
  },{
  email: "lochlan.hehr@yahoo.com",
  password: "password",
  password_confirmation: "password",
  fname: "Lochlan",
  lname: "Hehr",
  is_admin: false
  },{
  email: "avondohren@gmail.com",
  password: "password",
  password_confirmation: "password",
  fname: "Andy",
  lname: "von Dohren",
  is_admin: false
  },{
  email: "ja.lueth@gmail.com",
  password: "password",
  password_confirmation: "password",
  fname: "Johnathon",
  lname: "Lueth",
  is_admin: false
  },{
  email: "britt@medles.com",
  password: "password",
  password_confirmation: "password",
  fname: "Britt",
  lname: "Woolf",
  is_admin: false
  },{
  email: "nivram80@gmail.com",
  password: "password",
  password_confirmation: "password",
  fname: "Todd",
  lname: "Nichols",
  is_admin: false
  },{
  email: "me@matthova.com",
  password: "password",
  password_confirmation: "password",
  fname: "Matt",
  lname: "Hova",
  is_admin: false
  },{
  email: "ytmoik@gmail.com",
  password: "password",
  password_confirmation: "password",
  fname: "Yofred",
  lname: "Moik",
  is_admin: false
  }
])

# :after_photo_url, :angel_id, :anon_angel, :anon_req, :before_photo_url, :external_url, :obo, :obo_fname, :obo_lname, :requestor_id, :ship_address, :ship_city, :ship_state, :ship_zipcode, :story, :agree_to_terms
Request.create([
  {
  angel_id: 2,
  requestor_id: 3,
  current_status: 5,
  remote_before_photo_url_url: "http://i.imgur.com/miEgzKD.jpg",
  ship_address: "17653 Mockingbird Ln",
  ship_city: "Omaha",
  ship_state: "NE",
  ship_zipcode: 68128,
  story: "Some Story 1",
  agree_to_terms: TRUE,
  sockmonkey_id: 1,
  agree_to_terms: true
  },{
  angel_id: 4,
  requestor_id: 5,
  current_status: 5,
  remote_before_photo_url_url: "http://i.imgur.com/3eWraMU.jpg",
  ship_address: "1 Main St",
  ship_city: "Liconln",
  ship_state: "NE",
  ship_zipcode: 68128,
  story: "Some Story 2",
  sockmonkey_id: 1,
  agree_to_terms: true
  },{
  angel_id: nil,
  requestor_id: 2,
  current_status: 0,
  remote_before_photo_url_url: "http://i.imgur.com/eJfN4IG.jpg",
  ship_address: "17654637 Main Round St Avenue Lane",
  ship_city: "Baminghamingmamington",
  ship_state: "AL",
  ship_zipcode: 68128,
  story: "Some Story 3",
  sockmonkey_id: 2,
  agree_to_terms: true
  },{
  angel_id: nil,
  requestor_id: 4,
  current_status: 0,
  remote_before_photo_url_url: "http://i.imgur.com/YTyjMza.jpg",
  ship_address: "One",
  ship_city: "Average City",
  ship_state: "IA",
  ship_zipcode: 68128,
  story: "Some Story 4",
  sockmonkey_id: 2,
  agree_to_terms: true
  }
])

Sockmonkey.create([
  {
  cancertype: 'All',
  description: "My name is NoMo. I'm the ring leader of SMAC! So, it's my job to make sure those with/impacted by ALL types of cancer get TONS of love and comfort.  Let's face it, family and friends can't always be ther...but, I CAN!",
  favcolor: 'Green',
  remote_image_url_url: 'https://s3-us-west-2.amazonaws.com/smacangels/uploads/sockmonkey/image_url/2/nomo.jpg',
  name: 'NoMo'
  },{
  cancertype: 'Lung',
  description: "Hi! My name is Phoenix. I am proud to be the very first custom SMAC! monkey. I fight lung cancer.  The whole SMAC! monkey idea was inspired by Leslie Lehrman's journey with Stage IV lung cancer.  No, she never smoked. ANYONE can get lung cancer.",
  favcolor: 'Red',
  remote_image_url_url: 'https://s3-us-west-2.amazonaws.com/smacangels/uploads/sockmonkey/image_url/2/phoenix.png',
  name: 'Phoenix'  
  }
])


Status.create([
  {
  :request_id => 1, 
  :status => 'Matched, initial'
  },
  {
  :request_id => 2, 
  :status => 'Matched, confirmed'
  },
  {
  :request_id => 3, 
  :status => 'Unmatched'
  },
  {
  :request_id => 2, 
  :status => 'Unmatched'
  }
])