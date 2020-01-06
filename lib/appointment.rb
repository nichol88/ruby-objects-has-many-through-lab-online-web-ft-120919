class Appointment
  attr_accessor :doctor

  @@all = []

  def initialize(date, patient, doctor)
    @@all << self
  end


end
