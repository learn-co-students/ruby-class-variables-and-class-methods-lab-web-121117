class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(song_name, artist_name, genre)
    @name = song_name
    @artist = artist_name
    @genre = genre
    @@count += 1
    @@artists << artist_name
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

  def self.artist_count
    hold = Hash.new(0)
    @@artists.each {|artist| hold[artist] += 1 }
    hold
  end

  def self.genre_count
    hold = Hash.new(0)
    @@genres.each {|genre| hold[genre] += 1 }
    hold
  end

end
