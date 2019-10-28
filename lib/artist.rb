class Artist 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(name)
    Song.new(name, self)
  end
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end
  
  def genres 
    songs.map {|song| song.genres}
  end
  
end