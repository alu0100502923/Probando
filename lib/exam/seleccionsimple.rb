class S_simple
  include Comparable
  attr_accessor :pregunta, :respuesta, :dificultad, :correcta
  def initialize(pre, resp,cor)
    @pregunta=pre
    @respuesta=resp
    @correcta=cor
  end
  def <=>(other)
    @dificultad<=>other.dificultad
  end
  #def ==(other)
  #  @pregunta==other.pregunta
  #end
  def get_pregunta()
    return @pregunta
  end
  def get_respuestas()
    return @respuesta
  end
  def get_correcta()
    return @correcta
  end
  
  def resp_correcta(r)
    if r==@correcta
      puts "Respuesta correcta"
      return true
    else
      print "Error, la respuesta correcta es: " 
      puts @correcta
      return false
    end
  end
  
  def mostrar_todo()
    puts @pregunta
      for i in @respuesta
      puts i
      end
  end
end