class VehicleDriver < ActiveRecord::Base
  belongs_to :vehicle
  belongs_to :driver
  belongs_to :travel_slot
end
