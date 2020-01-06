class Genre
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
  end

  def songs
    Song.all.select{ |s|
      s.genre == self
    }
  end

  def all
    @@all
  end
end
