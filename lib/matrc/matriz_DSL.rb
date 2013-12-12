#clase MatrizDSL
module Matrc

  class MatrizDSL 

    attr_accessor :operation, :operandos, :mostrar, :tipo
    
    def initialize(operation, &block)
      @operation = operation
      @operandos= []
      @tipo = ""
      @mostrar = ""
      
       
       instance_eval(&block)
       
       case mostrar
         when "fichero"
           then 
             File.open('mostrar.txt', 'mostrar') do |x|
               x.puts self
             end
         when "consola" then puts self 
         end
      end
    end
     
     def calcular  
       
       resultado = "\n #{@operacion}"
       resultado  << "\n #{'=' * @operacion.size}\n\n"
 
      operandos.each_with_index do |op, index|
      resultado << " #{index + 1}. #{op}\n" 
      
      case @operation
        when "Suma" then resultado << " = #{(@operandos[0]+@operandos[1]).to_s}\n\n"
        when "Resta" then resultado << " = #{(@operandos[0]-@operandos[1]).to_s}\n\n" 
        when "Multiplicacion" then resultado << " = #{(@operandos[0]*@operandos[1]).to_s}\n\n"  
       end 
       
       resultado
         
     end    
        
        
     def operandos(matriz)
      @operandos.push matrizcrear(matriz)      
     end

     def opcion(opt)
       @mostrar = opt
     end
     
     def tipo_matriz(tipo)
       @tipo = tipo
     end
        
     def matrizcrear(elementos)
       elem = @tipo.new(elementos.size, elementos[0].size)
       elementos.each_with_index do |x, i|
        x.each_with_index do |y, j|
          elem[i, j] = y
        end
      end
      elem
     end
  end
