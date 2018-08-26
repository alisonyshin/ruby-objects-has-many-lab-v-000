class Artist
attr_accessor :name, songs
@@songs = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def songs
    @songs
  end
 
  def add_song(existing_song)
    existing_song.artist = self
    @songs << existing_song
    @@songs << @songs
  end  
  
  def add_song_by_name(new_song)
    song = Song.new(new_song)
    song.artist = self
    @songs << song
    @@songs << @songs
  end  
  
  def self.song_count
    @@songs.flatten.length
  end
  
end