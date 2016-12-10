require 'pry'

class Doctor

  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []

  end

  def name
    @name
  end

  def appointments
    @appointments
  end

  def add_appointment(appointment)
    appointment.doctor = self
    @appointments << appointment
  end

  def patients
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end



end
