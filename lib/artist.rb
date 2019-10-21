class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
    songs = []
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name)
    self.songs << song
    song.artist = self
  end

  def songs
    Song.all.select do |song|
      song.owner == self
  end

  def genres
    self.songs.collect do |song|
      song.genre
    end
  end

end
