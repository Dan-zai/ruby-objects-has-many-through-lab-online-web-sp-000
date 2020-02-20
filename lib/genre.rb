class Genre
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all
    @all
  end 

  def songs
    songs.all.select {|song| song.genre == self}
  end
  
   def artists
     songs.map do |things|
       things.artist
  end
end 
  
  def add_song(song)
    self.songs << song
  end 
  
end 