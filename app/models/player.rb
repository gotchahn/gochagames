class Player < ActiveRecord::Base
  attr_accessible :birth_at, :email, :full_name, :username
  has_many :trophies

  validates_presence_of :username
  validates_uniqueness_of :username
  validates_uniqueness_of :email, allow_blank: :true
end
