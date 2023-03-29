people = [
  { "name" => "Mary", "sport" => "squash", "fruit" => "blackberry" },
  { "name" => "Lauren", "sport" => "squash", "fruit" => "orange" },
  { "name" => "Isla", "sport" => "weightlifting", "fruit" => "banana" },
  { "name" => "Sam", "sport" => "cycling", "fruit" => "orange" },
  { "name" => "Govind", "sport" => "squash", "fruit" => "banana" },
  { "name" => "Awad", "sport" => "weightlifting", "fruit" => "kiwi" },
  { "name" => "Will", "sport" => "cycling", "fruit" => "blackberry" }
]

puts "Enter category to group people by, 'sport' or 'fruit':"
user_input = gets.chomp

sorted_by_input = {}

people.each do |internal_hash|
  puts
  puts "LOOP START"
  type_of_sport = internal_hash[user_input].capitalize
  name = internal_hash["name"]
  puts "The current final hash looks like: #{sorted_by_input}"
  p type_of_sport
  p name
  if sorted_by_input[type_of_sport] == nil
    puts "IF PATH START"
    sorted_by_input[type_of_sport] = [name]
    p sorted_by_input
    puts "IF PATH END"
  else
    puts "ELSE PATH START"
    sorted_by_input[type_of_sport].push(name)
    p sorted_by_input
    puts "ELSE PATH END"
  end
  puts "LOOP END"
  puts
end

puts "PEOPLE LOOP END"
puts
puts
puts 
p sorted_by_input
puts
puts "Here is a more readable list"
puts
sorted_by_input.each do |k, v|
  puts k + ":"
  puts v
  puts
end