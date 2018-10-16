class CreateClosestStations < ActiveRecord::Migration[5.0]
  def change
    create_table :closest_stations do |t|
      t.string :route_name, null: false
      t.string :station_name, null: false
      t.integer :to_closest_station_min, null: false
      t.references :propaty, foreign_key: true, null: false

      t.timestamps
    end
  end
end
