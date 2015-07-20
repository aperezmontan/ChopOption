class Pool < ActiveRecord::Base
  has_many :entries
  has_many :players, through: :entries
  has_many :weeks

end
