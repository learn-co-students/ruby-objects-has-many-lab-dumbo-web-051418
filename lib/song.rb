class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = nil
  end

  def artist_name
    if self.artist != nil
      return self.artist.name
    else
      return nil
    end
  end

end
