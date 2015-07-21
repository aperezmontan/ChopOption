class Spread < ActiveRecord::Base
  has_one :game
  belongs_to :favorite, class_name: 'Team'

end
