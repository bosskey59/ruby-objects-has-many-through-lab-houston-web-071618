class Patient

  attr_accessor :name

  def initialize (name)
    @name = name
  end

  def new_appointment(doctor, date)
    appt=Appointment.new(date, doctor, self)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    appointments.collect do |appointment|
      appointment.doctor
    end
  end
end
