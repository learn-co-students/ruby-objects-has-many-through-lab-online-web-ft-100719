class Patient

attr_reader :name, :appointment, :doctor
@@all = []

def initialize(name)
  @name = name
  @appointments = []
  self.class.all << self
end

def self.all
  @@all
end

def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
end

def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def appointments
    @appointments
  end

def doctors
  self.appointents.collect do |appointment|
    appointment.doctor
  end
end

end
