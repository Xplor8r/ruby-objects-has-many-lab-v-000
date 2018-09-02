class Artist
  
  attr_accessor :name, :songs

  @@count = 0  
  def initialize(name)
    @name = name
    @songs = []
    @@count += 1
  end
  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
  end
  
  def self.song_count
    song_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end
  
end