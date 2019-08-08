class Song
attr_accessor :name, :artist, :genre


  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
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
    hash = Hash.new
    @@genres.each do |genre|
      if hash.include?(genre)
        hash[genre] += 1
      else
        hash[genre] = 1
      end
    end
    hash
  end

  def self.artist_count
    hash = Hash.new
    @@artists.each do |artist|
      if hash.include?(artist)
        hash[artist] += 1
      else
        hash[artist] = 1
      end
    end
    hash
  end

end
