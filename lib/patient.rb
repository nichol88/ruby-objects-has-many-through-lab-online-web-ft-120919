class Patient
  attr_accessor :name, :appointment
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
end
