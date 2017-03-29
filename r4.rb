def ejer4
  suma=0
  puts 'Ingrese numero'
  num = gets.to_i
  while num!=0
    suma+=num
    num-=1
  end
  puts suma
end
