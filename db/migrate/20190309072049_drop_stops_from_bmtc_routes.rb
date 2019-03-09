class DropStopsFromBmtcRoutes < ActiveRecord::Migration[5.2]
  def change
    remove_column :bmtc_routes, :stops
  end  
end
