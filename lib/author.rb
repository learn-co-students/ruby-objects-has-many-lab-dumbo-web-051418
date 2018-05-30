class Author
  attr_accessor :name ,:post

  @@post_count = 0

  def initialize(name)
    @name = name #figured out why author_name  confusing
    @posts = []
  end

  def add_post(post)
    self.posts << post
    post.author = self #the post's author is self
    @@post_count += 1
  end

  def add_post_by_title(title)
    post = Post.new(title)
    self.posts << post
    post.author = self
    @@post_count += 1
  end

  def posts
    @posts
  end

  def self.post_count
    @@post_count
  end
end
