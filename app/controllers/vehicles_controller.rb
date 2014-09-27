class VehiclesController < ApplicationController
	
	def index
		@vehicles = Vehicle.find(:all)
	end

	def new
		@vehicle = Vehicle.new
	end

	def show
	 	@vehicle = Vehicle.find(params[:id])
	 	@current_driver = @vehicle.drivers.order("vehicle_drivers.created_at").last
	end

	def create
		@vehicle = Vehicle.new(vehicle_params)
  	if @vehicle.save
      redirect_to vehicles_path, notice: 'Test was successfully created.'
  	else
      render 'new'
  	end
	end

	def edit
		@vehicle = Vehicle.find(params[:id])
		@drivers = Driver.joins("left join vehicle_drivers on vehicle_drivers.driver_id = drivers.id and vehicle_drivers.created_at > '#{DateTime.now.beginning_of_day.utc}'")
							.where ("vehicle_drivers.driver_id IS NULL")
		@current_driver = @vehicle.drivers.order("vehicle_drivers.created_at").last
	end

	def update
		@vehicle =Vehicle.find(params[:id])
		if params[:driver_id].present?
			@vehicle.vehicle_drivers.new(driver: Driver.find(params[:driver_id]))
		end
		if @vehicle.update_attributes(vehicle_params)
			redirect_to vehicle_path(@vehicle)
		else
			render 'edit'
		end
	end

	def destroy
		Vehicle.find(params[:id]).destroy
		redirect_to vehicles_path
	end

	private

	def vehicle_params
		params.require(:vehicle).permit(:reg_no, :country, :seating, :owner)
	end
end
