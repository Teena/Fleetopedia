class CreatePersonAddresses < ActiveRecord::Migration
  def change
    create_table :person_addresses do |t|
      t.belongs_to :person      
      t.column :address, :text
      t.column :city, :string
      t.column :state, :string
      t.column :country, :string
      t.column :pincode, :integer, :limit => 8
      t.timestamps
    end
  end
end
