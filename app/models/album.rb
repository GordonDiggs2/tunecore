class Album < ActiveRecord::Base
  attr_accessible :artist_id, :title, :year
  validates_presence_of :artist_id, :title, :year
  belongs_to :artist
  has_many :songs
end
