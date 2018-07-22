require "pry"
class Appointment

  @@all =[]
  attr_reader :patient, :doctor, :date

  def initialize (date, doctor, patient)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
    # binding.pry
  end

  def self.all
    @@all
  end

end
