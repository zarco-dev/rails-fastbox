class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :user_type, :username, :birth_date, :first_name, :last_name, :license_type, :gender, :document_number, :document_type, :bonus_code, presence: true
end
