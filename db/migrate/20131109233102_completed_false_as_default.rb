class CompletedFalseAsDefault < ActiveRecord::Migration
  def change
  	change_column :reservations, :completed, :boolean, :default => false
  end
end
