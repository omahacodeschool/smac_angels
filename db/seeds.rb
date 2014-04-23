# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Template.create([
  {
  name: "Signup Confirmation",
  content: "Hooray, you signed up!"
  },{
  name: "Requestor Signup",
  content: "Thank you for signing up to receive a SMAC Monkey!"
  },{
  name: "Angel Signup",
  content: "Thank you for signing up to give a SMAC Monkey!"
  },{
  name: "Shipping Notification for Angel",
  content: "Your SMAC Monkey has shipped! We will notify you when the recipient posts photos with it!"
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