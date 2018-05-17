class Song
  attr_accessor :name, :artist

  def initialize(title)
    @name = title
  end

  def artist_name
    artist.class == Artist ? artist.name : nil
  end
end
