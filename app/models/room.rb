class Room < ActiveRecord::Base

attr_accessible :name

has_many :lines

end
