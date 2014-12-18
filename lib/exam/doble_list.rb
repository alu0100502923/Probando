# create a Struct with :value and :next
Node2 = Struct.new(:value, :next, :prev)


class Doble_list
  include Enumerable
  attr_accessor :ini, :fin
  def initialize
    @ini=nil
    @fin=nil
  end
  
  def lista_vacia
    if @ini==nil
     true
    elsif
     false
    end
  end
  
  def push_ini(elemento)
    if lista_vacia==true
      @ini= Node2.new(elemento,nil,nil)
      @fin= @ini
    else if @ini==@fin
      nuevo= Node2.new(elemento,@ini,nil)
      @fin.prev= nuevo
      @ini=nuevo
    end
    end
  end
  def push_fin(elemento)

    if lista_vacia==true
      @fin= Node2.new(elemento,nil,nil)
      @ini= @fin
    else if @fin==@ini
      nuevo= Node2.new(elemento, nil, @fin)
      @fin=nuevo
      @ini.next= @fin
    elsif 
      nuevo= Node2.new(elemento, nil, @fin)
      #@ini.next= nuevo
      @fin=nuevo
    end
    end
  end
  
  def get_ini
    return @ini.value
  end
  
  def get_fin
    return @fin.value
  end
  
  def pop_ini
    
      aux=@ini
      @ini=aux.next
      aux.value
  end
  
   def pop_fin
      aux=@fin
      @fin=aux.prev
      aux.value
   end
   def each
     aux=@ini
     while (aux != nil)
      yield aux.value
        aux=aux.next
     end
   end
   def get_valor_n(n)
    cont=1
    aux=@fin
    while cont!=n do 
      aux=aux.prev
      cont=cont+1
    end
    return aux.value
  end
end