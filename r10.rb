def ejer10
  res='si'
  while res!='n'
    puts 'Elegir ejercicio:'
    a=gets.chomp.to_i
    puts case a
    when 1
      load 'r1.rb'
      ejer1
    when 2
      load 'r2.rb'
      ejer2
    when 3
      load 'r3.rb'
      ejer3
    when 4
      load 'r4.rb'
      ejer4
    when 5
      load 'r5.rb'
      ejer5
    when 6
      load 'r6.rb'
      a1=['nana', 'nana', 'bamanzana']
      a2=['anana', 'nana', 'balanza']
      ejer6(a1)
      ejer6(a2)
    when 7
      load 'r7.rb'
      ejer7
    when 8
      load 'r8.rb'
      ejer8
    when 9
      load 'r9.rb'
      ejer9
    else
      "Opcion incorrecta."
    end
    puts '¿Desea ver otro ejercicio?/"n" para salir'
    res=gets.chomp
  end
end

ejer10
