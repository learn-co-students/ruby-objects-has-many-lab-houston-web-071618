require 'pry'

class Author
  attr_accessor :name, :posts

  @@all = []

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_post(post_input)
    post_input.author = self
    self.posts << post_input
  end

  def add_post_by_title(blog_title)
    new_post = Post.new(blog_title)
    new_post.author = self
    self.posts << new_post
  end

  def self.post_count
    #binding.pry
    Post.all.length
  end

end
