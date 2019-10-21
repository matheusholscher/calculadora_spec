class Calculadora

    attr_reader :valor1, :valor2
  
    def initialize(valor1, valor2)
      raise StandardError, 'a primeira variável não é um número' if !valor1.is_a? Float
      raise StandardError, 'a segunda variável não é um número' if !valor2.is_a? Float
  
      @valor1 = valor1
      @valor2 = valor2
    end
  
    def self.somar(valor1, valor2)
      new(valor1, valor2).somar
    end
  
    def self.subtrair(valor1, valor2)
      new(valor1, valor2).subtrair
    end
  
    def self.dividir(valor1, valor2)
      new(valor1, valor2).dividir
    end
  
    def self.multiplicar(valor1, valor2)
      new(valor1, valor2).multiplicar
    end
  
    def somar
      @valor1 + @valor2
    end

    def subtrair
      @valor1 - @valor2
    end

    def dividir
      raise ZeroDivisionError, 'não é permitido dividir por zero, seu animal' if @valor2 == 0
      @valor1 / @valor2
    end

    def multiplicar
      @valor1 * @valor2
    end
  
  end