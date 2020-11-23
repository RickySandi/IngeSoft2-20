require 'sinatra'
require './config'
require './lib/Juego'

juego = Juego.new

get '/' do
    #@celdas_Desbloqueadas = juego.getCeldasDesbloqueadas()
    @matriz =juego.cargarMatriz()

    erb:tablero
end

get '/abrirCasilla' do
    x = params[:X].to_i
    y = params[:Y].to_i
    juego.seleccionarCelda(x,y)
    @celdas_Desbloqueadas = '02'
    @matriz =juego.cargarMatriz()
    erb:tablero 
end