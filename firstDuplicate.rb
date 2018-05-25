def firstDuplicate(a)
  point = -1 
  b = Hash.new(0)
  a.each_with_index do |value, id| 
    if b[value] < 1 
      b[value] = b[value] + 1 
    else #value = 2 
      if point == -1 
        point = id 
      else 
        point = id if id < point 
      end 
      # puts "that"
    end 
  end 

  # b.each { |k,v| puts "#{k} => #{v}"}
  if point == -1 
    point 
  else 
    a[point]
  end 
  
end 

p firstDuplicate( [2, 1, 3, 5, 3, 2] ) 
p firstDuplicate([2, 4, 3, 5, 1])