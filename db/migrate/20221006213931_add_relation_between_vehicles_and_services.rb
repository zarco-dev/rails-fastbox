class AddRelationBetweenVehiclesAndServices < ActiveRecord::Migration[7.0]
  def change
    add_reference :services, :vehicle, foreign_key: true
  end
end
