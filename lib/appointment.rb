class Appointment
  attr_accessor :doctor, :patient

  @@all = []

  def initialize(doctor, date, patient)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end


end
