class Artist
  
  attr_reader :name
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def new_song(name, genre)
    new_song = Song.new(name, self, genre)
  end
  
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
  
  def genres
    Song.all.collect do |song|
      song.genre
    end
  end
  
end