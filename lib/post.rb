class Post
  attr_accessor :name, :author
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def name
    @name
  end
  
  def artist=(artist_name)
    @artist = artist_name
  end
  
  def artist_name
    if @artist == nil
      nil
    else
      @artist.name
    end
  end
  
end