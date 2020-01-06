class Genre
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def songs(genre)
    Song.all.select{ |s|
      s.genre ==
    }
  end
end
