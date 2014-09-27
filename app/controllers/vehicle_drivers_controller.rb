class VehicleDriversController < ApplicationController
  def create
      
  end


  private
  def vehicles_drivers_params
    params[:vehicle_driver].permit[:vehicle_id, :driver_id, :travel_slot_id]
end
