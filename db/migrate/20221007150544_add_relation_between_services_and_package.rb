class AddRelationBetweenServicesAndPackage < ActiveRecord::Migration[7.0]
  def change
    add_reference :services, :package, foreign_key: true
  end
end
