require 'random-word'

def random_name
  "#{RandomWord.adjs.next} #{RandomWord.nouns.next}".titleize
end

puts "Creating seed data"

Artist.create(10.times.map { {name: random_name} }).each do |artist|
  Album.create(10.times.map { {title: random_name, year: (1960..2014).to_a.sample, artist_id: artist.id} }).each do |album|
    Song.create(12.times.map { {album_id: album.id, title: random_name} })
  end
end

puts "There are now #{Artist.count} artists, #{Album.count} albums, and #{Song.count} songs"
