class AddFieldsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :license_type, :string
    add_column :users, :gender, :string
    add_column :users, :username, :string
    add_column :users, :birth_date, :datetime
    add_column :users, :document_type, :string
    add_column :users, :document_number, :integer
    add_column :users, :bonus_code, :string
    add_column :users, :user_type, :string
  end
end
