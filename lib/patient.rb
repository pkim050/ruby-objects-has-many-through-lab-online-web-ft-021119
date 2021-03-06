class Patient
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(doctor, date)
    appointment = Appointment.new(date, self, doctor)
  end
  
  def appointments
    Appointment.all.select {|element| element.patient == self}
  end
  
  def doctors
    Appointment.all.map {|element| element.doctor}
  end
end