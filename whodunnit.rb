def location_in_hierarchy(object, method)
    
    class_super = object.class.superclass
    class_now = object.class
    while class_super do 

      if class_now.methods.include?(method)
         return class_now
      else 
        class_super = class_super.superclass
      end 
    end
  end

puts location_in_hierarchy(1, :between?)