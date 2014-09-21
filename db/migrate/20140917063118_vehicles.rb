class Vehicles < ActiveRecord::Migration
  def change
  	create_table :vehicles do |t|
			t.column :reg_no, :string, :limit => 32, :null => false
			t.column :country, :string, :limit => 30
			t.column :seating, :integer
			t.column :owner, :string
			t.column :created_at, :timestamp
     end
  end
end
