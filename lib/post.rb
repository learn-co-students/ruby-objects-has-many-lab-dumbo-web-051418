class Post
  attr_accessor :author
  def initialize(title)
    @title = title
  end

  def title
    @title
  end

  def author
    @author
  end

  def author_name
    if author == nil
      return nil
    else
      return author.name
    end
  end
end
