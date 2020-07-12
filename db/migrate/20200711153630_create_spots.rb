class CreateSpots < ActiveRecord::Migration[6.0]
  def change
    create_table :spots do |t|
      t.integer :user_id
      t.string :name
      t.string :address
      t.string :postal_code
      t.string :neer_station
      
      t.timestamps
    end
  end
end
