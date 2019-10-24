class Patient

  attr_accessor :name, :appointment, :doctor

  @@all = []

  def initialize(name)
    @appointment = []
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(self, doctor, date)
    @appointments << appointment
    appointment
  end

  def appointments
    @appointments
  end

end
