class CreateMusicSearches < ActiveRecord::Migration
  def self.up
    sql = <<-SQL
      CREATE VIEW music_searches AS
        SELECT
          artists.id AS result_id,
          'Artist' AS result_type,
          artists.name AS term
        FROM artists

        UNION
        SELECT
          songs.id AS result_id,
          'Song' AS result_type,
          songs.title AS term
        FROM songs

        UNION
        SELECT
          albums.id AS result_id,
          'Album' AS result_type,
          albums.title AS term
        FROM albums

        UNION
        SELECT
          albums.id AS result_id,
          'Album' AS result_type,
          CAST(albums.year AS text) AS term
        FROM albums
    SQL

    connection.execute(sql)
  end

  def self.down
    connection.execute("DROP VIEW music_searches")
  end
end
