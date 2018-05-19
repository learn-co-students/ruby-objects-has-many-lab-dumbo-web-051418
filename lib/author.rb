class Author

  @@post_count = 0

  attr_accessor :name, :posts

  def initialize (name)
    @name = name
    @posts = []
  end


  def add_post(post)
    self.posts << post
    post.author = self
    self.class.post_count +=1
    return nil
  end

  def self.post_count
    @@post_count
  end

  def self.post_count=(new_val)
    @@post_count = new_val
  end

  def add_post_by_title(title)
    post = Post.new(title)
    self.add_post(post)
  end

end
