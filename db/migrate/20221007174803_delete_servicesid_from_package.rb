class DeleteServicesidFromPackage < ActiveRecord::Migration[7.0]
  def change
    remove_column :packages, :services_id, :bigint
  end
end
