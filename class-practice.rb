class Dog
  def initialize(colour)
    @colour = colour
  end

  def observe
    "You see a " + @colour + " dog."
  end
end

fido = Dog.new("brown")
puts fido.observe


class Person
  def initialize(name)
    @name = name
  end

  def introduce
    puts "Hello, my name is #{@name}"
  end

  def legs=(number_of_legs)
    @number_of_legs = number_of_legs
  end

  def add_legs(amount_to_add)
    @number_of_legs += amount_to_add
  end

  def walk
    puts "I'm walking on my #{@number_of_legs} legs!"
  end
end

woman = Person.new("Amelia")
puts woman
puts woman.class

woman.introduce
woman.legs = 4
woman.walk
woman.add_legs(3)
woman.walk

class Airport
  def initialize
    @hangar = []
  end

  def land(plane)
    @hangar.push(plane)
  end

  def take_off(plane)
    if @hangar.length < 1
      return "Error: there are no planes to take off"
    end

    if @hangar.include?(plane)
      @hangar.delete(plane)
      return plane
    else
      return "Error: plane not in hangar"
    end
  end

  def hangar_report
    if @hangar.length == 1
      puts "There is 1 plane in the hangar"
    else
      "There are #{ @hangar.length } planes in the hangar"
    end
  end
end

heathrow = Airport.new
puts heathrow.hangar_report
heathrow.land("plane1")
puts heathrow.hangar_report

class Todo
  def initialize(item)
    @item = item
  end
  
  def text
    return @item 
  end
end

class TodoList
  def initialize
    @list = Array.new
  end
  
  def add(object)
    @list << Todo.new(object).text
  end
  
  def print
    @list.each do |x|
      puts "* #{x.text}"
    end
  end
end