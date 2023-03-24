river = "--P--,--C--,CC-CC,CC-CC"
river_arr = river.split(",")

riv_p_1 = river_arr[0]
riv_p_2 = river_arr[1]
riv_p_3 = river_arr[2]
riv_p_4 = river_arr[3]
player_index = 2
game_counter = 1
player = "P"

puts river_arr
puts "Type left right or neither"

while true do
  user = gets.chomp
  if user == "left" && game_counter == 1
    if riv_p_2[player_index - 1] == "C"
      puts "You were eaten"
      break
    else
      riv_p_1[player_index] = "-"
      riv_p_2[player_index - 1] = player
      game_counter += 1
      player_index -= 1
      puts river_arr
      puts "Type left right or neither"
    end
  elsif user == "right" && game_counter == 1
    if riv_p_2[player_index + 1] == "C"
      puts "You were eaten"
      break
    else
      riv_p_1[player_index] = "-"
      riv_p_2[player_index + 1] = player
      game_counter += 1
      player_index += 1
      puts river_arr
      puts "Type left right or neither"
    end
  elsif user == "neither" && game_counter == 1
    if riv_p_2[player_index] == "C"
      puts "You were eaten"
      break
    else
      riv_p_1[player_index] = "-"
      riv_p_2[player_index] = player
      game_counter += 1
      puts river_arr
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
      puts river_arr
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
      puts river_arr
    end
  elsif user == "neither" && game_counter == 2
    if riv_p_3[player_index] == "C"
      puts "You were eaten"
      break
    else
      riv_p_2[player_index] = "-"
      riv_p_3[player_index] = player
      game_counter += 1
      puts river_arr
    end
  elsif user == "left" && game_counter == 3
    if riv_p_4[player_index - 1] == "C"
      puts "You were eaten"
    else
      riv_p_3[player_index] = "-"
      riv_p_4[player_index - 1] = player
      game_counter += 1
      player_index -= 1
      puts river_arr
      puts "You survived!"
    end
    break
  elsif user == "right" && game_counter == 3
    if riv_p_4[player_index + 1] == "C"
      puts "You were eaten"
    else
      riv_p_3[player_index] = "-"
      riv_p_4[player_index + 1] = player
      game_counter += 1
      player_index += 1
      puts river_arr
      puts "You survived!"
    end
    break
  elsif user == "neither" && game_counter == 3
    if riv_p_4[player_index] == "C"
      puts "You were eaten"
    else
      riv_p_3[player_index] = "-"
      riv_p_4[player_index] = player
      game_counter += 1
      puts river_arr
      puts "You survived!"
    end
    break
  elsif user == "q"
    puts "You were eaten"
    break
  end
end


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