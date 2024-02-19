puts "Problem 1"

class Laptop
  def initialize(brand, model)
    @brand = brand
    @model = model
  end

  def brand
    @brand
  end

  def model
    @model
  end
end

laptop1 = Laptop.new("Dell", "i3")
puts laptop1.brand
puts laptop1.model

puts "Problem 2"

class Gadget
  def initialize(name, price)
    @name = name
    @price = price
  end

  attr_reader :name
  attr_writer :price
end

gadget1 = Gadget.new("phone", 100)
puts gadget1.name
gadget1.price = 200

puts "Problem 3"

class User
  def initialize(username)
    @username = username
  end

  def username=(username)
    if username == "" or username == None
      raise ArgumentError
    else
      @username = username
    end
  end
end

user1 = User.new("TJMarie")
user1.username = ""
user1.username = "Tatiana"
puts user1.inspect
