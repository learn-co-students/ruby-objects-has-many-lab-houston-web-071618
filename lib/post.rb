require_relative '../lib/author.rb'
class Post
  attr_accessor :title, :author
  @@all = []
  def initialize(title = "")
    @title = title
    @songs = []
    @@all << self
  end
  def author_name
    if self.author == nil
      self.author
    else
      self.author.name
    end
  end
end
