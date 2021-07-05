class Genre 
  
  @@all = []
  
  attr_accessor :name
  
  def initialize(name)
    self.name = name
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 
  
  def songs 
    Song.all.select{|song| song.genre == self }
  end 
  
  def artists
    artists = []
    songs.each{|song| artists << song.artist}
    artists 
  end 
end 

 
