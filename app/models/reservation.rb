class Reservation < ActiveRecord::Base
  attr_accessible :completed, :requestuser_id, :restime, :spot_id, :user_id
  belongs_to :spot
end
