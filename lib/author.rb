class Author
  attr_accessor :name, :posts
  @@all = []
  def initialize(name = "")
    @name = name
    @posts = []
    @@all << self
  end

  def add_post(post)
    post.author = self
    self.posts << post
  end

  def add_post_by_title(post_title)
    add_post(Post.new(post_title))
  end

  def self.post_count
    count = 0
    numPostArray =@@all.map{|author| author.posts.length}
    numPostArray.each{|number| count += number}
    count
  end

end
