require "spec_helper"
require 'benchmark'

RSpec.describe Lista do 
	
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
    
    it "Insertando por la cabezera" do
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
    
     it "Insertar poe la cabezera 2" do
      @lista.insert_head(@obj3)
      expect(@lista.head.value.imprimirSal).to eq(@valor4)
    end
    
    it "Insertar poe la cabezera 3" do
      @lista.insert_head(@obj4)
      expect(@lista.head.value.imprimirSal).to eq(@valor2)
    end
    
    it "Insertar nodo en tail " do
      @lista.insert_tail(@obj3)
      expect(@lista.tail.value.imprimirSal).to eq(@valor4)
    end
    
    it "Insertar nodo en tail 2" do
      @lista.insert_tail(@obj1)
      expect(@lista.tail.value.imprimirSal).to eq(@valor2)
    end
    
    it "Insertar nodo en tail 3" do
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
    
    it "Comprobar nodo vacio" do
      @lista.insert_tail(nil)
      expect(@lista.get_tail).to eq(nil)
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
 
 
RSpec.describe PPL do
    
    before :each do                 
        @persona1 = PPL.new("Juan",80, 2.50, 25,"Hombre", nil, nil,nil,nil)
        @persona2 = PPL.new("Lucía", 85, 1.70, 20, "Mujer", nil, nil,nil,nil)
        @persona3 = PPL.new("Pablo", 75, 1.20, 16, "Hombre",nil, nil,nil,nil)
        @persona4 = PPL.new("Eduardo", 70, 1.90, 14, "Hombre",nil, nil,nil,nil)
        @persona5 = PPL.new("Miguel", 115, 1.10, 20, "Hombre", nil, nil,nil,nil)
        @persona7 = PPL.new("Roberto", 120, 1.80, 20,"Hombre", nil, nil,nil,nil)
        @persona6 = PPL.new("Angel", 100, 1.70, 25, "Hombre", nil, nil,nil,nil)
        @persona8 = PPL.new("XMAN", 111, 1.60, 21, "Hombre", nil, nil,nil,nil)
        @lista = Lista.new(@persona1)
        @lista2 = Lista.new(@persona1)
        @lista.insert_tail(@persona2)
        @lista.insert_tail(@persona3)
        @lista.insert_tail(@persona4)
        @lista.insert_tail(@persona5)
    end
    
    
    
    describe "#Pruebas para un Personas obeso 1: " do
		it "Personas" do
		    expect(@persona1.class.superclass).to eq(Personas)
		end
		
		it "Es obeso" do
		    expect(@persona1.instance_of?PPL).to eq(true)
		end
		    
		it "No es no obeso" do
		    expect(@persona1.is_a?PPL).not_to eq(false)
		end
	
	  it "Pertenece a la clase Obeso" do
		    expect(@persona1.class).to eq(PPL)
		end
    
    end
	
    describe "#Pruebas para un Personas obeso 2: " do
		it "Es un Personas" do
		    expect(@persona2.class.superclass).to eq(Personas)
		end
		
		it "Es obeso" do
		    expect(@persona2.instance_of?PPL).to eq(true)
		end
		    
		it "Not obeso" do
		    expect(@persona2.is_a?PPL).not_to eq(false)
		end
		
		it "Pertenece a la clase Obeso" do
		    expect(@persona2.class).to eq(PPL)
		end
		
    end
	
	
	describe "#Pruebas para un Personas obeso 3: " do
		it "Es un Personas" do
		    expect(@persona3.class.superclass).to eq(Personas)
		end
		
	    it "Es obeso" do
		    expect(@persona3.instance_of?PPL).to eq(true)
		end
		    
		it "Not obeso" do
		    expect(@persona3.is_a?PPL).not_to eq(false)
		end
		
	it "Pertenece a la clase Obeso" do
		    expect(@persona3.class).to eq(PPL)
		end
    
    end
	
	
	describe "#Pruebas para un Personas obeso 4: " do
		it "Es un Personas" do
		    expect(@persona4.class.superclass).to eq(Personas)
		end
		
		it "Es obeso" do
		    expect(@persona4.is_a?PPL).to eq(true)
		end
		    
		it "Not obeso" do
		    expect(@persona4.instance_of?PPL).not_to eq(false)
		end
		
  it "Pertenece a la clase Obeso" do
		    expect(@persona4.class).to eq(PPL)
		end
    
    end
	
	
	describe "#Pruebas para un Personas obeso 5: " do
		it "Es un Personas" do
		    expect(@persona5.class.superclass).to eq(Personas)
		end
		
		it "Es obeso" do
		    expect(@persona5.is_a?PPL).to eq(true)
		end
		    
		it "Not no obeso" do
		    expect(@persona5.instance_of?PPL).not_to eq(false)
		end
	
		
		it "Pertenece a la clase Obeso" do
		    expect(@persona5.class).to eq(PPL)
		end
    
    end
	
	 describe "#Comprobando lista de humanos" do
    	it "Clasificacion" do
    		expect(@lista.clasificar_peso).to eq(["Eduardo medio", "Juan delgado", "Lucía sobrepeso", "Miguel sobrepeso", "Pablo sobrepeso"])
    	end
    end
    
    
      context "Enumerable" do
           
        it "Metodos each" do
           
            @lista2.insert_tail(@persona1)
           
            @lista2.insert_tail(@persona2)
          
            @lista2.insert_tail(@persona3)
            val = 0
            @lista2.each { |i| a_value >= i }
            expect(a_value).to eq(0)
        end
        it"Max"do
          
            expect(@lista2.max).to eq(@persona1)
        end
        
         it"Min"do
          
            expect(@lista2.min).to eq(@persona1)
        end
        
         it "Método sort" do
                expect(@lista2.sort).to eq([@persona1])
    	    end
    	    
    	     it "Método select" do
                expect(@lista2.select{ |i| i.peso == 80}).to eq([@persona1])
    	    end
    	    
    	     it "Método collect" do
                expect(@lista2.collect{ |i| @persona1}).to eq([@persona1])
    	    end
        
         it "Método <" do
                expect(@persona1<@persona2).to eq(true)
    	    end
    	    
    	     it "Método >" do
               expect(@persona1>@persona2).to eq(false)
    	    end
    	    
    	     it "Método >=" do
               expect(@persona1>=@persona2).to eq(false)
    	    end
    	    
    	       it "Método <=" do
                expect(@persona1<=@persona2).to eq(true)
    	    end
    	    
    	     it "Método between " do
                expect(@persona1.between?(@persona2,@persona3)).to eq(false)
    	    end
        
    end
    

  
    	
