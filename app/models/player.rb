class Player < ActiveRecord::Base
  has_many :entries

  validates :name, :email, :admin, presence: true
  validates :name, :email, uniqueness: true
  validates :password_digest, confirmation: true

  has_secure_password
end
