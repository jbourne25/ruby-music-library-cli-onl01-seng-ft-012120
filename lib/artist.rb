class Artist 
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
    @songs = []
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.destroy_all 
    self.all.clear 
  end 
  
  def save 
    @@all 
  end 
  
  def self.create(artist)
    artist = Artist.new(artist)
    artist.save
    artist 
  end 
  
  def songs 
    Song.all.select{ |song| song.artist = self }
    #artist.songs << songs 
  end 
  
end 