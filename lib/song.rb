require 'pry'
class Song

  @@song_count = []

  attr_accessor :name, :artist

  def initialize name
    @name = name
    @@song_count << self
  end

  def artist_name
    if self.artist == nil
      nil
    else
      self.artist.name
    end
  end

  def self.all
    @@song_count
  end

end
