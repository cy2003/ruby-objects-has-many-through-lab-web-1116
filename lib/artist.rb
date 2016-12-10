class Artist

  def initialize(name)
    @name = name
    @songs = []
  end

  def name
    @name
  end

  def add_song(song)
    @songs << song
    song.artist = self
    #song is the object. artist is a Song instance method
  end

  def songs
    @songs
  end

  def genres
    self.songs.collect do |song|
      #songs is an array. iterates through each song object
      song.genre
      #genre is a Song instance method 
    end
  end

end
