require "P5_T_34/version"

module P5_T_34

  class QuestionVF < Question
   def initialize(textI, correctI)
     raise ArgumentError, "La respuesta correcta debe ser un booleano" unless (!!correctI == correctI)
     super(textI, correctI, [!correctI])
   end
  end
end