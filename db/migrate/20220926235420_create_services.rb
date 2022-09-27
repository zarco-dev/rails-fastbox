class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.datetime :pickup_time
      t.datetime :deliver_time
      t.string :payment_method
      t.string :pickup_address
      t.string :deliver_address
      t.integer :status

      t.timestamps
    end
  end
end
