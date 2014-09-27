class CreateVehicleDrivers < ActiveRecord::Migration
  def change
    create_table :vehicle_drivers do |t|
      t.belongs_to :driver      
      t.belongs_to :vehicle
      t.column :time_slot, :string
      t.timestamps
    end
  end
end
