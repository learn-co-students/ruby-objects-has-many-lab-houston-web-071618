class Author

  attr_accessor :name
  @@posts = []

  def initialize(name)
      @name = name
  end

  def posts
    @@posts
  end

  def add_post(post)
    @@posts << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @@posts << post
    post.author = self
  end

  def self.post_count
    count = 0
    @@posts.each do |item|
      if item.author
        count+=1
      end
   end
   count
  end

end
