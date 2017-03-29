def ejer9
  # Programar un juego de adivinanza. El usuario tiene que
  # adivinar un numero secreto, despues de cada intento el
  # programa le dice al usuario si el numero elegido es mas
  # alto o mas bajo que el secreto. Al final del juego se muestra
  # la cantidad de intentos, pero si un numero fue elegido mas de una vez, cuenta como un intento.
  num=(rand(10))+1
  a=[]
  con=0
  numuser=0
  while numuser!=num do
    puts 'Adivine el numero: '
    numuser=gets.chomp.to_i
    if a.include?(numuser)
	     puts 'Ya elegiste ese numero.'
    else
      a.push(numuser)
      con+=1
      if numuser>num
        puts 'El numero elegido es mayor al numero secreto.'
      else
        puts 'El numero elegido es menor al secreto.'
      end
    end
  end
  print 'Muy bien adivinaste el numero secreto es: ',num,' y lo hiciste en ',con,' intentos.'
end
