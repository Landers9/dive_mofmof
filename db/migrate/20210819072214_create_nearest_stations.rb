class CreateNearestStations < ActiveRecord::Migration[5.2]
  def change
    create_table :nearest_stations do |t|
      t.text :name_of_railway
      t.text :station_name
      t.text :time
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end
