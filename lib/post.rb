class Post
  @@post_count = []
  attr_accessor :author, :title
  def initialize title
    @title = title
    @@post_count << self
  end
  def author_name
    if self.author != nil
      self.author.name
    else
      nil
    end
  end
  def self.all
    @@post_count
  end
end
