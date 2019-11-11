class Artist 
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_song(name,genre)
    song.artist == self 
    song.new(song,self,genre)
  end 
  
  def songs
    song.map do |song|
       song.artist 
     end 
  end 
  
  def genres
     self.song.collect do |song|
        song.genre 
      end 
  end 
  
end 