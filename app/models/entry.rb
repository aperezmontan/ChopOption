class Entry < ActiveRecord::Base
  has_many :picks
  belongs_to :player
  belongs_to :pool

end
