class Doctor
 attr_reader :name, :appointment, :patient
  @@all = []


  def initialize(name)
    @name = name
    @appointments = []
    self.class.all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def appointments
    @appointments
  end

  def patients
    @appointments.collect do |appointment|
      appointment.patient
    end
  end

end
