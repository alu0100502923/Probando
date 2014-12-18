class Interfaz
   attr_accessor :examen 
    
    def initialize(ex)
       @examen = ex
    end
    
    def mostrar_pregunta
       puts @examen.exam.get_ini().pregunta
    end
end