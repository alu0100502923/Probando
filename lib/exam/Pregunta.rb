#encoding: utf-8

class Pregunta
  ORDEN = 0
  VER_O_FAL = 1
  attr_accessor :texto, :respuestas

  def initialize(texto, respuestas)
    @texto = texto
    @respuestas = respuestas.map { |vof, t| Respuesta.new(vof[ORDEN], vof[VER_O_FAL],  t) }.sort

    # "vof" representa de cierta manera pares como [1, :verdadero] o [1, :falso].
    # El número 1 del para anterior muestra la posición de la respuesta.
    # El :verdadero o :falso indica el valor de dicha respuesta, es decir, si esta es verdadera o falsa.
    # El valor "t" hace referencia al texto de la respuesta.
  end

  def to_s
    out = <<"E_Preg"
#{@texto}

#{
    out = ""
    @respuestas.each do |respuesta|
    out << "  #{respuesta}\n"
    end
    out
}
E_Preg
  end

  
  def respuesta 
    begin
      puts self
      print "La opción que selecciona es: " 
      num_respuesta = gets.to_i - 1
    end while (num_respuesta < 0 or num_respuesta >= @respuestas.length)
    @respuestas[num_respuesta].verofal? 
  end	
  #Devuelve verdadero en caso de que la respuesta seleccionada por el usuario es verdadera y 
  #devuelve falso en caso contrario
end
