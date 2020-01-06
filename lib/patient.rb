class Patient
  attr_accessor :name, :appointment

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end

  def all
    @@all
  end

  def doctors
    Appointment.all.select{ |ap|
      ap.patient == self
    }.map{ |ap|
      ap.doctors
    }
  end

  def appointments
    Appointment.all.select{|ap|
      ap.patient == self
    }
  end
end
