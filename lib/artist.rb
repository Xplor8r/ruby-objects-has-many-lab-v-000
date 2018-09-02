class Artist
  
  attr_accessor :name, :genre

  @@count = 0
  def initialize(name, genre)
    @name = name
    @songs = []
    @@count += 1
  end
  
  def add_song_by_name(song)
    song = Song.new(name, genre)
    @songs << song
    song.artist = self
  end
  
end