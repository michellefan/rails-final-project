class Listing < ApplicationRecord
  belongs_to :user, optional: true
  has_many :favorites, :dependent => :destroy
  has_one :amenities_list, :dependent => :destroy

  geocoded_by :address
  after_validation :geocode
end
