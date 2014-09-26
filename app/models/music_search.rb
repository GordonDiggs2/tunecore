class MusicSearch < ActiveRecord::Base
  extend Textacular

  attr_writer :query
  attr_accessible :query
  belongs_to :result, polymorphic: true

  def self.search(query)
    Rails.cache.fetch([cache_key, query]) do
      super.preload(:result).map(&:result)
    end
  end

  def self.cache_key
    ['MusicSearch', Album.maximum(:updated_at).to_i, Artist.maximum(:updated_at).to_i, Song.maximum(:updated_at).to_i].join('/')
  end
end
