
user_input = "10,4,2,7,5,1"
arr = user_input.split(",").map { |x| x.to_i }
arr.each do |num|
  puts "-" * num
end