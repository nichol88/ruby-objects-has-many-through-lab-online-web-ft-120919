class Appointment
  attr_accessor :doctor

  @@all = []

  def initialize
    @@all << self
  end


end
