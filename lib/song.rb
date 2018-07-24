class Song

  attr_accessor :artist, :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist_name
    if !self.artist
      return nil
    else
      return self.artist.name
    end 
  end

end
