def ejer7
  suma=0
  puts 'Ingrese numero'
  num = gets.to_i
  while num!=0
    if num%3==0 or num%5==0
      suma+=num
    end
    num-=1
  end
  puts suma
end
