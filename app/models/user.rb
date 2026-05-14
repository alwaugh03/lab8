class User < ApplicationRecord
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable

  enum :role, [:owner, :vet, :admin]

  validates :first_name, presence: true
  validates :last_name, presence: true
end