require "Juego"

RSpec.describe Juego do

    before{@juego=Juego.new}
    

    it "es tres" do
        juego = Juego.new
        expect(@juego.cargarMatriz()[1][1]).to eq ('3')
        expect(@juego.cargarMatriz()[0][0]).to eq ('2')
    end

    # it "es bomba" do
    #     juego = Juego.new
    #     expect(@juego.pintarMatriz(0, 0)).to eq ('Es bomba')
    # end

    it "Retonar Casilla deberia devolver en este caso: 3" do
        juego = Juego.new
        expect(@juego.retornarCasilla(0, 0)).to eq ('2')
    end

    it "Cargar matriz deberia de devolver * en la posicion 2-1" do
        juego =Juego.new
        expect(@juego.cargarMatriz()[2][1]).to eq ('*')
    end

end