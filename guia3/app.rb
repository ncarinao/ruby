require 'sinatra'
require 'slim'
@@anio=2017

get '/' do
  slim :index
end

get '/eje1' do
  slim :eje1
end

get '/eje2' do
  slim :eje2
end

post '/eje2' do
  @nombre = params[:nombre]
  slim :eje2s
end

get '/eje3' do
  slim :eje3
end

post '/eje3' do
  @nombre = params[:nombre]
  if @nombre== 'Marcelo' or @nombre=='Claudia'
    slim :eje2s
  else
    slim :index
  end
end

get '/eje4' do
  slim :eje4
end

post '/eje4' do
  @suma=0
  @num = params[:numero].to_i
  while @num!=0
    @suma=@suma+@num
    @num=@num-1
  end
  slim :eje4s
end

get '/eje5' do
  slim :eje5
end

post '/eje5' do
  @arr = params[:arreglo].split(",")
  p @arr
  @bool=true
  @arr.each do |a|
    if a[0]!='r'
      @bool=false
    end
  end
  if @bool==true
    p "todos comienzan con r"
  else
    p 'hay elementos que no comienzan con r'
  end
end

get '/eje6' do
  slim :eje6
end


post '/eje6' do
  @pos=-1
  @arr = params[:arreglo].split(",")
  @arr.each do |a|
    if a[0..1]=='ba'
      @pos=a
      break
    end
  end
  if @pos!=-1
    p 'La primer palabra que empieza con "ba" es: '+@pos
  end
end

get '/eje7' do
  slim :eje7
end

post '/eje7' do
  @suma=0
  @num = params[:numero].to_i
  @numero=@num
  while @num!=0
    if @num%3==0 or @num%5==0
      @suma+=@num
    end
    @num-=1
  end
  p 'La suma de los numeros multiplos de 3 y de 5 entre 1 y '+@numero.to_s+' es: '+ @suma.to_s
end

get '/eje8' do
  @a=[]
	@mayor=0
  for @i in 0..9
    @a<<rand(101)
  end
	@a.each do |item|
	  if item>@mayor
	    @mayor=item
		end
	end
	p "En al arreglo "+@a.to_s+", "+@mayor.to_s+" es el mayor numero."
end
