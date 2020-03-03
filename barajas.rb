class Carta
  attr_accessor :numero, :pinta
  def initialize(numero, pinta)
    @numero = numero
    @pinta = pinta
  end
end

class Baraja
  attr_accessor :cartas
  def initialize
    @cartas = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13].map{ |numero|
    ["C", "D", "E", "T"].map{|pinta| Carta.new(numero, pinta) }
    }.flatten
  end
  def barajar
    @cartas.shuffle!
  end
  def sacar
    @cartas.pop
  end
  def repartir
    cartas_repartidas = []
    5.times do
      cartas_repartidas.push(sacar)
    end
    cartas_repartidas
  end
end