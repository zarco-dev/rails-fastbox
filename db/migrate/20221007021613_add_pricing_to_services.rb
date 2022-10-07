class AddPricingToServices < ActiveRecord::Migration[7.0]
  def change
    add_column :services, :pricing, :integer
  end
end
