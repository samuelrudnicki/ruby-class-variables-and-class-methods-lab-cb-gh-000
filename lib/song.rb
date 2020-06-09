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
    unique_artists = []
    @@artists.select do |artist|
      !unique_artists.include?(artist)
    end
    unique_artists
  end

  def self.genres
    unique_genres = []
    @@genres.select do |genre|
      !unique_genres.include?(genre)
    end
    unique_genres
  end
end
