class Song
  attr_accessor :name, :artist
  @@songs = []
  
  def self.songs
    @@songs
  end
  
  def initialize(name)
    @name = name
    @artist = nil
    @@songs << self
  end
  
  def artist
    @artist
  end
  
  def artist_name
    if artist.nil? 
      nil 
    else
      self.artist.name
    end
  end
  
end