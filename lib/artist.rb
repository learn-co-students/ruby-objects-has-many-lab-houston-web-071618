class Artist

  attr_accessor :name, :song
  @@songs = []

  def initialize(name)
    @name = name
  end

   def songs
     @@songs
   end #songs

   def add_song(song)
     @@songs << song
     song.artist = self
   end #add_song

   def add_song_by_name(name)
     new_song = Song.new(name)
     @@songs << new_song
     new_song.artist = self
   end


  def self.song_count
     count = 0
     @@songs.each do |item|
       if item.name
         count+=1
       end
    end
    count
  end #self.song_count

end #class Artist
