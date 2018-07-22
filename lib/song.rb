
class Song

  @@all = []

  def initialize(song_name)
    @name = song_name
    @@all << self
  end

  attr_accessor :name, :artist

  def artist_name

    if artist
      artist.name
    else
      artist
    end
  end

end
