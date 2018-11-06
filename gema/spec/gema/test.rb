require "spec_helper"
require 'benchmark'

describe Info_nutri do 
    # el describe sirve para definir la clase q estamso probando 
    before :each do                 #nombre,cal,grasas,grasasSaturadas,Hidratos,Azucares,Proteinas,Sal,porciones,kilogramos.
        @etiqueta = Info_nutri.new("Pollo",1000,10,1,2,3,4,4,1,750)
    end
    
    describe "#Se almacenan los datos" do
        
			it "Debe existir el nombre de la etiquita" do
      			expect(@etiqueta.nombre).to eq("Pollo")
    	    end
        
			it "Debe existir la grasa " do
      			expect(@etiqueta.grasas).to eq(10)
      			
      		end
      		
      		it "Debe existir la grasa_saturada" do
      			expect(@etiqueta.grasa_saturada).to eq(1)
      	    end
      	    
      	   it "Deben existir los hidratos_carbono" do
      			expect(@etiqueta.hidratos_carbono).to eq(2)
      	    end
      	
      	    it "Debe existir azucares" do
      			expect(@etiqueta.azucares).to eq(3)
      	    end
      	    
      	    it "Debe existir la proteina" do
      			expect(@etiqueta.proteina).to eq(4)
      	    end
      	    
      	    it "Debe existir la sal" do
      			expect(@etiqueta.sal).to eq(4)
      	    end
      	
  end
  
  describe "#Test para los metodos" do
			it "Metodo para obtener el nombre" do
				expect(@etiqueta.imprimir).to eq("Pollo")
			    end
			    
			it "Metodo para obtener el valor energetico" do
				expect(@etiqueta.imprimirCalorias).to eq(1000)
			end
			
			it "Metodo para obtener la cantidad de grasas" do
				expect(@etiqueta.imprimirGrasas).to eq(10)
			end
			
			it "Metodo para obtener la cantidad de grasas Saturadas" do
				expect(@etiqueta.imprimirGrasasSaturadas).to eq(1)
			end
			
			it "Metodo para obtener la cantidad de hidratos de carbono" do
				expect(@etiqueta.imprimirHidratosCarbono).to eq(2)
			end
			
			it "Metodo para obtener la cantidad de Azucares" do
				expect(@etiqueta.imprimirAzucares).to eq(3)
			end
			
			it "Metodo para obtener la cantidad de Proteinas" do
				expect(@etiqueta.imprimirProteinas).to eq(4)
			end
			
			it "Metodo para obtener la cantidad de Sal" do
				expect(@etiqueta.imprimirSal).to eq(4)
			end
			
		end

    	
end