class Genre 
  
  attr_accessor :name, :songs, :artists 
  
  @@all = []
  
  def initialiZe(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def songs 
    Songs.all.each do |songs|
      song.genre == genre 
    end 
  end 
  
end 

