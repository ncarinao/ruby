require 'sinatra'

get '/hola' do
  p 'Hello world!'
end

get '/hola/:rango/:edad' do
  rango=params[:rango]
  edad=params[:edad]
  p 'Hello world! '+rango+' tenes '+edad+' anios.'
end



# simbolo
# :string
# -------
# objeto['uno']
# objeto['nombre']
# {uno:1,nombre:'Natanael'}
# o puede que el objeto sea [:rango]
# params[:rango]
