class Artist
  
  attr_accessor :name, :songs
  
  @@songs = []
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
    @@songs.each do |song|
      if song_count[song]
        song_count[song] += 1
      else
        song_count[song] = 1
      end
    end
    song_count
  end
  
end