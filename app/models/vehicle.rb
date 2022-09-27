class Vehicle < ApplicationRecord
  belongs_to :user, dependent: :destroy

  validates :plate_number, presence: true, uniqueness: true
  validates :vehicle_type, presence: true, length: { minimum: 4 }
  validates :user_id, presence: true, uniqueness: true
end
