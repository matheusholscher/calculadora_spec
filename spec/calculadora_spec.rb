RSpec.describe Calculadora do
    describe "ao somar" do
        it "o número 5 e 3, o resultado deve ser 8" do
            calculadora = Calculadora.new
            20.times { game.roll(0) }
            expect(calculadora.somar(5, 3)).to eq(8)
        end
    end
end