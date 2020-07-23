require 'sqlite3'
require "ap"

def detailed_tracks(db)
  # TODO: return the list of tracks with their album and artist.
  # db.execute('')
  query = <<-SQL
    SELECT tracks.name, albums.title, artists.name
    FROM tracks
    JOIN albums ON tracks.album_id = albums.id
    JOIN artists ON albums.artist_id = artists.id
  SQL
  rows = db.execute(query)
  return rows
end

def stats_on(db, genre_name)
  # TODO: For the given category of music, return the number of tracks and the average song length (as a stats hash)
  # stat = db.execute('')
  query = <<-SQL
    SELECT COUNT(*), AVG(tracks.milliseconds)
    FROM tracks
    JOIN genres ON tracks.genre_id = genres.id
    WHERE genres.name = "#{genre_name}"
  SQL
  rows = db.execute(query)
  return {
      category: genre_name,
      number_of_songs: rows[0][0],
      avg_length: rows[0][1].fdiv(60_000).round(2)
    }
end

def top_five_artists(db, genre_name)
  # TODO: return list of top 5 artists with the most songs for a given genre.
  query = <<-SQL
    SELECT artists.id, artists.name, COUNT(*) AS c
    FROM tracks
    JOIN genres ON tracks.genre_id = genres.id
    JOIN albums ON tracks.album_id = albums.id
    JOIN artists ON albums.artist_id = artists.id
    WHERE genres.name = "#{genre_name}"
    GROUP BY artists.id
    ORDER BY c DESC
    LIMIT 5
  SQL
  rows = db.execute(query)
end
