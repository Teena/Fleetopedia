class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.column :person_id, :string      
      t.column :name, :string
      t.column :email, :string
      t.column :oranization, :string
      t.timestamps
    end

    add_index :people, [:person_id, :email]
  end
end
