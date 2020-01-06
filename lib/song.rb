class Song
  @@all = []
  def initialize(name, artist, genre)
    @@all << self
  end
end
