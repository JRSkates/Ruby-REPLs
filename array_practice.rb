puts "Enter Amount of Nested Arrays to create: "
group_num = gets.chomp.to_i
arr = Array.new(group_num) { [] }

p arr
#[[], [], []]

nest1 = arr[0]

p nest1
#[]
p nest1.class
#Array

counter = 0
while true do
  puts "Enter Data to store in Nested Array, or type QUIT to exit."
  data = gets.chomp
    if data == "QUIT"
      break
    else
      p "You are storing #{data}"
    end
  puts "Enter which Nested Array you wish to store the Data in."
  nest_arr_num = gets.chomp.to_i
  arr[nest_arr_num - 1].push(data)
  p arr
end
