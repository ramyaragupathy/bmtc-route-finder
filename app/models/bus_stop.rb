class BusStop < ApplicationRecord
    has_many :route_bus_stops
    has_many :bmtc_routes, :through => :route_bus_stops
end
