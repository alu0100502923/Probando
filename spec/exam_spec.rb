#encoding: utf-8

require 'spec_helper'
require 'exam'
#require 'Cuest'
=begin
describe S_simple do
	describe "Simple_Selection" do 
	   before :all do
	     @ex= S_simple.new("\nCual es el resultado de sumar 2 y 5?",[4,5,6, "ninguna de las anteriores"])
	   end
	   describe "comprobar pregunta y respuestas hecha" do
	        it "la pregunta esta hecha?" do
				@ex.pregunta.should eq("\nCual es el resultado de sumar 2 y 5?")
	        end
			it "Se han creado las respuestas?" do
				@ex.respuestas.should eq([4,5,6, "ninguna de las anteriores"])
			end
		end
		
		describe "funciones get" do
		    it "get_pregunta" do
		        @pregunta=@ex.get_pregunta
		        @pregunta.should eq("\nCual es el resultado de sumar 2 y 5?")
		    end
		    it "get_respuesta" do
		        @respuestas=@ex.get_respuestas
		        @respuestas.should eq([4,5,6, "ninguna de las anteriores"])
		    end
		end
		describe "mostrar pregunta y posibles respuestas por consola" do
		    it "mostrar_todo" do
		        @ex.mostrar_todo
		    end
		end
	end
	
	
	describe Node do
	  it "Debe existir un nodo" do	
	     @nodo = Node.new(2,3)
    end
	end

  
 # describe List do
 # 	before :all do
 # 		@lista = List.new
 # 		@lista.push(1)
 # 		@lista.push(2)
 # 	end
  #	describe "existe una lista" do
#	    it "Debe existir una lista" do	
#		     @lista = List.new
#	    end
 #   end
 #   describe "se puede insertar y extraer" do
#	    it "se puede insertar un elemento en la lista" do
#	    	@lista.push(6)
#	    	@lista.push(7)
 #   	end
#	    it "se puede extraer un elemento de la lista" do
#	    puts @lista.pop
#	    puts @lista.pop
#	    end
#	end
 #end

  
  describe Vof do
  	
  	before :all do
	     @verofa= Vof.new("\n Es apropiado que una clase Tablero herede de una clase Juego")
	   end
	   
	   describe "comprobar pregunta y respuestas hecha" do
	      it "la pregunta esta hecha?" do
					@verofa.pregunta.should eq("\n Es apropiado que una clase Tablero herede de una clase Juego")
	      end
	      it "Se han creado las respuestas?" do
					@verofa.respuestas.should eq(['verdadero', 'falso'])
				end
	   end
	   
	   describe "funciones get" do
		    it "get_pregunta" do
		        @pregunta=@verofa.get_pregunta
		        @pregunta.should eq("\n Es apropiado que una clase Tablero herede de una clase Juego")
		    end
		    it "get_respuesta" do
		        @respuestas=@verofa.get_respuestas
		        @respuestas.should eq(['verdadero', 'falso'])
		    end
		end
		
		describe "mostrar pregunta y posibles respuestas por consola" do
		    it "mostrar_todo" do
		        @verofa.mostrar_todo
		    end
		end
  end

end

	describe Doble_list do
		
		
		before :all do
			@doble_list = Doble_list.new
				@doble_list.push_ini(2)
					@doble_list.push_ini(3)

		end
		
	describe Node2 do
	  it "Debe existir un nodo" do	
	     @nodo2 = Node2.new(2,3,1)
    	end
    end
		
		describe "creando doble_list" do
			it "se crea la lista" do
				@doble_list= Doble_list.new
			end
		end
	describe "fucionan los push" do
			it "push por el principio" do
				@doble_list.push_ini(1)
			end
			it "push por el final" do
				@doble_list.push_fin(2)

			end
			
		end
		
		
		describe "funcionan los pop" do
			it "funciona el pop_ini" do
				puts @doble_list.pop_ini
			end
			it "funciona el pop_fin" do
				puts @doble_list.pop_fin
			end	
		end

end
	describe S_simple do

		before :all do
			@preg1= S_simple.new("\nCual es el resultado de sumar 2 y 5?",[4,5,6, "ninguna de las anteriores"])
			@preg2= S_simple.new("\nCual es el resultado de sumar 2 y 5?",[4,5,6, "ninguna de las anteriores"])
			@preg3= Vof.new("\nEs 7 el resultado de sumar 2 y 5?")
			@preg4= Vof.new("\nAprobaras lpp?")
			@preg1.dificultad=2
			@preg2.dificultad=2
			@preg3.dificultad=1
			@preg4.dificultad=10
		end
		describe "comparando preguntas" do
			
			it "la pregunta 1 es igual a la pregunta 2" do
					expect(@preg1==@preg2).to eq(true) 
			end
			it "la pregunta 1 es igual a la pregunta 3" do
					expect(@preg1==@preg3).to eq(false) 
			end
			it "la pregunta 3 es menor que la pregunta 2" do
					expect(@preg3<@preg2).to eq(true) 
			end
			it "la pregunta 2 es mayor que la pregunta 3" do
					expect(@preg2>@preg3).to eq(true) 
			end
			it "la pregunta 2 es mayor o igual que la pregunta 3" do
					expect(@preg2>=@preg3).to eq(true) 
			end
			it "la pregunta 2 es menor o igual que la pregunta 1" do
					expect(@preg2<=@preg1).to eq(true) 
			end
		end
		
