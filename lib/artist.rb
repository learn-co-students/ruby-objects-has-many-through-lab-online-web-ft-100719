class Artist 
  
  @@all = []
  
  attr_accessor :name
  
  def initialize(name)
    self.name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_song(name, genre) 
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select{|song| song.artist == self }
  end
  
  def genres
    genres = []
    songs.each {|song| genres << song.genre}
    genres
  end 
  
end 