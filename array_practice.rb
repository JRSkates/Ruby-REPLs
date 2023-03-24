=begin
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
=end
#user = gets.chomp
river = "-----,--C--,CC-CC,CC-CC"
p_river ="--P--,--C--,CC-CC,CC-CC"
riv_array = p_river.split(",")
nested_arr = Array.new(4) { [] }
counter = 0

while true do
  if counter < 4
    nested_arr[counter] << riv_array[counter]
    counter += 1
  else
    break
  end
end

riv_p_1 = nested_arr[0][0]
riv_p_2 = nested_arr[1][0]
riv_p_3 = nested_arr[2][0]
riv_p_4 = nested_arr[3][0]
player_index = 2
game_counter = 1
player = "P"
alive = true
you_win = false

#riv_p_2[2] = player

puts nested_arr
puts "Type left right or neither"

while true do
  user = gets.chomp
  if you_win == true
    puts "You survived!"
    break
  elsif user == "left" && game_counter == 1
    riv_p_1[player_index] = "-"
    riv_p_2[player_index - 1] = player
    game_counter += 1
    player_index -= 1
    puts nested_arr
    puts "Type left right or neither"
  elsif user == "right" && game_counter == 1
    riv_p_1[player_index] = "-"
    riv_p_2[player_index + 1] = player
    game_counter += 1
    player_index += 1
    puts nested_arr
    puts "Type left right or neither"
  elsif user == "neither" && game_counter == 1
    if riv_p_2[player_index] == "C"
      puts "You were eaten"
      break
    else
      puts "how are you here"
    end
  elsif user == "left" && game_counter == 2
    if riv_p_3[player_index - 1] == "C"
      puts "You were eaten"
      break
    else
      riv_p_2[player_index] = "-"
      riv_p_3[player_index - 1] = player
      game_counter += 1
      player_index -= 1
      puts nested_arr
    end
  elsif user == "right" && game_counter == 2
    if riv_p_3[player_index + 1] == "C"
      puts "You were eaten"
      break
    else
      riv_p_2[player_index] = "-"
      riv_p_3[player_index + 1] = player
      game_counter += 1
      player_index += 1
      puts nested_arr
    end
  elsif user == "neither" && game_counter == 2
    if riv_p_3[player_index] == "C"
      puts "You were eaten"
      break
    else
      riv_p_2[player_index] = "-"
      riv_p_3[player_index] = player
      game_counter += 1
      puts nested_arr
    end
  elsif user == "left" && game_counter == 3
    if riv_p_4[player_index - 1] == "C"
      puts "You were eaten"
      break
    else
      riv_p_3[player_index] = "-"
      riv_p_4[player_index - 1] = player
      game_counter += 1
      player_index -= 1
      puts "You survived!"
      break
    end
  elsif user == "right" && game_counter == 3
    if riv_p_4[player_index + 1] == "C"
      puts "You were eaten"
      break
    else
      riv_p_3[player_index] = "-"
      riv_p_4[player_index + 1] = player
      game_counter += 1
      player_index += 1
      puts "You survived!"
      break
    end
  elsif user == "neither" && game_counter == 3
    if riv_p_4[player_index] == "C"
      puts "You were eaten"
      break
    else
      riv_p_3[player_index] = "-"
      riv_p_4[player_index] = player
      game_counter += 1
      puts "You survived!"
      break
    end
  elsif user == "q"
    puts "You were eaten"
    break
  end
end

#p riv_array
#p player
#p alive
#puts nested_arr
#p riv_p_1
#p riv_p_2
#p riv_p_3
#p riv_p_4



