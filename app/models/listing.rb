class Listing < ApplicationRecord
  belongs_to :user
  has_many :favorites
  has_one :amenities_list
end
