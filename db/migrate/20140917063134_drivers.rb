class Drivers < ActiveRecord::Migration
  def change
  	create_table :drivers do |t|
			t.column :license_no, :string, :limit => 32, :null => false
			t.column :name, :string, :limit => 50
			t.column :dob, :datetime
			t.column :address, :text
			t.column :contact_no, :integer
			t.column :nationality, :string
			t.column :created_at, :timestamp
    end
  end
end
