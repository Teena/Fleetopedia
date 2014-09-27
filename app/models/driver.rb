class Driver < ActiveRecord::Base
  has_many :vehicle_drivers
  has_many :vehicles, through: :vehicle_drivers
end
