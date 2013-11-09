class AddlongandLat < ActiveRecord::Migration
  def change
  	add_column :spots, :longitude, :decimal
  	add_column :spots, :latitude, :decimal
  end
end
