require_relative './post'
class Author
  attr_accessor :posts, :name
  @@post_count = 0
  
  def initialize(name)
    @name = name
    @posts = []
  end

  def all_posts
    @posts
  end

  def add_post(post)
    post.author = self
    all_posts << post
    all_posts.last
    @@post_count += 1
  end

  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end

  def self.post_count
    @@post_count
  end
end
