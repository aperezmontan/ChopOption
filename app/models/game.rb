class Game < ActiveRecord::Base
  has_one :spread
  has_many :picks
  belongs_to :home_team, class_name: 'Team'
  belongs_to :away_team, class_name: 'Team'
  belongs_to :week

end
