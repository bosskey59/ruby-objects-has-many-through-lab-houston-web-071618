class Doctor

  @@all =[]
  attr_accessor :name

  def initialize (name)
    @name = name
    @@all << self
  end

  def new_appointment(date, patient)
    appt=Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    appointments.collect do |appointment|
      appointment.patient
    end
  end

  def self.all
    @@all
  end
end
