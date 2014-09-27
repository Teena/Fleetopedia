class HomeController < ApplicationController
	def index
    @vehicle_driver_assignments = VehicleDriver.joins(:vehicle).joins(:driver)
      .where("vehicle_drivers.created_at >= ? and vehicle_drivers.created_at < ?", 
        DateTime.now.beginning_of_day.utc, DateTime.now.end_of_day.utc).group_by {|vd| vd.vehicle_id }
	end
end