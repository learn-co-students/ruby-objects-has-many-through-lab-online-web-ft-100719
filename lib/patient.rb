class Patient

  attr_reader :name, :appointment, :doctor
  @@all = []

  def initialize(name)
    @name = self
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
   Appointment.all.each do |appt|
      appt.patient == self
    end
  end

  def doctors
    self.appointments.collect do |appointment|
      appointment.doctor
    end
  end

end
