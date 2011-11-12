class Line < ActiveRecord::Base

attr_accessible :content, :room_id, :user_name, :latitude, :longitude

belongs_to :room

end
