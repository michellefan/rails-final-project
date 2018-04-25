# Rails Decal Final Project

**Title:** Hibernate

**Team Members:** Michelle Fan, Adhiv Dhar, Tina Ye

**Demo Link:**

**Idea:** An application where students can find and post semester sublet housing listings and can also favorite posted listings shown on the map, view details, and contact the poster.  
  
  
**Models and Description:**
###### User
* Each user has a first name, last name, email, and password
* Users can have many posted listings and many favorited listings
* Users can be both posters and renters

###### Favorite
* Keeps track of all of the user’s favorite listings
* Belongs to one user and belongs to one listing (join table)

###### Listing
* Each listing has an address, price, term, # of bedrooms, # of bathrooms, square footage, and description
* A listing’s latitude and longitude is calculated from the listing’s address  
  
  
**Features:**
* Users can sign up for a new account or log in
* Users’ home view displays listings on a map and corresponding information on “cards” below
* Users can click on a listing to view the listing’s full details on a new page
* Users can contact the listing’s poster via email
* Users can make a post for a new listing
* Users can edit listings they've already created
* Users can add and remove listings from their favorites
  
  
**Division of Labor:**

Michelle: Devise setup for the different forms, favorites list setup, models

Adhiv: Views, front-end aesthetics stuff, setting up listings & routes, controller methods

Tina: google maps gem (get map to show on page and listings to show on map, sidebar click-to-locate housing on map) and geocoder gem (calculate latitude & longitude from address), seed file, writeup
