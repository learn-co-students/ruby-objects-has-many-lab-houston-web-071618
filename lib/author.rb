class Author

  attr_reader :name
  attr_writer :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_post(title)
    title.author= self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author= self
  end


  def posts
    Post.all.select do |post|
      post.author == self
    end
  end

  def self.post_count
    Post.all.count
  end

end
