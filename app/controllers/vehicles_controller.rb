class VehiclesController < ApplicationController
	
	def index
		@vehicles = Vehicle.find(:all)
	end

	def new
		@vehicle = Vehicle.new
	end

	def show
	 	@vehicle = Vehicle.find(params[:id])
	end

	def create
		@vehicle = Vehicle.new(vehicle_params)
		respond_to do |format|
	  	if @vehicle.save
	    	format.html { redirect_to vehicles_path, notice: 'Test was successfully created.' }
	  	else
	    	format.html { render 'new' }
	  	end
	  end
	end

	def edit
		@vehicle = Vehicle.find(params[:id])
	end

	def update
		@vehicle =Vehicle.find(params[:id])
		if @vehicle.update_attributes(vehicle_params)
			redirect_to :action => 'show', :id => @vehicle
		else
			render :action => 'edit'
		end
	end

	def delete
		Vehicle.find(params[:id]).destroy
		redirect_to :action =>'index'
	end

	private

	def vehicle_params
		params.require(:vehicle).permit(:reg_no, :country, :seating, :owner)
	end
end
