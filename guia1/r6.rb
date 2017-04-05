def ejer6(a)
  a.each_with_index do |arr,x|
    if arr[0..1]=='ba'
      puts arr
      break
    end
  end
end
