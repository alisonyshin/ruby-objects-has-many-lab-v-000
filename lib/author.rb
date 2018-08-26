class Author
attr_accessor :name
@@posts = []
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def songs
    @posts
  end
 
  def add_song(existing_post)
    existing_post.author = self
    @posts << existing_post
    @@posts << @posts
  end  
  
  def add_post_by_name(new_post)
    post = Post.new(new_post)
    post.artist = self
    @songs << song
    @@songs << @songs
  end  
  
  def self.song_count
    @@songs.flatten.length
  end
  
end