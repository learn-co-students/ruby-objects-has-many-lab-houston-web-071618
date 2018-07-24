class Post

  attr_accessor :author, :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
    post.author = self
  end

  def author_name
    if !self.author
      return nil
    else
      return self.author.name
    end 
  end

end #class Post
