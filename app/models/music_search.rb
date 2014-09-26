class MusicSearch < ActiveRecord::Base
  extend Textacular

  attr_writer :query
  attr_accessible :query
  belongs_to :result, polymorphic: true

  def self.search(query)
    super.preload(:result).map(&:result)
  end
end
