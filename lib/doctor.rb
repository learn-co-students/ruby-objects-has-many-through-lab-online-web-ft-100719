# class Doctor
#
#   attr_reader :name, :appointment, :patient
#
#   @@all_doc = []
#
#   def initialize(name)
#     @name = name
#     @@all_doc << self
#   end
#
#   def self.all
#     @@all_doc
#   end
#
#   def new_appointment(patient, date)
#     Appointment.new(date, patient, self)
#   end
#
#   def appointments
#     Appointment.all.each do |appointment|
#       appointment.doctor == self
#     end
#   end
#
#   def patients
#     appointments.map do |appointment|
#       appointment.patient
#     end
#   end
#
#  end

class Doctor

  attr_reader :name, :appointment, :patient

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.each do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    appointments.map do |appointment|
      appointment.patient
    end
  end

end
