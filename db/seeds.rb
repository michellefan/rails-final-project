# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Make users
User.create!([{first_name: 'Michelle'}, {last_name: 'Copenhagen'}, {email: "michelle@berkeley.edu"}, {encrypted_password: "password"}])
# %w(Michelle Adhiv Tina).each do |name|
#   User.create! first_name: name, last_name: "cal bear", email: name+"@berkeley.edu", encrypted_password: 'password'
# end

#Make listings
Listing.create!([{address: 'new york city'}, {term: "summer"}, {price: 4000}, {text: "hi im available"}])
# [['new york city, new york', "summer", 5000], ['berkeley, ca', "fall", 3000], ['los angeles, ca', "spring", 2000]].each do |address, term, price|
#   Listing.create! address: address, term: term, price: price, text: 'yolo swag rent me pls'
# end
