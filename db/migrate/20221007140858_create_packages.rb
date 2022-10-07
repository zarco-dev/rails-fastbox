class CreatePackages < ActiveRecord::Migration[7.0]
  def change
    create_table :packages do |t|
      t.string :name
      t.decimal :weight
      t.string :width
      t.string :height
      t.string :package_type
      t.references :services, null: false, foreign_key: true

      t.timestamps
    end
  end
end
