class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  before_create :set_balance

  has_many :services, dependent: :delete_all
  has_many :vehicles, dependent: :delete_all
  has_one_attached :license
  has_one_attached :avatar

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: { message: "no debe estar vacio" }, uniqueness: true, format: { with: /\A[a-zA-Z]+\z/, message: "debe contener solo letras" }, length: { minimum: 3, message: "es muy corto, minimo 3 caracteres" }

  validates :email, presence: true, uniqueness: true, format: { with: /\S+@\S+\.\S+/, message: "debe tener el formato correcto" }

  # validates :birth_date, presence: true

  array = []
  self.all.each do |user|
    array << user.bonus_code
  end

  validates :has_bonuscode, allow_blank: true, inclusion: { in: array, message: "%{value} no es valido"}

  private

  def set_balance
    self.balance = 20_000 if has_bonuscode.present?
  end

end
