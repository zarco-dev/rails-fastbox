class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.integer :plate_number
      t.text :vehicle_type
      t.string :vehicle_branding
      t.string :model

      t.timestamps
    end
  end
end
