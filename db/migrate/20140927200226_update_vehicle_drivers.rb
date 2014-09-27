class UpdateVehicleDrivers < ActiveRecord::Migration
  def self.up
    change_table :vehicle_drivers do |t|
      t.belongs_to :travel_slot
      t.column :status, :string
    end
  end

  def self.down
    remove_column :vehicle_drivers, :travel_slot_id
    remove_column :vehicle_drivers, :status
  end
end
