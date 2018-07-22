require "pry"
class Post

  @@all = []

  def initialize(title)
    @title = title

    @@all << self
  end

  attr_accessor :title, :author

  def author_name
    if author
      author.name
    else
      author
    end

  end



end
