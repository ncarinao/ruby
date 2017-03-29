def ejer8
  a=[]
  auxiliar=0
  for x in 0..9
    puts "Ingrese un numero:"
    a.push(gets.chomp.to_i)
  end
  a.each do |numero|
    if numero>=auxiliar
      auxiliar=numero
    end
  end
  print auxiliar," es el numero mas alto."
end
