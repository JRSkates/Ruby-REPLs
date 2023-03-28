people = [
  { "name" => "Mary", "sport" => "squash", "fruit" => "blackberry" },
  { "name" => "Lauren", "sport" => "squash", "fruit" => "orange" },
  { "name" => "Isla", "sport" => "weightlifting", "fruit" => "banana" },
  { "name" => "Sam", "sport" => "cycling", "fruit" => "orange" },
  { "name" => "Govind", "sport" => "squash", "fruit" => "banana" },
  { "name" => "Awad", "sport" => "weightlifting", "fruit" => "kiwi" },
  { "name" => "Will", "sport" => "cycling", "fruit" => "blackberry" }
]

puts "Enter category to group people by"
user_1 = gets.chomp

sorted_by_input = {}

people.each do |player|
  input = player[user_1]
  name = player["name"]
  if sorted_by_input[input] == nil
    sorted_by_input[input] = [name]
  else
    sorted_by_input[input].push(name)
  end
end
sorted_by_input.each do |k, v|
  puts k 
  puts v
end