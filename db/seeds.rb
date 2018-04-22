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

#Make listings
[['new york city, new york', 5000], ['berkeley, ca', 3000], ['los angeles, ca', 2000].each do |address, price|
  Listing.create address: address, term: summer, price: price, text: 'yolo swag rent me pls'
end
