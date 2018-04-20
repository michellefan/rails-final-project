class User < ApplicationRecord
  has_many :listings
  has_many :favorites
  has_many :favorite_listings, through: :favorites, class_name: :Listing
end
