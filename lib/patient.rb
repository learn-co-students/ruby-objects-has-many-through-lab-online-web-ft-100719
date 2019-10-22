class Patient

attr_accessor :name, :appointment, :doctor
@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def new_appointment(doctor, date)
   Appointment.new(doctor, date, self)
 end

 def appointments
   Appointment.all.select {|appointment| appointment.patient == self}
   appointment
 end

 def doctors
   appointments.collect { |appointment| appointment.doctor}
 end

end
