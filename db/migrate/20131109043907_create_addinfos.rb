class CreateAddinfos < ActiveRecord::Migration
  def change
    create_table :addinfos do |t|
      t.integer :user_id
      t.string :address
      t.integer :phonenumber

      t.timestamps
    end
  end
end
