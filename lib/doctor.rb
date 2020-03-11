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

  def new_appointment(name, date)
    Appointment.new(date, name, self)
  end

  def patients
    Patient.all.select do |patient|
      patient.doctor == self
    end
  end

end
