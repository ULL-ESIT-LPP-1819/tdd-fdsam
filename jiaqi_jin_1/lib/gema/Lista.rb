
Node = Struct.new(:value, :next_, :prev)

class Lista
    
     include Enumerable
    
   attr_reader :head, :tail
   
   def initialize(valor)
       @head = Node.new(valor,nil,nil)
       @tail = @head
    end
       #metodo insertar por la cabeza
    def insert_head(valor)
        if @head == nil
            @head = valor 
            @tail = valor  
         
        else
            dummy = Node.new(valor,@head,nil)
            @head.prev = dummy
            @head = dummy
        end
    end
    # metodo insertar por la cola
    def insert_tail(valor)
        
        dummy = Node.new(valor,nil,@tail)
        @tail.next_ = dummy
        @tail = dummy
    end
 #metodo obtener cabeza
    def get_head
        #if(@head == nil)
         #       return false
        pointer = @head.value
        @head = @head.next_
        @head.prev = nil
        return pointer
    end
    #metodo obtener cola
    def get_tail
        #if(@tail == nil)
          #      return false
        pointer = @tail.value
        @tail = tail.prev
        @tail.next_ = nil
        return pointer
    end
    #metodo empty
     def empty
            if  @head = @tail = nil 
                return true
            else
                return false
            end
        end
 #metodo clasificar lista
    def clasificar_lista
        string = " "
        pointer = @head
        pointer2 = ""
        a = Array.new
        while(pointer != nil)do
            if(pointer.value.imprimirSal < 3)
                pointer2 = "Poca sal"
            end
            if(pointer.value.imprimirSal > 3 && pointer.value.imprimirSal < 30)
                 pointer2 = "Medio sal"
            end
             if(pointer.value.imprimirSal >30)
                pointer2 = "Muchas sal"
            end
            a.push(pointer.value.imprimir + " " + pointer2)
            pointer = pointer.next_
        end
    a.sort
    end
    
     def to_s
        string = "("
        pointer = @head
        while (pointer != nil) do
            string += "#{pointer.value.imprimirSal} gr,"
            pointer = pointer.next_
        end
        string += ")"
        return string
    end
    #metodo clasificar peso
     def clasificar_peso
        string = " "
        aux = @head
    
        a = Array.new
        while(aux != nil)do
            if(aux.value.IMC < 18.5)
               aux.value.estados = 'delgado'
            end
            if(aux.value.IMC >= 18.5 && aux.value.IMC < 24.9)
                 aux.value.estados = 'medio'
            end
             if(aux.value.IMC >24.9)
                aux.value.estados = 'sobrepeso'
            end
            a.push(aux.value.nombre + " " + aux.value.estados)
            aux = aux.next_
        end
    a.sort
    end
 #metodo each
  def each(&block)
        aux = @head
        while(aux != nil) do
            yield aux.value
            aux = aux.next_
        end
    end
 
 
end