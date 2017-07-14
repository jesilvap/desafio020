=begin
Se tienen las clases Rectangulo y Cuadrado cuyos constructores reciben las medidas de los lados correspondientes.
=end

module Formula
  def perimetro(largo, ancho)
    perimetro = largo*2 + ancho*2
    puts perimetro
  end
  def area(largo, ancho)
    area = largo * ancho
    puts area
  end
end

class Rectangulo
    include Formula
    def initialize(largo, ancho)
      @largo = largo.to_i
      @ancho = ancho.to_i
    end

   def lados
     puts "el largo del rectangulo es #{@largo} y el ancho es #{@ancho}"
   end
end

class Cuadrado
    include Formula
    def initialize(lado)
      @lado = lado
    end

   def lados
     puts "los lados del cuadrado miden #{@lado}"
   end


end

include Formula
Formula.perimetro(2, 1)
Formula.area(2, 1)

Rectangulo.new(5,2).lados
Cuadrado.new(10).lados
