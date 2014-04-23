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
# :email, :password, :password_confirmation, :fname, :lname, :is_admin
User.create([
  {
    email: "admin@this.com",
    password: "poopoop",
    password_confirmation: "poopoop",
    fname: "Admin",
    lname: "Admin",
    is_admin: true
  },
  {
    email: "lochlan.hehr@yahoo.com",
    password: "poopoop",
    password_confirmation: "poopoop",
    fname: "Lochlan",
    lname: "Hehr",
    is_admin: false
  },
  {
    email: "avondohren@gmail.com",
    password: "password",
    password_confirmation: "password",
    fname: "Andy",
    lname: "von Dohren",
    is_admin: false
  },
  {
    email: "ja.lueth@gmail.com",
    password: "password",
    password_confirmation: "password",
    fname: "Johnathon",
    lname: "Lueth",
    is_admin: false
  },
  {
    email: "britt@medles.com",
    password: "password",
    password_confirmation: "password",
    fname: "Britt",
    lname: "Woolf",
    is_admin: false
  },
  {
    email: "nivram80@gmail.com",
    password: "password",
    password_confirmation: "password",
    fname: "Todd",
    lname: "Nichols",
    is_admin: false
  },
  {
    email: "me@matthova.com",
    password: "password",
    password_confirmation: "password",
    fname: "Matt",
    lname: "Hova",
    is_admin: false
  },
  {
    email: "ytmoik@gmail.com",
    password: "password",
    password_confirmation: "password",
    fname: "Yofred",
    lname: "Moik",
    is_admin: false
  },
])