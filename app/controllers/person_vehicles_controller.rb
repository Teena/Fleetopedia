class PersonVehiclesController < ApplicationController
  def create
  end

  private
  def person_vehicles_params
    params[:person_vehicle].permit[:person_id, :vehicle_drivers_id, :travel_slot_id]
  end
end
