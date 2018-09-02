class Song
  
  attr_accessor :title, :artist, :genre

@@all = []
  def initialize(name)
    @name = name
    @genre = genre
    @@all << self
  end
  
  def artist_name
    self.artist.name
  end
  
end