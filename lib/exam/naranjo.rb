#encoding: utf-8

class Naranjo
    attr_accessor :edad, :altura, :naranjas, :vivo
    
    def initialize
        @edad=0
        @altura=0
        @naranjas=0
        @vivo=true
    end
    
    def uno_mas(i)
        j=0
        mutex=Mutex.new
        while (i>j)
            if @vivo == true
                @edad=@edad+1
                @altura=@altura+0.5
                @naranjas=0 #Las naranjas viejas se caen del arbol
            
                if @altura > 10 && rand(2) > 0 #el arbol muere
                    @vivo=false
                    puts "El árbol ha muerto"
                elsif @altura > 2 #crecen nuevas naranjas
                    mutex.lock
                    @naranjas= (@altura*15 -25).to_i
                    mutex.unlock
                    puts "Este año, el árbol mide #{@altura} metros y ha dado #{@naranjas} naranjas"
                else
                    puts "Este año, el árbol mide #{@altura} metros, pero es demasiado joven para dar naranjas"
                end
            else
                puts "El arbol sigue muerto"
            end
            
            j=j+1
            sleep(1)
        end
    end
    
    def recolectar_una(n)
        
        m=0
        mutex1=Mutex.new
        while (n>m)
    
       if @vivo == true
           if @naranjas >0
               mutex1.lock
               @naranjas= @naranjas-1
               mutex1.unlock
               puts "¡¡La naranja estaba deliciosa!! quedan #{@naranjas} naranjas"
           else
               puts "El árbol no tiene naranjas"
           end
        else
            puts "El árbol está muerto"
        end
        m=m+1
        sleep(2)
        end
    
    end
end
