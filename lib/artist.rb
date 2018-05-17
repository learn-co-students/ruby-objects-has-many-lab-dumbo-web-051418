require_relative './song'

class Artist
  attr_accessor :name
  attr_reader :songs
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def all_songs
    @songs
  end

  def add_song(song)
    song.artist = self
    all_songs << song
    @@song_count += 1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    self.add_song(song)
  end

  def self.song_count
    @@song_count
  end
end
