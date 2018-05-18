require 'pry'
class Author
  @@post_count = nil
  attr_accessor :name, :posts, :title
  def initialize name
    @name = name
    @posts = []
  end
  def add_post post
    @posts << post
    post.author = self
  end
  def add_post_by_title title
    # binding.pry
    new_post = Post.new(title)
    add_post(new_post)
  end
  def self.post_count
    @@post_count = Post.all.length
  end
end
