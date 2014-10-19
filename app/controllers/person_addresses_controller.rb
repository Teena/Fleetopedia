class PersonAddressesController < ApplicationController
  def create
  end

  private
  def person_addresses_params
    params[:person_address].permit[:person_id, :address, :city, :state, :country]
  end
end
