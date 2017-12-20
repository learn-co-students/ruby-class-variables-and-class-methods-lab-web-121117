require "pry"

class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      if genre_hash.has_key?(genre)
        genre_hash[genre] += 1
      else
        genre_hash[genre] = 1
      end
    end
    genre_hash

  end

  def self.artist_count
      artists_hash = {}
      @@artists.each do |artist|
        if artists_hash.has_key?(artist)
          artists_hash[artist] += 1
        else
          artists_hash[artist] = 1
        end
      end
      artists_hash
      #binding.pry
    end

end

# one = Song.new("One", "One Artist", "One Genre")
# two = Song.new("Two", "Two Artist", "One Genre")
# three = Song.new("Three", "Three Artist", "One Genre")
# three = Song.new("Four", "Three Artist", "Two Genre")
#
# Song.artist_count
