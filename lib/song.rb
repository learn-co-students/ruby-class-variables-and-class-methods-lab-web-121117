
require 'pry'

class Song

attr_accessor :name, :artist, :genre

@@count = 0
@@artists = []
@@genres = []

@@genre_count = {}

  def initialize(name,artist,genre)
    @name= name
    @artist= artist
    @genre= genre

    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    counter = 0
    @@genres.each do |genre|
      @@genre_count[genre] ||= counter
      @@genre_count[genre] += 1
  end
  @@genre_count
  end

  def self.artist_count
   artist_hash= {}
   @@artists.each do |artist|
     artist_hash[artist] ||=  @@artists.count(artist)
   end
   artist_hash
  end


end
