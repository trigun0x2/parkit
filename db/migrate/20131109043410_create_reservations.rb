class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.integer :spot_id
      t.integer :requestuser_id
      t.datetime :restime
      t.boolean :completed

      t.timestamps
    end
  end
end
