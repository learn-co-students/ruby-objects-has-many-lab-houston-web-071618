require 'pry'
class Artist

  @@count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  attr_accessor :name, :songs


  def add_song(song)
    songs << song
    song.artist = self
    @@count += 1

  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
  end


  def self.song_count
    @@count
  end


end