#		describe Doble_list do
			
			before :all do
				@lista= Doble_list.new
				@lista.push_ini(@preg1)
				@lista.push_ini(@preg2)
				@lista.push_ini(@preg3)
				@lista.push_ini(@preg4)
			end
		
		describe "Probando el enumerable" do
				it "funciona maximo" do
					expect(@lista.max).to eq(@preg4)
				end
			#	it "funciona minimo" do
			#		expect(@lista.min).to eq(@preg2) #tiene que tirar un error porque el minimo es @preg3.
			#	end
				it "funciona minimo" do
					expect(@lista.min).to eq(@preg3)
				end
				it "funciona all" do
					expect(@lista.all?).to eq(true)
				end
			end
		end


describe Examen do
	
	before :all do
		@exam= Examen.new(2)
		@pregunta1= S_simple.new('cuanto son 2+2?', ['1','2','22','ninguna de las anteriores'],'ninguna de las anteriores')
		@pregunta2= Vof.new('2+3 es lo mismo que 3+2 por la propiedad asociativa ','falso')
		#@pregunta3=Vof.new('pene','falso')
		@exam.add_pregunta(@pregunta1)
		@exam.add_pregunta(@pregunta2)
		#@exam.add_pregunta(@pregunta3)
		
		
	def @exam.resolver(resp)
				preg_actual=0
				preg_correctas=0
					while preg_actual<@npreguntas
						preg_actual=preg_actual+1
						puts @exam.get_ini().pregunta
						puts @exam.get_ini().respuesta
						puts ""
						
						if @exam.get_ini().resp_correcta(resp[preg_actual-1])
							preg_correctas=preg_correctas+1
						end
						@exam.pop_ini()
						puts""
					end
					print "Ha respondido bien "
						print preg_correctas
						print " preguntas de "
						print @npreguntas
						puts ""
						return preg_correctas
	end
	
	def @exam.resolver_inverso(resp)
				preg_actual=0
				preg_correctas=0
					while preg_actual<@npreguntas
						preg_actual=preg_actual+1
						puts @exam.get_valor_n(preg_actual).pregunta
						puts @exam.get_valor_n(preg_actual).respuesta
						puts ""
						
						if @exam.get_valor_n(preg_actual).resp_correcta(resp[preg_actual-1])
							preg_correctas=preg_correctas+1
						end
						#@exam.pop_fin()
						puts""
					end
					print "Ha respondido bien "
						print preg_correctas
						print " preguntas de "
						print @npreguntas
						puts""
						return preg_correctas
	end
end



	describe "probando clase examen"do
		it "se inserta bien la pregunta" do
			@exam.exam.get_ini().should eq(@pregunta1)
		end
		it "se inserta bien el enunciado de la pregunta" do
			@exam.exam.get_ini().pregunta.should eq('cuanto son 2+2?')
		end
		it "se insertan bien las respuestas de la pregunta" do
			@exam.exam.get_ini().respuesta.should eq(['1','2','22','ninguna de las anteriores'])
		end
		it "se inserta bien la respuesta correcta de la pregunta" do
			@exam.exam.get_ini().correcta.should eq('ninguna de las anteriores')
		end
	end
	
	describe "resolver el examen" do
		it "resolviendo examen" do
			@exam.resolver(['2','falso']).should eq(1)
			@exam.add_pregunta(@pregunta1)
			@exam.add_pregunta(@pregunta2)
		end
		
		it "resolviendo inverso" do
			puts "resolviendo inverso"
			@exam.resolver_inverso(['falso','2']).should eq(1)
		end
	end
end

=end

describe Cuestionario do
	
	before :all do
		
@cuest= Cuestionario.new("Lenguajes y Paradigmas de la Programación"){
	pregunta '¿Cuantos argumentos de tipo bloque puede recibir un metodo?',
      falso =>'2',
      verdadero =>'1',
      falso =>'Muchos',
      falso =>'Los que defina el usuario'
    
    pregunta "En Ruby los bloques son objetos que continen codigo",
      falso => 'Cierto',
      verdadero => 'Falso'
}
end

describe "probando preguntas" do
	it "Enunciado pregunta 1" do

		@cuest.get_p(0).texto.should eq('¿Cuantos argumentos de tipo bloque puede recibir un metodo?')
	end
	it "Enunciado pregunta 2" do
		@cuest.get_p(1).texto.should eq("En Ruby los bloques son objetos que continen codigo")
	end
end

describe "probando respuestas" do
	it "Respuesta 1" do
		@cuest.get_p(0).respuestas[0].verofal?.should eq(false)
	end
	it "Respuesta 1" do
		@cuest.get_p(1).respuestas[1].verofal?.should eq(true)
	end
end

end


describe Naranjo do
	
	before :all do
		
	@naranjo=Naranjo.new
	@naranjo2=Naranjo.new
	@naranjo3=Naranjo.new
	@naranjo4=Naranjo.new
	
	@t1=Thread.new{@naranjo4.uno_mas(5)}
	@t2=Thread.new{@naranjo4.recolectar_una(5)}
	
	@t1.join
	@t2.join
	#@naranjo3.uno_mas(5)
	@naranjo3.naranjas=12
	#5.times{@naranjo3.uno_mas}
	end

	describe "pruebas" do
		it "clase naranjo" do
			@naranjo.class.to_s.should eq("Naranjo")	
			
		end
		it "años" do
			@naranjo.edad.should eq(0)
		end
		it "naranjas" do
			@naranjo.naranjas.should eq(0)
		end
		it "altura" do
			@naranjo.altura.should eq(0)
			
		end
			it "sumando un año" do
				@naranjo2.uno_mas(1)
				@naranjo2.altura.should eq(0.5)
				@naranjo2.edad.should eq(1)
		end
		it "recolectar_una" do
			@naranjo3.recolectar_una(1)
			@naranjo3.naranjas.should eq(11)
		end
	end
end

