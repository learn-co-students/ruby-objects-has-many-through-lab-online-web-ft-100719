class Genre 
  
  @@all = [] 
  
  attr_accessor: :name 
  
  def initialize(name)
    @name << name 
    @@all << self
  end
  
  def songs 
    @@all.select { |songs] songs.genre == self}           
  end
  
   def artists 
    @@all.collect {|art| art.artist}
  end
  
end