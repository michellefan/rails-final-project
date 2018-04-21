class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :confirmable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :listings
  has_many :favorites
  has_many :favorite_listings, through: :favorites, class_name: :Listing
end
