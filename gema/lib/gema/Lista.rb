
Node = Struct.new(:value, :next_, :prev)

class Lista
    
   attr_reader :head, :tail
   
   def initialize(valor)
       @head = Node.new(valor,nil,nil)
       @tail = @head
    end
       
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
    
    def insert_tail(valor)
        
        dummy = Node.new(valor,nil,@tail)
        @tail.next_ = dummy
        @tail = dummy
    end
 
    def get_head
        #if(@head == nil)
         #       return false
        pointer = @head.value
        @head = @head.next_
        @head.prev = nil
        return pointer
    end
    
    def get_tail
        #if(@tail == nil)
          #      return false
        pointer = @tail.value
        @tail = tail.prev
        @tail.next_ = nil
        return pointer
    end
    
     def empty
            if  @head = @tail = nil 
                return true
            else
                return false
            end
        end
 
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
    
 
end