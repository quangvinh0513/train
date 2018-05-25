# def calculation(a, b, &block) 
#     block.call(a, b)
# end
   
#    puts calculation(5, 5) { |a, b| a + b }

# def calculation(a, b)
#     yield(a, b) 
# end
  
#   addition = lambda {|x, y| x + y}
#   puts calculation(5, 5, &addition) 




# Filter = lambda do |array,&block| 
# array.select(&block)
# end 


# puts Filter.call([1,2,3,4]) { |num| num.even? }

# class Animal
#     def move
#       "I can move"
#     end
#   end
  
#   class Bird < Animal
#     def move
#       super + " by flying"
#     end
#   end
  
#   puts Animal.new.move
#   puts Bird.new.move

# def is_ancestor?(klass, subclass)
#     su = subclass.superclass
#     re = false 
#     while su != nil
#         return true if su == klass 
#         su = su.superclass
#     end 
#     re
# end 

# puts is_ancestor?(Numeric,Integer)
# puts is_ancestor?(Object,Integer)


# class ApplicationConfiguration
#     @@configuration = {}
  
#     def self.set(property, value)
#       @@configuration[property] = value
#     end
  
#     def self.get(property)
#       @@configuration[property]
#     end
#   end
  
#   class ERPApplicationConfiguration < ApplicationConfiguration
#   end
  
#   class WebApplicationConfiguration < ApplicationConfiguration
#   end
  
#   ERPApplicationConfiguration.set("name", "ERP Application")
#   WebApplicationConfiguration.set("name", "Web Application")
  
#   p ERPApplicationConfiguration.get("name")
#   p WebApplicationConfiguration.get("name")
  
#   p ApplicationConfiguration.get("name")
  

# class A 
#     @var1 = 1 
#     @@var2 = 2 
#     def b 
#         @var1  = 5 
#         puts "@var1 = #{@var1}"      
#         puts "@@var2 = #{@@var2} "
#     end 

#     def self.c 
#         puts "@var1 = #{@var1}"      
#         puts "@@var2 = #{@@var2} "
#     end 
# end 

# A1 = A.new 
# A1.b 
# A.c


# require 'yaml'

# class Ogre 
#     def initialize(strength,speed)
#         @strength = strength
#         @speed = speed 
#     end 

#     def self.deserialize(yaml_string)
#         YAML::load(yaml_string)
#     end 

#     def serialize 
#         YAML::dump(self)
#     end 

#     def to_s
#         "Ogre: [strength = #{@strength}, speed = #{@speed}]"
#     end 
# end 

# wendigo = Ogre.new(47,2)
# yaml = wendigo.serialize 
# p yaml

# class A
#     def b 
#         10 
#     end 
# end 

# File.open('./xdumped','wb') { |f| f.puts "hello word"}

# EXAMPLE_SECRETS = ["het", "keca", "si", nil, "iel"]

# def decode(jumble)
#   secret = jumble.split("").rotate(3).join("")
#   announce(secret)
#   secret
# end

# def decode_all(secrets)
#   secrets.map {|s| decode(s) }
# rescue
#   puts "whew! safe."
# end

# decode_all(EXAMPLE_SECRETS)


# def zen
#     begin
#       p eval "(40 + 2) / 2"
#       p eval "(40 + 2) \ 2"
#       #p "something here"
#     rescue SyntaxError => error
#       puts error.backtrace
#     end
#   end
  
#   zen


# 21
# RubyMonk:6:in `eval'
# RubyMonk:6:in `zen'
# RubyMonk:13:in `<top (required)>'
# RubyMonk:18:in `eval'

# def zen 
#     10.times { answer = 42/0 } 
        
#     end
# begin
#      puts "Calling zen." 
#      zen
# rescue ZeroDivisionError => error 
#     puts "rescued from the zen method"
#     puts error.backtrace

# end

# puts "End of main."


# begin eval "40/0"
# rescue StandardError => error
#     p error
# end 


# class InfinityError < StandardError
# end 

# ie = InfinityError.new("infinity error was raised")


# def zen 
#   10.times { answer = 42/0 }
# end 

# begin puts "Calling zen."
#   zen
# rescue InfinityError => error
#   p "infinity error" 
# end 


# class KasayaError < StandardError
# end

# def robe(type)
#   unless type.downcase == "kasaya"
#     raise KasayaError, "Wrong robe!"
#   end
  
#   "Dharmaguptaka's " + type.capitalize + " Robe"
# end

# class Array
#   def map_with_index
#     return self.each_with_index.map unless block_given?
#     self.map.with_index do |x,y|
#       yield(x,y)
#     end
#   end
# end


def firstNotRepeatingCharacter(s)
  rec = '_'

end