class Genre 

    attr_accessor :name 
    @@all = []
    
    def initialize(name)
      @name = name 
      @@all.push(self)
    end
    
    def self.all 
      @@all 
    end 
    
    def songs 
      Song.all.select { |song| 
        song.genre == self 
    }
    end 
    
    def artists 
      artists = []
      songs.each { |song| 
        artists.push(song.artist)
    }
      artists 
    end 
  end 