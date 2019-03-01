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
  
  def new_appointment(patient, date)
    doctor = Appointment.new(date, patient, self)
  end
  
  def appointments
    Appointment.all.select {|element| element.doctor == self}
  end
  
  def patients
    Appointment.all.map {|element| element.patient}
  end
end