class ChangeBalanceToUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :balance, :integer
  end
end
