class DropWalletsTable < ActiveRecord::Migration[7.0]
  def up
    drop_table :wallets
  end
end
