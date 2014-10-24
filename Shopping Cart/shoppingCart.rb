class Product
  attr_accessor :name
  attr_accessor :price


  def initialize(name, price)
    @name = name
    @price = price
  end

  def discount
  end

  def getProduct
    self.discount
    return @price, @name
  end

end

class Fruit < Product

  attr_accessor :time
  attr_accessor :weekDays

  def weekDay
    @weekDays = ["Domingo","Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado"]
    @time = Time.new
    @time = @time.wday

    return @weekDays[@time]
  end

  def discount
    day = self.weekDay
    if (day == "Sabado" || day == "Domingo")
     @price -= (@price*10/100)
     puts "¡Descuento del 10%!"
    end
  end

end

class HouseWare < Product

  def discount()
    if(@price>100)
      @price-= (@price*5/100)
      puts "¡Descuento del 5%!"
    end
  end
end

banana = Fruit.new("banana", 10)
orangeJuice = Product.new("Orange Juice",10)
rice = Product.new("Rice",1)
vacuumCleaner = HouseWare.new("Vacuum Cleaner", 150)
anchovies = Product.new("Anchovies",2)