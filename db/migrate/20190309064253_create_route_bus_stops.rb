class CreateRouteBusStops < ActiveRecord::Migration[5.2]
  def change
    create_table :route_bus_stops do |t|
      t.integer 'bmtc_route_id'
      t.integer 'bus_stops_id'
      t.integer 'order'
      t.timestamps
    end
  end
end
