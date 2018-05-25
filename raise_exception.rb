def string_slice(*arg)
    raise ArgumentError,"more than 5 string input " if arg.size > 5 
    raise IndexError, "string length < 3 " if arg.any? { |str| str.length < 3 } 
    arg.map { |x| x[0..2] }
end