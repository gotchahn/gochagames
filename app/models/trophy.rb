class Trophy < ActiveRecord::Base
  belongs_to :game
  belongs_to :player
  attr_accessible :description, :points, :title, :game_id

  validates_presence_of :title
end
