class AddDefaultValueToServicesStatus < ActiveRecord::Migration[7.0]
  def change
    change_column :services, :status, :integer, default: 1
  end
end
