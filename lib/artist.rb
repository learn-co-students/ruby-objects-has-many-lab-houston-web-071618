class Artist

  attr_accessor :name

  @@all = []

  def initialize(artist_name)
    @nartist_name = artist_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
      song.artist = self
    end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
  end

  def songs
    Song.all.select do |song_name|
      song_name.artist == self
    end
  end

  def self.song_count
    Song.all.count
  end

end
