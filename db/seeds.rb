# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'rgeo/geo_json'

geojson_str = File.read('/Users/ramyaragupathy/Downloads/bus_stops_BLR.geojson')
geo = RGeo::GeoJSON.decode(geojson_str)
bus_numbers = ['201','202','203','204','205','206','207','208','209','210']
routes = bus_numbers.map do  |bus_number|
    BmtcRoute.create(bus_number: bus_number)
end

geo.each do |f| 
    bus_stop = BusStop.create(name:f.property('name'), lat: f.geometry.coordinates[1], lon: f.geometry.coordinates[0])
    RouteBusStop.create(bmtc_route: routes[rand(10)], bus_stop: bus_stop, order: 1)
end

