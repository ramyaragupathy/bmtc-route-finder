class RouteBusStop < ApplicationRecord
    belongs_to :bmtc_route
    belongs_to :bus_stop
end
