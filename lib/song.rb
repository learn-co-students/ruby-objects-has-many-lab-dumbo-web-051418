require 'pry'

class Song
  attr_accessor :song, :artist
  @@all = []

  def initialize(name)
    @song = name
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end

  def name
    @song
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
