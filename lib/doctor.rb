class Doctor
 attr_reader :appointment, :patient
 attr_accessor :name
  @@all = []


  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date = "")
   Appointment.new(date, patient, self)
 end

 def appointments
   Appointment.all.select do |appointment|
     appointment.doctor == self
     appointment
   end
 end

 def patients
   appointments.map do |appointment|
     appointment.patient
   end
 end

end