end


RSpec.describe PPL do
    
	before :each do
	  
	  @arrayEtiqueta = []
   @arrayPersona = []
  
    @total_menu = 0.0
    
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
    @menu1 = [@obj1,@obj3]
    @menu2 = [@obj5, @obj4]
    @menu3 = [@obj2, @obj4]
    @menu4 = [@obj5, @obj1]
    @menu5 = [@obj3,@obj2]
    @lista_menu = [@menu1,@menu2,@menu3,@menu4,@menu5]
    	
    @persona1 = PPL.new("Juan",80, 2.50, 25,"Hombre", nil, nil,nil,nil)
    @persona2 = PPL.new("Lucía", 85, 1.70, 20, "Mujer", nil, nil,nil,nil)
    @persona3 = PPL.new("Pablo", 75, 1.20, 16, "Hombre",nil, nil,nil,nil)
    @persona4 = PPL.new("Eduardo", 70, 1.90, 14, "Hombre",nil, nil,nil,nil)
    @persona5 = PPL.new("Miguel", 115, 1.10, 20, "Hombre", nil, nil,nil,nil)
    @persona6 = PPL.new("Ku", 117, 1.40, 20, "Hombre", nil, nil,nil,nil)
    @persona7 = PPL.new("Ji", 118, 1.50, 20, "Hombre", nil, nil,nil,nil)
    @persona8 = PPL.new("Anges", 145, 1.70, 25, "Hombre", nil, nil,nil,nil)
    @persona9 = PPL.new("Paco", 125, 1.10, 10, "Hombre", nil, nil,nil,nil)
    @persona10 = PPL.new("Pepe", 135, 1.18, 40, "Hombre", nil, nil,nil,nil)
    @persona1.act_fisicas(0.30)
    @persona2.act_fisicas(0.40)
    @persona3.act_fisicas(0.50)
    @persona4.act_fisicas(0.60)
    @persona5.act_fisicas(0.40)
    @persona6.act_fisicas(0.20)
    @persona7.act_fisicas(0.90)
    @persona8.act_fisicas(0.80)
    @persona9.act_fisicas(0.50)
    @persona10.act_fisicas(0.40)
    
    @persona1.menus(@menu1)
    @persona2.menus(@menu2)
    @persona3.menus(@menu3)
    @persona4.menus(@menu4)
    @persona5.menus(@menu5)
    @persona6.menus(@menu4)
    @persona7.menus(@menu2)
    @persona8.menus(@menu3)
    @persona9.menus(@menu1)
    @persona10.menus(@menu5)
    @lista_persona = [@persona1,@persona2,@persona3,@persona4,@persona5,@persona6,@persona7,@persona8,@persona9,@persona10]
    
	end
	
	describe "Gastos Energeticos:" do
	    it "Actividad física" do
	        @lista_persona.each do |elemento|
                expect(elemento.act_fisica).not_to eq(nil)
            end

	    end
	    it "Gasto basal" do
            expect(@persona1.gasto_energetico).not_to eq(nil)
            expect(@persona2.gasto_energetico).not_to eq(nil)
            expect(@persona3.gasto_energetico).not_to eq(nil)
            expect(@persona4.gasto_energetico).not_to eq(nil)
            expect(@persona5.gasto_energetico).not_to eq(nil)
	    end
	    it "Gasto termógeno" do
            expect(@persona1.gasto_termogeno).not_to eq(nil)
            expect(@persona2.gasto_termogeno).not_to eq(nil)
            expect(@persona3.gasto_termogeno).not_to eq(nil)
            expect(@persona4.gasto_termogeno).not_to eq(nil)
            expect(@persona5.gasto_termogeno).not_to eq(nil)
	    end   
	    it "Actividad física" do
            expect(@persona1.get_actividadFisica).not_to eq(nil)
            expect(@persona2.get_actividadFisica).not_to eq(nil)
            expect(@persona3.get_actividadFisica).not_to eq(nil)
            expect(@persona4.get_actividadFisica).not_to eq(nil)
            expect(@persona5.get_actividadFisica).not_to eq(nil)
	    end
	    it "Gasto total" do
            expect(@persona1.get_gastoTotal).not_to eq(nil)
            expect(@persona2.get_gastoTotal).not_to eq(nil)
            expect(@persona3.get_gastoTotal).not_to eq(nil)
            expect(@persona4.get_gastoTotal).not_to eq(nil)
            expect(@persona5.get_gastoTotal).not_to eq(nil)
	    end
	    it "Menus para cada personas" do
            expect(@persona1.menu).not_to eq(nil)
            expect(@persona2.menu).not_to eq(nil)
            expect(@persona3.menu).not_to eq(nil)
            expect(@persona4.menu).not_to eq(nil)
            expect(@persona5.menu).not_to eq(nil)
	    end
	end
	
	describe "Comprobando el menus" do
	    it "Comprobar que el menú para cada persona" do
	        expect(@persona1.calcula_alimento).to eq("mal")
	    end
	   
	end
	
	context "Benchmark" do
	  
	  
	  
	    def for_lista! (array)
        for i in 0..array.size 
        min = i
          for j in i+1..array.size-1    
          if(array[j] > array[min])
            aux = array[j]
            array[j] = array[min]
            array[min] = aux
          end
        end
     
      end
      puts array
    end
    
     def each_lista! (array) 
        array.each do
           total_menu = 0
          array.each_with_index do |el, i|
              min = i
            array[1..-1].each_with_index do |el,j|
             if array[j] > array[min]
              aux = array[j]
                    array[j] = array[min]
                    array[min] = aux
            end
          end
    
      end
    end
    puts array 
  end
  
  it "Insertando elemento en la vector" do 
    
     for menu in @lista_menu
     @total_menu = 0
       for etiqueta in menu
       @total_menu = etiqueta.calculate_Kcal + etiqueta.calorias + @total_menu 
     end
       @arrayEtiqueta.insert(0,@total_menu)

    end
          puts @arrayEtiqueta
      puts "    "
        puts "Lista ordenado"
     puts each_lista!(@arrayEtiqueta)
       puts "    "
  end
  
  
  #arrays = (1..1000000).map { rand }
  
  it "Insertando elemento en la lista" do 
    
     for persona in @lista_persona
   
      @arrayPersona.insert(0,persona.get_gastoTotal)
        
    end
        puts @arrayPersona
        puts "    "
        puts "lista ordenado"
        puts "    "
        
        puts for_lista!(@arrayPersona)
  end
  
  
    
       it "Comprobación benchmark"do
      Benchmark.bm do |x| 
         
         x.report("Con el metodo sort lista ")  { @arrayPersona.dup.sort }
         x.report("Con el metodo for lista ") { for_lista!(@arrayPersona.dup)}
         x.report("Con el metodo each lista") {each_lista!(@arrayPersona.dup)}
         
         x.report("con el metodo sort etiqueta") { @arrayEtiqueta.dup.sort}
          x.report("con el metodo for etiqueta") {for_lista!(@arrayEtiqueta.dup)}
           x.report("con el metodo each etiqueta") {each_lista!(@arrayEtiqueta.dup)}
           
            #x.report("sort!") { arrays.dup.sort! }
            #x.report("sort")  { arrays.dup.sort  }
      end
    end
  
      
	end
  
end


