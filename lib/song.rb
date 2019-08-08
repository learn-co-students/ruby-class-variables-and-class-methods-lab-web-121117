class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists<<@artist
    @@genres<<@genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end
  def self.songs
    @@songs.uniq
  end
  def self.genres
    @@genres.uniq
  end

def self.genre_count
  return_hash = {}
  @@genres.each do |item|
    return_hash[item] ||= @@genres.count(item)
  end
  return return_hash
end


def self.artist_count
  return_hash = {}
  @@artists.each do |item|
    return_hash[item] ||= @@artists.count(item)
  end
  return return_hash
end
# Joseph's Solution:
# def self.artist_count
#     hold = Hash.new(0)
#     @@artists.each do|artist|
#       hold[artist] += 1
#     end
# the Hash.new(0) allows the default value of the key to be 0 instead of nil -
# allowing us to increment it
# we never have to worry about the same artist appearing multiple times because
# its key will always be overwritten in the iteration process, but the value will be retained
# and incremented
end
