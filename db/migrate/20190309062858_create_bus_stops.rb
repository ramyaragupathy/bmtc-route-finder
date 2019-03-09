class CreateBusStops < ActiveRecord::Migration[5.2]
  def change
    create_table :bus_stops do |t|
      t.string 'name'
      t.string 'lat'
      t.string 'lon'
      t.timestamps
    end
  end
end
