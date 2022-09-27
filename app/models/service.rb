class Service < ApplicationRecord
  validates :payment_method, :pickup_address, :deliver_address, presence: true
  validates :status, numericality: { less_than_or_equal_to: 5, only_integer: true }
  belongs_to :vehicle
  belongs_to :user
end
