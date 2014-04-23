# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



User.create(fname: "Sarah", lname: "Jones", email: "sarah@example.com", password: "111", password_confirmation: "111")
User.create(fname: "John", lname: "Doe", email: "john@example.com", password: "111", password_confirmation: "111")
Request.create(requestor_id: 1, angel_id: 2, ship_address: "100 Main Street", ship_city: "Omaha", ship_state: "Nebraska", ship_zipcode: "10101", story: "Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo. Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.", external_url: "www.yahoo.com")