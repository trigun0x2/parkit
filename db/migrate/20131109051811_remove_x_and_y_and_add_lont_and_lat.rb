class RemoveXAndYAndAddLontAndLat < ActiveRecord::Migration
  def up
  	remove_column :spots, :x
  	remove_column :spots, :y
  end

  def down
  	add_column :spots, :longitude, :decimal
  	add_column :spots, :latitude, :decimal
  end
end
