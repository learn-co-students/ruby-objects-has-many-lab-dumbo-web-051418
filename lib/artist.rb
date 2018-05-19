require 'pry'

class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song) #how does add_song know to accept only a song object and not a string?
    @songs << song
    song.artist = self # sets the artist of the song object to self
  end

  def add_song_by_name(song_name)
    thingy = Song.new(song_name)
    add_song(thingy)
  end

  def self.song_count
    @@song_count = Song.all.length
  end


end
