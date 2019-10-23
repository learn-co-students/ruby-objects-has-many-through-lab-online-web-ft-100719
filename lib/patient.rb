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

  def new_appointment(date, doctor)
    Appointment.new(self, doctor, date)
  end

  def appointments
    appointments = Appointment.all.each { |appt| appt.patient == self }
  end

  def doctors
    appointments.map do |appointment|
      appointment.doctor
    end
  end

end
