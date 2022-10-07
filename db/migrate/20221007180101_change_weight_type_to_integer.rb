class ChangeWeightTypeToInteger < ActiveRecord::Migration[7.0]
  def change
    change_column :packages, :weight, :string
  end
end
