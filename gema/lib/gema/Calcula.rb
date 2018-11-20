# clase IMC
class Personas
    
    include Comparable
    
    attr_accessor :nombre,:peso, :talla,:edad, :sexo,:imc, :estados, :rccm, :rcca  #variables de clase IMC
    
    def initialize(nombre,peso,talla,edad,sexo,imc,estados,rccm,rcca)  #constructor
    @peso = peso
    @talla = talla
	@edad = edad
	@sexo = sexo
	@nombre = nombre
	@imc = imc
	@estados = estados
	@rccm = rccm
	@rcca = rcca
    end

    def IMC			#calcula el IMC
        @imc = peso/(talla*talla)
        return peso/(talla*talla)
    end

    
    def calculaRCC
        
        rcc_ = rccm/rcca
    if sexo == "Hombre"
            
        if rcc_ < 0.88 
     puts "bajo"
        else if rcc_ < 1.01
        puts "alto"
        else 
        puts "muy alto"
        end 
end 
            
            else
    	    
    	   if rcc_ < 0.75
        puts "bajo"
        else if rcc_ < 0.82
        puts "medio"
        else 
        puts "alto"
    end 
end 
    	    
    	end
    	
        return rcc_
        
end

    #calcula el porcentaje de grasa obteniendo sobre datos anteriores.
    def Grass
            
    	if sexo == "Hombre"
    		
    		sexo = 1
    	else
    	
    		sexo = 0
    	end
	
        grasas = 1.2 * @imc + 0.23 * edad - 10.8 * sexo - 5.4
            
        if @imc < 18.5 
        puts "Flaco"
        else if @imc < 24.9 
        puts "Aceptable"
        else 
        puts "Obeso"
        end 
end 

        
        return grasas
        
    end
    

    
    def to_s()
    	return "Nombre :#{@nombre}, Edad: #{@edad}, Sexo: #{@sexo},  IMC: #{@imc}"
    end

    def <=>(other)
    	return self.Grass <=> other.Grass
    end
	
end


class PPL < Personas
    
    def initialize(nombre,peso,talla,edad,sexo,imc,estados,rcc,rcca)  #constructor
        super(nombre,peso,talla,edad,sexo,imc,estados,rcc,rcca)
    end

    def to_s()
        return "Nombre :#{@nombre}, Peso: #{@peso}, Talla: #{@talla}, Edad: #{@edad}, Sexo: #{@sexo} IMC: #{@imc},  ES: #{@estados}"
	end
    
    
end


#indice = IMC.new(70,1.80)
#valor = indice.calculate
#print "El IMC es #{valor} \n"


