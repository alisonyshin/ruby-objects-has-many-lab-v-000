class Post
  attr_accessor :title, :author
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def title
    @title
  end
  
  def author=(author_name)
    @author = author_name
  end
  
  def author_name
    if @author == nil
      nil
    else
      @author.name
    end
  end
  
end