class Post

  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    if self.author        #if has an author
      self.author.name    #return author name
    else
      nil              #if no name, return nil
    end
  end

end
