require 'pry'

class Post

  @@all = [] 

  attr_accessor :author, :title


  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  # def title
  #   @title
  # end

  # def author
  #  @ author
  # end

  def author_name
    if self.author == nil
      nil
    else
      self.author.name
    end


  end


end

#   #title
#     has a title (FAILED - 12)
#   #author
#     belongs to an author (FAILED - 13)
#   #author_name
#     knows the name of its author (FAILED - 14)
#     returns nil if the post does not have an author (FAILED - 15)
