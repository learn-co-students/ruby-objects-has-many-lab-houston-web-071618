class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(song_name)
    @song_name = song_name
    @@all << self
  end

  def self.all
    @@all
  end


  def artist_name
    if self.artist
      self.artist.name
    else
      return nil
    end
end

end
