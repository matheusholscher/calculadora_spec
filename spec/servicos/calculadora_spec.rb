RSpec.describe Calculadora, type: :servicos do
    describe 'ao instanciar' do
      it 'passando A e 3, o resultado deve ser uma exceção' do
        expect do
          Calculadora.new('A', 3)
        end.to raise_error(StandardError, 'a primeira variável não é um número')
      end
  
      it 'passando 16 e a data de hoje, o resultado deve ser uma exceção' do
        expect do
          Calculadora.new(16.0, Date.new)
        end.to raise_error(StandardError, 'a segunda variável não é um número')
      end
  
      it 'passando letra A e a data de hoje, o resultado deve ser uma exceção' do
        expect do
          Calculadora.new('A', Date.new)
        end.to raise_error(StandardError, 'a primeira variável não é um número')
      end
    end
  
    describe 'ao somar' do
      it 'o número 5 e 3, o resultado deve ser 8' do
        expect( Calculadora.somar(5.0, 3.0) ).to eq(8)
      end
  
      it 'o número -15 e 8, o resultado deve ser negativo 7' do
        expect( Calculadora.somar(-15.0, 8.0) ).to eq(-7)
      end
    end
  
    describe 'ao subtrair' do
      it 'o número 156 e 134, o resultado deve ser 8' do
        expect( Calculadora.subtrair(156.0, 134.0)).to eq(22)
      end
  
      it 'o número 12 e 13, o resultado deve ser -1' do
        expect( Calculadora.subtrair(12.0, 13.0) ).to eq(-1)
      end
  
    end
  
    describe 'ao dividir' do
      it 'o número 12 por 6, o resultado deve ser 2' do
        expect( Calculadora.dividir(12.0, 6.0) ).to eq(2)
      end
  
      it 'o número 0 por 18, o resultado deve ser 0' do
        expect( Calculadora.dividir(0.0, 18.0) ).to eq(0)
      end
  
      it 'um número por 0, o resultado deve ser uma exceção' do
        expect do
          Calculadora.dividir(12.0, 0.0)
        end.to raise_error(ZeroDivisionError, 'não é permitido dividir por zero, seu animal')
      end
    end
  
    describe 'ao multiplicar' do
      it 'o número 5 e 3, o resultado deve ser 15' do
        expect( Calculadora.multiplicar(5.0, 3.0) ).to eq(15)
      end
  
      it 'o número 2 e -2, o resultado deve ser negativo 4' do
        expect( Calculadora.multiplicar(2.0, -2.0) ).to eq(-4)
      end
  
      it 'o número -2 e -2, o resultado deve ser positivo 4' do
        expect( Calculadora.multiplicar(-2.0, -2.0) ).to eq(4)
      end
    end

end