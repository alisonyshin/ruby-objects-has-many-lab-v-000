class Author
attr_accessor :name
@@posts = []
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def posts
    @posts
  end
 
  def add_post(existing_post)
    existing_post.author = self
    @posts << existing_post
    @@posts << @posts
  end  
  
  def add_post_by_name(new_post)
    post = Post.new(new_post)
    post.author = self
    @posts << post
    @@posts << @posts
  end  
  
  def self.post_count
    @@posts.flatten.length
  end
  
end