# Problem 1

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

# Problem 2

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

# Problem 3

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

# Problem 4

class Appliance
  def show_info
    puts "This is a household appliance"
  end
end

class Refrigerator < Appliance
  def fridge
    puts "This is a refrigerator"
  end
end

class Microwave < Appliance
  def microwave
    puts "This is a microwave"
  end
end

fridge1 = Refrigerator.new
fridge1.fridge
fridge1.show_info

# Problem 5

module Payments
  class Invoice

  end

  class Receipt

  end
end

invoice1 = Payments::Invoice.new
receipt1 = Payments::Receipt.new

# Problem 6

module Drivable
  def drive
    puts "Zoom Zoom"
  end
end

class Car
  include Drivable
end

class Truck
  include Drivable
end

car1 = Car.new
car1.drive
truck1 = Truck.new
truck1.drive

# Problem 7

class Writer
  def create
    puts "I am Writing"
  end
end

class Painter
  def create
    puts "I am Painting"
  end
end

def showcase_talent
  writer1 = Writer.new
  writer2 = Writer.new
  writer3 = Writer.new
  painter1 = Painter.new
  painter2 = Painter.new
  painter3 = Painter.new
  creatives = [writer1, painter1, writer2, painter2, writer3, painter3]
  creatives.each do |n|
    n.create
  end
end
showcase_talent

# Problem 8

class BankAccount
  def initialize(checking)
    @checking = checking
  end

  def deposit(amount)
    @checking += amount
    log_transaction("deposit", amount)
  end

  def withdraw(amount)
    @checking -= amount
    log_transaction("withdrawal", amount)
  end

  def log_transaction(transaction, amount)
    puts "Bank account has made a #{transaction} of #{amount}"
  end
  private :log_transaction
end

account1 = BankAccount.new(1000)
account1.deposit(100)
account1.withdraw(50)

#Problem 9

class Camera
  def initialize
    @status = "off"
  end

  def turn_on
    @status = "on"
    puts "Camera is #{@status}"
  end

  def turn_off
    @status = "off"
    puts "Camera is #{@status}"
  end
end

camera1 = Camera.new
camera1.turn_off
camera1.turn_on
