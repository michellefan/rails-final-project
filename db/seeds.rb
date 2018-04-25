# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Make users
[
    ['Michelle', 'Fan', "michelle@berkeley.edu", 'michellepassword'],
    ['Adhiv', 'Dhar', "adhiv@berkeley.edu", 'adhivpassword'],
    ['Tina', 'Ye', "tina@berkeley.edu", 'tinapassword'],
    ['Oski', 'Bear', "oskiwowwow@berkeley.edu", 'oskipassword'],
    ['Chancellor', 'Christ', "chancellor@berkeley.edu", 'chancellorpassword']
  ].each do |first_name, last_name, email, password|
  User.create(first_name: first_name, last_name: last_name, email: email, password: password, sign_in_count: 1, created_at: DateTime.now - (rand * 21), updated_at: DateTime.now - (rand * 21), current_sign_in_at: DateTime.now - (rand * 21), last_sign_in_at: DateTime.now - (rand * 21)).save!(validate: false)
end

#Make listings
[
    # ['1214 5th Ave, New York, NY 10029', 'Summer 2018', 5500, 4, 2, 2800, "I have the best apartment ever!  Welcome to New York City's most desirable new luxury rental apartments. 1214 Fifth Avenue is the new 50-story smoke-free luxury building that puts you exactly where you want to be -- in a breathtaking home...on Fifth Avenue...above Central Park...with Museum Mile at your doorstep. Spectacular tower residences feature panoramic park, city and river views. Plus the world's greatest museums, restaurants, schools and Central Park are just steps from your door. Experience the art of living in the tallest, most luxurious new rental apartments on Manhattan's magnificent Upper East Side with a Fifth Avenue address.", 1],
    # ['2510 Bancroft Way, Berkeley, CA 94704', 'Fall 2018', 2800, 3, 1, 800, "wassup my dudes i am studying abroad in the fall please sublet a spot in my cardboard box apartment", 4],
    # ['255 King St, San Francisco, CA 94107', 'Spring 2019', 3900, 2, 1, 1100, "2 spots available! Avalon at Mission Bay is home to excellent San Francisco apartments with stunning features and amenities. Come discover the best apartments in Mission Bay today.", 3],
    # ['1120 W 6th St, Los Angeles, CA 90017', 'Summer 2018', 2500, 1, 1, 1800, "Do you wanna be hip 'n cool? Sublet my apartment! Blocks to Historic Downtown Los Angeles, with views of the city, Sofia Luxury Apartments are a stylish and soulful apartment community in City West LA with a modern aesthetic and a nod to the city's rich historic. With only a short walk into the Financial District, Staples Center, LA Live, and Walt Disney Concert Hall, you're easily connected to vibrant heartbeat of LA.", 2],
    # ['1910 Oxford Street Berkeley CA 94704', 'Summer 2018', 3100, 2, 2, 900, "Looking for one male student to take my spot in the summer! My apartment is in Downtown Berkeley and is located right above Yali's! It's super close to campus and right next to Li Ka Shing. Please contact me if you would like to sublet from me!", 2],
    # # ['University House, Berkeley, CA 94709', 'Summer 2018', 0, 10, 10, 20000, "I'm not even living here so...", 5]
    ['1214 5th Ave, New York, NY 10029', 'Summer 2018', 5500, 4, 2, 2800, "I have the best apartment ever! It's on Fifth Avenue, Upper East Side and literally right above Central Park near all of the nice museums. Panaromaic views of the park, city, and river!", 1],
    ['2510 Bancroft Way, Berkeley, CA 94704', 'Fall 2018', 2800, 3, 1, 800, "wassup my dudes i am studying abroad in the fall please sublet a spot in my cardboard box apartment", 4],
    ['255 King St, San Francisco, CA 94107', 'Spring 2019', 3900, 2, 1, 1100, "2 spots available! Avalon at Mission Bay is home to excellent San Francisco apartments with stunning features and amenities. You'll be living with my two roommates who intern at Apple.", 3],
    ['1120 W 6th St, Los Angeles, CA 90017', 'Summer 2018', 2500, 1, 1, 1800, "Do you wanna be hip 'n cool? Sublet my apartment! It's in Downtown LA and super close to USC, with views of the city and a short walk to the Financial District, Staples Center, LA Live, and Walt Disney Concert Hall.", 2],
    ['1910 Oxford Street Berkeley CA 94704', 'Summer 2018', 3100, 2, 2, 900, "Looking for one male student to take my spot in the summer! My apartment is in Downtown Berkeley and it's located right above Yali's Cafe! It's super close to campus and right next to Li Ka Shing. Please contact me if you would like to sublet from me!", 2],
    ['University House, Berkeley, CA 94709', 'Summer 2018', 0, 10, 10, 20000, "I'm not even living here so..", 5]
  ].each do |address, term, price, bedrooms, bathrooms, square_footage, text, user_id|
  Listing.create(address: address, term: term, price: price, bedrooms: bedrooms, bathrooms: bathrooms, square_footage: square_footage, text: text, user_id: user_id)
end
