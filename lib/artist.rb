class Artist 
  attr_accessor :name 
  
  @@all = []
  def initialize
    @@all << self
  end
  
  def songs 
    #return all songs associated with this Artist
    Song.all.select {|song| song.artist == self }
  end
  
  def new_song(name, genre)
    #given a name and genre, creates a new song #associated with that artist
     Song.new(name, self, genre)
  end 

  def genres 
    Song.all.select {|song| song.artist == self }
  end
  
  def self.all 
    @@all
  end
  
end