class Service < ApplicationRecord
  belongs_to :user

  validates :payment_method, :pickup_address, :deliver_address, presence: true
  validates :user_id, presence: true
end
