class Player < ActiveRecord::Base
  has_many :entries

  validates :password_digest, confirmation: true
end
