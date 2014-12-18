#encoding: utf-8

class Respuesta
  attr_accessor :ver_o_fal, :orden, :respuesta

  def initialize(orden, ver_o_fal, respuesta)
    @ver_o_fal = ver_o_fal 	# ver_o_fal:   La respuesta es verdadera o falsa.
    @orden = orden 		# orden:  Indica la posición de la respuesta en la pregunta.
    @respuesta = respuesta	# respuesta: Muestra la respuesta.
  end

  def to_s
    "#{@orden} -  #{respuesta}"
  end


  def verofal?
    @ver_o_fal == Cuestionario::VERDAD  # Indica si la respuesta seleccionada es verdadera o falsa.
  end

  def <=>(other)
    self.orden <=> other.orden #Ordena las respuestas según su orden dentro de la pregunta.
  end

end
