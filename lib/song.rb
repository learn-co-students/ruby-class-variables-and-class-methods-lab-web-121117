require 'pry'
class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@genres << genre
    @@artists << artist

    @@count += 1
  end

  def self.count
    @@count
  end

  def self.genres
    genre_list = []
    @@genres.each {|genre| genre_list.include?(genre) ? false : genre_list << genre}
    genre_list
  end

  def self.artists
    artist_list = []
    @@artists.each {|artist| artist_list.include?(artist) ? false : artist_list << artist}
    artist_list
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      genre_count[genre] ||= 0
      genre_count[genre] += 1
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      artist_count[artist] ||= 0
      artist_count[artist] += 1
    end
    artist_count
  end

end
