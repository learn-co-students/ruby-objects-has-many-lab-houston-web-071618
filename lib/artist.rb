# require 'pry'
class Artist

  attr_accessor :name


  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

#creates a song passing song_name through it
  def add_song_by_name(song_name)
    #song holds the new instance of song_name
    song = Song.new(song_name)
    #add current Artist instance to song.artist
    song.artist = self
    #add instance of song name (held in song)
    #in to @songs.
    @songs << song
  end

  def self.song_count
    Song.all.count
  end
     # is a class method that returns  the total number of songs associated to all existing artists

# binding.pry
end
