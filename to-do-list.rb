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

  def inspect
    p @list 
  end
  
  def add(object)
    if @list[0].nil?
      puts "CANNOT ADD as this list doesn't have a name! Please name this list with the 'name_your_list' method."
    else
      @list.push(Todo.new(object).text)
      puts "Added '#{object}' to your list '#{@list.first}'" 
      puts "#{@list.first}:"
      return @list.each do |x|
        puts "* #{x}" unless x == @list.first
      end
    end
  end

  def name_your_list(object)
    @list.unshift(Todo.new(object).text)
    if @list[1].nil?
      puts "You have Titled this list #{object}, it is currently empty. You can add to your list with the 'add' method, followed by a string!"
    else
      puts "#{@list.first}"
      return @list.each do |x|
        puts "* #{x}" unless x == @list.first
      end
    end  
  end

  def remove(object)
    if @list.include?(object)
      @list.delete(object)
      puts "Removed '#{object}' from your list '#{@list.first}'" 
      puts "#{@list.first}:"
      return @list.each do |x|
        puts "* #{x}" unless x == @list.first
      end
    else
      return "This item is not in the list"
    end
  end

  def show_list
    if @list[0].nil?
      puts "This list is empty, and needs a title! Please name this list with the 'name_your_list' method!"
    elsif @list[1].nil?
      puts "#{@list[0]} is currently empty!"
    else
      puts "Here is your To-Do list titled #{@list.first}:"
      @list.each do |x|
        puts "* #{x}" unless x == @list.first
      end
    end
  end
end

first_list = TodoList.new
first_list.name_your_list("FIRST LIST")
first_list.add("get milk")
first_list.add("go for a walk")
first_list.show_list

first_list.remove("get milk")
first_list.add("make some dinner")
first_list.show_list

second_list = TodoList.new
second_list.inspect
second_list.show_list
second_list.add("test")
second_list.name_your_list("SECOND LIST")