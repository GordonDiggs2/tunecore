class Album < ActiveRecord::Base
  attr_accessible :artist_id, :title, :year
end
