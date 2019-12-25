class Appointment
  
  attr_reader :date, :patient, :doctor
  
  @@all_appt = []
  
  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all_appt << self
  end
  
  def self.all
    @@all_appt
  end
  
end