class Song

  # establishes that this artists has a name and a artist
  attr_accessor :name, :artist

  def initialize(name)
    @name = name # this belongs to a name
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end

end
