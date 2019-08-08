class Song
  attr_accessor :name, :artist, :genre

  # @@songs = []
  @@genres = []
  @@artists = []
  @@count = 0
  # @@genre_count = 0
  # @@artist_count = 0

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    # @@songs << name
    @@artists << artist
    @@genres << genre
    @@count += 1
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
    genres_hash = Hash.new(0)
    @@genres.each do |genre|
      genres_hash[genre] += 1
    end
    genres_hash
  end

  def self.artist_count
    artists_hash = Hash.new(0)
    @@artists.each do |artist|
      artists_hash[artist] += 1
    end
    artists_hash
  end

end
