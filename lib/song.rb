class Song

  attr_accessor :artist, :name

  def initialize(song_name)
    @name = song_name
    @artist = artist
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end
end


#new_song = Song.new("song", "artist" )
#new_song = Song.new(song)
