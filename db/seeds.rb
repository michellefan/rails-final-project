# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Make users
%w(Michelle Adhiv Tina).each do |name|
  User.create first_name: name, email: name+"@berkeley.edu", encrypted_password: 'password'
end

User.create(first_name: 'Michelle', email: "tina@berkeley.edu", encrypted_password: 'password')
User.create(first_name: 'Tina', email: "michelle@berkeley.edu", encrypted_password: 'password')

#Make listings
[
    ['new york city, new york', "Summer 2018", 5000, 4, 2, 1100, 1], 
    ['berkeley, ca', "Fall 2018", 3000, 3,1,800, 2], 
    ['los angeles, ca', "Spring 2018", 2000, 2,1,700, 1]
    ].each do |address, term, price, bedrooms, bathrooms, square_footage, user_id|
  Listing.create(address: address, term: term, price: price, text: 'yolo swag rent me pls', bedrooms: bedrooms, bathrooms: bathrooms, square_footage: square_footage, user_id: user_id)
end