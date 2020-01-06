class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select{ |s|
      s.artist == self
    }
  end

  def new_song(name, genre)

  end

  def self.all
    @@all
  end

end
