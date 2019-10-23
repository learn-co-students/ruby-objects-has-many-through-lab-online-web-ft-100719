class Genre
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end
  
  def artists
    artist_collection = []
    
    songs.each do |song|
      if(!artist_collection.include?(song.artist))
        artist_collection << song.artist
      end
    end
    artist_collection
  end
  
end