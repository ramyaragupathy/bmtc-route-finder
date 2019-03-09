class RenameBusStopIdInRouteBusStops < ActiveRecord::Migration[5.2]
  def change
    rename_column :route_bus_stops, :bus_stops_id, :bus_stop_id
  end
end
