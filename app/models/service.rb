class Service < ApplicationRecord
  belongs_to :user, dependent: :destroy

  validates :payment_method, :pickup_address, :deliver_address, presence: true
  validates :user_id, presence: true, uniqueness: true
end
