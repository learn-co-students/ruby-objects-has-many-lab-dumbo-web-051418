
class Author

  attr_accessor :name, :post

  @@post_count = 0

  def initialize(name)

    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(title)
    @posts << title
    @@post_count += 1
    title.author = self
  end

  def add_post_by_title(post)
    post = Post.new(post)
    add_post(post)
  end

  def self.post_count
     @@post_count
  end

end
