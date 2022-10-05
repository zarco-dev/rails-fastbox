class RemoveDriverToUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :driver, :boolean
  end
end
