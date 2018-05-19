class Artist

  @@song_count = 0

  attr_accessor :name, :songs

  def initialize (name)
    @name = name
    @songs = []
  end


  def add_song(song)
    self.songs << song
    song.artist = self
    self.class.song_count +=1
    return nil
  end

  def self.song_count
    @@song_count
  end

  def self.song_count=(new_val)
    @@song_count = new_val
  end

  def add_song_by_name(name)
    song = Song.new(name)
    self.add_song(song)
  end

end
