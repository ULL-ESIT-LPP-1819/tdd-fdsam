# clase Persona
class Personas
    #comparable
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

     def <=>(other)
        @talla <=> other.talla
    end
    
   
        
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
	
# clase heredado de persona

    class PPL < Personas
        
     include Comparable
    
     attr_accessor :nombre,:peso, :talla,:edad, :sexo,:imc, :estados, :rccm, :rcca ,:menu, :act_fisica ,:sum  #variables de clase IMC
    # iniciando los variables
    def initialize(nombre,peso,talla,edad,sexo,imc,estados,rcc,rcca)  #constructor
        super(nombre,peso,talla,edad,sexo,imc,estados,rcc,rcca)
    end

     def IMC			#calcula el IMC
        @imc = peso/(talla*talla)
        return @imc
    end
    
    
    # metodo to_s
    def to_s()
        return "Nombre :#{@nombre}, Peso: #{@peso}, Talla: #{@talla}, Edad: #{@edad}, Sexo: #{@sexo} IMC: #{@imc}" 
	end
	
	
    #Comparables
     def <=>(other) #modulo comparable
       [self.nombre, self.peso, self.talla, self.edad, self.sexo, self.imc, self.estados,self.rccm,self.rcca] <=> [other.nombre, other.peso, other.talla, other.edad, other.sexo, other.imc,other.estados,other.rccm,other.rcca]
    end
    
    
    def menus(menu)
        @menu=menu
    end
    
    def act_fisicas(act_fisica)
        @act_fisica = act_fisica
    end
    
     def peso_teorico
        return (talla - 150) * 0.75 + 50
        end
        
    def get_pesoIdea
        return (talla - 150) * 0.75 + 50
    end
        
    def gasto_energetico
        if sexo == "Mujer"
            return (10 * peso) + (6.25 * talla) - (5 * edad) - 161
        else
            return (10 * peso) + (6.25 * talla) - (5 * edad) + 5
        end
    end
    
    def gasto_termogeno
        return gasto_energetico * 0.10
    end
    
    
    def get_actividadFisica
        return gasto_energetico * @act_fisica
        
    end
    
    def get_gastoTotal
        return get_actividadFisica + gasto_energetico + gasto_termogeno
    end
    
    
    def calcula_alimento
        @suma = 0
        @menu.each do|objeto|
            @suma =@suma + objeto.calculate_Kcal
        end
        
        if(@suma >= get_gastoTotal)
            if(@suma - get_gastoTotal <= get_gastoTotal * 0.10)
                val = "bien"
            else
                val = "mal"
            end
        else 
            if(get_gastoTotal - @suma <= @suma * 0.10)
                val = "bien"
            else
                val = "mal"
            end

        end
        
        return val
    end
    
    
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
end
    
end


