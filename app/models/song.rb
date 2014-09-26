class Song < ActiveRecord::Base
  attr_accessible :album_id, :title
  validates_presence_of :title, :album_id
  belongs_to :album
  has_one :artist, :through => :album
end
