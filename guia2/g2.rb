require 'sinatra'
# get '/' do
#   ''
# end

get '/1' do
  p 'Hola Mundo!'
end

get '/2/:nombre' do
  nombre=params[:nombre]
  p 'Hola '+nombre+'.'
end

get '/3/:nombre' do
  nombre=params[:nombre]
  if nombre== 'Marcelo' or nombre=='Claudia'
    p 'Hola '+nombre+'.'
  else
    p "No te llamas Marcelo ni Clauida"
  end
end

get '/4/:a' do
  suma=0
  num=params[:a].to_i
  p num
  'hola'
  while num!=0
    suma=suma+num
    num=num-1
  end
  p 'La suma es: '+suma.to_s
end

get '/5/:arreglo' do
  condicion=params[:arreglo].to_i
  if condicion==1
    a=['rambo', 'ruido', 'ruby']
  else
    a=['razon', 'sazon', 'calzon']
  end
  bool=true
  a.each do |a|
    if a[0]!='r'
      bool=false
    end
  end
  if bool==true
    p "todos comienzan con r"
  else
    p 'hay elementos que no comienzan con r'
  end
end

get '/6/:arreglo' do
  pos=0
  condicion=params[:arreglo].to_i
  if condicion==1
    a=['nana', 'nana', 'bamanzana']
  else
    a=['anana', 'nana', 'balanza']
  end
  a.each do |arr|
    if arr[0..1]=='ba'
      pos=arr
      break
    end
  end
  p 'La primer palabra que empieza con "ba" es: '+pos.to_s
end

get '/7/:numero' do
  suma=0
  num=params[:numero].to_i
  while num!=0
    if num%3==0 or num%5==0
      suma+=num
    end
    num-=1
  end
  p 'La suma de los numeros multiplos de 3 y de 5 entre 1 y su numero es: '+ suma.to_s
end

get '/8' do
  a=[]
	mayor=0
  for i in 0..9
   a<<rand(101)
  end
	a.each do |item|
		if item>mayor
			mayor=item
		end
	end
	p "En al arreglo "+a.to_s+", "+mayor.to_s+" es el mayor numero."
end


get '/' do
  "127.0.0.1:9393/1 -> se imprime en pantalla 'Hola Mundo!'.<br>
  127.0.0.1:9393/2/nombre -> nombre es la variable a mostrar. <br>
  127.0.0.1:9393/3/nombre -> solo saludara si nombre es Claudia o Marcelo.<br>
  127.0.0.1:9393/4/numero -> muestra la sumatoria de 1 a 'numero'.<br>
  127.0.0.1:9393/5/condicion -> muestra si los elementos del arreglo comienzan con 'r' si la condicion es 1 se fija en el primer arreglo sino en el siguiente.<br>
  127.0.0.1:9393/6/condicion -> muestra la primer palabra que comienza con 'ba' si la condicion es 1 se fija en el primer arreglo sino en el siguiente.<br>
  127.0.0.1:9393/7/numero -> muestra la sumatoria de 1 a 'numero' pero solo suma los multiplos de 3 y 5.<br>
  127.0.0.1:9393/8 -> muestra arreglo aleatorio y dice cual es el mayor mayor."
end
