class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.integer :user_id
      t.string :address
      t.decimal :x
      t.decimal :y

      t.timestamps
    end
  end
end
