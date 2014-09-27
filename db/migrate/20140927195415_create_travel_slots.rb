class CreateTravelSlots < ActiveRecord::Migration
  def change
    create_table :travel_slots do |t|
      t.column :start_time, :time
      t.column :stop_time, :time
      t.column :time_slot, :string
      t.timestamps
    end
  end
end
