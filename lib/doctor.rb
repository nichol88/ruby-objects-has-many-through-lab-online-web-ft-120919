class Doctor
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select{ |a|
      a.doctor == self
    }
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def patients
    Patient.all.select{ |patient|
      patient.doctor == self
    }
  end

end
