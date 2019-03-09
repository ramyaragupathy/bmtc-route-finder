class PagesController < ApplicationController
    def home
        @name = 'deva'
    end

    def route_finder
        @error = params[:error]

    end

    def search
        input_bus_number = params[:bus_number]
        if input_bus_number.present?
            @bmtc_route = BmtcRoute.find_by(bus_number: params[:bus_number])
            @features = get_features(@bmtc_route.bus_stops)
            @stops = @bmtc_route.bus_stops.limit(10).map do |stop|
              stop.name             
            end
        else            
            redirect_to :action => "route_finder", error: "Please enter a valid route"        
        end        
    end

    def get_features(bus_stops)
      return bus_stops.map do |bus_stop|
        feature_template(bus_stop)
      end
    end


    def feature_template(bus_stop)
      return {
          "type": "Feature",
          "geometry": {
              "type": "Point",
              "coordinates": [
                  bus_stop.lon.to_f,
                  bus_stop.lat.to_f
              ]
          },
          "properties": {
              "name": bus_stop.name,
    
          }
        }
    end
end
