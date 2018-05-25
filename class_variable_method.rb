class App
  @@config = {}
  def self.set(property_name, value)
    @@config[property_name] = value 
  end
 
  def self.get(property_name)
    @@config[property_name]
  end  
end

class ERP < App
end

class Web < App 
end 


App.set("name", "Demo Application")
App.set("version", "0.1")

p App.get("version")


ERP.set("name", "ERP Application")
Web.set("name", "Web Application")

p ERP.get("name")
p Web.get("name")

