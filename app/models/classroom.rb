class Classroom < ActiveRecord::Base
  attr_accessible :name, :occupancy

  has_many :courses

end
