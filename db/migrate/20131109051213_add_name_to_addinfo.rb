class AddNameToAddinfo < ActiveRecord::Migration
  def change
  	add_column :addinfos, :name, :string
  end
end
