
require 'pry'
class Artist 
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name 
    @songs = []
  end
  
  def add_song(new_song)
    # Song.new(title, self)
    songs << new_song
    new_song.artist = self 
  end
  
  def add_song_by_name(title)
    new_song = Song.new(title)
    new_song.artist = self
    songs << new_song
  end
  
  def self.song_count
    @@song_count = Song.songs.count
  end
end