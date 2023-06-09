=begin
def fizz_buzz(num)
	if (num%3 == 0) && (num%5 == 0)
		return "FizzBuzz"
	elsif num%5 == 0
		return "Buzz"
	elsif num%3 == 0
		return "Fizz"
	else
		return num.to_s
	end
end
=end

#refactored version

def fizz_buzz(num)
	return "FizzBuzz" if num % 15 == 0
	return "Fizz"     if num % 3  == 0
	return "Buzz"     if num % 5  == 0
	num.to_s
end

puts "Enter a number and hit enter"
user = gets.chomp.to_i
puts "#{fizz_buzz(user)}"
