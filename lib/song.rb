class Song
  
  attr_accessor :title, :artist

@@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def artist_name
    self.artist.name
  end
  
end