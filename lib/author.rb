class Author
  attr_accessor :name, :posts
  @@post_count = 0

  def initialize(name=nil)
    @name = name
    @posts = Array.new
  end

  def name
    @name
  end

  def add_post(post)
    post.author = self
    self.posts.push(post)
    @@post_count += 1
  end

  def add_post_by_title(post)
    new_post = Post.new(post)
    add_post(new_post)
  end

  def self.post_count
    @@post_count
  end
end
