class CreateBmtcRoutes < ActiveRecord::Migration[5.2]
  def change
    create_table :bmtc_routes do |t|
      t.text :bus_number, null: false
      t.text :stops, array: true, default: []
      t.timestamps
    end
  end
end
