class BmtcRoute < ApplicationRecord
    has_many :route_bus_stops
    has_many :bus_stops, :through => :route_bus_stops
end
