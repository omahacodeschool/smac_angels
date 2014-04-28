#encoding: utf-8



User.create(fname: "Sarah", lname: "Jones", email: "sarah@example.com", password: "111", password_confirmation: "111")
User.create(fname: "John", lname: "Doe", email: "john@example.com", password: "111", password_confirmation: "111")

Template.create([
  {
    name: "Signup Confirmation",
    content: "Hi there. Thank you so much for registering. You are one step closer to some SMAC! monkey mojo!\n\nYour email:((email))\n\n"
    },{
    name: "Requestor Signup",
    content: "((requestor)), thank you for signing up to receive a SMAC Monkey!\n\nIt\’s time to SMAC! cancer to the curb and you will soon have ((monkey)) right by your side to help you!\n\nWe'll notify you when we have matched you with an angel. Sit tight!\n\nThanks,\nThe SMAC! Team"
    },{
    name: "Angel Signup", 
    content: "((angel)),\n\nThank you so much for being a SMAC! Angel. Cancer can be a very lonely existence. Your generosity gives someone with cancer a true “creature comfort” that can be by their side at all times- reminding them no one fights it alone.\n\nAll you have to do is go to the SMAC! website, click on the \"Order SMAC! Monkeys Now\" tab and order ((monkey)). You can can input your recipient's name and address in the \"send to\" section, which is a separate address from your \"bill to\" address.  You'll see what we mean. You can also add a short message in the \"Ordering Instructions\" if you like.  \n\nYour gift today helps fulfill SMAC!s mission:\nComfort those with cancer\nInspire giving\nCreate social change\n\nWe cannot thank you enough. You are truly an angel. \nWith endless gratitude,\nThe SMAC! Team\n"
    },{
    name: "Shipping Notification for Angel", 
    content: "((angel)),\nYour SMAC Monkey has shipped! We will notify you when the recipient posts photos with it!\n\nIf you have any questions, please email us at smacnation@smacancer.com.\n\nMay the SMAC! monkey mojo always be with you!\n\nHugzzzz,\nThe SMAC! Team\n"
    },{
    name: "Shipping Notification for Requestor", 
    content: "SMAC! Monkey Mojo Alert!\n\nSurprise ((name))! \n\n((monkey)) is in the mail and on his way to you. He is more than ready to help you SMAC! that cancer to the curb...and do lots of snuggling too.\n\nYou have lots of people rooting for you, including ((angel), who is your SMAC! Angel, and gifted your monkey to you.\n\nWe would LOVE to see you and your SMAC! monkey ((monkey)) together! Just simply upload a picture to URL where we can see the awesomeness that is you with new your cancer-crushing companion... and cheer you both on! \n\nIf you have any questions or trouble uploading your pic, please email us at smacnation@smacancer.com.\n\nMay the SMAC! monkey mojo always be with you!\n\nHugzzzz,\nThe SMAC! Team"
    },{
    name: "Feedback Notification for Angel",
    content: "Hello amazing SMAC! Angel!\n\nYour recipient has uploaded a photo of themselves with their SMAC! monkey! Just login and go to your profile. You'll see their photo has been updated!\n\nLook at the awesomeness you created! Your generosity put a loveable “creature comfort” into the arms of someone who really needed it.\n\nWe absolutely cannot thank you enough for taking part in the SMAC! movement - a global SMAC!-down on cancer -  one cancer warrior and one SMAC! monkey at a time!\nGIVING feels so good, doesn’t it?\n\nThe SMAC! Team\n"
    },{
    name: "Feedback Notification for Requestor", 
    content: "Hello SMAC!-er!\n\nYou are now officially part of SMAC! Nation and we SO hope your SMAC! monkey is bringing you lots of love, smiles, hugs, kisses and even a little mischief.  A word of warning: If you haven’t noticed already SMAC! monkeys love chocolate. Just sayin’.\n\nWe want to thank you for sharing your story and inviting a SMAC! monkey ((monkey)) to be part of your cancer journey. They never get tired of helping you SMAC! it. You can always count on their support. NO. MATTER. WHAT. No one fights it alone!\n\nAlso, thanks a million for posting your picture. We LOVE it. We sincerely hope you know you’re now part of a very caring community. SMAC! Nation is full of cancer warriors just like you with crazy-haired monkeys by their side, too.  We have a big mission - a global SMAC!-down on cancer. And, we’re doing it…together!!! SMAC! POWER!\n\nSMAC! on warrior friend. SMAC! on.\n\nThe SMAC! Team"
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
  remote_before_photo_url_url: "http://smac-angels-staging.herokuapp.com/assets/landing_page/6.jpg",
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
  remote_before_photo_url_url: "http://smac-angels-staging.herokuapp.com/assets/landing_page/7.jpg",
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
  remote_before_photo_url_url: "http://smac-angels-staging.herokuapp.com/assets/landing_page/8.jpg",
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
  remote_before_photo_url_url: "http://smac-angels-staging.herokuapp.com/assets/landing_page/9.jpg",
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
  description: "My name is NoMo.  I'm the ring leader of SMAC! So, it is my job to make sure those with or impacted by ALL types of cancer get TONS of love and comfort.  Let's face it, family and friends can't always be there...but, I CAN!",
  favcolor: 'Green',
  remote_image_url_url: 'https://smacangels.s3.amazonaws.com/uploads/sockmonkey/image_url/4/nomo_big.png',
  name: 'NoMo'
  },{
  cancertype: 'Lung',
  description: "Hi! My name is Phoenix.  I am proud to be the very first custom SMAC! monkey.  I fight lung cancer.  The whole SMAC! monkey idea was inspired by Leslie Lehrman's journey with Stage IV lung cancer.  No, she never smoked.  ANYONE can get lung cancer.",
  favcolor: 'Red',
  remote_image_url_url: 'https://smacangels.s3.amazonaws.com/uploads/sockmonkey/image_url/3/Phoenix_big.png',
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