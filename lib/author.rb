class Author
  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post_obj)
    self.posts << post_obj
    post_obj.author = self
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    post.author = self
    self.posts << post
  end

  def self.post_count
    Post.all.length
  end
end
