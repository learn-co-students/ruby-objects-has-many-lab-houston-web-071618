class Author

  attr_accessor :name


  def initialize(name)
    @name = name
    @post = []
  end

  def posts
    @post
  end
#takes in and argument of a post
#!!!!!post is an opject of the post class !!!
  def add_post(post)
    #associates that post with the author by telling the post that it belongs to that author ???=???
    # post.author calls on the method author (created by attr_accessor) sets this instance of Author equal to it
    post.author = self
    @post << post
    #is associating_ have to be done in both classes?
    # whyt is @post not an instance of post ?
  end

  def add_post_by_title(post)
    post = Post.new(post)
    post.author = self
    @post << post
  end

  def self.post_count
    Post.all.count
  end


end
#   #add_post
#     takes in an argument of a post and associates that post with the author by telling the post that it belongs to that author (FAILED - 5)
#   #add_post_by_title
#     takes in an argument of a post title, creates a new post with it and associates the post and author (FAILED - 6)
#   .post_count
#     is a class method that returns the total number of posts associated to all existing authors (FAILED - 7)
