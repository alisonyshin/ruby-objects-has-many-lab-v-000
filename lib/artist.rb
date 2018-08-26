class Artist
attr_accessor :name, :songs
@@songs = []
  
  def initialize(name)
    @name = name
    @@songs << self
  end
 
  def add_song(existing_song)
    existing_song.artist = self
    @@songs << existing_song
  end  
  
  def add_song_by_name(new_song)
    song = Song.new(new_song)
    song.artist = self
    @@songs << existing_song
  end  
  
  def songs
    Song.songs.select {|song| song.artist == self}
  end
  
  def self.song_count
    @@songs.count
  end
  
end