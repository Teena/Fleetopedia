class PersonVehicles < ActiveRecord::Migration
  def change
    create_table :person_vehicles do |t|
      t.belongs_to :person
      t.belongs_to :vehicle_drivers
      t.belongs_to :travel_slots
      t.timestamps
    end
  end
end
