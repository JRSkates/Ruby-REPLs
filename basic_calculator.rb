#This is a basic calculator that takes a user input
#(two numbers and an operation) and returns the result.


def add(a, b)
  a + b
end
  
def subtract(a, b)
  a - b
end
  
def multiply(a, b)
  a.to_i * b.to_i
end
  
def divide(a, b)
  a / b
end
  
def calculator(a, b, operation)
  if operation.downcase == "add"
    "The result of adding is #{add(a, b)}."
  elsif operation.downcase == "subtract"
    "The result of subtracting is #{subtract(a, b)}."
  elsif operation.downcase == "multiply"
    "The result of multiplying is #{multiply(a, b)}."
  elsif operation.downcase == "divide"
    "The result of dividing is #{divide(a, b)}."
  else
    "That's not a valid operation"
  end
end
  
puts "This is a basic calculator that lets you add, subtract, multiply or divide 2 numbers.\n\nEnter a number and hit enter: "
num1 = gets.chomp.to_i
puts "Type an opertaion: add, subratct, multiply or divide and hit enter: "
op = gets.chomp.downcase
puts "Enter another number and hit enter: "
num2 = gets.chomp.to_i

puts calculator(num1, num2, op)