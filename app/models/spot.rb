class Spot < ActiveRecord::Base
  attr_accessible :address, :user_id, :latitude, :longitude
  belongs_to :users
  reverse_geocoded_by :latitude, :longitude,
    :address => :address
  after_validation :reverse_geocode
end
