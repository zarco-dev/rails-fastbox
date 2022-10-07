class Vehicle < ApplicationRecord
  belongs_to :user
  has_many :services

  validates :user_id, presence: true
end
