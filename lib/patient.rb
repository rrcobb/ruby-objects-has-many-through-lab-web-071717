class Patient
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def doctors
    @appointments.map { |a| a.doctor }
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end
end
