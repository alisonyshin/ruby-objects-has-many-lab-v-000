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