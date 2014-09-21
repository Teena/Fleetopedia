class DriversController < ApplicationController
  
  def index
    @drivers = Driver.find(:all)
  end

  def new
    @driver = Driver.new
  end

  def show
    @driver = Driver.find(params[:id])
  end

  def create
    @driver = Driver.new(driver_params)
    if @driver.save
      redirect_to drivers_path
    else
      render 'new'
    end
  end

  def edit
    @driver = Driver.find(params[:id])
  end

  def update
    @driver = Driver.find(params[:id])
    if @driver.update_attributes(driver_params)
      redirect_to drivers_path
    else
      render 'edit'
    end
  end

  def destroy
    Driver.find(params[:id]).destroy
    redirect_to drivers_path
  end

  private

  def driver_params
    params.require(:driver).permit(:license_no, :name, :dob, :address, :contact_no, :nationality)
  end
end
