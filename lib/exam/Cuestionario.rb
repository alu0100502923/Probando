#encoding: utf-8

class Cuestionario
  VERDAD = :verdadero
  FALSO = :falso

  attr_accessor :nombre, :preguntas

  def initialize(nombre = "", &block)
    self.nombre = nombre
    self.preguntas = []

    @contador = 0
    instance_eval &block
  end

  def pregunta(texto, respuestas)
    p = Pregunta.new(texto, respuestas)
    preguntas << p 
    puts p if $DEBUG
    @contador = 0
  end

  def to_s
    out = <<"Cuestionario"
#{self.nombre}

#{self.respuestas.join("\n")}
Cuestionario
  end

  def falso
    @contador += 1
    [@contador, FALSO]
  end

  def verdadero
    @contador += 1
    [@contador, VERDAD]
  end

  def tit_cuest(tit_cuest)
    @nombre = tit_cuest
  end

  def run
    contador=0
    puts self.nombre+"\n\n"
    self.preguntas.each { |p| contador += 1 if p.respuesta }
    puts "#{contador} número de respuestas correctas de un total de #{@preguntas.size}."
  end
  
  def get_p(n)
    return preguntas[n]
  end
end