class Post
  
  attr_accessor :title, :author

    def author_name
    if @author
      @author.name
    else
      nil
    end
  end
  
end