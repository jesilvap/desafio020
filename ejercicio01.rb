=begin
Crear un método de clase llamado read_file que reciba como argumento el nombre del archivo (por defecto debe ser 'notas.txt') y devuelva la colección de objetos. El método debe alojar las instrucciones que se encuentran después de la clase. Finalmente imprimir la colección de objetos generada.
Hint: Debes reemplazar el argumento de File.open con el nombre del argumento del método read_file.
=end

class Alumno
   def initialize(nombre, nota1, nota2, nota3, nota4)
     @nombre = nombre
     @nota1 = nota1
     @nota2 = nota2
     @nota3 = nota3
     @nota4 = nota4
   end

   def self.read_file (file = 'notas.txt')
     alumnos = []
     data = []
     File.open(file, 'r') {|file| data = file.readlines}
     data.each do |alumno|
       alumnos << Alumno.new(*alumno.split(', '))
      print alumnos
     end

   end
end

print Alumno.read_file
