class Artist
  
  attr_accessor :name, :genre
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song_by_name(song)
    song = Song.new(name, genre)
    @songs << song
    song.artist = self
  end
  
end