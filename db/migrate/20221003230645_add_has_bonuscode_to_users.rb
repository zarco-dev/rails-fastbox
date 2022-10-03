class AddHasBonuscodeToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :has_bonuscode, :string, default: ""
  end
end
