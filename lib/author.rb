class Author
  
  attr_accessor :name, :posts
  
  @@count = 0  
  
  def initialize(name)
    @name = name
    @posts = []
    @@count += 1
  end
  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    song.artist = post
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
  end
  
  def self.song_count
    @@count
  end
  
end