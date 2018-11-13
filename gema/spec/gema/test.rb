require "spec_helper"
require 'benchmark'

describe Lista do 
	
   before :each do
   
    @valor1 = 10
    @valor2 = 20
    @valor3 = 30
    @valor4 = 40
    @valor5 = 50
    @obj1 = Info_nutri.new("Pollo",	5000,9.5,0.6,5,3.5,0.7,@valor2,4,2.7,1.6,7,2.3,5.3,7,500)
    @obj2 = Info_nutri.new("Leche",1000,5.5,0.5,2,3.5,0.7,@valor1,1.6,2.7,4.8,9,2.3,3.7,2,500)
    @obj3 = Info_nutri.new("Bistec",1000,5.5,0.5,2,3.5,0.7,@valor4,1.6,2.7,4.8,9,2.3,3.7,2,500)
    @obj4 = Info_nutri.new("Pescado ",5000,9.5,0.6,5,3.5,0.7,@valor2,4,2.7,1.6,7,2.3,5.3,7,500)
    @obj5 = Info_nutri.new("Legumbres",1000,5.5,0.5,2,3.5,0.7,@valor5,1.6,2.7,4.8,9,2.3,3.7,2,500)
    @obj6 = Info_nutri.new("Brocolis",	5000,9.5,0.6,5,3.5,0.7,@valor5,4,2.7,1.6,7,2.3,5.3,7,500)
    @obj7 = Info_nutri.new("Platanos",5000,9.5,0.6,5,3.5,0.7,@valor3,4,2.7,1.6,7,2.3,5.3,7,500)
    @lista = Lista.new(@obj1)
  end
  
  context "Creando la lista" do
    it "Se ha creado bien la lista" do
      expect(@lista).not_to eq(nil)
    end
    
    it "Se ha introducido bien el head_" do
      expect(@lista.head).not_to eq(nil)
    end
    
    
    it "Insertar en la cola" do
      expect(@lista.tail).not_to eq(nil)
    end
  end
  
  
  context "Metodos de la lista " do
    it "Insertar poe la cabezera" do
      @lista.insert_head(@obj2)
      expect(@lista.head.value.imprimirSal).to eq(@valor1)
    end
    
    it "Insertar nodo en tail " do
      @lista.insert_tail(@obj3)
      expect(@lista.tail.value.imprimirSal).to eq(@valor4)
    end
    
    it "Extraer nodo cabezera" do
      @lista.insert_head(@obj4)
      expect(@lista.get_head).to eq(@obj4)
    end
    
    it "Extraer nodo cola" do
      @lista.insert_tail(@obj5)
      expect(@lista.get_tail).to eq(@obj5)
    end
    
    it "Comprobar nodo vacio" do
      @lista.insert_head(nil)
      expect(@lista.get_head).to eq(nil)
    end
    
     it "Comprobar cola vacio" do
      @lista.insert_tail(nil)
      expect(@lista.get_tail).to eq(nil)
    end
    
    it "Empty" do
      @lista.empty
    end
    
    it "Imprimiemto el sal en la cola" do
      @lista.insert_tail(@obj2)
      @lista.insert_tail(@obj3)
      @lista.insert_tail(@obj4)
      @lista.insert_tail(@obj5)
      @lista.insert_tail(@obj1)
      @lista.insert_tail(@obj6)
      @lista.insert_tail(@obj7)
      expect(@lista.to_s).to eq("(20 gr,10 gr,40 gr,20 gr,50 gr,20 gr,50 gr,30 gr,)")
    end
  end
  
  context "Clasificacion del sal " do
    it "Imprimendo Sal" do
      @lista.insert_tail(@obj1)
      @lista.insert_tail(@obj2)
      @lista.insert_tail(@obj3)
      @lista.insert_tail(@obj4)
      @lista.insert_tail(@obj5)
      @lista.insert_tail(@obj6)
      @lista.insert_tail(@obj7)
      expect(@lista.clasificar_lista).to eq(["Bistec Muchas sal", 
     "Brocolis Muchas sal", "Leche Medio sal","Legumbres Muchas sal", 
      "Pescado  Medio sal",  "Platanos Muchas sal","Pollo Medio sal", "Pollo Medio sal"])
    end
  end
end
 