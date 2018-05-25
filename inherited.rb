def is_ancestor?(klass, subclass)
    su = subclass.superclass
    re = false 
    while su != nil
        return true if su == klass 
        su = su.superclass
    end 
    re
end 

puts is_ancestor?(Numeric,Integer)
puts is_ancestor?(Object,Integer)