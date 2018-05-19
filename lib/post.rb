class Post

  attr_accessor :title, :author

  def initialize(title)
    @title = title
    @author = nil
  end

  def author_name
    if self.author != nil
      return self.author.name
    else
      return nil
    end
  end

end
