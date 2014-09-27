class Vehicle < ActiveRecord::Base
  has_many :vehicle_drivers
  has_many :drivers, through: :vehicle_drivers
end
