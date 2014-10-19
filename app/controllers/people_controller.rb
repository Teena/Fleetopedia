class PeopleController < ApplicationController
  def index
    @people = Person.find(:all)
  end

  def new
    @person = Person.new
    @person.person_addresses.build
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      #redirect_to people_path 
      render :partial => 'person', :object => @person
    else
      render 'new'
    end
  end

  def show
    @person = Person.find(params[:id])
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
    if @person.update_attributes(person_params)
      redirect_to person_path(@person)
    else
      render 'edit'
    end
  end

  def destroy
    Person.find(params[:id]).destroy
    redirect_to people_path
  end
  
  private
  def person_params
    params.require(:person).permit(:mnemonic, :name, :email, :oranization, 
                                   person_addresses_attributes: [:id, :address, :city, :state, :country, :pincode, :_destory])
  end
end

