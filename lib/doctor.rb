class Doctor
 attr_reader :name, :appointment, :patient
 attr_accessor :name
  @@all = []


  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
   Appointment.new(date.to_s, patient, self)
 end

 def appointments
   Appointment.all.select do |appointment|
     appointment.doctor == self
     appointment
   end
 end

 def patients
   appointments.map do |appointment|
     appointment.patients
   end
 end

end
