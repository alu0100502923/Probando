class Examen

 attr_accessor :exam, :npreguntas
    def initialize(n)
      @exam= Doble_list.new
      @npreguntas=n
    end
   
    def add_pregunta(pre)
        @exam.push_fin(pre)
    end
   
end