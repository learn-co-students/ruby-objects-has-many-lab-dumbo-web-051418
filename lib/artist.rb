

class Artist


  attr_accessor :name, :songs

  @@song_count = 0 # creates a class level collection for all the songs created storing it in the artist class

  def initialize(name)
    @name = name
    @songs = [ ] # establishes an empty collection of songs that are related to each artist object
  end

  def add_song(song)
    @songs << song # assign the song to the artists collection
    @@song_count += 1 # adds a song to the collection
    song.artist = self #assign the artist to the song with self
  end

  def add_song_by_name(name)
    song = Song.new(name) # instantiates a new instance of song
    @songs << song # adds a song to the collection
    @@song_count += 1 # increments the song collection
    song.artist = self # creates the relationship between the song and the artist
  end


  def self.song_count
    @@song_count # returns the song count
  end

end
