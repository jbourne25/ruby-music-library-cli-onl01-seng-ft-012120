class Song 
  
  attr_accessor :name
  #attr_writer :artist 

  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self    
  end 
  
  def artist=(artist)
    @artist = artist 
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
  
  def self.create(song)
    song = Song.new(song)
    song.save 
    song 
  end 
  
  def self.find_by_name(name)
    @@all.detect{ |song| song.name == name }
  end
  
  def self.find_or_create_by_name(name)
  #   if self.find_by_name(name)
  #     song.name 
  #   else 
  #     name = Song.new(name)
  #   end 
  # end 
  
      

  
  
  
  
  
  
  
  
  
  
  # def name=(name)
  #   @name = name 
  # end 
  
    # def name 
    #   @name 
    # end 
      
  
  
  
end 