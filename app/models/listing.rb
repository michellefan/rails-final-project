class Listing < ApplicationRecord
  belongs_to :user
  has_many :favorites
  has_one :amenities_list

  geocoded_by :address
  after_validation :geocode
end
