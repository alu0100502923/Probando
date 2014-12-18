require "exam/version"

class Examen
  attr_accessor :pregunta, :respuestas
  def initialize(pre, resp)
    @pregunta=pre
    @respuestas=resp
  end
  def get_pregunta()
    return @pregunta
  end
  def get_respuestas()
    return @respuestas
  end
  def mostrar_todo()
    puts @pregunta
      for i in @respuestas
      puts i
      end
  end
end

# create a Struct with :value and :next
Node = Struct.new(:value, :next)

class List
  
  attr_accessor :ini
  def initialize
    @ini=Node.new(nil,nil)
  end
  
end
