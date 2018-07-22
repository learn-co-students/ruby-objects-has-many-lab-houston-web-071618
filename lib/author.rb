require "pry"
require_relative './post'
class Author

  attr_accessor :name


  def initialize(name)
    @name =name
    # @songs =[]
  end

  def posts
    # @songs
    Post.all.select do |post|
      post.author == self
    end
  end

  def add_post(post)
    # @songs << song
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    # binding.pry
    # @songs << song
    post.author=self
  end

  def self.post_count
    Post.all.length
  end

end
