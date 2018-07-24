require 'pry'
class Artist
  attr_accessor :name, :songs
  @@all = []
  def initialize(name = "")
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def add_song_by_name(song_name)
    add_song(Song.new(song_name))
  end

  def self.song_count
    count = 0
    numSongArray =@@all.map{|artist| artist.songs.length}
    numSongArray.each{|number| count += number}
    count
  end

end
