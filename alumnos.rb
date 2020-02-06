require 'byebug'

class Alumno
  attr_accessor :notas

  def initialize(notas)
    @notas = notas
  end

  def calcular_promedio
    @notas.sum / @notas.size
  end
  
end

def mejor(alumnos)
  alumnos.map { |alumno| alumno.notas.max }.max
  
  # notas_altas_por_alumnos = []
  # alumnos.each do |alumno|
  #   notas_altas_por_alumnos << alumno.notas.max
  # end
end

def mostrar(alumno)
  alumno.notas
end

# notas_de_victor = [10,9,9,8]
# victor = Alumno.new(notas_de_victor)

# Crear un arreglo con todos los alumnos y asignarles notas al azar.

arr_alumnos = []

10.times do
  rand_notas = Array.new(4) { rand(1..10) }
  arr_alumnos << Alumno.new(rand_notas)
end


# puts mejor(arr_alumnos)
puts mostrar(arr_alumnos[0])


foo = [1,2,3,4]
alumno_nuevo = Alumno.new(foo)

alumno_nuevo.calcular_promedio