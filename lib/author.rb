
class Author

  @@all = []
  @@post_count = 0
attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def add_post(post)
    self.posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    post = Post.new(title)
    self.posts << post
    post.author = self
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end

def self.all
  @@all
end
end
