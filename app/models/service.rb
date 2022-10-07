class Service < ApplicationRecord
  belongs_to :user
  belongs_to :vehicle, optional: true
  has_many :packages

  validates :payment_method, :pickup_address, :deliver_address, presence: true
  validates :user_id, presence: true
end
