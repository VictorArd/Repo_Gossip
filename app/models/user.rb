class User < ApplicationRecord
  belongs_to :city
  has_many :potins

  validates :f_name,
    presence: true

  validates :l_name,
    presence: true

  validates :email,
    presence: true,
    uniqueness: true,
    format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Votre email n'est pas correct" }
end
