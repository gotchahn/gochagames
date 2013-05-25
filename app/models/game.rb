class Game < ActiveRecord::Base
  attr_accessible :genre, :title
  has_many :trophies

  validates_presence_of :title
end
