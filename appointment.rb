class Appointment
  def initialize(location)
    @location = location
  end

  def to_s
    "La reunión será en: #{@location}" 
  end
end

puts Appointment.new("Desafio Latam")