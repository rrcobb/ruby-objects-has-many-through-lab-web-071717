class Doctor
  attr_accessor :appointments, :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def patients
    @appointments.map { |a| a.patient }
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end
end
