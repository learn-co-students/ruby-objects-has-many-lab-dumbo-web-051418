require 'pry'
class Artist

  attr_accessor :name

  @@song_count = 0
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def songs
    @songs
  end
  def add_song(song)
     song.artist = self  #creating an artist and adding to the
     @songs << song
     @@song_count += 1
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    new_song.artist = self #assigning a song to the instance of the artist from the name
    @songs << new_song
    @@song_count += 1
  end

  def self.song_count
    #find all existing artists
    #return the number of songs of each artist
    @@song_count

  end





end
