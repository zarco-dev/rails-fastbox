class AddPlateNumberToVehicles < ActiveRecord::Migration[7.0]
  def change
    change_column :vehicles, :plate_number, :string
  end
end
