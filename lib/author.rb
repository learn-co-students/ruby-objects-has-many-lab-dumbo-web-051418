
class Author

  attr_accessor :name, :posts # the author class has a name and posts

  @@post_count = 0 # has a counter to quantify all the instances of posts

  def initialize(name)
    @name = name # initializes every new object with a name
    @posts = [ ] # initializes a places to store all an authors posts inside the artist
  end

  def add_post(post)
    @posts << post # adds a new post to the posts collection
    post.author = self # establishes the relationshop that a post belongs to an author
    @@post_count += 1 # increments the post counter with each post.
  end

  def add_post_by_title(title)
    new_post = Post.new(title) # creates a new instance of a post with a title
    new_post.author = self # establishes the relationship between a post having an author
    @posts << new_post
    @@post_count += 1
  end


  def self.post_count
    @@post_count # returns a count of all instances of posts stored within the class
  end
end
