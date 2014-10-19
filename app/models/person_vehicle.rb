class PersonVehicle < ActiveRecord::Base
  has_many :people
  has_many :vehicle_drivers
  has_many :vehicles, :through => "VehicleDrivers"
  has_many :drivers, :through => "VehicleDrivers"
  has_many :time_slots
end