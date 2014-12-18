class Vof < S_simple
   # attr_accessor :pregunta, :respuestas
    def initialize(pre,cor)
        @pregunta=pre
        @respuesta=['verdadero','falso']
        @correcta=cor
    end
end