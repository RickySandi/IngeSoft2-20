require 'sinatra'
require './config'
require './lib/Juego'

juego = Juego.new

get '/' do
    @matriz =juego.cargarMatriz()
    erb:tablero
end

post '/abrirCasilla' do
    @x = params[:X].to_i
    @y = params[:Y].to_i
    @ubicacion = params[:X] + params[:Y]
    @valor_casilla=juego.retornarCasilla(@x,@y)
    erb:tablero 
end