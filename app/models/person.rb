class Person < ActiveRecord::Base
  has_many :person_addresses, :class_name => "PersonAddress", :dependent => :destroy
  has_many :person_vehicles
  has_many :time_slots

  accepts_nested_attributes_for :person_addresses
end
