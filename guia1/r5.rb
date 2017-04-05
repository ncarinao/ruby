def ejer5
  a1=['rambo', 'ruido', 'ruby']
  a2=['razon', 'sazon', 'calzon']
  bool=true
  a1+a2.each do |a|
    if a[0]!='r'
      bool=false
    end
  end
  if bool==true
    puts "todos comienzan con r"
  else
    puts 'hay elementos que no comienzan con r'
  end
end
