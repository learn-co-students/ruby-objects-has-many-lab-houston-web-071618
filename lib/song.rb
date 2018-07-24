require 'pry'
require_relative '../lib/artist.rb'
class Song
  attr_accessor :name, :artist
  attr_reader
  @@all = []
  def initialize(name = "")
    @name = name
    @artist = nil
    @@all << self
  end
  #def artist=(artist)
  #  self.artist = artist
  #end
  def artist_name
    if self.artist == nil
      self.artist
    else
      self.artist.name
    end
  end
end
