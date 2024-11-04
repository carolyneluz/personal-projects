class RestaurantOwner < ApplicationRecord
  has_secure_password

  validates :cpf, presence: true, uniqueness: true
  validates :name, :surname, :email, :password, presence: true
  validates :password, length: { minimum: 12 }
  validate :cpf_must_be_valid

  private

  def cpf_must_be_valid
    errors.add(:cpf, 'não é válido') unless CPF.valid?(cpf)
  end
end
